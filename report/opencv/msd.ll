inline.NumInlined: 804
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv11xfeatures2d16MSDDetector_Impl27contextualSelfDissimilarityERNS_3MatEiiPf:bb.a
  store i32 %i.tw, ptr %i.tq, align 4, !tbaa !48
  %i.tx = load i32, ptr %i.hb, align 4, !tbaa !48
  %i.ty = icmp slt i32 %i.tw, %i.tx
  br i1 %i.ty, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd
  store i32 %i.tw, ptr %i.hb, align 4, !tbaa !48
  br i1 %i.hd, label %.lr.ph663, label %.loopexit

.lr.ph663:                                        ; preds = %bb.be, %bb.bf
  %.0361661 = phi i32 [ %i.uf, %bb.bf ], [ %i.hc, %bb.be ] ; 3 uses
  %i.tz = zext nneg i32 %.0361661 to i64
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.tz ; 3 uses
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !48 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 4 ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !48 ; 2 uses
  %i.ue = icmp sgt i32 %i.ub, %i.ud
  br i1 %i.ue, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %.lr.ph663
  store i32 %i.ud, ptr %i.ua, align 4, !tbaa !48
  store i32 %i.ub, ptr %i.uc, align 4, !tbaa !48
  %i.uf = add nsw i32 %.0361661, -1
  %i.ug = icmp sgt i32 %.0361661, 0
  br i1 %i.ug, label %.lr.ph663, label %.loopexit, !llvm.loop !84

.loopexit:                                        ; preds = %.lr.ph663, %bb.bf, %bb.be, %bb.bd
  %i.uh = add nsw i32 %.10666, 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %.loopexit
  %.11 = phi i32 [ %.10666, %bb.bc ], [ %i.uh, %.loopexit ] ; 2 uses
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1
  %.not406.not = icmp slt i64 %indvars.iv820, %i.rn
  br i1 %.not406.not, label %bb.bc, label %._crit_edge670, !llvm.loop !85

.lr.ph686:                                        ; preds = %.lr.ph686.preheader, %bb.bi
  %indvars.iv838 = phi i64 [ 0, %.lr.ph686.preheader ], [ %indvars.iv.next839, %bb.bi ] ; 2 uses
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv838
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !53 ; 2 uses
  %i.uk = icmp eq ptr %i.uj, null
  br i1 %i.uk, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph686
  tail call void @_ZdaPv(ptr noundef nonnull %i.uj) #24
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph686, %bb.bh
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1 ; 2 uses
  %exitcond842.not = icmp eq i64 %indvars.iv.next839, %wide.trip.count841
  br i1 %exitcond842.not, label %._crit_edge687, label %.lr.ph686, !llvm.loop !86

._crit_edge687:                                   ; preds = %bb.bi, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #24
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #24
  %.not.i.i.i = icmp eq ptr %.sroa.0469.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge687
  %i.ul = ptrtoint ptr %.sroa.45.0 to i64
  %i.um = sub i64 %i.ul, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0469.0, i64 noundef %i.um) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge687, %bb.bj
  ret void

bb.bk:                                            ; preds = %bb.d, %bb.f, %bb.c
  %.pn416.pn = phi { ptr, i32 } [ %i.an, %bb.c ], [ %i.ar, %bb.f ], [ %i.ao, %bb.d ]
  %.not.i.i.i467 = icmp eq ptr %.sroa.0469.0, null
  br i1 %.not.i.i.i467, label %_ZNSt6vectorIiSaIiEED2Ev.exit468, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.un = ptrtoint ptr %.sroa.45.0 to i64
  %i.uo = ptrtoint ptr %.sroa.0469.0 to i64
  %i.up = sub i64 %i.un, %i.uo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0469.0, i64 noundef %i.up) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit468

_ZNSt6vectorIiSaIiEED2Ev.exit468:                 ; preds = %bb.bl, %bb.bk
  resume { ptr, i32 } %.pn416.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN2cv11xfeatures2d16MSDDetector_Impl18computeOrientationERNS_3MatEiiSt6vectorINS_6Point_IfEESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly align 8 captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.21", align 1 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23 ; 44 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.a, i8 0, i64 144, i1 false), !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !90     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 7 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %bb.a, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.a:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc127 unwind label %bb.c

