inline.NumInlined: 1539
inline.NumDeleted: 776
begin_hunk_0_@_ZN6hermes22LowerNumericProperties13runOnFunctionEPNS_8FunctionE:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i32, i64 1 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.be, %i.as
  br i1 %.not.i.i.i35, label %.critedge.i.i.i36, label %.preheader.i.i.i30, !llvm.loop !241

.critedge.i.i.i36:                                ; preds = %bb.o
  %.not43.i.i.i37 = icmp eq i64 %.fr.i.i.i34, 4294967295
  br i1 %.not43.i.i.i37, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38: ; preds = %.critedge.i.i.i36
  %extract.t.i39 = trunc nuw i64 %.fr.i.i.i34 to i32
  %i.bf = uitofp i32 %extract.t.i39 to double
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split

bb.p:                                             ; preds = %bb.i
  %i.bg = add i8 %i.t, -39
  %i.bh = icmp ult i8 %i.bg, 4
  br i1 %i.bh, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bi = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0104.0115, i32 noundef 2) #12 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !15
  %.not.i43 = icmp eq i8 %i.bj, 116
  br i1 %.not.i43, label %bb.r, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %.sroa.0.0.copyload.i.i45 = load ptr, ptr %i.bk, align 8, !tbaa !237 ; 2 uses
  %.sroa.0.0.copyload.i46 = load ptr, ptr %.sroa.0.0.copyload.i.i45, align 8, !tbaa !238 ; 3 uses
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i45, i64 8
  %.sroa.2.0.copyload.i48 = load i64, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !239 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i46, i64 %.sroa.2.0.copyload.i48
  %i.bm = icmp samesign eq i64 %.sroa.2.0.copyload.i48, 0
  br i1 %i.bm, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i8, ptr %.sroa.0.0.copyload.i46, align 1, !tbaa !240
  %i.bo = icmp eq i8 %i.bn, 48
  br i1 %i.bo, label %bb.t, label %.preheader.i.i.i49

bb.t:                                             ; preds = %bb.s
  %i.bp = icmp eq i64 %.sroa.2.0.copyload.i48, 1
  br i1 %i.bp, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

.preheader.i.i.i49:                               ; preds = %bb.s, %bb.v
  %.024.i.i.i50 = phi i64 [ %.fr.i.i.i53, %bb.v ], [ 0, %bb.s ]
  %.0.i.i.i51 = phi ptr [ %i.bx, %bb.v ], [ %.sroa.0.0.copyload.i46, %bb.s ] ; 2 uses
  %i.bq = load i8, ptr %.0.i.i.i51, align 1, !tbaa !240 ; 2 uses
  %i.br = add i8 %i.bq, -58
  %or.cond.i.i.i52 = icmp ult i8 %i.br, -10
  br i1 %or.cond.i.i.i52, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.u

bb.u:                                             ; preds = %.preheader.i.i.i49
  %i.bs = mul nuw nsw i64 %.024.i.i.i50, 10
  %i.bt = and i8 %i.bq, 15
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = add nuw nsw i64 %i.bs, %i.bu
  %.fr.i.i.i53 = freeze i64 %i.bv                 ; 4 uses
  %i.bw = icmp samesign ult i64 %.fr.i.i.i53, 4294967296
  br i1 %i.bw, label %bb.v, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i51, i64 1 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.bx, %i.bl
  br i1 %.not.i.i.i54, label %.critedge.i.i.i55, label %.preheader.i.i.i49, !llvm.loop !241

.critedge.i.i.i55:                                ; preds = %bb.v
  %.not43.i.i.i56 = icmp eq i64 %.fr.i.i.i53, 4294967295
  br i1 %.not43.i.i.i56, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i57

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i57: ; preds = %.critedge.i.i.i55
  %extract.t.i58 = trunc nuw i64 %.fr.i.i.i53 to i32
  %i.by = uitofp i32 %extract.t.i58 to double
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split

bb.w:                                             ; preds = %bb.p
  switch i8 %i.t, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit [
    i8 44, label %bb.x
    i8 43, label %bb.ad
  ]

