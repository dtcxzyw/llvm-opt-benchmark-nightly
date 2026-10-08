Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGRecordLayoutBuilder?download=true
inline.NumInlined: 2055
inline.NumDeleted: 992
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_116CGRecordLowering5lowerEb:bb.a

_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.au
  %i.hw = ashr exact i64 %i.hu, 5                 ; 3 uses
  %i.hx = icmp eq ptr %i.ho, %.val.i.i.i.i.i      ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = select i1 %i.hx, i64 1, i64 %i.hw
  %i.hy = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.hw ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.hw
  %i.ia = call i64 @llvm.umin.i64(i64 %i.hy, i64 288230376151711743)
  %i.ib = select i1 %i.hz, i64 288230376151711743, i64 %i.ia ; 3 uses
  %.not.i.i.i.i101.i.i = icmp ne i64 %i.ib, 0
  call void @llvm.assume(i1 %.not.i.i.i.i101.i.i)
  %i.ic = shl nuw nsw i64 %i.ib, 5
  %i.id = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #22 ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hu ; 4 uses
  store i64 %i.hn, ptr %i.ie, align 8, !tbaa !96
  %.sroa.5272.0..sroa_idx273.i.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i32 2, ptr %.sroa.5272.0..sroa_idx273.i.i, align 8, !tbaa !23
  %.sroa.6278.0..sroa_idx279.i.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store ptr %i.hg, ptr %.sroa.6278.0..sroa_idx279.i.i, align 8, !tbaa !621
  %.sroa.7281.0..sroa_idx282.i.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store ptr null, ptr %.sroa.7281.0..sroa_idx282.i.i, align 8, !tbaa !23
  br i1 %i.hx, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.id, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !623, !alias.scope !798
  %i.if = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.if, %i.ho
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !738

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.id, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 32
  %.not.i27.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i27.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i.i.i
  %i.ii = load ptr, ptr %i.gb, align 8, !tbaa !619
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = sub i64 %i.ij, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ik) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i.i.i
  store ptr %i.id, ptr %i.fz, align 8, !tbaa !622
  store ptr %i.ih, ptr %i.ga, align 8, !tbaa !797
  %i.il = getelementptr inbounds nuw [32 x i8], ptr %i.id, i64 %i.ib
  store ptr %i.il, ptr %i.gb, align 8, !tbaa !619
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.at, %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit.i.i
  %.sroa.0286.1.i.i = phi ptr [ %.sroa.0286.0395.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit.i.i ], [ %.sroa.0291.0396.i.i, %bb.at ], [ %.sroa.0291.0396.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.147.i.i = phi i64 [ %.046397.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit.i.i ], [ %i.hm, %bb.at ], [ %i.hm, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.0398.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit.i.i ], [ %i.hd, %bb.at ], [ %i.hd, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ] ; 3 uses
  %.val96.i.i = load ptr, ptr %i.fy, align 8, !tbaa !604
  %i.im = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %.val96.i.i, i64 noundef %.1.i.i) #20 ; 2 uses
  %i.in = load ptr, ptr %i.ga, align 8, !tbaa !797 ; 8 uses
  %i.io = load ptr, ptr %i.gb, align 8, !tbaa !619
  %.not.i.i102.i.i = icmp eq ptr %i.in, %i.io
  br i1 %.not.i.i102.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit.i.i
  store i64 %i.im, ptr %i.in, align 8, !tbaa !96
  %.sroa.5258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i32 2, ptr %.sroa.5258.0..sroa_idx.i.i, align 8, !tbaa !23
  %.sroa.6264.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store ptr null, ptr %.sroa.6264.0..sroa_idx.i.i, align 8, !tbaa !621
  %.sroa.7267.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  store ptr %.sroa.0291.0396.i.i, ptr %.sroa.7267.0..sroa_idx.i.i, align 8, !tbaa !23
  %i.ip = load ptr, ptr %i.ga, align 8, !tbaa !797
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store ptr %i.iq, ptr %i.ga, align 8, !tbaa !797
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit115.i.i

bb.ay:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit.i.i
  %.val.i.i.i103.i.i = load ptr, ptr %i.fz, align 8, !tbaa !622 ; 5 uses
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = ptrtoint ptr %.val.i.i.i103.i.i to i64  ; 2 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 3 uses
  %i.iu = icmp eq i64 %i.it, 9223372036854775776
  br i1 %i.iu, label %bb.az, label %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i104.i.i

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i104.i.i: ; preds = %bb.ay
  %i.iv = ashr exact i64 %i.it, 5                 ; 3 uses
  %i.iw = icmp eq ptr %i.in, %.val.i.i.i103.i.i   ; 2 uses
  %.sroa.speculated.i.i.i.i105.i.i = select i1 %i.iw, i64 1, i64 %i.iv
  %i.ix = add nsw i64 %.sroa.speculated.i.i.i.i105.i.i, %i.iv ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iv
  %i.iz = call i64 @llvm.umin.i64(i64 %i.ix, i64 288230376151711743)
  %i.ja = select i1 %i.iy, i64 288230376151711743, i64 %i.iz ; 3 uses
  %.not.i.i.i.i106.i.i = icmp ne i64 %i.ja, 0
  call void @llvm.assume(i1 %.not.i.i.i.i106.i.i)
  %i.jb = shl nuw nsw i64 %i.ja, 5
  %i.jc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #22 ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.it ; 4 uses
  store i64 %i.im, ptr %i.jd, align 8, !tbaa !96
  %.sroa.5258.0..sroa_idx259.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i32 2, ptr %.sroa.5258.0..sroa_idx259.i.i, align 8, !tbaa !23
  %.sroa.6264.0..sroa_idx265.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store ptr null, ptr %.sroa.6264.0..sroa_idx265.i.i, align 8, !tbaa !621
  %.sroa.7267.0..sroa_idx268.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  store ptr %.sroa.0291.0396.i.i, ptr %.sroa.7267.0..sroa_idx268.i.i, align 8, !tbaa !23
  br i1 %i.iw, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i111.i.i, label %.lr.ph.i.i.i.i.i.i107.i.i

