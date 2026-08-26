Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN23btMultiBodyJacobianDataaSERKS_:bb.a

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i.i, %bb.r, %_ZN20btAlignedObjectArrayIfEaSERKS0_.exit94
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !128
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !127 ; 3 uses
  %i.mc = icmp sgt i32 %i.kx, 0
  br i1 %i.mc, label %.lr.ph.i4.i.i95, label %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit

.lr.ph.i4.i.i95:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %wide.trip.count.i5.i.i96 = zext nneg i32 %i.kx to i64 ; 2 uses
  %xtraiter267 = and i64 %wide.trip.count.i5.i.i96, 1
  %i.me = icmp eq i32 %i.kx, 1
  br i1 %i.me, label %.epil.preheader266, label %.lr.ph.i4.i.i95.new

.lr.ph.i4.i.i95.new:                              ; preds = %.lr.ph.i4.i.i95
  %unroll_iter270 = and i64 %wide.trip.count.i5.i.i96, 2147483646
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i4.i.i95.new
  %indvars.iv.i6.i.i97 = phi i64 [ 0, %.lr.ph.i4.i.i95.new ], [ %indvars.iv.next.i7.i.i98.1, %bb.x ] ; 4 uses
  %niter271 = phi i64 [ 0, %.lr.ph.i4.i.i95.new ], [ %niter271.next.1, %bb.x ]
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %indvars.iv.i6.i.i97
  %i.mg = load ptr, ptr %i.md, align 8, !tbaa !127
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %i.mg, i64 %indvars.iv.i6.i.i97
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mf, ptr noundef nonnull align 4 dereferenceable(16) %i.mh, i64 16, i1 false), !tbaa.struct !229
  %indvars.iv.next.i7.i.i98 = or disjoint i64 %indvars.iv.i6.i.i97, 1 ; 2 uses
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %indvars.iv.next.i7.i.i98
  %i.mj = load ptr, ptr %i.md, align 8, !tbaa !127
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %indvars.iv.next.i7.i.i98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mi, ptr noundef nonnull align 4 dereferenceable(16) %i.mk, i64 16, i1 false), !tbaa.struct !229
  %indvars.iv.next.i7.i.i98.1 = add nuw nsw i64 %indvars.iv.i6.i.i97, 2 ; 2 uses
  %niter271.next.1 = add i64 %niter271, 2         ; 2 uses
  %niter271.ncmp.1 = icmp eq i64 %niter271.next.1, %unroll_iter270
  br i1 %niter271.ncmp.1, label %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit.loopexit.unr-lcssa, label %bb.x, !llvm.loop !238

_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit.loopexit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit, label %.epil.preheader266

.epil.preheader266:                               ; preds = %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit.loopexit.unr-lcssa, %.lr.ph.i4.i.i95
  %indvars.iv.i6.i.i97.epil.init = phi i64 [ 0, %.lr.ph.i4.i.i95 ], [ %indvars.iv.next.i7.i.i98.1, %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod269 = trunc i32 %i.kx to i1
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %indvars.iv.i6.i.i97.epil.init
  %i.mm = load ptr, ptr %i.md, align 8, !tbaa !127
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %indvars.iv.i6.i.i97.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ml, ptr noundef nonnull align 4 dereferenceable(16) %i.mn, i64 16, i1 false), !tbaa.struct !229
  br label %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit

_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit: ; preds = %.epil.preheader266, %_ZN20btAlignedObjectArrayI9btVector3EaSERKS1_.exit.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @_ZN20btAlignedObjectArrayI11btMatrix3x3E13copyFromArrayERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.mo, ptr noundef nonnull align 8 dereferenceable(25) %i.mp)
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.mq, ptr noundef nonnull align 8 dereferenceable(12) %i.mr, i64 12, i1 false)
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !406  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i8, ptr %i.c, align 8, !range !233
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #40
  unreachable

