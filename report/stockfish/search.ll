inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZNSt6vectorIN9Stockfish4MoveESaIS1_EEaSERKS3_:bb.a
_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 2, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 2
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !358

bb.r:                                             ; preds = %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ad, ptr align 2 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.s:                                             ; preds = %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit
  %i.aj = icmp eq i64 %i.ah, 2
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i16, ptr %i.af, align 2, !tbaa !191
  store i16 %i.ak, ptr %i.ad, align 2, !tbaa !191
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !189
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !192
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i16 @_ZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(10) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !359

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng) #33
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr @_ZZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng.0, align 8, !tbaa !360
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !233    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !238  ; 4 uses
  %i.i = getelementptr [72 x i8], ptr %i.f, i64 %2
  %i.j = getelementptr i8, ptr %i.i, i64 -64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !238
  %i.l = sub nsw i32 %i.h, %i.k
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.l, i32 208) ; 3 uses
  %i.m = load double, ptr %0, align 8, !tbaa !255
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double -2.000000e+00, double 1.200000e+02) ; 4 uses
  %.not29 = icmp eq i64 %2, 0
  br i1 %.not29, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %_ZZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng.promoted = load i64, ptr @_ZZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng.0, align 8 ; 2 uses
  %i.o = fptosi double %i.n to i32                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %xtraiter = and i64 %2, 1
  %i.q = icmp eq i64 %2, 1
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, -2
  br label %bb.g

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.028.epil.init = phi i32 [ -32001, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ]
  %.02227.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ck, %._crit_edge.unr-lcssa ]
  %.epil.init = phi i64 [ %_ZZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng.promoted, %.lr.ph ], [ %i.bx, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod33 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.02227.epil.init ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !238  ; 2 uses
  %i.u = sub nsw i32 %i.h, %i.t
  %i.v = sitofp i32 %i.u to double
  %i.w = lshr i64 %.epil.init, 12
  %i.x = xor i64 %i.w, %.epil.init                ; 2 uses
  %i.y = shl i64 %i.x, 25
  %i.z = xor i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = mul i32 %i.ac, 1332534557
  %i.ae = urem i32 %i.ad, %i.o
  %i.af = mul i32 %i.ae, %.sroa.speculated
  %i.ag = uitofp i32 %i.af to double
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.n, double %i.v, double %i.ag)
  %i.ai = fptosi double %i.ah to i32
  %i.aj = sdiv i32 %i.ai, 128
  %i.ak = add nsw i32 %i.aj, %i.t
  %.not23.epil = icmp slt i32 %i.ak, %.028.epil.init
  br i1 %.not23.epil, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !189
  %i.an = load i16, ptr %i.am, align 2, !tbaa !191
  store i16 %i.an, ptr %i.p, align 8, !tbaa !191
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.e, %._crit_edge.unr-lcssa
  %.lcssa = phi i64 [ %i.bx, %._crit_edge.unr-lcssa ], [ %i.ab, %bb.e ], [ %i.ab, %.epil.preheader ]
  store i64 %.lcssa, ptr @_ZZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng.0, align 8, !tbaa !360
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i16, ptr %i.ao, align 8, !tbaa !191
  ret i16 %.sroa.0.0.copyload

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %.028 = phi i32 [ -32001, %.lr.ph.new ], [ %.1.1, %bb.k ] ; 2 uses
  %.02227 = phi i64 [ 0, %.lr.ph.new ], [ %i.ck, %bb.k ] ; 3 uses
  %i.ap = phi i64 [ %_ZZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng.promoted, %.lr.ph.new ], [ %i.bx, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.aq = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.02227 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !238 ; 2 uses
  %i.at = sub nsw i32 %i.h, %i.as
  %i.au = sitofp i32 %i.at to double
  %i.av = lshr i64 %i.ap, 12
  %i.aw = xor i64 %i.av, %i.ap                    ; 2 uses
  %i.ax = shl i64 %i.aw, 25
  %i.ay = xor i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = lshr i64 %i.ay, 27
  %i.ba = xor i64 %i.az, %i.ay                    ; 3 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = mul i32 %i.bb, 1332534557
  %i.bd = urem i32 %i.bc, %i.o
  %i.be = mul i32 %i.bd, %.sroa.speculated
  %i.bf = uitofp i32 %i.be to double
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.n, double %i.au, double %i.bf)
  %i.bh = fptosi double %i.bg to i32
  %i.bi = sdiv i32 %i.bh, 128
  %i.bj = add nsw i32 %i.bi, %i.as                ; 2 uses
  %.not23 = icmp slt i32 %i.bj, %.028
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !189
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !191
  store i16 %i.bm, ptr %i.p, align 8, !tbaa !191
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.bj, %bb.h ], [ %.028, %bb.g ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.02227 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !238 ; 2 uses
  %i.bq = sub nsw i32 %i.h, %i.bp
  %i.br = sitofp i32 %i.bq to double
  %i.bs = lshr i64 %i.ba, 12
  %i.bt = xor i64 %i.bs, %i.ba                    ; 2 uses
  %i.bu = shl i64 %i.bt, 25
  %i.bv = xor i64 %i.bu, %i.bt                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 27
  %i.bx = xor i64 %i.bw, %i.bv                    ; 4 uses
  %i.by = trunc i64 %i.bx to i32
  %i.bz = mul i32 %i.by, 1332534557
  %i.ca = urem i32 %i.bz, %i.o
  %i.cb = mul i32 %i.ca, %.sroa.speculated
  %i.cc = uitofp i32 %i.cb to double
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.n, double %i.br, double %i.cc)
  %i.ce = fptosi double %i.cd to i32
  %i.cf = sdiv i32 %i.ce, 128
  %i.cg = add nsw i32 %i.cf, %i.bp                ; 2 uses
  %.not23.1 = icmp slt i32 %i.cg, %.1
  br i1 %.not23.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !189
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !191
  store i16 %i.cj, ptr %i.p, align 8, !tbaa !191
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.1 = phi i32 [ %i.cg, %bb.j ], [ %.1, %bb.i ] ; 2 uses
  %i.ck = add nuw i64 %.02227, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.g, !llvm.loop !362
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #10

