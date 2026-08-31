Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCompoundShape?download=true
inline.NumInlined: 362
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN15btCompoundShapeD2Ev:bb.a
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #13
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6btDbvtD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #4

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN15btCompoundShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV15btCompoundShape, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6btDbvtD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #12, !inline_history !38
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !26
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef %i.c)
          to label %bb.c unwind label %bb.f, !inline_history !38

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i8, ptr %i.f, align 8, !range !36
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.h, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZN15btCompoundShapeD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.e)
          to label %_ZN15btCompoundShapeD2Ev.exit unwind label %bb.e, !inline_history !38

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #13, !inline_history !38
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #13, !inline_history !38
  unreachable

_ZN15btCompoundShapeD2Ev.exit:                    ; preds = %bb.c, %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN15btCompoundShapedlEPv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN15btCompoundShapeD2Ev.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #13
  unreachable

_ZN15btCompoundShapedlEPv.exit:                   ; preds = %_ZN15btCompoundShapeD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15btCompoundShape13addChildShapeERK11btTransformP16btCollisionShape(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca %class.btTransform, align 8   ; 7 uses
  %3 = alloca %class.btVector3, align 4           ; 7 uses
  %4 = alloca %class.btVector3, align 4           ; 7 uses
  %5 = alloca %struct.btDbvtAabbMm, align 4       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.16..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.32..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31
  %i.i = load ptr, ptr %2, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.m = load ptr, ptr %2, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load float, ptr %i.p, align 8, !tbaa !24
  %i.s = load float, ptr %3, align 4, !tbaa !24   ; 2 uses
  %i.t = fcmp ogt float %i.r, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.s, ptr %i.p, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = load float, ptr %i.q, align 8, !tbaa !24
  %i.v = load float, ptr %4, align 4, !tbaa !24   ; 2 uses
  %i.w = fcmp olt float %i.u, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.v, ptr %i.q, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !24 ; 2 uses
  %i.ab = fcmp ogt float %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.aa, ptr %i.x, align 4, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !24 ; 2 uses
  %i.ag = fcmp olt float %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.af, ptr %i.ac, align 4, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !24 ; 2 uses
  %i.al = fcmp ogt float %i.ai, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.ak, ptr %i.ah, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !24 ; 2 uses
  %i.aq = fcmp olt float %i.an, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.ap, ptr %i.am, align 8, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26 ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !32
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !22
  %i.aw = sext i32 %i.av to i64
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = call noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef %i.ax)
  %6 = ptrtoint ptr %i.ay to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.14.0 = phi i64 [ 0, %bb.m ], [ %6, %bb.n ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !22 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !23
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.p, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE9push_backERKS0_.exit

bb.p:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i32 %i.ba, 0
  %i.be = shl nsw i32 %i.ba, 1
  %i.bf = select i1 %.not.i.i, i32 1, i32 %i.be   ; 4 uses
  %i.bg = icmp slt i32 %i.ba, %i.bf
  br i1 %i.bg, label %bb.q, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE9push_backERKS0_.exit

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE8allocateEi.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = sext i32 %i.bf to i64
  %i.bi = mul nsw i64 %i.bh, 88
  %i.bj = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bi, i32 noundef 16)
  %.pre.i = load i32, ptr %i.az, align 4, !tbaa !22
  br label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI20btCompoundShapeChildE8allocateEi.exit.i.i: ; preds = %bb.r, %bb.q
  %i.bk = phi i32 [ %.pre.i, %bb.r ], [ %i.ba, %bb.q ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.bj, %bb.r ], [ null, %bb.q ] ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE8allocateEi.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count.i.i.i = zext nneg i32 %i.bk to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.s ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i ; 5 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw [88 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bn, ptr noundef nonnull align 8 dereferenceable(88) %i.bp, i64 16, i1 false), !tbaa.struct !32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i, label %bb.s, !llvm.loop !34

_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i: ; preds = %bb.s, %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE8allocateEi.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !21 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !16, !range !36, !noundef !37
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i