.lr.ph.i.i.i.i.i.i107.i.i:                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i104.i.i, %.lr.ph.i.i.i.i.i.i107.i.i
  %.03.i.i.i.i.i.i108.i.i = phi ptr [ %i.jf, %.lr.ph.i.i.i.i.i.i107.i.i ], [ %i.jc, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i104.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i109.i.i = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i.i107.i.i ], [ %.val.i.i.i103.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i104.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i.i108.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i.i109.i.i, i64 32, i1 false), !tbaa.struct !623, !alias.scope !799
  %i.je = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i109.i.i, i64 32 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i108.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i110.i.i = icmp eq ptr %i.je, %i.in
  br i1 %.not.i.i.i.i.i.i110.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i111.i.i, label %.lr.ph.i.i.i.i.i.i107.i.i, !llvm.loop !738

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i111.i.i: ; preds = %.lr.ph.i.i.i.i.i.i107.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i104.i.i
  %.0.lcssa.i.i.i.i.i.i112.i.i = phi ptr [ %i.jc, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i104.i.i ], [ %i.jf, %.lr.ph.i.i.i.i.i.i107.i.i ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i112.i.i, i64 32
  %.not.i27.i.i.i113.i.i = icmp eq ptr %.val.i.i.i103.i.i, null
  br i1 %.not.i27.i.i.i113.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i114.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i111.i.i
  %i.jh = load ptr, ptr %i.gb, align 8, !tbaa !619
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = sub i64 %i.ji, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i103.i.i, i64 noundef %i.jj) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i114.i.i

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i114.i.i: ; preds = %bb.ba, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i111.i.i
  store ptr %i.jc, ptr %i.fz, align 8, !tbaa !622
  store ptr %i.jg, ptr %i.ga, align 8, !tbaa !797
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr %i.jc, i64 %i.ja
  store ptr %i.jk, ptr %i.gb, align 8, !tbaa !619
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit115.i.i

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit115.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i114.i.i, %bb.ax, %bb.an
  %.sroa.0286.2.i.i = phi ptr [ null, %bb.an ], [ %.sroa.0286.1.i.i, %bb.ax ], [ %.sroa.0286.1.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i114.i.i ]
  %.248.i.i = phi i64 [ %.046397.i.i, %bb.an ], [ %.147.i.i, %bb.ax ], [ %.147.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i114.i.i ]
  %.2.i.i = phi i64 [ %.0398.i.i, %bb.an ], [ %.1.i.i, %bb.ax ], [ %.1.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i114.i.i ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0291.0396.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i29 = load i64, ptr %i.jl, align 8
  %i.jm = and i64 %.0.copyload.i.i.i.i.i.i.i.i29, -8 ; 2 uses
  %i.jn = inttoptr i64 %i.jm to ptr               ; 2 uses
  %.not1.i.i.i.i = icmp eq i64 %i.jm, 0
  br i1 %.not1.i.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit115.i.i, %bb.bb
  %.sroa.0291.3.i.i = phi ptr [ %i.jv, %bb.bb ], [ %i.jn, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit115.i.i ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0291.3.i.i, i64 28
  %i.jp = load i32, ptr %i.jo, align 4
  %i.jq = and i32 %i.jp, 127
  %i.jr = add nsw i32 %i.jq, -50
  %i.js = icmp ult i32 %i.jr, 3
  br i1 %i.js, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0291.3.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jt, align 8
  %i.ju = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.jv = inttoptr i64 %i.ju to ptr               ; 2 uses
  %.not.i.i116.i.i = icmp eq i64 %i.ju, 0
  br i1 %.not.i.i116.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit115.i.i
  %.sroa.0291.4.i.i = phi ptr [ %i.jn, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit115.i.i ], [ %i.jv, %bb.bb ], [ %.sroa.0291.3.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not375.i.i = icmp eq ptr %.sroa.0291.4.i.i, null
  br i1 %.not375.i.i, label %_ZN12_GLOBAL__N_116CGRecordLowering16accumulateFieldsEb.exit, label %.lr.ph399.i.i, !llvm.loop !742

bb.bc:                                            ; preds = %_ZNK12_GLOBAL__N_116CGRecordLowering21isDiscreteBitFieldABIEv.exit.i.i
  %i.jw = load ptr, ptr %i.fy, align 8, !tbaa !604, !nonnull !48, !align !49
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 17712
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !615 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !625
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 256
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = call noundef i32 %i.kb(ptr noundef nonnull align 8 dereferenceable(517) %i.jy) #20, !inline_history !743
  %i.kd = zext i32 %i.kc to i64
  %.val95.i.i = load ptr, ptr %i.fy, align 8, !tbaa !604
  %i.ke = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %.val95.i.i, i64 noundef %i.kd) #20
  %i.kf = load ptr, ptr %i.fy, align 8, !tbaa !604, !nonnull !48, !align !49 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 18912
  %.sroa.0.0.copyload.i.i117.i.i = load i64, ptr %i.kg, align 8, !tbaa !23
  %i.kh = and i64 %.sroa.0.0.copyload.i.i117.i.i, -16
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = load ptr, ptr %i.ki, align 16, !tbaa !56
  %i.kk = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.kf, ptr noundef %i.kj) #20
  %i.kl = extractvalue { i64, i64 } %i.kk, 0
  %i.km = and i64 %i.kl, 4294967295               ; 2 uses
  %i.kn = add nsw i64 %i.km, -1
  br label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge: ; preds = %.lr.ph.i.i192.i.i, %bb.df, %.thread331.i.i
  %.sroa.0291.1.i.i.ph444.ph.be = phi ptr [ %i.vp, %.thread331.i.i ], [ %.sroa.0291.5.i.i, %.lr.ph.i.i192.i.i ], [ %i.vx, %bb.df ]
  br label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer: ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge, %bb.bc
  %.sroa.0253.0.i.i.ph.ph = phi i64 [ 0, %bb.bc ], [ %.sroa.0253.4342.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge ]
  %.sroa.0250.0.i.i.ph.ph = phi ptr [ null, %bb.bc ], [ %.sroa.0250.1313341.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge ]
  %.sroa.0242.0.i.i.ph.ph = phi i64 [ 0, %bb.bc ], [ %.sroa.0242.1315340.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge ] ; 14 uses
  %.sroa.0241.0.i.i.ph.ph = phi ptr [ null, %bb.bc ], [ %.sroa.0241.5343.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge ]
  %.sroa.0240.0.i.i.ph.ph = phi i64 [ 0, %bb.bc ], [ %.sroa.0240.4344.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge ]
  %.sroa.0291.1.i.i.ph444.ph = phi ptr [ %.sroa.034.059.i, %bb.bc ], [ %.sroa.0291.1.i.i.ph444.ph.be, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge ]
  %.053.i.i.ph.ph = phi i1 [ undef, %bb.bc ], [ %.760345.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge ]
  %.050.i.i.ph.ph = phi i64 [ undef, %bb.bc ], [ %i.vm, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge ] ; 3 uses
  %i.ko = add i64 %i.kn, %.050.i.i.ph.ph
  %.not76.i.i.peel = icmp eq i64 %.050.i.i.ph.ph, 0
  br label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer: ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer
  %.sroa.0253.0.i.i.ph = phi i64 [ %.sroa.0253.0.i.i.ph.ph, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer ], [ %.sroa.0253.0.i.i.ph.be, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge ] ; 10 uses
  %.sroa.0250.0.i.i.ph = phi ptr [ %.sroa.0250.0.i.i.ph.ph, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer ], [ null, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge ] ; 7 uses
  %.sroa.0241.0.i.i.ph = phi ptr [ %.sroa.0241.0.i.i.ph.ph, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer ], [ %.sroa.0291.1.i.i.ph444.be, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge ] ; 4 uses
  %.sroa.0240.0.i.i.ph = phi i64 [ %.sroa.0240.0.i.i.ph.ph, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer ], [ %.sroa.0240.0.i.i.ph.be, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge ] ; 4 uses
  %.sroa.0291.1.i.i.ph444 = phi ptr [ %.sroa.0291.1.i.i.ph444.ph, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer ], [ %.sroa.0291.1.i.i.ph444.be, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge ] ; 23 uses
  %.053.i.i.ph = phi i1 [ %.053.i.i.ph.ph, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer ], [ %.053.i.i.ph.be, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge ] ; 4 uses
  %.not370.i.i.peel = icmp eq ptr %.sroa.0291.1.i.i.ph444, null ; 2 uses
  br i1 %.not370.i.i.peel, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0291.1.i.i.ph444, i64 68
  %i.kq = load i32, ptr %i.kp, align 4            ; 2 uses
  %i.kr = trunc i32 %i.kq to i1
  br i1 %i.kr, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %.val89.i.i.peel = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0291.1.i.i.ph444, i64 28
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = and i32 %i.kt, 32768
  %.not.i.i.i.i120.i.i.peel = icmp eq i32 %i.ku, 0
  br i1 %.not.i.i.i.i120.i.i.peel, label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i.peel, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kv = call noundef ptr @_ZN5clang20getPrimaryMergedDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0291.1.i.i.ph444) #20 ; 2 uses
  %.phi.trans.insert.i.i.peel = getelementptr inbounds nuw i8, ptr %i.kv, i64 68
  %.pre.i.i.peel = load i32, ptr %.phi.trans.insert.i.i.peel, align 4
  br label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i.peel

_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i.peel: ; preds = %bb.bf, %bb.be
  %i.kw = phi i32 [ %.pre.i.i.peel, %bb.bf ], [ %i.kq, %bb.be ] ; 2 uses
  %.0.i.i.i.i122.i.i.peel = phi ptr [ %i.kv, %bb.bf ], [ %.sroa.0291.1.i.i.ph444, %bb.be ] ; 2 uses
  %i.kx = icmp ult i32 %i.kw, 16
  br i1 %i.kx, label %bb.bg, label %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit124.i.i.peel

bb.bg:                                            ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i.peel
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i122.i.i.peel, i64 68
  call void @_ZNK5clang9FieldDecl19setCachedFieldIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i.i122.i.i.peel) #20
  %.pre.i.i123.i.i.peel = load i32, ptr %i.ky, align 4
  br label %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit124.i.i.peel

_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit124.i.i.peel: ; preds = %bb.bg, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i.peel
  %i.kz = phi i32 [ %.pre.i.i123.i.i.peel, %bb.bg ], [ %i.kw, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i.peel ]
  %i.la = lshr i32 %i.kz, 4
  %i.lb = add nsw i32 %i.la, -1
  %i.lc = getelementptr inbounds nuw i8, ptr %.val89.i.i.peel, i64 48
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !618
  %i.le = zext i32 %i.lb to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.le
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !96 ; 2 uses
  %i.lh = icmp eq ptr %.sroa.0250.0.i.i.ph, null
  br i1 %i.lh, label %.loopexit531, label %bb.bh

bb.bh:                                            ; preds = %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit124.i.i.peel
  %i.li = urem i64 %i.lg, %i.km
  %.not.i.i27.peel = icmp eq i64 %i.li, 0
  br i1 %.not.i.i27.peel, label %bb.bi, label %.thread331.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.lj = call noundef zeroext i1 @_ZNK5clang9FieldDecl20isZeroLengthBitFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0291.1.i.i.ph444) #20
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bd, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer
  %i.lk = icmp eq ptr %.sroa.0250.0.i.i.ph, null
  br i1 %i.lk, label %_ZN12_GLOBAL__N_116CGRecordLowering19accumulateBitFieldsEbN5clang11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEES5_.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.266.ph.i.i.peel = phi i1 [ true, %bb.bj ], [ %i.lj, %bb.bi ]
  %.val93.i.i.peel = load ptr, ptr %i.fy, align 8, !tbaa !604
  %i.ll = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %.val93.i.i.peel, i64 noundef %i.ko) #20 ; 6 uses
  %i.lm = icmp eq ptr %.sroa.0241.0.i.i.ph, %.sroa.0250.0.i.i.ph
  br i1 %i.lm, label %.split.i.i.peel, label %bb.bp

.split.i.i.peel:                                  ; preds = %bb.bk
  %i.ln = add nsw i64 %i.ll, %.sroa.0242.0.i.i.ph.ph ; 2 uses
  br i1 %.not76.i.i.peel, label %.thread348.thread.i.i.peel, label %.loopexit.a

.thread348.thread.i.i.peel:                       ; preds = %.split.i.i.peel
  %i.lo = icmp eq i64 %i.ll, 0
  br i1 %i.lo, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.peel.newph, label %.thread.i.i

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.peel.newph: ; preds = %.thread348.thread.i.i.peel
  %.not370.i.i = icmp eq ptr %.sroa.0291.1.i.i.ph444, null
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0291.1.i.i.ph444, i64 68
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0291.1.i.i.ph444, i64 28
  br i1 %.not370.i.i, label %_ZN12_GLOBAL__N_116CGRecordLowering19accumulateBitFieldsEbN5clang11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEES5_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.peel.newph
  %i.lr = load i32, ptr %i.lp, align 4            ; 2 uses
  %i.ls = trunc i32 %i.lr to i1
  br i1 %i.ls, label %bb.bm, label %_ZN12_GLOBAL__N_116CGRecordLowering19accumulateBitFieldsEbN5clang11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEES5_.exit.i