_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load i8, ptr %i.j, align 8, !range !233
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #40
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !131  ; 2 uses
  %.not.i.i.i3 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load i8, ptr %i.q, align 8, !range !233
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i4 = select i1 %.not.i.i.i3, i1 %i.s, i1 false
  br i1 %or.cond.i.i4, label %bb.f, label %_ZN20btAlignedObjectArrayIfED2Ev.exit

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #40
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !131  ; 2 uses
  %.not.i.i.i5 = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i8, ptr %i.x, align 8, !range !233
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i.i6 = select i1 %.not.i.i.i5, i1 %i.z, i1 false
  br i1 %or.cond.i.i6, label %bb.h, label %_ZN20btAlignedObjectArrayIfED2Ev.exit7

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit7 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #40
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit7:           ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !131 ; 2 uses
  %.not.i.i.i8 = icmp ne ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i8, ptr %i.ae, align 8, !range !233
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond.i.i9 = select i1 %.not.i.i.i8, i1 %i.ag, i1 false
  br i1 %or.cond.i.i9, label %bb.j, label %_ZN20btAlignedObjectArrayIfED2Ev.exit10

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit7
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit10 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #40
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit10:          ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit7, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !131 ; 2 uses
  %.not.i.i.i11 = icmp ne ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i8, ptr %i.al, align 8, !range !233
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond.i.i12 = select i1 %.not.i.i.i11, i1 %i.an, i1 false
  br i1 %or.cond.i.i12, label %bb.l, label %_ZN20btAlignedObjectArrayIfED2Ev.exit13

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit10
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ak)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit13 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #40
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit13:          ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit10, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody17appendLinearJointERKNS_6LJoint5SpecsEPNS_7ClusterENS_4BodyE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.btSoftBody::Body") align 8 captures(none) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 216, i32 noundef 16) ; 14 uses
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i8 0, i64 160, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN10btSoftBody6LJointE, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr %2, ptr %scevgep.i.i, align 8, !tbaa !541
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !543
  %i.d = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e, !prof !431

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.d unwind label %bb.g       ; 4 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.g, i64 16, i1 false), !tbaa.struct !229
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !229
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !229
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !229
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !545  ; 2 uses
  %.not5.i = icmp eq ptr %i.m, null
  br i1 %.not5.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit

common.resume:                                    ; preds = %bb.n, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.cf, %bb.n ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %scevgep.i.i, align 8, !tbaa !547 ; 2 uses
  %.not6.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %spec.select.i = select i1 %.not6.i, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.q
  br label %_ZNK10btSoftBody4Body5xformEv.exit

_ZNK10btSoftBody4Body5xformEv.exit:               ; preds = %bb.f, %bb.h
  %.0.i = phi ptr [ %i.n, %bb.f ], [ %spec.select.i, %bb.h ] ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.w = load float, ptr %i.t, align 4, !tbaa !223, !noalias !548
  %i.x = load float, ptr %i.u, align 4, !tbaa !223, !noalias !548
  %i.y = load float, ptr %i.v, align 4, !tbaa !223, !noalias !548
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.aa = load float, ptr %i.z, align 4, !tbaa !223, !noalias !553
  %i.ab = fneg float %i.aa                        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 52
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !223, !noalias !553
  %i.ae = fneg float %i.ad                        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.ag = load float, ptr %i.af, align 4, !tbaa !223, !noalias !553
  %i.ah = fneg float %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !223 ; 2 uses
  %i.al = load <2 x float>, ptr %i.ai, align 4, !tbaa !223 ; 4 uses
  %i.am = insertelement <2 x float> poison, float %i.x, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> %i.al, float %i.ae, i64 0
  %i.ap = fmul <2 x float> %i.an, %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.at = insertelement <2 x float> %i.as, float %i.ab, i64 0
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.at, <2 x float> %i.ap)
  %i.av = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %i.ah, i64 0 ; 2 uses
  %i.ay = insertelement <2 x float> %i.ax, float %i.ak, i64 1
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.au) ; 2 uses
  %i.ba = load <2 x float>, ptr %.0.i, align 4, !tbaa !223, !noalias !548 ; 2 uses
  %i.bb = load <2 x float>, ptr %i.r, align 4, !tbaa !223, !noalias !548 ; 2 uses
  %i.bc = load <2 x float>, ptr %i.s, align 4, !tbaa !223, !noalias !548 ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.bb, %i.be
  %i.bg = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bh, <2 x float> %i.bf)
  %i.bj = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bj, <2 x float> %i.bi)
  %i.bl = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fmul <2 x float> %i.bb, %i.bl
  %i.bn = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.ba, <2 x float> %i.bm)
  %i.bp = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bc, <2 x float> %i.bo)
  %i.bs = fadd <2 x float> %i.bk, %i.br
  %shift = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.az, %shift
  %.sroa.3.12.vec.insert.i4.i.i70 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store <2 x float> %i.bs, ptr %i.bt, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i70, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !230
  %i.bu = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.i, label %bb.l, !prof !431

