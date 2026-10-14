Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb20WindowPeerLocalState8NextRankEmmm:bb.a
  %i.e = add i64 %.pre, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !798
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !798
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.j = load i64, ptr %i.i, align 8, !tbaa !800
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !799
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8, !tbaa !799
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %i.n = phi i64 [ %i.e, %._crit_edge ], [ 1, %bb.d ], [ 1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.n, ptr %i.o, align 8, !tbaa !800
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18WindowPeerExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14WindowExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb18WindowPeerExecutorE, i64 16), ptr %0, align 8, !tbaa !208
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !219  ; 2 uses
  %.not15 = icmp eq ptr %i.c, %i.e
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit
  %.sroa.012.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.ad, %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 8
  %i.j = invoke noundef i64 @_ZN6duckdb23WindowSharedExpressions12RegisterExprERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERNS0_6SharedE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %_ZN6duckdb23WindowSharedExpressions12RegisterSinkERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE.exit unwind label %.loopexit ; 2 uses

_ZN6duckdb23WindowSharedExpressions12RegisterSinkERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !368  ; 4 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !369
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb23WindowSharedExpressions12RegisterSinkERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE.exit
  store i64 %i.j, ptr %i.k, align 8, !tbaa !278
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.g, align 8, !tbaa !368
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit

bb.d:                                             ; preds = %_ZN6duckdb23WindowSharedExpressions12RegisterSinkERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !366  ; 4 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #32
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store i64 %i.j, ptr %i.z, align 8, !tbaa !278
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !366
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !368
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !369
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !366 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.ae) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb18WindowPeerExecutor14GetGlobalStateERNS_13ClientContextEmRKNS_12ValidityMaskES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.230") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !1389 ; 3 uses
  invoke void @_ZN6duckdb21WindowPeerGlobalStateC2ERNS_13ClientContextERKNS_18WindowPeerExecutorEmRKNS_12ValidityMaskES8_(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt10unique_ptrIN6duckdb21WindowPeerGlobalStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !1389

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30, !noalias !1389
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb21WindowPeerGlobalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb18WindowPeerExecutor13GetLocalStateERNS_16ExecutionContextERKNS_15GlobalSinkStateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.266") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(81) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #32, !noalias !1392 ; 3 uses
  invoke void @_ZN6duckdb20WindowPeerLocalStateC2ERNS_16ExecutionContextERKNS_21WindowPeerGlobalStateE(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(168) %3)
          to label %_ZNSt10unique_ptrIN6duckdb20WindowPeerLocalStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !1392

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30, !noalias !1392
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb20WindowPeerLocalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !270
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18WindowRankExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb18WindowPeerExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb18WindowRankExecutorE, i64 16), ptr %0, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb18WindowRankExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !272, !nonnull !115, !align !265 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273, !nonnull !115, !align !265 ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !343  ; 7 uses
  %7 = ptrtoaddr ptr %i.e to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.g = load i8, ptr %i.f, align 8, !tbaa !810, !range !114, !noundef !115
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 5 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 6) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !343  ; 6 uses
  %8 = ptrtoaddr ptr %i.l to i64
  %i.m = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 7) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !343
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !811
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not66 = icmp eq i64 %4, 0
  br i1 %.not66, label %.loopexit, label %.lr.ph62

