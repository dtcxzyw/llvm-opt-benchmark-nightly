inline.NumInlined: 1159
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN16OpenColorIO_v2_511ConfigUtils32initializeColorSpaceFingerprintsERNS0_22ColorSpaceFingerprintsERKSt10shared_ptrIKNS_6ConfigEE:bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #21, !inline_history !53
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51

bb.bb:                                            ; preds = %bb.az
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i48 = icmp eq i8 %i.fs, 0
  br i1 %.not.i.i.i48, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ft = add nsw i32 %i.fk, -1
  store i32 %i.ft, ptr %i.fh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

bb.bd:                                            ; preds = %bb.bb
  %i.fu = atomicrmw volatile add ptr %i.fh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i50 = phi i32 [ %i.fk, %bb.bc ], [ %i.fu, %bb.bd ]
  %i.fv = icmp eq i32 %.0.i.i.i.i50, 1
  br i1 %i.fv, label %bb.be, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51, !prof !32

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.bf

bb.bf:                                            ; preds = %bb.z, %bb.u, %bb.v, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51
  %i.fw = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 4294967297
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.fx, align 8, !tbaa !26
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.gb, align 4, !tbaa !28
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !29
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #21, !inline_history !31
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !29
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #21, !inline_history !31
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i53 = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i53, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gj = add nsw i32 %i.ga, -1
  store i32 %i.gj, ptr %i.fx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.bk:                                            ; preds = %bb.bi
  %i.gk = atomicrmw volatile add ptr %i.fx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i55 = phi i32 [ %i.ga, %bb.bj ], [ %i.gk, %bb.bk ]
  %i.gl = icmp eq i32 %.0.i.i.i.i55, 1
  br i1 %i.gl, label %bb.bl, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bf, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.gm = add nuw nsw i32 %.02560, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.gm, %i.o
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.s, !llvm.loop !192

bb.bm:                                            ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils11FingerprintD2Ev.exit43, %bb.an
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZN16OpenColorIO_v2_511ConfigUtils11FingerprintD2Ev.exit43 ], [ %i.ef, %bb.an ]
  %i.gn = load ptr, ptr %6, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i56 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIfSaIfEED2Ev.exit57, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.go = load ptr, ptr %i.bh, align 8, !tbaa !119
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gr) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit57

