Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PDB?download=true
inline.NumInlined: 4196
inline.NumDeleted: 2108
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3lld4coff9createPDBERNS0_17COFFLinkerContextEN4llvm8ArrayRefIhEEPNS3_8codeview9DebugInfoE:bb.a

_ZN12_GLOBAL__N_19PDBLinker19addImportFilesToPDBEv.exit: ; preds = %_ZN12_GLOBAL__N_19PDBLinker15addObjectsToPDBEv.exit, %_ZN4llvm11ExitOnErrorD2Ev.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %67)
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  %i.vy = call noundef ptr @_ZN4llvm22timeTraceProfilerBeginENS_9StringRefES0_(ptr nonnull @.str.65, i64 19, ptr null, i64 0) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  %i.vz = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  store ptr %i.wb, ptr %54, align 8, !tbaa !335
  store i8 0, ptr %i.wb, align 8
  %i.wc = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 0, ptr %i.wc, align 8, !tbaa !336
  store ptr %i.vz, ptr %55, align 8, !tbaa !333
  store i64 0, ptr %i.wa, align 8, !tbaa !336
  store i8 0, ptr %i.vz, align 8, !tbaa !334
  %i.wd = getelementptr inbounds nuw i8, ptr %54, i64 32 ; 6 uses
  %i.we = getelementptr inbounds nuw i8, ptr %54, i64 48 ; 4 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %54, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wd, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.wd, align 8, !tbaa !337
  store ptr @_ZNSt17_Function_handlerIFiRKN4llvm5ErrorEEZNS0_11ExitOnErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.wf, align 8, !tbaa !339
  store ptr @_ZNSt17_Function_handlerIFiRKN4llvm5ErrorEEZNS0_11ExitOnErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr %i.we, align 8, !tbaa !340
  %i.wg = call noundef nonnull align 8 dereferenceable(936) ptr @_ZN4llvm3pdb14PDBFileBuilder13getDbiBuilderEv(ptr noundef nonnull align 8 dereferenceable(976) %105) #22 ; 4 uses
  %i.wh = load ptr, ptr %i.i, align 8, !tbaa !452, !nonnull !331, !align !453 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 4504 ; 4 uses
  %i.wj = icmp eq ptr %i.k, %i.wi
  br i1 %i.wj, label %_ZN4llvm11SmallStringILj128EEaSERKS1_.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZN12_GLOBAL__N_19PDBLinker19addImportFilesToPDBEv.exit
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 4512 ; 2 uses
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !31 ; 8 uses
  %i.wm = load i64, ptr %i.m, align 8, !tbaa !31  ; 7 uses
  %.not.i.i.i.i27 = icmp ult i64 %i.wm, %i.wl
  br i1 %.not.i.i.i.i27, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not29.i.i.i.i = icmp eq i64 %i.wl, 0
  br i1 %.not29.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.wn = load ptr, ptr %i.wi, align 8, !tbaa !30 ; 2 uses
  %i.wo = load ptr, ptr %i.k, align 8, !tbaa !30  ; 2 uses
  %i.wp = icmp sgt i64 %i.wl, 1
  br i1 %i.wp, label %bb.by, label %bb.bz, !prof !515

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.wo, ptr align 1 %i.wn, i64 %i.wl, i1 false)
  br label %.sink.split.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.wq = icmp eq i64 %i.wl, 1
  br i1 %i.wq, label %bb.ca, label %.sink.split.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.wr = load i8, ptr %i.wn, align 1, !tbaa !334
  store i8 %i.wr, ptr %i.wo, align 1, !tbaa !334
  br label %.sink.split.i.i.i.i

