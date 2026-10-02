Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/UpdateCallback?download=true
inline.NumInlined: 160
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN13CInFileStreamC2Eb:.noexc
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.x = load i8, ptr %i.w, align 1, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i.i.i.i.prol
  store i8 %i.x, ptr %i.y, align 1, !tbaa !69
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !95

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge.thread.i.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i.i:                              ; preds = %.preheader.i.i.i.i
  %i.ab = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %i.ab, label %bb.a, label %._crit_edge.thread.i.i.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i.i.i.i
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !69
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i.i.i.i
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !69
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i.i.i.i.1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !69
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i.i.i.i.2
  store i8 %i.am, ptr %i.an, align 1, !tbaa !69
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.thread.i.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !96

._crit_edge.thread.i.i.i.i:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i) #20
  %.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !97
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.thread.i.i.i.i, %._crit_edge.i.i.i.i, %.noexc
  %i.ao = phi i32 [ %.pre1.i.i.i, %.noexc ], [ %.pre1.i.i.i, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i, %._crit_edge.thread.i.i.i.i ]
  store ptr %i.h, ptr %i.e, align 8, !tbaa !68
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.h, i64 %i.ap
  store i8 0, ptr %i.aq, align 1, !tbaa !69
  store i32 4, ptr %i.g, align 4, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO7CInFileE, i64 16), ptr %i.c, align 8, !tbaa !11
  %i.ar = zext i1 %1 to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ar, ptr %i.as, align 4, !tbaa !104
  ret void
}