declare noundef i64 @_ZNK9Stockfish14TimeManagement7optimumEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK9Stockfish6Search6Worker7elapsedEv(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(14279296) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.b = load ptr, ptr %i.a, align 32, !tbaa !114 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !288, !range !221, !noundef !48
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11422208
  %.val.val.i = load ptr, ptr %i.f, align 64, !tbaa !220
  %i.g = tail call noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr noundef nonnull align 8 dereferenceable(64) %.val.val.i) #33
  br label %"_ZNK9Stockfish14TimeManagement7elapsedIZNKS_6Search6Worker7elapsedEvE3$_0EElT_.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.j = sdiv i64 %i.i, 1000000
  %i.k = load i64, ptr %i.h, align 8, !tbaa !289
  %i.l = sub nsw i64 %i.j, %i.k
  br label %"_ZNK9Stockfish14TimeManagement7elapsedIZNKS_6Search6Worker7elapsedEvE3$_0EElT_.exit"

"_ZNK9Stockfish14TimeManagement7elapsedIZNKS_6Search6Worker7elapsedEvE3$_0EElT_.exit": ; preds = %bb.b, %bb.c
  %i.m = phi i64 [ %i.g, %bb.b ], [ %i.l, %bb.c ]
  ret i64 %i.m
}

declare noundef i64 @_ZNK9Stockfish14TimeManagement7maximumEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2, ptr noundef nonnull align 8 dereferenceable(192) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2) #33
  %i.b = and i16 %2, 63
  %i.c = zext nneg i16 %i.b to i64                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !330
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 2 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 1
  store atomic i64 %i.h, ptr %i.f monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.j = tail call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.i) #33 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11422216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 11419656
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !139, !nonnull !48, !align !49
  tail call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2, ptr noundef nonnull align 8 dereferenceable(192) %3, i1 noundef zeroext %i.a, ptr noundef nonnull align 1 dereferenceable(7) %i.k, ptr noundef nonnull align 8 dereferenceable(416) %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p) #33
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = and i16 %2, 12288
  %i.r = icmp eq i16 %i.q, 12288
  %i.s = icmp slt i16 %2, -16384
  %.not.i.i.i = icmp ult i16 %2, -16384
  %i.t = icmp ne i8 %i.e, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i.i, %i.t
  %spec.select.i.i.i = or i1 %i.s, %or.cond.not.i.i.i
  %i.u = or i1 %i.r, %spec.select.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i16 %2, ptr %i.v, align 4, !tbaa !191
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.y = load i8, ptr %i.x, align 4, !tbaa !317, !range !221, !noundef !48
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4194304 x i8], ptr %i.w, i64 %i.z
  %i.ab = zext i1 %i.u to i64
  %i.ac = getelementptr inbounds nuw [2097152 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.k, align 1, !tbaa !340
  %i.ae = zext i8 %i.ad to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw [131072 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [2048 x i8], ptr %i.af, i64 %i.c
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.aj = getelementptr inbounds nuw [131072 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = getelementptr inbounds nuw [2048 x i8], ptr %i.aj, i64 %i.c
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !251
  br label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2, ptr noundef nonnull align 8 dereferenceable(192) %3, i1 noundef zeroext %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = and i16 %2, 63
  %i.b = zext nneg i16 %i.a to i64                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !330
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 2 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 1
  store atomic i64 %i.g, ptr %i.e monotonic, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.i = tail call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.h) #33 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11422216
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11419656
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !139, !nonnull !48, !align !49
  tail call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2, ptr noundef nonnull align 8 dereferenceable(192) %3, i1 noundef zeroext %4, ptr noundef nonnull align 1 dereferenceable(7) %i.j, ptr noundef nonnull align 8 dereferenceable(416) %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o) #33
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = and i16 %2, 12288
  %i.q = icmp eq i16 %i.p, 12288
  %i.r = icmp slt i16 %2, -16384
  %.not.i.i = icmp ult i16 %2, -16384
  %i.s = icmp ne i8 %i.d, 0
  %or.cond.not.i.i = and i1 %.not.i.i, %i.s
  %spec.select.i.i = or i1 %i.r, %or.cond.not.i.i
  %i.t = or i1 %i.q, %spec.select.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %2, ptr %i.u, align 4, !tbaa !191
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.x = load i8, ptr %i.w, align 4, !tbaa !317, !range !221, !noundef !48
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4194304 x i8], ptr %i.v, i64 %i.y
  %i.aa = zext i1 %i.t to i64
  %i.ab = getelementptr inbounds nuw [2097152 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i8, ptr %i.j, align 1, !tbaa !340
  %i.ad = zext i8 %i.ac to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [131072 x i8], ptr %i.ab, i64 %i.ad
  %i.af = getelementptr inbounds nuw [2048 x i8], ptr %i.ae, i64 %i.b
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.ai = getelementptr inbounds nuw [131072 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = getelementptr inbounds nuw [2048 x i8], ptr %i.ai, i64 %i.b
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !251
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

; Function Attrs: nounwind
declare { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288)) local_unnamed_addr #5

declare void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048), i16, ptr noundef nonnull align 8 dereferenceable(192), i1 noundef zeroext, ptr noundef nonnull align 1 dereferenceable(7), ptr noundef nonnull align 8 dereferenceable(416), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search6Worker12do_null_moveERNS_8PositionERNS_9StateInfoEPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr nofree noundef writeonly captures(none) initializes((8, 24), (28, 30)) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11422216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174, !nonnull !48, !align !49
  tail call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(17) %i.b) #33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 65, ptr %i.c, align 4, !tbaa !191
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !247
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !251
  ret void
}

declare void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search6Worker9undo_moveERNS_8PositionENS_4MoveE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.a) #33
  ret void
}

declare void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288)) local_unnamed_addr #5

end_hunk_0
begin_hunk_1_@_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE17get_discriminatorEm:bb.a
  %i.cp = icmp eq ptr %i.co, %i.ba
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.m
  %i.cq = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.m
  %i.cr = load i64, ptr %i.ba, align 8, !tbaa !130, !noalias !490
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.cs = phi i64 [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.ch, %i.cs
  br i1 %.not.i, label %bb.o, label %.critedge.i16

.critedge.i16:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ci, i64 noundef %i.ce) #33, !noalias !490 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.cu, ptr %4, align 8, !tbaa !225, !alias.scope !490
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !230 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.n:                                             ; preds = %.critedge.i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !228 ; 2 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  %i.db = add nuw nsw i64 %i.cz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.db, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.critedge.i16
  store ptr %i.cv, ptr %4, align 8, !tbaa !230, !alias.scope !490
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !130
  store i64 %i.dc, ptr %i.cu, align 8, !tbaa !130, !alias.scope !490
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !228
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !228, !alias.scope !490
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !230
  store i64 0, ptr %i.dd, align 8, !tbaa !228
  store i8 0, ptr %i.cw, align 8, !tbaa !130
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.dg = sub i64 4611686018427387903, %i.ce
  %i.dh = icmp ult i64 %i.dg, %i.cg
  br i1 %i.dh, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #37, !noalias !490
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.o
  %i.di = load ptr, ptr %7, align 8, !tbaa !230, !noalias !490
  %i.dj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.di, i64 noundef %i.cg) #33, !noalias !490 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.dk, ptr %4, align 8, !tbaa !225, !alias.scope !490
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !230 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !228 ; 2 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.dl, ptr %4, align 8, !tbaa !230, !alias.scope !490
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !130
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !130, !alias.scope !490
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !228
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !228, !alias.scope !490
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !230
  store i64 0, ptr %i.dt, align 8, !tbaa !228
  store i8 0, ptr %i.dm, align 8, !tbaa !130
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i
  %i.dw = load ptr, ptr %7, align 8, !tbaa !230   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ba
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.dy = load i64, ptr %i.ba, align 8, !tbaa !130
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.ea = load ptr, ptr %5, align 8, !tbaa !230   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ad
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = load i64, ptr %i.ad, align 8, !tbaa !130
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.ee = load ptr, ptr %6, align 8, !tbaa !230   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !130
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.ej = load ptr, ptr %4, align 8, !tbaa !230   ; 11 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !228 ; 5 uses
  %.not.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i25.preheader