bb.cb:                                            ; preds = %bb.bv
  %i.ws = load i64, ptr %i.n, align 8, !tbaa !32
  %i.wt = icmp ult i64 %i.ws, %i.wl
  br i1 %i.wt, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i64 0, ptr %i.m, align 8, !tbaa !31
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull %i.l, i64 noundef %i.wl, i64 noundef 1) #22
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %.not28.i.i.i.i = icmp eq i64 %i.wm, 0
  br i1 %.not28.i.i.i.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wu = load ptr, ptr %i.wi, align 8, !tbaa !30 ; 2 uses
  %i.wv = load ptr, ptr %i.k, align 8, !tbaa !30  ; 2 uses
  %i.ww = icmp sgt i64 %i.wm, 1
  br i1 %i.ww, label %bb.cf, label %bb.cg, !prof !515

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.wv, ptr align 1 %i.wu, i64 %i.wm, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.wx = icmp eq i64 %i.wm, 1
  br i1 %i.wx, label %bb.ch, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.wy = load i8, ptr %i.wu, align 1, !tbaa !334
  store i8 %i.wy, ptr %i.wv, align 1, !tbaa !334
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cd, %bb.cc
  %.022.i.i.i.i = phi i64 [ 0, %bb.cc ], [ 0, %bb.cd ], [ %i.wm, %bb.cf ], [ %i.wm, %bb.cg ], [ 1, %bb.ch ] ; 4 uses
  %i.wz = load i64, ptr %i.wk, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i.i70 = icmp samesign eq i64 %.022.i.i.i.i, %i.wz
  br i1 %.not.i.i.i.i.i70, label %.sink.split.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i
  %i.xa = load ptr, ptr %i.wi, align 8, !tbaa !30
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 %.022.i.i.i.i
  %i.xc = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 %.022.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.wz, %.022.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xd, ptr align 1 %i.xb, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.ci, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i, %bb.ca, %bb.bz, %bb.by, %bb.bw
  store i64 %i.wl, ptr %i.m, align 8, !tbaa !31
  br label %_ZN4llvm11SmallStringILj128EEaSERKS1_.exit.i

_ZN4llvm11SmallStringILj128EEaSERKS1_.exit.i:     ; preds = %.sink.split.i.i.i.i, %_ZN12_GLOBAL__N_19PDBLinker19addImportFilesToPDBEv.exit
  call fastcc void @_ZN12_GLOBAL__N_19PDBLinker15pdbMakeAbsoluteERN4llvm15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(976) %105, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  %i.xe = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.xf = load i64, ptr %i.m, align 8, !tbaa !31
  %i.xg = call noundef i32 @_ZN4llvm3pdb16DbiStreamBuilder9addECNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(936) %i.wg, ptr %i.xe, i64 %i.xf) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #22
  call void @_ZN4llvm3pdb16DbiStreamBuilder13addModuleInfoENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.494") align 8 %56, ptr noundef nonnull align 8 dereferenceable(936) %i.wg, ptr nonnull @.str.66, i64 10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.xh = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.xi = load i8, ptr %i.xh, align 8, !noalias !894
  %i.xj = trunc i8 %i.xi to i1
  br i1 %i.xj, label %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEE9takeErrorEv.exit.i.i66, label %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28

_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEE9takeErrorEv.exit.i.i66: ; preds = %_ZN4llvm11SmallStringILj128EEaSERKS1_.exit.i
  %i.xk = load i64, ptr %56, align 8, !tbaa !463, !noalias !894 ; 2 uses
  %i.xl = inttoptr i64 %i.xk to ptr
  store ptr null, ptr %56, align 8, !tbaa !463, !noalias !894
  store ptr %i.xl, ptr %53, align 8, !tbaa !456, !alias.scope !894
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  %.not.i.i.i67 = icmp ne i64 %i.xk, 0
  call void @llvm.assume(i1 %.not.i.i.i67)
  %i.xm = load ptr, ptr %i.we, align 8, !tbaa !340
  %.not.i.i.i25.i = icmp eq ptr %i.xm, null
  br i1 %.not.i.i.i25.i, label %bb.cj, label %_ZNKSt8functionIFiRKN4llvm5ErrorEEEclES3_.exit.i.i68

bb.cj:                                            ; preds = %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEE9takeErrorEv.exit.i.i66
  call void @_ZSt25__throw_bad_function_callv() #24
  unreachable