declare void @_ZNK9CDirItems10GetPhyPathEi(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN13CInFileStream10OpenSharedEPKwb(ptr noundef nonnull align 8 dereferenceable(1112), ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22CArchiveUpdateCallback18SetOperationResultEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %1)
          to label %bb.f unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = extractvalue { ptr, i32 } %i.g, 1
  %i.j = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #21
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.h) #21
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr %i.l, ptr %i.m, align 16, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIPKc, ptr null) #22
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_end_catch() #21
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ -2147024882, %bb.d ], [ %i.f, %bb.a ]
  ret i32 %.0

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN22CArchiveUpdateCallback13GetVolumeSizeEjPy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !105  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = sext i32 %spec.select to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !106
  store i64 %i.i, ptr %2, align 8, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22CArchiveUpdateCallback15GetVolumeStreamEjPP20ISequentialOutStream(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = add i32 %1, 1
  invoke void @_Z21ConvertUInt32ToStringjPw(i32 noundef %i.b, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %wcslen.i.i = call i64 @wcslen(ptr nonnull %i.a)
  %i.c = trunc i64 %wcslen.i.i to i32             ; 5 uses
  %i.d = add nsw i32 %i.c, 1                      ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64
  %i.g = icmp slt i32 %i.c, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #19
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %bb.c
  store i32 0, ptr %i.j, align 4, !tbaa !20
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc, %bb.b
  %.sroa.0196.1 = phi ptr [ null, %bb.b ], [ %i.j, %.noexc ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0196.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.m, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.l = load i32, ptr %.0.i.i, align 4, !tbaa !20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.l, ptr %.04.i.i, align 4, !tbaa !20
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit.preheader, label %bb.d, !llvm.loop !107

_ZN11CStringBaseIwEC2EPKw.exit.preheader:         ; preds = %bb.d
  %i.n = icmp slt i32 %i.c, 2
  br i1 %i.n, label %.lr.ph, label %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN11CStringBaseIwEC2EPKw.exit.preheader, %_ZN11CStringBaseIwED2Ev.exit60
  %.sroa.25.0245 = phi i32 [ %.sroa.25.2, %_ZN11CStringBaseIwED2Ev.exit60 ], [ %i.d, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ] ; 3 uses
  %.sroa.13.0244 = phi i32 [ %i.aa, %_ZN11CStringBaseIwED2Ev.exit60 ], [ %i.c, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ] ; 4 uses
  %.sroa.0196.0243 = phi ptr [ %.sroa.0196.2, %_ZN11CStringBaseIwED2Ev.exit60 ], [ %.sroa.0196.1, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ] ; 6 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #19
          to label %bb.e unwind label %bb.o       ; 5 uses

bb.e:                                             ; preds = %.lr.ph
  store i32 48, ptr %i.o, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !20
  %i.q = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i unwind label %bb.p ; 6 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %bb.e
  store i32 0, ptr %i.q, align 4, !tbaa !20, !noalias !128
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.q, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.o, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.r, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.s = load i32, ptr %.0.i.i.i, align 4, !tbaa !20, !noalias !128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.s, ptr %.04.i.i.i, align 4, !tbaa !20, !noalias !128
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.f, !llvm.loop !107

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.f
  %.not.i.i130 = icmp eq i32 %.sroa.13.0244, 1
  br i1 %.not.i.i130, label %bb.g, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i131

bb.g:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.u = invoke noalias noundef nonnull dereferenceable(28) ptr @_Znam(i64 noundef 28) #19
          to label %.lr.ph.i.i.i144.preheader unwind label %_ZN11CStringBaseIwED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i144.preheader:                        ; preds = %bb.g
  %i.v = load i32, ptr %i.q, align 4, !tbaa !20
  store i32 %i.v, ptr %i.u, align 4, !tbaa !20
  call void @_ZdaPv(ptr noundef nonnull %i.q) #20
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !20
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i131

_ZN11CStringBaseIwE10GrowLengthEi.exit.i131:      ; preds = %.lr.ph.i.i.i144.preheader, %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.sroa.0184.1 = phi ptr [ %i.q, %_ZN11CStringBaseIwEC2ERKS0_.exit.i ], [ %i.u, %.lr.ph.i.i.i144.preheader ] ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i131
  %.sroa.0184.1.pn = phi ptr [ %.sroa.0184.1, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i131 ], [ %.04.i.i132, %bb.h ]
  %.0.i4.i133 = phi ptr [ %.sroa.0196.0243, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i131 ], [ %i.x, %bb.h ] ; 2 uses
  %.04.i.i132 = getelementptr inbounds nuw i8, ptr %.sroa.0184.1.pn, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i4.i133, i64 4
  %i.y = load i32, ptr %.0.i4.i133, align 4, !tbaa !20 ; 2 uses
  store i32 %i.y, ptr %.04.i.i132, align 4, !tbaa !20
  %.not.i5.i134 = icmp eq i32 %i.y, 0
  br i1 %.not.i5.i134, label %bb.i, label %bb.h, !llvm.loop !107

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  call void @_ZdaPv(ptr noundef nonnull %i.q) #20
  br label %_ZN11CStringBaseIwED2Ev.exit62

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %.sroa.13.0244, 1           ; 2 uses
  store i32 0, ptr %.sroa.0196.0243, align 4, !tbaa !20
  %i.ab = add nsw i32 %.sroa.13.0244, 2           ; 3 uses
  %i.ac = icmp eq i32 %i.ab, %.sroa.25.0245
  br i1 %i.ac, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i45, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = icmp slt i32 %.sroa.13.0244, -2
  %i.af = shl nuw nsw i64 %i.ad, 2
  %i.ag = select i1 %i.ae, i64 -1, i64 %i.af
  %i.ah = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #19
          to label %.noexc59 unwind label %_ZN11CStringBaseIwED2Ev.exit61 ; 2 uses

.noexc59:                                         ; preds = %bb.j
  %i.ai = icmp sgt i32 %.sroa.25.0245, 0
  br i1 %i.ai, label %._crit_edge.thread.i.i52, label %bb.k

._crit_edge.thread.i.i52:                         ; preds = %.noexc59
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0196.0243) #20
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i52, %.noexc59
  store i32 0, ptr %i.ah, align 4, !tbaa !20
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i45

_ZN11CStringBaseIwE11SetCapacityEi.exit.i45:      ; preds = %bb.k, %bb.i
  %.sroa.0196.2 = phi ptr [ %.sroa.0196.0243, %bb.i ], [ %i.ah, %bb.k ] ; 3 uses
  %.sroa.25.2 = phi i32 [ %.sroa.25.0245, %bb.i ], [ %i.ab, %bb.k ]
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i45
  %.04.i.i46 = phi ptr [ %.sroa.0196.2, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i45 ], [ %i.al, %bb.l ] ; 2 uses
  %.0.i.i47 = phi ptr [ %.sroa.0184.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i45 ], [ %i.aj, %bb.l ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 4
  %i.ak = load i32, ptr %.0.i.i47, align 4, !tbaa !20 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.04.i.i46, i64 4
  store i32 %i.ak, ptr %.04.i.i46, align 4, !tbaa !20
  %.not.i.i48 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i48, label %_ZN11CStringBaseIwED2Ev.exit60, label %bb.l, !llvm.loop !107

_ZN11CStringBaseIwED2Ev.exit60:                   ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0184.1) #20
  call void @_ZdaPv(ptr noundef nonnull %i.o) #20
  %exitcond.not = icmp eq i32 %i.aa, 2
  br i1 %exitcond.not, label %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge, label %.lr.ph, !llvm.loop !110

bb.m:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit129

bb.n:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit129

bb.o:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit128

bb.p:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit62

_ZN11CStringBaseIwED2Ev.exit61:                   ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0184.1) #20
  br label %_ZN11CStringBaseIwED2Ev.exit62

_ZN11CStringBaseIwED2Ev.exit62:                   ; preds = %bb.p, %_ZN11CStringBaseIwED2Ev.exit.i, %_ZN11CStringBaseIwED2Ev.exit61
  %.pn26 = phi { ptr, i32 } [ %i.aq, %_ZN11CStringBaseIwED2Ev.exit61 ], [ %i.ap, %bb.p ], [ %i.z, %_ZN11CStringBaseIwED2Ev.exit.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.o) #20
  br label %_ZN11CStringBaseIwED2Ev.exit128

_ZN11CStringBaseIwEC2EPKw.exit._crit_edge:        ; preds = %_ZN11CStringBaseIwED2Ev.exit60, %_ZN11CStringBaseIwEC2EPKw.exit.preheader
  %.sroa.0196.0.lcssa = phi ptr [ %.sroa.0196.1, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ], [ %.sroa.0196.2, %_ZN11CStringBaseIwED2Ev.exit60 ] ; 6 uses
  %.sroa.13.0.lcssa = phi i32 [ %i.c, %_ZN11CStringBaseIwEC2EPKw.exit.preheader ], [ 2, %_ZN11CStringBaseIwED2Ev.exit60 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !17 ; 7 uses
  %i.au = add nsw i32 %i.at, 1                    ; 6 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64, label %bb.q

bb.q:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = icmp slt i32 %i.at, -1
  %i.ay = shl nuw nsw i64 %i.aw, 2
  %i.az = select i1 %i.ax, i64 -1, i64 %i.ay
  %i.ba = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.az) #19
          to label %.noexc78 unwind label %bb.ai  ; 2 uses

.noexc78:                                         ; preds = %bb.q
  store i32 0, ptr %i.ba, align 4, !tbaa !20
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64

_ZN11CStringBaseIwE11SetCapacityEi.exit.i64:      ; preds = %.noexc78, %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge
  %.sroa.0153.2 = phi ptr [ null, %_ZN11CStringBaseIwEC2EPKw.exit._crit_edge ], [ %i.ba, %.noexc78 ] ; 8 uses
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64
  %.04.i.i65 = phi ptr [ %.sroa.0153.2, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64 ], [ %i.be, %bb.r ] ; 2 uses
  %.0.i.i66 = phi ptr [ %i.bb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64 ], [ %i.bc, %bb.r ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 4
  %i.bd = load i32, ptr %.0.i.i66, align 4, !tbaa !20 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04.i.i65, i64 4
  store i32 %i.bd, ptr %.04.i.i65, align 4, !tbaa !20
  %.not.i.i67 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i67, label %bb.s, label %bb.r, !llvm.loop !107

bb.s:                                             ; preds = %bb.r
  %i.bf = load i32, ptr %i.as, align 8, !tbaa !17 ; 8 uses
  %i.bg = sub i32 %i.at, %i.bf                    ; 3 uses
  %.not.i.i79 = icmp slt i32 %i.bg, 1
  br i1 %.not.i.i79, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bh = icmp sgt i32 %i.at, 63
  %i.bi = lshr i32 %i.au, 1
  %i.bj = icmp sgt i32 %i.at, 7
  %..i.i = select i1 %i.bj, i32 16, i32 4
  %.0.i.i80 = select i1 %i.bh, i32 %i.bi, i32 %..i.i ; 2 uses
  %i.bk = add nsw i32 %i.bg, %.0.i.i80
  %i.bl = icmp slt i32 %i.bk, 1
  %i.bm = sub nsw i32 1, %i.bg
  %.1.i.i = select i1 %i.bl, i32 %i.bm, i32 %.0.i.i80
  %i.bn = add nsw i32 %.1.i.i, %i.au              ; 3 uses
  %i.bo = add nsw i32 %i.bn, 1                    ; 2 uses
  %i.bp = icmp eq i32 %i.bn, %i.at
  br i1 %i.bp, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = zext nneg i32 %i.bo to i64
  %i.br = icmp slt i32 %i.bn, -1
  %i.bs = shl nuw nsw i64 %i.bq, 2
  %i.bt = select i1 %i.br, i64 -1, i64 %i.bs
  %i.bu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #19
          to label %.noexc82 unwind label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit ; 3 uses

.noexc82:                                         ; preds = %bb.u
  %i.bv = icmp sgt i32 %i.at, -1
  br i1 %i.bv, label %.preheader.i.i.i, label %bb.v

.preheader.i.i.i:                                 ; preds = %.noexc82
  %i.bw = icmp sgt i32 %i.bf, 0
  br i1 %i.bw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.bf to i64
end_hunk_0
begin_hunk_1_@_ZeqRK4GUIDS1_:bb.a
  br i1 %.not.11, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.av = load i8, ptr %i.au, align 4, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !69
  %.not.12 = icmp eq i8 %i.av, %i.ax
  br i1 %.not.12, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !69
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !69
  %.not.13 = icmp eq i8 %i.az, %i.bb
  br i1 %.not.13, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !69
  %.not.14 = icmp eq i8 %i.bd, %i.bf
  br i1 %.not.14, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !69
  %.not.15 = icmp eq i8 %i.bh, %i.bj
  %spec.select = zext i1 %.not.15 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bk = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.b ], [ %spec.select, %bb.p ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.o ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.g ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %bb.m ]
  ret i32 %i.bk
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIyED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #20
  ret void
}

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noreturn }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"_ZTS13CMyUnknownImp", !6, i64 0}
!9 = !{!8, !6, i64 0}
!10 = !{!"vtable pointer", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTS17CBaseRecordVector", !6, i64 8, !6, i64 12, !12, i64 16, !13, i64 24}
!15 = !{!"p1 wchar_t", !12, i64 0}
!16 = !{!"_ZTS11CStringBaseIwE", !15, i64 0, !6, i64 8, !6, i64 12}
!17 = !{!16, !6, i64 8}
!18 = !{!16, !15, i64 0}
!19 = !{!"wchar_t", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"_ZTS8IUnknown"}
!26 = !{!"_ZTS9IProgress", !25, i64 0}
!27 = !{!"_ZTS22IArchiveUpdateCallback", !26, i64 0}
!28 = !{!"_ZTS23IArchiveUpdateCallback2", !27, i64 0}
!29 = !{!"_ZTS23ICryptoGetTextPassword2", !25, i64 0}
!30 = !{!"_ZTS22ICryptoGetTextPassword", !25, i64 0}
!31 = !{!"_ZTS21ICompressProgressInfo", !25, i64 0}
!32 = !{!"_ZTS13CRecordVectorIyE", !14, i64 0}
!33 = !{!"p1 _ZTS17IUpdateCallbackUI", !12, i64 0}
!34 = !{!"bool", !5, i64 0}
!35 = !{!"p1 _ZTS9CDirItems", !12, i64 0}
!36 = !{!"p1 _ZTS13CObjectVectorI8CArcItemE", !12, i64 0}
!37 = !{!"p1 _ZTS13CRecordVectorI12CUpdatePair2E", !12, i64 0}
!38 = !{!"p1 _ZTS13CObjectVectorI11CStringBaseIwEE", !12, i64 0}
!39 = !{!"p1 _ZTS10IInArchive", !12, i64 0}
!40 = !{!"_ZTS9CMyComPtrI10IInArchiveE", !39, i64 0}
!41 = !{!"_ZTS22CArchiveUpdateCallback", !28, i64 0, !29, i64 8, !30, i64 16, !31, i64 24, !8, i64 32, !32, i64 40, !16, i64 72, !16, i64 88, !33, i64 104, !34, i64 112, !34, i64 113, !35, i64 120, !36, i64 128, !37, i64 136, !38, i64 144, !40, i64 152}
!42 = !{!41, !33, i64 104}
!43 = !{!41, !34, i64 112}
!44 = !{!41, !34, i64 113}
!45 = !{!"p1 omnipotent char", !12, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!41, !37, i64 136}
!48 = !{!14, !12, i64 16}
!49 = !{!"_ZTS12CUpdatePair2", !34, i64 0, !34, i64 1, !34, i64 2, !6, i64 4, !6, i64 8, !6, i64 12}
!50 = !{!49, !34, i64 0}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!49, !6, i64 8}
!54 = !{!41, !36, i64 128}
!55 = !{!12, !12, i64 0}
!56 = !{!49, !34, i64 2}
!57 = !{!49, !6, i64 4}
!58 = !{!41, !35, i64 120}
!59 = !{!"long long", !5, i64 0}
!60 = !{!"_ZTS9_FILETIME", !6, i64 0, !6, i64 4}
!61 = !{!"_ZTS8CDirItem", !59, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !16, i64 32, !6, i64 48, !6, i64 52, !6, i64 56}
!62 = !{!61, !6, i64 48}
!63 = !{!40, !39, i64 0}
!64 = !{!"_ZTS11CStringBaseIcE", !45, i64 0, !6, i64 8, !6, i64 12}
!65 = !{!"_ZTSN8NWindows5NFile3NIO9CFileBaseE", !6, i64 8, !64, i64 16, !13, i64 32, !13, i64 40, !6, i64 48, !5, i64 52, !6, i64 1080}
!66 = !{!65, !6, i64 8}
!67 = !{!64, !6, i64 12}
!68 = !{!64, !45, i64 0}
!69 = !{!5, !5, i64 0}
!70 = !{ptr @_ZN22CArchiveUpdateCallbackD2Ev}
!71 = !{ptr @_ZN22CArchiveUpdateCallback7ReleaseEv}
!72 = !{ptr @_ZN22CArchiveUpdateCallbackD0Ev, ptr @_ZN22CArchiveUpdateCallbackD2Ev}
!73 = !{ptr @_ZN22CArchiveUpdateCallbackD0Ev}
!74 = distinct !{!74, !21, !22, !23}
!75 = distinct !{!75, !24}
!76 = distinct !{!76, !21, !22}
!77 = distinct !{!77, !21, !22, !23}
!78 = distinct !{!78, !24}
!79 = distinct !{!79, !21, !22}
!80 = !{!14, !13, i64 24}
!81 = !{!16, !6, i64 12}
!82 = !{!49, !34, i64 1}
!83 = !{!"short", !5, i64 0}
!84 = !{!"_ZTS14tagPROPVARIANT", !83, i64 0, !83, i64 2, !83, i64 4, !83, i64 6, !5, i64 8}
!85 = !{!84, !83, i64 0}
!86 = !{!84, !83, i64 2}
!87 = !{!61, !59, i64 0}
!88 = !{!49, !6, i64 12}
!89 = !{!41, !38, i64 144}
!90 = distinct !{null}
!91 = !{!"p1 _ZTS19ISequentialInStream", !12, i64 0}
!92 = !{!91, !91, i64 0}
!93 = distinct !{!93, !21, !22, !23}
!94 = distinct !{!94, !21, !22, !23}
!95 = distinct !{!95, !24}
!96 = distinct !{!96, !21, !22}
!97 = !{!64, !6, i64 8}
!98 = !{!"branch_weights", i32 4, i32 28}
!99 = !{!"_ZTS19ISequentialInStream", !25, i64 0}
!100 = !{!"_ZTS9IInStream", !99, i64 0}
!101 = !{!"_ZTS14IStreamGetSize", !25, i64 0}
!102 = !{!"_ZTSN8NWindows5NFile3NIO7CInFileE", !65, i64 0}
!103 = !{!"_ZTS13CInFileStream", !100, i64 0, !101, i64 8, !8, i64 16, !34, i64 20, !102, i64 24}
!104 = !{!103, !34, i64 20}
!105 = !{!14, !6, i64 12}
!106 = !{!59, !59, i64 0}
!107 = distinct !{!107, !21}
!110 = distinct !{!110, !21}
!111 = distinct !{!111, !21, !22, !23}
!112 = distinct !{!112, !24}
!113 = distinct !{!113, !21, !22}
!114 = distinct !{!114, !21, !22, !23}
!115 = distinct !{!115, !24}
!116 = distinct !{!116, !21, !22}
!117 = distinct !{null}
!119 = !{!"_ZTS20ISequentialOutStream", !25, i64 0}
!120 = !{!"_ZTS10IOutStream", !119, i64 0}
!121 = !{!"_ZTSN8NWindows5NFile3NIO8COutFileE", !65, i64 0}
!122 = !{!"_ZTS14COutFileStream", !120, i64 0, !8, i64 8, !121, i64 16, !59, i64 1104}
!123 = !{!122, !59, i64 1104}
!124 = !{!"p1 _ZTS20ISequentialOutStream", !12, i64 0}
!125 = !{!124, !124, i64 0}
!126 = distinct !{!126, i1 false, !"_ZplIwE11CStringBaseIT_ERKS2_S4_"}
!127 = distinct !{!127, !126, !"_ZplIwE11CStringBaseIT_ERKS2_S4_: argument 0"}
!128 = !{!127}
end_hunk_1
