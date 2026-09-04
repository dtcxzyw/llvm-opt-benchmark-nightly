Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHullComputer?download=true
inline.NumInlined: 665
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN20btConvexHullComputer7computeEPKvbiiff:bb.a
bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit:                                        ; preds = %bb.ch, %.preheader
  %i.qs = load ptr, ptr %.063, align 8, !tbaa !40 ; 2 uses
  %.not90 = icmp eq ptr %i.qs, %i.op
  br i1 %.not90, label %.loopexit264, label %.preheader, !llvm.loop !273

.loopexit264:                                     ; preds = %.loopexit, %bb.cb
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1
  %exitcond.not = icmp eq i64 %indvars.iv283, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge, label %bb.cb, !llvm.loop !274

bb.cj:                                            ; preds = %bb.ci, %bb.br, %bb.bs, %bb.bt, %bb.bq, %bb.bp, %bb.bo
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ni, %bb.bo ], [ %i.qr, %bb.ci ], [ %i.nk, %bb.bq ], [ %i.nj, %bb.bp ], [ %i.nn, %bb.bt ], [ %i.nm, %bb.bs ], [ %i.nl, %bb.br ]
  call void @_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.cl

bb.ck:                                            ; preds = %_ZN20btAlignedObjectArrayIiE5clearEv.exit115, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEED2Ev.exit
  %.079 = phi float [ %.069, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEED2Ev.exit ], [ %i.ah, %_ZN20btAlignedObjectArrayIiE5clearEv.exit115 ]
  call void @_ZN20btConvexHullInternalD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.cm

bb.cl:                                            ; preds = %bb.q, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.cj, %bb.p
  %.pn98.pn = phi { ptr, i32 } [ %i.be, %bb.p ], [ %i.bf, %bb.q ], [ %.pn.pn.pn.pn, %bb.cj ], [ %i.nh, %bb.bn ], [ %i.ng, %bb.bm ], [ %i.nf, %bb.bl ], [ %i.ne, %bb.bk ]
  call void @_ZN20btConvexHullInternalD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn98.pn

bb.cm:                                            ; preds = %bb.ck, %_ZN20btAlignedObjectArrayIiE5clearEv.exit
  %.180 = phi float [ 0.000000e+00, %_ZN20btAlignedObjectArrayIiE5clearEv.exit ], [ %.079, %bb.ck ]
  ret float %.180
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btConvexHullInternalD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i8, ptr %i.c, align 8, !range !22
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN20btConvexHullInternal9PoolArrayINS_4FaceEED2Ev.exit.i, %_ZN20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEED2Ev.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117  ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN20btConvexHullInternal4PoolINS_4FaceEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  store ptr %i.k, ptr %i.h, align 8, !tbaa !117
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !115
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef %i.l)
          to label %_ZN20btConvexHullInternal9PoolArrayINS_4FaceEED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #20
  unreachable

_ZN20btConvexHullInternal9PoolArrayINS_4FaceEED2Ev.exit.i: ; preds = %bb.e
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %bb.d unwind label %bb.g, !llvm.loop !302

bb.g:                                             ; preds = %_ZN20btConvexHullInternal9PoolArrayINS_4FaceEED2Ev.exit.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #20
  unreachable

_ZN20btConvexHullInternal4PoolINS_4FaceEED2Ev.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN20btConvexHullInternal9PoolArrayINS_4EdgeEED2Ev.exit.i, %_ZN20btConvexHullInternal4PoolINS_4FaceEED2Ev.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 4 uses
  %.not.i1 = icmp eq ptr %i.r, null
  br i1 %.not.i1, label %_ZN20btConvexHullInternal4PoolINS_4EdgeEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  store ptr %i.t, ptr %i.q, align 8, !tbaa !36
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !34
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef %i.u)
          to label %_ZN20btConvexHullInternal9PoolArrayINS_4EdgeEED2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

_ZN20btConvexHullInternal9PoolArrayINS_4EdgeEED2Ev.exit.i: ; preds = %bb.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.r)
          to label %bb.h unwind label %bb.k, !llvm.loop !303

bb.k:                                             ; preds = %_ZN20btConvexHullInternal9PoolArrayINS_4EdgeEED2Ev.exit.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #20
  unreachable

_ZN20btConvexHullInternal4PoolINS_4EdgeEED2Ev.exit: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN20btConvexHullInternal9PoolArrayINS_6VertexEED2Ev.exit.i, %_ZN20btConvexHullInternal4PoolINS_4EdgeEED2Ev.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 4 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZN20btConvexHullInternal4PoolINS_6VertexEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !107
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !97
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !108
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef %i.ad)
          to label %_ZN20btConvexHullInternal9PoolArrayINS_6VertexEED2Ev.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #20
  unreachable

