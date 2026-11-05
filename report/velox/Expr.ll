Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Expr?download=true
inline.NumInlined: 11089
inline.NumDeleted: 4035
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a

bb.dg:                                            ; preds = %bb.df
  store i64 %i.mm, ptr %i.ms, align 8, !tbaa !736
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store ptr %i.mv, ptr %i.mr, align 8, !tbaa !805
  br label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit

bb.dh:                                            ; preds = %bb.df
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 56
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.mw, ptr %i.ms, ptr noundef nonnull align 8 dereferenceable(8) %i.id)
          to label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i unwind label %bb.dj

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i: ; preds = %bb.dh
  %.pr.pre.i = load ptr, ptr %i.id, align 8, !tbaa !736 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i: ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i, %bb.de
  %.pr7.i = phi ptr [ %.pr.pre.i, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i ], [ %i.ml, %bb.de ] ; 3 uses
  %i.mx = load ptr, ptr %.pr7.i, align 8, !tbaa !738 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i, label %bb.di

bb.di:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i
  %i.my = getelementptr inbounds nuw i8, ptr %.pr7.i, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !739
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.mx to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nc) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i: ; preds = %bb.di, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr7.i, i64 noundef 40) #45
  br label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit

bb.dj:                                            ; preds = %bb.dh
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #46
  unreachable

_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit: ; preds = %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit22, %bb.dg, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_0EEvS6_S8_SC_T_.exit"

bb.dk:                                            ; preds = %.body, %bb.ct
  %.pn85.pn.i = phi { ptr, i32 } [ %.pn85.i, %.body ], [ %i.lo, %bb.ct ]
  call void @_ZN8facebook5velox4exec26ScopedFinalSelectionSetterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %10) #30, !inline_history !1488
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.cs
  %.pn85.pn.pn.i = phi { ptr, i32 } [ %.pn85.pn.i, %bb.dk ], [ %i.ln, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.ca
  %.pn85.pn.pn.pn.i = phi { ptr, i32 } [ %.pn85.pn.pn.i, %bb.dl ], [ %i.jy, %bb.ca ]
  call void @_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #30, !inline_history !1488
  br label %.body47

.body47:                                          ; preds = %bb.bz, %bb.bt, %bb.dm
  %.pn85.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn85.pn.pn.pn.i, %bb.dm ], [ %i.jx, %bb.bz ], [ %i.jj, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.dn

bb.dn:                                            ; preds = %.body47, %bb.by
  %.pn85.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn.i, %.body47 ], [ %i.jw, %bb.by ]
  call void @_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30, !inline_history !1488
  br label %.body62

.body62:                                          ; preds = %bb.bx, %bb.bo, %bb.dn
  %.pn85.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn.pn.i, %bb.dn ], [ %i.jv, %bb.bx ], [ %i.io, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj, %bb.as, %.body62
  %.pn97.i = phi { ptr, i32 } [ %i.fo, %bb.aj ], [ %i.gj, %bb.as ], [ %.pn85.pn.pn.pn.pn.pn.pn.i, %.body62 ], [ %lpad.loopexit.split-lp277, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #30, !inline_history !1488
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn97.i

"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_0EEvS6_S8_SC_T_.exit": ; preds = %bb.ak, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.ax, %bb.aw, %bb.bk, %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !883 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !884 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ng, %i.ni
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_0EEvS6_S8_SC_T_.exit", %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.nu, %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i ], [ %i.ng, %"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_0EEvS6_S8_SC_T_.exit" ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !872 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 12 ; 3 uses
  %i.nm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !571
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.nn = load i32, ptr %i.nl, align 4, !tbaa !583 ; 2 uses
  %i.no = add nsw i32 %i.nn, -1
  store i32 %i.no, ptr %i.nl, align 4, !tbaa !583
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.np = atomicrmw volatile add ptr %i.nl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.dq, %bb.dp
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nn, %bb.dp ], [ %i.np, %bb.dq ]
  %i.nq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.nq, label %bb.dr, label %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i

bb.dr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  %i.nr = load ptr, ptr %i.nk, align 8, !tbaa !624
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %i.nk) #30, !inline_history !1504
  br label %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i: ; preds = %bb.dr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.nu, %i.ni
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt8weak_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.nf, align 8, !tbaa !883
  br label %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_0EEvS6_S8_SC_T_.exit"
  %i.nv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ng, %"_ZN8facebook5velox4exec4Expr21evaluateSharedSubexprIZNS2_7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE3$_0EEvS6_S8_SC_T_.exit" ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.nv, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit.i, label %bb.ds