bb.i:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  %.not.i23 = icmp eq i32 %i.bw, 0
  br i1 %.not.i23, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.k unwind label %bb.n       ; 4 uses

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.bx, i64 16, i1 false), !tbaa.struct !229
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !229
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !229
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !229
  %i.cb = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %_ZNK10btSoftBody4Body5xformEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !545 ; 2 uses
  %.not5.i19 = icmp eq ptr %i.cd, null
  br i1 %.not5.i19, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit24

bb.n:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !547 ; 2 uses
  %.not6.i21 = icmp eq ptr %i.cg, null
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %spec.select.i22 = select i1 %.not6.i21, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.ch
  br label %_ZNK10btSoftBody4Body5xformEv.exit24

_ZNK10btSoftBody4Body5xformEv.exit24:             ; preds = %bb.m, %bb.o
  %.0.i20 = phi ptr [ %i.ce, %bb.m ], [ %spec.select.i22, %bb.o ] ; 9 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i20, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i20, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i20, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i20, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i20, i64 40
  %i.cn = load float, ptr %i.ck, align 4, !tbaa !223, !noalias !554
  %i.co = load float, ptr %i.cl, align 4, !tbaa !223, !noalias !554
  %i.cp = load float, ptr %i.cm, align 4, !tbaa !223, !noalias !554
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i20, i64 48
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !223, !noalias !559
  %i.cs = fneg float %i.cr                        ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i20, i64 52
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !223, !noalias !559
  %i.cv = fneg float %i.cu                        ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i20, i64 56
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !223, !noalias !559
  %i.cy = fneg float %i.cx
  %i.cz = load float, ptr %i.aj, align 4, !tbaa !223 ; 2 uses
  %i.da = load <2 x float>, ptr %i.ai, align 4, !tbaa !223 ; 4 uses
  %i.db = insertelement <2 x float> poison, float %i.co, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = insertelement <2 x float> %i.da, float %i.cv, i64 0
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.di = insertelement <2 x float> %i.dh, float %i.cs, i64 0
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.di, <2 x float> %i.de)
  %i.dk = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = insertelement <2 x float> poison, float %i.cy, i64 0 ; 2 uses
  %i.dn = insertelement <2 x float> %i.dm, float %i.cz, i64 1
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dn, <2 x float> %i.dj) ; 2 uses
  %i.dp = load <2 x float>, ptr %.0.i20, align 4, !tbaa !223, !noalias !554 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody17appendLinearJointERKNS_6LJoint5SpecsEPNS_7ClusterENS_4BodyE:bb.a
  %i.eh = fadd <2 x float> %i.dz, %i.eg
  %shift67 = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop68 = fadd <2 x float> %i.do, %shift67
  %.sroa.3.12.vec.insert.i4.i.i4071 = insertelement <2 x float> %foldExtExtBinop68, float 0.000000e+00, i64 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store <2 x float> %i.eh, ptr %i.ei, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i4071, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !230
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ek = load <2 x float>, ptr %1, align 4, !tbaa !223
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.el, ptr %i.ej, align 8, !tbaa !223
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = load float, ptr %i.em, align 4, !tbaa !560
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store float %i.en, ptr %i.eo, align 8, !tbaa !562
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1444 ; 4 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !197 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !198
  %i.et = icmp eq i32 %i.eq, %i.es
  br i1 %i.et, label %bb.p, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE9push_backERKS2_.exit

