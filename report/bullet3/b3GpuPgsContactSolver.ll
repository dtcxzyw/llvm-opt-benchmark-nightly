Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuPgsContactSolver?download=true
inline.NumInlined: 588
inline.NumDeleted: 176
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN20b3AlignedObjectArrayIjED2Ev:bb.a
}

declare void @_ZN15b3BoundSearchCL7executeER13b3OpenCLArrayI10b3SortDataEiRS0_IjEiNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN14b3PrefixScanCL7executeER13b3OpenCLArrayIjES2_iPj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(50), ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare void @_ZN8b3Solver13batchContactsEP13b3OpenCLArrayI10b3Contact4EiPS0_IjES5_i(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN21b3GpuPgsContactSolver22sortConstraintByBatch3EP10b3Contact4iiiiPi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %struct.b3Contact4Data, align 16 ; 4 uses
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.70)
  %i.a = shl nsw i32 %3, 1                        ; 9 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 4), align 4, !tbaa !58 ; 2 uses
  %i.c = icmp sgt i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %.loopexit212

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 8), align 8, !tbaa !59
  %i.e = icmp slt i32 %i.d, %i.a
  br i1 %i.e, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.pre262 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 16), align 8, !tbaa !57
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.f = sext i32 %i.a to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.g, i32 noundef 16)
          to label %.noexc unwind label %bb.f     ; 12 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %.noexc
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 4), align 4, !tbaa !58 ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  %.pre261 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 16), align 8, !tbaa !57 ; 11 uses
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %.pre261292 = ptrtoaddr ptr %.pre261 to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.k to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.k, 8
  %i.m = sub i64 %.pre261292, %i.i
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond309 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond309, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.pre261, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !129
  %wide.load293 = load <4 x i32>, ptr %i.p, align 4, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %wide.load, ptr %i.n, align 4, !tbaa !129
  store <4 x i32> %wide.load293, ptr %i.q, align 4, !tbaa !129
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i.i.prol
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre261, i64 %indvars.iv.i.i.i.prol
  %i.u = load i32, ptr %i.t, align 4, !tbaa !129
  store i32 %i.u, ptr %i.s, align 4, !tbaa !129
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !304

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.v = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre261, i64 %indvars.iv.i.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129
  store i32 %i.z, ptr %i.x, align 4, !tbaa !129
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.pre261, i64 %indvars.iv.next.i.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !129
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !129
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i.1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre261, i64 %indvars.iv.next.i.i.i.1
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !129
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !129
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i.2
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.pre261, i64 %indvars.iv.next.i.i.i.2
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !129
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !129
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph, !llvm.loop !305

.split7.i.i:                                      ; preds = %.noexc, %bb.c
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.75, i32 noundef 301)
          to label %.noexc129 unwind label %bb.f

.noexc129:                                        ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
          to label %.noexc130 unwind label %bb.f

.noexc130:                                        ; preds = %.noexc129
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 4), align 4, !tbaa !58
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 16), align 8, !tbaa !57
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc130, %.split.i.i
  %i.aj = phi ptr [ %.pre, %.noexc130 ], [ %.pre261, %.split.i.i ], [ %.pre261, %middle.block ], [ %.pre261, %scalar.ph ], [ %.pre261, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i12.i.i = phi ptr [ null, %.noexc130 ], [ %i.h, %.split.i.i ], [ %i.h, %middle.block ], [ %i.h, %scalar.ph ], [ %i.h, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.noexc130 ], [ %i.a, %.split.i.i ], [ %i.a, %middle.block ], [ %i.a, %scalar.ph ], [ %i.a, %scalar.ph.prol.loopexit ]
  %.not.i10.i.i = icmp ne ptr %i.aj, null
  %i.ak = load i8, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 24), align 8, !range !132
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond203 = select i1 %.not.i10.i.i, i1 %i.al, i1 false
  br i1 %or.cond203, label %bb.d, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aj)
          to label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i unwind label %bb.f

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 24), align 8, !tbaa !56
  store ptr %.0.i12.i.i, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 16), align 8, !tbaa !57
  store i32 %.0.i.i, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 8), align 8, !tbaa !59
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.am = phi ptr [ %.pre262, %..lr.ph.i_crit_edge ], [ %.0.i12.i.i, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i ]
  %i.an = sext i32 %i.b to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.a to i64
  %i.ao = shl nsw i64 %i.an, 2
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.ao
  %i.ap = sub nsw i64 %wide.trip.count.i, %i.an
  %i.aq = shl nsw i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.aq, i1 false), !tbaa !129
  br label %.loopexit212

