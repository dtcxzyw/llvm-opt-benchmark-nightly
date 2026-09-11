Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrLoweringX64?download=true
inline.NumInlined: 3349
inline.NumDeleted: 241
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau7CodeGen3X6413IrLoweringX649lowerInstERNS0_6IrInstEjRKNS0_7IrBlockE:bb.a

bb.clb:                                           ; preds = %bb.cla, %bb.civ
  %.pn5010.pn.pn = phi { ptr, i32 } [ %.pn5010.pn, %bb.cla ], [ %i.gsx, %bb.civ ]
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #15
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %226) #15
  br label %bb.clc

bb.clc:                                           ; preds = %bb.clb, %bb.ciu
  %.pn5010.pn.pn.pn = phi { ptr, i32 } [ %.pn5010.pn.pn, %bb.clb ], [ %i.gsw, %bb.ciu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %226) #15
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %225) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #15
  br label %bb.dzj

bb.cld:                                           ; preds = %bb.a
  %i.gwg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gwh = load ptr, ptr %i.gwg, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.gwi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.gwj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.gwk = load i32, ptr %i.gwj, align 8, !tbaa !73
  %.not.i7561.not = icmp eq i32 %i.gwk, 0
  br i1 %.not.i7561.not, label %bb.cle, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7562, !prof !233

bb.cle:                                           ; preds = %bb.cld
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gwi, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7562

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7562:   ; preds = %bb.cld, %bb.cle
  %i.gwl = load ptr, ptr %i.gwi, align 8, !tbaa !74
  %.sroa.0850.0.copyload = load i32, ptr %i.gwl, align 4, !tbaa !72
  %i.gwm = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0850.0.copyload)
  %.sroa.3.0.insert.ext.i7563 = zext i8 %i.gwm to i64
  %.sroa.3.0.insert.shift.i7564 = shl nuw nsw i64 %.sroa.3.0.insert.ext.i7563, 16
  %.sroa.010139.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i7564, 13170147329
  %i.gwn = load i32, ptr %i.gwj, align 8, !tbaa !73
  %.not.i7568 = icmp ugt i32 %i.gwn, 1
  br i1 %.not.i7568, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7569, label %bb.clf, !prof !234

bb.clf:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7562
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gwi, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7569

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7569:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7562, %bb.clf
  %i.gwo = load ptr, ptr %i.gwi, align 8, !tbaa !74
  %i.gwp = getelementptr inbounds nuw i8, ptr %i.gwo, i64 4
  %.sroa.0849.0.copyload = load i32, ptr %i.gwp, align 4, !tbaa !72
  %i.gwq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gwr = load ptr, ptr %i.gwq, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.gws = getelementptr inbounds nuw i8, ptr %i.gwr, i64 48
  %i.gwt = lshr i32 %.sroa.0849.0.copyload, 4
  %i.gwu = zext nneg i32 %i.gwt to i64
  %i.gwv = load ptr, ptr %i.gws, align 8, !tbaa !81
  %i.gww = getelementptr inbounds nuw [16 x i8], ptr %i.gwv, i64 %i.gwu
  %i.gwx = getelementptr inbounds nuw i8, ptr %i.gww, i64 8
  %i.gwy = load i32, ptr %i.gwx, align 8, !tbaa !72
  %.sroa.510138.0.insert.ext = zext i32 %i.gwy to i64
  %.sroa.510138.0.insert.shift = shl nuw i64 %.sroa.510138.0.insert.ext, 32
  %.sroa.010134.0.insert.insert = or disjoint i64 %.sroa.510138.0.insert.shift, 276856834
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.gwh, i64 %.sroa.010139.0.insert.insert, i64 %.sroa.010134.0.insert.insert)
  %i.gwz = load i32, ptr %i.gwj, align 8, !tbaa !73
  %.not.i7570 = icmp ugt i32 %i.gwz, 2
  br i1 %.not.i7570, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7571, label %bb.clg, !prof !234

bb.clg:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7569
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gwi, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7571

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7571:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7569, %bb.clg
  %i.gxa = load ptr, ptr %i.gwi, align 8, !tbaa !74
  %i.gxb = getelementptr inbounds nuw i8, ptr %i.gxa, i64 8
  %.sroa.0848.0.copyload = load i32, ptr %i.gxb, align 4, !tbaa !72
  tail call void @_ZN4Luau7CodeGen3X6413IrLoweringX6418jumpOrAbortOnUndefENS0_12ConditionX64ENS0_4IrOpEjRKNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i8 noundef zeroext 17, i32 %.sroa.0848.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(36) %3)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.clh:                                           ; preds = %bb.a
  %i.gxc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.gxd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.gxe = load i32, ptr %i.gxd, align 8, !tbaa !73 ; 2 uses
  %.not.i7572 = icmp ugt i32 %i.gxe, 2
  br i1 %.not.i7572, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7573, label %bb.cli, !prof !234

bb.cli:                                           ; preds = %bb.clh
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gxc, i32 noundef 3)
  %.pre14099 = load i32, ptr %i.gxd, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7573

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7573:   ; preds = %bb.clh, %bb.cli
  %i.gxf = phi i32 [ %i.gxe, %bb.clh ], [ %.pre14099, %bb.cli ]
  %i.gxg = load ptr, ptr %i.gxc, align 8, !tbaa !74 ; 2 uses
  %i.gxh = getelementptr inbounds nuw i8, ptr %i.gxg, i64 8
  %.sroa.0846.0.copyload = load i32, ptr %i.gxh, align 4, !tbaa !72
  %i.gxi = lshr i32 %.sroa.0846.0.copyload, 4
  %i.gxj = trunc i32 %i.gxi to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #15
  store i32 0, ptr %229, align 4, !tbaa !83
  %i.gxk = getelementptr inbounds nuw i8, ptr %229, i64 4
  store i32 -1, ptr %i.gxk, align 4, !tbaa !84
  %.not.i7574 = icmp ugt i32 %i.gxf, 3
  br i1 %.not.i7574, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7575, label %bb.clj, !prof !234

bb.clj:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7573
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gxc, i32 noundef 4)
  %.pre14100 = load ptr, ptr %i.gxc, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7575

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7575:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7573, %bb.clj
  %i.gxl = phi ptr [ %i.gxg, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7573 ], [ %.pre14100, %bb.clj ]
  %i.gxm = getelementptr inbounds nuw i8, ptr %i.gxl, i64 12
  %.sroa.0845.0.copyload = load i32, ptr %i.gxm, align 4, !tbaa !72
  %i.gxn = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4Luau7CodeGen3X6413IrLoweringX6414getTargetLabelENS0_4IrOpEjRNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0845.0.copyload, i32 poison, ptr noundef nonnull align 4 dereferenceable(8) %229)
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #15
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64C1ERNS1_13IrRegAllocX64ENS1_7SizeX64E(ptr noundef nonnull align 8 dereferenceable(9) %230, ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 5)
  %i.gxo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gxp = load ptr, ptr %i.gxo, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.gxq = getelementptr inbounds nuw i8, ptr %230, i64 8
  %.sroa.0844.0.copyload = load i8, ptr %i.gxq, align 8, !tbaa !72
  %i.gxr = load i32, ptr %i.gxd, align 8, !tbaa !73
  %.not.i7576.not = icmp eq i32 %i.gxr, 0
  br i1 %.not.i7576.not, label %bb.clk, label %bb.cll, !prof !233

bb.clk:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7575
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gxc, i32 noundef 1)
          to label %bb.cll unwind label %bb.clu

bb.cll:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7575, %bb.clk
  %i.gxs = load ptr, ptr %i.gxc, align 8, !tbaa !74
  %.sroa.0842.0.copyload = load i32, ptr %i.gxs, align 4, !tbaa !72
  %i.gxt = invoke i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6414memRegDoubleOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0842.0.copyload)
          to label %bb.clm unwind label %bb.clu