bb.u:                                             ; preds = %bb.t
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bz)
  br label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i: ; preds = %bb.u, %bb.t, %_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.cd, align 8, !tbaa !16
  store ptr %.0.i.i.i, ptr %i.by, align 8, !tbaa !21
  store i32 %i.bf, ptr %i.bb, align 8, !tbaa !23
  %.pre4.i = load i32, ptr %i.az, align 4, !tbaa !22
  br label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI20btCompoundShapeChildE9push_backERKS0_.exit: ; preds = %bb.o, %bb.p, %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i
  %i.ce = phi i32 [ %i.ba, %bb.o ], [ %i.ba, %bb.p ], [ %.pre4.i, %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i ]
  %7 = ptrtoint ptr %2 to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !21
  %i.ch = sext i32 %i.ce to i64
  %i.ci = getelementptr inbounds [88 x i8], ptr %i.cg, i64 %i.ch ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.16..sroa_idx, i64 16, i1 false), !tbaa.struct !32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.32..sroa_idx, i64 16, i1 false), !tbaa.struct !32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.48..sroa_idx, i64 16, i1 false), !tbaa.struct !32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  store i64 %7, ptr %i.cm, align 8
  %.sroa.12.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  store i32 %i.h, ptr %.sroa.12.64..sroa_idx, align 8
  %.sroa.13.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 76
  store float %i.l, ptr %.sroa.13.64..sroa_idx, align 4
  %.sroa.14.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  store i64 %.sroa.14.0, ptr %.sroa.14.64..sroa_idx, align 8
  %i.cn = load i32, ptr %i.az, align 4, !tbaa !22
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.az, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

declare noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15btCompoundShape20updateChildTransformEiRK11btTransformb(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 4 uses
  %5 = alloca %class.btVector3, align 4           ; 4 uses
  %6 = alloca %struct.btDbvtAabbMm, align 4       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [88 x i8], ptr %i.b, i64 %i.c ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.n = getelementptr inbounds [88 x i8], ptr %i.m, i64 %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !32
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.w = getelementptr inbounds [88 x i8], ptr %i.v, i64 %i.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  call void @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15btCompoundShape23removeChildShapeByIndexEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.btCompoundShapeChild, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = sext i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [88 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.h, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22
  %i.n = add nsw i32 %i.m, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds [88 x i8], ptr %i.p, i64 %.pre-phi ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 16, i1 false), !tbaa.struct !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = sext i32 %i.n to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [88 x i8], ptr %i.p, i64 %i.z ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i64 16, i1 false), !tbaa.struct !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.ag = getelementptr inbounds [88 x i8], ptr %i.af, i64 %i.z ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 16, i1 false), !tbaa.struct !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !26
  %.not4 = icmp eq ptr %i.al, null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.an = getelementptr inbounds [88 x i8], ptr %i.am, i64 %.pre-phi
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i32 %1, ptr %i.aq, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = load i32, ptr %i.l, align 4, !tbaa !22
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.l, align 4, !tbaa !22
  ret void
}

declare void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15btCompoundShape16removeChildShapeEP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.btCompoundShapeChild, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.m = zext nneg i32 %i.e to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.q = phi i32 [ %i.e, %.lr.ph ], [ %i.be, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %i.r, i64 %indvars.iv.next ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.a, align 8, !tbaa !30
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.a, align 8, !tbaa !30
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef %i.aa)
  %.pre = load i32, ptr %i.d, align 4, !tbaa !22
  %.pre8 = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.d
  %i.ab = phi ptr [ %i.r, %bb.c ], [ %.pre8, %bb.d ] ; 2 uses
  %i.ac = phi i32 [ %i.q, %bb.c ], [ %.pre, %bb.d ]
  %i.ad = add nsw i32 %i.ac, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ae = getelementptr inbounds nuw [88 x i8], ptr %i.ab, i64 %indvars.iv.next ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.ae, i64 16, i1 false), !tbaa.struct !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.aj = sext i32 %i.ad to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [88 x i8], ptr %i.ab, i64 %i.aj ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ae, ptr noundef nonnull align 8 dereferenceable(88) %i.ak, i64 16, i1 false), !tbaa.struct !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.aq = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aj ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 16, i1 false), !tbaa.struct !32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !32
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !26
  %.not4.i = icmp eq ptr %i.av, null
  br i1 %.not4.i, label %_ZN15btCompoundShape23removeChildShapeByIndexEi.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [88 x i8], ptr %i.aw, i64 %indvars.iv.next
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bb, ptr %i.ba, align 8, !tbaa !33
  br label %_ZN15btCompoundShape23removeChildShapeByIndexEi.exit

