inline.NumInlined: 1077
inline.NumDeleted: 530
begin_hunk_0_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, %.lr.ph.i
  %.sroa.07.022.i = phi ptr [ %.sroa.07.019.i, %.lr.ph.i ], [ %.sroa.07.0.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ] ; 17 uses
  %.021.i = phi i1 [ false, %.lr.ph.i ], [ %14, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
._crit_edge.thread.i.i.i.i:                       ; preds = %bb.q, %._crit_edge.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i
  %.1.i.i.i.i = phi i1 [ %.03057.i.i.i.i, %._crit_edge.i.i.i.i ], [ true, %bb.q ], [ %.03057.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8CallInstENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i ] ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.pre.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i, label %bb.h, !llvm.loop !88

_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i: ; preds = %._crit_edge.thread.i.i.i.i, %bb.g
  %.0.ph.i.i.i = phi i1 [ false, %bb.g ], [ %.1.i.i.i.i, %._crit_edge.thread.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i

_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i, %bb.f, %bb.b
  %.0.i.i.i = phi i1 [ false, %bb.f ], [ false, %bb.b ], [ %.0.ph.i.i.i, %_ZN6hermes17CallGraphProvider19hasUnknownCallsitesEPNS_8FunctionE.exit.thread.sink.split.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 88 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 80 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 16
end_hunk_1
begin_hunk_2_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i
  %.0.in.i.i = phi i1 [ %.0.i.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl11inferParamsEPN6hermes8FunctionE.exit.i.i ], [ %13, %.loopexit.i.i ]
  %.sroa.0100.0121.i.i = load ptr, ptr %i.cv, align 8, !tbaa !7 ; 2 uses
  %.not103122.i.i = icmp eq ptr %.sroa.0100.0121.i.i, %i.cw
  br i1 %.not103122.i.i, label %._crit_edge127.i.i, label %.lr.ph126.i.i

._crit_edge127.i.i:                               ; preds = %._crit_edge.i.i, %bb.r
  %.027.lcssa.i.i = phi i8 [ 0, %bb.r ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.cy, align 2
  %i.db = load i8, ptr %i.cx, align 8, !tbaa !89
  %i.dc = icmp eq i8 %i.db, -126
end_hunk_2
begin_hunk_3_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  br label %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i

_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i: ; preds = %bb.x, %._crit_edge55.i.i.i, %._crit_edge127.i.i
  %.0.i31.i.i = phi i8 [ %.027.lcssa.i.i, %._crit_edge127.i.i ], [ 1, %bb.x ], [ %.027.lcssa.i.i, %._crit_edge55.i.i.i ] ; 3 uses
  %i.du = load i8, ptr %i.cz, align 8, !tbaa !90, !range !67, !noundef !68
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %.loopexit.i.i, label %bb.dc
end_hunk_3
begin_hunk_4_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0100.0124.i.i, i64 56 ; 2 uses
  %.sroa.096.0112.i.i = load ptr, ptr %i.dw, align 8, !tbaa !7 ; 2 uses
  %.not104113.i.i = icmp eq ptr %.sroa.096.0112.i.i, %i.dx
  br i1 %.not104113.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i, %.lr.ph126.i.i
  %.1.lcssa.i.i = phi i8 [ %.027123.i.i, %.lr.ph126.i.i ], [ %7, %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0100.0124.i.i, i64 8
  %.sroa.0100.0.i.i = load ptr, ptr %i.dy, align 8, !tbaa !7 ; 2 uses
  %.not103.i.i = icmp eq ptr %.sroa.0100.0.i.i, %i.cw
  br i1 %.not103.i.i, label %._crit_edge127.i.i, label %.lr.ph126.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph126.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i
  %.sroa.096.0115.i.i = phi ptr [ %.sroa.096.0.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i ], [ %.sroa.096.0112.i.i, %.lr.ph126.i.i ] ; 30 uses
  %.1114.i.i = phi i8 [ %7, %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i ], [ %.027123.i.i, %.lr.ph126.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.096.0115.i.i, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.096.0115.i.i, i64 18 ; 18 uses
  %.sroa.0.0.copyload.i.i32.i.i = load i32, ptr %i.ea, align 2 ; 19 uses
end_hunk_4
begin_hunk_5_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a

_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i: ; preds = %bb.db, %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, %_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i, %_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i, %_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i, %_ZL15inferMemoryTypePN6hermes5ValueE.exit95.i.i, %_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i, %_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i, %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i, %.lr.ph.i.i
  %.0.i33.i.i = phi i1 [ %i.rt, %bb.db ], [ %i.fv, %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i ], [ %i.gh, %_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i ], [ %i.hi, %_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i ], [ %i.ig, %_ZL15inferMemoryTypePN6hermes5ValueE.exit95.i.i ], [ %i.ip, %_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i ], [ %i.iy, %_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i ], [ %i.lc, %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i ], [ %i.ll, %_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i ], [ %i.ro, %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i ], [ false, %.lr.ph.i.i ]
  %6 = zext i1 %.0.i33.i.i to i8
  %7 = or i8 %.1114.i.i, %6                       ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.096.0115.i.i, i64 8
  %.sroa.096.0.i.i = load ptr, ptr %i.ru, align 8, !tbaa !7 ; 2 uses
  %.not104.i.i = icmp eq ptr %.sroa.096.0.i.i, %i.dx
  br i1 %.not104.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dc:                                            ; preds = %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i
  %i.rv = load ptr, ptr %i.da, align 8, !tbaa !147 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not129.i.i, label %.loopexit.i.i, label %.lr.ph133.i.i

.lr.ph133.i.i:                                    ; preds = %bb.dc, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i
  %.2131.i.i = phi i8 [ %9, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ], [ %.0.i31.i.i, %bb.dc ]
  %.028130.i.i = phi ptr [ %i.ta, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ], [ %i.rx, %bb.dc ] ; 2 uses
  %i.sc = load ptr, ptr %.028130.i.i, align 8, !tbaa !148 ; 2 uses
  %i.sd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.sc) #8 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  br label %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i

_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i:    ; preds = %bb.di, %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i
  %8 = zext i1 %i.sz to i8
  %9 = or i8 %.2131.i.i, %8                       ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.028130.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ta, %i.sb
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph133.i.i

.loopexit.i.i:                                    ; preds = %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i, %bb.dc, %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i
  %.3.i.i = phi i8 [ %.0.i31.i.i, %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i ], [ %.0.i31.i.i, %bb.dc ], [ %9, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ] ; 2 uses
  %10 = trunc nuw i8 %.3.i.i to i1
  %11 = zext i1 %.0.in.i.i to i8
  %12 = or i8 %.3.i.i, %11
  %13 = icmp ne i8 %12, 0                         ; 2 uses
  br i1 %10, label %bb.r, label %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, !llvm.loop !149

_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i: ; preds = %.loopexit.i.i
  %14 = or i1 %.021.i, %13                        ; 2 uses
  call void @_ZN6hermes17CallGraphProviderD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 8
end_hunk_7
begin_hunk_8_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not.i, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit, label %bb.b

_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit: ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, %bb.a
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %14, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ]
  ret i1 %.0.lcssa.i
}

end_hunk_8