.noexc127:                                        ; preds = %bb.a
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.noexc
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = ashr exact i64 %i.g, 1                   ; 2 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23
          to label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit unwind label %bb.c ; 13 uses

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %bb.b
  %i.l = and i64 %i.j, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.l, i1 false), !tbaa !48
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = trunc i64 %i.h to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !45   ; 14 uses
  %i.s = sub i32 0, %i.r                          ; 2 uses
  %.not170 = icmp slt i32 %i.r, 0
  br i1 %.not170, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count215 = and i64 %i.h, 2147483647  ; 3 uses
  %min.iters.check365 = icmp samesign ult i64 %wide.trip.count215, 8
  br i1 %min.iters.check365, label %.lr.ph.split.us.preheader383, label %vector.ph366

vector.ph366:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec367 = and i64 %i.h, 2147483640            ; 3 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph366
  %index369 = phi i64 [ 0, %vector.ph366 ], [ %index.next376, %vector.body368 ] ; 2 uses
  %vec.phi370 = phi <4 x i32> [ splat (i32 -1), %vector.ph366 ], [ %i.v, %vector.body368 ]
  %vec.phi371 = phi <4 x i32> [ splat (i32 -1), %vector.ph366 ], [ %i.w, %vector.body368 ]
  %vec.phi372 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph366 ], [ %i.x, %vector.body368 ]
  %vec.phi373 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph366 ], [ %i.y, %vector.body368 ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index369 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load374 = load <4 x i32>, ptr %i.t, align 4, !tbaa !48 ; 2 uses
  %wide.load375 = load <4 x i32>, ptr %i.u, align 4, !tbaa !48 ; 2 uses
  %i.v = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load374, <4 x i32> %vec.phi370) ; 2 uses
  %i.w = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load375, <4 x i32> %vec.phi371) ; 2 uses
  %i.x = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load374, <4 x i32> %vec.phi372) ; 2 uses
  %i.y = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load375, <4 x i32> %vec.phi373) ; 2 uses
  %index.next376 = add nuw i64 %index369, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next376, %n.vec367
  br i1 %i.z, label %middle.block377, label %vector.body368, !llvm.loop !91

middle.block377:                                  ; preds = %vector.body368
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.v, <4 x i32> %i.w)
  %i.aa = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax378 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.x, <4 x i32> %i.y)
  %i.ab = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax378) ; 2 uses
  %cmp.n379 = icmp eq i64 %wide.trip.count215, %n.vec367
  br i1 %cmp.n379, label %.lr.ph188, label %.lr.ph.split.us.preheader383

