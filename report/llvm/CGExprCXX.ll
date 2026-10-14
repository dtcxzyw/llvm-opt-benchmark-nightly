Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGExprCXX?download=true
inline.NumInlined: 3691
inline.NumDeleted: 2133
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang7CodeGen15CodeGenFunction14EmitCXXNewExprEPKNS_10CXXNewExprE:bb.a
  br i1 %.not.i.i177, label %bb.dq, label %bb.dp, !prof !276

bb.dp:                                            ; preds = %bb.do
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7CodeGen7CallArgELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(1560) %68, ptr noundef nonnull align 8 dereferenceable(160) %24)
  br label %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit178

bb.dq:                                            ; preds = %bb.do
  %i.xq = zext i32 %i.xo to i64
  %i.xr = load ptr, ptr %68, align 8, !tbaa !26
  %i.xs = getelementptr inbounds nuw [160 x i8], ptr %i.xr, i64 %i.xq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.xs, ptr noundef nonnull align 8 dereferenceable(160) %24, i64 160, i1 false)
  %i.xt = load i32, ptr %i.tk, align 8, !tbaa !27
  %i.xu = add i32 %i.xt, 1
  store i32 %i.xu, ptr %i.tk, align 8, !tbaa !27
  br label %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit178

_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit178: ; preds = %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  %.not = icmp eq ptr %.0.i, %.4529
  br i1 %.not, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit178
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !17
  %i.xx = zext i8 %i.xw to i64
  %.sroa.speculated288 = call i64 @llvm.smax.i64(i64 %i.ti, i64 %i.xx)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit178
  %.sroa.0462.0 = phi i64 [ %i.ti, %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit178 ], [ %.sroa.speculated288, %bb.dr ] ; 6 uses
  %i.xy = and i32 %i.vz, 2097152
  %.not541 = icmp eq i32 %i.xy, 0
  br i1 %.not541, label %bb.dy, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.xz = getelementptr inbounds nuw i8, ptr %.1.i167, i64 16
  %i.ya = load i64, ptr %i.xz, align 16
  %i.yb = lshr i64 %i.ya, 48
  %i.yc = trunc nuw nsw i64 %i.yb to i32
  %i.yd = icmp samesign ult i32 %.0126, %i.yc
  br i1 %i.yd, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ye = getelementptr inbounds nuw i8, ptr %.1.i167, i64 48
  %i.yf = zext nneg i32 %.0126 to i64
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.yf
  %.sroa.0.0.copyload.i179 = load i64, ptr %i.yg, align 8, !tbaa !17
  %i.yh = add nuw nsw i32 %.0126, 1
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dt, %bb.du
  %.sroa.052.0 = phi i64 [ %.sroa.0.0.copyload.i179, %bb.du ], [ %i.xk, %bb.dt ]
  %.1129 = phi i32 [ %i.yh, %bb.du ], [ %.0126, %bb.dt ]
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !17
  %i.yk = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.yj, i64 noundef %.sroa.0462.0, i1 noundef zeroext false, i1 noundef zeroext false) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  store ptr %i.yk, ptr %23, align 8
  %.sroa.4505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %.sroa.4505.0..sroa_idx, align 8
  %.sroa.6507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 48
  store i8 0, ptr %.sroa.6507.0..sroa_idx, align 8
  %i.yl = getelementptr inbounds nuw i8, ptr %23, i64 144
  store i8 0, ptr %i.yl, align 8, !tbaa !274
  %i.ym = getelementptr inbounds nuw i8, ptr %23, i64 145
  store i8 0, ptr %i.ym, align 1, !tbaa !275
  %i.yn = getelementptr inbounds nuw i8, ptr %23, i64 152
  store i64 %.sroa.052.0, ptr %i.yn, align 8, !tbaa !17
  %i.yo = load i32, ptr %i.tk, align 8, !tbaa !27 ; 2 uses
  %i.yp = load i32, ptr %i.tl, align 4, !tbaa !28
  %.not.i.i180 = icmp ult i32 %i.yo, %i.yp
  br i1 %.not.i.i180, label %bb.dx, label %bb.dw, !prof !276