.loopexit212:                                     ; preds = %.lr.ph.i, %bb.a
  store i32 %i.a, ptr getelementptr inbounds nuw (i8, ptr @curUsed, i64 4), align 4, !tbaa !58
  %i.ar = load i32, ptr @_ZZN21b3GpuPgsContactSolver22sortConstraintByBatch3EP10b3Contact4iiiiPiE17maxNumConstraints, align 4, !tbaa !129
  %i.as = icmp slt i32 %i.ar, %2
  br i1 %i.as, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.loopexit212
  store i32 %2, ptr @_ZZN21b3GpuPgsContactSolver22sortConstraintByBatch3EP10b3Contact4iiiiPiE17maxNumConstraints, align 4, !tbaa !129
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %.noexc129, %.split7.i.i, %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13b3ProfileZoneD2Ev.exit

bb.g:                                             ; preds = %bb.e, %.loopexit212
  %i.au = sdiv i32 %5, 32                         ; 4 uses
  %i.av = add nsw i32 %i.au, 1                    ; 8 uses
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 4), align 4, !tbaa !58 ; 2 uses
  %.not206 = icmp slt i32 %i.au, %i.aw
  br i1 %.not206, label %.loopexit211, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 8), align 8, !tbaa !59
  %.not207 = icmp sgt i32 %i.ax, %i.au
  br i1 %.not207, label %..lr.ph.i132_crit_edge, label %bb.i

..lr.ph.i132_crit_edge:                           ; preds = %bb.h
  %.pre265 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 16), align 8, !tbaa !57
  br label %.lr.ph.i132

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i138 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i138, label %.split7.i.i151, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i139

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i139: ; preds = %bb.i
  %i.ay = sext i32 %i.av to i64
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.az, i32 noundef 16)
          to label %.noexc152 unwind label %bb.o  ; 12 uses

.noexc152:                                        ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i139
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = icmp eq ptr %i.ba, null
  br i1 %i.bc, label %.split7.i.i151, label %.split.i.i140

.split.i.i140:                                    ; preds = %.noexc152
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 4), align 4, !tbaa !58 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %.pre264 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 16), align 8, !tbaa !57 ; 11 uses
  br i1 %i.be, label %.lr.ph.i.i.i146, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i141

.lr.ph.i.i.i146:                                  ; preds = %.split.i.i140
  %.pre264295 = ptrtoaddr ptr %.pre264 to i64
  %wide.trip.count.i.i.i147 = zext nneg i32 %i.bd to i64 ; 5 uses
  %min.iters.check298 = icmp ult i32 %i.bd, 8
  %i.bf = sub i64 %.pre264295, %i.bb
  %diff.check296 = icmp ugt i64 %i.bf, -32
  %or.cond310 = select i1 %min.iters.check298, i1 true, i1 %diff.check296
  br i1 %or.cond310, label %scalar.ph297.preheader, label %vector.ph299

vector.ph299:                                     ; preds = %.lr.ph.i.i.i146
  %n.vec300 = and i64 %wide.trip.count.i.i.i147, 2147483640 ; 3 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next305, %vector.body301 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index302 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre264, i64 %index302 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load303 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !129
  %wide.load304 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !129
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <4 x i32> %wide.load303, ptr %i.bg, align 4, !tbaa !129
  store <4 x i32> %wide.load304, ptr %i.bj, align 4, !tbaa !129
  %index.next305 = add nuw i64 %index302, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.bk, label %middle.block306, label %vector.body301, !llvm.loop !306

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %n.vec300, %wide.trip.count.i.i.i147
  br i1 %cmp.n307, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i141, label %scalar.ph297.preheader

scalar.ph297.preheader:                           ; preds = %.lr.ph.i.i.i146, %middle.block306
  %indvars.iv.i.i.i148.ph = phi i64 [ 0, %.lr.ph.i.i.i146 ], [ %n.vec300, %middle.block306 ] ; 3 uses
  %xtraiter312 = and i64 %wide.trip.count.i.i.i147, 3 ; 2 uses
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %scalar.ph297.prol.loopexit, label %scalar.ph297.prol