bb.ds:                                            ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !879
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = ptrtoint ptr %i.nv to i64
  %i.oa = sub i64 %i.ny, %i.nz
  call void @_ZdlPvm(ptr noundef nonnull %i.nv, i64 noundef %i.oa) #45
  br label %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit.i

_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit.i: ; preds = %bb.ds, %_ZSt8_DestroyIPSt8weak_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.ob = load ptr, ptr %4, align 8, !tbaa !876   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ob, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit.i
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !885
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = ptrtoint ptr %i.ob to i64
  %i.og = sub i64 %i.oe, %i.of
  call void @_ZdlPvm(ptr noundef nonnull %i.ob, i64 noundef %i.og) #45
  br label %_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev.exit

_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev.exit: ; preds = %_ZNSt6vectorISt8weak_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit.i, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.du

_ZNK8facebook5velox4exec4Expr26shouldEvaluateSharedSubexpERNS1_7EvalCtxE.exit.thread: ; preds = %bb.c, %bb.d, %_ZNK8facebook5velox4exec4Expr26shouldEvaluateSharedSubexpERNS1_7EvalCtxE.exit
  tail call void @_ZN8facebook5velox4exec4Expr11evalAllImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.du

bb.du:                                            ; preds = %_ZNK8facebook5velox4exec4Expr26shouldEvaluateSharedSubexpERNS1_7EvalCtxE.exit.thread, %_ZN8facebook5velox4exec4Expr21InputForSharedResultsD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec4Expr13evalEncodingsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !1517 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::LocalSelectivityVector", align 8 ; 8 uses
  %5 = alloca %"class.facebook::velox::exec::LocalSelectivityVector", align 8 ; 8 uses
  %6 = alloca %"class.facebook::velox::exec::LocalDecodedVector", align 8 ; 8 uses
  %7 = alloca %"struct.facebook::velox::exec::Expr::PeelEncodingsResult", align 8 ; 6 uses
  %8 = alloca %"class.std::shared_ptr.66", align 16 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.66", align 16 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.66", align 16 ; 6 uses
  %11 = alloca %"struct.facebook::velox::exec::ContextSaver", align 8 ; 10 uses
  %12 = alloca %"class.std::shared_ptr.66", align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.b = load i8, ptr %i.a, align 1, !tbaa !717, !range !607, !noundef !608
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread61

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 283
  %i.e = load i8, ptr %i.d, align 1, !tbaa !719, !range !607, !noundef !608
  %i.f = trunc nuw i8 %i.e to i1
  %.not.i = xor i1 %i.f, true
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 481
  %i.h = load i8, ptr %i.g, align 1, !range !607
  %i.i = trunc nuw i8 %i.h to i1
  %.0.i = select i1 %.not.i, i1 %i.i, i1 false
  br i1 %.0.i, label %.thread61, label %_ZNK8facebook5velox4exec4Expr31skipFieldDependentOptimizationsEv.exit

_ZNK8facebook5velox4exec4Expr31skipFieldDependentOptimizationsEv.exit: ; preds = %bb.b
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %14 = load ptr, ptr %13, align 8, !tbaa !746    ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %16 = load ptr, ptr %15, align 8, !tbaa !746    ; 2 uses
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %.thread61, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox4exec4Expr31skipFieldDependentOptimizationsEv.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !771
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %i.l = load i8, ptr %i.k, align 2, !tbaa !923, !range !607, !noundef !608
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.lr.ph, label %.thread61

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

bb.d:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_16isFlatERKNS0_10BaseVectorE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.051.063, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, %16
  br i1 %i.p, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.051.063 = phi ptr [ %14, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.051.063, align 8, !tbaa !744 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 520 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !867  ; 2 uses
  %.not.i27 = icmp eq i32 %i.s, -1
  br i1 %.not.i27, label %bb.f, label %_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !868
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !638  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call ptr @__dynamic_cast(ptr nonnull %i.v, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #30 ; 2 uses
  %.not7.i = icmp eq ptr %i.x, null
  br i1 %.not7.i, label %.thread.i, label %bb.h, !prof !869

.thread.i:                                        ; preds = %bb.g, %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxEE18veloxCheckFailArgs, ptr noundef nonnull @.str.72) #44
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 488
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !591
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !642
  %i.ac = tail call noundef i32 @_ZNK8facebook5velox7RowType11getChildIdxESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(96) %i.x, i64 %i.ab, ptr %i.z) ; 2 uses
  store i32 %i.ac, ptr %i.r, align 8, !tbaa !867
  br label %_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit

_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit: ; preds = %bb.e, %bb.h
  %.0.i28 = phi i32 [ %i.ac, %bb.h ], [ %i.s, %bb.e ]
  %i.ad = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox4exec7EvalCtx8getFieldEi(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %.0.i28)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !731 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !854 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 9
  br i1 %i.ah, label %bb.i, label %_ZN8facebook5velox4exec12_GLOBAL__N_16isFlatERKNS0_10BaseVectorE.exit

bb.i:                                             ; preds = %_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !1526, !range !607, !noundef !608
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %.thread61

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !624
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 288
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ae), !inline_history !1512
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !854
  br label %_ZN8facebook5velox4exec12_GLOBAL__N_16isFlatERKNS0_10BaseVectorE.exit

_ZN8facebook5velox4exec12_GLOBAL__N_16isFlatERKNS0_10BaseVectorE.exit: ; preds = %_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit, %bb.j
  %.0.i29 = phi i32 [ %i.aq, %bb.j ], [ %i.ag, %_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit ]
  %i.ar = add i32 %.0.i29, -3
  %i.as = icmp ult i32 %i.ar, -2
  br i1 %i.as, label %.thread61, label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %2, align 8, !tbaa !771   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %11, i8 0, i64 49, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %.pre, ptr %4, align 8, !tbaa !794
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.au, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %.pre, ptr %5, align 8, !tbaa !794
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.av, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %.pre, ptr %6, align 8, !tbaa !817
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !818
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZN8facebook5velox4exec4Expr13peelEncodingsERNS1_7EvalCtxERNS1_12ContextSaverERKNS0_17SelectivityVectorERNS1_18LocalDecodedVectorERNS1_22LocalSelectivityVectorESD_(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::exec::Expr::PeelEncodingsResult") align 8 %7, ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(88) %11, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.k unwind label %bb.o, !inline_history !1513

bb.k:                                             ; preds = %._crit_edge
  %i.ax = load ptr, ptr %7, align 8, !tbaa !925   ; 5 uses
  %.not.i37 = icmp eq ptr %i.ax, null
  br i1 %.not.i37, label %bb.aw, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !759
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !760
  %i.bc = icmp slt i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !926, !range !607, !noundef !608
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN8facebook5velox4exec4Expr12evalWithMemoERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %i.ax, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.r unwind label %bb.p, !inline_history !1513

bb.o:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.q:                                             ; preds = %bb.m
  invoke void @_ZN8facebook5velox4exec4Expr13evalWithNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %i.ax, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.r unwind label %bb.p, !inline_history !1513

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !927
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %2, align 8, !tbaa !771
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !793
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !619 ; 2 uses
  %i.bq = load <2 x ptr>, ptr %8, align 16, !tbaa !604
  store <2 x ptr> %i.bq, ptr %10, align 16, !tbaa !604
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !571
  %.not.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !583
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !583
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bv = atomicrmw volatile add ptr %i.br, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i: ; preds = %bb.u, %bb.t, %bb.r
  invoke void @_ZNK8facebook5velox4exec14PeeledEncoding4wrapERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolES3_INS0_10BaseVectorEERKNS0_17SelectivityVectorE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.66") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef %i.bm, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.v unwind label %bb.au, !inline_history !1513

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.by = load <2 x ptr>, ptr %9, align 16, !tbaa !604
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !619 ; 8 uses
  store <2 x ptr> %i.by, ptr %12, align 16, !tbaa !604
  %.not.i.i.i.i16.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i16.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ca, align 8, !tbaa !621
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ce, align 4, !tbaa !622
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !624
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec4Expr13evalEncodingsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a

bb.bg:                                            ; preds = %bb.be
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i36.i unwind label %bb.bi, !inline_history !1513

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i36.i: ; preds = %bb.bg
  %.pr.pre.i37.i = load ptr, ptr %i.au, align 8, !tbaa !736 ; 2 uses
  %.not.i.i38.i = icmp eq ptr %.pr.pre.i37.i, null
  br i1 %.not.i.i38.i, label %bb.bk, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i31.i

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i31.i: ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i36.i, %bb.bd
  %.pr7.i32.i = phi ptr [ %.pr.pre.i37.i, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i36.i ], [ %i.fg, %bb.bd ] ; 3 uses
  %i.fs = load ptr, ptr %.pr7.i32.i, align 8, !tbaa !738 ; 3 uses
  %.not.i.i.i.i.i.i.i33.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i.i33.i, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i34.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i31.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.pr7.i32.i, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !739
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #45, !inline_history !1513
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i34.i

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i34.i: ; preds = %bb.bh, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i31.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr7.i32.i, i64 noundef 40) #45, !inline_history !1513
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #46, !inline_history !1513
  unreachable

