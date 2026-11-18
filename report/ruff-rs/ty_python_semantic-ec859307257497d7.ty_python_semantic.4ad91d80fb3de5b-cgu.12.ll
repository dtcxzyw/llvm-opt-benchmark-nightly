Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.12?download=true
inline.NumInlined: 9136
inline.NumDeleted: 3144
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder27infer_value_expression_impl:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !17919
  %i.jg = icmp ult i64 %.sroa.013.0.i, 576460752303423488
  call void @llvm.assume(i1 %i.jg)
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.016.0.i, i64 %.sroa.013.0.i
  %i.ji = icmp sgt i64 %.sroa.015.0.i, -1
  call void @llvm.assume(i1 %i.ji)
  store ptr %.sroa.016.0.i, ptr %i.ab, align 8, !noalias !17919
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.015.0.i, ptr %i.jj, align 8, !noalias !17919
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.016.0.i, ptr %i.jk, align 8, !noalias !17919
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.jh, ptr %i.jl, align 8, !noalias !17919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !17919
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !17919
  %i.jm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.jm, align 8, !noalias !17919
  %i.jn = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.val, ptr %i.jn, align 8, !noalias !17919
  %i.jo = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %.val1, ptr %i.jo, align 8, !noalias !17919
  %i.jp = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %.val26.i, ptr %i.jp, align 8, !noalias !17919
  %i.jq = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %i.ih, ptr %i.jq, align 8, !noalias !17919
  %i.jr = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %1, ptr %i.jr, align 8, !noalias !17919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !17919
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !noalias !17919, !noundef !27 ; 2 uses
  %i.ju = icmp ult i64 %i.jt, 128102389400760776
  call void @llvm.assume(i1 %i.ju)
  invoke void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder13with_capacity(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.z, i64 noundef %i.jt)
          to label %bb.ci unwind label %.body.thread104, !noalias !17921, !inline_history !17816

bb.ch:                                            ; preds = %bb.cf
  %.sroa.03.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !17919
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i26, align 8, !noalias !17919, !nonnull !27, !noundef !27
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.54.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !17919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17919
  br label %bb.cg

.thread93:                                        ; preds = %bb.dp, %.body.thread104, %.body.thread, %bb.cm
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i96, %.body.thread ], [ %lpad.thr_comm106, %bb.cm ], [ %i.ml, %bb.dp ], [ %lpad.thr_comm102, %.body.thread104 ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1s_.exit65 unwind label %bb.dl

bb.ci:                                            ; preds = %bb.cg
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !17919, !nonnull !27, !noundef !27 ; 2 uses
  %i.jx = load i64, ptr %i.js, align 8, !noalias !17919, !noundef !27 ; 2 uses
  %.idx = mul nuw nsw i64 %i.jx, 72
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx
  %.not116 = icmp eq i64 %i.jx, 0
  br i1 %.not116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ci
  %i.jz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.5.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.kb = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph, %bb.dj
  %.sroa.06.0.i117 = phi ptr [ %i.jw, %.lr.ph ], [ %i.kg, %bb.dj ] ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i117, i64 72 ; 2 uses
  %i.kh = load i32, ptr %.sroa.06.0.i117, align 8, !range !56, !noalias !17921, !noundef !27
  %i.ki = icmp eq i32 %i.kh, 27
  br i1 %i.ki, label %bb.ck, label %bb.cl

._crit_edge:                                      ; preds = %bb.dj, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false), !noalias !17919
  invoke void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder5build(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.n)
          to label %bb.do unwind label %.body.thread104, !noalias !17921, !inline_history !17816

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !17919
  invoke fastcc void @_RNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder22infer_tuple_expressions2_0Bc_(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.y, ptr noalias noundef align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 %.sroa.06.0.i117)
          to label %bb.cn unwind label %.thread113, !noalias !17921, !inline_history !17816

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17919
  invoke fastcc void @_RNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder22infer_tuple_expressions2_0Bc_(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.p, ptr noalias noundef align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 %.sroa.06.0.i117)
          to label %bb.dm unwind label %.thread113, !noalias !17921, !inline_history !17816

bb.cm:                                            ; preds = %bb.dk
  br i1 %.sroa.012.3.i.ph, label %.body.thread, label %.thread93