bb.bm:                                            ; preds = %bb.bl
  %.val89.i.i = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.lt = load i32, ptr %i.lq, align 4
  %i.lu = and i32 %i.lt, 32768
  %.not.i.i.i.i120.i.i = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i.i.i120.i.i, label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lv = call noundef ptr @_ZN5clang20getPrimaryMergedDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0291.1.i.i.ph444) #20 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.lv, i64 68
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i

_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i: ; preds = %bb.bn, %bb.bm
  %i.lw = phi i32 [ %.pre.i.i, %bb.bn ], [ %i.lr, %bb.bm ] ; 2 uses
  %.0.i.i.i.i122.i.i = phi ptr [ %i.lv, %bb.bn ], [ %.sroa.0291.1.i.i.ph444, %bb.bm ] ; 2 uses
  %i.lx = icmp ult i32 %i.lw, 16
  br i1 %i.lx, label %bb.bo, label %.loopexit529

bb.bo:                                            ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i122.i.i, i64 68
  call void @_ZNK5clang9FieldDecl19setCachedFieldIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i.i122.i.i) #20
  %.pre.i.i123.i.i = load i32, ptr %i.ly, align 4
  br label %.loopexit529

.loopexit529:                                     ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i, %bb.bo
  %i.lz = phi i32 [ %.pre.i.i123.i.i, %bb.bo ], [ %i.lw, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i121.i.i ]
  %i.ma = getelementptr inbounds nuw i8, ptr %.val89.i.i, i64 48
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !618
  %i.mc = lshr i32 %i.lz, 4
  %i.md = add nsw i32 %i.mc, -1
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.me
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !96
  br label %.loopexit531

.loopexit531:                                     ; preds = %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit124.i.i.peel, %.loopexit529
  %.sroa.0240.0.i.i.lcssa = phi i64 [ %.sroa.0242.0.i.i.ph.ph, %.loopexit529 ], [ %.sroa.0240.0.i.i.ph, %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit124.i.i.peel ]
  %.053.i.i.lcssa = phi i1 [ true, %.loopexit529 ], [ %.053.i.i.ph, %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit124.i.i.peel ]
  %.lcssa450 = phi i64 [ %i.mg, %.loopexit529 ], [ %i.lg, %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit124.i.i.peel ]
  %.val94.i.i = load ptr, ptr %i.fy, align 8, !tbaa !604
  %i.mh = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %.val94.i.i, i64 noundef %.lcssa450) #20
  br label %.thread331.i.i

bb.bp:                                            ; preds = %bb.bk
  %i.mi = icmp sgt i64 %i.ll, %i.ke
  br i1 %i.mi, label %.thread348.i.i, label %.loopexit.a

.loopexit.a:                                      ; preds = %.split.i.i.peel, %bb.bp
  %.154441.i.i = phi i1 [ %.053.i.i.ph, %bb.bp ], [ true, %.split.i.i.peel ] ; 3 uses
  %.sroa.0240.1440.i.i = phi i64 [ %.sroa.0240.0.i.i.ph, %bb.bp ], [ %i.ln, %.split.i.i.peel ] ; 3 uses
  %.sroa.0241.2439.i.i = phi ptr [ %.sroa.0241.0.i.i.ph, %bb.bp ], [ %.sroa.0291.1.i.i.ph444, %.split.i.i.peel ] ; 4 uses
  %i.mj = load ptr, ptr %i.fy, align 8, !tbaa !604, !nonnull !48, !align !49
  %i.mk = call noundef i64 @_ZNK5clang10ASTContext6toBitsENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(23904) %i.mj, i64 %i.ll) #20 ; 2 uses
  %i.ml = load ptr, ptr %i.fy, align 8, !tbaa !604, !nonnull !48, !align !49 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 18912
  %.sroa.0.0.copyload.i.i.i.i.i22 = load i64, ptr %i.mm, align 8, !tbaa !23
  %i.mn = and i64 %.sroa.0.0.copyload.i.i.i.i.i22, -16
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = load ptr, ptr %i.mo, align 16, !tbaa !56
  %i.mq = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ml, ptr noundef %i.mp) #20
  %i.mr = extractvalue { i64, i64 } %i.mq, 0      ; 2 uses
  %i.ms = icmp ne i64 %i.mk, 0
  %i.mt = zext i1 %i.ms to i64                    ; 2 uses
  %i.mu = sub i64 %i.mk, %i.mt
  %i.mv = udiv i64 %i.mu, %i.mr
  %i.mw = add i64 %i.mv, %i.mt
  %i.mx = mul i64 %i.mw, %i.mr
  %i.my = trunc i64 %i.mx to i32
  %i.mz = load ptr, ptr %0, align 8, !tbaa !603, !nonnull !48, !align !49
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !205, !nonnull !48, !align !49
  %i.nd = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.nc, i32 noundef %i.my) #20 ; 3 uses
  %i.ne = load ptr, ptr %i.fy, align 8, !tbaa !604, !nonnull !48, !align !49
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 17712
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !615
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 400
  %i.ni = load i32, ptr %i.nh, align 8
  %i.nj = and i32 %i.ni, 8192
  %.not371.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not371.i.i, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %.loopexit.a
  %.val91.i.i = load ptr, ptr %i.gc, align 8, !tbaa !602
  %i.nk = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %.val91.i.i, ptr noundef %i.nd) #20
  %i.nl = zext nneg i8 %i.nk to i64
  %i.nm = shl nuw i64 1, %i.nl                    ; 2 uses
  %i.nn = load ptr, ptr %i.f, align 8, !tbaa !125, !nonnull !48, !align !49
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %.sroa.0.0.copyload.i131.i.i = load i64, ptr %i.no, align 8, !tbaa !96
  %i.np = icmp sgt i64 %i.nm, %.sroa.0.0.copyload.i131.i.i
  br i1 %i.np, label %.thread319.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nq = add i64 %i.nm, -1
  %i.nr = and i64 %i.nq, %.sroa.0242.0.i.i.ph.ph
  %.not402.i.i = icmp eq i64 %i.nr, 0
  br i1 %.not402.i.i, label %bb.bu, label %.thread319.i.i

.thread319.i.i:                                   ; preds = %bb.br, %bb.bq
  %i.ns = icmp eq ptr %.sroa.0241.2439.i.i, %.sroa.0291.1.i.i.ph444
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116CGRecordLowering5lowerEb:bb.a
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ov
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !96
  %.val92.i.i = load ptr, ptr %i.fy, align 8, !tbaa !604
  %i.oy = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %.val92.i.i, i64 noundef %i.ox) #20
  br label %_ZNK12_GLOBAL__N_116CGRecordLowering27calculateTailClippingOffsetEb.exit.i.i

._crit_edge.i.i:                                  ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit146.i.i, %bb.bu
  %i.oz = icmp eq i64 %.sroa.0253.0.i.i.ph, 0
  br i1 %i.oz, label %bb.cb, label %_ZNK12_GLOBAL__N_116CGRecordLowering27calculateTailClippingOffsetEb.exit.i.i