bb.bj:                                            ; preds = %bb.av, %bb.o
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.av ], [ %i.bg, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #30, !inline_history !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #30, !inline_history !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30, !inline_history !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body40

bb.bk:                                            ; preds = %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i34.i, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i36.i, %bb.bf, %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ga = load ptr, ptr %11, align 8, !tbaa !929  ; 2 uses
  %.not.i30 = icmp eq ptr %i.ga, null
  br i1 %.not.i30, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN8facebook5velox4exec7EvalCtx7restoreERNS1_12ContextSaverE(ptr noundef nonnull align 8 dereferenceable(104) %i.ga, ptr noundef nonnull align 8 dereferenceable(88) %11)
          to label %bb.bn unwind label %bb.bm, !inline_history !1516

bb.bm:                                            ; preds = %bb.bl
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body40

.body40:                                          ; preds = %bb.bj, %bb.bm
  %eh.lpad-body41 = phi { ptr, i32 } [ %i.gb, %bb.bm ], [ %.pn.pn.pn.i, %bb.bj ]
  call void @_ZN8facebook5velox4exec12ContextSaverD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %11) #30, !inline_history !1516
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  call void @_ZN8facebook5velox4exec12ContextSaverD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %11) #30, !inline_history !1516
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.gc = load ptr, ptr %12, align 16, !tbaa !731
  %.not.i31 = icmp eq ptr %i.gc, null
  br i1 %.not.i31, label %.critedge, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZNK8facebook5velox4exec7EvalCtx16moveOrCopyResultERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorERS5_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bq:                                            ; preds = %bb.bo
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !619 ; 8 uses
  %.not.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i, label %bb.cd, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gh = load atomic i64, ptr %i.gg acquire, align 8 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 4294967297
  %i.gj = trunc i64 %i.gh to i32                  ; 2 uses
  br i1 %i.gi, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.gg, align 8, !tbaa !621
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i32 0, ptr %i.gk, align 4, !tbaa !622
  %i.gl = load ptr, ptr %i.gf, align 8, !tbaa !624
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #30, !inline_history !11
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !624
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #30, !inline_history !11
  br label %bb.cd

bb.bt:                                            ; preds = %bb.br
  %i.gr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !571
  %.not.i.i.i = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gs = add nsw i32 %i.gj, -1
  store i32 %i.gs, ptr %i.gg, align 8, !tbaa !583
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.gt = atomicrmw volatile add ptr %i.gg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i = phi i32 [ %i.gj, %bb.bu ], [ %i.gt, %bb.bv ]
  %i.gu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.gu, label %bb.bw, label %bb.cd, !prof !609

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #30
  br label %bb.cd

