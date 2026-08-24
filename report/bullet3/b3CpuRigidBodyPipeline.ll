Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3CpuRigidBodyPipeline?download=true
inline.NumInlined: 437
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN11b3SolveTask3runEi:bb.a

bb.am:                                            ; preds = %bb.al
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.abr)
          to label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i137 unwind label %bb.an

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i137: ; preds = %bb.am, %bb.al, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i133
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  store i8 1, ptr %i.abv, align 8, !tbaa !72
  store ptr %.0.i12.i.i134, ptr %i.abq, align 8, !tbaa !76
  store i32 %.0.i.i135, ptr %i.aag, align 8, !tbaa !78
  br label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %..lr.ph.i124_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i137
  %i.abw = phi ptr [ %.pre203, %..lr.ph.i124_crit_edge ], [ %.0.i12.i.i134, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i137 ]
  %i.abx = sext i32 %i.aad to i64                 ; 2 uses
  %wide.trip.count.i125 = sext i32 %i.aae to i64
  %i.aby = shl nsw i64 %i.abx, 2
  %scevgep188 = getelementptr i8, ptr %i.abw, i64 %i.aby
  %i.abz = sub nsw i64 %wide.trip.count.i125, %i.abx
  %i.aca = shl nsw i64 %i.abz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep188, i8 0, i64 %i.aca, i1 false), !tbaa !44
  store i32 %i.aae, ptr %i.aac, align 4, !tbaa !77
  %.pre204 = load i32, ptr %i.d, align 4, !tbaa !77
  br label %bb.ao

bb.an:                                            ; preds = %bb.am, %.noexc145, %.split7.i.i143, %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i131
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ao:                                            ; preds = %.lr.ph.i124, %bb.ai
  %i.acc = phi i32 [ %.pre204, %.lr.ph.i124 ], [ %i.aae, %bb.ai ] ; 4 uses
  %i.acd = icmp sgt i32 %i.acc, 0
  br i1 %i.acd, label %.lr.ph176, label %.loopexit

.lr.ph176:                                        ; preds = %bb.ao
  %i.ace = load ptr, ptr %i.c, align 8, !tbaa !76 ; 3 uses
  %i.acf = zext nneg i32 %i.acc to i64            ; 2 uses
  %xtraiter298 = and i64 %i.acf, 1
  %i.acg = icmp eq i32 %i.acc, 1
  br i1 %i.acg, label %.epil.preheader, label %.lr.ph176.new

.lr.ph176.new:                                    ; preds = %.lr.ph176
  %unroll_iter = and i64 %i.acf, 2147483646
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %.lr.ph176.new
  %indvars.iv = phi i64 [ 0, %.lr.ph176.new ], [ %indvars.iv.next.1, %bb.at ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph176.new ], [ %niter.next.1, %bb.at ]
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !44
  %.not72 = icmp eq i32 %i.aci, 0
  br i1 %.not72, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.acj = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.ack = load i32, ptr %i.s, align 8, !tbaa !105
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds [32 x i8], ptr %i.acj, i64 %i.acl
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !76
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %indvars.iv
  store i32 1, ptr %i.acp, align 4, !tbaa !44
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv.next
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !44
  %.not72.1 = icmp eq i32 %i.acr, 0
  br i1 %.not72.1, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.acs = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.act = load i32, ptr %i.s, align 8, !tbaa !105
  %i.acu = sext i32 %i.act to i64
  %i.acv = getelementptr inbounds [32 x i8], ptr %i.acs, i64 %i.acu
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !76
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %indvars.iv.next
  store i32 1, ptr %i.acy, align 4, !tbaa !44
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !109

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.at
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph176
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph176 ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod300 = trunc i32 %i.acc to i1
  tail call void @llvm.assume(i1 %lcmp.mod300)
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv.epil.init
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !44
  %.not72.epil = icmp eq i32 %i.ada, 0
  br i1 %.not72.epil, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %.epil.preheader
  %i.adb = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.adc = load i32, ptr %i.s, align 8, !tbaa !105
  %i.add = sext i32 %i.adc to i64
  %i.ade = getelementptr inbounds [32 x i8], ptr %i.adb, i64 %i.add
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !76
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %indvars.iv.epil.init
  store i32 1, ptr %i.adh, align 4, !tbaa !44
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.au, %.epil.preheader, %bb.ao, %._crit_edge
  %i.adi = add nuw nsw i32 %.068177, 1            ; 2 uses
  %i.adj = load i32, ptr %i.f, align 8, !tbaa !68
  %i.adk = icmp slt i32 %i.adi, %i.adj
  br i1 %i.adk, label %bb.d, label %._crit_edge180, !llvm.loop !110