.lr.ph.i.i25.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %xtraiter = and i64 %i.el, 7                    ; 3 uses
  %i.em = icmp ult i64 %i.el, 8
  br i1 %i.em, label %.lr.ph.i.i25.epil.preheader, label %.lr.ph.i.i25.preheader.new

.lr.ph.i.i25.preheader.new:                       ; preds = %.lr.ph.i.i25.preheader
  %unroll_iter = and i64 %i.el, -8
  br label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %.lr.ph.i.i25, %.lr.ph.i.i25.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i25.preheader.new ], [ %i.gi, %.lr.ph.i.i25 ] ; 9 uses
  %.078.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i25.preheader.new ], [ %i.gh, %.lr.ph.i.i25 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i25.preheader.new ], [ %niter.next.7, %.lr.ph.i.i25 ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !130
  %i.ep = sext i8 %i.eo to i64
  %i.eq = xor i64 %.078.i.i, %i.ep
  %i.er = mul i64 %i.eq, 1099511628211
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !130
  %i.ev = sext i8 %i.eu to i64
  %i.ew = xor i64 %i.er, %i.ev
  %i.ex = mul i64 %i.ew, 1099511628211
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !130
  %i.fb = sext i8 %i.fa to i64
  %i.fc = xor i64 %i.ex, %i.fb
  %i.fd = mul i64 %i.fc, 1099511628211
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !130
  %i.fh = sext i8 %i.fg to i64
  %i.fi = xor i64 %i.fd, %i.fh
  %i.fj = mul i64 %i.fi, 1099511628211
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !130
  %i.fn = sext i8 %i.fm to i64
  %i.fo = xor i64 %i.fj, %i.fn
  %i.fp = mul i64 %i.fo, 1099511628211
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 5
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !130
  %i.ft = sext i8 %i.fs to i64
  %i.fu = xor i64 %i.fp, %i.ft
  %i.fv = mul i64 %i.fu, 1099511628211
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !130
  %i.fz = sext i8 %i.fy to i64
  %i.ga = xor i64 %i.fv, %i.fz
  %i.gb = mul i64 %i.ga, 1099511628211
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 7
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !130
  %i.gf = sext i8 %i.ge to i64
  %i.gg = xor i64 %i.gb, %i.gf
  %i.gh = mul i64 %i.gg, 1099511628211            ; 3 uses
  %i.gi = add nuw i64 %.09.i.i, 8                 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i25, !llvm.loop !493

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i25
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i25.epil.preheader

.lr.ph.i.i25.epil.preheader:                      ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i25.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i25.preheader ], [ %i.gi, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %.078.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i25.preheader ], [ %i.gh, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i25.epil

.lr.ph.i.i25.epil:                                ; preds = %.lr.ph.i.i25.epil, %.lr.ph.i.i25.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.go, %.lr.ph.i.i25.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i25.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i64 [ %i.gn, %.lr.ph.i.i25.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i25.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i25.epil ], [ 0, %.lr.ph.i.i25.epil.preheader ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.09.i.i.epil
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !130
  %i.gl = sext i8 %i.gk to i64
  %i.gm = xor i64 %.078.i.i.epil, %i.gl
  %i.gn = mul i64 %i.gm, 1099511628211            ; 2 uses
  %i.go = add nuw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i25.epil, !llvm.loop !494

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i25.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.07.lcssa.i.i = phi i64 [ -3750763034362895579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.gh, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ], [ %i.gn, %.lr.ph.i.i25.epil ]
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.ej, %i.gp
  br i1 %i.gq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gr = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.gr)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gs = load i64, ptr %i.gp, align 8, !tbaa !130
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.gt) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gv = load ptr, ptr %i.j, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.gu, ptr noundef %i.gv)
  %i.gw = load ptr, ptr %2, align 8, !tbaa !468   ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !465 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.gw, %i.gy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %.lr.ph.i.i.i.i29
  %.05.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i29 ], [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.ha)
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.hb, %i.gy
  br i1 %.not.i.i.i.i30, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i29, !llvm.loop !495

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i29
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !468
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.hc = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !496
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #38
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i64 %.07.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2ERKS3_m(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1, i64 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.398, align 1            ; 3 uses
  %4 = alloca %class.anon.398, align 1            ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [1024 x i8], align 16             ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca [4096 x i8], align 16             ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.g = alloca [1024 x i8], align 16             ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.Stockfish::SharedMemoryBackend", align 8 ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  store i8 0, ptr %i.h, align 8, !tbaa !125
  %i.i = tail call noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(137849344) %1) #33
  %i.j = add i64 %i.i, 2654435769                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 131331904
  %i.l = tail call noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(6517429) %i.k) #33
  %i.m = add i64 %i.l, 2654435769
  %i.n = shl i64 %i.j, 6
  %i.o = add i64 %i.m, %i.n
  %i.p = lshr i64 %i.j, 2
  %i.q = add i64 %i.o, %i.p
  %i.r = xor i64 %i.q, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33, !noalias !497
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.f, i8 0, i64 4096, i1 false), !noalias !497
  %i.s = call i64 @readlink(ptr noundef nonnull @.str.34, ptr noundef nonnull %i.f, i64 noundef 4095) #33, !noalias !497 ; 6 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.b, label %._crit_edge.i.i.thread.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.u, ptr %5, align 8, !tbaa !225, !alias.scope !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33, !noalias !497
  store i64 0, ptr %i.e, align 8, !tbaa !25, !noalias !497
  br label %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !130, !noalias !497
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !225, !alias.scope !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33, !noalias !497
  store i64 %i.s, ptr %i.e, align 8, !tbaa !25, !noalias !497
  %i.x = icmp samesign ugt i64 %i.s, 15
  br i1 %i.x, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #33 ; 2 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !230, !alias.scope !497
  %i.z = load i64, ptr %i.e, align 8, !tbaa !25, !noalias !497
  store i64 %i.z, ptr %i.w, align 8, !tbaa !130, !alias.scope !497
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ %i.y, %bb.c ], [ %i.w, %bb.b ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.f, align 16, !tbaa !130, !noalias !497
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !130
  br label %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 16 %i.f, i64 %i.s, i1 false)
  br label %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit

_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.thread.i, %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !25, !noalias !497 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !228, !alias.scope !497
  %i.ae = load ptr, ptr %5, align 8, !tbaa !230, !alias.scope !497
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33, !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33, !noalias !497
  %i.ag = load ptr, ptr %5, align 8, !tbaa !230   ; 11 uses
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !228 ; 5 uses
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit
  %xtraiter = and i64 %i.ah, 7                    ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  br i1 %i.ai, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ah, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ce, %.lr.ph.i.i ] ; 9 uses
  %.078.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader.new ], [ %i.cd, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !130
  %i.al = sext i8 %i.ak to i64
  %i.am = xor i64 %.078.i.i, %i.al
  %i.an = mul i64 %i.am, 1099511628211
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !130
  %i.ar = sext i8 %i.aq to i64
  %i.as = xor i64 %i.an, %i.ar
  %i.at = mul i64 %i.as, 1099511628211
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !130
  %i.ax = sext i8 %i.aw to i64
  %i.ay = xor i64 %i.at, %i.ax
  %i.az = mul i64 %i.ay, 1099511628211
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !130
  %i.bd = sext i8 %i.bc to i64
  %i.be = xor i64 %i.az, %i.bd
  %i.bf = mul i64 %i.be, 1099511628211
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !130
  %i.bj = sext i8 %i.bi to i64
  %i.bk = xor i64 %i.bf, %i.bj
  %i.bl = mul i64 %i.bk, 1099511628211
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !130
  %i.bp = sext i8 %i.bo to i64
  %i.bq = xor i64 %i.bl, %i.bp
  %i.br = mul i64 %i.bq, 1099511628211
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 6
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !130
  %i.bv = sext i8 %i.bu to i64
  %i.bw = xor i64 %i.br, %i.bv
  %i.bx = mul i64 %i.bw, 1099511628211
  %i.by = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !130
  %i.cb = sext i8 %i.ca to i64
  %i.cc = xor i64 %i.bx, %i.cb
  %i.cd = mul i64 %i.cc, 1099511628211            ; 3 uses
  %i.ce = add nuw i64 %.09.i.i, 8                 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !493

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ce, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %.078.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader ], [ %i.cd, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.09.i.i.epil = phi i64 [ %i.ck, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.epil = phi i64 [ %i.cj, %.lr.ph.i.i.epil ], [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.09.i.i.epil
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !130
  %i.ch = sext i8 %i.cg to i64
  %i.ci = xor i64 %.078.i.i.epil, %i.ch
  %i.cj = mul i64 %i.ci, 1099511628211            ; 2 uses
  %i.ck = add nuw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !500

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit
  %.07.lcssa.i.i = phi i64 [ -3750763034362895579, %_ZN9Stockfish21getExecutablePathHashB5cxx11Ev.exit ], [ %i.cd, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.loopexit.unr-lcssa ], [ %i.cj, %.lr.ph.i.i.epil ]
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ag, %i.cl
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cn = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.cn)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.co = load i64, ptr %i.cl, align 8, !tbaa !130
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.cp) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 1024, ptr noundef nonnull @.str.32, i64 noundef %i.r, i64 noundef %.07.lcssa.i.i, i64 noundef %2) #33 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.cr, ptr %6, align 8, !tbaa !225
  %i.cs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i64 %i.cs, ptr %i.d, align 8, !tbaa !25
  %i.ct = icmp ugt i64 %i.cs, 15
  br i1 %i.ct, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #33 ; 2 uses
  store ptr %i.cu, ptr %6, align 8, !tbaa !230
  %i.cv = load i64, ptr %i.d, align 8, !tbaa !25
  store i64 %i.cv, ptr %i.cr, align 8, !tbaa !130
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = phi ptr [ %i.cu, %bb.f ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.cs, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.cx = load i8, ptr %i.g, align 16, !tbaa !130
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr nonnull align 16 %i.g, i64 %i.cs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !228
  %i.da = load ptr, ptr %6, align 8, !tbaa !230
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !501
  %i.dc = load ptr, ptr %6, align 8, !tbaa !230, !noalias !501 ; 9 uses
  %i.dd = load i64, ptr %i.cz, align 8, !tbaa !228, !noalias !501 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %xtraiter79 = and i64 %i.dd, 7                  ; 3 uses
  %i.de = icmp ult i64 %i.dd, 8
  br i1 %i.de, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter84 = and i64 %i.dd, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fa, %.lr.ph.i.i.i ] ; 9 uses
  %.078.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.ez, %.lr.ph.i.i.i ]
  %niter85 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter85.next.7, %.lr.ph.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !130, !noalias !501
  %i.dh = sext i8 %i.dg to i64
  %i.di = xor i64 %.078.i.i.i, %i.dh
  %i.dj = mul i64 %i.di, 1099511628211
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !130, !noalias !501
  %i.dn = sext i8 %i.dm to i64
  %i.do = xor i64 %i.dj, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !130, !noalias !501
  %i.dt = sext i8 %i.ds to i64
  %i.du = xor i64 %i.dp, %i.dt
  %i.dv = mul i64 %i.du, 1099511628211
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !130, !noalias !501
  %i.dz = sext i8 %i.dy to i64
  %i.ea = xor i64 %i.dv, %i.dz
  %i.eb = mul i64 %i.ea, 1099511628211
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !130, !noalias !501
  %i.ef = sext i8 %i.ee to i64
  %i.eg = xor i64 %i.eb, %i.ef
  %i.eh = mul i64 %i.eg, 1099511628211
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 5
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !130, !noalias !501
  %i.el = sext i8 %i.ek to i64
  %i.em = xor i64 %i.eh, %i.el
  %i.en = mul i64 %i.em, 1099511628211
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !130, !noalias !501
  %i.er = sext i8 %i.eq to i64
  %i.es = xor i64 %i.en, %i.er
  %i.et = mul i64 %i.es, 1099511628211
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 7
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !130, !noalias !501
  %i.ex = sext i8 %i.ew to i64
  %i.ey = xor i64 %i.et, %i.ex
  %i.ez = mul i64 %i.ey, 1099511628211            ; 3 uses
  %i.fa = add nuw i64 %.09.i.i.i, 8               ; 2 uses
  %niter85.next.7 = add nuw i64 %niter85, 8       ; 2 uses
  %niter85.ncmp.7 = icmp eq i64 %niter85.next.7, %unroll_iter84
  br i1 %niter85.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !493

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod81.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod81.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fa, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.ez, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter79, 0
  call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.fg, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i64 [ %i.ff, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter80 = phi i64 [ %epil.iter80.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.09.i.i.i.epil
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !130, !noalias !501
  %i.fd = sext i8 %i.fc to i64
  %i.fe = xor i64 %.078.i.i.i.epil, %i.fd
  %i.ff = mul i64 %i.fe, 1099511628211            ; 2 uses
  %i.fg = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter80.next = add i64 %epil.iter80, 1     ; 2 uses
  %epil.iter80.cmp.not = icmp eq i64 %epil.iter80.next, %xtraiter79
  br i1 %epil.iter80.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !504

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %.07.lcssa.i.i.i = phi i64 [ -3750763034362895579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ], [ %i.ez, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ], [ %i.ff, %.lr.ph.i.i.i.epil ]
  %i.fh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.35, i64 noundef %.07.lcssa.i.i.i) #33, !noalias !501 ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.fi, ptr %8, align 8, !tbaa !225, !alias.scope !501
  %i.fj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #33, !noalias !501 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !501
  store i64 %i.fj, ptr %i.b, align 8, !tbaa !25, !noalias !501
  %i.fk = icmp ugt i64 %i.fj, 15
  br i1 %i.fk, label %bb.i, label %._crit_edge.i.i.i6

bb.i:                                             ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.fl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #33 ; 2 uses
  store ptr %i.fl, ptr %8, align 8, !tbaa !230, !alias.scope !501
  %i.fm = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !501
  store i64 %i.fm, ptr %i.fi, align 8, !tbaa !130, !alias.scope !501
  br label %._crit_edge.i.i.i6

._crit_edge.i.i.i6:                               ; preds = %bb.i, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.fn = phi ptr [ %i.fl, %bb.i ], [ %i.fi, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 2 uses
  switch i64 %i.fj, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i6
  %i.fo = load i8, ptr %i.c, align 16, !tbaa !130, !noalias !501
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !130
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr nonnull align 16 %i.c, i64 %i.fj, i1 false)
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i6, %bb.j, %bb.k
  %i.fp = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !501 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !228, !alias.scope !501
  %i.fr = load ptr, ptr %8, align 8, !tbaa !230, !alias.scope !501
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fp
  store i8 0, ptr %i.fs, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33, !noalias !501
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.ft = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.33, i64 noundef 4) #33, !noalias !505 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.fu, ptr %7, align 8, !tbaa !225, !alias.scope !505
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !230 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 5 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.l:                                             ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !228 ; 3 uses
  %i.ga = icmp ult i64 %i.fz, 16
  call void @llvm.assume(i1 %i.ga)
  %i.gb = add nuw nsw i64 %i.fz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fu, ptr noundef nonnull align 8 dereferenceable(1) %i.fw, i64 %i.gb, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEE16createHashStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.fv, ptr %7, align 8, !tbaa !230, !alias.scope !505
  %i.gc = load i64, ptr %i.fw, align 8, !tbaa !130
  store i64 %i.gc, ptr %i.fu, align 8, !tbaa !130, !alias.scope !505
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !228
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.gd = phi i64 [ %i.fz, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.gd, ptr %i.gf, align 8, !tbaa !228, !alias.scope !505
  store ptr %i.fw, ptr %i.ft, align 8, !tbaa !230
  store i64 0, ptr %i.ge, align 8, !tbaa !228
  store i8 0, ptr %i.fw, align 8, !tbaa !130
  %i.gg = load ptr, ptr %6, align 8, !tbaa !230   ; 6 uses
  %i.gh = icmp eq ptr %i.gg, %i.cr
  %i.gi = load ptr, ptr %7, align 8, !tbaa !230   ; 5 uses
  %i.gj = icmp eq ptr %i.gi, %i.fu                ; 2 uses
  br i1 %i.gh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  br i1 %i.gj, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  br i1 %i.gj, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gk = load i64, ptr %i.gf, align 8, !tbaa !228 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 16
  call void @llvm.assume(i1 %i.gl)
  switch i64 %i.gk, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.gm = load i8, ptr %i.gi, align 1, !tbaa !130
  store i8 %i.gm, ptr %i.gg, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.gi, i64 %i.gk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.gn = load i64, ptr %i.gf, align 8, !tbaa !228 ; 2 uses
  store i64 %i.gn, ptr %i.cz, align 8, !tbaa !228
  %i.go = load ptr, ptr %6, align 8, !tbaa !230
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gn
  store i8 0, ptr %i.gp, align 1, !tbaa !130
  %.pre.i8 = load ptr, ptr %7, align 8, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gi, ptr %6, align 8, !tbaa !230
  %i.gq = load <2 x i64>, ptr %i.gf, align 8, !tbaa !130
  store <2 x i64> %i.gq, ptr %i.cz, align 8, !tbaa !130
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gr = load i64, ptr %i.cr, align 8, !tbaa !130
  store ptr %i.gi, ptr %6, align 8, !tbaa !230
  %i.gs = load <2 x i64>, ptr %i.gf, align 8, !tbaa !130
  store <2 x i64> %i.gs, ptr %i.cz, align 8, !tbaa !130
  %.not.i = icmp eq ptr %i.gg, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.gg, ptr %7, align 8, !tbaa !230
  store i64 %i.gr, ptr %i.fu, align 8, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.fu, ptr %7, align 8, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.p, %bb.q
  %i.gt = phi ptr [ %i.gg, %bb.p ], [ %i.fu, %bb.q ], [ %.pre.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.gf, align 8, !tbaa !228
  store i8 0, ptr %i.gt, align 1, !tbaa !130
  %i.gu = load ptr, ptr %7, align 8, !tbaa !230   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.fu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.gw = load i64, ptr %i.fu, align 8, !tbaa !130
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.gy = load ptr, ptr %8, align 8, !tbaa !230   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.fi
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ha = load i64, ptr %i.fi, align 8, !tbaa !130
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.hc = load i64, ptr %i.cz, align 8, !tbaa !228
  %i.hd = icmp ugt i64 %i.hc, 255
  br i1 %i.hd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc
; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #19

declare noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(131331893)) local_unnamed_addr #6

declare noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(6517429)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm13create_sharedINS_4Eval4NNUE8NetworksEEESt8optionalINS0_12SharedMemoryIT_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 64 dereferenceable(137849344) %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"class.Stockfish::shm::SharedMemory", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #33
  %i.a = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE4openERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 64 dereferenceable(137849344) %2) #33
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(144) %3) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %.sink, ptr %i.b, align 8, !tbaa !511
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %3, align 8, !tbaa !320
  call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull align 8 dereferenceable(144) %3), !inline_history !527
  %i.c = load ptr, ptr %3, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(144) %3, i1 noundef zeroext false) #33, !inline_history !527
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !230  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !130
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #38, !inline_history !527
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !230  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !130
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #38, !inline_history !527
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !230  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !130
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #38, !inline_history !527
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !225
  %i.f = load ptr, ptr %1, align 8, !tbaa !230    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !228  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 %i.h, ptr %i.c, align 8, !tbaa !25
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #33 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !230
  %i.k = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.k, ptr %i.e, align 8, !tbaa !130
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !130
  store i8 %i.m, ptr %i.l, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !228
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !230
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %i.r, align 8, !tbaa !513
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store i64 137849400, ptr %i.t, align 8, !tbaa !699
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !700
  %i.v = load ptr, ptr %1, align 8, !tbaa !230, !noalias !700 ; 9 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !228, !noalias !700 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %xtraiter = and i64 %i.w, 7                     ; 3 uses
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.w, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i.i ] ; 9 uses
  %.078.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !130, !noalias !700
  %i.aa = sext i8 %i.z to i64
  %i.ab = xor i64 %.078.i.i.i, %i.aa
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !130, !noalias !700
  %i.ag = sext i8 %i.af to i64
  %i.ah = xor i64 %i.ac, %i.ag
  %i.ai = mul i64 %i.ah, 1099511628211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !130, !noalias !700
  %i.am = sext i8 %i.al to i64
  %i.an = xor i64 %i.ai, %i.am
  %i.ao = mul i64 %i.an, 1099511628211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !130, !noalias !700
  %i.as = sext i8 %i.ar to i64
  %i.at = xor i64 %i.ao, %i.as
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !130, !noalias !700
  %i.ay = sext i8 %i.ax to i64
  %i.az = xor i64 %i.au, %i.ay
  %i.ba = mul i64 %i.az, 1099511628211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !130, !noalias !700
  %i.be = sext i8 %i.bd to i64
  %i.bf = xor i64 %i.ba, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !130, !noalias !700
  %i.bk = sext i8 %i.bj to i64
  %i.bl = xor i64 %i.bg, %i.bk
  %i.bm = mul i64 %i.bl, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !130, !noalias !700
  %i.bq = sext i8 %i.bp to i64
  %i.br = xor i64 %i.bm, %i.bq
  %i.bs = mul i64 %i.br, 1099511628211            ; 3 uses
  %i.bt = add nuw i64 %.09.i.i.i, 8               ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !493

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bt, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.bs, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.bz, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i64 [ %i.by, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !130, !noalias !700
  %i.bw = sext i8 %i.bv to i64
  %i.bx = xor i64 %.078.i.i.i.epil, %i.bw
  %i.by = mul i64 %i.bx, 1099511628211            ; 2 uses
  %i.bz = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !703

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.07.lcssa.i.i.i = phi i64 [ -3750763034362895579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.bs, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.i.i.i.epil ]
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.38, i64 noundef %.07.lcssa.i.i.i) #33, !noalias !700 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.cb, ptr %i.u, align 8, !tbaa !225, !alias.scope !700
  %i.cc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #33, !noalias !700 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !700
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !25, !noalias !700
  %i.cd = icmp ugt i64 %i.cc, 15
  br i1 %i.cd, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ce = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #33 ; 2 uses
  store ptr %i.ce, ptr %i.u, align 8, !tbaa !230, !alias.scope !700
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !700
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !130, !alias.scope !700
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cg = phi ptr [ %i.ce, %bb.e ], [ %i.cb, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 2 uses
  switch i64 %i.cc, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ch = load i8, ptr %i.b, align 16, !tbaa !130, !noalias !700
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !130
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr nonnull align 16 %i.b, i64 %i.cc, i1 false)
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !700 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !228, !alias.scope !700
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !230, !alias.scope !700
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i8 0, ptr %i.cl, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !700
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !225
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.co, align 8, !tbaa !228
  store i8 0, ptr %i.cn, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE4openERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 6 uses
  %3 = alloca %class.anon.390, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr @_ZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEv, ptr %3, align 8, !tbaa !120
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !120
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRDoFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !120
  %i.c = call noundef i32 @pthread_once(ptr noundef nonnull @_ZN9Stockfish3shm6detail12CleanupHooks14register_once_E, ptr noundef nonnull @__once_proxy) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #37
  unreachable