bb.cb:                                            ; preds = %._crit_edge.i.i
  %i.pa = load ptr, ptr %i.gd, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.pa, null
  %i.pb = load ptr, ptr %i.f, align 8, !tbaa !125, !nonnull !48, !align !49 ; 2 uses
  br i1 %.not.i.i.i24, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %.sroa.0.0.copyload.i.i148.i.i = load i64, ptr %i.pc, align 8, !tbaa !96 ; 2 uses
  br label %_ZNK12_GLOBAL__N_116CGRecordLowering27calculateTailClippingOffsetEb.exit.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 72
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !132
  %.sroa.0.0.copyload.i15.i.i.i = load i64, ptr %i.pe, align 8, !tbaa !96 ; 7 uses
  br i1 %1, label %_ZNK12_GLOBAL__N_116CGRecordLowering27calculateTailClippingOffsetEb.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val.i.i.i = load ptr, ptr %i.fy, align 8, !tbaa !604
  %i.pf = getelementptr i8, ptr %.val.i.i.i, i64 17712
  %.val.val.i.i.i = load ptr, ptr %i.pf, align 8, !tbaa !615
  %i.pg = getelementptr i8, ptr %.val.val.i.i.i, i64 348
  %.val.val.val.i.i.i = load i32, ptr %i.pg, align 4, !tbaa !617
  %cond.i.i.not.i.i.i = icmp eq i32 %.val.val.val.i.i.i, 10
  br i1 %cond.i.i.not.i.i.i, label %_ZNK12_GLOBAL__N_116CGRecordLowering27calculateTailClippingOffsetEb.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ph = call noundef ptr @_ZNK5clang13CXXRecordDecl12vbases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %i.pa) ; 2 uses
  %i.pi = call noundef ptr @_ZNK5clang13CXXRecordDecl10vbases_endEv(ptr noundef nonnull align 8 dereferenceable(144) %i.pa) ; 2 uses
  %.not1430.i.i.i = icmp eq ptr %i.ph, %i.pi
  br i1 %.not1430.i.i.i, label %_ZNK12_GLOBAL__N_116CGRecordLowering27calculateTailClippingOffsetEb.exit.i.i, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %bb.cf, %bb.co
  %.01332.i.i.i = phi ptr [ %i.rh, %bb.co ], [ %i.ph, %bb.cf ] ; 2 uses
  %.sroa.027.031.i.i.i = phi i64 [ %.sroa.027.1.i.i.i, %bb.co ], [ %.sroa.0.0.copyload.i15.i.i.i, %bb.cf ] ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.01332.i.i.i, i64 16 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !630
  %.sroa.0.0.copyload.i.i.i147.i.i = load i64, ptr %i.pk, align 8, !tbaa !23 ; 2 uses
  %i.pl = and i64 %.sroa.0.0.copyload.i.i.i147.i.i, -16
  %i.pm = inttoptr i64 %i.pl to ptr
  %i.pn = load ptr, ptr %i.pm, align 16, !tbaa !56 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i26 = load i64, ptr %i.po, align 8, !tbaa !23
  %i.pp = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i26, 15
  %.not.i.i.i.i.i = icmp eq i64 %i.pp, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i25
  %i.pq = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i.i147.i.i) #20
  %i.pr = extractvalue { ptr, i64 } %i.pq, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i.i

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i.i: ; preds = %bb.cg, %.lr.ph.i.i.i25
  %.sroa.03.0.in.in.i.i.i.i.i = phi ptr [ %i.pr, %bb.cg ], [ %i.pn, %.lr.ph.i.i.i25 ]
  %.sroa.03.0.in.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i.i.i.i to i64
  %i.ps = and i64 %.sroa.03.0.in.i.i.i.i.i, -16
  %i.pt = inttoptr i64 %i.ps to ptr
  %i.pu = load ptr, ptr %i.pt, align 16, !tbaa !56
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.pv, align 8, !tbaa !23
  %i.pw = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.px = inttoptr i64 %i.pw to ptr
  %i.py = load ptr, ptr %i.px, align 16, !tbaa !56 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i8, ptr %i.pz, align 16            ; 3 uses
  %i.qb = add i8 %i.qa, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.qb, 3
  %.not.i7.i.i.i.i = icmp ne ptr %i.py, null
  %.not.i.not8.i.i.i.i = and i1 %.not.i7.i.i.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qc = and i8 %i.qa, 62
  %spec.select.i.i.i.i.i.i = icmp eq i8 %i.qc, 48
  %or.cond.i.i.i.i = and i1 %spec.select.i.i.i.i.i.i, %.not.i.not8.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.ch, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i.i.i

bb.ch:                                            ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !612 ; 3 uses
  %i.qf = icmp eq i8 %i.qa, 49
  br i1 %i.qf, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 28
  %i.qh = load i32, ptr %i.qg, align 4
  %i.qi = and i32 %i.qh, 127
  %i.qj = add nsw i32 %i.qi, -60
  %i.qk = icmp ult i32 %i.qj, 3
  br i1 %i.qk, label %bb.cj, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i.i.i

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ql = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.qe) ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.ql, null
  %spec.select.i.i.i.i.i = select i1 %.not.not.i.i.i.i.i, ptr %i.qe, ptr %i.ql
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i.i.i

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i.i.i: ; preds = %bb.cj, %bb.ci, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i.i
  %.1.i.i.i.i = phi ptr [ null, %bb.ci ], [ null, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.cj ] ; 3 uses
  %i.qm = load ptr, ptr %i.fy, align 8, !tbaa !604, !nonnull !48, !align !49
  %i.qn = load ptr, ptr %i.pj, align 8, !tbaa !630
  %.sroa.0.0.copyload.i.i16.i.i.i = load i64, ptr %i.qn, align 8, !tbaa !23 ; 2 uses
  %i.qo = and i64 %.sroa.0.0.copyload.i.i16.i.i.i, -16
  %i.qp = inttoptr i64 %i.qo to ptr
  %i.qq = load ptr, ptr %i.qp, align 16, !tbaa !56 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %.sroa.0.0.copyload.i.i.i17.i.i.i = load i64, ptr %i.qr, align 8, !tbaa !23
  %i.qs = and i64 %.sroa.0.0.copyload.i.i.i17.i.i.i, 15
  %.not.i.i18.i.i.i = icmp eq i64 %i.qs, 0
  br i1 %.not.i.i18.i.i.i, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit22.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i.i.i
  %i.qt = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i16.i.i.i) #20
  %i.qu = extractvalue { ptr, i64 } %i.qt, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit22.i.i.i

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit22.i.i.i: ; preds = %bb.ck, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i.i.i
  %.sroa.03.0.in.in.i.i19.i.i.i = phi ptr [ %i.qu, %bb.ck ], [ %i.qq, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i.i.i ]
  %.sroa.03.0.in.i.i20.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i19.i.i.i to i64
  %.sroa.03.0.i.i21.i.i.i = and i64 %.sroa.03.0.in.i.i20.i.i.i, -8
  %i.qv = call noundef zeroext i1 @_ZN5clang7CodeGen22isEmptyRecordForLayoutERKNS_10ASTContextENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.qm, i64 %.sroa.03.0.i.i21.i.i.i) #20
  br i1 %i.qv, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit22.i.i.i
  %i.qw = load ptr, ptr %i.fy, align 8, !tbaa !604, !nonnull !48, !align !49
  %i.qx = call noundef zeroext i1 @_ZNK5clang10ASTContext13isNearlyEmptyEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.qw, ptr noundef %.1.i.i.i.i) #20
  br i1 %i.qx, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.qy = load ptr, ptr %i.gd, align 8, !tbaa !121
  %i.qz = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_116CGRecordLowering13hasOwnStorageEPKN5clang13CXXRecordDeclES4_(ptr noundef nonnull readonly align 8 dereferenceable(313) %0, ptr noundef %i.qy, ptr noundef %.1.i.i.i.i)
  br i1 %i.qz, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ra = load ptr, ptr %i.f, align 8, !tbaa !125, !nonnull !48, !align !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.rb = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %.1.i.i.i.i)
  store ptr %i.rb, ptr %i.d, align 8, !tbaa !631
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 72
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !132
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 88
  %i.rf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.re, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.rf, 0
  %i.rg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i23.i.i.i = load i64, ptr %i.rg, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.speculated.i.i.i = call i64 @llvm.smin.i64(i64 %.sroa.0.0.copyload.i23.i.i.i, i64 %.sroa.027.031.i.i.i)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit22.i.i.i
  %.sroa.027.1.i.i.i = phi i64 [ %.sroa.027.031.i.i.i, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit22.i.i.i ], [ %.sroa.speculated.i.i.i, %bb.cn ], [ %.sroa.027.031.i.i.i, %bb.cm ] ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.01332.i.i.i, i64 24 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.rh, %i.pi
  br i1 %.not14.i.i.i, label %_ZNK12_GLOBAL__N_116CGRecordLowering27calculateTailClippingOffsetEb.exit.i.i, label %.lr.ph.i.i.i25

_ZNK12_GLOBAL__N_116CGRecordLowering27calculateTailClippingOffsetEb.exit.i.i: ; preds = %bb.co, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %._crit_edge.i.i, %bb.ca
  %.sroa.0253.2.i.i = phi i64 [ %.sroa.0253.0.i.i.ph, %bb.ca ], [ %.sroa.0253.0.i.i.ph, %._crit_edge.i.i ], [ %.sroa.0.0.copyload.i.i148.i.i, %bb.cc ], [ %.sroa.0.0.copyload.i15.i.i.i, %bb.cd ], [ %.sroa.0.0.copyload.i15.i.i.i, %bb.ce ], [ %.sroa.0.0.copyload.i15.i.i.i, %bb.cf ], [ %.sroa.027.1.i.i.i, %bb.co ] ; 3 uses
  %.sroa.0230.1.i.i = phi i64 [ %i.oy, %bb.ca ], [ %.sroa.0253.0.i.i.ph, %._crit_edge.i.i ], [ %.sroa.0.0.copyload.i.i148.i.i, %bb.cc ], [ %.sroa.0.0.copyload.i15.i.i.i, %bb.cd ], [ %.sroa.0.0.copyload.i15.i.i.i, %bb.ce ], [ %.sroa.0.0.copyload.i15.i.i.i, %bb.cf ], [ %.sroa.027.1.i.i.i, %bb.co ] ; 2 uses
  %.val84.i.i = load ptr, ptr %i.gc, align 8, !tbaa !602
  %i.ri = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %.val84.i.i, ptr noundef %i.nd) #20 ; 2 uses
  %.fca.1.extract.i149.i.i = extractvalue { i64, i8 } %i.ri, 1
  %i.rj = trunc nuw i8 %.fca.1.extract.i149.i.i to i1
  br i1 %i.rj, label %bb.cp, label %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit151.i.i

bb.cp:                                            ; preds = %_ZNK12_GLOBAL__N_116CGRecordLowering27calculateTailClippingOffsetEb.exit.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.22) #21
  unreachable