.body.thread104:                                  ; preds = %bb.cg, %._crit_edge, %bb.du
  %lpad.thr_comm102 = landingpad { ptr, i32 }
          cleanup
  br label %.thread93

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !17919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !17919
  invoke void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types9iterationNtB4_4Type7iterate(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.y, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, ptr noundef nonnull align 4 %.val26.i)
          to label %bb.co unwind label %.thread113, !noalias !17921, !inline_history !17816

bb.co:                                            ; preds = %bb.cn
  %i.kj = load i32, ptr %i.w, align 8, !range !34, !noalias !17919, !noundef !27
  %.not20.i = icmp eq i32 %i.kj, -3
  br i1 %.not20.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !noalias !17919
  br label %_RNvXs1Z_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBa_.exit

bb.cq:                                            ; preds = %bb.co
  %i.kk = load ptr, ptr %i.jz, align 8, !noalias !17919, !nonnull !27, !align !28, !noundef !27 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17923)
  call void @llvm.experimental.noalias.scope.decl(metadata !17924)
  %i.kl = load i32, ptr %i.kk, align 8, !range !51, !alias.scope !17924, !noalias !17921, !noundef !27
  %.not.i61 = icmp eq i32 %i.kl, -2
  br i1 %.not.i61, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !17925), !noalias !17921
  call void @llvm.experimental.noalias.scope.decl(metadata !17926), !noalias !17921
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17927), !noalias !17921
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.ko = load i64, ptr %i.kn, align 8, !alias.scope !17928, !noalias !17921, !noundef !27
  %.not.i.i.i.i = icmp eq i64 %i.ko, 0            ; 2 uses
  %i.kp = load ptr, ptr %i.km, align 8, !alias.scope !17928, !noalias !17921, !nonnull !27
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !17928, !noalias !17921
  %.sink10.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.km, ptr %i.kp ; 2 uses
  %.sink9.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.kr
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i.i.i, i64 %.sink9.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17929
  store i64 0, ptr %i.ka, align 8, !alias.scope !17930, !noalias !17929
  invoke void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters6cloned6ClonedINtNtNtB1I_5slice4iter4IterBJ_EEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %.sink10.i.i.i.i, ptr noundef nonnull %i.ks)
          to label %_RNvXsX_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit.i unwind label %bb.cs, !noalias !17931

bb.cs:                                            ; preds = %bb.cr
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.thread unwind label %bb.ct, !noalias !17931

bb.ct:                                            ; preds = %bb.cs
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !noalias !17931
  unreachable

_RNvXsX_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit.i: ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !17932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17929
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  %i.kw = load i64, ptr %i.kv, align 8, !alias.scope !17933, !noalias !17921, !noundef !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.kk, i64 16, i1 false), !alias.scope !17934, !noalias !17935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i, i64 40, i1 false), !noalias !17936
  store i64 %i.kw, ptr %.sroa.5.0..sroa_idx.i62, align 8, !alias.scope !17923, !noalias !17921
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RNvXs1Z_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBa_.exit

bb.cu:                                            ; preds = %bb.cq
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.ky = invoke { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBL_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kx)
          to label %.noexc63 unwind label %.thread113 ; 2 uses

.noexc63:                                         ; preds = %bb.cu
  %i.kz = extractvalue { ptr, i64 } %i.ky, 0
  %i.la = extractvalue { ptr, i64 } %i.ky, 1
  store ptr %i.kz, ptr %i.kb, align 8, !alias.scope !17923, !noalias !17921
  store i64 %i.la, ptr %i.kc, align 8, !alias.scope !17923, !noalias !17921
  store i32 -2, ptr %i.x, align 8, !alias.scope !17923, !noalias !17921
  br label %_RNvXs1Z_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBa_.exit

_RNvXs1Z_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBa_.exit: ; preds = %.noexc63, %_RNvXsX_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB9_.exit.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !17919
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i117, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !noalias !17921, !nonnull !27, !noundef !27 ; 5 uses
  %i.ld = load i32, ptr %i.lc, align 8, !range !56, !noalias !17921, !noundef !27
  switch i32 %i.ld, label %bb.df [
    i32 6, label %bb.cv
    i32 7, label %bb.cy
    i32 29, label %bb.cy
  ]