_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit: ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !120
  store ptr null, ptr %i.b, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit
  %.022 = phi i1 [ false, %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit ], [ true, %.backedge.backedge ] ; 2 uses
  %i.m = load i32, ptr %i.d, align 8, !tbaa !513
  %.not.i = icmp eq i32 %i.m, -1
  %i.n = load ptr, ptr %i.e, align 8
  %.not1.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit: ; preds = %.backedge
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !704
  %.not75 = icmp eq ptr %i.o, null
  br i1 %.not75, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, label %.thread71

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread: ; preds = %.backedge, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !230
  %i.q = call i32 @shm_open(ptr noundef %i.p, i32 noundef 194, i32 noundef 438) #33 ; 2 uses
  store i32 %i.q, ptr %i.d, align 8, !tbaa !513
  %i.r = icmp ne i32 %i.q, -1                     ; 7 uses
  br i1 %i.r, label %.preheader.i.preheader, label %bb.c

bb.c:                                             ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !230
  %i.t = call i32 @shm_open(ptr noundef %i.s, i32 noundef 2, i32 noundef 438) #33 ; 2 uses
  store i32 %i.t, ptr %i.d, align 8, !tbaa !513
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.thread71, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, %bb.c
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.d
  %i.v = load i32, ptr %i.d, align 8, !tbaa !513
  %i.w = call i32 @flock(i32 noundef %i.v, i32 noundef 2) #33
  %.not.i30 = icmp eq i32 %i.w, -1
  br i1 %.not.i30, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.x = tail call ptr @__errno_location() #40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !138
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %.preheader.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit, !llvm.loop !705

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit: ; preds = %bb.d
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !513
  %i.ab = call i32 @close(i32 noundef %i.aa) #33  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !513
  store i64 0, ptr %i.l, align 8, !tbaa !228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !230
  store i8 0, ptr %i.ac, align 1, !tbaa !130
  br label %.thread71