.lr.ph62:                                         ; preds = %.preheader, %.lr.ph62
  %.05361 = phi i64 [ %i.z, %.lr.ph62 ], [ %5, %.preheader ] ; 2 uses
  %.05560 = phi i64 [ %i.y, %.lr.ph62 ], [ 0, %.preheader ] ; 4 uses
  %i.r = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowTokenTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05560
  %i.t = load i64, ptr %i.s, align 8, !tbaa !278
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05560
  %i.v = load i64, ptr %i.u, align 8, !tbaa !278
  %i.w = tail call noundef i64 @_ZNK6duckdb15WindowTokenTree4RankEmmm(ptr noundef nonnull align 8 dereferenceable(264) %i.r, i64 noundef %i.t, i64 noundef %i.v, i64 noundef %.05361)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05560
  store i64 %i.w, ptr %i.x, align 8, !tbaa !278
  %i.y = add nuw i64 %.05560, 1                   ; 2 uses
  %i.z = add i64 %.05361, 1
  %exitcond70.not = icmp eq i64 %i.y, %4
  br i1 %exitcond70.not, label %.loopexit, label %.lr.ph62, !llvm.loop !1393

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !343 ; 5 uses
  %9 = ptrtoaddr ptr %i.ac to i64
  %.not67 = icmp eq i64 %4, 0
  br i1 %.not67, label %.loopexit, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %bb.c
  %min.iters.check = icmp ult i64 %4, 10
  br i1 %min.iters.check, label %.lr.ph64.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph64.preheader
  %i.ad = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.ad, -32
  %i.ae = sub i64 %9, %7
  %diff.check77 = icmp ugt i64 %i.ae, -32
  %conflict.rdx = or i1 %diff.check, %diff.check77
  br i1 %conflict.rdx, label %.lr.ph64.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x i64>, ptr %i.af, align 8, !tbaa !278
  %wide.load78 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !278
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load79 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !278
  %wide.load80 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !278
  %i.aj = tail call <2 x i64> @llvm.usub.sat.v2i64(<2 x i64> %wide.load79, <2 x i64> %wide.load)
  %i.ak = tail call <2 x i64> @llvm.usub.sat.v2i64(<2 x i64> %wide.load80, <2 x i64> %wide.load78)
  %i.al = add <2 x i64> %i.aj, splat (i64 1)
  %i.am = add <2 x i64> %i.ak, splat (i64 1)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x i64> %i.al, ptr %i.an, align 8, !tbaa !278
  store <2 x i64> %i.am, ptr %i.ao, align 8, !tbaa !278
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph64.preheader81

.lr.ph64.preheader81:                             ; preds = %vector.memcheck, %.lr.ph64.preheader, %middle.block
  %.05463.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph64.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.05463.ph, 1
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol

.lr.ph64.prol:                                    ; preds = %.lr.ph64.preheader81
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05463.ph
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !278
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.05463.ph
  %i.at = load i64, ptr %i.as, align 8, !tbaa !278
  %i.au = tail call i64 @llvm.usub.sat.i64(i64 %i.at, i64 %i.ar)
  %i.av = add i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05463.ph
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !278
  %i.ax = or disjoint i64 %.05463.ph, 1
  br label %.lr.ph64.prol.loopexit

.lr.ph64.prol.loopexit:                           ; preds = %.lr.ph64.prol, %.lr.ph64.preheader81
  %.05463.unr = phi i64 [ %.05463.ph, %.lr.ph64.preheader81 ], [ %i.ax, %.lr.ph64.prol ]
  %i.ay = icmp eq i64 %4, %.neg
  br i1 %i.ay, label %.loopexit, label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64
  %.05463 = phi i64 [ %i.bo, %.lr.ph64 ], [ %.05463.unr, %.lr.ph64.prol.loopexit ] ; 5 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05463
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !278
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.05463
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !278
  %i.bd = tail call i64 @llvm.usub.sat.i64(i64 %i.bc, i64 %i.ba)
  %i.be = add i64 %i.bd, 1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05463
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !278
  %i.bg = add nuw i64 %.05463, 1                  ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !278
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bg
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !278
  %i.bl = tail call i64 @llvm.usub.sat.i64(i64 %i.bk, i64 %i.bi)
  %i.bm = add i64 %i.bl, 1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bg
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !278
  %i.bo = add nuw i64 %.05463, 2                  ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %i.bo, %4
  br i1 %exitcond71.not.1, label %.loopexit, label %.lr.ph64, !llvm.loop !1395