bb.dw:                                            ; preds = %bb.dv
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang7CodeGen7CallArgELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(1560) %68, ptr noundef nonnull align 8 dereferenceable(160) %23)
  br label %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit181

bb.dx:                                            ; preds = %bb.dv
  %i.yq = zext i32 %i.yo to i64
  %i.yr = load ptr, ptr %68, align 8, !tbaa !26
  %i.ys = getelementptr inbounds nuw [160 x i8], ptr %i.yr, i64 %i.yq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.ys, ptr noundef nonnull align 8 dereferenceable(160) %23, i64 160, i1 false)
  %i.yt = load i32, ptr %i.tk, align 8, !tbaa !27
  %i.yu = add i32 %i.yt, 1
  store i32 %i.yu, ptr %i.tk, align 8, !tbaa !27
  br label %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit181

_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit181: ; preds = %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %bb.dy

bb.dy:                                            ; preds = %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit181, %bb.ds
  %.2 = phi i32 [ %.1129, %_ZN5clang7CodeGen11CallArgList3addENS0_6RValueENS_8QualTypeE.exit181 ], [ %.0126, %bb.ds ]
  %i.yv = ptrtoint ptr %.1.i167 to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.yx = load i32, ptr %1, align 8               ; 2 uses
  %i.yy = lshr i32 %i.yx, 20
  %.lobit.i.i.i.i182 = and i32 %i.yy, 1
  %i.yz = lshr i32 %i.yx, 24
  %.lobit.i.i.i183 = and i32 %i.yz, 1
  %i.za = add nuw nsw i32 %.lobit.i.i.i.i182, %.lobit.i.i.i183
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.zb ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !17
  %i.zf = zext i32 %i.ze to i64
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %i.zf
  call void @_ZN5clang7CodeGen15CodeGenFunction12EmitCallArgsERNS0_11CallArgListENS1_16PrototypeWrapperEN4llvm14iterator_rangeINS_4Stmt12CastIteratorINS_4ExprEKPKS9_KPKS7_EEEENS1_14AbstractCalleeEjNS1_15EvaluationOrderE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull align 8 dereferenceable(1560) %68, i64 %i.yv, ptr nonnull %i.zc, ptr nonnull %i.zg, ptr null, i32 noundef %.2, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #16
  call fastcc void @_ZL17EmitNewDeleteCallRN5clang7CodeGen15CodeGenFunctionEPKNS_12FunctionDeclEPKNS_17FunctionProtoTypeERKNS0_11CallArgListEPN4llvm8ConstantE(ptr dead_on_unwind noalias nonnull writable align 8 %73, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %i.x, ptr noundef %.1.i167, ptr noundef nonnull align 8 dereferenceable(1560) %68, ptr noundef null)
  %i.zh = load ptr, ptr %73, align 8, !tbaa !17   ; 3 uses
  %i.zi = load i8, ptr %i.zh, align 8, !tbaa !773 ; 2 uses
  %i.zj = icmp ugt i8 %i.zi, 29
  br i1 %i.zj, label %bb.dz, label %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit.thread

bb.dz:                                            ; preds = %bb.dy
  switch i8 %i.zi, label %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit.thread [
    i8 88, label %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit
    i8 36, label %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit
    i8 42, label %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit: ; preds = %bb.dz, %bb.dz, %bb.dz
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 3036
  %i.zl = load i8, ptr %i.zk, align 4, !tbaa !680, !range !681, !noundef !264
  %i.zm = trunc nuw i8 %i.zl to i1
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.zo = load ptr, ptr %i.zn, align 8            ; 2 uses
  %.not139542 = icmp eq ptr %i.zo, null
  %.not139 = select i1 %i.zm, i1 true, i1 %.not139542
  br i1 %.not139, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit
  %.sroa.042.0.copyload = load i64, ptr %67, align 8, !tbaa !17
  %i.zp = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  call void @_ZN5clang7CodeGen11CGDebugInfo24addHeapAllocSiteMetadataEPN4llvm8CallBaseENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2480) %i.zo, ptr noundef nonnull %i.zh, i64 %.sroa.042.0.copyload, i32 %i.zp) #16
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !17
  %i.zq = and i64 %.sroa.2.0.copyload.i, 1024
  %.not543 = icmp eq i64 %i.zq, 0
  br i1 %.not543, label %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit.thread, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.sroa.038.0.copyload = load i64, ptr %67, align 8, !tbaa !17
  call void @_ZN5clang7CodeGen15CodeGenFunction14EmitAllocTokenEPN4llvm8CallBaseENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %i.zh, i64 %.sroa.038.0.copyload) #16
  br label %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit.thread: ; preds = %bb.dz, %bb.dy, %bb.eb, %bb.ec
  %i.zr = load i32, ptr %1, align 8
  %i.zs = and i32 %i.zr, 2097152
  %.not544 = icmp eq i32 %i.zs, 0
  br i1 %.not544, label %bb.ed, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread

bb.ed:                                            ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit.thread
  %i.zt = call noundef zeroext i1 @_ZNK5clang12FunctionDecl30isTypeAwareOperatorNewOrDeleteEv(ptr noundef nonnull align 8 dereferenceable(168) %i.x) #16
  br i1 %i.zt, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit

_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit: ; preds = %bb.ed
  %i.zu = call noundef zeroext i1 @_ZNK5clang12FunctionDecl54isUsableAsGlobalAllocationFunctionInConstantEvaluationEPNS_16OptionalUnsignedIjEEPb(ptr noundef nonnull align 8 dereferenceable(168) %i.x, ptr noundef null, ptr noundef null) #16
  br i1 %i.zu, label %bb.ee, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread

bb.ee:                                            ; preds = %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !1443, !nonnull !264, !align !265 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 64
  %i.zy = load i16, ptr %i.zx, align 8, !tbaa !1451 ; 2 uses
  %.not.i191 = icmp eq i16 %i.zy, 0
  br i1 %.not.i191, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zz = zext i16 %i.zy to i64
  br label %_ZNK5clang10TargetInfo11getNewAlignEv.exit

bb.eg:                                            ; preds = %bb.ee
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zw, i64 25
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zw, i64 33
  %i.aac = load i8, ptr %i.aaa, align 1, !tbaa !17
  %i.aad = load i8, ptr %i.aab, align 1, !tbaa !17
  %i.aae = call i8 @llvm.umax.i8(i8 %i.aac, i8 %i.aad)
  %i.aaf = zext i8 %i.aae to i64
  br label %_ZNK5clang10TargetInfo11getNewAlignEv.exit

_ZNK5clang10TargetInfo11getNewAlignEv.exit:       ; preds = %bb.ef, %bb.eg
  %i.aag = phi i64 [ %i.zz, %bb.ef ], [ %i.aaf, %bb.eg ]
  %i.aah = load ptr, ptr %i.j, align 8, !tbaa !263, !nonnull !264, !align !265
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 144
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !655, !nonnull !264, !align !265
  %.sroa.036.0.copyload = load i64, ptr %67, align 8, !tbaa !17
  %i.aak = and i64 %.sroa.036.0.copyload, -16
  %i.aal = inttoptr i64 %i.aak to ptr
  %i.aam = load ptr, ptr %i.aal, align 16, !tbaa !24
  %i.aan = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.aaj, ptr noundef %i.aam) #16
  %i.aao = extractvalue { i64, i64 } %i.aan, 0
  %.sroa.speculated275 = call i64 @llvm.umin.i64(i64 %i.aao, i64 %i.aag) ; 2 uses
  %.not.i193 = icmp eq i64 %.sroa.speculated275, 0
  %i.aap = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.speculated275, i1 true)
  %i.aaq = lshr exact i64 -9223372036854775808, %i.aap
  %.0.i194 = select i1 %.not.i193, i64 0, i64 %i.aaq
  %i.aar = load ptr, ptr %i.j, align 8, !tbaa !263, !nonnull !264, !align !265
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 144
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !655, !nonnull !264, !align !265
  %i.aau = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %i.aat, i64 noundef %.0.i194) #16
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.sroa.0462.0, i64 %i.aau)
  br label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread

_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread: ; preds = %bb.ed, %_ZNK5clang10TargetInfo11getNewAlignEv.exit, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit, %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit.thread
  %.sroa.0279.0 = phi i64 [ %.sroa.0462.0, %_ZN4llvm8dyn_castINS_8CallBaseENS_5ValueEEEDcPT0_.exit.thread ], [ %.sroa.speculated, %_ZNK5clang10TargetInfo11getNewAlignEv.exit ], [ %.sroa.0462.0, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit ], [ %.sroa.0462.0, %bb.ed ]
  %i.aav = load ptr, ptr %73, align 8, !tbaa !17
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !748
  %i.aay = ptrtoint ptr %i.aav to i64
  %i.aaz = and i64 %i.aay, -5
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #16
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread, %bb.de
  %.sroa.13.1 = phi i64 [ %spec.select538, %bb.de ], [ %.sroa.0279.0, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ] ; 3 uses
  %.sroa.12.0 = phi ptr [ %.sroa.12.0.copyload, %bb.de ], [ %i.aax, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ] ; 2 uses
  %.sroa.0324.0 = phi i64 [ %.sroa.0324.0.copyload, %bb.de ], [ %i.aaz, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ] ; 4 uses
  %.sroa.0462.1 = phi i64 [ %i.ti, %bb.de ], [ %.sroa.0462.0, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ] ; 2 uses
  %.sroa.16.sroa.13.sroa.0.0 = phi i56 [ %.sroa.16.sroa.13.0.extract.trunc, %bb.de ], [ undef, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ] ; 3 uses
  %.sroa.16.sroa.0.0 = phi i8 [ %.sroa.16.sroa.0.0.extract.trunc, %bb.de ], [ 0, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ] ; 3 uses
  %.sroa.21.0 = phi ptr [ %.sroa.21.0.copyload, %bb.de ], [ null, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ] ; 3 uses
  %.sroa.23.0 = phi ptr [ %.sroa.23.0.copyload, %bb.de ], [ null, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ] ; 4 uses
  %.sroa.6311.1 = phi i8 [ 0, %bb.de ], [ %.sroa.6311.0, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ]
  %i.aba = call noundef zeroext i1 @_ZNK5clang10CXXNewExpr25shouldNullCheckAllocationEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #16
  br i1 %i.aba, label %bb.ei, label %.thread533

.thread533:                                       ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #16
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !1154
  store ptr %i.abc, ptr %74, align 8, !tbaa !1453
  br label %bb.ep

bb.ei:                                            ; preds = %bb.eh
  %i.abd = load ptr, ptr %i.j, align 8, !tbaa !263, !nonnull !264, !align !265
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 144
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !655, !nonnull !264, !align !265
  %i.abg = call noundef zeroext i1 @_ZNK5clang8QualType9isPODTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(23904) %i.abf) #16
  br i1 %i.abg, label %bb.ej, label %.thread

bb.ej:                                            ; preds = %bb.ei
  %i.abh = load i32, ptr %1, align 8
  %i.abi = and i32 %i.abh, 16777216
  %.not545 = icmp eq i32 %i.abi, 0
  br i1 %.not545, label %bb.ek, label %.thread