bb.av:                                            ; preds = %bb.m, %bb.r, %bb.an, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.acb, %bb.an ], [ %i.ei, %bb.r ], [ %i.ct, %bb.m ]
  call void @_ZN20b3AlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI20b3ContactConstraint4ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !45
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22b3CpuRigidBodyPipeline9integrateEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, float noundef %1) unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %class.b3Vector3, align 16          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> <float 0.000000e+00, float -9.000000e+00>, ptr %2, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> zeroinitializer, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.g = phi ptr [ %i.k, %.lr.ph ], [ %i.c, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %indvars.iv
  call void @_Z20b3IntegrateTransformP15b3RigidBodyDataffRK9b3Vector3(ptr noundef nonnull %i.j, float noundef %1, float noundef 0.000000e+00, ptr noundef nonnull align 16 dereferenceable(16) %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !111
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z20b3IntegrateTransformP15b3RigidBodyDataffRK9b3Vector3(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load float, ptr %i.a, align 4, !tbaa !99
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load float, ptr %i.d, align 16, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !52 ; 2 uses
  %i.h = insertelement <2 x float> poison, float %2, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.k = insertelement <2 x float> %i.j, float %i.e, i64 1
  %i.l = fmul <2 x float> %i.i, %i.k              ; 2 uses
  %i.m = extractelement <2 x float> %i.l, i64 1   ; 3 uses
  store float %i.m, ptr %i.d, align 16, !tbaa !52
  %i.n = fmul <2 x float> %i.i, %i.g              ; 5 uses
  %5 = extractelement <2 x float> %i.n, i64 0
  store float %5, ptr %i.f, align 4, !tbaa !52
  %i.o = extractelement <2 x float> %i.n, i64 1   ; 3 uses
  store float %i.o, ptr %4, align 8, !tbaa !52
  %foldExtExtBinop = fmul <2 x float> %i.n, %i.n
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.p)
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.q)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.r) ; 2 uses
  %i.s = fmul float %1, %sqrt
  %i.t = fcmp ogt float %i.s, f0x3F490FDA
  %i.u = fdiv float f0x3F490FDA, %1
  %.0 = select i1 %i.t, float %i.u, float %sqrt   ; 6 uses
  %i.v = fcmp olt float %.0, 1.000000e-03
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = fmul float %1, %1
  %i.x = fmul float %1, %i.w
  %i.y = fmul float %i.x, f0x3CAAAAAB
  %i.z = fmul float %i.y, %.0
  %i.aa = fneg float %.0
  %i.ab = fmul float %i.z, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %1, float 5.000000e-01, float %i.ab)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = fmul float %.0, 5.000000e-01
  %i.ae = fmul float %1, %i.ad
  %i.af = tail call noundef float @sinf(float noundef %i.ae) #20
  %i.ag = fdiv float %i.af, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink79 = phi float [ %i.ag, %bb.d ], [ %i.ac, %bb.c ]
  %i.ah = insertelement <2 x float> poison, float %.sink79, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = fmul <2 x float> %i.l, %i.ai            ; 4 uses
  %i.ak = fmul <2 x float> %i.n, %i.ai            ; 4 uses
  %i.al = fmul float %1, %.0
  %i.am = fmul float %i.al, 5.000000e-01
  %i.an = tail call noundef float @cosf(float noundef %i.am) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load <2 x float>, ptr %.sroa.553.0..sroa_idx, align 8 ; 6 uses
  %i.aq = fneg <2 x float> %i.ak                  ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.an, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = shufflevector <2 x float> %i.aj, <2 x float> %i.aq, <2 x i32> <i32 1, i32 2>
  %i.au = load <2 x float>, ptr %i.ao, align 16   ; 6 uses
  %i.av = shufflevector <2 x float> %i.ak, <2 x float> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.aw = fneg <2 x float> %i.av
  %i.ax = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <2 x i32> <i32 1, i32 2>
  %i.ay = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ax, %i.ay
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.au, <2 x float> %i.az)
  %i.bb = shufflevector <2 x float> %i.ap, <2 x float> %i.au, <2 x i32> <i32 0, i32 2>
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.bb, <2 x float> %i.ba)
  %i.bd = shufflevector <2 x float> %i.au, <2 x float> %i.ap, <2 x i32> <i32 1, i32 2>
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.bd, <2 x float> %i.bc) ; 4 uses
  %i.bf = fneg <2 x float> %i.au
  %i.bg = shufflevector <2 x float> %i.ap, <2 x float> %i.bf, <2 x i32> <i32 1, i32 2>
  %i.bh = fmul <2 x float> %i.aj, %i.bg
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.ap, <2 x float> %i.bh)
  %i.bj = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.bj, <2 x float> %i.bi)
  %i.bl = shufflevector <2 x float> %i.au, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.bl, <2 x float> %i.bk) ; 3 uses
  %foldExtExtBinop81 = fmul <2 x float> %i.be, %i.be
  %i.bn = extractelement <2 x float> %foldExtExtBinop81, i64 1
  %i.bo = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bn)
  %i.bq = extractelement <2 x float> %i.bm, i64 0 ; 2 uses
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bp)
  %i.bs = extractelement <2 x float> %i.bm, i64 1 ; 2 uses
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.br)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bt)
  %i.bu = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bx = fmul <2 x float> %i.be, %i.bw
  %i.by = fmul <2 x float> %i.bm, %i.bw
  store <2 x float> %i.bx, ptr %i.ao, align 16
  store <2 x float> %i.by, ptr %.sroa.553.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !52
  %i.cb = fmul float %1, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !52
  %i.cf = fadd float %i.cb, %i.ce                 ; 2 uses
  %i.cg = fmul float %1, %i.cf
  %i.ch = load <2 x float>, ptr %3, align 16, !tbaa !52
  %i.ci = insertelement <2 x float> poison, float %1, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fmul <2 x float> %i.cj, %i.ch
  %i.cl = load <2 x float>, ptr %i.cc, align 16, !tbaa !52
  %i.cm = fadd <2 x float> %i.ck, %i.cl           ; 2 uses
  store <2 x float> %i.cm, ptr %i.cc, align 16, !tbaa !52
  store float %i.cf, ptr %i.cd, align 8, !tbaa !52
  %i.cn = fmul <2 x float> %i.cj, %i.cm
  %i.co = load <2 x float>, ptr %0, align 16, !tbaa !52
  %i.cp = fadd <2 x float> %i.cn, %i.co
  store <2 x float> %i.cp, ptr %0, align 16, !tbaa !52
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !52
  %i.cs = fadd float %i.cg, %i.cr
  store float %i.cs, ptr %i.cq, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22b3CpuRigidBodyPipeline23registerPhysicsInstanceEfPKfS1_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 align 2 {
bb.a:
  %6 = alloca %struct.b3RigidBodyData, align 16   ; 12 uses
  %7 = alloca %struct.b3Aabb, align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 2 uses
  %i.e = fcmp une float %1, 0.000000e+00
  %i.f = fdiv float 1.000000e+00, %1
  %i.g = select i1 %i.e, float %i.f, float 0.000000e+00
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 68
  store float %i.g, ptr %i.h, align 4, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 %4, ptr %i.j, align 16, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = load <2 x float>, ptr %2, align 4, !tbaa !101
  store <2 x float> %i.m, ptr %6, align 16, !tbaa !52
  %i.n = load float, ptr %i.l, align 4, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.n, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = load <4 x float>, ptr %3, align 4, !tbaa !101
  store <4 x float> %i.r, ptr %i.q, align 16, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 72
  store <2 x float> <float 0.000000e+00, float 3.000000e-01>, ptr %i.s, align 8, !tbaa !101
  call void @_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.b, ptr noundef nonnull align 16 dereferenceable(80) %6)
  %i.t = icmp sgt i32 %4, -1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.z = call noundef nonnull align 16 dereferenceable(32) ptr @_ZN20b3AlignedObjectArrayI6b3AabbE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.y, ptr noundef nonnull align 16 dereferenceable(32) %7) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = call noundef nonnull align 16 dereferenceable(32) ptr @_ZNK16b3CpuNarrowPhase17getLocalSpaceAabbEi(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i32 noundef %4) ; 6 uses
  %.sroa.0.0.copyload = load float, ptr %i.ad, align 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.61.0.copyload = load float, ptr %.sroa.61.0..sroa_idx, align 16 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.ae = load float, ptr %i.l, align 4, !tbaa !101
  %i.af = load float, ptr %i.u, align 4, !tbaa !101 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ah = fsub float %.sroa.61.0.copyload, %.sroa.0.0.copyload
  %i.ai = fsub float %.sroa.7.0.copyload, %.sroa.4.0.copyload
  %i.aj = fsub float %.sroa.8.0.copyload, %.sroa.5.0.copyload
  %i.ak = fmul float %i.ah, 5.000000e-01
  %i.al = fmul float %i.ai, 5.000000e-01
  %i.am = fmul float %i.aj, 5.000000e-01
  %i.an = fadd float %i.ak, f0x3C23D70A           ; 2 uses
  %i.ao = fadd float %i.al, f0x3C23D70A           ; 2 uses
  %i.ap = fadd float %i.am, f0x3C23D70A           ; 2 uses
  %i.aq = fadd float %.sroa.0.0.copyload, %.sroa.61.0.copyload
  %i.ar = fadd float %.sroa.4.0.copyload, %.sroa.7.0.copyload
  %i.as = fadd float %.sroa.5.0.copyload, %.sroa.8.0.copyload
  %i.at = fmul float %i.aq, 5.000000e-01          ; 2 uses
  %i.au = fmul float %i.ar, 5.000000e-01          ; 2 uses
  %i.av = fmul float %i.as, 5.000000e-01          ; 2 uses
  %i.aw = load <2 x float>, ptr %2, align 4, !tbaa !101
  %i.ax = load float, ptr %3, align 4, !tbaa !101 ; 6 uses
  %i.ay = load float, ptr %i.v, align 4, !tbaa !101 ; 4 uses
  %i.az = load float, ptr %i.w, align 4, !tbaa !101 ; 5 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.ba)
  %i.bc = call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.bb)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.bc)
  %i.be = fdiv float 2.000000e+00, %i.bd          ; 3 uses
end_hunk_0