.lr.ph.split.us.preheader383:                     ; preds = %.lr.ph.split.us.preheader, %middle.block377
  %indvars.iv212.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec367, %middle.block377 ]
  %.0105180.us.ph = phi i32 [ -1, %.lr.ph.split.us.preheader ], [ %i.aa, %middle.block377 ]
  %.0107179.us.ph = phi i32 [ 2147483647, %.lr.ph.split.us.preheader ], [ %i.ab, %middle.block377 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader383, %.lr.ph.split.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.lr.ph.split.us ], [ %indvars.iv212.ph, %.lr.ph.split.us.preheader383 ] ; 2 uses
  %.0105180.us = phi i32 [ %spec.select.us, %.lr.ph.split.us ], [ %.0105180.us.ph, %.lr.ph.split.us.preheader383 ]
  %.0107179.us = phi i32 [ %.1108.us, %.lr.ph.split.us ], [ %.0107179.us.ph, %.lr.ph.split.us.preheader383 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv212
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !48 ; 2 uses
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 %.0105180.us) ; 2 uses
  %.1108.us = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %.0107179.us) ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215
  br i1 %exitcond216.not, label %.lr.ph188, label %.lr.ph.split.us, !llvm.loop !92

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !63
  %.fr192 = freeze i32 %i.ah
  %i.ai = icmp slt i32 %.fr192, 2
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !61 ; 12 uses
  %i.ak = load i64, ptr %i.ae, align 8            ; 6 uses
  %i.al = sext i32 %i.s to i64                    ; 17 uses
  %i.am = sext i32 %2 to i64                      ; 6 uses
  %i.an = add nuw i32 %i.r, 1                     ; 3 uses
  %i.ao = sext i32 %3 to i64                      ; 3 uses
  %wide.trip.count = and i64 %i.h, 2147483647
  %invariant.gep = getelementptr i8, ptr %i.aj, i64 %i.am
  %invariant.gep303 = getelementptr i8, ptr %i.aj, i64 %i.am ; 4 uses
  %7 = getelementptr i8, ptr %i.aj, i64 %i.am
  %scevgep316 = getelementptr i8, ptr %7, i64 %i.al
  %i.ap = shl nuw i32 %i.r, 1
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %8 = getelementptr i8, ptr %i.aj, i64 %i.am
  %i.ar = getelementptr i8, ptr %8, i64 %i.al
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.aq
  %scevgep317 = getelementptr i8, ptr %i.as, i64 1
  %scevgep318 = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.at = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.au = getelementptr i8, ptr %i.at, i64 %i.aq
  %scevgep320 = getelementptr i8, ptr %i.au, i64 1
  %i.av = add nsw i64 %i.ao, %i.al
  %i.aw = mul i64 %i.ak, %i.av                    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aj, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.am
  %scevgep332 = getelementptr i8, ptr %i.ay, i64 %i.al
  %i.az = add i64 %i.ak, 1
  %i.ba = shl nuw i32 %i.r, 1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = mul i64 %i.az, %i.bb                    ; 2 uses
  %i.bd = getelementptr i8, ptr %i.aj, i64 %i.aw
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.am
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.al
  %scevgep333 = getelementptr i8, ptr %i.bg, i64 1
  %scevgep334 = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.bh = add nsw i64 %i.ao, %i.al
  %i.bi = getelementptr i8, ptr %i.aj, i64 %i.bc
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.al
  %scevgep336 = getelementptr i8, ptr %i.bj, i64 1
  %i.bk = shl nuw i32 %i.r, 1
  %min.iters.check347 = icmp ult i32 %i.r, 4
  %stride.check344 = icmp slt i64 %i.ak, 0
  %i.bl = and i32 %i.bk, -8
  %n.vec349 = zext i32 %i.bl to i64               ; 2 uses
  %i.bm = add nsw i64 %n.vec349, %i.al
  %i.bn = shl nuw i32 %i.r, 1
  %min.iters.check = icmp ult i32 %i.r, 4
  %i.bo = and i32 %i.bn, -8
  %n.vec = zext i32 %i.bo to i64                  ; 2 uses
  %i.bp = add nsw i64 %n.vec, %i.al
  br label %.preheader167.lr.ph

.lr.ph188:                                        ; preds = %._crit_edge172, %.lr.ph.split.us, %middle.block377
  %.0105.lcssa286 = phi i32 [ %spec.select.us, %.lr.ph.split.us ], [ %i.aa, %middle.block377 ], [ %spec.select, %._crit_edge172 ] ; 2 uses
  %.0107.lcssa285 = phi i32 [ %.1108.us, %.lr.ph.split.us ], [ %i.ab, %middle.block377 ], [ %.1108, %._crit_edge172 ]
  %i.bq = sitofp i32 %.0105.lcssa286 to float
  %i.br = sub nsw i32 %.0105.lcssa286, %.0107.lcssa285
  %i.bs = sitofp i32 %i.br to float
  %wide.trip.count220 = and i64 %i.h, 2147483647
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit135