.body:                                            ; preds = %.body40, %bb.bp
  %.pn = phi { ptr, i32 } [ %i.gd, %bb.bp ], [ %eh.lpad-body41, %.body40 ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %bb.bn
  %i.gv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !619 ; 8 uses
  %.not.i.i32 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i32, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, label %bb.bx

bb.bx:                                            ; preds = %.critedge
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 4 uses
  %i.gy = load atomic i64, ptr %i.gx acquire, align 8 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 4294967297
  %i.ha = trunc i64 %i.gy to i32                  ; 2 uses
  br i1 %i.gz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.gx, align 8, !tbaa !621
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store i32 0, ptr %i.hb, align 4, !tbaa !622
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !624
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #30, !inline_history !11
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !624
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #30, !inline_history !11
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36

bb.bz:                                            ; preds = %bb.bx
  %i.hi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !571
  %.not.i.i.i33 = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i33, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hj = add nsw i32 %i.ha, -1
  store i32 %i.hj, ptr %i.gx, align 8, !tbaa !583
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34

bb.cb:                                            ; preds = %bb.bz
  %i.hk = atomicrmw volatile add ptr %i.gx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i35 = phi i32 [ %i.ha, %bb.ca ], [ %i.hk, %bb.cb ]
  %i.hl = icmp eq i32 %.0.i.i.i.i35, 1
  br i1 %i.hl, label %bb.cc, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, !prof !609

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36: ; preds = %.critedge, %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %.thread61

bb.cd:                                            ; preds = %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bs, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ce

.thread61:                                        ; preds = %bb.i, %_ZN8facebook5velox4exec12_GLOBAL__N_16isFlatERKNS0_10BaseVectorE.exit, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, %bb.b, %bb.c, %_ZNK8facebook5velox4exec4Expr31skipFieldDependentOptimizationsEv.exit, %bb.a
  call void @_ZN8facebook5velox4exec4Expr13evalWithNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.thread61
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN8facebook5velox4exec9singleRowERNS1_22LocalSelectivityVectorEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 !guid !1527 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %class.anon.499, align 8            ; 6 uses
  %3 = alloca %class.anon.501, align 8            ; 6 uses
  %i.b = add nsw i32 %1, 1
  %i.c = tail call noundef ptr @_ZN8facebook5velox4exec22LocalSelectivityVector3getEib(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.b, i1 noundef zeroext false) ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !738
  %i.e = sext i32 %1 to i64
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !571
  %i.i = trunc i32 %1 to i8
  %i.j = and i8 %i.i, 7
  %i.k = shl nuw i8 1, %i.j
  %i.l = or i8 %i.h, %i.k
  store i8 %i.l, ptr %i.g, align 1, !tbaa !571
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 37 ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !829
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !738  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !820  ; 6 uses
  %.not.i.i.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.q = and i32 %i.p, 2147483584                 ; 4 uses
  %i.r = zext nneg i32 %i.q to i64
  %.not37.i.i.not.i12.not = icmp eq i32 %i.q, 0
  br i1 %.not37.i.i.not.i12.not, label %.critedge.i.i.i, label %.lr.ph

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i13, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.r
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !13

.lr.ph:                                           ; preds = %bb.b, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i13 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.s = lshr exact i64 %indvars.iv.i13, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !592  ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !13

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.b
  %.not38.i.i.i = icmp eq i32 %i.p, %i.q
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.v = lshr i32 %i.p, 6
  %i.w = and i32 %i.p, 63
  %i.x = zext nneg i32 %i.w to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i43.i.i.i, -1
  %i.z = zext nneg i32 %i.v to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !592
  %i.ac = and i64 %i.ab, %i.y                     ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.c, %.critedge.i.i.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 0, ptr %i.ad, align 4, !tbaa !759
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 0, ptr %i.ae, align 8, !tbaa !760
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i16 256, ptr %i.af, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph
  %i.ag = trunc nuw nsw i64 %indvars.iv.i13 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.c
  %.sink67.i.i.i = phi i64 [ %i.ac, %bb.c ], [ %i.u, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.q, %bb.c ], [ %i.ag, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %.sink65.i.i.i, %i.ai   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !759
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 -1, ptr %i.a, align 4, !tbaa !583
  store ptr %i.n, ptr %2, align 8, !tbaa !823
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.al, align 8, !tbaa !824
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.am, align 8, !tbaa !825
  store ptr %i.n, ptr %3, align 8, !tbaa !827
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.an, align 8, !tbaa !824
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.ao, align 8, !tbaa !828
  %i.ap = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.aj, i32 noundef %i.p, ptr noundef nonnull byval(%class.anon.499) align 8 %2, ptr noundef nonnull byval(%class.anon.501) align 8 %3) ; 0 uses
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ar = add nsw i32 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !760
  store i8 0, ptr %i.m, align 1, !tbaa !829
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox4exec22LocalSelectivityVector3getEib(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1535 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !736  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !802, !nonnull !608, !align !803 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !804, !range !607, !noalias !1536, !noundef !608
  %i.f = trunc nuw i8 %i.e to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !880, !noalias !1536
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %.pre3.i = load ptr, ptr %.phi.trans.insert2.i, align 8, !tbaa !880, !noalias !1536 ; 2 uses
  %i.g = icmp eq ptr %.pre.i, %.pre3.i            ; 2 uses
  br i1 %i.f, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %.critedge.thread.i, label %bb.d, !prof !586

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx20getSelectivityVectorEvE18veloxCheckFailArgs) #44, !noalias !1536
  unreachable

.critedge.i:                                      ; preds = %bb.b
  br i1 %i.g, label %.critedge.thread.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.c
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #47, !noalias !1537 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 37
  store i8 0, ptr %i.i, align 1, !tbaa !829, !noalias !1537
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.h, i8 0, i64 36, i1 false), !noalias !1537
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i: ; preds = %.critedge.i
  %i.j = getelementptr inbounds i8, ptr %.pre3.i, i64 -8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !736, !noalias !1536
  store ptr null, ptr %i.j, align 8, !tbaa !736, !noalias !1536
  store ptr %i.j, ptr %.phi.trans.insert2.i, align 8, !tbaa !805, !noalias !1536
  %i.l = inttoptr i64 %i.k to ptr
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit

_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit: ; preds = %.critedge.thread.i, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i
  %.sink.i = phi ptr [ %i.h, %.critedge.thread.i ], [ %i.l, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i ] ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !736  ; 4 uses
  store ptr %.sink.i, ptr %i.a, align 8, !tbaa !736
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !738  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !739
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 40) #45
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !736
  br label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i.i, %bb.a
  %i.t = phi ptr [ %.sink.i, %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit ], [ %.pre, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 8 uses
  %i.u = sext i32 %1 to i64
  %i.v = add nsw i64 %i.u, 63
  %i.w = lshr i64 %i.v, 6                         ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !910  ; 4 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !738  ; 5 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN8facebook5velox4exec14PeeledEncodingELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !621
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !622
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !624
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !624
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !571
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !583
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !609

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4exec7EvalCtx16moveOrCopyResultERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorERS5_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1559 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !731
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.d = load i8, ptr %i.c, align 1, !range !607
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.e
  br i1 %or.cond.i, label %_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit.thread, label %_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit

_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !882
  %i.h = tail call noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVectoreqERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.g, ptr noundef nonnull align 8 dereferenceable(38) %2)
  br i1 %i.h, label %_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit
  %i.i = load ptr, ptr %3, align 8, !tbaa !731    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !932
  tail call void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null)
  %i.m = load ptr, ptr %3, align 8, !tbaa !731    ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !731
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !624
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(94) %i.m, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef null)
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit.thread: ; preds = %bb.a, %_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit
  %i.r = load ptr, ptr %1, align 8, !tbaa !731
  store ptr %i.r, ptr %3, align 8, !tbaa !731
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !619  ; 4 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !619  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit.thread
  %.not7.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !571
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.w, align 4, !tbaa !583
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !583
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !619
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.ab = phi ptr [ %i.v, %bb.c ], [ %i.v, %bb.e ], [ %.pr.pre.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ac, align 8, !tbaa !621
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !622
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !624
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #30, !inline_history !21
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !624
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #30, !inline_history !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !571
  %.not.i9.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !583
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.af, %bb.j ], [ %i.ap, %bb.k ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !609

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.u, ptr %i.s, align 8, !tbaa !619
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %_ZNK8facebook5velox4exec7EvalCtx23resultShouldBePreservedERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorE.exit.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec4Expr13evalWithNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !1560 {
bb.a:
  %4 = alloca %"class.facebook::velox::exec::LocalSelectivityVector", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !759
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !760
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %2, align 8, !tbaa !771
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !793
  tail call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_121checkOrSetEmptyResultERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS3_INS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = load i8, ptr %i.i, align 8, !tbaa !745, !range !607, !noundef !608
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %.thread67

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 283
  %i.m = load i8, ptr %i.l, align 1, !tbaa !719, !range !607, !noundef !608
  %i.n = trunc nuw i8 %i.m to i1
  %.not.i = xor i1 %i.n, true
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 481
  %i.p = load i8, ptr %i.o, align 1, !range !607
  %i.q = trunc nuw i8 %i.p to i1
  %.0.i = select i1 %.not.i, i1 %i.q, i1 false
  br i1 %.0.i, label %.thread67, label %_ZNK8facebook5velox4exec4Expr31skipFieldDependentOptimizationsEv.exit

_ZNK8facebook5velox4exec4Expr31skipFieldDependentOptimizationsEv.exit: ; preds = %bb.d
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %6 = load ptr, ptr %5, align 8, !tbaa !746      ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %8 = load ptr, ptr %7, align 8, !tbaa !746      ; 2 uses
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %.thread67, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec4Expr31skipFieldDependentOptimizationsEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.060.073 = phi ptr [ %6, %.lr.ph ], [ %i.an, %bb.j ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.060.073, align 8, !tbaa !744 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 520 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !867  ; 2 uses
  %.not.i43 = icmp eq i32 %i.u, -1
  br i1 %.not.i43, label %bb.f, label %_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !868
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !638  ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #30 ; 2 uses
  %.not7.i = icmp eq ptr %i.z, null
  br i1 %.not7.i, label %.thread.i, label %bb.h, !prof !869

.thread.i:                                        ; preds = %bb.g, %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxEE18veloxCheckFailArgs, ptr noundef nonnull @.str.72) #44
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 488
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !591
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !642
  %i.ae = tail call noundef i32 @_ZNK8facebook5velox7RowType11getChildIdxESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 %i.ad, ptr %i.ab) ; 2 uses
  store i32 %i.ae, ptr %i.t, align 8, !tbaa !867
  br label %_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit

_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit: ; preds = %bb.e, %bb.h
  %.0.i44 = phi i32 [ %i.ae, %bb.h ], [ %i.u, %bb.e ]
  %i.af = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox4exec7EvalCtx8getFieldEi(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %.0.i44) ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !731
  %i.ah = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.ag)
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !731 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !624
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ai)
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox4exec14FieldReference5indexERKNS1_7EvalCtxE.exit, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.060.073, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.an, %8
  br i1 %.not, label %.thread67, label %bb.e

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ao = load ptr, ptr %2, align 8, !tbaa !771
  store ptr %i.ao, ptr %4, align 8, !tbaa !794
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !795
  %i.aq = invoke noundef zeroext i1 @_ZN8facebook5velox4exec4Expr15removeSureNullsERKNS0_17SelectivityVectorERNS1_7EvalCtxERNS1_22LocalSelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %i.aq, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !606, !range !607, !noundef !608 ; 2 uses
  store i8 1, ptr %i.ar, align 8, !tbaa !606
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !736 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !759
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !760
  %i.ay = icmp slt i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %i.at, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %._crit_edge unwind label %bb.w