_ZNKSt8functionIFiRKN4llvm5ErrorEEEclES3_.exit.i.i68: ; preds = %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEE9takeErrorEv.exit.i.i66
  %i.xn = load ptr, ptr %i.wf, align 8, !tbaa !339
  %i.xo = call noundef i32 %i.xn(ptr noundef nonnull align 8 dereferenceable(32) %i.wd, ptr noundef nonnull align 8 dereferenceable(8) %53) #22, !inline_history !740
  %i.xp = load ptr, ptr %53, align 8, !tbaa !456
  store ptr %i.xp, ptr %51, align 8, !tbaa !456
  store ptr null, ptr %53, align 8, !tbaa !456
  %i.xq = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #22
  %i.xr = getelementptr inbounds nuw i8, ptr %52, i64 32
  store i8 4, ptr %i.xr, align 8, !tbaa !459
  %i.xs = getelementptr inbounds nuw i8, ptr %52, i64 33
  store i8 1, ptr %i.xs, align 1, !tbaa !460
  store ptr %54, ptr %52, align 8, !tbaa !334
  call void @_ZN4llvm21logAllUnhandledErrorsENS_5ErrorERNS_11raw_ostreamENS_5TwineE(ptr nofree noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull align 8 dereferenceable(48) %i.xq, ptr noundef nonnull byval(%"class.llvm::Twine") align 8 %52) #22
  %i.xt = load ptr, ptr %51, align 8, !tbaa !456  ; 3 uses
  %i.xu = icmp eq ptr %i.xt, null
  br i1 %i.xu, label %_ZN4llvm5ErrorD2Ev.exit.i.i.i69, label %bb.ck

bb.ck:                                            ; preds = %_ZNKSt8functionIFiRKN4llvm5ErrorEEEclES3_.exit.i.i68
  %i.xv = load ptr, ptr %i.xt, align 8, !tbaa !462
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.xx = load ptr, ptr %i.xw, align 8
  call void %i.xx(ptr noundef nonnull align 8 dereferenceable(8) %i.xt) #22, !inline_history !741
  br label %_ZN4llvm5ErrorD2Ev.exit.i.i.i69

_ZN4llvm5ErrorD2Ev.exit.i.i.i69:                  ; preds = %bb.ck, %_ZNKSt8functionIFiRKN4llvm5ErrorEEEclES3_.exit.i.i68
  call void @exit(i32 noundef %i.xo) #24
  unreachable

_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28: ; preds = %_ZN4llvm11SmallStringILj128EEaSERKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  %.pre.i.i29 = load ptr, ptr %56, align 8, !tbaa !804 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #22
  call void @_ZN4llvm3pdb26DbiModuleDescriptorBuilder16setPdbFilePathNIEj(ptr noundef nonnull align 8 dereferenceable(256) %.pre.i.i29, i32 noundef %i.xg) #22
  %i.xy = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.xz = load i64, ptr %i.m, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  store i16 4353, ptr %45, align 8, !tbaa !514
  %i.ya = getelementptr inbounds nuw i8, ptr %45, i64 4
  %i.yb = getelementptr inbounds nuw i8, ptr %45, i64 24
  store i32 0, ptr %i.yb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  store i16 4413, ptr %46, align 8, !tbaa !514
  %i.yc = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.yc, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  store i16 4412, ptr %47, align 8, !tbaa !514
  %i.yd = getelementptr inbounds nuw i8, ptr %47, i64 4
  %i.ye = getelementptr inbounds nuw i8, ptr %47, i64 10
  %i.yf = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.yg = getelementptr inbounds nuw i8, ptr %47, i64 48
  store i32 0, ptr %i.yg, align 8
  %i.yh = load ptr, ptr %i.i, align 8, !tbaa !452, !nonnull !331, !align !453 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 4152
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !800 ; 2 uses
  %108 = icmp eq i32 %i.yj, 42561
  %spec.select.i.i = select i1 %108, i32 42574, i32 %i.yj
  switch i32 %spec.select.i.i, label %bb.cq [
    i32 34404, label %_ZL19fillLinkerVerRecordRN4llvm8codeview11Compile3SymENS_4COFF12MachineTypesE.exit.i.i
    i32 448, label %109
    i32 43620, label %bb.cl
    i32 42561, label %bb.cm
    i32 42574, label %bb.cn
    i32 452, label %bb.co
    i32 332, label %bb.cp
  ]