_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit151.i.i: ; preds = %_ZNK12_GLOBAL__N_116CGRecordLowering27calculateTailClippingOffsetEb.exit.i.i
  %.fca.0.extract.i150.i.i = extractvalue { i64, i8 } %i.ri, 0
  %i.rk = add nsw i64 %.fca.0.extract.i150.i.i, %.sroa.0242.0.i.i.ph.ph ; 2 uses
  %.not373.i.i = icmp sgt i64 %i.rk, %.sroa.0230.1.i.i ; 3 uses
  %.sroa.0241.3.i.i = select i1 %.not373.i.i, ptr %.sroa.0241.2439.i.i, ptr %.sroa.0291.1.i.i.ph444 ; 3 uses
  %.sroa.0240.2.i.i = select i1 %.not373.i.i, i64 %.sroa.0240.1440.i.i, i64 %i.rk ; 3 uses
  %.457.i.i = select i1 %.not373.i.i, i1 %.154441.i.i, i1 false ; 3 uses
  br i1 %.266.ph.i.i.peel, label %.thread348.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit151.i.i
  %i.rl = load ptr, ptr %0, align 8, !tbaa !603, !nonnull !48, !align !49
  %i.rm = call noundef nonnull align 8 dereferenceable(2496) ptr @_ZNK5clang7CodeGen12CodeGenTypes14getCodeGenOptsEv(ptr noundef nonnull align 8 dereferenceable(232) %i.rl) #20
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 64
  %i.ro = load i64, ptr %i.rn, align 8
  %i.rp = and i64 %i.ro, 8796093022208
  %.not77.i.i = icmp eq i64 %i.rp, 0
  br i1 %.not77.i.i, label %bb.cr, label %.thread348.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.rq = load ptr, ptr %i.fy, align 8, !tbaa !604, !nonnull !48, !align !49
  %i.rr = sub nsw i64 %.sroa.0230.1.i.i, %.sroa.0242.0.i.i.ph.ph
  %i.rs = call noundef i64 @_ZNK5clang10ASTContext6toBitsENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(23904) %i.rq, i64 %i.rr) #20
  br label %.thread331.i.i

.thread348.i.i:                                   ; preds = %bb.cq, %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit151.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit.i.i, %.thread319.i.i, %bb.bp
  %.659358.i.i = phi i1 [ %spec.select82.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit.i.i ], [ %.457.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit151.i.i ], [ %.457.i.i, %bb.cq ], [ %.053.i.i.ph, %bb.bp ], [ %.154441.i.i, %.thread319.i.i ] ; 2 uses
  %.sroa.0240.3357.i.i = phi i64 [ %.sroa.0240.1440.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit.i.i ], [ %.sroa.0240.2.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit151.i.i ], [ %.sroa.0240.2.i.i, %bb.cq ], [ %.sroa.0240.0.i.i.ph, %bb.bp ], [ %.sroa.0240.1440.i.i, %.thread319.i.i ] ; 4 uses
  %.sroa.0241.4356.i.i = phi ptr [ %.sroa.0241.2439.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit.i.i ], [ %.sroa.0241.3.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit151.i.i ], [ %.sroa.0241.3.i.i, %bb.cq ], [ %.sroa.0241.0.i.i.ph, %bb.bp ], [ %.sroa.0241.2439.i.i, %.thread319.i.i ] ; 3 uses
  %.sroa.0253.3355.i.i = phi i64 [ %.sroa.0253.0.i.i.ph, %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit.i.i ], [ %.sroa.0253.2.i.i, %_ZNK12_GLOBAL__N_116CGRecordLowering7getSizeEPN4llvm4TypeE.exit151.i.i ], [ %.sroa.0253.2.i.i, %bb.cq ], [ %.sroa.0253.0.i.i.ph, %bb.bp ], [ %.sroa.0253.0.i.i.ph, %.thread319.i.i ] ; 3 uses
  %i.rt = sub nsw i64 %.sroa.0240.3357.i.i, %.sroa.0242.0.i.i.ph.ph ; 2 uses
  %i.ru = icmp eq i64 %.sroa.0240.3357.i.i, %.sroa.0242.0.i.i.ph.ph
  br i1 %i.ru, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge, label %bb.cs

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge: ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i, %.thread348.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit167.i.i
  %.sroa.0253.0.i.i.ph.be = phi i64 [ %.sroa.0253.3355449454.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit167.i.i ], [ %.sroa.0253.3355.i.i, %.thread348.i.i ], [ %.sroa.0253.3355449454.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i ]
  %.sroa.0240.0.i.i.ph.be = phi i64 [ %.sroa.0240.3357447458.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit167.i.i ], [ %.sroa.0242.0.i.i.ph.ph, %.thread348.i.i ], [ %.sroa.0240.3357447458.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i ]
  %.sroa.0291.1.i.i.ph444.be = phi ptr [ %.sroa.0241.4356448456.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit167.i.i ], [ %.sroa.0241.4356.i.i, %.thread348.i.i ], [ %.sroa.0241.4356448456.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i ] ; 2 uses
  %.053.i.i.ph.be = phi i1 [ %.659358446460.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit167.i.i ], [ %.659358.i.i, %.thread348.i.i ], [ %.659358446460.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i ]
  br label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer

bb.cs:                                            ; preds = %.thread348.i.i
  br i1 %.659358.i.i, label %.thread.i.i, label %bb.cu

.thread.i.i:                                      ; preds = %.thread348.thread.i.i.peel, %bb.cs
  %.sroa.0240.3357447459.i.i = phi i64 [ %.sroa.0240.3357.i.i, %bb.cs ], [ %i.ln, %.thread348.thread.i.i.peel ] ; 2 uses
  %.sroa.0241.4356448457.i.i = phi ptr [ %.sroa.0241.4356.i.i, %bb.cs ], [ %.sroa.0291.1.i.i.ph444, %.thread348.thread.i.i.peel ] ; 2 uses
  %.sroa.0253.3355449455.i.i = phi i64 [ %.sroa.0253.3355.i.i, %bb.cs ], [ %.sroa.0253.0.i.i.ph, %.thread348.thread.i.i.peel ] ; 2 uses
  %i.rv = phi i64 [ %i.rt, %bb.cs ], [ %i.ll, %.thread348.thread.i.i.peel ] ; 2 uses
  %.val86.i.i = load ptr, ptr %0, align 8, !tbaa !603
  %.val87.i.i = load ptr, ptr %i.fy, align 8, !tbaa !604 ; 2 uses
  %i.rw = getelementptr i8, ptr %.val86.i.i, i64 16
  %.val86.val.i.i = load ptr, ptr %i.rw, align 8, !tbaa !47
  %.val86.val.val.i.i = load ptr, ptr %.val86.val.i.i, align 8, !tbaa !205
  %i.rx = getelementptr inbounds nuw i8, ptr %.val87.i.i, i64 18912
  %.sroa.0.0.copyload.i.i.i.i152.i.i = load i64, ptr %i.rx, align 8, !tbaa !23
  %i.ry = and i64 %.sroa.0.0.copyload.i.i.i.i152.i.i, -16
  %i.rz = inttoptr i64 %i.ry to ptr
  %i.sa = load ptr, ptr %i.rz, align 16, !tbaa !56
  %i.sb = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %.val87.i.i, ptr noundef %i.sa) #20
  %i.sc = extractvalue { i64, i64 } %i.sb, 0
  %i.sd = trunc i64 %i.sc to i32
  %i.se = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %.val86.val.val.i.i, i32 noundef %i.sd) #20 ; 2 uses
  %i.sf = icmp eq i64 %i.rv, 1
  br i1 %i.sf, label %_ZNK12_GLOBAL__N_116CGRecordLowering16getByteArrayTypeEN5clang9CharUnitsE.exit.i.i23, label %bb.ct

bb.ct:                                            ; preds = %.thread.i.i
  %i.sg = call noundef ptr @_ZN4llvm9ArrayType3getEPNS_4TypeEm(ptr noundef %i.se, i64 noundef %i.rv) #20
  br label %_ZNK12_GLOBAL__N_116CGRecordLowering16getByteArrayTypeEN5clang9CharUnitsE.exit.i.i23

bb.cu:                                            ; preds = %bb.cs
  %i.sh = load ptr, ptr %i.fy, align 8, !tbaa !604, !nonnull !48, !align !49
  %i.si = call noundef i64 @_ZNK5clang10ASTContext6toBitsENS_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(23904) %i.sh, i64 %i.rt) #20 ; 2 uses
  %i.sj = load ptr, ptr %i.fy, align 8, !tbaa !604, !nonnull !48, !align !49 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 18912
  %.sroa.0.0.copyload.i.i.i153.i.i = load i64, ptr %i.sk, align 8, !tbaa !23
  %i.sl = and i64 %.sroa.0.0.copyload.i.i.i153.i.i, -16
  %i.sm = inttoptr i64 %i.sl to ptr
  %i.sn = load ptr, ptr %i.sm, align 16, !tbaa !56
  %i.so = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.sj, ptr noundef %i.sn) #20
  %i.sp = extractvalue { i64, i64 } %i.so, 0      ; 2 uses
  %i.sq = icmp ne i64 %i.si, 0
  %i.sr = zext i1 %i.sq to i64                    ; 2 uses
  %i.ss = sub i64 %i.si, %i.sr
  %i.st = udiv i64 %i.ss, %i.sp
  %i.su = add i64 %i.st, %i.sr
  %i.sv = mul i64 %i.su, %i.sp
  %i.sw = trunc i64 %i.sv to i32
  %i.sx = load ptr, ptr %0, align 8, !tbaa !603, !nonnull !48, !align !49
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !205, !nonnull !48, !align !49
  %i.tb = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ta, i32 noundef %i.sw) #20
  br label %_ZNK12_GLOBAL__N_116CGRecordLowering16getByteArrayTypeEN5clang9CharUnitsE.exit.i.i23