_ZN15btCompoundShape23removeChildShapeByIndexEi.exit: ; preds = %._crit_edge.i, %bb.e
  %i.bc = load i32, ptr %i.d, align 4, !tbaa !22
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.d, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN15btCompoundShape23removeChildShapeByIndexEi.exit
  %i.be = phi i32 [ %i.q, %bb.b ], [ %i.bd, %_ZN15btCompoundShape23removeChildShapeByIndexEi.exit ]
  %i.bf = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bf, label %bb.b, label %._crit_edge, !llvm.loop !46
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15btCompoundShape20recalculateLocalAabbEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((64, 96)) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 6 uses
  %2 = alloca %class.btVector3, align 4           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store <4 x i32> <i32 1566444395, i32 1566444395, i32 1566444395, i32 0>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store <4 x i32> <i32 -581039253, i32 -581039253, i32 -581039253, i32 0>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.n, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 4 dereferenceable(64) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.v = load float, ptr %i.a, align 8, !tbaa !24
  %i.w = load float, ptr %1, align 4, !tbaa !24   ; 2 uses
  %i.x = fcmp ogt float %i.v, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.w, ptr %i.a, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = load float, ptr %i.b, align 8, !tbaa !24
  %i.z = load float, ptr %2, align 4, !tbaa !24   ; 2 uses
  %i.aa = fcmp olt float %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.z, ptr %i.b, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ab = load float, ptr %i.g, align 4, !tbaa !24
  %i.ac = load float, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %i.ad = fcmp ogt float %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.ac, ptr %i.g, align 4, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = load float, ptr %i.i, align 4, !tbaa !24
  %i.af = load float, ptr %i.j, align 4, !tbaa !24 ; 2 uses
  %i.ag = fcmp olt float %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.af, ptr %i.i, align 4, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = load float, ptr %i.k, align 8, !tbaa !24
  %i.ai = load float, ptr %i.l, align 4, !tbaa !24 ; 2 uses
  %i.aj = fcmp ogt float %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store float %i.ai, ptr %i.k, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = load float, ptr %i.m, align 8, !tbaa !24
  %i.al = load float, ptr %i.n, align 4, !tbaa !24 ; 2 uses
  %i.am = fcmp olt float %i.ak, %i.al
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %i.al, ptr %i.m, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i32, ptr %i.c, align 4, !tbaa !22
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !47
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load float, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load float, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %i.g = fsub float %i.d, %i.f
  %i.h = fmul float %i.g, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.i = fadd float %i.d, %i.f
  %i.j = load <2 x float>, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.k = load <2 x float>, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.l = fsub <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.l, splat (float 5.000000e-01)
  %i.n = fadd <2 x float> %i.j, %i.k
  %i.o = fmul <2 x float> %i.n, splat (float 5.000000e-01)
  %i.p = fmul float %i.i, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.p, i64 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.061.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.o, %bb.a ] ; 4 uses
  %.sroa.764.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.3.12.vec.insert.i.i14, %bb.a ] ; 2 uses
  %.sroa.069.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.m, %bb.a ] ; 2 uses
  %.sroa.1180.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.3.12.vec.insert.i.i, %bb.a ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef float %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.w = load ptr, ptr %0, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef float %i.y(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef float %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %.sroa.069.0.vec.extract = extractelement <2 x float> %.sroa.069.0, i64 0
  %i.ae = fadd float %.sroa.069.0.vec.extract, %i.v ; 2 uses
  %.sroa.069.4.vec.extract = extractelement <2 x float> %.sroa.069.0, i64 1
  %i.af = fadd float %.sroa.069.4.vec.extract, %i.z ; 2 uses
  %.sroa.1180.8.vec.extract = extractelement <2 x float> %.sroa.1180.0, i64 0
  %i.ag = fadd float %.sroa.1180.8.vec.extract, %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !24, !noalias !48
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load float, ptr %i.ak, align 4, !tbaa !24, !noalias !48
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load float, ptr %i.am, align 4, !tbaa !24, !noalias !48 ; 2 uses
  %i.ao = tail call noundef float @llvm.fabs.f32(float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !24, !noalias !48 ; 2 uses
  %i.ar = tail call noundef float @llvm.fabs.f32(float %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load float, ptr %i.as, align 4, !tbaa !24, !noalias !48 ; 2 uses
  %i.au = tail call noundef float @llvm.fabs.f32(float %i.at)
  %.sroa.061.0.vec.extract = extractelement <2 x float> %.sroa.061.0, i64 0
  %.sroa.061.4.vec.extract = extractelement <2 x float> %.sroa.061.0, i64 1
  %.sroa.764.8.vec.extract = extractelement <2 x float> %.sroa.764.0, i64 0
  %i.av = fmul float %.sroa.061.4.vec.extract, %i.aq
  %i.aw = tail call float @llvm.fmuladd.f32(float %.sroa.061.0.vec.extract, float %i.an, float %i.av)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %.sroa.764.8.vec.extract, float %i.at, float %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load float, ptr %i.az, align 4, !tbaa !24
  %i.bb = fadd float %i.ax, %i.ba                 ; 2 uses
  %i.bc = fmul float %i.af, %i.ar
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ao, float %i.bc)
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.au, float %i.bd) ; 2 uses
  %i.bf = load <2 x float>, ptr %1, align 4, !tbaa !24, !noalias !48 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.aj, align 4, !tbaa !24, !noalias !48 ; 2 uses
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bi = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bh)
  %i.bj = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bk = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bj)
  %i.bl = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.al, i64 1 ; 2 uses
  %i.bn = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bm)
  %i.bo = shufflevector <2 x float> %.sroa.061.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x float> %i.bo, %i.bj
  %i.bq = shufflevector <2 x float> %.sroa.061.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bh, <2 x float> %i.bp)
  %i.bs = shufflevector <2 x float> %.sroa.764.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bm, <2 x float> %i.br)
  %i.bu = load <2 x float>, ptr %i.ay, align 4, !tbaa !24
  %i.bv = fadd <2 x float> %i.bt, %i.bu           ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %i.af, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %i.bx, %i.bk
  %i.bz = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.bi, <2 x float> %i.by)
  %i.cc = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.bn, <2 x float> %i.cb) ; 2 uses
  %i.cf = fsub <2 x float> %i.bv, %i.ce
  %i.cg = fsub float %i.bb, %i.be
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cg, i64 0
  store <2 x float> %i.cf, ptr %2, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !33
  %i.ch = fadd <2 x float> %i.ce, %i.bv
  %i.ci = fadd float %i.be, %i.bb
  %.sroa.3.12.vec.insert.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  store <2 x float> %i.ch, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(128) %0, float noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 12)) %2) unnamed_addr #7 align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 9 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store float 1.000000e+00, ptr %3, align 4, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load float, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !24
  %i.m = fsub float %i.j, %i.l
  %i.n = fmul float %i.m, 5.000000e-01
  %i.o = fmul float %i.n, 2.000000e+00            ; 2 uses
  %i.p = fdiv float %1, 1.200000e+01              ; 2 uses
  %i.q = fmul float %i.o, %i.o
  %i.r = load <2 x float>, ptr %5, align 8, !tbaa !24
  %i.s = load <2 x float>, ptr %4, align 8, !tbaa !24
  %i.t = fsub <2 x float> %i.r, %i.s
  %i.u = fmul <2 x float> %i.t, splat (float 5.000000e-01)
  %i.v = fmul <2 x float> %i.u, splat (float 2.000000e+00) ; 5 uses
  %i.w = insertelement <2 x float> poison, float %i.q, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.v, <2 x float> %i.x)
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  store <2 x float> %i.ac, ptr %2, align 4, !tbaa !24
  %foldExtExtBinop = fmul <2 x float> %i.v, %i.v
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ae = extractelement <2 x float> %i.v, i64 0  ; 2 uses
  %i.af = call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ad)
  %i.ag = fmul float %i.p, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ag, ptr %i.ah, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPKfR11btTransformR9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %4 = alloca %class.btMatrix3x3, align 8         ; 13 uses
  %5 = alloca %class.btVector3, align 4           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.0169173 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ai, %bb.b ]
  %.sroa.15164.0172 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ah, %bb.b ]
  %i.g = phi <2 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.ag, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.h = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !24 ; 3 uses
  %i.l = load <2 x float>, ptr %i.i, align 4, !tbaa !24
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.q = load float, ptr %i.p, align 4, !tbaa !24
  %i.r = fmul float %i.k, %i.q
  %i.s = fadd <2 x float> %i.g, %i.o
  %i.t = fadd float %.sroa.15164.0172, %i.r
  %i.u = fadd float %.0169173, %i.k
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.y = load float, ptr %i.x, align 4, !tbaa !24 ; 3 uses
  %i.z = load <2 x float>, ptr %i.w, align 4, !tbaa !24
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !24
  %i.af = fmul float %i.y, %i.ae
  %i.ag = fadd <2 x float> %i.s, %i.ac            ; 3 uses
  %i.ah = fadd float %i.t, %i.af                  ; 3 uses
  %i.ai = fadd float %i.u, %i.y                   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !51

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0169173.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.15164.0172.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod203 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.aj = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv.epil.init ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.am = load float, ptr %i.al, align 4, !tbaa !24 ; 3 uses
  %i.an = load <2 x float>, ptr %i.ak, align 4, !tbaa !24
  %i.ao = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.as = load float, ptr %i.ar, align 4, !tbaa !24
  %i.at = fmul float %i.am, %i.as
  %i.au = fadd <2 x float> %.epil.init, %i.aq
  %i.av = fadd float %.sroa.15164.0172.epil.init, %i.at
  %i.aw = fadd float %.0169173.epil.init, %i.am
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.sroa.15164.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.epil.preheader ]
  %.0169.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ], [ %i.aw, %.epil.preheader ]
  %i.ax = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.au, %.epil.preheader ]
  %i.ay = fdiv float 1.000000e+00, %.0169.lcssa   ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ax, %i.ba           ; 2 uses
  %i.bc = fmul float %.sroa.15164.0.lcssa, %i.ay  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.bb, ptr %i.bd, align 4
  %.sroa.15164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store float %i.bc, ptr %.sroa.15164.0..sroa_idx, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 0, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  br i1 %i.c, label %.lr.ph180, label %._crit_edge181