bb.clm:                                           ; preds = %bb.cll
  %i.gxu = load i32, ptr %i.gxd, align 8, !tbaa !73
  %.not.i7579 = icmp ugt i32 %i.gxu, 1
  br i1 %.not.i7579, label %bb.clo, label %bb.cln, !prof !234

bb.cln:                                           ; preds = %bb.clm
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gxc, i32 noundef 2)
          to label %bb.clo unwind label %bb.clu

bb.clo:                                           ; preds = %bb.clm, %bb.cln
  %i.gxv = load ptr, ptr %i.gxc, align 8, !tbaa !74
  %i.gxw = getelementptr inbounds nuw i8, ptr %i.gxv, i64 4
  %.sroa.0840.0.copyload = load i32, ptr %i.gxw, align 4, !tbaa !72
  %i.gxx = invoke i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6414memRegDoubleOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0840.0.copyload)
          to label %bb.clp unwind label %bb.clu

bb.clp:                                           ; preds = %bb.clo
  %i.gxy = call noundef zeroext i8 @_ZN4Luau7CodeGen19getNegatedConditionENS0_11IrConditionE(i8 noundef zeroext %i.gxj)
  invoke void @_ZN4Luau7CodeGen3X6415jumpOnNumberCmpERNS1_18AssemblyBuilderX64ENS1_11RegisterX64ENS1_10OperandX64ES5_NS0_11IrConditionERNS0_5LabelEb(ptr noundef nonnull align 8 dereferenceable(268) %i.gxp, i8 %.sroa.0844.0.copyload, i64 %i.gxt, i64 %i.gxx, i8 noundef zeroext %i.gxy, ptr noundef nonnull align 4 dereferenceable(8) %i.gxn, i1 noundef zeroext false)
          to label %bb.clq unwind label %bb.clu

bb.clq:                                           ; preds = %bb.clp
  %i.gxz = load i32, ptr %i.gxd, align 8, !tbaa !73
  %.not.i7582 = icmp ugt i32 %i.gxz, 3
  br i1 %.not.i7582, label %bb.cls, label %bb.clr, !prof !234

bb.clr:                                           ; preds = %bb.clq
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gxc, i32 noundef 4)
          to label %bb.cls unwind label %bb.clu

bb.cls:                                           ; preds = %bb.clq, %bb.clr
  %i.gya = load ptr, ptr %i.gxc, align 8, !tbaa !74
  %i.gyb = getelementptr inbounds nuw i8, ptr %i.gya, i64 12
  %.sroa.0839.0.copyload = load i32, ptr %i.gyb, align 4, !tbaa !72
  invoke void @_ZN4Luau7CodeGen3X6413IrLoweringX6419finalizeTargetLabelENS0_4IrOpEjRNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0839.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %229)
          to label %bb.clt unwind label %bb.clu

bb.clt:                                           ; preds = %bb.cls
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %230) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #15
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.clu:                                           ; preds = %bb.clr, %bb.cln, %bb.clk, %bb.cls, %bb.clp, %bb.clo, %bb.cll
  %i.gyc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %230) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #15
  br label %bb.dzj

bb.clv:                                           ; preds = %bb.a
  %i.gyd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 26 uses
  %i.gye = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.gyf = load i32, ptr %i.gye, align 8, !tbaa !73 ; 2 uses
  %.not.i7585 = icmp ugt i32 %i.gyf, 2
  br i1 %.not.i7585, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7586, label %bb.clw, !prof !234

bb.clw:                                           ; preds = %bb.clv
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 3)
  %.pre14092.pre = load i32, ptr %i.gye, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7586

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7586:   ; preds = %bb.clv, %bb.clw
  %.pre14092 = phi i32 [ %i.gyf, %bb.clv ], [ %.pre14092.pre, %bb.clw ] ; 3 uses
  %i.gyg = load ptr, ptr %i.gyd, align 8, !tbaa !74 ; 3 uses
  %i.gyh = getelementptr inbounds nuw i8, ptr %i.gyg, i64 8
  %.sroa.0833.0.copyload = load i32, ptr %i.gyh, align 4, !tbaa !72
  %i.gyi = lshr i32 %.sroa.0833.0.copyload, 4
  %i.gyj = trunc i32 %i.gyi to i8                 ; 4 uses
  %337 = icmp eq i8 %i.gyj, 0
  %or.cond17 = icmp ult i8 %i.gyj, 2
  br i1 %or.cond17, label %bb.clx, label %bb.cmf

bb.clx:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7586
  %.not.i7587 = icmp ugt i32 %.pre14092, 1
  br i1 %.not.i7587, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7588, label %bb.cly, !prof !234

bb.cly:                                           ; preds = %bb.clx
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 2)
  %.pre14088 = load ptr, ptr %i.gyd, align 8, !tbaa !74
  %.pre14094.pre = load i32, ptr %i.gye, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7588

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7588:   ; preds = %bb.clx, %bb.cly
  %.pre14094 = phi i32 [ %.pre14092, %bb.clx ], [ %.pre14094.pre, %bb.cly ] ; 3 uses
  %i.gyk = phi ptr [ %i.gyg, %bb.clx ], [ %.pre14088, %bb.cly ] ; 3 uses
  %i.gyl = getelementptr inbounds nuw i8, ptr %i.gyk, i64 4
  %i.gym = load i32, ptr %i.gyl, align 4          ; 2 uses
  %i.gyn = and i32 %i.gym, 15
  %i.gyo = icmp eq i32 %i.gyn, 2
  br i1 %i.gyo, label %bb.clz, label %bb.cmf

bb.clz:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7588
  %.not.i7589 = icmp ugt i32 %.pre14094, 1
  br i1 %.not.i7589, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7590, label %bb.cma, !prof !234

bb.cma:                                           ; preds = %bb.clz
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 2)
  %.pre14089 = load ptr, ptr %i.gyd, align 8, !tbaa !74 ; 2 uses
  %.phi.trans.insert14090 = getelementptr inbounds nuw i8, ptr %.pre14089, i64 4
  %.sroa.0832.0.copyload.pre = load i32, ptr %.phi.trans.insert14090, align 4, !tbaa !72
  %.pre14093.pre = load i32, ptr %i.gye, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7590

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7590:   ; preds = %bb.clz, %bb.cma
  %.pre14093 = phi i32 [ %.pre14094, %bb.clz ], [ %.pre14093.pre, %bb.cma ] ; 2 uses
  %.sroa.0832.0.copyload = phi i32 [ %i.gym, %bb.clz ], [ %.sroa.0832.0.copyload.pre, %bb.cma ]
  %i.gyp = phi ptr [ %i.gyk, %bb.clz ], [ %.pre14089, %bb.cma ] ; 2 uses
  %i.gyq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gyr = load ptr, ptr %i.gyq, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.gys = getelementptr inbounds nuw i8, ptr %i.gyr, i64 48
  %i.gyt = lshr i32 %.sroa.0832.0.copyload, 4
  %i.gyu = zext nneg i32 %i.gyt to i64
  %i.gyv = load ptr, ptr %i.gys, align 8, !tbaa !81
  %i.gyw = getelementptr inbounds nuw [16 x i8], ptr %i.gyv, i64 %i.gyu
  %i.gyx = getelementptr inbounds nuw i8, ptr %i.gyw, i64 8
  %i.gyy = load i32, ptr %i.gyx, align 8, !tbaa !72
  %i.gyz = icmp eq i32 %i.gyy, 0
  br i1 %i.gyz, label %bb.cmb, label %bb.cmf

bb.cmb:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7590
  %i.gza = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gzb = load ptr, ptr %i.gza, align 8, !tbaa !75, !nonnull !76, !align !77
  %.not.i7591.not = icmp eq i32 %.pre14093, 0
  br i1 %.not.i7591.not, label %bb.cmc, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7592, !prof !233