scalar.ph297.prol:                                ; preds = %scalar.ph297.preheader, %scalar.ph297.prol
  %indvars.iv.i.i.i148.prol = phi i64 [ %indvars.iv.next.i.i.i149.prol, %scalar.ph297.prol ], [ %indvars.iv.i.i.i148.ph, %scalar.ph297.preheader ] ; 3 uses
  %prol.iter314 = phi i64 [ %prol.iter314.next, %scalar.ph297.prol ], [ 0, %scalar.ph297.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i.i.i148.prol
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.pre264, i64 %indvars.iv.i.i.i148.prol
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !129
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !129
  %indvars.iv.next.i.i.i149.prol = add nuw nsw i64 %indvars.iv.i.i.i148.prol, 1 ; 2 uses
  %prol.iter314.next = add i64 %prol.iter314, 1   ; 2 uses
  %prol.iter314.cmp.not = icmp eq i64 %prol.iter314.next, %xtraiter312
  br i1 %prol.iter314.cmp.not, label %scalar.ph297.prol.loopexit, label %scalar.ph297.prol, !llvm.loop !307

scalar.ph297.prol.loopexit:                       ; preds = %scalar.ph297.prol, %scalar.ph297.preheader
  %indvars.iv.i.i.i148.unr = phi i64 [ %indvars.iv.i.i.i148.ph, %scalar.ph297.preheader ], [ %indvars.iv.next.i.i.i149.prol, %scalar.ph297.prol ]
  %i.bo = sub nsw i64 %indvars.iv.i.i.i148.ph, %wide.trip.count.i.i.i147
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i141, label %scalar.ph297

scalar.ph297:                                     ; preds = %scalar.ph297.prol.loopexit, %scalar.ph297
  %indvars.iv.i.i.i148 = phi i64 [ %indvars.iv.next.i.i.i149.3, %scalar.ph297 ], [ %indvars.iv.i.i.i148.unr, %scalar.ph297.prol.loopexit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i.i.i148
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.pre264, i64 %indvars.iv.i.i.i148
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !129
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !129
  %indvars.iv.next.i.i.i149 = add nuw nsw i64 %indvars.iv.i.i.i148, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i149
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.pre264, i64 %indvars.iv.next.i.i.i149
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !129
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !129
  %indvars.iv.next.i.i.i149.1 = add nuw nsw i64 %indvars.iv.i.i.i148, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i149.1
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.pre264, i64 %indvars.iv.next.i.i.i149.1
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !129
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !129
  %indvars.iv.next.i.i.i149.2 = add nuw nsw i64 %indvars.iv.i.i.i148, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i.i.i149.2
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.pre264, i64 %indvars.iv.next.i.i.i149.2
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !129
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !129
  %indvars.iv.next.i.i.i149.3 = add nuw nsw i64 %indvars.iv.i.i.i148, 4 ; 2 uses
  %exitcond.not.i.i.i150.3 = icmp eq i64 %indvars.iv.next.i.i.i149.3, %wide.trip.count.i.i.i147
  br i1 %exitcond.not.i.i.i150.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i141, label %scalar.ph297, !llvm.loop !308

.split7.i.i151:                                   ; preds = %.noexc152, %bb.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.75, i32 noundef 301)
          to label %.noexc153 unwind label %bb.o

.noexc153:                                        ; preds = %.split7.i.i151
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
          to label %.noexc154 unwind label %bb.o

.noexc154:                                        ; preds = %.noexc153
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 4), align 4, !tbaa !58
  %.pre263 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 16), align 8, !tbaa !57
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i141

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i141: ; preds = %scalar.ph297.prol.loopexit, %scalar.ph297, %middle.block306, %.noexc154, %.split.i.i140
  %i.cc = phi ptr [ %.pre263, %.noexc154 ], [ %.pre264, %.split.i.i140 ], [ %.pre264, %middle.block306 ], [ %.pre264, %scalar.ph297 ], [ %.pre264, %scalar.ph297.prol.loopexit ] ; 2 uses
  %.0.i12.i.i142 = phi ptr [ null, %.noexc154 ], [ %i.ba, %.split.i.i140 ], [ %i.ba, %middle.block306 ], [ %i.ba, %scalar.ph297 ], [ %i.ba, %scalar.ph297.prol.loopexit ] ; 2 uses
  %.0.i.i143 = phi i32 [ 0, %.noexc154 ], [ %i.av, %.split.i.i140 ], [ %i.av, %middle.block306 ], [ %i.av, %scalar.ph297 ], [ %i.av, %scalar.ph297.prol.loopexit ]
  %.not.i10.i.i144 = icmp ne ptr %i.cc, null
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 24), align 8, !range !132
  %i.ce = trunc nuw i8 %i.cd to i1
  %or.cond205 = select i1 %.not.i10.i.i144, i1 %i.ce, i1 false
  br i1 %or.cond205, label %bb.j, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i145

