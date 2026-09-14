Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bone_visible?download=true
inline.NumInlined: 1750
inline.NumDeleted: 1013
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl6embree12bone_visibleIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS3_IbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EESK_RNS2_15PlainObjectBaseIT2_EE:bb.a

bb.i:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZN3igl6embree17EmbreeIntersectorC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %16)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %0, ptr %18, align 8, !tbaa !50, !alias.scope !145
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.q

_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEC2INS1_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.r

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN3igl6embree17EmbreeIntersector4initERKN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEERKNS3_IiLin1ELi3ELi0ELin1ELi3EEEb(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %19, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  %i.bd = load ptr, ptr %19, align 8, !tbaa !52
  call void @free(ptr noundef %i.bd) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.be = load ptr, ptr %17, align 8, !tbaa !55
  call void @free(ptr noundef %i.be) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  invoke void @_ZN3igl6embree12bone_visibleIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS3_IbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS0_17EmbreeIntersectorERKNS8_IT1_EESN_RNS2_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  call void @_ZN3igl6embree17EmbreeIntersectorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.bf = load ptr, ptr %15, align 8, !tbaa !23
  call void @free(ptr noundef %i.bf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  ret void

bb.m:                                             ; preds = %.invoke
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.o:                                             ; preds = %._crit_edge.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.p:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.q:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %19, align 8, !tbaa !52
  call void @free(ptr noundef %i.bn) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn18 = phi { ptr, i32 } [ %i.bm, %bb.s ], [ %i.bl, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.bo = load ptr, ptr %17, align 8, !tbaa !55
  call void @free(ptr noundef %i.bo) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.t ], [ %i.bk, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.w

bb.v:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn21 = phi { ptr, i32 } [ %i.bp, %bb.v ], [ %.pn18.pn, %bb.u ]
  call void @_ZN3igl6embree17EmbreeIntersectorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.p
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.w ], [ %i.bj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.n, %bb.o, %bb.x, %bb.m
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.x ], [ %i.bg, %bb.m ], [ %i.bi, %bb.o ], [ %i.bh, %bb.n ]
  %i.bq = load ptr, ptr %15, align 8, !tbaa !23
  call void @free(ptr noundef %i.bq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  resume { ptr, i32 } %.pn21.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl6embree12bone_visibleIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEENS3_IbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS0_17EmbreeIntersectorERKNS8_IT1_EESN_RNS2_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.anon.314, align 1            ; 4 uses
  %7 = alloca %class.anon.316, align 8            ; 4 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %8 = alloca %class.anon.288, align 8            ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61
  %.not.i.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %5, align 8, !tbaa !62
  tail call void @free(ptr noundef %i.f) #22
  %i.g = icmp sgt i64 %i.c, 0
  br i1 %i.g, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.c) #23 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %.sink.split.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

.sink.split.i.i:                                  ; preds = %bb.c, %bb.b
  %.sink.i.i = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i.i, ptr %5, align 8, !tbaa !62
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i
  store i64 %i.c, ptr %i.d, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !149  ; 10 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES7_EEE4normEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.n = load ptr, ptr %3, align 8, !tbaa !78     ; 11 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !78     ; 11 uses
  %i.p = sdiv i64 %i.l, 4
  %i.q = shl nsw i64 %i.p, 2                      ; 4 uses
  %i.r = sdiv i64 %i.l, 2
  %i.s = shl nsw i64 %i.r, 1                      ; 6 uses
  %.off.i.i.i.i.i = add i64 %i.l, 1
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load <2 x double>, ptr %i.n, align 16, !tbaa !63
  %i.u = load <2 x double>, ptr %i.o, align 16, !tbaa !63
  %i.v = fsub <2 x double> %i.t, %i.u             ; 2 uses
  %i.w = fmul <2 x double> %i.v, %i.v             ; 3 uses
  %i.x = icmp sgt i64 %i.l, 3
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load <2 x double>, ptr %i.y, align 16, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load <2 x double>, ptr %i.aa, align 16, !tbaa !63
  %i.ac = fsub <2 x double> %i.z, %i.ab           ; 2 uses
  %i.ad = fmul <2 x double> %i.ac, %i.ac          ; 2 uses
  %i.ae = icmp samesign ugt i64 %i.l, 7
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.075.lcssa.i.i.i.i.i = phi <2 x double> [ %i.ad, %bb.g ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i = phi <2 x double> [ %i.w, %bb.g ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.af = fadd <2 x double> %.075.lcssa.i.i.i.i.i, %.072.lcssa.i.i.i.i.i ; 2 uses
  %i.ag = icmp sgt i64 %i.s, %i.q
  br i1 %i.ag, label %bb.h, label %bb.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.054.in79.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 4, %bb.g ] ; 4 uses
  %.07278.i.i.i.i.i = phi <2 x double> [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.g ]
  %.07577.i.i.i.i.i = phi <2 x double> [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.g ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.054.in79.i.i.i.i.i
  %i.ai = load <2 x double>, ptr %i.ah, align 16, !tbaa !63
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.054.in79.i.i.i.i.i
  %i.ak = load <2 x double>, ptr %i.aj, align 16, !tbaa !63
  %i.al = fsub <2 x double> %i.ai, %i.ak          ; 2 uses
  %i.am = fmul <2 x double> %i.al, %i.al
  %i.an = fadd <2 x double> %.07278.i.i.i.i.i, %i.am ; 2 uses
  %9 = or disjoint i64 %.054.in79.i.i.i.i.i, 2    ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %9
  %i.ap = load <2 x double>, ptr %i.ao, align 16, !tbaa !63
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %9
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !63
  %i.as = fsub <2 x double> %i.ap, %i.ar          ; 2 uses
  %i.at = fmul <2 x double> %i.as, %i.as
  %i.au = fadd <2 x double> %.07577.i.i.i.i.i, %i.at ; 2 uses
  %.054.i.i.i.i.i = add nuw nsw i64 %.054.in79.i.i.i.i.i, 4 ; 2 uses
  %i.av = icmp slt i64 %.054.i.i.i.i.i, %i.q
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !146

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q
  %i.ax = load <2 x double>, ptr %i.aw, align 16, !tbaa !63
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !63
  %i.ba = fsub <2 x double> %i.ax, %i.az          ; 2 uses
  %i.bb = fmul <2 x double> %i.ba, %i.ba
  %i.bc = fadd <2 x double> %i.af, %i.bb
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i, %bb.f
  %.274.i.i.i.i.i = phi <2 x double> [ %i.w, %bb.f ], [ %i.bc, %bb.h ], [ %i.af, %._crit_edge.i.i.i.i.i ]
  %i.bd = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i) ; 3 uses
  %i.be = icmp slt i64 %i.s, %i.l
  br i1 %i.be, label %.lr.ph85.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES7_EEE4normEv.exit

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.i
  %i.bf = sub i64 %i.l, %i.s
  %xtraiter = and i64 %i.bf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.bn, %.lr.ph85.i.i.i.i.i.prol ], [ %i.s, %.lr.ph85.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.bm, %.lr.ph85.i.i.i.i.i.prol ], [ %i.bd, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.05283.i.i.i.i.i.prol
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.05283.i.i.i.i.i.prol
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !65
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !65
  %i.bk = fsub double %i.bi, %i.bj                ; 2 uses
  %i.bl = fmul double %i.bk, %i.bk
  %i.bm = fadd double %.182.i.i.i.i.i.prol, %i.bl ; 3 uses
  %i.bn = add nsw i64 %.05283.i.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !147

.lr.ph85.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph85.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.s, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.bn, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.bd, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph85.i.i.i.i.i.prol ]
  %i.bo = sub i64 %i.s, %i.l
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES7_EEE4normEv.exit, label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph85.i.i.i.i.i ], [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i = phi double [ %i.cu, %.lr.ph85.i.i.i.i.i ], [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.05283.i.i.i.i.i
  %i.br = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.05283.i.i.i.i.i
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !65
  %i.bt = load double, ptr %i.br, align 8, !tbaa !65
  %i.bu = fsub double %i.bs, %i.bt                ; 2 uses
  %i.bv = fmul double %i.bu, %i.bu
  %i.bw = fadd double %.182.i.i.i.i.i, %i.bv
  %i.bx = add nsw i64 %.05283.i.i.i.i.i, 1        ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.bx
  %i.ca = load double, ptr %i.by, align 8, !tbaa !65
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !65
  %i.cc = fsub double %i.ca, %i.cb                ; 2 uses
  %i.cd = fmul double %i.cc, %i.cc
  %i.ce = fadd double %i.bw, %i.cd
  %i.cf = add nsw i64 %.05283.i.i.i.i.i, 2        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.cf
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cf
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !65
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !65
  %i.ck = fsub double %i.ci, %i.cj                ; 2 uses
  %i.cl = fmul double %i.ck, %i.ck
  %i.cm = fadd double %i.ce, %i.cl
  %i.cn = add nsw i64 %.05283.i.i.i.i.i, 3        ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.cn
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cn
  %i.cq = load double, ptr %i.co, align 8, !tbaa !65
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !65
  %i.cs = fsub double %i.cq, %i.cr                ; 2 uses
  %i.ct = fmul double %i.cs, %i.cs
  %i.cu = fadd double %i.cm, %i.ct                ; 2 uses
  %i.cv = add nsw i64 %.05283.i.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.cv, %i.l
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES7_EEE4normEv.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !148

bb.j:                                             ; preds = %bb.e
  %i.cw = load double, ptr %i.n, align 8, !tbaa !65
  %i.cx = load double, ptr %i.o, align 8, !tbaa !65
  %i.cy = fsub double %i.cw, %i.cx                ; 2 uses
  %i.cz = fmul double %i.cy, %i.cy
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES7_EEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES7_EEE4normEv.exit: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %bb.i, %bb.j
  %.0.i.i.i = phi double [ 0.000000e+00, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ %i.bd, %bb.i ], [ %i.cz, %bb.j ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.cu, %.lr.ph85.i.i.i.i.i ]
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %.0.i.i.i)
  store double %.scalar.i, ptr %i.a, align 8, !tbaa !65
  %i.da = load i64, ptr %i.b, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %0, ptr %8, align 8, !tbaa !67
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.db, align 8, !tbaa !68
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %3, ptr %i.dc, align 8, !tbaa !150
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %4, ptr %i.dd, align 8, !tbaa !150
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %2, ptr %i.de, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %1, ptr %i.df, align 8, !tbaa !73
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %5, ptr %i.dg, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %8, ptr %7, align 8, !tbaa !76
  %i.dh = call noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_6embree12bone_visibleIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS5_IiLin1ELin1ELi0ELin1ELin1EEENS5_IdLin1ELi1ELi0ELin1ELi1EEENS5_IbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS4_10MatrixBaseIT_EERKNSA_IT0_EERKNS2_17EmbreeIntersectorERKNSA_IT1_EESP_RNS4_15PlainObjectBaseIT2_EEEUliE_EEbSB_RKSF_mEUlmE_ZNS1_IlSU_EEbSB_SW_mEUllmE_SX_EEbSB_SW_RKSM_RKSR_m(i64 noundef %i.da, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %6, i64 noundef 10000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166, !nonnull !82, !align !83 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSC_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSC_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !82, !align !83 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %0, align 8, !nonnull !82, !align !83 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !38   ; 3 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !27   ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !85   ; 3 uses
  %i.t = load i64, ptr %i.n, align 8, !tbaa !35   ; 3 uses
  %i.u = add nsw i64 %i.g, -1                     ; 2 uses
  %i.v = mul i64 %i.r, %i.u
  %i.w = add i64 %i.v, %i.j
  %i.x = shl i64 %i.w, 2
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.x
  %i.y = mul i64 %i.t, %i.u
  %i.z = add i64 %i.y, %i.j
  %i.aa = shl i64 %i.z, 2
  %scevgep66 = getelementptr i8, ptr %i.s, i64 %i.aa
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.q, %scevgep66
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ab = or i64 %i.t, %i.r
  %i.ac = and i64 %i.ab, 2305843009213693952
  %i.ad = icmp ne i64 %i.ac, 0
end_hunk_0