bb.p:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit24
  %.not.i.i = icmp eq i32 %i.eq, 0
  %i.eu = shl nsw i32 %i.eq, 1
  %i.ev = select i1 %.not.i.i, i32 1, i32 %i.eu   ; 4 uses
  %i.ew = icmp slt i32 %i.eq, %i.ev
  br i1 %i.ew, label %bb.q, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE9push_backERKS2_.exit

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ex = sext i32 %i.ev to i64
  %i.ey = shl nsw i64 %i.ex, 3
  %i.ez = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ey, i32 noundef 16)
  %.pre.i = load i32, ptr %i.ep, align 4, !tbaa !197
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i: ; preds = %bb.r, %bb.q
  %i.fa = phi i32 [ %.pre.i, %bb.r ], [ %i.eq, %bb.q ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.ez, %bb.r ], [ null, %bb.q ] ; 8 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !196 ; 9 uses
  br i1 %i.fb, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i
  %i.fe = ptrtoaddr ptr %i.fd to i64
  %.0.i.i.i64 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.fa to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.fa, 8
  %i.ff = sub i64 %i.fe, %.0.i.i.i64
  %diff.check = icmp ugt i64 %i.ff, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load = load <2 x ptr>, ptr %i.fh, align 8, !tbaa !340
  %wide.load65 = load <2 x ptr>, ptr %i.fi, align 8, !tbaa !340
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <2 x ptr> %wide.load, ptr %i.fg, align 8, !tbaa !340
  store <2 x ptr> %wide.load65, ptr %i.fj, align 8, !tbaa !340
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !564

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.i.i.i.prol
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !340
  store ptr %i.fn, ptr %i.fl, align 8, !tbaa !340
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !565

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.fo = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.fp = icmp ugt i64 %i.fo, -4
  br i1 %i.fp, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.i.i.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !340
  store ptr %i.fs, ptr %i.fq, align 8, !tbaa !340
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.next.i.i.i
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !340
  store ptr %i.fv, ptr %i.ft, align 8, !tbaa !340
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.next.i.i.i.1
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !340
  store ptr %i.fy, ptr %i.fw, align 8, !tbaa !340
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.next.i.i.i.2
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !340
  store ptr %i.gb, ptr %i.fz, align 8, !tbaa !340
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !566

_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !195, !range !233, !noundef !234
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.s, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i

bb.s:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fd)
  %.pre2.pre.pre.i = load i32, ptr %i.ep, align 4, !tbaa !197
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i: ; preds = %bb.s, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i
  %.pre2.i = phi i32 [ %i.fa, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.s ], [ %i.fa, %_ZNK20btAlignedObjectArrayIPN10btSoftBody5JointEE4copyEiiPS2_.exit.thread.i.i ]
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i8 1, ptr %i.gf, align 8, !tbaa !195
  store ptr %.0.i.i.i, ptr %i.fc, align 8, !tbaa !196
  store i32 %i.ev, ptr %i.er, align 8, !tbaa !198
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE9push_backERKS2_.exit: ; preds = %_ZNK10btSoftBody4Body5xformEv.exit24, %bb.p, %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i
  %i.gg = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE10deallocateEv.exit.i.i ], [ %i.eq, %bb.p ], [ %i.eq, %_ZNK10btSoftBody4Body5xformEv.exit24 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !196
  %i.gj = sext i32 %i.gg to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gj
  store ptr %i.a, ptr %i.gk, align 8, !tbaa !340
  %i.gl = add nsw i32 %i.gg, 1
  store i32 %i.gl, ptr %i.ep, align 4, !tbaa !197
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody17appendLinearJointERKNS_6LJoint5SpecsENS_4BodyE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef readonly byval(%"struct.btSoftBody::Body") align 8 captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !541
  tail call void @_ZN10btSoftBody17appendLinearJointERKNS_6LJoint5SpecsEPNS_7ClusterENS_4BodyE(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(28) %1, ptr noundef %i.c, ptr noundef nonnull byval(%"struct.btSoftBody::Body") align 8 %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody17appendLinearJointERKNS_6LJoint5SpecsEPS_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.btSoftBody::Body", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !541
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1760
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !541
  store ptr %i.f, ptr %3, align 8, !tbaa !547
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  tail call void @_ZN10btSoftBody17appendLinearJointERKNS_6LJoint5SpecsEPNS_7ClusterENS_4BodyE(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(28) %1, ptr noundef %i.c, ptr noundef nonnull byval(%"struct.btSoftBody::Body") align 8 %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody18appendAngularJointERKNS_6AJoint5SpecsEPNS_7ClusterENS_4BodyE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.btSoftBody::Body") align 8 captures(none) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 224, i32 noundef 16) ; 15 uses
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, i8 0, i64 168, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN10btSoftBody6AJointE, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr %2, ptr %scevgep.i.i, align 8, !tbaa !541
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.460.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !543
  %i.d = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e, !prof !431

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.d unwind label %bb.g       ; 4 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.g, i64 16, i1 false), !tbaa.struct !229
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !229
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !229
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !229
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !545  ; 2 uses
  %.not5.i = icmp eq ptr %i.m, null
  br i1 %.not5.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit

common.resume:                                    ; preds = %bb.n, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.bg, %bb.n ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %scevgep.i.i, align 8, !tbaa !547 ; 2 uses
  %.not6.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %spec.select.i = select i1 %.not6.i, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.q
  br label %_ZNK10btSoftBody4Body5xformEv.exit

_ZNK10btSoftBody4Body5xformEv.exit:               ; preds = %bb.f, %bb.h
  %.0.i = phi ptr [ %i.n, %bb.f ], [ %spec.select.i, %bb.h ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.w = load float, ptr %i.t, align 4, !tbaa !223, !noalias !567
  %i.x = load float, ptr %i.u, align 4, !tbaa !223, !noalias !567
  %i.y = load float, ptr %i.v, align 4, !tbaa !223, !noalias !567
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !223 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !223 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !223 ; 2 uses
  %i.af = load <2 x float>, ptr %.0.i, align 4, !tbaa !223, !noalias !567
  %i.ag = load <2 x float>, ptr %i.r, align 4, !tbaa !223, !noalias !567
  %i.ah = load <2 x float>, ptr %i.s, align 4, !tbaa !223, !noalias !567
  %i.ai = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %i.ag, %i.aj
  %i.al = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ap, <2 x float> %i.an)
  %i.ar = fmul float %i.x, %i.ac
  %i.as = tail call float @llvm.fmuladd.f32(float %i.w, float %i.aa, float %i.ar)
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.ae, float %i.as)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store <2 x float> %i.aq, ptr %i.au, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !230
  %i.av = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.i, label %bb.l, !prof !431

bb.i:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit
  %i.ax = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  %.not.i25 = icmp eq i32 %i.ax, 0
  br i1 %.not.i25, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.k unwind label %bb.n       ; 4 uses

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.ay, i64 16, i1 false), !tbaa.struct !229
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !229
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !229
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !229
  %i.bc = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !545 ; 2 uses
  %.not5.i21 = icmp eq ptr %i.be, null
  br i1 %.not5.i21, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit26