bb.j:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i141
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.cc)
          to label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i145 unwind label %bb.o

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i145: ; preds = %bb.j, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i141
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 24), align 8, !tbaa !56
  store ptr %.0.i12.i.i142, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 16), align 8, !tbaa !57
  store i32 %.0.i.i143, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 8), align 8, !tbaa !59
  br label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %..lr.ph.i132_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i145
  %i.cf = phi ptr [ %.pre265, %..lr.ph.i132_crit_edge ], [ %.0.i12.i.i142, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i145 ]
  %i.cg = sext i32 %i.aw to i64                   ; 2 uses
  %7 = shl nsw i64 %i.cg, 2
  %scevgep243 = getelementptr i8, ptr %i.cf, i64 %7
  %narrow = add nsw i32 %i.au, 1
  %8 = sext i32 %narrow to i64
  %i.ch = sub nsw i64 %8, %i.cg
  %i.ci = shl nuw nsw i64 %i.ch, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep243, i8 0, i64 %i.ci, i1 false), !tbaa !129
  br label %.loopexit211

.loopexit211:                                     ; preds = %.lr.ph.i132, %bb.g
  store i32 %i.av, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 4), align 4, !tbaa !58
  %.not216 = icmp slt i32 %5, -31
  br i1 %.not216, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit211
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bodyUsed, i64 16), align 8, !tbaa !57
  %i.ck = zext i32 %i.av to i64
  %i.cl = shl nuw nsw i64 %i.ck, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cj, i8 0, i64 %i.cl, i1 false), !tbaa !129
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit211
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 292 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !45 ; 3 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.k, label %.loopexit210

bb.k:                                             ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 296 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !46
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %.lr.ph.i157

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.75, i32 noundef 301)
          to label %.noexc165 unwind label %bb.y

.noexc165:                                        ; preds = %bb.l
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
          to label %.noexc166 unwind label %bb.y

.noexc166:                                        ; preds = %.noexc165
  store i32 0, ptr %i.co, align 4, !tbaa !45
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 304 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !44 ; 2 uses
  %.not.i10.i.i164 = icmp eq ptr %i.cv, null
  br i1 %.not.i10.i.i164, label %_ZN20b3AlignedObjectArrayI10b3SortDataE10deallocateEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc166
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 312
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !43, !range !132, !noundef !144
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.n, label %_ZN20b3AlignedObjectArrayI10b3SortDataE10deallocateEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.cv)
          to label %_ZN20b3AlignedObjectArrayI10b3SortDataE10deallocateEv.exit.i.i unwind label %bb.y

_ZN20b3AlignedObjectArrayI10b3SortDataE10deallocateEv.exit.i.i: ; preds = %bb.n, %bb.m, %.noexc166
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 312
  store i8 1, ptr %i.cz, align 8, !tbaa !43
  store ptr null, ptr %i.cu, align 8, !tbaa !44
  store i32 0, ptr %i.cr, align 8, !tbaa !46
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %_ZN20b3AlignedObjectArrayI10b3SortDataE10deallocateEv.exit.i.i, %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 304 ; 5 uses
  %i.db = sext i32 %i.cp to i64                   ; 3 uses
  %i.dc = sub nsw i64 0, %i.db
  %xtraiter315 = and i64 %i.dc, 3                 ; 2 uses
  %lcmp.mod316.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod316.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i157, %.prol.preheader
  %indvars.iv.i158.prol = phi i64 [ %indvars.iv.next.i159.prol, %.prol.preheader ], [ %i.db, %.lr.ph.i157 ] ; 2 uses
  %prol.iter317 = phi i64 [ %prol.iter317.next, %.prol.preheader ], [ 0, %.lr.ph.i157 ]
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %indvars.iv.i158.prol
  store i64 0, ptr %i.de, align 4
  %indvars.iv.next.i159.prol = add nsw i64 %indvars.iv.i158.prol, 1 ; 2 uses
  %prol.iter317.next = add i64 %prol.iter317, 1   ; 2 uses
  %prol.iter317.cmp.not = icmp eq i64 %prol.iter317.next, %xtraiter315
  br i1 %prol.iter317.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !309

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i157
  %indvars.iv.i158.unr = phi i64 [ %i.db, %.lr.ph.i157 ], [ %indvars.iv.next.i159.prol, %.prol.preheader ]
  %i.df = icmp ugt i32 %i.cp, -4
  br i1 %i.df, label %.loopexit210.loopexit, label %.lr.ph.i157.new