109:                                              ; preds = %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28
  br label %_ZL19fillLinkerVerRecordRN4llvm8codeview11Compile3SymENS_4COFF12MachineTypesE.exit.i.i

bb.cl:                                            ; preds = %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28
  br label %_ZL19fillLinkerVerRecordRN4llvm8codeview11Compile3SymENS_4COFF12MachineTypesE.exit.i.i

bb.cm:                                            ; preds = %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28
  br label %_ZL19fillLinkerVerRecordRN4llvm8codeview11Compile3SymENS_4COFF12MachineTypesE.exit.i.i

bb.cn:                                            ; preds = %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28
  br label %_ZL19fillLinkerVerRecordRN4llvm8codeview11Compile3SymENS_4COFF12MachineTypesE.exit.i.i

bb.co:                                            ; preds = %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28
  br label %_ZL19fillLinkerVerRecordRN4llvm8codeview11Compile3SymENS_4COFF12MachineTypesE.exit.i.i

bb.cp:                                            ; preds = %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28
  br label %_ZL19fillLinkerVerRecordRN4llvm8codeview11Compile3SymENS_4COFF12MachineTypesE.exit.i.i

bb.cq:                                            ; preds = %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28
  unreachable

_ZL19fillLinkerVerRecordRN4llvm8codeview11Compile3SymENS_4COFF12MachineTypesE.exit.i.i: ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %109, %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28
  %.0.i.i.i.i = phi i16 [ 3, %bb.cp ], [ 104, %109 ], [ 246, %bb.cl ], [ 248, %bb.cm ], [ 249, %bb.cn ], [ 244, %bb.co ], [ 208, %_ZN4llvm8ExpectedIRNS_3pdb26DbiModuleDescriptorBuilderEED2Ev.exit.i28 ]
  %i.yk = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i16 %.0.i.i.i.i, ptr %i.yk, align 8, !tbaa !878
  %i.yl = getelementptr inbounds nuw i8, ptr %47, i64 18
  store <4 x i16> <i16 14, i16 10, i16 25019, i16 0>, ptr %i.yl, align 2, !tbaa !879
  store i64 0, ptr %i.ye, align 2
  store ptr @.str.47, ptr %i.yf, align 8, !tbaa !469
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %47, i64 40
  store i64 11, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !468
  store i32 7, ptr %i.yd, align 4, !tbaa !880
  %i.ym = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr @.str.66, ptr %i.ym, align 8, !tbaa !469
  %.sroa.4153.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 10, ptr %.sroa.4153.0..sroa_idx.i.i, align 8, !tbaa !468
  store i32 0, ptr %i.ya, align 4, !tbaa !874
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yh, i64 4808
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !895 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yh, i64 4816
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !896
  %i.yr = ptrtoint ptr %i.yq to i64
  %i.ys = ptrtoint ptr %i.yo to i64
  %i.yt = sub i64 %i.yr, %i.ys
  %i.yu = ashr exact i64 %i.yt, 4
  %i.yv = add nsw i64 %i.yu, -1                   ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yo, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.yx = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 10 uses
  store ptr %i.yx, ptr %48, align 8, !tbaa !335, !alias.scope !897
  %i.yy = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 10 uses
  store i64 0, ptr %i.yy, align 8, !tbaa !336, !alias.scope !897
  store i8 0, ptr %i.yx, align 8, !tbaa !334, !alias.scope !897
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %48, i64 noundef 256) #22
  %.idx.i.i.i = shl nuw nsw i64 %i.yv, 4
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 %.idx.i.i.i
  %.not41.i.i.i = icmp eq i64 %i.yv, 0
  br i1 %.not41.i.i.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EE9push_backEOS1_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZL19fillLinkerVerRecordRN4llvm8codeview11Compile3SymENS_4COFF12MachineTypesE.exit.i.i
  %i.za = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 6 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %42, i64 12
  %i.zg = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.zh = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.di, %.lr.ph.i.i.i
  %.042.i.i.i = phi ptr [ %i.yw, %.lr.ph.i.i.i ], [ %i.acq, %bb.di ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22, !noalias !897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %.042.i.i.i, i64 16, i1 false), !tbaa.struct !516, !noalias !897
  %i.zi = load i64, ptr %i.yy, align 8, !tbaa !336, !alias.scope !897 ; 5 uses
  %i.zj = icmp eq i64 %i.zi, 0
  br i1 %i.zj, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.zk = add i64 %i.zi, 1                        ; 3 uses
  %i.zl = load ptr, ptr %48, align 8, !tbaa !333, !alias.scope !897 ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.yx
  br i1 %i.zm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i65: ; preds = %bb.cs
  %i.zn = icmp ult i64 %i.zi, 16
  call void @llvm.assume(i1 %i.zn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %bb.cs
  %i.zo = load i64, ptr %i.yx, align 8, !tbaa !334, !alias.scope !897
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i65
  %i.zp = phi i64 [ %i.zo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i65 ]
  %i.zq = icmp ugt i64 %i.zk, %i.zp
  br i1 %i.zq, label %bb.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, i64 noundef %i.zi, i64 noundef 0, ptr noundef null, i64 noundef 1) #22
  %.pre.i.i.i.i64 = load ptr, ptr %48, align 8, !tbaa !333, !alias.scope !897
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.zr = phi ptr [ %.pre.i.i.i.i64, %bb.ct ], [ %i.zl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ]
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zi
  store i8 32, ptr %i.zs, align 1, !tbaa !334
  store i64 %i.zk, ptr %i.yy, align 8, !tbaa !336, !alias.scope !897
  %i.zt = load ptr, ptr %48, align 8, !tbaa !333, !alias.scope !897
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zk
  store i8 0, ptr %i.zu, align 1, !tbaa !334
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i, %bb.cr
  %i.zv = load i64, ptr %i.za, align 8, !tbaa !467, !noalias !897 ; 5 uses
  %.not.i.i.i29.i = icmp eq i64 %i.zv, 0
  br i1 %.not.i.i.i29.i, label %._crit_edge.i.i.i.i.thread.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.thread.i.i.i:                 ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22, !noalias !897
  store ptr %i.zb, ptr %44, align 8, !tbaa !335, !noalias !897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !897
  store i64 0, ptr %i.a, align 8, !tbaa !468, !noalias !897
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i: ; preds = %bb.cu
  %i.zw = load ptr, ptr %41, align 8, !tbaa !509, !noalias !897 ; 5 uses
  %i.zx = call ptr @memchr(ptr noundef %i.zw, i32 noundef 32, i64 noundef %i.zv) #22 ; 2 uses
  %.not.i.i.i.i.i.i.i31 = icmp ne ptr %i.zx, null
  %i.zy = ptrtoint ptr %i.zx to i64
  %i.zz = ptrtoint ptr %i.zw to i64               ; 2 uses
  %i.aaa = sub i64 %i.zy, %i.zz
  %i.aab = icmp ne i64 %i.aaa, -1
  %.1.i.i.i.i.ph.i.i.i = select i1 %.not.i.i.i.i.i.i.i31, i1 %i.aab, i1 false ; 2 uses
  %i.aac = call ptr @memchr(ptr noundef %i.zw, i32 noundef 34, i64 noundef %i.zv) #22 ; 2 uses
  %.not.i.i.i.i16.i.i.i = icmp eq ptr %i.aac, null
  br i1 %.not.i.i.i.i16.i.i.i, label %_ZNK4llvm9StringRef8containsEc.exit18.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i
  %i.aad = ptrtoint ptr %i.aac to i64
  %i.aae = sub i64 %i.aad, %i.zz
  %i.aaf = icmp ne i64 %i.aae, -1                 ; 2 uses
  %i.aag = or i1 %.1.i.i.i.i.ph.i.i.i, %i.aaf
  br i1 %i.aag, label %bb.cv, label %.thread60.i.i.i