bb.e:                                             ; preds = %.preheader.i
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE16setup_new_regionERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) #33
  br i1 %i.ad, label %bb.o, label %.thread58

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !513
  %i.af = call i32 @fstat(i32 noundef %i.ae, ptr noundef nonnull %2) #33 ; 0 uses
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !706
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !699 ; 2 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %.thread62, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !513
  %i.ak = call ptr @mmap(ptr noundef null, i64 noundef %i.ah, i32 noundef 3, i32 noundef 1, i32 noundef %i.aj, i64 noundef 0) #33 ; 5 uses
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !709
  %i.al = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %i.al, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !704
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 137849344
  store ptr %i.am, ptr %i.j, align 8, !tbaa !517
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 137849388
  %i.ao = load atomic i8, ptr %i.an acquire, align 1, !range !221, !noundef !48
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.bg, i64 44, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 192 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 208 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !190
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 192 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 208 ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 44, i1 false)
  %i.bo = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !291
  store <2 x ptr> %i.bo, ptr %i.bi, align 8, !tbaa !291
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !190
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, i64 44, i1 false)
  store <2 x ptr> %i.bn, ptr %i.bl, align 8, !tbaa !291
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 216 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i64 44, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 264 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 280 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !190
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 264 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 280 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bq, ptr noundef nonnull align 8 dereferenceable(72) %i.br, i64 44, i1 false)
  %i.by = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !291
  store <2 x ptr> %i.by, ptr %i.bs, align 8, !tbaa !291
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !190
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.br, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, i64 44, i1 false)
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !291
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 288 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 288 ; 2 uses
  %niter90.next.3 = add i64 %niter90, 4           ; 2 uses
  %niter90.ncmp.3 = icmp eq i64 %niter90.next.3, %unroll_iter89
  br i1 %niter90.ncmp.3, label %._crit_edge68.loopexit.unr-lcssa, label %.lr.ph67, !llvm.loop !809