.lr.ph.i157.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i157.new
  %indvars.iv.i158 = phi i64 [ %indvars.iv.next.i159.3, %.lr.ph.i157.new ], [ %indvars.iv.i158.unr, %.prol.loopexit ] ; 5 uses
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %indvars.iv.i158
  store i64 0, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %indvars.iv.i158
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  store i64 0, ptr %i.dk, align 4
  %i.dl = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %indvars.iv.i158
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  store i64 0, ptr %i.dn, align 4
  %i.do = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.dp = getelementptr [8 x i8], ptr %i.do, i64 %indvars.iv.i158
  %i.dq = getelementptr i8, ptr %i.dp, i64 24
  store i64 0, ptr %i.dq, align 4
  %indvars.iv.next.i159.3 = add nsw i64 %indvars.iv.i158, 4 ; 2 uses
  %exitcond.not.i160.3 = icmp eq i64 %indvars.iv.next.i159.3, 0
  br i1 %exitcond.not.i160.3, label %.loopexit210.loopexit, label %.lr.ph.i157.new, !llvm.loop !16

bb.o:                                             ; preds = %bb.j, %.noexc153, %.split7.i.i151, %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i139
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13b3ProfileZoneD2Ev.exit

.loopexit210.loopexit:                            ; preds = %.lr.ph.i157.new, %.prol.loopexit
  %.pre266 = load ptr, ptr %i.cm, align 8, !tbaa !60
  br label %.loopexit210

.loopexit210:                                     ; preds = %.loopexit210.loopexit, %._crit_edge
  %i.ds = phi ptr [ %.pre266, %.loopexit210.loopexit ], [ %i.cn, %._crit_edge ] ; 8 uses
  store i32 0, ptr %i.co, align 4, !tbaa !45
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 260 ; 3 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !38 ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %bb.p, label %.loopexit209

bb.p:                                             ; preds = %.loopexit210
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 264 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !39
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.q, label %..lr.ph.i168_crit_edge

..lr.ph.i168_crit_edge:                           ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ds, i64 272
  %.pre267 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %.lr.ph.i168

bb.q:                                             ; preds = %bb.p
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.75, i32 noundef 301)
          to label %.noexc177 unwind label %bb.z

.noexc177:                                        ; preds = %bb.q
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
          to label %.noexc178 unwind label %bb.z

.noexc178:                                        ; preds = %.noexc177
  store i32 0, ptr %i.dt, align 4, !tbaa !38
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 272 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !37 ; 2 uses
  %.not.i10.i.i176 = icmp eq ptr %i.ea, null
  br i1 %.not.i10.i.i176, label %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc178
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 280
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !36, !range !132, !noundef !144
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.s, label %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ea)
          to label %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i unwind label %bb.z

_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i: ; preds = %bb.s, %bb.r, %.noexc178
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 280
  store i8 1, ptr %i.ee, align 8, !tbaa !36
  store ptr null, ptr %i.dz, align 8, !tbaa !37
  store i32 0, ptr %i.dw, align 8, !tbaa !39
  %.pre268.pre = load ptr, ptr %i.cm, align 8, !tbaa !60
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %..lr.ph.i168_crit_edge, %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i
  %.pre268 = phi ptr [ %i.ds, %..lr.ph.i168_crit_edge ], [ %.pre268.pre, %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i ]
  %i.ef = phi ptr [ %.pre267, %..lr.ph.i168_crit_edge ], [ null, %_ZN20b3AlignedObjectArrayIjE10deallocateEv.exit.i.i ]
  %i.eg = sext i32 %i.du to i64                   ; 2 uses
  %i.eh = shl nsw i64 %i.eg, 2
  %scevgep245 = getelementptr i8, ptr %i.ef, i64 %i.eh
  %i.ei = mul nsw i64 %i.eg, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep245, i8 0, i64 %i.ei, i1 false), !tbaa !129
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph.i168, %.loopexit210
  %i.ej = phi ptr [ %.pre268, %.lr.ph.i168 ], [ %i.ds, %.loopexit210 ] ; 6 uses
  store i32 0, ptr %i.dt, align 4, !tbaa !38
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 324 ; 3 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !52 ; 3 uses
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %bb.t, label %.loopexit208

bb.t:                                             ; preds = %.loopexit209
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 328 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !53
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %bb.u, label %.lr.ph.i180

bb.u:                                             ; preds = %bb.t
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.75, i32 noundef 301)
          to label %.noexc188 unwind label %bb.aa

.noexc188:                                        ; preds = %bb.u
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
          to label %.noexc189 unwind label %bb.aa

end_hunk_0