.preheader167.lr.ph:                              ; preds = %.lr.ph.split, %._crit_edge172
  %indvars.iv208 = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next209, %._crit_edge172 ] ; 5 uses
  %.0105180 = phi i32 [ -1, %.lr.ph.split ], [ %spec.select, %._crit_edge172 ]
  %.0107179 = phi i32 [ 2147483647, %.lr.ph.split ], [ %.1108, %._crit_edge172 ]
  %i.bu = shl i64 %indvars.iv208, 2               ; 2 uses
  %scevgep330 = getelementptr nuw i8, ptr %i.k, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %i.k, i64 %i.bu
  %scevgep331 = getelementptr i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bw = shl i64 %indvars.iv208, 2               ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.k, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %i.k, i64 %i.bw
  %scevgep315 = getelementptr i8, ptr %i.bx, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv208 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !41
  %i.ca = fptosi float %i.bz to i32
  %i.cb = add nsw i32 %2, %i.ca                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv208 ; 9 uses
  %.promoted173 = load i32, ptr %i.cc, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ai, label %.preheader167.us.preheader, label %.preheader167.preheader

.preheader167.preheader:                          ; preds = %.preheader167.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !43
  %i.cf = fptosi float %i.ce to i32               ; 2 uses
  %i.cg = add nsw i32 %3, %i.cf
  %i.ch = sext i32 %i.cb to i64                   ; 2 uses
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep298 = getelementptr i8, ptr %i.aj, i64 %i.ch
  %i.cj = sext i32 %i.cf to i64
  %i.ck = add nsw i64 %i.bh, %i.cj
  %i.cl = mul i64 %i.ak, %i.ck
  %i.cm = add i64 %i.cl, %i.ch                    ; 2 uses
  %scevgep335 = getelementptr i8, ptr %scevgep334, i64 %i.cm
  %scevgep337 = getelementptr i8, ptr %scevgep336, i64 %i.cm
  %bound0338 = icmp ult ptr %scevgep330, %scevgep333
  %bound1339 = icmp ult ptr %scevgep332, %scevgep331
  %found.conflict340 = and i1 %bound0338, %bound1339
  %bound0341 = icmp ult ptr %scevgep330, %scevgep337
  %bound1342 = icmp ult ptr %scevgep335, %scevgep331
  %found.conflict343 = and i1 %bound0341, %bound1342
  %i.cn = or i1 %found.conflict343, %stride.check344
  %conflict.rdx345 = or i1 %found.conflict340, %i.cn
  br label %.preheader167

.preheader167.us.preheader:                       ; preds = %.preheader167.lr.ph
  %i.co = sext i32 %i.cb to i64                   ; 3 uses
  %invariant.gep301 = getelementptr i8, ptr %i.aj, i64 %i.co ; 4 uses
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.co
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.co
  %bound0 = icmp ult ptr %scevgep, %scevgep317
  %bound1 = icmp ult ptr %scevgep316, %scevgep315
  %found.conflict = and i1 %bound0, %bound1
  %bound0322 = icmp ult ptr %scevgep, %scevgep321
  %bound1323 = icmp ult ptr %scevgep319, %scevgep315
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx = or i1 %found.conflict, %found.conflict324
  br label %.preheader167.us

