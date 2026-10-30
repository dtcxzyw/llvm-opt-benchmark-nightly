Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableBodyHelpers?download=true
inline.NumInlined: 419
inline.NumDeleted: 179
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN20btAlignedObjectArrayIS_IiEE6resizeEiRKS0_:bb.a

_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit:        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !237

.loopexit:                                        ; preds = %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit, %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.e
  store i32 %1, ptr %i.a, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !49
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

declare void @_ZN23btReducedDeformableBodyC1EP19btSoftBodyWorldInfoiPK9btVector3PKf(ptr noundef nonnull align 8 dereferenceable(3176), ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN10btSoftBody11appendTetraEiiiiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(2064), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr noundef nonnull align 8 dereferenceable(2064), i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN17btSoftBodyHelpers21generateBoundaryFacesEP10btSoftBody(ptr noundef) local_unnamed_addr #2

declare void @_ZN10btSoftBody19initializeDmInverseEv(ptr noundef nonnull align 8 dereferenceable(2064)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i8, ptr %i.i, align 8, !range !49
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.k, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #22
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i:        ; preds = %bb.c, %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.n = icmp eq i64 %indvars.iv.next.i.i, %zext.i
  br i1 %i.n, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i, label %bb.b, !llvm.loop !0

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !42, !range !49, !noundef !62
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i, %bb.f
  ret void

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !49
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btReducedDeformableBodyHelpers13readBinaryVecER20btAlignedObjectArrayIfEjPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_ifstream", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef %2, i32 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !58
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.b unwind label %bb.h       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !83   ; 3 uses
  %i.f = icmp sgt i32 %1, %i.e
  br i1 %i.f, label %bb.c, label %.loopexit17

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !84
  %i.i = icmp slt i32 %i.h, %1
  br i1 %i.i, label %bb.d, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !82
  br label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = sext i32 %1 to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.k, i32 noundef 16)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !83
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.d
  %i.m = phi i32 [ %.pre.i, %.noexc ], [ %i.e, %bb.d ] ; 3 uses
  %.0.i.i.i.a = phi ptr [ %i.l, %.noexc ], [ null, %bb.d ] ; 9 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82   ; 9 uses
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %i.q = ptrtoaddr ptr %i.p to i64
  %.0.i.i.i24 = ptrtoaddr ptr %.0.i.i.i.a to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.m, 8
  %i.r = sub i64 %i.q, %.0.i.i.i24
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.a, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x float>, ptr %i.t, align 4, !tbaa !57
  %wide.load25 = load <4 x float>, ptr %i.u, align 4, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x float> %wide.load, ptr %i.s, align 4, !tbaa !57
  store <4 x float> %wide.load25, ptr %i.v, align 4, !tbaa !57
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.a, i64 %indvars.iv.i.i.i.prol
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.prol
  %i.z = load float, ptr %i.y, align 4, !tbaa !57
  store float %i.z, ptr %i.x, align 4, !tbaa !57
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !239

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.a, i64 %indvars.iv.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !57
  store float %i.ae, ptr %i.ac, align 4, !tbaa !57
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.a, i64 %indvars.iv.next.i.i.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !57
  store float %i.ah, ptr %i.af, align 4, !tbaa !57
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.a, i64 %indvars.iv.next.i.i.i.1
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.1
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !57
  store float %i.ak, ptr %i.ai, align 4, !tbaa !57
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.a, i64 %indvars.iv.next.i.i.i.2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.2
  %i.an = load float, ptr %i.am, align 4, !tbaa !57
  store float %i.an, ptr %i.al, align 4, !tbaa !57
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !240

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !81, !range !49, !noundef !62
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i unwind label %bb.h

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ar, align 8, !tbaa !81
  store ptr %.0.i.i.i.a, ptr %i.o, align 8, !tbaa !82
  store i32 %1, ptr %i.g, align 8, !tbaa !84
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.as = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i.a, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.at = sext i32 %i.e to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %1 to i64
  %i.au = shl nsw i64 %i.at, 2
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.au
  %i.av = sub nsw i64 %wide.trip.count.i, %i.at
  %i.aw = shl nsw i64 %i.av, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.aw, i1 false), !tbaa !57
  br label %.loopexit17

.loopexit17:                                      ; preds = %.lr.ph.i, %bb.b
  store i32 %1, ptr %i.d, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit17
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

._crit_edge:                                      ; preds = %bb.j, %.loopexit17
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ay)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %._crit_edge
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %bb.g, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit

bb.g:                                             ; preds = %.noexc15
  %i.ba = load ptr, ptr %3, align 8, !tbaa !25
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %3, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !34
  %i.bg = or i32 %i.bf, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bd, i32 noundef %i.bg)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.a, %bb.f, %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %.018 = phi i32 [ 0, %.lr.ph ], [ %i.bo, %bb.j ] ; 2 uses
  %i.bi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.b, i64 noundef 8)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bj = load double, ptr %i.b, align 8, !tbaa !86
  %i.bk = fptrunc double %i.bj to float
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !82
  %i.bm = sext i32 %.018 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  store float %i.bk, ptr %i.bn, align 4, !tbaa !57
  %i.bo = add nuw i32 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bo, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !241

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc15, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.g, %._crit_edge
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp26, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bh, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btReducedDeformableBodyHelpers13readBinaryMatER20btAlignedObjectArrayIS0_IfEEjjPKc(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %class.btAlignedObjectArray.9, align 8 ; 9 uses
  %i.b = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef %3, i32 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !58
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i8 1, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
end_hunk_0
