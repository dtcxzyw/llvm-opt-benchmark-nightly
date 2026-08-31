Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3DynamicBvh?download=true
inline.NumInlined: 243
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK12b3DynamicBvh5writeEPNS_7IWriterE:bb.a
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit
  %i.cf = load ptr, ptr %1, align 8, !tbaa !84
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bg, i32 noundef %i.ci, i32 noundef %.0)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %_ZNK20b3AlignedObjectArrayIPK10b3DbvtNodeE16findLinearSearchERKS2_.exit45, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !24  ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %.lr.ph, label %._crit_edge, !llvm.loop !91

bb.q:                                             ; preds = %bb.i, %bb.n, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.f ], [ %i.ce, %bb.n ], [ %i.bn, %bb.i ]
  call void @_ZN20b3DbvtNodeEnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12b3DynamicBvh9enumNodesEPK10b3DbvtNodeRNS_8ICollideE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.f = phi ptr [ %i.m, %tailrecurse ], [ %i.d, %bb.a ]
  %.tr9 = phi ptr [ %i.i, %tailrecurse ], [ %0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.tr9, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  tail call void @_ZN12b3DynamicBvh9enumNodesEPK10b3DbvtNodeRNS_8ICollideE(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !34   ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3DbvtNodeEnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20b3DbvtNodeEnumerator, i64 16), ptr %0, align 8, !tbaa !84
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !33
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #17
  unreachable

_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12b3DynamicBvh5cloneERS_PNS_6ICloneE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.b3AlignedObjectArray.5, align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL19b3RecurseDeleteNodeP12b3DynamicBvhP10b3DbvtNode(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef %i.c)
  store ptr null, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !33
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %_ZN12b3DynamicBvh5clearEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.f)
  br label %_ZN12b3DynamicBvh5clearEv.exit

_ZN12b3DynamicBvh5clearEv.exit:                   ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.g, align 8, !tbaa !9
  store ptr null, ptr %i.e, align 8, !tbaa !15
  store i32 0, ptr %i.j, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !30
  %i.m = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %_ZN12b3DynamicBvh5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  store i8 1, ptr %i.n, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 10 uses
  store i32 0, ptr %i.p, align 4, !tbaa !97
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.q, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i: ; preds = %bb.e
  %i.u = zext nneg i32 %i.s to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.v, i32 noundef 16)
          to label %.noexc unwind label %bb.k     ; 3 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.split7.i, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit

.split7.i:                                        ; preds = %.noexc
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc24 unwind label %bb.k

.noexc24:                                         ; preds = %.split7.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit.thread120 unwind label %bb.k

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit.thread120: ; preds = %.noexc24
  store i32 0, ptr %i.p, align 4, !tbaa !97
  %.pre.pre122 = load ptr, ptr %0, align 8, !tbaa !31
  store i8 1, ptr %i.n, align 8, !tbaa !92
  store ptr %i.w, ptr %i.o, align 8, !tbaa !96
  store i32 0, ptr %i.q, align 8, !tbaa !98
  br label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit: ; preds = %.noexc
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i: ; preds = %bb.e, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit.thread120
  %i.y = phi ptr [ %.pre.pre122, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit.thread120 ], [ %i.m, %bb.e ] ; 2 uses
  %i.z = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef 16, i32 noundef 16)
          to label %.noexc29 unwind label %bb.l   ; 3 uses

.noexc29:                                         ; preds = %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i

.split7.i.i:                                      ; preds = %.noexc29
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc30 unwind label %bb.l

.noexc30:                                         ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i unwind label %bb.l

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i: ; preds = %.noexc29, %.noexc30, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit
  %.sink123 = phi ptr [ %i.w, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit ], [ %i.z, %.noexc30 ], [ %i.z, %.noexc29 ] ; 5 uses
  %.sink = phi i32 [ %i.s, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit ], [ 0, %.noexc30 ], [ 1, %.noexc29 ] ; 3 uses
  %i.ab = phi ptr [ %.pre.pre, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE7reserveEi.exit ], [ %i.y, %.noexc30 ], [ %i.y, %.noexc29 ]
  store i8 1, ptr %i.n, align 8, !tbaa !92
  store ptr %.sink123, ptr %i.o, align 8, !tbaa !96
  store i32 %.sink, ptr %i.q, align 8, !tbaa !98
  store ptr %i.ab, ptr %.sink123, align 8, !tbaa !41
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink123, i64 8
  store ptr null, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !41
  store i32 1, ptr %i.p, align 4, !tbaa !97
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i
  %i.ac = phi ptr [ %i.de, %thread-pre-split ], [ %.sink123, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i ] ; 3 uses
  %i.ad = phi i32 [ %i.df, %thread-pre-split ], [ %.sink, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i ] ; 3 uses
  %i.ae = phi i32 [ %i.dg, %thread-pre-split ], [ %.sink, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i ] ; 12 uses
  %i.af = phi ptr [ %i.dh, %thread-pre-split ], [ %.sink123, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i ] ; 8 uses
  %i.ag = phi i32 [ %i.di, %thread-pre-split ], [ 1, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i ]
  %i.ah = add nsw i32 %i.ag, -1                   ; 6 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ai ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !41 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !34
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.am, null
  br i1 %.not.i.i33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.b, align 8, !tbaa !32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.an = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef 64, i32 noundef 16)
          to label %.noexc35 unwind label %bb.m   ; 2 uses