bb.x:                                             ; preds = %bb.w
  %i.bz = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0104.0115, i32 noundef 1) #12 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !15
  %.not.i62 = icmp eq i8 %i.ca, 116
  br i1 %.not.i62, label %bb.y, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %.sroa.0.0.copyload.i.i64 = load ptr, ptr %i.cb, align 8, !tbaa !237 ; 2 uses
  %.sroa.0.0.copyload.i65 = load ptr, ptr %.sroa.0.0.copyload.i.i64, align 8, !tbaa !238 ; 3 uses
  %.sroa.2.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i64, i64 8
  %.sroa.2.0.copyload.i67 = load i64, ptr %.sroa.2.0..sroa_idx.i66, align 8, !tbaa !239 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i65, i64 %.sroa.2.0.copyload.i67
  %i.cd = icmp samesign eq i64 %.sroa.2.0.copyload.i67, 0
  br i1 %i.cd, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = load i8, ptr %.sroa.0.0.copyload.i65, align 1, !tbaa !240
  %i.cf = icmp eq i8 %i.ce, 48
  br i1 %i.cf, label %bb.aa, label %.preheader.i.i.i68

bb.aa:                                            ; preds = %bb.z
  %i.cg = icmp eq i64 %.sroa.2.0.copyload.i67, 1
  br i1 %i.cg, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

.preheader.i.i.i68:                               ; preds = %bb.z, %bb.ac
  %.024.i.i.i69 = phi i64 [ %.fr.i.i.i72, %bb.ac ], [ 0, %bb.z ]
  %.0.i.i.i70 = phi ptr [ %i.co, %bb.ac ], [ %.sroa.0.0.copyload.i65, %bb.z ] ; 2 uses
  %i.ch = load i8, ptr %.0.i.i.i70, align 1, !tbaa !240 ; 2 uses
  %i.ci = add i8 %i.ch, -58
  %or.cond.i.i.i71 = icmp ult i8 %i.ci, -10
  br i1 %or.cond.i.i.i71, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i.i68
  %i.cj = mul nuw nsw i64 %.024.i.i.i69, 10
  %i.ck = and i8 %i.ch, 15
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = add nuw nsw i64 %i.cj, %i.cl
  %.fr.i.i.i72 = freeze i64 %i.cm                 ; 4 uses
  %i.cn = icmp samesign ult i64 %.fr.i.i.i72, 4294967296
  br i1 %i.cn, label %bb.ac, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i70, i64 1 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.co, %i.cc
  br i1 %.not.i.i.i73, label %.critedge.i.i.i74, label %.preheader.i.i.i68, !llvm.loop !241

.critedge.i.i.i74:                                ; preds = %bb.ac
  %.not43.i.i.i75 = icmp eq i64 %.fr.i.i.i72, 4294967295
  br i1 %.not43.i.i.i75, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i76

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i76: ; preds = %.critedge.i.i.i74
  %extract.t.i77 = trunc nuw i64 %.fr.i.i.i72 to i32
  %i.cp = uitofp i32 %extract.t.i77 to double
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split

bb.ad:                                            ; preds = %bb.w
  %i.cq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0104.0115, i32 noundef 3) #12 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !15
  %.not.i81 = icmp eq i8 %i.cr, 116
  br i1 %.not.i81, label %bb.ae, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %.sroa.0.0.copyload.i.i83 = load ptr, ptr %i.cs, align 8, !tbaa !237 ; 2 uses
  %.sroa.0.0.copyload.i84 = load ptr, ptr %.sroa.0.0.copyload.i.i83, align 8, !tbaa !238 ; 3 uses
  %.sroa.2.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i83, i64 8
  %.sroa.2.0.copyload.i86 = load i64, ptr %.sroa.2.0..sroa_idx.i85, align 8, !tbaa !239 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i84, i64 %.sroa.2.0.copyload.i86
  %i.cu = icmp samesign eq i64 %.sroa.2.0.copyload.i86, 0
  br i1 %i.cu, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = load i8, ptr %.sroa.0.0.copyload.i84, align 1, !tbaa !240
  %i.cw = icmp eq i8 %i.cv, 48
  br i1 %i.cw, label %bb.ag, label %.preheader.i.i.i87