bb.cmc:                                           ; preds = %bb.cmb
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 1)
  %.pre14098 = load ptr, ptr %i.gyd, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7592

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7592:   ; preds = %bb.cmb, %bb.cmc
  %i.gzc = phi ptr [ %i.gyp, %bb.cmb ], [ %.pre14098, %bb.cmc ]
  %.sroa.0830.0.copyload = load i32, ptr %i.gzc, align 4, !tbaa !72
  %i.gzd = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0830.0.copyload)
  %i.gze = load i32, ptr %i.gye, align 8, !tbaa !73
  %.not.i7593.not = icmp eq i32 %i.gze, 0
  br i1 %.not.i7593.not, label %bb.cmd, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7594, !prof !233

bb.cmd:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7592
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7594

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7594:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7592, %bb.cmd
  %i.gzf = load ptr, ptr %i.gyd, align 8, !tbaa !74
  %.sroa.0828.0.copyload = load i32, ptr %i.gzf, align 4, !tbaa !72
  %i.gzg = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0828.0.copyload)
  %.sroa.310131.0.insert.ext = zext i8 %i.gzd to i64
  %.sroa.310131.0.insert.shift = shl nuw nsw i64 %.sroa.310131.0.insert.ext, 16
  %.sroa.210130.0.insert.insert = or disjoint i64 %.sroa.310131.0.insert.shift, 268468224
  %.sroa.310126.0.insert.ext = zext i8 %i.gzg to i64
  %.sroa.310126.0.insert.shift = shl nuw nsw i64 %.sroa.310126.0.insert.ext, 16
  %.sroa.210125.0.insert.insert = or disjoint i64 %.sroa.310126.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644testENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.gzb, i64 %.sroa.210130.0.insert.insert, i64 %.sroa.210125.0.insert.insert)
  %338 = select i1 %337, i8 23, i8 22
  %i.gzh = load i32, ptr %i.gye, align 8, !tbaa !73
  %.not.i7595 = icmp ugt i32 %i.gzh, 3
  br i1 %.not.i7595, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7596, label %bb.cme, !prof !234

bb.cme:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7594
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 4)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7596

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7596:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7594, %bb.cme
  %i.gzi = load ptr, ptr %i.gyd, align 8, !tbaa !74
  %i.gzj = getelementptr inbounds nuw i8, ptr %i.gzi, i64 12
  %.sroa.0827.0.copyload = load i32, ptr %i.gzj, align 4, !tbaa !72
  tail call void @_ZN4Luau7CodeGen3X6413IrLoweringX6418jumpOrAbortOnUndefENS0_12ConditionX64ENS0_4IrOpEjRKNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i8 noundef zeroext %338, i32 %.sroa.0827.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(36) %3)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.cmf:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7586, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7590, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7588
  %i.gzk = phi ptr [ %i.gyg, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7586 ], [ %i.gyp, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7590 ], [ %i.gyk, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7588 ]
  %i.gzl = phi i32 [ %.pre14092, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7586 ], [ %.pre14093, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7590 ], [ %.pre14094, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7588 ]
  %.not.i7597.not = icmp eq i32 %i.gzl, 0
  br i1 %.not.i7597.not, label %bb.cmg, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7598, !prof !233

bb.cmg:                                           ; preds = %bb.cmf
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 1)
  %.pre14095 = load ptr, ptr %i.gyd, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7598

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7598:   ; preds = %bb.cmf, %bb.cmg
  %i.gzm = phi ptr [ %i.gzk, %bb.cmf ], [ %.pre14095, %bb.cmg ]
  %i.gzn = load i32, ptr %i.gzm, align 4          ; 2 uses
  %i.gzo = and i32 %i.gzn, 15
  %i.gzp = icmp eq i32 %i.gzo, 2
  br i1 %i.gzp, label %bb.cmh, label %bb.cmv

bb.cmh:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7598
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #15
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64C1ERNS1_13IrRegAllocX64ENS1_7SizeX64E(ptr noundef nonnull align 8 dereferenceable(9) %231, ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 3)
  %i.gzq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gzr = load ptr, ptr %i.gzq, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.gzs = getelementptr inbounds nuw i8, ptr %231, i64 8 ; 2 uses
  %.sroa.0826.0.copyload = load i8, ptr %i.gzs, align 8, !tbaa !72
  %i.gzt = load i32, ptr %i.gye, align 8, !tbaa !73
  %.not.i7599.not = icmp eq i32 %i.gzt, 0
  br i1 %.not.i7599.not, label %bb.cmi, label %bb.cmj, !prof !233

bb.cmi:                                           ; preds = %bb.cmh
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 1)
          to label %bb.cmj unwind label %bb.cmu

bb.cmj:                                           ; preds = %bb.cmh, %bb.cmi
  %i.gzu = load ptr, ptr %i.gyd, align 8, !tbaa !74
  %.sroa.0824.0.copyload = load i32, ptr %i.gzu, align 4, !tbaa !72
  %i.gzv = invoke i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6411memRegIntOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0824.0.copyload)
          to label %bb.cmk unwind label %bb.cmu

bb.cmk:                                           ; preds = %bb.cmj
  %.sroa.310121.0.insert.ext = zext i8 %.sroa.0826.0.copyload to i64
  %.sroa.310121.0.insert.shift = shl nuw nsw i64 %.sroa.310121.0.insert.ext, 16
  %.sroa.210120.0.insert.insert = or disjoint i64 %.sroa.310121.0.insert.shift, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.gzr, i64 %.sroa.210120.0.insert.insert, i64 %i.gzv)
          to label %bb.cml unwind label %bb.cmu

bb.cml:                                           ; preds = %bb.cmk
  %i.gzw = load ptr, ptr %i.gzq, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.0823.0.copyload = load i8, ptr %i.gzs, align 8, !tbaa !72
  %i.gzx = load i32, ptr %i.gye, align 8, !tbaa !73
  %.not.i7602 = icmp ugt i32 %i.gzx, 1
  br i1 %.not.i7602, label %bb.cmn, label %bb.cmm, !prof !234

bb.cmm:                                           ; preds = %bb.cml
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 2)
          to label %bb.cmn unwind label %bb.cmu

bb.cmn:                                           ; preds = %bb.cml, %bb.cmm
  %i.gzy = load ptr, ptr %i.gyd, align 8, !tbaa !74
  %i.gzz = getelementptr inbounds nuw i8, ptr %i.gzy, i64 4
  %.sroa.0821.0.copyload = load i32, ptr %i.gzz, align 4, !tbaa !72
  %i.haa = invoke i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6411memRegIntOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0821.0.copyload)
          to label %bb.cmo unwind label %bb.cmu

bb.cmo:                                           ; preds = %bb.cmn
  %.sroa.310116.0.insert.ext = zext i8 %.sroa.0823.0.copyload to i64
  %.sroa.310116.0.insert.shift = shl nuw nsw i64 %.sroa.310116.0.insert.ext, 16
  %.sroa.210115.0.insert.insert = or disjoint i64 %.sroa.310116.0.insert.shift, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.gzw, i64 %.sroa.210115.0.insert.insert, i64 %i.haa)
          to label %bb.cmp unwind label %bb.cmu

bb.cmp:                                           ; preds = %bb.cmo
  %i.hab = call noundef zeroext i8 @_ZN4Luau7CodeGen19getNegatedConditionENS0_11IrConditionE(i8 noundef zeroext %i.gyj)
  %i.hac = invoke noundef zeroext i8 @_ZN4Luau7CodeGen3X6415getConditionIntENS0_11IrConditionE(i8 noundef zeroext %i.hab)
          to label %bb.cmq unwind label %bb.cmu