bb.d:                                             ; preds = %bb.a
  %i.bp = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !343 ; 2 uses
  %i.bs = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !343 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !278
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !278
  %i.bx = add i64 %i.bv, 1
  %i.by = sub i64 %i.bx, %i.bw                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 3 uses
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !799
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !278
  %i.cb = sub i64 %5, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 344 ; 4 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !800
  %.not65 = icmp eq i64 %4, 0
  br i1 %.not65, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN6duckdb20WindowPeerLocalState8NextRankEmmm.exit
  %i.ce = phi i64 [ %i.by, %.lr.ph ], [ %i.cq, %_ZN6duckdb20WindowPeerLocalState8NextRankEmmm.exit ] ; 2 uses
  %.059 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %_ZN6duckdb20WindowPeerLocalState8NextRankEmmm.exit ] ; 4 uses
  %.258 = phi i64 [ %5, %.lr.ph ], [ %i.cu, %_ZN6duckdb20WindowPeerLocalState8NextRankEmmm.exit ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.059
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !278
  %i.ch = icmp eq i64 %i.cg, %.258
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %i.cd, align 8, !tbaa !798
  store i64 1, ptr %i.bz, align 8, !tbaa !799
  br label %_ZN6duckdb20WindowPeerLocalState8NextRankEmmm.exit

bb.g:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.059
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !278
  %i.ck = icmp eq i64 %i.cj, %.258
  br i1 %i.ck, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i64, ptr %i.cc, align 8, !tbaa !800
  %i.cl = add i64 %.pre.i, 1
  br label %_ZN6duckdb20WindowPeerLocalState8NextRankEmmm.exit

bb.h:                                             ; preds = %bb.g
  %i.cm = load i64, ptr %i.cd, align 8, !tbaa !798
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.cd, align 8, !tbaa !798
  %i.co = load i64, ptr %i.cc, align 8, !tbaa !800
  %i.cp = add i64 %i.ce, %i.co                    ; 2 uses
  store i64 %i.cp, ptr %i.bz, align 8, !tbaa !799
  br label %_ZN6duckdb20WindowPeerLocalState8NextRankEmmm.exit

_ZN6duckdb20WindowPeerLocalState8NextRankEmmm.exit: ; preds = %bb.f, %._crit_edge.i, %bb.h
  %i.cq = phi i64 [ %i.ce, %._crit_edge.i ], [ %i.cp, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %i.cr = phi i64 [ %i.cl, %._crit_edge.i ], [ 1, %bb.h ], [ 1, %bb.f ]
  store i64 %i.cr, ptr %i.cc, align 8, !tbaa !800
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.059
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !278
  %i.ct = add nuw i64 %.059, 1                    ; 2 uses
  %i.cu = add i64 %.258, 1
  %exitcond.not = icmp eq i64 %i.ct, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !1396

.loopexit:                                        ; preds = %_ZN6duckdb20WindowPeerLocalState8NextRankEmmm.exit, %.lr.ph62, %.lr.ph64.prol.loopexit, %.lr.ph64, %middle.block, %bb.d, %.preheader, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowTokenTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !811    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15WindowTokenTreeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !229

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !216    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
end_hunk_0
begin_hunk_1_@_ZN6duckdb25WindowRowNumberLocalState8FinalizeERNS_16ExecutionContextENS_12optional_ptrINS_16WindowCollectionELb1EEERNS_17OperatorSinkInputE:bb.a

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !737, !nonnull !115, !align !265
  %i.k = tail call noundef zeroext i1 @_ZN6duckdb19WindowMergeSortTree19TryPrepareSortStageERNS_29WindowMergeSortTreeLocalStateE(ptr noundef nonnull align 8 dereferenceable(240) %i.j, ptr noundef nonnull align 8 dereferenceable(152) %i.c)
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_ZN6duckdb29WindowMergeSortTreeLocalState15ExecuteSortTaskERNS_16ExecutionContextERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = tail call noundef i32 @sched_yield() #29 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !737, !nonnull !115, !align !265
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.o = load atomic i8, ptr %i.n seq_cst, align 8
  %.not.i = icmp eq i8 %i.o, 4
  br i1 %.not.i, label %_ZN6duckdb29WindowMergeSortTreeLocalState8FinalizeERNS_16ExecutionContextERNS_14InterruptStateE.exit, label %.lr.ph.i, !llvm.loop !48

_ZN6duckdb29WindowMergeSortTreeLocalState8FinalizeERNS_16ExecutionContextERNS_14InterruptStateE.exit: ; preds = %bb.e, %bb.b
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !737, !nonnull !115, !align !265
  tail call void @_ZN6duckdb19WindowMergeSortTree5BuildEv(ptr noundef nonnull align 8 dereferenceable(240) %i.p)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb29WindowMergeSortTreeLocalState8FinalizeERNS_16ExecutionContextERNS_14InterruptStateE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23WindowRowNumberExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14WindowExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb23WindowRowNumberExecutorE, i64 16), ptr %0, align 8, !tbaa !208
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.a, align 8, !tbaa !816
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !219  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !219  ; 2 uses
  %.not15 = icmp eq ptr %i.d, %i.f
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit
  %.sroa.012.016 = phi ptr [ %i.d, %.lr.ph ], [ %i.ae, %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 8
  %i.k = invoke noundef i64 @_ZN6duckdb23WindowSharedExpressions12RegisterExprERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERNS0_6SharedE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN6duckdb23WindowSharedExpressions12RegisterSinkERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE.exit unwind label %.loopexit ; 2 uses

_ZN6duckdb23WindowSharedExpressions12RegisterSinkERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !368  ; 4 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !369
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb23WindowSharedExpressions12RegisterSinkERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE.exit
  store i64 %i.k, ptr %i.l, align 8, !tbaa !278
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.h, align 8, !tbaa !368
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit

bb.d:                                             ; preds = %_ZN6duckdb23WindowSharedExpressions12RegisterSinkERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE.exit
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !366  ; 4 uses
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store i64 %i.k, ptr %i.aa, align 8, !tbaa !278
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.z, ptr %i.b, align 8, !tbaa !366
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !368
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !369
  br label %_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJmEEEvDpOT_.exit: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !366 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.af) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb23WindowRowNumberExecutor14GetGlobalStateERNS_13ClientContextEmRKNS_12ValidityMaskES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.230") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #32, !noalias !1456 ; 3 uses
  invoke void @_ZN6duckdb26WindowRowNumberGlobalStateC2ERNS_13ClientContextERKNS_23WindowRowNumberExecutorEmRKNS_12ValidityMaskES8_(ptr noundef nonnull align 8 dereferenceable(176) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt10unique_ptrIN6duckdb26WindowRowNumberGlobalStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !1456

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30, !noalias !1456
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb26WindowRowNumberGlobalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb23WindowRowNumberExecutor13GetLocalStateERNS_16ExecutionContextERKNS_15GlobalSinkStateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.266") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(81) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #32, !noalias !1459 ; 3 uses
  invoke void @_ZN6duckdb25WindowRowNumberLocalStateC2ERNS_16ExecutionContextERKNS_26WindowRowNumberGlobalStateE(ptr noundef nonnull align 8 dereferenceable(344) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt10unique_ptrIN6duckdb25WindowRowNumberLocalStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !1459

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30, !noalias !1459
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb25WindowRowNumberLocalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !270
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb23WindowRowNumberExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !272, !nonnull !115, !align !265 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273, !nonnull !115, !align !265
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !343  ; 14 uses
  %7 = ptrtoaddr ptr %i.e to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.g = load i8, ptr %i.f, align 8, !tbaa !818, !range !114, !noundef !115
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 6) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !343  ; 8 uses
  %8 = ptrtoaddr ptr %i.l to i64
  %i.m = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 7) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !343
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !811
  %.not = icmp eq ptr %i.q, null
  %.not54 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader41

.preheader41:                                     ; preds = %bb.b
  br i1 %.not54, label %.loopexit, label %.lr.ph48

.preheader:                                       ; preds = %bb.b
  br i1 %.not54, label %.loopexit, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %.preheader
  %min.iters.check68 = icmp ult i64 %4, 6
  %i.r = sub i64 %8, %7
  %diff.check66 = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check68, i1 true, i1 %diff.check66
  br i1 %or.cond, label %.lr.ph51.preheader87, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph51.preheader
  %n.vec70 = and i64 %4, -4                       ; 4 uses
  %i.s = add i64 %5, %n.vec70
  %broadcast.splatinsert71 = insertelement <2 x i64> poison, i64 %5, i64 0
  %broadcast.splat72 = shufflevector <2 x i64> %broadcast.splatinsert71, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction73 = add <2 x i64> %broadcast.splat72, <i64 0, i64 1>
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph69
  %index75 = phi i64 [ 0, %vector.ph69 ], [ %index.next80, %vector.body74 ] ; 3 uses
  %vec.ind76 = phi <2 x i64> [ %induction73, %vector.ph69 ], [ %vec.ind.next81, %vector.body74 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index75 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load78 = load <2 x i64>, ptr %i.t, align 8, !tbaa !278
  %wide.load79 = load <2 x i64>, ptr %i.u, align 8, !tbaa !278
  %i.v = add <2 x i64> %vec.ind76, splat (i64 1)
  %i.w = add <2 x i64> %vec.ind76, splat (i64 3)
  %i.x = sub <2 x i64> %i.v, %wide.load78
  %i.y = sub <2 x i64> %i.w, %wide.load79
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index75 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x i64> %i.x, ptr %i.z, align 8, !tbaa !278
  store <2 x i64> %i.y, ptr %i.aa, align 8, !tbaa !278
  %index.next80 = add nuw i64 %index75, 4         ; 2 uses
  %vec.ind.next81 = add <2 x i64> %vec.ind76, splat (i64 4)
  %i.ab = icmp eq i64 %index.next80, %n.vec70
  br i1 %i.ab, label %middle.block82, label %vector.body74, !llvm.loop !1460

middle.block82:                                   ; preds = %vector.body74
  %cmp.n83 = icmp eq i64 %4, %n.vec70
  br i1 %cmp.n83, label %.loopexit, label %.lr.ph51.preheader87

.lr.ph51.preheader87:                             ; preds = %.lr.ph51.preheader, %middle.block82
  %.03750.ph = phi i64 [ 0, %.lr.ph51.preheader ], [ %n.vec70, %middle.block82 ] ; 3 uses
  %.149.ph = phi i64 [ %5, %.lr.ph51.preheader ], [ %i.s, %middle.block82 ] ; 2 uses
  %xtraiter91 = and i64 %4, 3                     ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph51.prol.loopexit, label %.lr.ph51.prol

.lr.ph51.prol:                                    ; preds = %.lr.ph51.preheader87, %.lr.ph51.prol
  %.03750.prol = phi i64 [ %i.ah, %.lr.ph51.prol ], [ %.03750.ph, %.lr.ph51.preheader87 ] ; 3 uses
  %.149.prol = phi i64 [ %i.ae, %.lr.ph51.prol ], [ %.149.ph, %.lr.ph51.preheader87 ]
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.lr.ph51.prol ], [ 0, %.lr.ph51.preheader87 ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.03750.prol
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !278
  %i.ae = add i64 %.149.prol, 1                   ; 3 uses
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.03750.prol
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !278
  %i.ah = add nuw i64 %.03750.prol, 1             ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.lr.ph51.prol.loopexit, label %.lr.ph51.prol, !llvm.loop !1461

.lr.ph51.prol.loopexit:                           ; preds = %.lr.ph51.prol, %.lr.ph51.preheader87
  %.03750.unr = phi i64 [ %.03750.ph, %.lr.ph51.preheader87 ], [ %i.ah, %.lr.ph51.prol ]
  %.149.unr = phi i64 [ %.149.ph, %.lr.ph51.preheader87 ], [ %i.ae, %.lr.ph51.prol ]
  %i.ai = sub i64 %.03750.ph, %4
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %.loopexit, label %.lr.ph51

.lr.ph48:                                         ; preds = %.preheader41, %.lr.ph48
  %.03847 = phi i64 [ %i.ar, %.lr.ph48 ], [ 0, %.preheader41 ] ; 4 uses
  %.03946 = phi i64 [ %i.as, %.lr.ph48 ], [ %5, %.preheader41 ] ; 2 uses
  %i.ak = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowTokenTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.03847
  %i.am = load i64, ptr %i.al, align 8, !tbaa !278
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.03847
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !278
  %i.ap = tail call noundef i64 @_ZNK6duckdb15WindowTokenTree4RankEmmm(ptr noundef nonnull align 8 dereferenceable(264) %i.ak, i64 noundef %i.am, i64 noundef %i.ao, i64 noundef %.03946)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.03847
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !278
  %i.ar = add nuw i64 %.03847, 1                  ; 2 uses
  %i.as = add i64 %.03946, 1
  %exitcond57.not = icmp eq i64 %i.ar, %4
  br i1 %exitcond57.not, label %.loopexit, label %.lr.ph48, !llvm.loop !1462

.lr.ph51:                                         ; preds = %.lr.ph51.prol.loopexit, %.lr.ph51
  %.03750 = phi i64 [ %i.bq, %.lr.ph51 ], [ %.03750.unr, %.lr.ph51.prol.loopexit ] ; 6 uses
  %.149 = phi i64 [ %i.bn, %.lr.ph51 ], [ %.149.unr, %.lr.ph51.prol.loopexit ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.03750
  %i.au = load i64, ptr %i.at, align 8, !tbaa !278
  %i.av = add i64 %.149, 1
  %i.aw = sub i64 %i.av, %i.au
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.03750
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !278
  %i.ay = add nuw i64 %.03750, 1                  ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !278
  %i.bb = add i64 %.149, 2
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ay
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !278
  %i.be = add nuw i64 %.03750, 2                  ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !278
  %i.bh = add i64 %.149, 3
  %i.bi = sub i64 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.be
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !278
  %i.bk = add nuw i64 %.03750, 3                  ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !278
  %i.bn = add i64 %.149, 4                        ; 2 uses
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bk
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !278
  %i.bq = add nuw i64 %.03750, 4                  ; 2 uses
  %exitcond58.not.3 = icmp eq i64 %i.bq, %4
  br i1 %exitcond58.not.3, label %.loopexit, label %.lr.ph51, !llvm.loop !1463

bb.c:                                             ; preds = %bb.a
  %i.br = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !343 ; 7 uses
  %.not52 = icmp eq i64 %4, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %min.iters.check = icmp ult i64 %4, 6
  %i.bv = sub i64 %i.bu, %7
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond86 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond86, label %.lr.ph.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %4, -4                         ; 4 uses
  %i.bw = add i64 %5, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %5, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load = load <2 x i64>, ptr %i.bx, align 8, !tbaa !278
  %wide.load63 = load <2 x i64>, ptr %i.by, align 8, !tbaa !278
  %i.bz = add <2 x i64> %vec.ind, splat (i64 1)
  %i.ca = add <2 x i64> %vec.ind, splat (i64 3)
  %i.cb = sub <2 x i64> %i.bz, %wide.load
  %i.cc = sub <2 x i64> %i.ca, %wide.load63
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !278
  store <2 x i64> %i.cc, ptr %i.ce, align 8, !tbaa !278
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !1464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader89

.lr.ph.preheader89:                               ; preds = %.lr.ph.preheader, %middle.block
  %.045.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.244.ph = phi i64 [ %5, %.lr.ph.preheader ], [ %i.bw, %middle.block ] ; 2 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader89, %.lr.ph.prol
  %.045.prol = phi i64 [ %i.cl, %.lr.ph.prol ], [ %.045.ph, %.lr.ph.preheader89 ] ; 3 uses
  %.244.prol = phi i64 [ %i.ci, %.lr.ph.prol ], [ %.244.ph, %.lr.ph.preheader89 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader89 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.045.prol
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !278
  %i.ci = add i64 %.244.prol, 1                   ; 3 uses
  %i.cj = sub i64 %i.ci, %i.ch
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.045.prol
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !278
  %i.cl = add nuw i64 %.045.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1465

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader89
  %.045.unr = phi i64 [ %.045.ph, %.lr.ph.preheader89 ], [ %i.cl, %.lr.ph.prol ]
  %.244.unr = phi i64 [ %.244.ph, %.lr.ph.preheader89 ], [ %i.ci, %.lr.ph.prol ]
  %i.cm = sub i64 %.045.ph, %4
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.045 = phi i64 [ %i.dl, %.lr.ph ], [ %.045.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.244 = phi i64 [ %i.di, %.lr.ph ], [ %.244.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.045
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !278
  %i.cq = add i64 %.244, 1
  %i.cr = sub i64 %i.cq, %i.cp
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.045
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !278
  %i.ct = add nuw i64 %.045, 1                    ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !278
  %i.cw = add i64 %.244, 2
  %i.cx = sub i64 %i.cw, %i.cv
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ct
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !278
  %i.cz = add nuw i64 %.045, 2                    ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !278
  %i.dc = add i64 %.244, 3
  %i.dd = sub i64 %i.dc, %i.db
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cz
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !278
  %i.df = add nuw i64 %.045, 3                    ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !278
  %i.di = add i64 %.244, 4                        ; 2 uses
  %i.dj = sub i64 %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.df
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !278
  %i.dl = add nuw i64 %.045, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dl, %4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !1466

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph48, %.lr.ph51.prol.loopexit, %.lr.ph51, %middle.block, %middle.block82, %bb.c, %.preheader41, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19WindowNtileExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb23WindowRowNumberExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb19WindowNtileExecutorE, i64 16), ptr %0, align 8, !tbaa !208
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.d = invoke noundef i64 @_ZN6duckdb23WindowSharedExpressions12RegisterExprERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERNS0_6SharedE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_ZN6duckdb23WindowSharedExpressions16RegisterEvaluateERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE.exit unwind label %bb.c

_ZN6duckdb23WindowSharedExpressions16RegisterEvaluateERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.d, ptr %i.e, align 8, !tbaa !816
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb23WindowRowNumberExecutorE, i64 16), ptr %0, align 8, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !366  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb23WindowRowNumberExecutorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #30, !inline_history !819
  br label %_ZN6duckdb23WindowRowNumberExecutorD2Ev.exit

_ZN6duckdb23WindowRowNumberExecutorD2Ev.exit:     ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.e = load ptr, ptr %0, align 8, !tbaa !417    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !278
  store i64 %i.i, ptr %i.b, align 8, !tbaa !278
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !279

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !216    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
end_hunk_1