bb.cv:                                            ; preds = %_RNvXs1Z_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBa_.exit
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !17921, !nonnull !27, !noundef !27 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.lh = load i64, ptr %i.lg, align 8, !noalias !17921, !noundef !27 ; 5 uses
  %.idx144 = mul nuw nsw i64 %i.lh, 144
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.idx144
  %i.lj = icmp eq i64 %i.lh, 0
  br i1 %i.lj, label %._crit_edge141, label %.lr.ph140

bb.cw:                                            ; preds = %.lr.ph140
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lm, i64 144 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.li
  br i1 %i.ll, label %._crit_edge141, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.cv, %bb.cw
  %i.lm = phi ptr [ %i.lk, %bb.cw ], [ %i.lf, %bb.cv ] ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 72
  %.val.i59 = load i32, ptr %i.ln, align 8, !range !91, !noalias !17937, !noundef !27
  %.not.i60 = icmp eq i32 %.val.i59, -1
  br i1 %.not.i60, label %bb.cx, label %bb.cw

.thread113:                                       ; preds = %bb.di, %bb.cu, %bb.dm, %bb.cn, %bb.cl, %bb.ck, %bb.de
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.cx:                                            ; preds = %.lr.ph140
  %i.lo = icmp ult i64 %i.lh, 64051194700380388
  call void @llvm.assume(i1 %i.lo)
  br label %bb.df

._crit_edge141:                                   ; preds = %bb.cw, %bb.cv
  %4 = icmp ult i64 %i.lh, 64051194700380388
  br label %._crit_edge141.a

._crit_edge141.a:                                 ; preds = %._crit_edge138, %._crit_edge141
  %.sink = phi i1 [ %5, %._crit_edge138 ], [ %4, %._crit_edge141 ]
  %.sroa.7.0.i = phi i64 [ %i.ls, %._crit_edge138 ], [ %i.lh, %._crit_edge141 ]
  call void @llvm.assume(i1 %.sink)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !17919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !17919
  store i64 %.sroa.7.0.i, ptr %i.kd, align 8, !noalias !17919
  store i64 0, ptr %i.t, align 8, !noalias !17919
  invoke void @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE6resize(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, ptr noundef nonnull align 4 %.val26.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.db unwind label %bb.dk, !noalias !17921, !inline_history !17816

bb.cy:                                            ; preds = %_RNvXs1Z_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBa_.exit, %_RNvXs1Z_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBa_.exit
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !noalias !17921, !nonnull !27, !noundef !27 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.ls = load i64, ptr %i.lr, align 8, !noalias !17921, !noundef !27 ; 5 uses
  %.idx143 = mul nuw nsw i64 %i.ls, 72
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 %.idx143
  %i.lu = icmp eq i64 %i.ls, 0
  br i1 %i.lu, label %._crit_edge138, label %.lr.ph137

bb.cz:                                            ; preds = %.lr.ph137
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lx, i64 72 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.lt
  br i1 %i.lw, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.cy, %bb.cz
  %i.lx = phi ptr [ %i.lv, %bb.cz ], [ %i.lq, %bb.cy ] ; 2 uses
  %.val.i56 = load i32, ptr %i.lx, align 8, !range !56, !noalias !17938, !noundef !27
  %.not.i57 = icmp eq i32 %.val.i56, 27
  br i1 %.not.i57, label %bb.da, label %bb.cz

bb.da:                                            ; preds = %.lr.ph137
  %i.ly = icmp ult i64 %i.ls, 128102389400760776
  call void @llvm.assume(i1 %i.ly)
  br label %bb.df

._crit_edge138:                                   ; preds = %bb.cz, %bb.cy
  %5 = icmp ult i64 %i.ls, 128102389400760776
  br label %._crit_edge141.a

bb.db:                                            ; preds = %._crit_edge141.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !17919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !17919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false), !noalias !17919
  call void @llvm.experimental.noalias.scope.decl(metadata !17939)
  call void @llvm.experimental.noalias.scope.decl(metadata !17940)
  call void @llvm.experimental.noalias.scope.decl(metadata !17941)
  %i.lz = load i32, ptr %i.u, align 8, !range !34, !alias.scope !17940, !noalias !17921, !noundef !27
  %i.ma = icmp eq i32 %i.lz, -3
  br i1 %i.ma, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit.thread.i, label %bb.dc

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit.thread.i: ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false)
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBM_4TypeNtBK_15VariableSegmentENtBK_16ResizeTupleErrorE9unwrap_orBO_.exit

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.u, i64 48, i1 false), !alias.scope !17942, !noalias !17921
  call void @llvm.experimental.noalias.scope.decl(metadata !17943), !noalias !17921
  %i.mb = load i32, ptr %i.s, align 8, !range !51, !alias.scope !17944, !noalias !17921, !noundef !27
  %i.mc = icmp eq i32 %i.mb, -2
  br i1 %i.mc, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %.val1.i.i52 = load i64, ptr %i.ke, align 8, !alias.scope !17944, !noalias !17921, !noundef !27 ; 2 uses
  %i.md = icmp eq i64 %.val1.i.i52, 0
  br i1 %i.md, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBM_4TypeNtBK_15VariableSegmentENtBK_16ResizeTupleErrorE9unwrap_orBO_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i53

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i53: ; preds = %bb.dd
  %.val.i.i54 = load ptr, ptr %i.kf, align 8, !alias.scope !17944, !noalias !17921, !nonnull !27, !noundef !27
  %i.me = shl nuw nsw i64 %.val1.i.i52, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i54, i64 noundef %i.me, i64 noundef 4) #52, !noalias !17945
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBM_4TypeNtBK_15VariableSegmentENtBK_16ResizeTupleErrorE9unwrap_orBO_.exit