.noexc35:                                         ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 64, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.noexc35, %bb.g
  %.0.i.i34 = phi ptr [ %i.am, %bb.g ], [ %i.an, %.noexc35 ] ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i34, i64 32
  store ptr %.sroa.9.0.copyload, ptr %i.ao, align 16, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i34, i64 40
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i34, i64 48
  store ptr null, ptr %i.aq, align 16, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.0.i.i34, ptr noundef nonnull readonly align 16 dereferenceable(32) %.sroa.0.0.copyload, i64 32, i1 false), !tbaa.struct !77
  store i32 %i.ah, ptr %i.p, align 4, !tbaa !97
  %.not21 = icmp eq ptr %.sroa.9.0.copyload, null
  br i1 %.not21, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload, i64 40
  %i.as = and i32 %i.ah, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  store ptr %.0.i.i34, ptr %i.au, align 8, !tbaa !34
  br label %bb.o

bb.k:                                             ; preds = %.noexc24, %.split7.i, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.l:                                             ; preds = %.noexc30, %.split7.i.i, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.h, %bb.ab
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.n:                                             ; preds = %bb.i
  store ptr %.0.i.i34, ptr %1, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !34
  %.not92 = icmp eq ptr %i.az, null
  br i1 %.not92, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !34
  %i.bb = icmp eq i32 %i.ah, %i.ae
  br i1 %i.bb, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not.i.i36 = icmp eq i32 %i.ae, 0
  %i.bc = shl nuw nsw i32 %i.ae, 1
  %i.bd = select i1 %.not.i.i36, i32 1, i32 %i.bc ; 5 uses
  %i.be = icmp slt i32 %i.ae, %i.bd
  br i1 %i.be, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i38, label %bb.t

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i38: ; preds = %bb.q
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.bg, i32 noundef 16)
          to label %.noexc52 unwind label %bb.z   ; 7 uses

.noexc52:                                         ; preds = %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i38
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.split7.i.i51, label %.split.i.i39

.split.i.i39:                                     ; preds = %.noexc52
  %i.bj = icmp sgt i32 %i.ae, 0
  br i1 %i.bj, label %.lr.ph.i.i.i46, label %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40

.lr.ph.i.i.i46:                                   ; preds = %.split.i.i39
  %wide.trip.count.i.i.i47 = zext nneg i32 %i.ae to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i47, 1
  %i.bk = icmp eq i32 %i.ae, 1
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph.i.i.i46.new

.lr.ph.i.i.i46.new:                               ; preds = %.lr.ph.i.i.i46
  %unroll_iter = and i64 %wide.trip.count.i.i.i47, 2147483646
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i46.new
  %indvars.iv.i.i.i48 = phi i64 [ 0, %.lr.ph.i.i.i46.new ], [ %indvars.iv.next.i.i.i49.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i46.new ], [ %niter.next.1, %bb.r ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i48
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.i.i.i48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !99
  %indvars.iv.next.i.i.i49 = or disjoint i64 %indvars.iv.i.i.i48, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i49
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.next.i.i.i49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !99
  %indvars.iv.next.i.i.i49.1 = add nuw nsw i64 %indvars.iv.i.i.i48, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40.loopexit.unr-lcssa, label %bb.r, !llvm.loop !100

.split7.i.i51:                                    ; preds = %.noexc52
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc53 unwind label %bb.z

.noexc53:                                         ; preds = %.split7.i.i51
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %.noexc54 unwind label %bb.z

.noexc54:                                         ; preds = %.noexc53
  store i32 0, ptr %i.p, align 4, !tbaa !97
  br label %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40

_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40.loopexit.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40.loopexit.unr-lcssa, %.lr.ph.i.i.i46
  %indvars.iv.i.i.i48.epil.init = phi i64 [ 0, %.lr.ph.i.i.i46 ], [ %indvars.iv.next.i.i.i49.1, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod124 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod124)
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i48.epil.init
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.i.i.i48.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !99
  br label %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40

_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40.loopexit.unr-lcssa, %.noexc54, %.split.i.i39
  %.pre.i4596 = phi i32 [ 0, %.noexc54 ], [ 0, %.split.i.i39 ], [ %i.ae, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40.loopexit.unr-lcssa ], [ %i.ae, %.epil.preheader ]
  %.0.i.i42 = phi i32 [ 0, %.noexc54 ], [ %i.bd, %.split.i.i39 ], [ %i.bd, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40.loopexit.unr-lcssa ], [ %i.bd, %.epil.preheader ] ; 2 uses
  %i.br = load i8, ptr %i.n, align 8, !range !33
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.s, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44

bb.s:                                             ; preds = %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.af)
          to label %._ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44_crit_edge unwind label %bb.z

._ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44_crit_edge: ; preds = %bb.s
  %.pre.i45.pre = load i32, ptr %i.p, align 4, !tbaa !97
  br label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44: ; preds = %._ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44_crit_edge, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40
  %.pre.i45 = phi i32 [ %.pre.i45.pre, %._ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44_crit_edge ], [ %.pre.i4596, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i40 ]
  store i8 1, ptr %i.n, align 8, !tbaa !92
  store ptr %i.bh, ptr %i.o, align 8, !tbaa !96
  store i32 %.0.i.i42, ptr %i.q, align 8, !tbaa !98
  br label %bb.t

bb.t:                                             ; preds = %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44, %bb.q, %bb.p
  %i.bt = phi ptr [ %i.bh, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44 ], [ %i.ac, %bb.q ], [ %i.ac, %bb.p ] ; 2 uses
  %i.bu = phi i32 [ %.0.i.i42, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44 ], [ %i.ad, %bb.q ], [ %i.ad, %bb.p ] ; 14 uses
  %i.bv = phi ptr [ %i.bh, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44 ], [ %i.af, %bb.q ], [ %i.af, %bb.p ] ; 5 uses
  %i.bw = phi i32 [ %.pre.i45, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i44 ], [ %i.ae, %bb.q ], [ %i.ah, %bb.p ] ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %i.bx ; 2 uses
  store ptr %i.ba, ptr %i.by, align 8, !tbaa !41
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %.0.i.i34, ptr %.sroa.582.0..sroa_idx, align 8, !tbaa !41
  %i.bz = add nsw i32 %i.bw, 1                    ; 3 uses
  store i32 %i.bz, ptr %i.p, align 4, !tbaa !97
  %i.ca = load ptr, ptr %i.ay, align 16, !tbaa !34
  %i.cb = icmp eq i32 %i.bz, %i.bu
  br i1 %i.cb, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %.not.i.i57 = icmp eq i32 %i.bu, 0
  %i.cc = shl nsw i32 %i.bu, 1
  %i.cd = select i1 %.not.i.i57, i32 1, i32 %i.cc ; 6 uses
  %i.ce = icmp slt i32 %i.bu, %i.cd
  br i1 %i.ce, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i58 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i58, label %.split7.i.i72, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i59

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i59: ; preds = %bb.v
  %i.cf = sext i32 %i.cd to i64
  %i.cg = shl nsw i64 %i.cf, 4
  %i.ch = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.cg, i32 noundef 16)
          to label %.noexc73 unwind label %bb.aa  ; 7 uses

.noexc73:                                         ; preds = %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i59
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.split7.i.i72, label %.split.i.i60

.split.i.i60:                                     ; preds = %.noexc73
  %i.cj = icmp sgt i32 %i.bu, 0
  br i1 %i.cj, label %.lr.ph.i.i.i67, label %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61

.lr.ph.i.i.i67:                                   ; preds = %.split.i.i60
  %wide.trip.count.i.i.i68 = zext nneg i32 %i.bu to i64 ; 2 uses
  %xtraiter126 = and i64 %wide.trip.count.i.i.i68, 1
  %i.ck = icmp eq i32 %i.bu, 1
  br i1 %i.ck, label %.epil.preheader125, label %.lr.ph.i.i.i67.new