bb.cmq:                                           ; preds = %bb.cmp
  %i.had = load i32, ptr %i.gye, align 8, !tbaa !73
  %.not.i7605 = icmp ugt i32 %i.had, 3
  br i1 %.not.i7605, label %bb.cms, label %bb.cmr, !prof !234

bb.cmr:                                           ; preds = %bb.cmq
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 4)
          to label %bb.cms unwind label %bb.cmu

bb.cms:                                           ; preds = %bb.cmq, %bb.cmr
  %i.hae = load ptr, ptr %i.gyd, align 8, !tbaa !74
  %i.haf = getelementptr inbounds nuw i8, ptr %i.hae, i64 12
  %.sroa.0820.0.copyload = load i32, ptr %i.haf, align 4, !tbaa !72
  invoke void @_ZN4Luau7CodeGen3X6413IrLoweringX6418jumpOrAbortOnUndefENS0_12ConditionX64ENS0_4IrOpEjRKNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i8 noundef zeroext %i.hac, i32 %.sroa.0820.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(36) %3)
          to label %bb.cmt unwind label %bb.cmu

bb.cmt:                                           ; preds = %bb.cms
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %231) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #15
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.cmu:                                           ; preds = %bb.cmr, %bb.cmm, %bb.cmi, %bb.cms, %bb.cmp, %bb.cmo, %bb.cmn, %bb.cmk, %bb.cmj
  %i.hag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %231) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #15
  br label %bb.dzj

bb.cmv:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7598
  %i.hah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hai = load ptr, ptr %i.hah, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.haj = load i32, ptr %i.gye, align 8, !tbaa !73
  %.not.i7608.not = icmp eq i32 %i.haj, 0
  br i1 %.not.i7608.not, label %bb.cmw, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7609, !prof !233

bb.cmw:                                           ; preds = %bb.cmv
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 1)
  %.pre14096 = load ptr, ptr %i.gyd, align 8, !tbaa !74
  %.sroa.0818.0.copyload.pre = load i32, ptr %.pre14096, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7609

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7609:   ; preds = %bb.cmv, %bb.cmw
  %.sroa.0818.0.copyload = phi i32 [ %i.gzn, %bb.cmv ], [ %.sroa.0818.0.copyload.pre, %bb.cmw ]
  %i.hak = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0818.0.copyload)
  %i.hal = load i32, ptr %i.gye, align 8, !tbaa !73
  %.not.i7610 = icmp ugt i32 %i.hal, 1
  br i1 %.not.i7610, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7611, label %bb.cmx, !prof !234

bb.cmx:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7609
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7611

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7611:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7609, %bb.cmx
  %i.ham = load ptr, ptr %i.gyd, align 8, !tbaa !74
  %i.han = getelementptr inbounds nuw i8, ptr %i.ham, i64 4
  %.sroa.0816.0.copyload = load i32, ptr %i.han, align 4, !tbaa !72
  %i.hao = tail call i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6411memRegIntOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0816.0.copyload)
  %.sroa.310111.0.insert.ext = zext i8 %i.hak to i64
  %.sroa.310111.0.insert.shift = shl nuw nsw i64 %.sroa.310111.0.insert.ext, 16
  %.sroa.210110.0.insert.insert = or disjoint i64 %.sroa.310111.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.hai, i64 %.sroa.210110.0.insert.insert, i64 %i.hao)
  %i.hap = tail call noundef zeroext i8 @_ZN4Luau7CodeGen19getNegatedConditionENS0_11IrConditionE(i8 noundef zeroext %i.gyj)
  %i.haq = tail call noundef zeroext i8 @_ZN4Luau7CodeGen3X6415getConditionIntENS0_11IrConditionE(i8 noundef zeroext %i.hap)
  %i.har = load i32, ptr %i.gye, align 8, !tbaa !73
  %.not.i7612 = icmp ugt i32 %i.har, 3
  br i1 %.not.i7612, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7613, label %bb.cmy, !prof !234

bb.cmy:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7611
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.gyd, i32 noundef 4)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7613

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7613:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7611, %bb.cmy
  %i.has = load ptr, ptr %i.gyd, align 8, !tbaa !74
  %i.hat = getelementptr inbounds nuw i8, ptr %i.has, i64 12
  %.sroa.0815.0.copyload = load i32, ptr %i.hat, align 4, !tbaa !72
  tail call void @_ZN4Luau7CodeGen3X6413IrLoweringX6418jumpOrAbortOnUndefENS0_12ConditionX64ENS0_4IrOpEjRKNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i8 noundef zeroext %i.haq, i32 %.sroa.0815.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(36) %3)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.cmz:                                           ; preds = %bb.a
  %i.hau = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hav = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.haw = load i32, ptr %i.hav, align 8, !tbaa !73
  %.not.i7614.not = icmp eq i32 %i.haw, 0
  br i1 %.not.i7614.not, label %bb.cna, label %bb.cnb, !prof !233

bb.cna:                                           ; preds = %bb.cmz
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.hau, i32 noundef 1)
  br label %bb.cnb

bb.cnb:                                           ; preds = %bb.cna, %bb.cmz
  %i.hax = load ptr, ptr %i.hau, align 8, !tbaa !74
  %.sroa.0813.0.copyload = load i32, ptr %i.hax, align 4, !tbaa !72
  %i.hay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.haz = load ptr, ptr %i.hay, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.hba = getelementptr inbounds nuw i8, ptr %i.haz, i64 48
  %i.hbb = lshr i32 %.sroa.0813.0.copyload, 4
  %i.hbc = zext nneg i32 %i.hbb to i64
  %i.hbd = load ptr, ptr %i.hba, align 8, !tbaa !81
  %i.hbe = getelementptr inbounds nuw [16 x i8], ptr %i.hbd, i64 %i.hbc
  %i.hbf = getelementptr inbounds nuw i8, ptr %i.hbe, i64 8
  %i.hbg = load i32, ptr %i.hbf, align 8, !tbaa !72
  tail call void @_ZN4Luau7CodeGen3X6413IrRegAllocX6425preserveAndFreeInstValuesEv(ptr noundef nonnull align 8 dereferenceable(332) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #15
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64C1ERNS1_13IrRegAllocX64ENS1_7SizeX64E(ptr noundef nonnull align 8 dereferenceable(9) %232, ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #15
  store i32 0, ptr %233, align 8, !tbaa !83
  %i.hbh = getelementptr inbounds nuw i8, ptr %233, i64 4
  store i32 -1, ptr %i.hbh, align 4, !tbaa !84
  %i.hbi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.hbj = load ptr, ptr %i.hbi, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.hbk = getelementptr inbounds nuw i8, ptr %232, i64 8 ; 2 uses
  %.sroa.0812.0.copyload = load i8, ptr %i.hbk, align 8, !tbaa !72
  %.sroa.310106.0.insert.ext = zext i8 %.sroa.0812.0.copyload to i64
  %.sroa.310106.0.insert.shift = shl nuw nsw i64 %.sroa.310106.0.insert.ext, 16
  %.sroa.210105.0.insert.insert = or disjoint i64 %.sroa.310106.0.insert.shift, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.hbj, i64 %.sroa.210105.0.insert.insert, i64 103422918657)
          to label %bb.cnc unwind label %bb.cni

bb.cnc:                                           ; preds = %bb.cnb
  %i.hbl = load ptr, ptr %i.hbi, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.0808.0.copyload = load i8, ptr %i.hbk, align 8, !tbaa !72
  %.sroa.3.0.insert.ext.i7617 = zext i8 %.sroa.0808.0.copyload to i64
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGen3X6413IrLoweringX649lowerInstERNS0_6IrInstEjRKNS0_7IrBlockE:bb.a
bb.dkd:                                           ; preds = %bb.dkc
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jre, i32 noundef 1)
          to label %bb.dke unwind label %bb.dkz