_ZNK4llvm9StringRef8containsEc.exit18.i.i.i:      ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.i
  br i1 %.1.i.i.i.i.ph.i.i.i, label %bb.cv, label %.thread60.i.i.i

bb.cv:                                            ; preds = %_ZNK4llvm9StringRef8containsEc.exit18.i.i.i, %.split.i.i.i
  %.1.i.i.i.i1759.i.i.i = phi i1 [ %i.aaf, %.split.i.i.i ], [ false, %_ZNK4llvm9StringRef8containsEc.exit18.i.i.i ]
  %i.aah = load i64, ptr %i.yy, align 8, !tbaa !336, !alias.scope !897 ; 4 uses
  %i.aai = add i64 %i.aah, 1                      ; 3 uses
  %i.aaj = load ptr, ptr %48, align 8, !tbaa !333, !alias.scope !897 ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, %i.yx
  br i1 %i.aak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i: ; preds = %bb.cv
  %i.aal = icmp ult i64 %i.aah, 16
  call void @llvm.assume(i1 %i.aal)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i: ; preds = %bb.cv
  %i.aam = load i64, ptr %i.yx, align 8, !tbaa !334, !alias.scope !897
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i
  %i.aan = phi i64 [ %i.aam, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i ]
  %i.aao = icmp ugt i64 %i.aai, %i.aan
  br i1 %i.aao, label %bb.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit23.i.i.i

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, i64 noundef %i.aah, i64 noundef 0, ptr noundef null, i64 noundef 1) #22
  %.pre.i21.i.i.i = load ptr, ptr %48, align 8, !tbaa !333, !alias.scope !897
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit23.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit23.i.i.i: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20.i.i.i
  %i.aap = phi ptr [ %.pre.i21.i.i.i, %bb.cw ], [ %i.aaj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i20.i.i.i ]
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aah
  store i8 34, ptr %i.aaq, align 1, !tbaa !334
  store i64 %i.aai, ptr %i.yy, align 8, !tbaa !336, !alias.scope !897
  %i.aar = load ptr, ptr %48, align 8, !tbaa !333, !alias.scope !897
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aai
  store i8 0, ptr %i.aas, align 1, !tbaa !334
  br i1 %.1.i.i.i.i1759.i.i.i, label %bb.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit23.i..thread60.i_crit_edge.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit23.i..thread60.i_crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit23.i.i.i
  %.pr.i.pre.i.i = load i64, ptr %i.za, align 8, !tbaa !467, !noalias !897
  %.pre.i32.i = load ptr, ptr %41, align 8, !tbaa !509, !noalias !897
  br label %.thread60.i.i.i

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit23.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22, !noalias !897
  store ptr %i.zd, ptr %42, align 8, !tbaa !517, !noalias !897
  store i32 0, ptr %i.ze, align 8, !tbaa !518, !noalias !897
  store i32 4, ptr %i.zf, align 4, !tbaa !519, !noalias !897
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %42, i8 noundef signext 34, i32 noundef -1, i1 noundef zeroext true) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22, !noalias !897
  %i.aat = load ptr, ptr %42, align 8, !tbaa !517, !noalias !898 ; 2 uses
  %i.aau = load i32, ptr %i.ze, align 8, !tbaa !518, !noalias !898
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.aat, i64 %i.aav
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef %i.aat, ptr noundef %i.aaw, ptr nonnull @.str.71, i64 2)
  %i.aax = load i64, ptr %i.zg, align 8, !tbaa !336, !noalias !897 ; 2 uses
  %i.aay = load i64, ptr %i.yy, align 8, !tbaa !336, !alias.scope !897
  %i.aaz = sub i64 4611686018427387903, %i.aay
  %i.aba = icmp ult i64 %i.aaz, %i.aax
  br i1 %i.aba, label %bb.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i

bb.cy:                                            ; preds = %bb.cx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i: ; preds = %bb.cx
  %i.abb = load ptr, ptr %43, align 8, !tbaa !333, !noalias !897
  %i.abc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef %i.abb, i64 noundef %i.aax) #22 ; 0 uses
  %i.abd = load ptr, ptr %43, align 8, !tbaa !333, !noalias !897 ; 2 uses
  %i.abe = icmp eq ptr %i.abd, %i.zh
  br i1 %i.abe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.abf = load i64, ptr %i.zh, align 8, !tbaa !334, !noalias !897
  %i.abg = add i64 %i.abf, 1
end_hunk_0