.preheader167.us:                                 ; preds = %.preheader167.us.preheader, %._crit_edge.us
  %.promoted174.us = phi i32 [ %.lcssa395, %._crit_edge.us ], [ %.promoted173, %.preheader167.us.preheader ] ; 2 uses
  %.0103171.us = phi i32 [ %i.eh, %._crit_edge.us ], [ %i.s, %.preheader167.us.preheader ] ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader167.us
  %i.cp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted174.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cp, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi325 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %i.cq = add i64 %index, %i.al                   ; 2 uses
  %i.cr = getelementptr i8, ptr %invariant.gep301, i64 %i.cq ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  %wide.load = load <4 x i8>, ptr %i.cr, align 1, !tbaa !64, !alias.scope !93
  %wide.load326 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !64, !alias.scope !93
  %i.ct = getelementptr i8, ptr %invariant.gep303, i64 %i.cq ; 2 uses
  %i.cu = zext <4 x i8> %wide.load to <4 x i32>
  %i.cv = zext <4 x i8> %wide.load326 to <4 x i32>
  %i.cw = getelementptr i8, ptr %i.ct, i64 4
  %wide.load327 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !64, !alias.scope !96
  %wide.load328 = load <4 x i8>, ptr %i.cw, align 1, !tbaa !64, !alias.scope !96
  %i.cx = zext <4 x i8> %wide.load327 to <4 x i32>
  %i.cy = zext <4 x i8> %wide.load328 to <4 x i32>
  %i.cz = sub nsw <4 x i32> %i.cu, %i.cx          ; 2 uses
  %i.da = sub nsw <4 x i32> %i.cv, %i.cy          ; 2 uses
  %i.db = mul nsw <4 x i32> %i.cz, %i.cz
  %i.dc = mul nsw <4 x i32> %i.da, %i.da
  %i.dd = add <4 x i32> %i.db, %vec.phi           ; 2 uses
  %i.de = add <4 x i32> %i.dc, %vec.phi325        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %i.dg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.dg, ptr %i.cc, align 4, !tbaa !48, !alias.scope !99, !noalias !101
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader167.us, %middle.block
  %indvars.iv202.ph = phi i64 [ %i.bp, %middle.block ], [ %i.al, %.preheader167.us ] ; 5 uses
  %.ph = phi i32 [ %i.dg, %middle.block ], [ %.promoted174.us, %.preheader167.us ] ; 2 uses
  %i.dh = trunc i64 %indvars.iv202.ph to i32      ; 2 uses
  %i.di = add i32 %i.r, %i.dh
  %i.dj = and i32 %i.di, 1
  %lcmp.mod397.not.not = icmp eq i32 %i.dj, 0
  br i1 %lcmp.mod397.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep302.prol = getelementptr i8, ptr %invariant.gep301, i64 %indvars.iv202.ph
  %i.dk = load i8, ptr %gep302.prol, align 1, !tbaa !64
  %gep304.prol = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv202.ph
  %i.dl = zext i8 %i.dk to i32
  %i.dm = load i8, ptr %gep304.prol, align 1, !tbaa !64
  %i.dn = zext i8 %i.dm to i32
  %i.do = sub nsw i32 %i.dl, %i.dn                ; 2 uses
  %i.dp = mul nsw i32 %i.do, %i.do
  %i.dq = add nsw i32 %i.dp, %.ph                 ; 3 uses
  store i32 %i.dq, ptr %i.cc, align 4, !tbaa !48
  %indvars.iv.next203.prol = add nsw i64 %indvars.iv202.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa395.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.dq, %scalar.ph.prol ]
  %indvars.iv202.unr = phi i64 [ %indvars.iv202.ph, %scalar.ph.preheader ], [ %indvars.iv.next203.prol, %scalar.ph.prol ]
  %.unr398 = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.dq, %scalar.ph.prol ]
  %i.dr = icmp eq i32 %i.r, %i.dh
  br i1 %i.dr, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv202 = phi i64 [ %indvars.iv.next203.1, %scalar.ph ], [ %indvars.iv202.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ds = phi i32 [ %i.eg, %scalar.ph ], [ %.unr398, %scalar.ph.prol.loopexit ]
  %gep302 = getelementptr i8, ptr %invariant.gep301, i64 %indvars.iv202
  %i.dt = load i8, ptr %gep302, align 1, !tbaa !64
  %gep304 = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv202
  %i.du = zext i8 %i.dt to i32
  %i.dv = load i8, ptr %gep304, align 1, !tbaa !64
  %i.dw = zext i8 %i.dv to i32
  %i.dx = sub nsw i32 %i.du, %i.dw                ; 2 uses
  %i.dy = mul nsw i32 %i.dx, %i.dx
  %i.dz = add nsw i32 %i.dy, %i.ds                ; 2 uses
  store i32 %i.dz, ptr %i.cc, align 4, !tbaa !48
  %indvars.iv.next203 = add nsw i64 %indvars.iv202, 1 ; 2 uses
  %gep302.1 = getelementptr i8, ptr %invariant.gep301, i64 %indvars.iv.next203
  %i.ea = load i8, ptr %gep302.1, align 1, !tbaa !64
  %gep304.1 = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv.next203
end_hunk_0