bb.dke:                                           ; preds = %bb.dkc, %bb.dkd
  %i.jrh = load ptr, ptr %i.jre, align 8, !tbaa !74
  %.sroa.0323.0.copyload = load i32, ptr %i.jrh, align 4, !tbaa !72
  %i.jri = invoke i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6413memRegInt64OpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0323.0.copyload)
          to label %bb.dkf unwind label %bb.dkz

bb.dkf:                                           ; preds = %bb.dke
  %.sroa.39213.0.insert.ext = zext i8 %.sroa.0325.0.copyload to i64
  %.sroa.39213.0.insert.shift = shl nuw nsw i64 %.sroa.39213.0.insert.ext, 16
  %.sroa.29212.0.insert.insert = or disjoint i64 %.sroa.39213.0.insert.shift, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.jrc, i64 %.sroa.29212.0.insert.insert, i64 %i.jri)
          to label %bb.dkg unwind label %bb.dkz

bb.dkg:                                           ; preds = %bb.dkf
  %i.jrj = load ptr, ptr %i.jrb, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.jrk = getelementptr inbounds nuw i8, ptr %298, i64 8 ; 3 uses
  %.sroa.0322.0.copyload = load i8, ptr %i.jrk, align 8, !tbaa !72
  %i.jrl = load i32, ptr %i.jrf, align 8, !tbaa !73
  %.not.i8247 = icmp ugt i32 %i.jrl, 1
  br i1 %.not.i8247, label %bb.dki, label %bb.dkh, !prof !234

bb.dkh:                                           ; preds = %bb.dkg
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jre, i32 noundef 2)
          to label %bb.dki unwind label %bb.dkz

bb.dki:                                           ; preds = %bb.dkg, %bb.dkh
  %i.jrm = load ptr, ptr %i.jre, align 8, !tbaa !74
  %i.jrn = getelementptr inbounds nuw i8, ptr %i.jrm, i64 4
  %.sroa.0320.0.copyload = load i32, ptr %i.jrn, align 4, !tbaa !72
  %i.jro = invoke i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6413memRegInt64OpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0320.0.copyload)
          to label %bb.dkj unwind label %bb.dkz

bb.dkj:                                           ; preds = %bb.dki
  %.sroa.39208.0.insert.ext = zext i8 %.sroa.0322.0.copyload to i64
  %.sroa.39208.0.insert.shift = shl nuw nsw i64 %.sroa.39208.0.insert.ext, 16
  %.sroa.29207.0.insert.insert = or disjoint i64 %.sroa.39208.0.insert.shift, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.jrj, i64 %.sroa.29207.0.insert.insert, i64 %i.jro)
          to label %bb.dkk unwind label %bb.dkz

bb.dkk:                                           ; preds = %bb.dkj
  %i.jrp = load ptr, ptr %i.jrb, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.0319.0.copyload = load i8, ptr %i.jrk, align 8, !tbaa !72
  %.sroa.39203.0.insert.ext = zext i8 %.sroa.0319.0.copyload to i64
  %.sroa.39203.0.insert.shift = shl nuw nsw i64 %.sroa.39203.0.insert.ext, 16
  %.sroa.29202.0.insert.insert = or disjoint i64 %.sroa.39203.0.insert.shift, 268468224 ; 2 uses
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644testENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.jrp, i64 %.sroa.29202.0.insert.insert, i64 %.sroa.29202.0.insert.insert)
          to label %bb.dkl unwind label %bb.dkz

bb.dkl:                                           ; preds = %bb.dkk
  %i.jrq = load i32, ptr %i.jrf, align 8, !tbaa !73
  %.not.i8250 = icmp ugt i32 %i.jrq, 2
  br i1 %.not.i8250, label %bb.dkn, label %bb.dkm, !prof !234

bb.dkm:                                           ; preds = %bb.dkl
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jre, i32 noundef 3)
          to label %bb.dkn unwind label %bb.dkz

bb.dkn:                                           ; preds = %bb.dkl, %bb.dkm
  %i.jrr = load ptr, ptr %i.jre, align 8, !tbaa !74
  %i.jrs = getelementptr inbounds nuw i8, ptr %i.jrr, i64 8
  %.sroa.0317.0.copyload = load i32, ptr %i.jrs, align 4, !tbaa !72
  invoke void @_ZN4Luau7CodeGen3X6413IrLoweringX6418jumpOrAbortOnUndefENS0_12ConditionX64ENS0_4IrOpEjRKNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i8 noundef zeroext 8, i32 %.sroa.0317.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(36) %3)
          to label %bb.dko unwind label %bb.dkz

bb.dko:                                           ; preds = %bb.dkn
  call void @llvm.lifetime.start.p0(ptr nonnull %299) #15
  store i32 0, ptr %299, align 4, !tbaa !83
  %i.jrt = getelementptr inbounds nuw i8, ptr %299, i64 4
  store i32 -1, ptr %i.jrt, align 4, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %300) #15
  invoke void @_ZN4Luau7CodeGen3X6412ScopedRegX64C1ERNS1_13IrRegAllocX64ENS1_7SizeX64E(ptr noundef nonnull align 8 dereferenceable(9) %300, ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 4)
          to label %bb.dkp unwind label %bb.dla

bb.dkp:                                           ; preds = %bb.dko
  %i.jru = load ptr, ptr %i.jrb, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.0316.0.copyload = load i8, ptr %i.jrk, align 8, !tbaa !72
  %.sroa.39193.0.insert.ext = zext i8 %.sroa.0316.0.copyload to i64
  %.sroa.39193.0.insert.shift = shl nuw nsw i64 %.sroa.39193.0.insert.ext, 16
  %.sroa.29192.0.insert.insert = or disjoint i64 %.sroa.39193.0.insert.shift, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.jru, i64 %.sroa.29192.0.insert.insert, i64 -4018110462)
          to label %bb.dkq unwind label %bb.dlb

bb.dkq:                                           ; preds = %bb.dkp
  %i.jrv = load ptr, ptr %i.jrb, align 8, !tbaa !75, !nonnull !76, !align !77
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %i.jrv, i8 noundef zeroext 17, ptr noundef nonnull align 4 dereferenceable(8) %299)
          to label %bb.dkr unwind label %bb.dlb

bb.dkr:                                           ; preds = %bb.dkq
  %i.jrw = load ptr, ptr %i.jrb, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.jrx = getelementptr inbounds nuw i8, ptr %300, i64 8 ; 2 uses
  %.sroa.0315.0.copyload = load i8, ptr %i.jrx, align 8, !tbaa !72
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645mov64ENS1_11RegisterX64El(ptr noundef nonnull align 8 dereferenceable(268) %i.jrw, i8 %.sroa.0315.0.copyload, i64 noundef -9223372036854775808)
          to label %bb.dks unwind label %bb.dlb

bb.dks:                                           ; preds = %bb.dkr
  %i.jry = load ptr, ptr %i.jrb, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.0314.0.copyload = load i8, ptr %i.jrd, align 8, !tbaa !72
  %.sroa.0313.0.copyload = load i8, ptr %i.jrx, align 8, !tbaa !72
  %.sroa.39183.0.insert.ext = zext i8 %.sroa.0314.0.copyload to i64
  %.sroa.39183.0.insert.shift = shl nuw nsw i64 %.sroa.39183.0.insert.ext, 16
  %.sroa.29182.0.insert.insert = or disjoint i64 %.sroa.39183.0.insert.shift, 268468224
  %.sroa.39178.0.insert.ext = zext i8 %.sroa.0313.0.copyload to i64
  %.sroa.39178.0.insert.shift = shl nuw nsw i64 %.sroa.39178.0.insert.ext, 16
  %.sroa.29177.0.insert.insert = or disjoint i64 %.sroa.39178.0.insert.shift, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.jry, i64 %.sroa.29182.0.insert.insert, i64 %.sroa.29177.0.insert.insert)
          to label %bb.dkt unwind label %bb.dlb