.thread:                                          ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #16
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !1154 ; 2 uses
  store ptr %i.abk, ptr %74, align 8, !tbaa !1453
  br label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.abl = call noundef zeroext i1 @_ZNK5clang7CodeGen15CodeGenFunction24sanitizePerformTypeCheckEv(ptr noundef nonnull align 8 dereferenceable(6288) %0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #16
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !1154 ; 2 uses
  store ptr %i.abn, ptr %74, align 8, !tbaa !1453
  br i1 %i.abl, label %bb.el, label %bb.ep

bb.el:                                            ; preds = %.thread, %bb.ek
  %i.abo = phi ptr [ %i.abk, %.thread ], [ %i.abn, %bb.ek ]
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !1454
  %.not.i196 = icmp eq ptr %i.abq, null
  br i1 %.not.i196, label %bb.em, label %_ZN5clang7CodeGen15CodeGenFunction21ConditionalEvaluation5beginERS1_.exit

bb.em:                                            ; preds = %bb.el
  store ptr %74, ptr %i.abp, align 8, !tbaa !1454
  br label %_ZN5clang7CodeGen15CodeGenFunction21ConditionalEvaluation5beginERS1_.exit

_ZN5clang7CodeGen15CodeGenFunction21ConditionalEvaluation5beginERS1_.exit: ; preds = %bb.el, %bb.em
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #16
  %i.abs = getelementptr inbounds nuw i8, ptr %75, i64 32
  %i.abt = getelementptr inbounds nuw i8, ptr %75, i64 33
  store i8 1, ptr %i.abt, align 1, !tbaa !292
  store ptr @.str.11, ptr %75, align 8, !tbaa !17
  store i8 3, ptr %i.abs, align 8, !tbaa !291
  %i.abu = load ptr, ptr %i.j, align 8, !tbaa !263, !nonnull !264, !align !265
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 232
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !1155, !nonnull !264, !align !265
  %i.abx = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 3 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.abx, ptr noundef nonnull align 8 dereferenceable(8) %i.abw, ptr noundef nonnull align 8 dereferenceable(34) %75, ptr noundef null, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #16
  %i.aby = getelementptr inbounds nuw i8, ptr %76, i64 32
  %i.abz = getelementptr inbounds nuw i8, ptr %76, i64 33
  store i8 1, ptr %i.abz, align 1, !tbaa !292
  store ptr @.str.12, ptr %76, align 8, !tbaa !17
  store i8 3, ptr %i.aby, align 8, !tbaa !291
  %i.aca = load ptr, ptr %i.j, align 8, !tbaa !263, !nonnull !264, !align !265
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 232
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !1155, !nonnull !264, !align !265
  %i.acd = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 3 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.acd, ptr noundef nonnull align 8 dereferenceable(8) %i.acc, ptr noundef nonnull align 8 dereferenceable(34) %76, ptr noundef null, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #16
  %i.ace = getelementptr inbounds nuw i8, ptr %77, i64 32
  %i.acf = getelementptr inbounds nuw i8, ptr %77, i64 33
  store i8 1, ptr %i.acf, align 1, !tbaa !292
  store ptr @.str.13, ptr %77, align 8, !tbaa !17
  store i8 3, ptr %i.ace, align 8, !tbaa !291
  %.not.i197 = icmp eq ptr %.sroa.23.0, null
  br i1 %.not.i197, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %_ZN5clang7CodeGen15CodeGenFunction21ConditionalEvaluation5beginERS1_.exit
  %i.acg = and i64 %.sroa.0324.0, -8
  %i.ach = inttoptr i64 %i.acg to ptr             ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !753
  %i.ack = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.acj) #16
  %i.acl = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(128) %i.abr, i32 noundef 32, ptr noundef nonnull %i.ach, ptr noundef %i.ack, ptr noundef nonnull align 8 dereferenceable(34) %77)
  br label %_ZN5clang7CodeGen11CGBuilderTy12CreateIsNullENS0_7AddressERKN4llvm5TwineE.exit

bb.eo:                                            ; preds = %_ZN5clang7CodeGen15CodeGenFunction21ConditionalEvaluation5beginERS1_.exit
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !754, !nonnull !264, !align !265
  %i.aco = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.acn) #16
  br label %_ZN5clang7CodeGen11CGBuilderTy12CreateIsNullENS0_7AddressERKN4llvm5TwineE.exit

_ZN5clang7CodeGen11CGBuilderTy12CreateIsNullENS0_7AddressERKN4llvm5TwineE.exit: ; preds = %bb.en, %bb.eo
  %.0.i198 = phi ptr [ %i.aco, %bb.eo ], [ %i.acl, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #16
  %i.acp = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 3) #16 ; 3 uses
  call void @_ZN4llvm10CondBrInstC1EPNS_5ValueEPNS_10BasicBlockES4_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.acp, ptr noundef %.0.i198, ptr noundef nonnull %i.acd, ptr noundef nonnull %i.abx, ptr null, i64 0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.acq = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i16 257, ptr %i.acq, align 8
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !781, !nonnull !264, !align !265 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sroa.0.0.copyload.i.i200 = load ptr, ptr %i.act, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.acu = load ptr, ptr %i.acs, align 8, !tbaa !272
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  %i.acw = load ptr, ptr %i.acv, align 8
  call void %i.acw(ptr noundef nonnull align 8 dereferenceable(8) %i.acs, ptr noundef nonnull %i.acp, ptr noundef nonnull align 8 dereferenceable(34) %22, ptr %.sroa.0.0.copyload.i.i200, i64 %.sroa.2.0.copyload.i.i) #16, !inline_history !7
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.abr, ptr noundef nonnull %i.acp) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @_ZN5clang7CodeGen15CodeGenFunction9EmitBlockEPN4llvm10BasicBlockEb(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull %i.abx, i1 noundef zeroext false) #16
  br label %bb.ep