.lr.ph.i.i.i67.new:                               ; preds = %.lr.ph.i.i.i67
  %unroll_iter129 = and i64 %wide.trip.count.i.i.i68, 2147483646
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i67.new
  %indvars.iv.i.i.i69 = phi i64 [ 0, %.lr.ph.i.i.i67.new ], [ %indvars.iv.next.i.i.i70.1, %bb.w ] ; 4 uses
  %niter130 = phi i64 [ 0, %.lr.ph.i.i.i67.new ], [ %niter130.next.1, %bb.w ]
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i69
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.i.i.i69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !99
  %indvars.iv.next.i.i.i70 = or disjoint i64 %indvars.iv.i.i.i69, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i70
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !tbaa.struct !99
  %indvars.iv.next.i.i.i70.1 = add nuw nsw i64 %indvars.iv.i.i.i69, 2 ; 2 uses
  %niter130.next.1 = add i64 %niter130, 2         ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61.loopexit.unr-lcssa, label %bb.w, !llvm.loop !100

.split7.i.i72:                                    ; preds = %.noexc73, %bb.v
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc74 unwind label %bb.aa

.noexc74:                                         ; preds = %.split7.i.i72
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %.noexc75 unwind label %bb.aa

.noexc75:                                         ; preds = %.noexc74
  store i32 0, ptr %i.p, align 4, !tbaa !97
  br label %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61

_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61, label %.epil.preheader125

.epil.preheader125:                               ; preds = %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61.loopexit.unr-lcssa, %.lr.ph.i.i.i67
  %indvars.iv.i.i.i69.epil.init = phi i64 [ 0, %.lr.ph.i.i.i67 ], [ %indvars.iv.next.i.i.i70.1, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod128 = trunc i32 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i69.epil.init
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.i.i.i69.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false), !tbaa.struct !99
  br label %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61

_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61: ; preds = %.epil.preheader125, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61.loopexit.unr-lcssa, %.noexc75, %.split.i.i60
  %.pre.i6698 = phi i32 [ 0, %.noexc75 ], [ %i.bu, %.split.i.i60 ], [ %i.bu, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61.loopexit.unr-lcssa ], [ %i.bu, %.epil.preheader125 ]
  %.0.i12.i.i62 = phi ptr [ null, %.noexc75 ], [ %i.ch, %.split.i.i60 ], [ %i.ch, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61.loopexit.unr-lcssa ], [ %i.ch, %.epil.preheader125 ] ; 2 uses
  %.0.i.i63 = phi i32 [ 0, %.noexc75 ], [ %i.cd, %.split.i.i60 ], [ %i.cd, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61.loopexit.unr-lcssa ], [ %i.cd, %.epil.preheader125 ] ; 2 uses
  %i.cr = load i8, ptr %i.n, align 8, !range !33
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.x, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65

bb.x:                                             ; preds = %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.bv)
          to label %._ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65_crit_edge unwind label %bb.aa

._ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65_crit_edge: ; preds = %bb.x
  %.pre.i66.pre = load i32, ptr %i.p, align 4, !tbaa !97
  br label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65: ; preds = %._ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65_crit_edge, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61
  %.pre.i66 = phi i32 [ %.pre.i66.pre, %._ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65_crit_edge ], [ %.pre.i6698, %_ZNK20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE4copyEiiPS1_.exit.i.i61 ]
  store i8 1, ptr %i.n, align 8, !tbaa !92
  store ptr %.0.i12.i.i62, ptr %i.o, align 8, !tbaa !96
  store i32 %.0.i.i63, ptr %i.q, align 8, !tbaa !98
  br label %bb.y

bb.y:                                             ; preds = %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65, %bb.u, %bb.t
  %i.ct = phi ptr [ %.0.i12.i.i62, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65 ], [ %i.bt, %bb.u ], [ %i.bt, %bb.t ] ; 3 uses
  %i.cu = phi i32 [ %.0.i.i63, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65 ], [ %i.bu, %bb.u ], [ %i.bu, %bb.t ] ; 2 uses
  %i.cv = phi i32 [ %.pre.i66, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE10deallocateEv.exit.i.i65 ], [ %i.bu, %bb.u ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.ct, i64 %i.cw ; 2 uses
  store ptr %i.ca, ptr %i.cx, align 8, !tbaa !41
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %.0.i.i34, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !41
  %i.cy = add nsw i32 %i.cv, 1                    ; 2 uses
  store i32 %i.cy, ptr %i.p, align 4, !tbaa !97
  br label %thread-pre-split

bb.z:                                             ; preds = %bb.s, %.noexc53, %.split7.i.i51, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i38
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.aa:                                            ; preds = %bb.x, %.noexc74, %.split7.i.i72, %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEE8allocateEi.exit.i.i59
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ab:                                            ; preds = %bb.o
  %i.db = load ptr, ptr %2, align 8, !tbaa !84
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.0.i.i34)
          to label %thread-pre-split unwind label %bb.m