._crit_edge:                                      ; preds = %bb.n
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !736
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.p:                                             ; preds = %._crit_edge, %bb.m
  %i.ba = phi ptr [ %.pre, %._crit_edge ], [ %i.at, %bb.m ]
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !738
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN8facebook5velox4exec7EvalCtx8addNullsERKNS0_17SelectivityVectorEPKmRS2_RKSt10shared_ptrIKNS0_4TypeEERS9_INS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNK8facebook5velox4exec4Expr8addNullsERKNS0_17SelectivityVectorEPKmRNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.w

_ZNK8facebook5velox4exec4Expr8addNullsERKNS0_17SelectivityVectorEPKmRNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.p
  store i8 %i.as, ptr %i.ar, align 8, !tbaa !606
  %i.bd = load ptr, ptr %i.ap, align 8            ; 3 uses
  %.not.i45 = icmp eq ptr %i.bd, null
  %i.be = ptrtoint ptr %i.bd to i64
  br i1 %.not.i45, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec4Expr8addNullsERKNS0_17SelectivityVectorEPKmRNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.bf = load ptr, ptr %4, align 8, !tbaa !802, !nonnull !608, !align !803 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !804, !range !607, !noundef !608
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.r, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 64 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !805 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !806
  %.not.i.i.i.i = icmp eq ptr %i.bk, %i.bm
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.be, ptr %i.bk, align 8, !tbaa !736
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !805
  br label %bb.ae

bb.t:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i unwind label %bb.v

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i: ; preds = %bb.t
  %.pr.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !736 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %bb.ae, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i: ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i, %bb.q
  %.pr7.i = phi ptr [ %.pr.pre.i, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i ], [ %i.bd, %bb.q ] ; 3 uses
  %i.bp = load ptr, ptr %.pr7.i, align 8, !tbaa !738 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.pr7.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !739
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i: ; preds = %bb.u, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr7.i, i64 noundef 40) #45
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #46
  unreachable

bb.w:                                             ; preds = %bb.p, %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store i8 %i.as, ptr %i.ar, align 8, !tbaa !606
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.az, %bb.o ]
  call void @_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn.pn.pn

.critedge:                                        ; preds = %bb.l
  %i.by = load ptr, ptr %i.ap, align 8            ; 3 uses
  %.not.i46 = icmp eq ptr %i.by, null
  %i.bz = ptrtoint ptr %i.by to i64
  br i1 %.not.i46, label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit55, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.ca = load ptr, ptr %4, align 8, !tbaa !802, !nonnull !608, !align !803 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !804, !range !607, !noundef !608
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.z, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i47

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 64 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !805 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !806
  %.not.i.i.i.i51 = icmp eq ptr %i.cf, %i.ch
  br i1 %.not.i.i.i.i51, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 %i.bz, ptr %i.cf, align 8, !tbaa !736
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !805
  br label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit55