.lr.ph180:                                        ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count189 = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph180, %bb.c
  %i.bn = phi float [ 0.000000e+00, %.lr.ph180 ], [ %i.gm, %bb.c ]
  %indvars.iv186 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next187, %bb.c ] ; 4 uses
  %i.bo = phi <2 x float> [ zeroinitializer, %.lr.ph180 ], [ %i.gd, %bb.c ]
  %i.bp = phi <2 x float> [ zeroinitializer, %.lr.ph180 ], [ %i.ge, %bb.c ]
  %i.bq = phi <2 x float> [ zeroinitializer, %.lr.ph180 ], [ %i.gh, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw [88 x i8], ptr %i.br, i64 %indvars.iv186
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv186 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !24
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, float noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.ca = load ptr, ptr %i.bk, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw [88 x i8], ptr %i.ca, i64 %indvars.iv186 ; 10 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !24
  %i.cf = fsub float %i.ce, %i.bc                 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cn = load float, ptr %i.ch, align 4, !tbaa !24, !noalias !52 ; 3 uses
  %i.co = load float, ptr %i.ck, align 4, !tbaa !24, !noalias !52 ; 3 uses
  %i.cp = load float, ptr %i.cm, align 4, !tbaa !24, !noalias !52 ; 3 uses
  %i.cq = load float, ptr %5, align 4, !tbaa !24  ; 2 uses
  %i.cr = fmul float %i.cn, %i.cq                 ; 2 uses
  %i.cs = load float, ptr %i.bl, align 4, !tbaa !24 ; 2 uses
  %i.ct = fmul float %i.co, %i.cs                 ; 2 uses
  %i.cu = load float, ptr %i.bm, align 4, !tbaa !24 ; 2 uses
  %i.cv = fmul float %i.cp, %i.cu                 ; 2 uses
  %i.cw = fmul float %i.co, %i.ct
  %i.cx = call float @llvm.fmuladd.f32(float %i.cr, float %i.cn, float %i.cw)
  %i.cy = call noundef float @llvm.fmuladd.f32(float %i.cv, float %i.cp, float %i.cx)
  %i.cz = load float, ptr %i.bi, align 4, !tbaa !24
  %i.da = load float, ptr %i.bj, align 8, !tbaa !24
  %i.db = fadd float %i.cy, %i.da
  %i.dc = fmul float %i.cf, %i.cf
  %i.dd = load float, ptr %i.bv, align 4, !tbaa !24 ; 3 uses
  %i.de = load <2 x float>, ptr %i.cc, align 4, !tbaa !24
  %i.df = fsub <2 x float> %i.de, %i.bb           ; 6 uses
  %i.dg = load <2 x float>, ptr %i.cb, align 4, !tbaa !24, !noalias !52 ; 3 uses
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %foldExtExtBinop = fmul <2 x float> %i.df, %i.df
  %i.dj = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %i.dk = extractelement <2 x float> %i.df, i64 0 ; 2 uses
  %i.dl = call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dj)
  %i.dm = call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.dl) ; 3 uses
  %i.dn = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.dn, %i.df
  %i.dp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dm, i64 0
  %i.dq = fsub <2 x float> %i.dp, %i.do
  %i.dr = fsub float %i.dm, %i.dj
  %i.ds = fsub float %i.dm, %i.dc
  %i.dt = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dv = fmul <2 x float> %i.dq, %i.du           ; 2 uses
  %i.dw = fmul float %i.dr, %i.dd
  %i.dx = load <2 x float>, ptr %i.ci, align 4, !tbaa !24, !noalias !52 ; 4 uses
  %i.dy = load float, ptr %i.cl, align 4, !tbaa !24, !noalias !52
  %i.dz = load <2 x float>, ptr %i.cg, align 4, !tbaa !24, !noalias !52 ; 4 uses
  %i.ea = shufflevector <2 x float> %i.dg, <2 x float> %i.dz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eb = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.ea, %i.ec           ; 3 uses
  %i.ee = shufflevector <2 x float> %i.dx, <2 x float> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.ef = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.ee, %i.eg           ; 3 uses
  %i.ei = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x float> %i.dh, %i.eh
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.di, <2 x float> %i.ek)
  %i.em = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.en = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = fmul <2 x float> %i.en, %i.eh
  %i.ep = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ep, <2 x float> %i.eo)
  %i.er = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.es = insertelement <2 x float> %i.er, float %i.dw, i64 1
  %i.et = fmul float %i.ds, %i.dd
  %i.eu = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.df, %i.ev
  %i.ex = fsub <2 x float> zeroinitializer, %i.ew
  %i.ey = fmul <2 x float> %i.ex, %i.du           ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.co, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.fa, %i.eh
  %i.fc = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.fd, <2 x float> %i.fb)
  %i.ff = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.cz, i64 1
  %i.fj = load <2 x float>, ptr %i.cj, align 4, !tbaa !24, !noalias !52 ; 4 uses
  %i.fk = shufflevector <2 x float> %i.dx, <2 x float> %i.fj, <2 x i32> <i32 1, i32 3>
  %i.fl = fmul <2 x float> %i.fk, %i.ej           ; 3 uses
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.em, <2 x float> %i.el)
  %i.fn = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fn, <2 x float> %i.eq)
  %i.fp = shufflevector <2 x float> %i.dx, <2 x float> %i.fj, <2 x i32> <i32 0, i32 2>
  %i.fq = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %i.fp, %i.fr
  %i.ft = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.ea, <2 x float> %i.fs)
  %i.fw = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = insertelement <2 x float> %i.fj, float %i.dy, i64 0
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fy, <2 x float> %i.fv)
  %i.ga = fadd <2 x float> %i.bo, %i.fm
  %i.gb = fadd <2 x float> %i.fo, %i.bp
  %i.gc = fadd <2 x float> %i.fz, %i.bq
  %i.gd = fadd <2 x float> %i.ga, %i.dv           ; 2 uses
  store <2 x float> %i.gd, ptr %4, align 8, !tbaa !24
  %i.ge = fadd <2 x float> %i.gb, %i.es           ; 2 uses
  store <2 x float> %i.ge, ptr %i.bf, align 8, !tbaa !24
  %i.gf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fg, <2 x float> %i.fe)
  %i.gg = fadd <2 x float> %i.gf, %i.fi
  %i.gh = fadd <2 x float> %i.gc, %i.ey           ; 3 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0
  store float %i.gi, ptr %i.be, align 8, !tbaa !24
  %i.gj = extractelement <2 x float> %i.gh, i64 1
  store float %i.gj, ptr %i.bg, align 8, !tbaa !24
  %i.gk = fadd <2 x float> %i.gg, %i.ey           ; 2 uses
  store <2 x float> %i.gk, ptr %i.bh, align 8, !tbaa !24
  %i.gl = fadd float %i.db, %i.et
  store float %i.gl, ptr %i.bj, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  %i.gm = extractelement <2 x float> %i.gk, i64 0
  br i1 %exitcond190.not, label %._crit_edge181, label %bb.c, !llvm.loop !55

._crit_edge181:                                   ; preds = %bb.c, %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @_ZN11btMatrix3x311diagonalizeERS_fi(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef f0x3727C5AC, i32 noundef 20)
  %i.go = load float, ptr %4, align 8, !tbaa !24
  store float %i.go, ptr %3, align 4, !tbaa !24
  %i.gp = load float, ptr %i.gn, align 4, !tbaa !24
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.gp, ptr %i.gq, align 4, !tbaa !24
  %i.gr = load float, ptr %i.bj, align 8, !tbaa !24
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gt = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gr, i64 0
  store <2 x float> %i.gt, ptr %i.gs, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11btMatrix3x311diagonalizeERS_fi(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store float 1.000000e+00, ptr %1, align 4, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 4, !tbaa !24
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_0