bb.n:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !547 ; 2 uses
  %.not6.i23 = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %spec.select.i24 = select i1 %.not6.i23, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.bi
  br label %_ZNK10btSoftBody4Body5xformEv.exit26

_ZNK10btSoftBody4Body5xformEv.exit26:             ; preds = %bb.m, %bb.o
  %.0.i22 = phi ptr [ %i.bf, %bb.m ], [ %spec.select.i24, %bb.o ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i22, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i22, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i22, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i22, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i22, i64 40
  %i.bo = load float, ptr %i.bl, align 4, !tbaa !223, !noalias !572
  %i.bp = load float, ptr %i.bm, align 4, !tbaa !223, !noalias !572
  %i.bq = load float, ptr %i.bn, align 4, !tbaa !223, !noalias !572
  %i.br = load float, ptr %i.z, align 4, !tbaa !223 ; 2 uses
  %i.bs = load float, ptr %i.ab, align 8, !tbaa !223 ; 2 uses
  %i.bt = load float, ptr %i.ad, align 4, !tbaa !223 ; 2 uses
  %i.bu = load <2 x float>, ptr %.0.i22, align 4, !tbaa !223, !noalias !572
  %i.bv = load <2 x float>, ptr %i.bj, align 4, !tbaa !223, !noalias !572
  %i.bw = load <2 x float>, ptr %i.bk, align 4, !tbaa !223, !noalias !572
  %i.bx = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bv, %i.by
  %i.ca = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.cb, <2 x float> %i.bz)
  %i.cd = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.ce, <2 x float> %i.cc)
  %i.cg = fmul float %i.bp, %i.bs
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.br, float %i.cg)
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bt, float %i.ch)
  %.sroa.3.12.vec.insert.i42 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store <2 x float> %i.cf, ptr %i.cj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x float> %.sroa.3.12.vec.insert.i42, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !230
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cl = load <2 x float>, ptr %1, align 8, !tbaa !223
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.cm, ptr %i.ck, align 8, !tbaa !223
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load float, ptr %i.cn, align 8, !tbaa !560
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store float %i.co, ptr %i.cp, align 8, !tbaa !562
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !577
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !580
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1444 ; 4 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !197 ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !198
  %i.cx = icmp eq i32 %i.cu, %i.cw
  br i1 %i.cx, label %bb.p, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE9push_backERKS2_.exit

bb.p:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit26
  %.not.i.i = icmp eq i32 %i.cu, 0
  %i.cy = shl nsw i32 %i.cu, 1
  %i.cz = select i1 %.not.i.i, i32 1, i32 %i.cy   ; 4 uses
  %i.da = icmp slt i32 %i.cu, %i.cz
  br i1 %i.da, label %bb.q, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE9push_backERKS2_.exit

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE8allocateEi.exit.i.i, label %bb.r

end_hunk_1