bb.de:                                            ; preds = %bb.dc
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ke)
          to label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBM_4TypeNtBK_15VariableSegmentENtBK_16ResizeTupleErrorE9unwrap_orBO_.exit unwind label %.thread113

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBM_4TypeNtBK_15VariableSegmentENtBK_16ResizeTupleErrorE9unwrap_orBO_.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i53, %bb.dd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit.thread.i, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !17919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !17919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.df

bb.df:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBM_4TypeNtBK_15VariableSegmentENtBK_16ResizeTupleErrorE9unwrap_orBO_.exit, %bb.da, %bb.cx, %_RNvXs1Z_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBa_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !17919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !17919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false), !noalias !17919
  invoke void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder6concat(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.q, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, ptr noundef nonnull align 4 %.val26.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
          to label %bb.dg unwind label %bb.dk, !noalias !17921, !inline_history !17816

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !17919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17919
  call void @llvm.experimental.noalias.scope.decl(metadata !17946)
  %i.mf = load i32, ptr %i.x, align 8, !range !51, !alias.scope !17946, !noalias !17921, !noundef !27
  %i.mg = icmp eq i32 %i.mf, -2
  br i1 %i.mg, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %.val1.i47 = load i64, ptr %i.kc, align 8, !alias.scope !17946, !noalias !17921, !noundef !27 ; 2 uses
  %i.mh = icmp eq i64 %.val1.i47, 0
  br i1 %i.mh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit51, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i48

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i48: ; preds = %bb.dh
  %.val.i49 = load ptr, ptr %i.kb, align 8, !alias.scope !17946, !noalias !17921, !nonnull !27, !noundef !27
  %i.mi = shl nuw nsw i64 %.val1.i47, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i49, i64 noundef %i.mi, i64 noundef 4) #52, !noalias !17947
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit51

bb.di:                                            ; preds = %bb.dg
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit51 unwind label %.thread113

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit51: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i48, %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !17919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !17919
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit51
  %.not = icmp eq ptr %i.kg, %i.jy
  br i1 %.not, label %._crit_edge, label %bb.cj

bb.dk:                                            ; preds = %bb.df, %._crit_edge141.a
  %.sroa.012.3.i.ph = phi i1 [ true, %._crit_edge141.a ], [ false, %bb.df ]
  %lpad.thr_comm106 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_(ptr noalias noundef align 8 dereferenceable(48) %i.x) #54
          to label %bb.cm unwind label %bb.dl, !noalias !17921, !inline_history !17816

bb.dl:                                            ; preds = %.thread93, %.body.thread, %bb.dp, %bb.dk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1s_.exit65
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !noalias !17921, !inline_history !17816
  unreachable

bb.dm:                                            ; preds = %bb.cl
  invoke void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder4push(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.z, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.p)
          to label %bb.dn unwind label %.thread113, !noalias !17921, !inline_history !17816

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17919
  br label %bb.dj