_ZNK12_GLOBAL__N_116CGRecordLowering16getByteArrayTypeEN5clang9CharUnitsE.exit.i.i23: ; preds = %bb.cu, %bb.ct, %.thread.i.i
  %.659358446460.i.i = phi i1 [ false, %bb.cu ], [ true, %bb.ct ], [ true, %.thread.i.i ] ; 2 uses
  %.sroa.0240.3357447458.i.i = phi i64 [ %.sroa.0240.3357.i.i, %bb.cu ], [ %.sroa.0240.3357447459.i.i, %bb.ct ], [ %.sroa.0240.3357447459.i.i, %.thread.i.i ] ; 2 uses
  %.sroa.0241.4356448456.i.i = phi ptr [ %.sroa.0241.4356.i.i, %bb.cu ], [ %.sroa.0241.4356448457.i.i, %bb.ct ], [ %.sroa.0241.4356448457.i.i, %.thread.i.i ] ; 4 uses
  %.sroa.0253.3355449454.i.i = phi i64 [ %.sroa.0253.3355.i.i, %bb.cu ], [ %.sroa.0253.3355449455.i.i, %bb.ct ], [ %.sroa.0253.3355449455.i.i, %.thread.i.i ] ; 2 uses
  %.049.i.i = phi ptr [ %i.tb, %bb.cu ], [ %i.sg, %bb.ct ], [ %i.se, %.thread.i.i ] ; 2 uses
  %i.tc = load ptr, ptr %i.ga, align 8, !tbaa !797 ; 8 uses
  %i.td = load ptr, ptr %i.gb, align 8, !tbaa !619
  %.not.i.i154.i.i = icmp eq ptr %i.tc, %i.td
  br i1 %.not.i.i154.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZNK12_GLOBAL__N_116CGRecordLowering16getByteArrayTypeEN5clang9CharUnitsE.exit.i.i23
  store i64 %.sroa.0242.0.i.i.ph.ph, ptr %i.tc, align 8, !tbaa !96
  %.sroa.5209.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  store i32 2, ptr %.sroa.5209.0..sroa_idx.i.i, align 8, !tbaa !23
  %.sroa.6215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  store ptr %.049.i.i, ptr %.sroa.6215.0..sroa_idx.i.i, align 8, !tbaa !621
  %.sroa.7218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  store ptr null, ptr %.sroa.7218.0..sroa_idx.i.i, align 8, !tbaa !23
  %i.te = load ptr, ptr %i.ga, align 8, !tbaa !797
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  store ptr %i.tf, ptr %i.ga, align 8, !tbaa !797
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit167.i.i

bb.cw:                                            ; preds = %_ZNK12_GLOBAL__N_116CGRecordLowering16getByteArrayTypeEN5clang9CharUnitsE.exit.i.i23
  %.val.i.i.i155.i.i = load ptr, ptr %i.fz, align 8, !tbaa !622 ; 5 uses
  %i.tg = ptrtoint ptr %i.tc to i64
  %i.th = ptrtoint ptr %.val.i.i.i155.i.i to i64  ; 2 uses
  %i.ti = sub i64 %i.tg, %i.th                    ; 3 uses
  %i.tj = icmp eq i64 %i.ti, 9223372036854775776
  br i1 %i.tj, label %bb.cx, label %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156.i.i

bb.cx:                                            ; preds = %bb.cw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156.i.i: ; preds = %bb.cw
  %i.tk = ashr exact i64 %i.ti, 5                 ; 3 uses
  %i.tl = icmp eq ptr %i.tc, %.val.i.i.i155.i.i   ; 2 uses
  %.sroa.speculated.i.i.i.i157.i.i = select i1 %i.tl, i64 1, i64 %i.tk
  %i.tm = add nsw i64 %.sroa.speculated.i.i.i.i157.i.i, %i.tk ; 2 uses
  %i.tn = icmp ult i64 %i.tm, %i.tk
  %i.to = call i64 @llvm.umin.i64(i64 %i.tm, i64 288230376151711743)
  %i.tp = select i1 %i.tn, i64 288230376151711743, i64 %i.to ; 3 uses
  %.not.i.i.i.i158.i.i = icmp ne i64 %i.tp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i158.i.i)
  %i.tq = shl nuw nsw i64 %i.tp, 5
  %i.tr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tq) #22 ; 5 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.ti ; 4 uses
  store i64 %.sroa.0242.0.i.i.ph.ph, ptr %i.ts, align 8, !tbaa !96
  %.sroa.5209.0..sroa_idx210.i.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  store i32 2, ptr %.sroa.5209.0..sroa_idx210.i.i, align 8, !tbaa !23
  %.sroa.6215.0..sroa_idx216.i.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  store ptr %.049.i.i, ptr %.sroa.6215.0..sroa_idx216.i.i, align 8, !tbaa !621
  %.sroa.7218.0..sroa_idx219.i.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  store ptr null, ptr %.sroa.7218.0..sroa_idx219.i.i, align 8, !tbaa !23
  br i1 %i.tl, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i163.i.i, label %.lr.ph.i.i.i.i.i.i159.i.i

.lr.ph.i.i.i.i.i.i159.i.i:                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156.i.i, %.lr.ph.i.i.i.i.i.i159.i.i
  %.03.i.i.i.i.i.i160.i.i = phi ptr [ %i.tu, %.lr.ph.i.i.i.i.i.i159.i.i ], [ %i.tr, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i161.i.i = phi ptr [ %i.tt, %.lr.ph.i.i.i.i.i.i159.i.i ], [ %.val.i.i.i155.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i.i160.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i.i161.i.i, i64 32, i1 false), !tbaa.struct !623, !alias.scope !800
  %i.tt = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i161.i.i, i64 32 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i160.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i162.i.i = icmp eq ptr %i.tt, %i.tc
  br i1 %.not.i.i.i.i.i.i162.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i163.i.i, label %.lr.ph.i.i.i.i.i.i159.i.i, !llvm.loop !738

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i163.i.i: ; preds = %.lr.ph.i.i.i.i.i.i159.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156.i.i
  %.0.lcssa.i.i.i.i.i.i164.i.i = phi ptr [ %i.tr, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i156.i.i ], [ %i.tu, %.lr.ph.i.i.i.i.i.i159.i.i ]
  %i.tv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i164.i.i, i64 32
  %.not.i27.i.i.i165.i.i = icmp eq ptr %.val.i.i.i155.i.i, null
  br i1 %.not.i27.i.i.i165.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i166.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i163.i.i
  %i.tw = load ptr, ptr %i.gb, align 8, !tbaa !619
  %i.tx = ptrtoint ptr %i.tw to i64
  %i.ty = sub i64 %i.tx, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i155.i.i, i64 noundef %i.ty) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i166.i.i

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i166.i.i: ; preds = %bb.cy, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i163.i.i
  store ptr %i.tr, ptr %i.fz, align 8, !tbaa !622
  store ptr %i.tv, ptr %i.ga, align 8, !tbaa !797
  %i.tz = getelementptr inbounds nuw [32 x i8], ptr %i.tr, i64 %i.tp
  store ptr %i.tz, ptr %i.gb, align 8, !tbaa !619
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit167.i.i

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit167.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i166.i.i, %bb.cv
  %.not374391.i.i = icmp eq ptr %.sroa.0250.0.i.i.ph, %.sroa.0241.4356448456.i.i
  br i1 %.not374391.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge, label %.lr.ph393.i.i

.lr.ph393.i.i:                                    ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit167.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i
  %.sroa.0250.2392.i.i = phi ptr [ %.sroa.0250.5.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i ], [ %.sroa.0250.0.i.i.ph, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit167.i.i ] ; 4 uses
  %i.ua = call noundef zeroext i1 @_ZNK5clang9FieldDecl20isZeroLengthBitFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0250.2392.i.i) #20
  br i1 %i.ua, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit183.i.i, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph393.i.i
  %i.ub = load ptr, ptr %i.ga, align 8, !tbaa !797 ; 8 uses
  %i.uc = load ptr, ptr %i.gb, align 8, !tbaa !619
  %.not.i.i170.i.i = icmp eq ptr %i.ub, %i.uc
  br i1 %.not.i.i170.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i64 %.sroa.0242.0.i.i.ph.ph, ptr %i.ub, align 8, !tbaa !96
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store i32 2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !23
  %.sroa.6202.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  store ptr null, ptr %.sroa.6202.0..sroa_idx.i.i, align 8, !tbaa !621
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  store ptr %.sroa.0250.2392.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !23
  %i.ud = load ptr, ptr %i.ga, align 8, !tbaa !797
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 32
  store ptr %i.ue, ptr %i.ga, align 8, !tbaa !797
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit183.i.i

bb.db:                                            ; preds = %bb.cz
  %.val.i.i.i171.i.i = load ptr, ptr %i.fz, align 8, !tbaa !622 ; 5 uses
  %i.uf = ptrtoint ptr %i.ub to i64
  %i.ug = ptrtoint ptr %.val.i.i.i171.i.i to i64  ; 2 uses
  %i.uh = sub i64 %i.uf, %i.ug                    ; 3 uses
  %i.ui = icmp eq i64 %i.uh, 9223372036854775776
  br i1 %i.ui, label %bb.dc, label %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i172.i.i