_ZNSt6vectorIfSaIfEED2Ev.exit57:                  ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit57, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit57 ], [ %i.co, %bb.aa ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bo ], [ %i.cl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.bq

bb.bq:                                            ; preds = %bb.r, %bb.bp, %bb.w, %bb.q
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.q ], [ %i.ce, %bb.r ], [ %.pn.pn.pn, %bb.bp ], [ %i.ck, %bb.w ]
  call void @_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace11hasCategoryEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_511ConfigUtils24findEquivalentColorspaceERKNS0_22ColorSpaceFingerprintsERKSt10shared_ptrIKNS_6ConfigEERKS4_IKNS_10ColorSpaceEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15
  %i.b = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils25calcColorSpaceFingerprintERSt6vectorIfSaIfEERKNS0_22ColorSpaceFingerprintsERKSt10shared_ptrIKNS_6ConfigEERKS8_IKNS_10ColorSpaceEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %.loopexit, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !58     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.d

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !58     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !193    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !193  ; 3 uses
  %.not3943 = icmp eq ptr %i.r, %i.t
  br i1 %.not3943, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.f
  %i.u = icmp ne ptr %i.l, %i.m
  %.fr = freeze i1 %i.u
  br i1 %.fr, label %.lr.ph46.split.us.preheader, label %.lr.ph46.split

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 1) ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  %n.vec = and i64 %umax, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46.split.us.preheader, %4
  %.sroa.033.044.us = phi ptr [ %5, %4 ], [ %i.r, %.lr.ph46.split.us.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.033.044.us, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !191
  %i.x = load ptr, ptr %2, align 8, !tbaa !15
  %i.y = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #21
  %.not.us = icmp eq i32 %i.w, %i.y
  br i1 %.not.us, label %.preheader.us, label %4

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.042.us = phi i64 [ %i.ai, %scalar.ph ], [ %.042.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.02441.us = phi i1 [ %spec.select.us, %scalar.ph ], [ %.02441.us.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.042.us
  %i.aa = load float, ptr %i.z, align 4, !tbaa !59 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.042.us
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !59 ; 3 uses
  %i.ad = fcmp ogt float %i.aa, %i.ac
  %i.ae = fsub float %i.aa, %i.ac
  %i.af = fsub float %i.ac, %i.aa
  %i.ag = select i1 %i.ad, float %i.ae, float %i.af
  %i.ah = fcmp ole float %i.ag, 5.000000e-03
  %spec.select.us = select i1 %i.ah, i1 %.02441.us, i1 false ; 2 uses
  %i.ai = add nuw i64 %.042.us, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !194

4:                                                ; preds = %._crit_edge.us, %.lr.ph46.split.us
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.033.044.us, i64 40 ; 2 uses
  %.not39.us = icmp eq ptr %5, %i.t
  br i1 %.not39.us, label %.loopexit, label %.lr.ph46.split.us

.preheader.us:                                    ; preds = %.lr.ph46.split.us
  %i.aj = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.033.044.us, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !58 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 3 uses
  %vec.phi = phi <4 x i1> [ %i.ba, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %vec.phi64 = phi <4 x i1> [ %i.bb, %vector.body ], [ zeroinitializer, %.preheader.us ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <4 x float>, ptr %i.am, align 4, !tbaa !59 ; 3 uses
  %wide.load65 = load <4 x float>, ptr %i.an, align 4, !tbaa !59 ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load66 = load <4 x float>, ptr %i.ao, align 4, !tbaa !59 ; 3 uses
  %wide.load67 = load <4 x float>, ptr %i.ap, align 4, !tbaa !59 ; 3 uses
  %i.aq = fcmp ogt <4 x float> %wide.load, %wide.load66
  %i.ar = fcmp ogt <4 x float> %wide.load65, %wide.load67
  %i.as = fsub <4 x float> %wide.load, %wide.load66
  %i.at = fsub <4 x float> %wide.load65, %wide.load67
  %i.au = fsub <4 x float> %wide.load66, %wide.load
  %i.av = fsub <4 x float> %wide.load67, %wide.load65
  %i.aw = select <4 x i1> %i.aq, <4 x float> %i.as, <4 x float> %i.au
  %i.ax = select <4 x i1> %i.ar, <4 x float> %i.at, <4 x float> %i.av
  %i.ay = fcmp ugt <4 x float> %i.aw, splat (float 5.000000e-03)
  %i.az = fcmp ugt <4 x float> %i.ax, splat (float 5.000000e-03)
  %i.ba = or <4 x i1> %vec.phi, %i.ay             ; 2 uses
  %i.bb = or <4 x i1> %vec.phi64, %i.az           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.bb, %i.ba
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.bd = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not69 = icmp eq i4 %i.bd, 0                   ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %.042.us.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.02441.us.ph = phi i1 [ true, %.preheader.us ], [ %.not69, %middle.block ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %spec.select.us.lcssa = phi i1 [ %.not69, %middle.block ], [ %spec.select.us, %scalar.ph ]
  br i1 %spec.select.us.lcssa, label %.split.us, label %4

.lr.ph46.split:                                   ; preds = %.lr.ph46, %bb.g
  %.sroa.033.044 = phi ptr [ %i.bj, %bb.g ], [ %i.r, %.lr.ph46 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.033.044, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !191
  %i.bg = load ptr, ptr %2, align 8, !tbaa !15
  %i.bh = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #21
  %.not = icmp eq i32 %i.bf, %i.bh
  br i1 %.not, label %.split.us, label %bb.g

.split.us:                                        ; preds = %.lr.ph46.split, %._crit_edge.us
  %.us-phi = phi ptr [ %.sroa.033.044.us, %._crit_edge.us ], [ %.sroa.033.044, %.lr.ph46.split ]
  %i.bi = load ptr, ptr %.us-phi, align 8, !tbaa !186
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph46.split
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.033.044, i64 40 ; 2 uses
  %.not39 = icmp eq ptr %i.bj, %i.t
  br i1 %.not39, label %.loopexit, label %.lr.ph46.split

.loopexit:                                        ; preds = %bb.g, %4, %bb.f, %.split.us, %bb.c
  %.5 = phi ptr [ @.str.14, %bb.c ], [ %i.bi, %.split.us ], [ @.str.14, %bb.f ], [ @.str.14, %4 ], [ @.str.14, %bb.g ]
  %i.bk = load ptr, ptr %3, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIfSaIfEED2Ev.exit32, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !119
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit32

_ZNSt6vectorIfSaIfEED2Ev.exit32:                  ; preds = %.loopexit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt6vectorIfSaIfEED2Ev.exit32
  %.6 = phi ptr [ %.5, %_ZNSt6vectorIfSaIfEED2Ev.exit32 ], [ @.str.14, %bb.a ]
  ret ptr %.6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !196
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !196
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare noundef i32 @_ZNK16OpenColorIO_v2_56Config22getProcessorCacheFlagsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNK16OpenColorIO_v2_56Config22setProcessorCacheFlagsENS_19ProcessorCacheFlagsE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !28
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !89
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !89
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
end_hunk_0