bb.ab:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i52 unwind label %bb.ad

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i52: ; preds = %bb.ab
  %.pr.pre.i53 = load ptr, ptr %i.ap, align 8, !tbaa !736 ; 2 uses
  %.not.i.i54 = icmp eq ptr %.pr.pre.i53, null
  br i1 %.not.i.i54, label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit55, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i47

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i47: ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i52, %bb.y
  %.pr7.i48 = phi ptr [ %.pr.pre.i53, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i52 ], [ %i.by, %bb.y ] ; 3 uses
  %i.ck = load ptr, ptr %.pr7.i48, align 8, !tbaa !738 ; 3 uses
  %.not.i.i.i.i.i.i.i49 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i49, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i50, label %bb.ac

bb.ac:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i47
  %i.cl = getelementptr inbounds nuw i8, ptr %.pr7.i48, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !739
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i50

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i50: ; preds = %bb.ac, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i47
  call void @_ZdlPvm(ptr noundef nonnull %.pr7.i48, i64 noundef 40) #45
  br label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit55

bb.ad:                                            ; preds = %bb.ab
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #46
  unreachable

_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit55: ; preds = %.critedge, %bb.aa, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i52, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.thread67

bb.ae:                                            ; preds = %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i, %bb.s, %_ZNK8facebook5velox4exec4Expr8addNullsERKNS0_17SelectivityVectorEPKmRNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.af

.thread67:                                        ; preds = %bb.j, %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit55, %bb.d, %_ZNK8facebook5velox4exec4Expr31skipFieldDependentOptimizationsEv.exit, %bb.c
  call void @_ZN8facebook5velox4exec4Expr7evalAllERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread67, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94)) local_unnamed_addr #11

declare noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox4exec22LocalSelectivityVector3getERKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1565 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !736  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !802, !nonnull !608, !align !803 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !804, !range !607, !noalias !1566, !noundef !608
  %i.f = trunc nuw i8 %i.e to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !880, !noalias !1566
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %.pre3.i = load ptr, ptr %.phi.trans.insert2.i, align 8, !tbaa !880, !noalias !1566 ; 2 uses
  %i.g = icmp eq ptr %.pre.i, %.pre3.i            ; 2 uses
  br i1 %i.f, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %.critedge.thread.i, label %bb.d, !prof !586

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx20getSelectivityVectorEvE18veloxCheckFailArgs) #44, !noalias !1566
  unreachable

.critedge.i:                                      ; preds = %bb.b
  br i1 %i.g, label %.critedge.thread.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.c
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #47, !noalias !1567 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 37
  store i8 0, ptr %i.i, align 1, !tbaa !829, !noalias !1567
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.h, i8 0, i64 36, i1 false), !noalias !1567
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i: ; preds = %.critedge.i
  %i.j = getelementptr inbounds i8, ptr %.pre3.i, i64 -8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !736, !noalias !1566
  store ptr null, ptr %i.j, align 8, !tbaa !736, !noalias !1566
  store ptr %i.j, ptr %.phi.trans.insert2.i, align 8, !tbaa !805, !noalias !1566
  %i.l = inttoptr i64 %i.k to ptr
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit

_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit: ; preds = %.critedge.thread.i, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i
  %.sink.i = phi ptr [ %i.h, %.critedge.thread.i ], [ %i.l, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i ] ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !736  ; 4 uses
  store ptr %.sink.i, ptr %i.a, align 8, !tbaa !736
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !738  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !739
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 40) #45
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !736
  br label %_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i.i, %bb.a
  %i.t = phi ptr [ %.sink.i, %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit ], [ %.pre, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.t, ptr noundef nonnull align 8 dereferenceable(38) %1) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.w, i64 12, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = load i16, ptr %i.y, align 4
  store i16 %i.z, ptr %i.x, align 4
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !736
  ret ptr %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1568 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not4 = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  br i1 %.not4, label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !817    ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !804, !range !607, !noundef !608
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !933  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !934
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.c, ptr %i.i, align 8, !tbaa !819
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !933
  br label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit unwind label %bb.i

_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit: ; preds = %bb.f
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !819 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2

_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2: ; preds = %bb.c, %bb.b, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit
  %i.n = phi ptr [ %.pr.pre, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !738  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !739
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #45
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.g, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !936  ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !937
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 120) #45
  br label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.e, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #46
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK8facebook5velox17SelectivityVector13countSelectedEv(ptr noundef nonnull align 8 dereferenceable(38) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1570 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !829, !range !607, !noundef !608
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr %i.a, align 4, !range !607
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_2