bb.dc:                                            ; preds = %bb.db
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i172.i.i: ; preds = %bb.db
  %i.uj = ashr exact i64 %i.uh, 5                 ; 3 uses
  %i.uk = icmp eq ptr %i.ub, %.val.i.i.i171.i.i   ; 2 uses
  %.sroa.speculated.i.i.i.i173.i.i = select i1 %i.uk, i64 1, i64 %i.uj
  %i.ul = add nsw i64 %.sroa.speculated.i.i.i.i173.i.i, %i.uj ; 2 uses
  %i.um = icmp ult i64 %i.ul, %i.uj
  %i.un = call i64 @llvm.umin.i64(i64 %i.ul, i64 288230376151711743)
  %i.uo = select i1 %i.um, i64 288230376151711743, i64 %i.un ; 3 uses
  %.not.i.i.i.i174.i.i = icmp ne i64 %i.uo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i174.i.i)
  %i.up = shl nuw nsw i64 %i.uo, 5
  %i.uq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.up) #22 ; 5 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.uh ; 4 uses
  store i64 %.sroa.0242.0.i.i.ph.ph, ptr %i.ur, align 8, !tbaa !96
  %.sroa.5.0..sroa_idx198.i.i = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  store i32 2, ptr %.sroa.5.0..sroa_idx198.i.i, align 8, !tbaa !23
  %.sroa.6202.0..sroa_idx203.i.i = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  store ptr null, ptr %.sroa.6202.0..sroa_idx203.i.i, align 8, !tbaa !621
  %.sroa.7.0..sroa_idx205.i.i = getelementptr inbounds nuw i8, ptr %i.ur, i64 24
  store ptr %.sroa.0250.2392.i.i, ptr %.sroa.7.0..sroa_idx205.i.i, align 8, !tbaa !23
  br i1 %i.uk, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i179.i.i, label %.lr.ph.i.i.i.i.i.i175.i.i

.lr.ph.i.i.i.i.i.i175.i.i:                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i172.i.i, %.lr.ph.i.i.i.i.i.i175.i.i
  %.03.i.i.i.i.i.i176.i.i = phi ptr [ %i.ut, %.lr.ph.i.i.i.i.i.i175.i.i ], [ %i.uq, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i172.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i177.i.i = phi ptr [ %i.us, %.lr.ph.i.i.i.i.i.i175.i.i ], [ %.val.i.i.i171.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i172.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i.i176.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i.i177.i.i, i64 32, i1 false), !tbaa.struct !623, !alias.scope !801
  %i.us = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i177.i.i, i64 32 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i176.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i178.i.i = icmp eq ptr %i.us, %i.ub
  br i1 %.not.i.i.i.i.i.i178.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i179.i.i, label %.lr.ph.i.i.i.i.i.i175.i.i, !llvm.loop !738

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i179.i.i: ; preds = %.lr.ph.i.i.i.i.i.i175.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i172.i.i
  %.0.lcssa.i.i.i.i.i.i180.i.i = phi ptr [ %i.uq, %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i172.i.i ], [ %i.ut, %.lr.ph.i.i.i.i.i.i175.i.i ]
  %i.uu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i180.i.i, i64 32
  %.not.i27.i.i.i181.i.i = icmp eq ptr %.val.i.i.i171.i.i, null
  br i1 %.not.i27.i.i.i181.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i182.i.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i179.i.i
  %i.uv = load ptr, ptr %i.gb, align 8, !tbaa !619
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = sub i64 %i.uw, %i.ug
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i171.i.i, i64 noundef %i.ux) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i182.i.i

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i182.i.i: ; preds = %bb.dd, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i179.i.i
  store ptr %i.uq, ptr %i.fz, align 8, !tbaa !622
  store ptr %i.uu, ptr %i.ga, align 8, !tbaa !797
  %i.uy = getelementptr inbounds nuw [32 x i8], ptr %i.uq, i64 %i.uo
  store ptr %i.uy, ptr %i.gb, align 8, !tbaa !619
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit183.i.i

_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit183.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i182.i.i, %bb.da, %.lr.ph393.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0250.2392.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i184.i.i = load i64, ptr %i.uz, align 8
  %i.va = and i64 %.0.copyload.i.i.i.i.i.i184.i.i, -8 ; 2 uses
  %i.vb = inttoptr i64 %i.va to ptr               ; 2 uses
  %.not1.i.i185.i.i = icmp eq i64 %i.va, 0
  br i1 %.not1.i.i185.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i, label %.lr.ph.i.i186.i.i

.lr.ph.i.i186.i.i:                                ; preds = %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit183.i.i, %bb.de
  %.sroa.0250.4.i.i = phi ptr [ %i.vj, %bb.de ], [ %i.vb, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit183.i.i ] ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0250.4.i.i, i64 28
  %i.vd = load i32, ptr %i.vc, align 4
  %i.ve = and i32 %i.vd, 127
  %i.vf = add nsw i32 %i.ve, -50
  %i.vg = icmp ult i32 %i.vf, 3
  br i1 %i.vg, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i, label %bb.de

bb.de:                                            ; preds = %.lr.ph.i.i186.i.i
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0250.4.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i187.i.i = load i64, ptr %i.vh, align 8
  %i.vi = and i64 %.0.copyload.i.i.i.i.i.i.i187.i.i, -8 ; 2 uses
  %i.vj = inttoptr i64 %i.vi to ptr               ; 2 uses
  %.not.i.i188.i.i = icmp eq i64 %i.vi, 0
  br i1 %.not.i.i188.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i, label %.lr.ph.i.i186.i.i, !llvm.loop !0

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit189.i.i: ; preds = %bb.de, %.lr.ph.i.i186.i.i, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit183.i.i
  %.sroa.0250.5.i.i = phi ptr [ %i.vb, %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit183.i.i ], [ %i.vj, %bb.de ], [ %.sroa.0250.4.i.i, %.lr.ph.i.i186.i.i ] ; 2 uses
  %.not374.i.i = icmp eq ptr %.sroa.0250.5.i.i, %.sroa.0241.4356448456.i.i
  br i1 %.not374.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.backedge, label %.lr.ph393.i.i, !llvm.loop !751

.thread331.i.i:                                   ; preds = %bb.bh, %bb.cr, %.loopexit531
  %.6346.i.i = phi i64 [ %i.rs, %bb.cr ], [ 0, %.loopexit531 ], [ %.050.i.i.ph.ph, %bb.bh ]
  %.760345.i.i = phi i1 [ %.457.i.i, %bb.cr ], [ %.053.i.i.lcssa, %.loopexit531 ], [ %.053.i.i.ph, %bb.bh ]
  %.sroa.0240.4344.i.i = phi i64 [ %.sroa.0240.2.i.i, %bb.cr ], [ %.sroa.0240.0.i.i.lcssa, %.loopexit531 ], [ %.sroa.0240.0.i.i.ph, %bb.bh ]
  %.sroa.0241.5343.i.i = phi ptr [ %.sroa.0241.3.i.i, %bb.cr ], [ %.sroa.0291.1.i.i.ph444, %.loopexit531 ], [ %.sroa.0241.0.i.i.ph, %bb.bh ]
  %.sroa.0253.4342.i.i = phi i64 [ %.sroa.0253.2.i.i, %bb.cr ], [ %.sroa.0253.0.i.i.ph, %.loopexit531 ], [ %.sroa.0253.0.i.i.ph, %bb.bh ]
  %.sroa.0250.1313341.i.i = phi ptr [ %.sroa.0250.0.i.i.ph, %bb.cr ], [ %.sroa.0291.1.i.i.ph444, %.loopexit531 ], [ %.sroa.0250.0.i.i.ph, %bb.bh ]
  %.sroa.0242.1315340.i.i = phi i64 [ %.sroa.0242.0.i.i.ph.ph, %bb.cr ], [ %i.mh, %.loopexit531 ], [ %.sroa.0242.0.i.i.ph.ph, %bb.bh ]
  %i.vk = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0291.1.i.i.ph444) #20
  %i.vl = zext i32 %i.vk to i64
  %i.vm = add i64 %.6346.i.i, %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.0291.1.i.i.ph444, i64 8
  %.0.copyload.i.i.i.i.i.i190.i.i = load i64, ptr %i.vn, align 8
  %i.vo = and i64 %.0.copyload.i.i.i.i.i.i190.i.i, -8 ; 2 uses
  %i.vp = inttoptr i64 %i.vo to ptr               ; 2 uses
  %.not1.i.i191.i.i = icmp eq i64 %i.vo, 0
  br i1 %.not1.i.i191.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge, label %.lr.ph.i.i192.i.i

.lr.ph.i.i192.i.i:                                ; preds = %.thread331.i.i, %bb.df
  %.sroa.0291.5.i.i = phi ptr [ %i.vx, %bb.df ], [ %i.vp, %.thread331.i.i ] ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0291.5.i.i, i64 28
  %i.vr = load i32, ptr %i.vq, align 4
  %i.vs = and i32 %i.vr, 127
  %i.vt = add nsw i32 %i.vs, -50
  %i.vu = icmp ult i32 %i.vt, 3
  br i1 %i.vu, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i192.i.i
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.0291.5.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i193.i.i = load i64, ptr %i.vv, align 8
  %i.vw = and i64 %.0.copyload.i.i.i.i.i.i.i193.i.i, -8 ; 2 uses
  %i.vx = inttoptr i64 %i.vw to ptr               ; 2 uses
  %.not.i.i194.i.i = icmp eq i64 %i.vw, 0
  br i1 %.not.i.i194.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit195.i.i.outer.outer.backedge, label %.lr.ph.i.i192.i.i, !llvm.loop !0

bb.dg:                                            ; preds = %bb.al
  %i.vy = call noundef zeroext i1 @_ZN5clang7CodeGen21isEmptyFieldForLayoutERKNS_10ASTContextEPKNS_9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %.val.i.i14, ptr noundef nonnull %.sroa.034.059.i) #20
  br i1 %i.vy, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.034.059.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i20 = load i64, ptr %i.vz, align 8
  %i.wa = and i64 %.0.copyload.i.i.i.i.i.i.i20, -8 ; 2 uses
  %i.wb = inttoptr i64 %i.wa to ptr               ; 2 uses
  %.not1.i.i.i21 = icmp eq i64 %i.wa, 0
  br i1 %.not1.i.i.i21, label %_ZN12_GLOBAL__N_116CGRecordLowering19accumulateBitFieldsEbN5clang11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEES5_.exit.i, label %.lr.ph.i.i6.i