bb.ep:                                            ; preds = %.thread533, %_ZN5clang7CodeGen11CGBuilderTy12CreateIsNullENS0_7AddressERKN4llvm5TwineE.exit, %bb.ek
  %i.acx = phi i1 [ true, %_ZN5clang7CodeGen11CGBuilderTy12CreateIsNullENS0_7AddressERKN4llvm5TwineE.exit ], [ false, %bb.ek ], [ false, %.thread533 ] ; 2 uses
  %.0132 = phi ptr [ %i.acd, %_ZN5clang7CodeGen11CGBuilderTy12CreateIsNullENS0_7AddressERKN4llvm5TwineE.exit ], [ null, %bb.ek ], [ null, %.thread533 ]
  %.0131 = phi ptr [ %i.abo, %_ZN5clang7CodeGen11CGBuilderTy12CreateIsNullENS0_7AddressERKN4llvm5TwineE.exit ], [ null, %bb.ek ], [ null, %.thread533 ]
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !1438 ; 2 uses
  %.not142 = icmp eq ptr %i.acz, null
  br i1 %.not142, label %bb.fo, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ada = call noundef zeroext i1 @_ZNK5clang12FunctionDecl33isReservedGlobalPlacementOperatorEv(ptr noundef nonnull align 8 dereferenceable(168) %i.acz) #16
  br i1 %i.ada, label %bb.fo, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.adb = load ptr, ptr %i.j, align 8, !tbaa !263, !nonnull !264, !align !265
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 152
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !658, !nonnull !264, !align !265
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.adf = load i64, ptr %i.ade, align 8
  %i.adg = and i64 %i.adf, 35184372088832
  %.not143 = icmp eq i64 %i.adg, 0
  br i1 %.not143, label %_ZNK5clang10CXXNewExpr16getConstructExprEv.exit.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %.0.copyload.i.i.i.i.i201 = load i64, ptr %i.adh, align 8
  %.not546 = icmp eq i64 %.0.copyload.i.i.i.i.i201, 0
  br i1 %.not546, label %_ZNK5clang10CXXNewExpr16getConstructExprEv.exit.thread, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.adi = load i32, ptr %1, align 8              ; 2 uses
  %i.adj = and i32 %i.adi, 16777216
  %.not.i.i202 = icmp eq i32 %i.adj, 0
  br i1 %.not.i.i202, label %_ZNK5clang10CXXNewExpr16getConstructExprEv.exit.thread, label %_ZNK5clang10CXXNewExpr14getInitializerEv.exit.i

_ZNK5clang10CXXNewExpr14getInitializerEv.exit.i:  ; preds = %bb.et
  %i.adk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.adl = lshr i32 %i.adi, 20
  %.lobit.i.i.i203 = and i32 %i.adl, 1
  %i.adm = zext nneg i32 %.lobit.i.i.i203 to i64
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.adk, i64 %i.adm
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !282 ; 3 uses
  %.not.i.i.i204 = icmp eq ptr %i.ado, null
  br i1 %.not.i.i.i204, label %_ZNK5clang10CXXNewExpr16getConstructExprEv.exit.thread, label %bb.eu

bb.eu:                                            ; preds = %_ZNK5clang10CXXNewExpr14getInitializerEv.exit.i
  %i.adp = load i16, ptr %i.ado, align 8
  %i.adq = and i16 %i.adp, 511
  %i.adr = add nsw i16 %i.adq, -117
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.adr, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang10CXXNewExpr16getConstructExprEv.exit, label %_ZNK5clang10CXXNewExpr16getConstructExprEv.exit.thread

_ZNK5clang10CXXNewExpr16getConstructExprEv.exit:  ; preds = %bb.eu
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !747
end_hunk_0