bb.dkt:                                           ; preds = %bb.dks
  %i.jrz = load i32, ptr %i.jrf, align 8, !tbaa !73
  %.not.i8253 = icmp ugt i32 %i.jrz, 2
  br i1 %.not.i8253, label %bb.dkv, label %bb.dku, !prof !234

bb.dku:                                           ; preds = %bb.dkt
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jre, i32 noundef 3)
          to label %bb.dkv unwind label %bb.dlb

bb.dkv:                                           ; preds = %bb.dkt, %bb.dku
  %i.jsa = load ptr, ptr %i.jre, align 8, !tbaa !74
  %i.jsb = getelementptr inbounds nuw i8, ptr %i.jsa, i64 8
  %.sroa.0312.0.copyload = load i32, ptr %i.jsb, align 4, !tbaa !72
  invoke void @_ZN4Luau7CodeGen3X6413IrLoweringX6418jumpOrAbortOnUndefENS0_12ConditionX64ENS0_4IrOpEjRKNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i8 noundef zeroext 8, i32 %.sroa.0312.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(36) %3)
          to label %bb.dkw unwind label %bb.dlb

bb.dkw:                                           ; preds = %bb.dkv
  %i.jsc = load ptr, ptr %i.jrb, align 8, !tbaa !75, !nonnull !76, !align !77
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %i.jsc, ptr noundef nonnull align 4 dereferenceable(8) %299)
          to label %bb.dkx unwind label %bb.dlb

bb.dkx:                                           ; preds = %bb.dkw
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %300) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %299) #15
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %298) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %298) #15
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %297) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %297) #15
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.dky:                                           ; preds = %bb.dkb
  %i.jsd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dle

bb.dkz:                                           ; preds = %bb.dkm, %bb.dkh, %bb.dkd, %bb.dkn, %bb.dkk, %bb.dkj, %bb.dki, %bb.dkf, %bb.dke
  %i.jse = landingpad { ptr, i32 }
          cleanup
  br label %bb.dld

bb.dla:                                           ; preds = %bb.dko
  %i.jsf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dlc

bb.dlb:                                           ; preds = %bb.dku, %bb.dkw, %bb.dkv, %bb.dks, %bb.dkr, %bb.dkq, %bb.dkp
  %i.jsg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %300) #15
  br label %bb.dlc

bb.dlc:                                           ; preds = %bb.dlb, %bb.dla
  %.pn4937 = phi { ptr, i32 } [ %i.jsg, %bb.dlb ], [ %i.jsf, %bb.dla ]
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %299) #15
  br label %bb.dld

bb.dld:                                           ; preds = %bb.dlc, %bb.dkz
  %.pn4937.pn = phi { ptr, i32 } [ %.pn4937, %bb.dlc ], [ %i.jse, %bb.dkz ]
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %298) #15
  br label %bb.dle

bb.dle:                                           ; preds = %bb.dld, %bb.dky
  %.pn4937.pn.pn = phi { ptr, i32 } [ %.pn4937.pn, %bb.dld ], [ %i.jsd, %bb.dky ]
  call void @llvm.lifetime.end.p0(ptr nonnull %298) #15
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %297) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %297) #15
  br label %bb.dzj

bb.dlf:                                           ; preds = %bb.a
  %i.jsh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 26 uses
  %i.jsi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.jsj = load i32, ptr %i.jsi, align 8, !tbaa !73 ; 2 uses
  %.not.i8256 = icmp ugt i32 %i.jsj, 2
  br i1 %.not.i8256, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8257, label %bb.dlg, !prof !234

bb.dlg:                                           ; preds = %bb.dlf
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 3)
  %.pre13826.pre = load i32, ptr %i.jsi, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8257

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8257:   ; preds = %bb.dlf, %bb.dlg
  %.pre13826 = phi i32 [ %i.jsj, %bb.dlf ], [ %.pre13826.pre, %bb.dlg ] ; 3 uses
  %i.jsk = load ptr, ptr %i.jsh, align 8, !tbaa !74 ; 3 uses
  %i.jsl = getelementptr inbounds nuw i8, ptr %i.jsk, i64 8
  %.sroa.0306.0.copyload = load i32, ptr %i.jsl, align 4, !tbaa !72
  %i.jsm = lshr i32 %.sroa.0306.0.copyload, 4
  %i.jsn = trunc i32 %i.jsm to i8                 ; 4 uses
  %339 = icmp eq i8 %i.jsn, 0
  %or.cond19 = icmp ult i8 %i.jsn, 2
  br i1 %or.cond19, label %bb.dlh, label %bb.dlp

bb.dlh:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8257
  %.not.i8258 = icmp ugt i32 %.pre13826, 1
  br i1 %.not.i8258, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8259, label %bb.dli, !prof !234

bb.dli:                                           ; preds = %bb.dlh
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 2)
  %.pre13822 = load ptr, ptr %i.jsh, align 8, !tbaa !74
  %.pre13828.pre = load i32, ptr %i.jsi, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8259

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8259:   ; preds = %bb.dlh, %bb.dli
  %.pre13828 = phi i32 [ %.pre13826, %bb.dlh ], [ %.pre13828.pre, %bb.dli ] ; 3 uses
  %i.jso = phi ptr [ %i.jsk, %bb.dlh ], [ %.pre13822, %bb.dli ] ; 3 uses
  %i.jsp = getelementptr inbounds nuw i8, ptr %i.jso, i64 4
  %i.jsq = load i32, ptr %i.jsp, align 4          ; 2 uses
  %i.jsr = and i32 %i.jsq, 15
  %i.jss = icmp eq i32 %i.jsr, 2
  br i1 %i.jss, label %bb.dlj, label %bb.dlp

bb.dlj:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8259
  %.not.i8260 = icmp ugt i32 %.pre13828, 1
  br i1 %.not.i8260, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8261, label %bb.dlk, !prof !234

bb.dlk:                                           ; preds = %bb.dlj
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 2)
  %.pre13823 = load ptr, ptr %i.jsh, align 8, !tbaa !74 ; 2 uses
  %.phi.trans.insert13824 = getelementptr inbounds nuw i8, ptr %.pre13823, i64 4
  %.sroa.0305.0.copyload.pre = load i32, ptr %.phi.trans.insert13824, align 4, !tbaa !72
  %.pre13827.pre = load i32, ptr %i.jsi, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8261

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8261:   ; preds = %bb.dlj, %bb.dlk
  %.pre13827 = phi i32 [ %.pre13828, %bb.dlj ], [ %.pre13827.pre, %bb.dlk ] ; 2 uses
  %.sroa.0305.0.copyload = phi i32 [ %i.jsq, %bb.dlj ], [ %.sroa.0305.0.copyload.pre, %bb.dlk ]
  %i.jst = phi ptr [ %i.jso, %bb.dlj ], [ %.pre13823, %bb.dlk ] ; 2 uses
  %i.jsu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jsv = load ptr, ptr %i.jsu, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.jsw = getelementptr inbounds nuw i8, ptr %i.jsv, i64 48
  %i.jsx = lshr i32 %.sroa.0305.0.copyload, 4
  %i.jsy = zext nneg i32 %i.jsx to i64
  %i.jsz = load ptr, ptr %i.jsw, align 8, !tbaa !81
  %i.jta = getelementptr inbounds nuw [16 x i8], ptr %i.jsz, i64 %i.jsy
  %i.jtb = getelementptr inbounds nuw i8, ptr %i.jta, i64 8
  %i.jtc = load i64, ptr %i.jtb, align 8, !tbaa !72
  %i.jtd = icmp eq i64 %i.jtc, 0
  br i1 %i.jtd, label %bb.dll, label %bb.dlp