.lr.ph.i.i6.i:                                    ; preds = %bb.dh, %bb.di
  %.sroa.034.2.i = phi ptr [ %i.wj, %bb.di ], [ %i.wb, %bb.dh ] ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.034.2.i, i64 28
  %i.wd = load i32, ptr %i.wc, align 4
  %i.we = and i32 %i.wd, 127
  %i.wf = add nsw i32 %i.we, -50
  %i.wg = icmp ult i32 %i.wf, 3
  br i1 %i.wg, label %_ZN12_GLOBAL__N_116CGRecordLowering19accumulateBitFieldsEbN5clang11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEES5_.exit.i, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i6.i
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.034.2.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i7.i = load i64, ptr %i.wh, align 8
  %i.wi = and i64 %.0.copyload.i.i.i.i.i.i.i7.i, -8 ; 2 uses
  %i.wj = inttoptr i64 %i.wi to ptr               ; 2 uses
  %.not.i.i8.i = icmp eq i64 %i.wi, 0
  br i1 %.not.i.i8.i, label %_ZN12_GLOBAL__N_116CGRecordLowering19accumulateBitFieldsEbN5clang11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEES5_.exit.i, label %.lr.ph.i.i6.i, !llvm.loop !0

bb.dj:                                            ; preds = %bb.dg
  %.val.i15 = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.wk = getelementptr inbounds nuw i8, ptr %.sroa.034.059.i, i64 28
  %i.wl = load i32, ptr %i.wk, align 4
  %i.wm = and i32 %i.wl, 32768
  %.not.i.i.i.i9.i = icmp eq i32 %i.wm, 0
  br i1 %.not.i.i.i.i9.i, label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.wn = call noundef ptr @_ZN5clang20getPrimaryMergedDeclEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.034.059.i) #20
  br label %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i.i

_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i.i: ; preds = %bb.dk, %bb.dj
  %.0.i.i.i.i.i = phi ptr [ %i.wn, %bb.dk ], [ %.sroa.034.059.i, %bb.dj ] ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 68 ; 2 uses
  %i.wp = load i32, ptr %i.wo, align 4            ; 2 uses
  %i.wq = icmp ult i32 %i.wp, 16
  br i1 %i.wq, label %bb.dl, label %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit.i

bb.dl:                                            ; preds = %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i.i
  call void @_ZNK5clang9FieldDecl19setCachedFieldIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i.i.i) #20
  %.pre.i.i.i = load i32, ptr %i.wo, align 4
  br label %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit.i

_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit.i: ; preds = %bb.dl, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i.i
  %i.wr = phi i32 [ %.pre.i.i.i, %bb.dl ], [ %i.wp, %_ZNK5clang9FieldDecl16getCanonicalDeclEv.exit.i.i.i ]
  %i.ws = lshr i32 %i.wr, 4
  %i.wt = add nsw i32 %i.ws, -1
  %i.wu = getelementptr inbounds nuw i8, ptr %.val.i15, i64 48
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !618
  %i.ww = zext i32 %i.wt to i64
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %i.ww
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !96
  %.val4.i = load ptr, ptr %i.fy, align 8, !tbaa !604
  %i.wz = call i64 @_ZNK5clang10ASTContext19toCharUnitsFromBitsEl(ptr noundef nonnull align 8 dereferenceable(23904) %.val4.i, i64 noundef %i.wy) #20 ; 2 uses
  %i.xa = call noundef zeroext i1 @_ZNK5clang9FieldDecl24isPotentiallyOverlappingEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.034.059.i) #20
  br i1 %i.xa, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit.i
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.034.059.i, i64 48
  %.sroa.0.0.copyload.i10.i = load i64, ptr %i.xb, align 8, !tbaa !23
  %i.xc = and i64 %.sroa.0.0.copyload.i10.i, -16
  %i.xd = inttoptr i64 %i.xc to ptr
  %i.xe = load ptr, ptr %i.xd, align 16, !tbaa !56
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %.sroa.0.0.copyload.i.i.i.i11.i = load i64, ptr %i.xf, align 8, !tbaa !23
  %i.xg = and i64 %.sroa.0.0.copyload.i.i.i.i11.i, -16
  %i.xh = inttoptr i64 %i.xg to ptr
  %i.xi = load ptr, ptr %i.xh, align 16, !tbaa !56 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %i.xk = load i8, ptr %i.xj, align 16            ; 3 uses
  %i.xl = add i8 %i.xk, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i18 = icmp ult i8 %i.xl, 3
  %.not.i7.i.i = icmp ne ptr %i.xi, null
  %.not.i.not8.i.i = and i1 %.not.i7.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i18
  %i.xm = and i8 %i.xk, 62
  %spec.select.i.i.i.i19 = icmp eq i8 %i.xm, 48
  %or.cond.i12.i = and i1 %spec.select.i.i.i.i19, %.not.i.not8.i.i
  br i1 %or.cond.i12.i, label %bb.dn, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.dn:                                            ; preds = %bb.dm
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xi, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !612 ; 3 uses
  %i.xp = icmp eq i8 %i.xk, 49
  br i1 %i.xp, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 28
  %i.xr = load i32, ptr %i.xq, align 4
  %i.xs = and i32 %i.xr, 127
  %i.xt = add nsw i32 %i.xs, -60
  %i.xu = icmp ult i32 %i.xt, 3
  br i1 %i.xu, label %bb.dp, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.xv = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.xo) ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.xv, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i, ptr %i.xo, ptr %i.xv
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i:     ; preds = %bb.dp, %bb.do, %bb.dm
  %.1.i13.i = phi ptr [ null, %bb.do ], [ null, %bb.dm ], [ %spec.select.i.i.i, %bb.dp ]
  %.val5.i = load ptr, ptr %0, align 8, !tbaa !603
  %i.xw = call noundef nonnull align 8 dereferenceable(113) ptr @_ZN5clang7CodeGen12CodeGenTypes17getCGRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(232) %.val5.i, ptr noundef %.1.i13.i) #20
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !209
  br label %bb.dr

bb.dq:                                            ; preds = %_ZNK12_GLOBAL__N_116CGRecordLowering17getFieldBitOffsetEPKN5clang9FieldDeclE.exit.i
  %i.xz = call fastcc noundef ptr @_ZNK12_GLOBAL__N_116CGRecordLowering14getStorageTypeEPKN5clang9FieldDeclE(ptr noundef nonnull align 8 dereferenceable(313) %0, ptr noundef nonnull %.sroa.034.059.i)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i
  %i.ya = phi ptr [ %i.xy, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.i ], [ %i.xz, %bb.dq ] ; 2 uses
  %i.yb = load ptr, ptr %i.ga, align 8, !tbaa !797 ; 8 uses
  %i.yc = load ptr, ptr %i.gb, align 8, !tbaa !619
  %.not.i.i14.i = icmp eq ptr %i.yb, %i.yc
  br i1 %.not.i.i14.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i64 %i.wz, ptr %i.yb, align 8, !tbaa !96
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  store i32 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !23
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  store ptr %i.ya, ptr %.sroa.628.0..sroa_idx.i, align 8, !tbaa !621
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  store ptr %.sroa.034.059.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !23
  %i.yd = load ptr, ptr %i.ga, align 8, !tbaa !797
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 32
  store ptr %i.ye, ptr %i.ga, align 8, !tbaa !797
  br label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE9push_backEOS2_.exit.i

bb.dt:                                            ; preds = %bb.dr
  %.val.i.i.i.i = load ptr, ptr %i.fz, align 8, !tbaa !622 ; 5 uses
  %i.yf = ptrtoint ptr %i.yb to i64
  %i.yg = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  %i.yh = sub i64 %i.yf, %i.yg                    ; 3 uses
  %i.yi = icmp eq i64 %i.yh, 9223372036854775776
  br i1 %i.yi, label %bb.du, label %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.du:                                            ; preds = %bb.dt
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.dt
  %i.yj = ashr exact i64 %i.yh, 5                 ; 3 uses
  %i.yk = icmp eq ptr %i.yb, %.val.i.i.i.i        ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.yk, i64 1, i64 %i.yj
  %i.yl = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.yj ; 2 uses
  %i.ym = icmp ult i64 %i.yl, %i.yj
  %i.yn = call i64 @llvm.umin.i64(i64 %i.yl, i64 288230376151711743)
  %i.yo = select i1 %i.ym, i64 288230376151711743, i64 %i.yn ; 3 uses
  %.not.i.i.i.i15.i = icmp ne i64 %i.yo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i15.i)
  %i.yp = shl nuw nsw i64 %i.yo, 5
  %i.yq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yp) #22 ; 5 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yh ; 4 uses
  store i64 %i.wz, ptr %i.yr, align 8, !tbaa !96
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  store i32 2, ptr %.sroa.5.0..sroa_idx24.i, align 8, !tbaa !23
  %.sroa.628.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  store ptr %i.ya, ptr %.sroa.628.0..sroa_idx29.i, align 8, !tbaa !621
  %.sroa.7.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  store ptr %.sroa.034.059.i, ptr %.sroa.7.0..sroa_idx31.i, align 8, !tbaa !23
  br i1 %i.yk, label %_ZNSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_116CGRecordLowering10MemberInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
end_hunk_1