bb.g:                                             ; preds = %._crit_edge68
  %i.cc = sub nsw i64 %.0, %i.an
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds [72 x i8], ptr %.sroa.027.0, i64 %.057 ; 3 uses
  %i.ce = sub i64 0, %i.x
  %i.cf = getelementptr inbounds [72 x i8], ptr %i.cd, i64 %i.ce ; 3 uses
  %i.cg = icmp sgt i64 %.0, 0
  br i1 %i.cg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %.0, 3                      ; 3 uses
  %i.ch = icmp ult i64 %.0, 4
  br i1 %i.ch, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.061.epil.init = phi ptr [ %i.cd, %.lr.ph.preheader ], [ %i.dy, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.027.260.epil.init = phi ptr [ %i.cf, %.lr.ph.preheader ], [ %i.dx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.061.epil = phi ptr [ %i.cj, %.lr.ph.epil ], [ %.sroa.0.061.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.027.260.epil = phi ptr [ %i.ci, %.lr.ph.epil ], [ %.sroa.027.260.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ci = getelementptr inbounds i8, ptr %.sroa.027.260.epil, i64 -72 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.0.061.epil, i64 -72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.ci, i64 44, i1 false)
  %i.ck = getelementptr inbounds i8, ptr %.sroa.027.260.epil, i64 -24 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.027.260.epil, i64 -8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !190
  %i.cn = getelementptr inbounds i8, ptr %.sroa.0.061.epil, i64 -24 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.061.epil, i64 -8 ; 2 uses
  %i.cp = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ci, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, i64 44, i1 false)
  %i.cq = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !291
  store <2 x ptr> %i.cq, ptr %i.ck, align 8, !tbaa !291
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !190
  store ptr %i.cr, ptr %i.cl, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cj, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, i64 44, i1 false)
  store <2 x ptr> %i.cp, ptr %i.cn, align 8, !tbaa !291
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !810

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.h
  %.sroa.027.2.lcssa = phi ptr [ %i.cf, %bb.h ], [ %.sroa.027.0, %.lr.ph.epil ], [ %.sroa.027.0, %._crit_edge.loopexit.unr-lcssa ]
  %i.cs = srem i64 %.057, %i.x                    ; 2 uses
  %.not = icmp eq i64 %i.cs, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.057.be = phi i64 [ %.0, %bb.g ], [ %i.x, %._crit_edge ]
  %.0.be = phi i64 [ %i.cc, %bb.g ], [ %i.cs, %._crit_edge ]
  %.sroa.027.0.be = phi ptr [ %.sroa.027.1.lcssa, %bb.g ], [ %.sroa.027.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !811

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.061 = phi ptr [ %i.cd, %.lr.ph.preheader.new ], [ %i.dy, %.lr.ph ] ; 12 uses
  %.sroa.027.260 = phi ptr [ %i.cf, %.lr.ph.preheader.new ], [ %i.dx, %.lr.ph ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ct = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -72 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.ct, i64 44, i1 false)
  %i.cv = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -24 ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !190
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -24 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -8 ; 2 uses
  %i.da = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, ptr noundef nonnull align 8 dereferenceable(72) %i.cu, i64 44, i1 false)
  %i.db = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !291
  store <2 x ptr> %i.db, ptr %i.cv, align 8, !tbaa !291
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !190
  store ptr %i.dc, ptr %i.cw, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cu, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, i64 44, i1 false)
  store <2 x ptr> %i.da, ptr %i.cy, align 8, !tbaa !291
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %i.dd = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -144 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.dd, i64 44, i1 false)
  %i.df = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -96 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -80 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !190
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -96 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -80 ; 2 uses
  %i.dk = load <2 x ptr>, ptr %i.df, align 8, !tbaa !291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, ptr noundef nonnull align 8 dereferenceable(72) %i.de, i64 44, i1 false)
  %i.dl = load <2 x ptr>, ptr %i.di, align 8, !tbaa !291
  store <2 x ptr> %i.dl, ptr %i.df, align 8, !tbaa !291
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !190
  store ptr %i.dm, ptr %i.dg, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.de, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, i64 44, i1 false)
  store <2 x ptr> %i.dk, ptr %i.di, align 8, !tbaa !291
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %i.dn = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -216 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.dn, i64 44, i1 false)
  %i.dp = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -168 ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -152 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !190
  %i.ds = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -168 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -152 ; 2 uses
  %i.du = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dn, ptr noundef nonnull align 8 dereferenceable(72) %i.do, i64 44, i1 false)
  %i.dv = load <2 x ptr>, ptr %i.ds, align 8, !tbaa !291
  store <2 x ptr> %i.dv, ptr %i.dp, align 8, !tbaa !291
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !190
  store ptr %i.dw, ptr %i.dq, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.do, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, i64 44, i1 false)
  store <2 x ptr> %i.du, ptr %i.ds, align 8, !tbaa !291
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %i.dx = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -288 ; 4 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -288 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.dx, i64 44, i1 false)
  %i.dz = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -240 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -224 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !190
  %i.ec = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -240 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -224 ; 2 uses
  %i.ee = load <2 x ptr>, ptr %i.dz, align 8, !tbaa !291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dx, ptr noundef nonnull align 8 dereferenceable(72) %i.dy, i64 44, i1 false)
  %i.ef = load <2 x ptr>, ptr %i.ec, align 8, !tbaa !291
  store <2 x ptr> %i.ef, ptr %i.dz, align 8, !tbaa !291
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !190
  store ptr %i.eg, ptr %i.ea, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dy, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, i64 44, i1 false)
  store <2 x ptr> %i.ee, ptr %i.ec, align 8, !tbaa !291
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !812

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %._crit_edge, %._crit_edge68, %.lr.ph.i, %bb.b, %bb.a
  %.sroa.015.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %.lr.ph.i ], [ %i.w, %._crit_edge68 ], [ %i.w, %._crit_edge ]
  ret ptr %.sroa.015.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_SD_T1_SD_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %.not90 = icmp sgt i64 %3, %6
  %.not5691 = icmp sgt i64 %4, %6
  %or.cond92 = and i1 %.not90, %.not5691
  br i1 %or.cond92, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.bb, %tailrecurse ]
  %.tr84.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr86.lcssa = phi i64 [ %3, %bb.a ], [ %i.ba, %tailrecurse ]
  %.tr87.lcssa = phi i64 [ %4, %bb.a ], [ %i.bc, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_SD_T1_T2_(ptr %.tr.lcssa, ptr %.tr84.lcssa, ptr %2, i64 noundef %.tr86.lcssa, i64 noundef %.tr87.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8796 = phi i64 [ %4, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 3 uses
  %.tr8695 = phi i64 [ %3, %.lr.ph ], [ %i.ba, %tailrecurse ] ; 3 uses
  %.tr8494 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr93 = phi ptr [ %0, %.lr.ph ], [ %i.bb, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8695, %.tr8796
  %i.c = ptrtoint ptr %.tr8494 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8695, 2                     ; 2 uses
  %i.e = getelementptr inbounds [72 x i8], ptr %.tr93, i64 %i.d ; 3 uses
  %i.f = sub i64 %i.a, %i.c                       ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.h = udiv exact i64 %i.f, 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !238  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.l = load i32, ptr %i.k, align 4
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr8494, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.m = lshr i64 %.016.i, 1                      ; 3 uses
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %.sroa.011.015.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !238  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.j, %i.p
  %i.q = icmp slt i32 %i.j, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp slt i32 %i.l, %i.s
  %i.u = select i1 %.not.i.i.i, i1 %i.t, i1 %i.q  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.w = xor i64 %i.m, -1
  %i.x = add nsw i64 %.016.i, %i.w
  %.sroa.011.1.i = select i1 %i.u, ptr %i.v, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.u, i64 %i.x, i64 %i.m      ; 2 uses
  %i.y = icmp sgt i64 %.1.i, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit, !llvm.loop !805

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr8494, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.z = sub i64 %.pre-phi, %i.c
  %i.aa = sdiv exact i64 %i.z, 72
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.ab = sdiv i64 %.tr8796, 2                    ; 2 uses
  %i.ac = getelementptr inbounds [72 x i8], ptr %.tr8494, i64 %i.ab ; 3 uses
  %i.ad = ptrtoint ptr %.tr93 to i64              ; 3 uses
  %i.ae = sub i64 %i.c, %i.ad                     ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.ag = udiv exact i64 %i.ae, 72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !238 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ak = load i32, ptr %i.aj, align 4
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.016.i64 = phi i64 [ %i.ag, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.1.i70, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %.sroa.011.015.i65 = phi ptr [ %.tr93, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.sroa.011.1.i69, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %i.al = lshr i64 %.016.i64, 1                   ; 3 uses
  %i.am = getelementptr inbounds nuw [72 x i8], ptr %.sroa.011.015.i65, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !238 ; 2 uses
  %.not.i.i.i68 = icmp eq i32 %i.ao, %i.ai
  %i.ap = icmp slt i32 %i.ao, %i.ai
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp slt i32 %i.ar, %i.ak
  %i.at = select i1 %.not.i.i.i68, i1 %i.as, i1 %i.ap ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = xor i64 %i.al, -1
  %i.aw = add nsw i64 %.016.i64, %i.av
  %.sroa.011.1.i69 = select i1 %i.at, ptr %.sroa.011.015.i65, ptr %i.au ; 3 uses
  %.1.i70 = select i1 %i.at, i64 %i.al, i64 %i.aw ; 2 uses
  %i.ax = icmp sgt i64 %.1.i70, 0
  br i1 %i.ax, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit, !llvm.loop !806

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %.pre102 = ptrtoint ptr %.sroa.011.1.i69 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi103 = phi i64 [ %.pre102, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %i.ad, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.sroa.011.0.lcssa.i61 = phi ptr [ %.sroa.011.1.i69, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr93, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.ay = sub i64 %.pre-phi103, %i.ad
  %i.az = sdiv exact i64 %i.ay, 72
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit
  %.sroa.073.0 = phi ptr [ %i.e, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i61, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.aa, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ], [ %i.ab, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ], [ %i.az, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %i.ba = sub nsw i64 %.tr8695, %.0               ; 4 uses
  %i.bb = tail call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_(ptr %.sroa.073.0, ptr %.tr8494, ptr %.sroa.0.0, i64 noundef %i.ba, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_SD_T1_SD_T2_(ptr %.tr93, ptr %.sroa.073.0, ptr %i.bb, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.bc = sub nsw i64 %.tr8796, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.ba, %6
  %.not56 = icmp sgt i64 %i.bc, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.f = udiv exact i64 %i.d, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.t, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.s, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.r, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i, i64 44, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !189  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !190
  %i.l = load <2 x ptr>, ptr %i.h, align 8, !tbaa !291
  store <2 x ptr> %i.l, ptr %i.g, align 8, !tbaa !291
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !190
  store ptr %i.n, ptr %i.j, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.q) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72 ; 2 uses
  %i.t = add nsw i64 %.012.i.i.i.i.i, -1
end_hunk_3