bb.ag:                                            ; preds = %bb.af
  %i.cx = icmp eq i64 %.sroa.2.0.copyload.i86, 1
  br i1 %i.cx, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

.preheader.i.i.i87:                               ; preds = %bb.af, %bb.ai
  %.024.i.i.i88 = phi i64 [ %.fr.i.i.i91, %bb.ai ], [ 0, %bb.af ]
  %.0.i.i.i89 = phi ptr [ %i.df, %bb.ai ], [ %.sroa.0.0.copyload.i84, %bb.af ] ; 2 uses
  %i.cy = load i8, ptr %.0.i.i.i89, align 1, !tbaa !240 ; 2 uses
  %i.cz = add i8 %i.cy, -58
  %or.cond.i.i.i90 = icmp ult i8 %i.cz, -10
  br i1 %or.cond.i.i.i90, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.ah

bb.ah:                                            ; preds = %.preheader.i.i.i87
  %i.da = mul nuw nsw i64 %.024.i.i.i88, 10
  %i.db = and i8 %i.cy, 15
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = add nuw nsw i64 %i.da, %i.dc
  %.fr.i.i.i91 = freeze i64 %i.dd                 ; 4 uses
  %i.de = icmp samesign ult i64 %.fr.i.i.i91, 4294967296
  br i1 %i.de, label %bb.ai, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.ai:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i89, i64 1 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.df, %i.ct
  br i1 %.not.i.i.i92, label %.critedge.i.i.i93, label %.preheader.i.i.i87, !llvm.loop !241

.critedge.i.i.i93:                                ; preds = %bb.ai
  %.not43.i.i.i94 = icmp eq i64 %.fr.i.i.i91, 4294967295
  br i1 %.not43.i.i.i94, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i95

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i95: ; preds = %.critedge.i.i.i93
  %extract.t.i96 = trunc nuw i64 %.fr.i.i.i91 to i32
  %i.dg = uitofp i32 %extract.t.i96 to double
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split