bb.do:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17919
  %i.mk = invoke { i32, i32 } @_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType3new(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1, ptr noundef nonnull align 4 %.val26.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
          to label %bb.dq unwind label %bb.dp, !noalias !17921, !inline_history !17816 ; 2 uses

bb.dp:                                            ; preds = %bb.do
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_(ptr noalias noundef align 8 dereferenceable(48) %i.o) #54
          to label %.thread93 unwind label %bb.dl, !noalias !17921, !inline_history !17816

bb.dq:                                            ; preds = %bb.do
  %i.mm = extractvalue { i32, i32 } %i.mk, 0      ; 2 uses
  %.not.i42 = icmp eq i32 %i.mm, 0
  br i1 %.not.i42, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mn = extractvalue { i32, i32 } %i.mk, 1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 6, ptr %i.mo, align 4
  %.sroa.45.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.mm, ptr %.sroa.45.0..sroa_idx.i43, align 4
  %.sroa.56.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 %i.mn, ptr %.sroa.56.0..sroa_idx.i44, align 4
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %storemerge.i45 = phi i32 [ 18, %bb.dr ], [ 6, %bb.dq ]
  store i32 %storemerge.i45, ptr %i.bw, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !17948)
  %i.mp = load i32, ptr %i.o, align 8, !range !51, !alias.scope !17948, !noalias !17921, !noundef !27
  %i.mq = icmp eq i32 %i.mp, -2
  %i.mr = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.mq, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %.val1.i40 = load i64, ptr %i.mr, align 8, !alias.scope !17948, !noalias !17921, !noundef !27 ; 2 uses
  %i.ms = icmp eq i64 %.val1.i40, 0
  br i1 %i.ms, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.dt
  %i.mt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val.i41 = load ptr, ptr %i.mt, align 8, !alias.scope !17948, !noalias !17921, !nonnull !27, !noundef !27
  %i.mu = shl nuw nsw i64 %.val1.i40, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i41, i64 noundef %i.mu, i64 noundef 4) #52, !noalias !17949
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

bb.du:                                            ; preds = %bb.ds
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit unwind label %.body.thread104

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !17919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !17919
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_tuple_expression.exit unwind label %bb.ce

.body.thread:                                     ; preds = %.thread113, %bb.cs, %bb.cm
  %.pn.i96 = phi { ptr, i32 } [ %i.kt, %bb.cs ], [ %lpad.thr_comm106, %bb.cm ], [ %lpad.thr_comm.split-lp, %.thread113 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple16TupleSpecBuilderEBH_(ptr noalias noundef align 8 dereferenceable(64) %i.z) #54
          to label %.thread93 unwind label %bb.dl, !noalias !17921, !inline_history !17816

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_tuple_expression.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !17919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !17919
  call void @llvm.experimental.noalias.scope.decl(metadata !17950)
  %i.mv = load i32, ptr %i.ae, align 8, !range !34, !alias.scope !17950, !noalias !17921, !noundef !27 ; 2 uses
  %i.mw = icmp eq i32 %i.mv, -3
  br i1 %i.mw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB12_4TypeNtB10_15VariableSegmentEEEB14_.exit, label %bb.dv

bb.dv:                                            ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_tuple_expression.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17951), !noalias !17921
  %i.mx = icmp eq i32 %i.mv, -2
  %i.my = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.mx, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %.val1.i.i38 = load i64, ptr %i.my, align 8, !alias.scope !17952, !noalias !17921, !noundef !27 ; 2 uses
  %i.mz = icmp eq i64 %.val1.i.i38, 0
  br i1 %i.mz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB12_4TypeNtB10_15VariableSegmentEEEB14_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.dw
  %i.na = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val.i.i39 = load ptr, ptr %i.na, align 8, !alias.scope !17952, !noalias !17921, !nonnull !27, !noundef !27
  %i.nb = shl nuw nsw i64 %.val1.i.i38, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i39, i64 noundef %i.nb, i64 noundef 4) #52, !noalias !17953
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB12_4TypeNtB10_15VariableSegmentEEEB14_.exit

bb.dx:                                            ; preds = %bb.dv
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.my), !noalias !17921
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB12_4TypeNtB10_15VariableSegmentEEEB14_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB12_4TypeNtB10_15VariableSegmentEEEB14_.exit: ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_tuple_expression.exit, %bb.dw, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17919
end_hunk_0