_ZN20btConvexHullInternal9PoolArrayINS_6VertexEED2Ev.exit.i: ; preds = %bb.m
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aa)
          to label %bb.l unwind label %bb.o, !llvm.loop !304

bb.o:                                             ; preds = %_ZN20btConvexHullInternal9PoolArrayINS_6VertexEED2Ev.exit.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #20
  unreachable

_ZN20btConvexHullInternal4PoolINS_6VertexEED2Ev.exit: ; preds = %bb.l
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIN20btConvexHullInternal7Point32EE17quickSortInternalI8pointCmpEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.n, %bb.a
  %.tr41 = phi i32 [ %2, %bb.a ], [ %.230, %bb.n ] ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = add nsw i32 %.tr41, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.f, align 4, !tbaa !80 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !80 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !80 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %tailrecurse
  %.028 = phi i32 [ %.tr41, %tailrecurse ], [ %.230, %bb.l ]
  %.0 = phi i32 [ %3, %tailrecurse ], [ %.2, %bb.l ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.h = sext i32 %.028 to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit.thread, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit.thread ], [ %i.h, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %indvars.iv ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !76   ; 2 uses
  %i.l = icmp slt i32 %i.k, %.sroa.5.0.copyload
  br i1 %i.l, label %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %i.k, %.sroa.5.0.copyload
  br i1 %i.m, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.i, align 4, !tbaa !75   ; 2 uses
  %i.o = icmp slt i32 %i.n, %.sroa.0.0.copyload
  br i1 %i.o, label %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.n, %.sroa.0.0.copyload
  br i1 %i.p, label %.split, label %.preheader

.split:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %i.s = icmp slt i32 %i.r, %.sroa.7.0.copyload
  br i1 %i.s, label %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit.thread, label %.preheader

.preheader:                                       ; preds = %.split, %bb.f, %bb.d
  %i.t = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.u = sext i32 %.0 to i64
  br label %bb.g

_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit.thread: ; preds = %bb.e, %bb.c, %.split
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %bb.c, !llvm.loop !305

bb.g:                                             ; preds = %.preheader, %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread
  %indvars.iv53 = phi i64 [ %i.u, %.preheader ], [ %indvars.iv.next54, %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread ] ; 5 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %i.g, i64 %indvars.iv53 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !76   ; 2 uses
  %i.y = icmp slt i32 %.sroa.5.0.copyload, %i.x
  br i1 %i.y, label %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = icmp eq i32 %.sroa.5.0.copyload, %i.x
  br i1 %i.z, label %bb.i, label %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread39

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !75  ; 2 uses
  %i.ab = icmp slt i32 %.sroa.0.0.copyload, %i.aa
  br i1 %i.ab, label %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i32 %.sroa.0.0.copyload, %i.aa
  br i1 %i.ac, label %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34, label %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread39

_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34: ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !77
  %i.af = icmp slt i32 %.sroa.7.0.copyload, %i.ae
  br i1 %i.af, label %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread, label %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread39

_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread: ; preds = %bb.i, %bb.g, %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, -1
  br label %bb.g, !llvm.loop !306

_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread39: ; preds = %bb.h, %bb.j, %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34
  %i.ag = trunc nsw i64 %indvars.iv53 to i32      ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv53
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread39
  %.sroa.0.0.copyload70 = load <4 x i32>, ptr %i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !96
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %indvars.iv53
  store <4 x i32> %.sroa.0.0.copyload70, ptr %i.ai, align 4
  %i.aj = add nsw i32 %i.t, 1
  %i.ak = add nsw i32 %i.ag, -1
  br label %bb.l

bb.l:                                             ; preds = %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread39, %bb.k
  %.230 = phi i32 [ %i.aj, %bb.k ], [ %i.t, %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread39 ] ; 4 uses
  %.2 = phi i32 [ %i.ak, %bb.k ], [ %i.ag, %_ZNK8pointCmpclERKN20btConvexHullInternal7Point32ES3_.exit34.thread39 ] ; 4 uses
  %.not33 = icmp sgt i32 %.230, %.2
  br i1 %.not33, label %4, label %bb.b, !llvm.loop !307

4:                                                ; preds = %bb.l
  %5 = icmp slt i32 %.tr41, %.2
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %4
  tail call void @_ZN20btAlignedObjectArrayIN20btConvexHullInternal7Point32EE17quickSortInternalI8pointCmpEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.tr41, i32 noundef %.2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %4
  %i.al = icmp slt i32 %.230, %3
  br i1 %i.al, label %tailrecurse, label %bb.o

bb.o:                                             ; preds = %bb.n
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !41}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!"_ZTSN20btConvexHullInternal6Int128E", !10, i64 0, !10, i64 8}
!12 = !{!11, !10, i64 8}
!13 = !{!10, !10, i64 0}
!14 = !{!"_ZTSN20btConvexHullInternal10Rational64E", !10, i64 0, !10, i64 8, !7, i64 16}
!15 = !{!14, !7, i64 16}
!16 = !{!14, !10, i64 0}
!17 = !{!14, !10, i64 8}
!18 = !{!"bool", !6, i64 0}
!19 = !{!"_ZTSN20btConvexHullInternal11Rational128E", !11, i64 0, !11, i64 16, !7, i64 32, !18, i64 36}
!20 = !{!19, !7, i64 32}
!21 = !{!19, !18, i64 36}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!19, !10, i64 0}
!25 = !{!11, !10, i64 0}
!26 = !{!"any pointer", !6, i64 0}
!27 = !{!"p1 _ZTSN20btConvexHullInternal9PoolArrayINS_4EdgeEEE", !26, i64 0}
!28 = !{!"p1 _ZTSN20btConvexHullInternal4EdgeE", !26, i64 0}
!29 = !{!"_ZTSN20btConvexHullInternal4PoolINS_4EdgeEEE", !27, i64 0, !27, i64 8, !28, i64 16, !7, i64 24}
!30 = !{!29, !28, i64 16}
!31 = !{!29, !27, i64 8}
!32 = !{!"_ZTSN20btConvexHullInternal9PoolArrayINS_4EdgeEEE", !28, i64 0, !7, i64 8, !27, i64 16}
!33 = !{!32, !27, i64 16}
!34 = !{!32, !28, i64 0}
!35 = !{!29, !7, i64 24}
!36 = !{!29, !27, i64 0}
!37 = !{!"p1 _ZTSN20btConvexHullInternal6VertexE", !26, i64 0}
!38 = !{!"p1 _ZTSN20btConvexHullInternal4FaceE", !26, i64 0}
!39 = !{!"_ZTSN20btConvexHullInternal4EdgeE", !28, i64 0, !28, i64 8, !28, i64 16, !37, i64 24, !38, i64 32, !7, i64 40}
!40 = !{!39, !28, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!39, !28, i64 16}
!44 = !{!"_ZTS9btVector3", !6, i64 0}
!45 = !{!"p1 _ZTSN20btConvexHullInternal9PoolArrayINS_6VertexEEE", !26, i64 0}
!46 = !{!"_ZTSN20btConvexHullInternal4PoolINS_6VertexEEE", !45, i64 0, !45, i64 8, !37, i64 16, !7, i64 24}
!47 = !{!"p1 _ZTSN20btConvexHullInternal9PoolArrayINS_4FaceEEE", !26, i64 0}
!48 = !{!"_ZTSN20btConvexHullInternal4PoolINS_4FaceEEE", !47, i64 0, !47, i64 8, !38, i64 16, !7, i64 24}
!49 = !{!"_ZTS18btAlignedAllocatorIPN20btConvexHullInternal6VertexELj16EE"}
!50 = !{!"any p2 pointer", !26, i64 0}
!51 = !{!"p2 _ZTSN20btConvexHullInternal6VertexE", !50, i64 0}
!52 = !{!"_ZTS20btAlignedObjectArrayIPN20btConvexHullInternal6VertexEE", !49, i64 0, !7, i64 4, !7, i64 8, !51, i64 16, !18, i64 24}
!53 = !{!"_ZTS20btConvexHullInternal", !44, i64 0, !44, i64 16, !46, i64 32, !29, i64 64, !48, i64 96, !52, i64 128, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !37, i64 184}
!54 = !{!53, !7, i64 160}
!55 = !{!39, !7, i64 40}
!56 = !{!39, !37, i64 24}
!57 = !{!39, !38, i64 32}
!58 = !{!53, !7, i64 176}
!59 = !{!53, !7, i64 180}
!60 = !{!"_ZTSN20btConvexHullInternal16IntermediateHullE", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!61 = !{!60, !37, i64 24}
!62 = !{!60, !37, i64 16}
!63 = !{!"_ZTSN20btConvexHullInternal9PointR128E", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48}
!64 = !{!"_ZTSN20btConvexHullInternal7Point32E", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!65 = !{!"_ZTSN20btConvexHullInternal6VertexE", !37, i64 0, !37, i64 8, !28, i64 16, !38, i64 24, !38, i64 32, !63, i64 40, !64, i64 104, !7, i64 120}
!66 = !{!65, !7, i64 104}
!67 = !{!65, !7, i64 108}
!68 = !{!65, !37, i64 8}
!69 = !{!37, !37, i64 0}
!70 = !{!65, !28, i64 16}
!71 = !{!65, !37, i64 0}
!72 = !{!60, !37, i64 0}
!73 = !{!60, !37, i64 8}
!74 = !{!52, !51, i64 16}
!75 = !{!64, !7, i64 0}
!76 = !{!64, !7, i64 4}
!77 = !{!64, !7, i64 8}
!78 = !{!65, !7, i64 112}
!79 = !{!39, !28, i64 8}
!80 = !{!7, !7, i64 0}
!81 = !{!28, !28, i64 0}
!82 = !{!"_ZTSN20btConvexHullInternal7Point64E", !10, i64 0, !10, i64 8, !10, i64 16}
!83 = !{!82, !10, i64 0}
!84 = !{!82, !10, i64 8}
!85 = !{!82, !10, i64 16}
!86 = !{!"float", !6, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!53, !7, i64 172}
!89 = !{!53, !7, i64 164}
!90 = !{!53, !7, i64 168}
!91 = !{!6, !6, i64 0}
!92 = !{!"_ZTS18btAlignedAllocatorIN20btConvexHullInternal7Point32ELj16EE"}
!93 = !{!"p1 _ZTSN20btConvexHullInternal7Point32E", !26, i64 0}
!94 = !{!"_ZTS20btAlignedObjectArrayIN20btConvexHullInternal7Point32EE", !92, i64 0, !7, i64 4, !7, i64 8, !93, i64 16, !18, i64 24}
!95 = !{!94, !93, i64 16}
!96 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !80, i64 12, i64 4, !80}
!97 = !{!46, !45, i64 0}
!98 = !{!46, !45, i64 8}
!99 = !{!46, !37, i64 16}
!100 = !{!46, !7, i64 24}
!101 = !{!52, !7, i64 4}
!102 = !{!52, !7, i64 8}
!103 = !{!"llvm.loop.isvectorized", i32 1}
!104 = !{!"llvm.loop.unroll.runtime.disable"}
!105 = !{!52, !18, i64 24}
!106 = !{!"_ZTSN20btConvexHullInternal9PoolArrayINS_6VertexEEE", !37, i64 0, !7, i64 8, !45, i64 16}
!107 = !{!106, !45, i64 16}
!108 = !{!106, !37, i64 0}
!109 = !{!106, !7, i64 8}
!110 = !{!65, !7, i64 120}
!111 = !{!53, !37, i64 184}
!112 = !{!65, !7, i64 116}
!113 = !{!"_ZTSN20btConvexHullInternal9PoolArrayINS_4FaceEEE", !38, i64 0, !7, i64 8, !47, i64 16}
!114 = !{!113, !47, i64 16}
!115 = !{!113, !38, i64 0}
!116 = !{!48, !7, i64 24}
!117 = !{!48, !47, i64 0}
!118 = !{!"_ZTSN20btConvexHullInternal4FaceE", !38, i64 0, !37, i64 8, !38, i64 16, !64, i64 24, !64, i64 40, !64, i64 56}
!119 = !{!118, !37, i64 8}
!120 = !{!65, !38, i64 32}
!121 = !{!118, !38, i64 16}
!122 = !{!65, !38, i64 24}
!123 = !{!38, !38, i64 0}
!124 = distinct !{!124, !41}
!125 = distinct !{!125, !42}
!126 = distinct !{!126, !42}
!127 = !{!32, !7, i64 8}
!128 = distinct !{!128, !41}
!129 = distinct !{!129, !41}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = distinct !{!133, !41}
!134 = distinct !{!134, !41}
!135 = distinct !{!135, !"_ZNK20btConvexHullInternal7Point325crossERKS0_"}
!136 = distinct !{!136, !135, !"_ZNK20btConvexHullInternal7Point325crossERKS0_: argument 0"}
!137 = distinct !{!137, !"_ZNK20btConvexHullInternal7Point325crossERKNS_7Point64E"}
!138 = distinct !{!138, !137, !"_ZNK20btConvexHullInternal7Point325crossERKNS_7Point64E: argument 0"}
!139 = distinct !{!139, !41}
!140 = distinct !{!140, !41}
!141 = distinct !{!141, !41}
!142 = distinct !{!142, !41}
!143 = distinct !{!143, !41}
!144 = !{i64 0, i64 8, !69, i64 8, i64 8, !69, i64 16, i64 8, !69, i64 24, i64 8, !69}
!145 = !{!136}
!146 = !{!138}
!147 = distinct !{!147, !"_ZNK20btConvexHullInternal7Point325crossERKS0_"}
!148 = distinct !{!148, !147, !"_ZNK20btConvexHullInternal7Point325crossERKS0_: argument 0"}
!149 = !{!148}
end_hunk_0