_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split: ; preds = %bb.ag, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i95, %bb.aa, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i76, %bb.t, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i57, %bb.m, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38, %bb.f, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i
  %.off0.i98.sink = phi double [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.f ], [ %i.am, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i ], [ %i.bf, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38 ], [ %i.by, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i57 ], [ %i.cp, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i76 ], [ %i.dg, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i95 ], [ 0.000000e+00, %bb.ag ]
  %.sink148 = phi i32 [ 1, %bb.aa ], [ 2, %bb.t ], [ 2, %bb.m ], [ 1, %bb.f ], [ 1, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i ], [ 2, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38 ], [ 2, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i57 ], [ 1, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i76 ], [ 3, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i95 ], [ 3, %bb.ag ]
  %i.dh = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %.off0.i98.sink) #12
  call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0104.0115, ptr noundef %i.dh, i32 noundef %.sink148) #12
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit: ; preds = %bb.ah, %.preheader.i.i.i87, %bb.ab, %.preheader.i.i.i68, %bb.u, %.preheader.i.i.i49, %bb.n, %.preheader.i.i.i30, %bb.g, %.preheader.i.i.i, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, %.critedge.i.i.i93, %bb.ag, %bb.ae, %bb.ad, %.critedge.i.i.i74, %bb.aa, %bb.y, %bb.x, %.critedge.i.i.i55, %bb.t, %bb.r, %bb.q, %.critedge.i.i.i36, %bb.m, %bb.k, %bb.j, %.critedge.i.i.i, %bb.f, %bb.d, %bb.c, %bb.w
  %.2 = phi i1 [ %.1114, %bb.w ], [ %.1114, %bb.ad ], [ %.1114, %bb.ag ], [ %.1114, %.critedge.i.i.i93 ], [ %.1114, %bb.ae ], [ %.1114, %bb.c ], [ %.1114, %bb.ab ], [ %.1114, %bb.d ], [ %.1114, %.critedge.i.i.i ], [ %.1114, %bb.f ], [ %.1114, %bb.u ], [ %.1114, %bb.j ], [ %.1114, %bb.aa ], [ %.1114, %bb.k ], [ %.1114, %.critedge.i.i.i36 ], [ %.1114, %bb.m ], [ %.1114, %bb.n ], [ %.1114, %bb.q ], [ %.1114, %.critedge.i.i.i74 ], [ %.1114, %bb.r ], [ %.1114, %.critedge.i.i.i55 ], [ %.1114, %bb.t ], [ true, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split ], [ %.1114, %bb.x ], [ %.1114, %bb.g ], [ %.1114, %bb.y ], [ %.1114, %.preheader.i.i.i ], [ %.1114, %.preheader.i.i.i30 ], [ %.1114, %.preheader.i.i.i49 ], [ %.1114, %.preheader.i.i.i68 ], [ %.1114, %.preheader.i.i.i87 ], [ %.1114, %bb.ah ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0104.0115, i64 8
  %.sroa.0104.0 = load ptr, ptr %i.di, align 8, !tbaa !12 ; 2 uses
  %.not111 = icmp eq ptr %.sroa.0104.0, %i.q
  br i1 %.not111, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes15LimitAllocArray13runOnFunctionEPNS_8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.059.094 = load ptr, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  %.not6295 = icmp eq ptr %.sroa.059.094, %i.b
  br i1 %.not6295, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

._crit_edge100:                                   ; preds = %._crit_edge92, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1.lcssa, %._crit_edge92 ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph99, %._crit_edge92
  %.sroa.059.097 = phi ptr [ %.sroa.059.094, %.lr.ph99 ], [ %.sroa.059.0, %._crit_edge92 ] ; 3 uses
  %.096 = phi i1 [ false, %.lr.ph99 ], [ %.1.lcssa, %._crit_edge92 ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.059.097, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.059.097, i64 56 ; 2 uses
  %.sroa.055.083 = load ptr, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %.not6384 = icmp eq ptr %.sroa.055.083, %i.h
  br i1 %.not6384, label %._crit_edge92, label %.lr.ph91

._crit_edge92:                                    ; preds = %bb.i, %bb.b
  %.1.lcssa = phi i1 [ %.096, %bb.b ], [ %.4, %bb.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.059.097, i64 8
  %.sroa.059.0 = load ptr, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %.not62.a = icmp eq ptr %.sroa.059.0, %i.b
  br i1 %.not62.a, label %._crit_edge100, label %bb.b

.lr.ph91:                                         ; preds = %bb.b, %bb.i
  %.sroa.055.086 = phi ptr [ %.sroa.055.0, %bb.i ], [ %.sroa.055.083, %bb.b ] ; 19 uses
  %.185 = phi i1 [ %.4, %bb.i ], [ %.096, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 16 ; 4 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !15
  %i.l = icmp ne i8 %i.k, 54
  %.not64 = icmp eq ptr %.sroa.055.086, null
  %.not = or i1 %.not64, %i.l
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph91
  %i.m = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !52
  store ptr %i.o, ptr %2, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  call void @_ZN6hermes9IRBuilder22setInsertionPointAfterEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.sroa.055.086) #12
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 112
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !87
  %i.r = shufflevector <2 x ptr> %i.q, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.r, ptr %i.e, align 8, !tbaa !87
  %i.s = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12 ; 3 uses
  %i.t = icmp ugt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %.outer._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.outer
  %.047.ph73 = phi i32 [ %i.ar, %.outer ], [ 1, %bb.d ] ; 11 uses
  %.048.ph72 = phi i32 [ %i.u, %.outer ], [ -1, %bb.d ]
  %i.u = add i32 %.048.ph72, 1                    ; 3 uses
  %i.v = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.w = load i8, ptr %i.v, align 8, !tbaa !15
  %i.x = icmp eq i8 %i.w, 115
  br i1 %i.x, label %.critedge.peel, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.y = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.z = load i8, ptr %i.y, align 8, !tbaa !15
  %.not113 = icmp eq i8 %i.z, 112
  br i1 %.not113, label %.critedge.peel, label %.outer

.critedge.peel:                                   ; preds = %bb.e, %.lr.ph
  %i.aa = add i32 %i.s, -1                        ; 2 uses
  %i.ab = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.ac = uitofp i32 %i.u to double
  %i.ad = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.ac) #12
  %i.ae = call noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.ab, ptr noundef nonnull %i.j, ptr noundef %i.ad, i32 noundef 1) #12 ; 0 uses
  call void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.af = icmp ult i32 %.047.ph73, %i.aa
  br i1 %i.af, label %.peel.next, label %.outer._crit_edge

.peel.next:                                       ; preds = %.critedge.peel, %.critedge
  %.04669 = phi i32 [ %i.al, %.critedge ], [ %i.aa, %.critedge.peel ]
  %.04868 = phi i32 [ %i.ag, %.critedge ], [ %i.u, %.critedge.peel ]
  %i.ag = add i32 %.04868, 1                      ; 2 uses
  %i.ah = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !15
  %i.aj = icmp eq i8 %i.ai, 115
  br i1 %i.aj, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.peel.next
  %i.ak = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.peel.next
  %i.al = add i32 %.04669, -1                     ; 2 uses
  %i.am = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.an = uitofp i32 %i.ag to double
  %i.ao = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.an) #12
  %i.ap = call noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.am, ptr noundef nonnull %i.j, ptr noundef %i.ao, i32 noundef 1) #12 ; 0 uses
  call void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.aq = icmp ult i32 %.047.ph73, %i.al
  br i1 %i.aq, label %.peel.next, label %.outer._crit_edge, !llvm.loop !242