thread-pre-split:                                 ; preds = %bb.ab, %bb.y
  %i.de = phi ptr [ %i.ct, %bb.y ], [ %i.ac, %bb.ab ] ; 3 uses
  %i.df = phi i32 [ %i.cu, %bb.y ], [ %i.ad, %bb.ab ]
  %i.dg = phi i32 [ %i.cu, %bb.y ], [ %i.ae, %bb.ab ]
  %i.dh = phi ptr [ %i.ct, %bb.y ], [ %i.af, %bb.ab ]
  %i.di = phi i32 [ %i.cy, %bb.y ], [ %i.ah, %bb.ab ] ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.f, label %bb.ac, !llvm.loop !101

bb.ac:                                            ; preds = %thread-pre-split
  %.not.i.i.i78 = icmp ne ptr %i.de, null
  %i.dk = load i8, ptr %i.n, align 8, !range !33
  %i.dl = trunc nuw i8 %i.dk to i1
  %or.cond.i.i79 = select i1 %.not.i.i.i78, i1 %i.dl, i1 false
  br i1 %or.cond.i.i79, label %bb.ad, label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.de)
          to label %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  tail call void @__clang_call_terminate(ptr %i.dn) #17
  unreachable

_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEED2Ev.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ag

bb.af:                                            ; preds = %bb.m, %bb.z, %bb.aa, %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.aw, %bb.l ], [ %i.da, %bb.aa ], [ %i.cz, %bb.z ], [ %i.ax, %bb.m ]
  call void @_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEED2Ev.exit, %_ZN12b3DynamicBvh5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayIN12b3DynamicBvh7sStkCLNEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !33
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
  tail call void @__clang_call_terminate(ptr %i.g) #17
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN12b3DynamicBvh8maxdepthEPK10b3DbvtNode(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !102
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZL13b3GetMaxDepthPK10b3DbvtNodeiRi(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = phi i32 [ %.pre, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL13b3GetMaxDepthPK10b3DbvtNodeiRi(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -2147483647, -2147483648) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not14 = icmp eq ptr %i.b, null
  br i1 %.not14, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.c = phi ptr [ %i.h, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr1216 = phi i32 [ %i.f, %tailrecurse ], [ %1, %bb.a ]
  %.tr15 = phi ptr [ %i.g, %tailrecurse ], [ %0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.tr15, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = add nsw i32 %.tr1216, 1                  ; 3 uses
  tail call fastcc void @_ZL13b3GetMaxDepthPK10b3DbvtNodeiRi(ptr noundef %i.e, i32 noundef %i.f, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr12.lcssa = phi i32 [ %1, %bb.a ], [ %i.f, %tailrecurse ]
  %i.j = load i32, ptr %2, align 4, !tbaa !102
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %.tr12.lcssa)
  store i32 %.sroa.speculated, ptr %2, align 4, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN12b3DynamicBvh11countLeavesEPK10b3DbvtNode(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.c = phi ptr [ %i.i, %tailrecurse ], [ %i.b, %bb.a ] ; 2 uses
  %.tr5 = phi ptr [ %i.c, %tailrecurse ], [ %0, %bb.a ]
  %accumulator.tr4 = phi i32 [ %i.g, %tailrecurse ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.tr5, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call noundef i32 @_ZN12b3DynamicBvh11countLeavesEPK10b3DbvtNode(ptr noundef %i.e)
  %i.g = add i32 %i.f, %accumulator.tr4           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %tailrecurse._crit_edge.loopexit, label %tailrecurse

tailrecurse._crit_edge.loopexit:                  ; preds = %tailrecurse
  %i.j = add i32 %i.g, 1
  br label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse._crit_edge.loopexit, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 1, %bb.a ], [ %i.j, %tailrecurse._crit_edge.loopexit ]
  ret i32 %accumulator.tr.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12b3DynamicBvh13extractLeavesEPK10b3DbvtNodeR20b3AlignedObjectArrayIS2_E(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.c = phi ptr [ %i.g, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr7 = phi ptr [ %i.f, %tailrecurse ], [ %0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.tr7, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  tail call void @_ZN12b3DynamicBvh13extractLeavesEPK10b3DbvtNodeR20b3AlignedObjectArrayIS2_E(ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %tailrecurse ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !25
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZN20b3AlignedObjectArrayIPK10b3DbvtNodeE9push_backERKS2_.exit

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %.not.i.i = icmp eq i32 %i.j, 0
end_hunk_0