bb.dll:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8261
  %i.jte = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jtf = load ptr, ptr %i.jte, align 8, !tbaa !75, !nonnull !76, !align !77
  %.not.i8262.not = icmp eq i32 %.pre13827, 0
  br i1 %.not.i8262.not, label %bb.dlm, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8263, !prof !233

bb.dlm:                                           ; preds = %bb.dll
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 1)
  %.pre13832 = load ptr, ptr %i.jsh, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8263

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8263:   ; preds = %bb.dll, %bb.dlm
  %i.jtg = phi ptr [ %i.jst, %bb.dll ], [ %.pre13832, %bb.dlm ]
  %.sroa.0303.0.copyload = load i32, ptr %i.jtg, align 4, !tbaa !72
  %i.jth = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0303.0.copyload)
  %i.jti = load i32, ptr %i.jsi, align 8, !tbaa !73
  %.not.i8264.not = icmp eq i32 %i.jti, 0
  br i1 %.not.i8264.not, label %bb.dln, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8265, !prof !233

bb.dln:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8263
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8265

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8265:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8263, %bb.dln
  %i.jtj = load ptr, ptr %i.jsh, align 8, !tbaa !74
  %.sroa.0301.0.copyload = load i32, ptr %i.jtj, align 4, !tbaa !72
  %i.jtk = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0301.0.copyload)
  %.sroa.39173.0.insert.ext = zext i8 %i.jth to i64
  %.sroa.39173.0.insert.shift = shl nuw nsw i64 %.sroa.39173.0.insert.ext, 16
  %.sroa.29172.0.insert.insert = or disjoint i64 %.sroa.39173.0.insert.shift, 268468224
  %.sroa.39168.0.insert.ext = zext i8 %i.jtk to i64
  %.sroa.39168.0.insert.shift = shl nuw nsw i64 %.sroa.39168.0.insert.ext, 16
  %.sroa.29167.0.insert.insert = or disjoint i64 %.sroa.39168.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644testENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.jtf, i64 %.sroa.29172.0.insert.insert, i64 %.sroa.29167.0.insert.insert)
  %340 = select i1 %339, i8 23, i8 22
  %i.jtl = load i32, ptr %i.jsi, align 8, !tbaa !73
  %.not.i8266 = icmp ugt i32 %i.jtl, 3
  br i1 %.not.i8266, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8267, label %bb.dlo, !prof !234

bb.dlo:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8265
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 4)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8267

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8267:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8265, %bb.dlo
  %i.jtm = load ptr, ptr %i.jsh, align 8, !tbaa !74
  %i.jtn = getelementptr inbounds nuw i8, ptr %i.jtm, i64 12
  %.sroa.0300.0.copyload = load i32, ptr %i.jtn, align 4, !tbaa !72
  tail call void @_ZN4Luau7CodeGen3X6413IrLoweringX6418jumpOrAbortOnUndefENS0_12ConditionX64ENS0_4IrOpEjRKNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i8 noundef zeroext %340, i32 %.sroa.0300.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(36) %3)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.dlp:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8257, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8261, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8259
  %i.jto = phi ptr [ %i.jsk, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8257 ], [ %i.jst, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8261 ], [ %i.jso, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8259 ]
  %i.jtp = phi i32 [ %.pre13826, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8257 ], [ %.pre13827, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8261 ], [ %.pre13828, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8259 ]
  %.not.i8268.not = icmp eq i32 %i.jtp, 0
  br i1 %.not.i8268.not, label %bb.dlq, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8269, !prof !233

bb.dlq:                                           ; preds = %bb.dlp
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 1)
  %.pre13829 = load ptr, ptr %i.jsh, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8269

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8269:   ; preds = %bb.dlp, %bb.dlq
  %i.jtq = phi ptr [ %i.jto, %bb.dlp ], [ %.pre13829, %bb.dlq ]
  %i.jtr = load i32, ptr %i.jtq, align 4          ; 2 uses
  %i.jts = and i32 %i.jtr, 15
  %i.jtt = icmp eq i32 %i.jts, 2
  br i1 %i.jtt, label %bb.dlr, label %bb.dmf

bb.dlr:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8269
  call void @llvm.lifetime.start.p0(ptr nonnull %301) #15
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64C1ERNS1_13IrRegAllocX64ENS1_7SizeX64E(ptr noundef nonnull align 8 dereferenceable(9) %301, ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 4)
  %i.jtu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jtv = load ptr, ptr %i.jtu, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.jtw = getelementptr inbounds nuw i8, ptr %301, i64 8 ; 2 uses
  %.sroa.0299.0.copyload = load i8, ptr %i.jtw, align 8, !tbaa !72
  %i.jtx = load i32, ptr %i.jsi, align 8, !tbaa !73
  %.not.i8270.not = icmp eq i32 %i.jtx, 0
  br i1 %.not.i8270.not, label %bb.dls, label %bb.dlt, !prof !233

bb.dls:                                           ; preds = %bb.dlr
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 1)
          to label %bb.dlt unwind label %bb.dme

bb.dlt:                                           ; preds = %bb.dlr, %bb.dls
  %i.jty = load ptr, ptr %i.jsh, align 8, !tbaa !74
  %.sroa.0297.0.copyload = load i32, ptr %i.jty, align 4, !tbaa !72
  %i.jtz = invoke i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6413memRegInt64OpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0297.0.copyload)
          to label %bb.dlu unwind label %bb.dme

bb.dlu:                                           ; preds = %bb.dlt
  %.sroa.39163.0.insert.ext = zext i8 %.sroa.0299.0.copyload to i64
  %.sroa.39163.0.insert.shift = shl nuw nsw i64 %.sroa.39163.0.insert.ext, 16
  %.sroa.29162.0.insert.insert = or disjoint i64 %.sroa.39163.0.insert.shift, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.jtv, i64 %.sroa.29162.0.insert.insert, i64 %i.jtz)
          to label %bb.dlv unwind label %bb.dme

bb.dlv:                                           ; preds = %bb.dlu
  %i.jua = load ptr, ptr %i.jtu, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.0296.0.copyload = load i8, ptr %i.jtw, align 8, !tbaa !72
  %i.jub = load i32, ptr %i.jsi, align 8, !tbaa !73
  %.not.i8273 = icmp ugt i32 %i.jub, 1
  br i1 %.not.i8273, label %bb.dlx, label %bb.dlw, !prof !234

bb.dlw:                                           ; preds = %bb.dlv
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 2)
          to label %bb.dlx unwind label %bb.dme

bb.dlx:                                           ; preds = %bb.dlv, %bb.dlw
  %i.juc = load ptr, ptr %i.jsh, align 8, !tbaa !74
  %i.jud = getelementptr inbounds nuw i8, ptr %i.juc, i64 4
  %.sroa.0294.0.copyload = load i32, ptr %i.jud, align 4, !tbaa !72
  %i.jue = invoke i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6413memRegInt64OpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0294.0.copyload)
          to label %bb.dly unwind label %bb.dme

bb.dly:                                           ; preds = %bb.dlx
  %.sroa.39158.0.insert.ext = zext i8 %.sroa.0296.0.copyload to i64
  %.sroa.39158.0.insert.shift = shl nuw nsw i64 %.sroa.39158.0.insert.ext, 16
  %.sroa.29157.0.insert.insert = or disjoint i64 %.sroa.39158.0.insert.shift, 268468224
  invoke void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.jua, i64 %.sroa.29157.0.insert.insert, i64 %i.jue)
          to label %bb.dlz unwind label %bb.dme

bb.dlz:                                           ; preds = %bb.dly
  %i.juf = call noundef zeroext i8 @_ZN4Luau7CodeGen19getNegatedConditionENS0_11IrConditionE(i8 noundef zeroext %i.jsn)
  %i.jug = invoke noundef zeroext i8 @_ZN4Luau7CodeGen3X6415getConditionIntENS0_11IrConditionE(i8 noundef zeroext %i.juf)
          to label %bb.dma unwind label %bb.dme