.outer:                                           ; preds = %bb.e
  %i.ar = add nuw i32 %.047.ph73, 1               ; 2 uses
  %i.as = icmp ult i32 %i.ar, %i.s
  br i1 %i.as, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !244

.outer._crit_edge:                                ; preds = %.outer, %.critedge, %.critedge.peel, %bb.d
  %.2.lcssa = phi i1 [ true, %.critedge ], [ %.185, %bb.d ], [ true, %.critedge.peel ], [ %.185, %.outer ]
  %i.at = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.outer._crit_edge
  %i.av = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12 ; 2 uses
  %.04577 = add i32 %i.av, -2                     ; 2 uses
  %i.aw = load i32, ptr %i.f, align 8, !tbaa !245
  %.not5378 = icmp ult i32 %.04577, %i.aw
  br i1 %.not5378, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.g
  %i.ax = add i32 %i.av, -1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph82, %bb.h
  %.04580 = phi i32 [ %.04577, %.lr.ph82 ], [ %.045, %bb.h ] ; 3 uses
  %.045.in79 = phi i32 [ %i.ax, %.lr.ph82 ], [ %.04580, %bb.h ] ; 2 uses
  %i.ay = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.045.in79) #12
  %i.az = uitofp i32 %.04580 to double
  %i.ba = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.az) #12
  %i.bb = call noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.ay, ptr noundef nonnull %i.j, ptr noundef %i.ba, i32 noundef 1) #12 ; 0 uses
  call void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.045.in79) #12
  %.045 = add i32 %.04580, -1                     ; 2 uses
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !245
  %.not53 = icmp ult i32 %.045, %i.bc
  br i1 %.not53, label %.loopexit, label %bb.h, !llvm.loop !247

.loopexit:                                        ; preds = %bb.h, %bb.g, %.outer._crit_edge
  %.3 = phi i1 [ %.2.lcssa, %.outer._crit_edge ], [ true, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph91, %bb.c, %.loopexit
  %.4 = phi i1 [ %.3, %.loopexit ], [ %.185, %bb.c ], [ %.185, %.lr.ph91 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 8
  %.sroa.055.0 = load ptr, ptr %i.bd, align 8, !tbaa !12 ; 2 uses
  %.not63 = icmp eq ptr %.sroa.055.0, %i.h
  br i1 %.not63, label %._crit_edge92, label %.lr.ph91
}

declare void @_ZN6hermes9IRBuilder22setInsertionPointAfterEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes15LowerCondBranch19isOperatorSupportedENS_18BinaryOperatorInst6OpKindE(i32 noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 8
  ret i1 %switch
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes15LowerCondBranch13runOnFunctionEPNS_8FunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder", align 8 ; 7 uses
  %3 = alloca %"class.llvh::DenseMap.95", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  store ptr %i.b, ptr %2, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.089.0125 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %.not92126 = icmp eq ptr %.sroa.089.0125, %i.e
end_hunk_0