bb.dma:                                           ; preds = %bb.dlz
  %i.juh = load i32, ptr %i.jsi, align 8, !tbaa !73
  %.not.i8276 = icmp ugt i32 %i.juh, 3
  br i1 %.not.i8276, label %bb.dmc, label %bb.dmb, !prof !234

bb.dmb:                                           ; preds = %bb.dma
  invoke void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 4)
          to label %bb.dmc unwind label %bb.dme

bb.dmc:                                           ; preds = %bb.dma, %bb.dmb
  %i.jui = load ptr, ptr %i.jsh, align 8, !tbaa !74
  %i.juj = getelementptr inbounds nuw i8, ptr %i.jui, i64 12
  %.sroa.0293.0.copyload = load i32, ptr %i.juj, align 4, !tbaa !72
  invoke void @_ZN4Luau7CodeGen3X6413IrLoweringX6418jumpOrAbortOnUndefENS0_12ConditionX64ENS0_4IrOpEjRKNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i8 noundef zeroext %i.jug, i32 %.sroa.0293.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(36) %3)
          to label %bb.dmd unwind label %bb.dme

bb.dmd:                                           ; preds = %bb.dmc
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %301) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #15
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.dme:                                           ; preds = %bb.dmb, %bb.dlw, %bb.dls, %bb.dmc, %bb.dlz, %bb.dly, %bb.dlx, %bb.dlu, %bb.dlt
  %i.juk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7CodeGen3X6412ScopedRegX64D1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %301) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #15
  br label %bb.dzj

bb.dmf:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8269
  %i.jul = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jum = load ptr, ptr %i.jul, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.jun = load i32, ptr %i.jsi, align 8, !tbaa !73
  %.not.i8279.not = icmp eq i32 %i.jun, 0
  br i1 %.not.i8279.not, label %bb.dmg, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8280, !prof !233

bb.dmg:                                           ; preds = %bb.dmf
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 1)
  %.pre13830 = load ptr, ptr %i.jsh, align 8, !tbaa !74
  %.sroa.0291.0.copyload.pre = load i32, ptr %.pre13830, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8280

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8280:   ; preds = %bb.dmf, %bb.dmg
  %.sroa.0291.0.copyload = phi i32 [ %i.jtr, %bb.dmf ], [ %.sroa.0291.0.copyload.pre, %bb.dmg ]
  %i.juo = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0291.0.copyload)
  %i.jup = load i32, ptr %i.jsi, align 8, !tbaa !73
  %.not.i8281 = icmp ugt i32 %i.jup, 1
  br i1 %.not.i8281, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8282, label %bb.dmh, !prof !234

bb.dmh:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8280
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8282

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8282:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8280, %bb.dmh
  %i.juq = load ptr, ptr %i.jsh, align 8, !tbaa !74
  %i.jur = getelementptr inbounds nuw i8, ptr %i.juq, i64 4
  %.sroa.0289.0.copyload = load i32, ptr %i.jur, align 4, !tbaa !72
  %i.jus = tail call i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6413memRegInt64OpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0289.0.copyload)
  %.sroa.39153.0.insert.ext = zext i8 %i.juo to i64
  %.sroa.39153.0.insert.shift = shl nuw nsw i64 %.sroa.39153.0.insert.ext, 16
  %.sroa.29152.0.insert.insert = or disjoint i64 %.sroa.39153.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.jum, i64 %.sroa.29152.0.insert.insert, i64 %i.jus)
  %i.jut = tail call noundef zeroext i8 @_ZN4Luau7CodeGen19getNegatedConditionENS0_11IrConditionE(i8 noundef zeroext %i.jsn)
  %i.juu = tail call noundef zeroext i8 @_ZN4Luau7CodeGen3X6415getConditionIntENS0_11IrConditionE(i8 noundef zeroext %i.jut)
  %i.juv = load i32, ptr %i.jsi, align 8, !tbaa !73
  %.not.i8283 = icmp ugt i32 %i.juv, 3
  br i1 %.not.i8283, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8284, label %bb.dmi, !prof !234

bb.dmi:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8282
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jsh, i32 noundef 4)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8284

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8284:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8282, %bb.dmi
  %i.juw = load ptr, ptr %i.jsh, align 8, !tbaa !74
  %i.jux = getelementptr inbounds nuw i8, ptr %i.juw, i64 12
  %.sroa.0288.0.copyload = load i32, ptr %i.jux, align 4, !tbaa !72
  tail call void @_ZN4Luau7CodeGen3X6413IrLoweringX6418jumpOrAbortOnUndefENS0_12ConditionX64ENS0_4IrOpEjRKNS0_7IrBlockE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i8 noundef zeroext %i.juu, i32 %.sroa.0288.0.copyload, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(36) %3)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.dmj:                                           ; preds = %bb.a
  %i.juy = tail call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX648allocRegENS1_7SizeX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 3, i32 noundef %2) ; 2 uses
  %i.juz = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  store i8 %i.juy, ptr %i.juz, align 2, !tbaa !72
  %i.jva = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.jvb = load ptr, ptr %i.jva, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.39148.0.insert.ext = zext i8 %i.juy to i64
  %.sroa.39148.0.insert.shift = shl nuw nsw i64 %.sroa.39148.0.insert.ext, 16
  %.sroa.29147.0.insert.insert = or disjoint i64 %.sroa.39148.0.insert.shift, 268468224 ; 2 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644xor_ENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.jvb, i64 %.sroa.29147.0.insert.insert, i64 %.sroa.29147.0.insert.insert)
  %i.jvc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.jvd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.jve = load i32, ptr %i.jvd, align 8, !tbaa !73
  %.not.i8285 = icmp ugt i32 %i.jve, 2
  br i1 %.not.i8285, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286.thread, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286, !prof !234

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286.thread: ; preds = %bb.dmj
  %i.jvf = load ptr, ptr %i.jvc, align 8, !tbaa !74 ; 2 uses
  %i.jvg = getelementptr inbounds nuw i8, ptr %i.jvf, i64 8
  %.sroa.0282.0.copyload15204 = load i32, ptr %i.jvg, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8288

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286:   ; preds = %bb.dmj
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jvc, i32 noundef 3)
  %.pre13815 = load i32, ptr %i.jvd, align 8, !tbaa !73
  %i.jvh = icmp eq i32 %.pre13815, 0
  %i.jvi = load ptr, ptr %i.jvc, align 8, !tbaa !74 ; 2 uses
  %i.jvj = getelementptr inbounds nuw i8, ptr %i.jvi, i64 8
  %.sroa.0282.0.copyload = load i32, ptr %i.jvj, align 4, !tbaa !72 ; 2 uses
  br i1 %i.jvh, label %bb.dmk, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8288, !prof !237

bb.dmk:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jvc, i32 noundef 1)
  %.pre13816 = load ptr, ptr %i.jvc, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8288

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8288:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286.thread, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286, %bb.dmk
  %.in.in = phi i32 [ %.sroa.0282.0.copyload, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286 ], [ %.sroa.0282.0.copyload, %bb.dmk ], [ %.sroa.0282.0.copyload15204, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286.thread ]
  %i.jvk = phi ptr [ %i.jvi, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286 ], [ %.pre13816, %bb.dmk ], [ %i.jvf, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8286.thread ] ; 2 uses
  %.in = lshr i32 %.in.in, 4
  %i.jvl = trunc i32 %.in to i8                   ; 2 uses
  %i.jvm = load i32, ptr %i.jvk, align 4          ; 2 uses
  %i.jvn = and i32 %i.jvm, 15
  %i.jvo = icmp eq i32 %i.jvn, 2
end_hunk_1
