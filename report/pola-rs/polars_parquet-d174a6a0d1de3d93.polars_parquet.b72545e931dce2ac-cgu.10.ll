Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a

bb.acd:                                           ; preds = %_RNvMsb_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17set_from_commandsCsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.abs
  store i64 %i.ear, ptr %13, align 8, !dbg !25498, !alias.scope !22453, !noalias !22464
  store i64 %i.dzg, ptr %14, align 8, !dbg !25499, !alias.scope !22454, !noalias !22458
  store i64 %i.dzh, ptr %10, align 8, !dbg !25500, !alias.scope !22451, !noalias !22459
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutlEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull align 4 %9, ptr noundef nonnull %i.dzj, ptr noundef nonnull readonly align 4 %i.n, ptr noundef nonnull readonly %i.dzi)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutlENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSlECsfISxE4fmY1Y_14polars_parquet.exit158.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !25501, !noalias !22453

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutlENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSlECsfISxE4fmY1Y_14polars_parquet.exit158.i: ; preds = %bb.acd
  %.sroa.0282.0.copyload.i = load ptr, ptr %i.j, align 8, !dbg !25502, !noalias !22457 ; 8 uses
  %.sroa.4284.0.copyload.i = load ptr, ptr %.sroa.4284.0..sroa_idx.i, align 8, !dbg !25502, !noalias !22457 ; 8 uses
  %.sroa.5286.0.copyload.i = load i64, ptr %.sroa.5286.0..sroa_idx.i, align 8, !dbg !25502, !noalias !22457 ; 5 uses
  %.sroa.7287.0.copyload.i = load i64, ptr %.sroa.7287.0..sroa_idx.i, align 8, !dbg !25502, !noalias !22457 ; 5 uses
  %i.efm = icmp ult i64 %.sroa.5286.0.copyload.i, %.sroa.7287.0.copyload.i, !dbg !25503
  br i1 %i.efm, label %.lr.ph495.i, label %.thread303.i, !dbg !25503

.lr.ph495.i:                                      ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutlENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSlECsfISxE4fmY1Y_14polars_parquet.exit158.i
  %.sroa.4284.0.copyload.i2283 = ptrtoaddr ptr %.sroa.4284.0.copyload.i to i64, !dbg !25502
  %.sroa.0282.0.copyload.i2282 = ptrtoaddr ptr %.sroa.0282.0.copyload.i to i64, !dbg !25502
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0282.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4284.0.copyload.i) ]
  %i.efn = sub nuw i64 %.sroa.7287.0.copyload.i, %.sroa.5286.0.copyload.i, !dbg !25503 ; 3 uses
  %min.iters.check2286 = icmp ult i64 %i.efn, 8, !dbg !25503
  %i.efo = sub i64 %.sroa.4284.0.copyload.i2283, %.sroa.0282.0.copyload.i2282, !dbg !25503
  %diff.check2284 = icmp ugt i64 %i.efo, -32, !dbg !25503
  %or.cond2306 = select i1 %min.iters.check2286, i1 true, i1 %diff.check2284, !dbg !25503
  br i1 %or.cond2306, label %scalar.ph2285.preheader, label %vector.ph2287, !dbg !25503

vector.ph2287:                                    ; preds = %.lr.ph495.i
  %n.vec2288 = and i64 %i.efn, -8                 ; 3 uses
  %i.efp = add i64 %.sroa.5286.0.copyload.i, %n.vec2288
  br label %vector.body2289

vector.body2289:                                  ; preds = %vector.body2289, %vector.ph2287
  %index2290 = phi i64 [ 0, %vector.ph2287 ], [ %index.next2293, %vector.body2289 ] ; 2 uses
  %i.efq = add nuw i64 %.sroa.5286.0.copyload.i, %index2290 ; 2 uses
  %i.efr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.i, i64 %i.efq, !dbg !25504 ; 2 uses
  %i.efs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4284.0.copyload.i, i64 %i.efq, !dbg !25505 ; 2 uses
  %i.eft = getelementptr inbounds nuw i8, ptr %i.efs, i64 16, !dbg !25506
  %wide.load2291 = load <4 x i32>, ptr %i.efs, align 4, !dbg !25506, !noalias !22453
  %wide.load2292 = load <4 x i32>, ptr %i.eft, align 4, !dbg !25506, !noalias !22453
  %i.efu = getelementptr inbounds nuw i8, ptr %i.efr, i64 16, !dbg !25507
  store <4 x i32> %wide.load2291, ptr %i.efr, align 4, !dbg !25507, !noalias !22453
  store <4 x i32> %wide.load2292, ptr %i.efu, align 4, !dbg !25507, !noalias !22453
  %index.next2293 = add nuw i64 %index2290, 8     ; 2 uses
  %i.efv = icmp eq i64 %index.next2293, %n.vec2288, !dbg !25503
  br i1 %i.efv, label %middle.block2294, label %vector.body2289, !dbg !25503, !llvm.loop !21825

middle.block2294:                                 ; preds = %vector.body2289
  %cmp.n2295 = icmp eq i64 %i.efn, %n.vec2288, !dbg !25503
  br i1 %cmp.n2295, label %.thread303.i, label %scalar.ph2285.preheader, !dbg !25503

scalar.ph2285.preheader:                          ; preds = %.lr.ph495.i, %middle.block2294
  %.sroa.5286.0494.i.ph = phi i64 [ %.sroa.5286.0.copyload.i, %.lr.ph495.i ], [ %i.efp, %middle.block2294 ] ; 4 uses
  %i.efw = sub i64 %.sroa.7287.0.copyload.i, %.sroa.5286.0494.i.ph, !dbg !25503
  %xtraiter4549 = and i64 %i.efw, 3, !dbg !25503  ; 2 uses
  %lcmp.mod4550.not = icmp eq i64 %xtraiter4549, 0, !dbg !25503
  br i1 %lcmp.mod4550.not, label %scalar.ph2285.prol.loopexit, label %scalar.ph2285.prol, !dbg !25503

scalar.ph2285.prol:                               ; preds = %scalar.ph2285.preheader, %scalar.ph2285.prol
  %.sroa.5286.0494.i.prol = phi i64 [ %i.efz, %scalar.ph2285.prol ], [ %.sroa.5286.0494.i.ph, %scalar.ph2285.preheader ] ; 3 uses
  %prol.iter4551 = phi i64 [ %prol.iter4551.next, %scalar.ph2285.prol ], [ 0, %scalar.ph2285.preheader ]
  %i.efx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.i, i64 %.sroa.5286.0494.i.prol, !dbg !25504
  %i.efy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4284.0.copyload.i, i64 %.sroa.5286.0494.i.prol, !dbg !25505
  %i.efz = add nuw i64 %.sroa.5286.0494.i.prol, 1, !dbg !25508 ; 2 uses
  %i.ega = load i32, ptr %i.efy, align 4, !dbg !25506, !noalias !22453, !noundef !664
  store i32 %i.ega, ptr %i.efx, align 4, !dbg !25507, !noalias !22453
  %prol.iter4551.next = add i64 %prol.iter4551, 1, !dbg !25503 ; 2 uses
  %prol.iter4551.cmp.not = icmp eq i64 %prol.iter4551.next, %xtraiter4549, !dbg !25503
  br i1 %prol.iter4551.cmp.not, label %scalar.ph2285.prol.loopexit, label %scalar.ph2285.prol, !dbg !25503, !llvm.loop !21826

scalar.ph2285.prol.loopexit:                      ; preds = %scalar.ph2285.prol, %scalar.ph2285.preheader
  %.sroa.5286.0494.i.unr = phi i64 [ %.sroa.5286.0494.i.ph, %scalar.ph2285.preheader ], [ %i.efz, %scalar.ph2285.prol ]
  %i.egb = sub i64 %.sroa.5286.0494.i.ph, %.sroa.7287.0.copyload.i, !dbg !25503
  %i.egc = icmp ugt i64 %i.egb, -4, !dbg !25503
  br i1 %i.egc, label %.thread303.i, label %scalar.ph2285, !dbg !25503

scalar.ph2285:                                    ; preds = %scalar.ph2285.prol.loopexit, %scalar.ph2285
  %.sroa.5286.0494.i = phi i64 [ %i.egr, %scalar.ph2285 ], [ %.sroa.5286.0494.i.unr, %scalar.ph2285.prol.loopexit ] ; 6 uses
  %i.egd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.i, i64 %.sroa.5286.0494.i, !dbg !25504
  %i.ege = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4284.0.copyload.i, i64 %.sroa.5286.0494.i, !dbg !25505
  %i.egf = add nuw i64 %.sroa.5286.0494.i, 1, !dbg !25508 ; 2 uses
  %i.egg = load i32, ptr %i.ege, align 4, !dbg !25506, !noalias !22453, !noundef !664
  store i32 %i.egg, ptr %i.egd, align 4, !dbg !25507, !noalias !22453
  %i.egh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.i, i64 %i.egf, !dbg !25504
  %i.egi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4284.0.copyload.i, i64 %i.egf, !dbg !25505
  %i.egj = add nuw i64 %.sroa.5286.0494.i, 2, !dbg !25508 ; 2 uses
  %i.egk = load i32, ptr %i.egi, align 4, !dbg !25506, !noalias !22453, !noundef !664
  store i32 %i.egk, ptr %i.egh, align 4, !dbg !25507, !noalias !22453
  %i.egl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.i, i64 %i.egj, !dbg !25504
  %i.egm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4284.0.copyload.i, i64 %i.egj, !dbg !25505
  %i.egn = add nuw i64 %.sroa.5286.0494.i, 3, !dbg !25508 ; 2 uses
  %i.ego = load i32, ptr %i.egm, align 4, !dbg !25506, !noalias !22453, !noundef !664
  store i32 %i.ego, ptr %i.egl, align 4, !dbg !25507, !noalias !22453
  %i.egp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.i, i64 %i.egn, !dbg !25504
  %i.egq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4284.0.copyload.i, i64 %i.egn, !dbg !25505
  %i.egr = add nuw i64 %.sroa.5286.0494.i, 4, !dbg !25508 ; 2 uses
  %i.egs = load i32, ptr %i.egq, align 4, !dbg !25506, !noalias !22453, !noundef !664
  store i32 %i.egs, ptr %i.egp, align 4, !dbg !25507, !noalias !22453
  %exitcond627.not.i.3 = icmp eq i64 %i.egr, %.sroa.7287.0.copyload.i, !dbg !25503
  br i1 %exitcond627.not.i.3, label %.thread303.i, label %scalar.ph2285, !dbg !25503, !llvm.loop !21827

.thread303.i:                                     ; preds = %scalar.ph2285.prol.loopexit, %scalar.ph2285, %middle.block2294, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutlENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSlECsfISxE4fmY1Y_14polars_parquet.exit158.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dyv) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0215.0.lcssa.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !22492), !dbg !25509
  call void @llvm.experimental.noalias.scope.decl(metadata !22493), !dbg !25509
  call void @llvm.experimental.noalias.scope.decl(metadata !22494), !dbg !25509
  call void @llvm.experimental.noalias.scope.decl(metadata !22495), !dbg !25509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25510, !noalias !22496
  store i32 0, ptr %i.ebl, align 4, !dbg !25511, !alias.scope !22495, !noalias !22497
  store i32 0, ptr %i.eau, align 4, !dbg !25512, !alias.scope !22495, !noalias !22497
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i.i585, align 4, !dbg !25512, !alias.scope !22495, !noalias !22497
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.c, i8 0, i64 264, i1 false), !noalias !22457
  br i1 %i.dzd, label %.lr.ph86.i.i, label %.lr.ph89.i.i.preheader, !dbg !25513

.lr.ph89.i.i.preheader:                           ; preds = %.loopexit.i.i596, %.thread303.i
  br label %.lr.ph89.i.i.a, !dbg !25514

.lr.ph86.i.i:                                     ; preds = %.thread303.i
  %.val.i166.i = load ptr, ptr %.sroa.5269.0..sroa_idx.i, align 8, !alias.scope !22492, !noalias !22498 ; 3 uses
  %.val39.i.i = load i64, ptr %.sroa.6270.0..sroa_idx.i, align 8, !alias.scope !22492, !noalias !22498 ; 2 uses
  br label %bb.acj, !dbg !25513

.lr.ph89.i.i.a:                                   ; preds = %.lr.ph89.i.i.preheader, %bb.acf
  %.sroa.0.0.i87.i.i = phi i64 [ %i.ehb, %bb.acf ], [ %1, %.lr.ph89.i.i.preheader ] ; 4 uses
  %i.egt = getelementptr inbounds nuw [20 x i8], ptr %i.eau, i64 %.sroa.0.0.i87.i.i, !dbg !25515 ; 4 uses
  %i.egu = getelementptr inbounds nuw i8, ptr %i.egt, i64 16, !dbg !25515
  %i.egv = load i32, ptr %i.egu, align 4, !dbg !25515, !alias.scope !22499, !noalias !22497, !noundef !664
  %i.egw = and i32 %i.egv, 134217727, !dbg !25514
  %i.egx = icmp eq i32 %i.egw, 0, !dbg !25514
  br i1 %i.egx, label %bb.ace, label %bb.acg, !dbg !25514

bb.ace:                                           ; preds = %.lr.ph89.i.i.a
  %i.egy = getelementptr inbounds nuw i8, ptr %i.egt, i64 8, !dbg !25516
  %i.egz = load i32, ptr %i.egy, align 4, !dbg !25516, !alias.scope !22499, !noalias !22497, !noundef !664
  %i.eha = icmp eq i32 %i.egz, 1, !dbg !25516
  br i1 %i.eha, label %bb.acf, label %bb.acg, !dbg !25516

bb.acf:                                           ; preds = %bb.ace
  %i.ehb = add nsw i64 %.sroa.0.0.i87.i.i, -1, !dbg !25517 ; 3 uses
  %i.ehc = icmp ult i64 %i.ehb, %i.eav, !dbg !25515
  br i1 %i.ehc, label %.lr.ph89.i.i.a, label %.invoke.i, !dbg !25515

bb.acg:                                           ; preds = %bb.ace, %.lr.ph89.i.i.a
  store i32 1, ptr %i.egt, align 4, !dbg !25518, !alias.scope !22499, !noalias !22497
  %.sroa.4.0..sroa_idx.i.i.i591 = getelementptr inbounds nuw i8, ptr %i.egt, i64 4, !dbg !25518
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.i591, align 4, !dbg !25518, !alias.scope !22499, !noalias !22497
  %i.ehd = icmp eq i64 %.sroa.0.0.i87.i.i, 0, !dbg !25519
  br i1 %i.ehd, label %.loopexit322.i, label %.lr.ph95.i.i, !dbg !25519

.lr.ph95.i.i:                                     ; preds = %bb.acg, %bb.aci
  %.sroa.0.1.i93.i.i = phi i64 [ %i.eho, %bb.aci ], [ %.sroa.0.0.i87.i.i, %bb.acg ] ; 4 uses
  %.sroa.08.0.i92.i.i = phi i64 [ %i.ehr, %bb.aci ], [ 0, %bb.acg ]
  %i.ehe = icmp ult i64 %.sroa.0.1.i93.i.i, %i.eav, !dbg !25520
  br i1 %i.ehe, label %bb.ach, label %.invoke.i, !dbg !25520

bb.ach:                                           ; preds = %.lr.ph95.i.i
  %i.ehf = getelementptr inbounds nuw [20 x i8], ptr %i.eau, i64 %.sroa.0.1.i93.i.i, !dbg !25520 ; 2 uses
  %i.ehg = getelementptr inbounds nuw i8, ptr %i.ehf, i64 8, !dbg !25521
  %i.ehh = load i32, ptr %i.ehg, align 4, !dbg !25521, !alias.scope !22499, !noalias !22497, !noundef !664
  %i.ehi = and i32 %i.ehh, 33554431, !dbg !25521
  %i.ehj = getelementptr inbounds nuw i8, ptr %i.ehf, i64 16, !dbg !25522
  %i.ehk = load i32, ptr %i.ehj, align 4, !dbg !25522, !alias.scope !22499, !noalias !22497, !noundef !664
  %i.ehl = and i32 %i.ehk, 134217727, !dbg !25522
  %i.ehm = add nuw nsw i32 %i.ehl, %i.ehi, !dbg !25523 ; 2 uses
  %i.ehn = zext nneg i32 %i.ehm to i64, !dbg !25520
  %i.eho = sub nsw i64 %.sroa.0.1.i93.i.i, %i.ehn, !dbg !25524 ; 5 uses
  %i.ehp = icmp ult i64 %i.eho, %i.eav, !dbg !25525
  br i1 %i.ehp, label %bb.aci, label %.invoke.i, !dbg !25525

bb.aci:                                           ; preds = %bb.ach
  %i.ehq = getelementptr inbounds nuw [20 x i8], ptr %i.eau, i64 %i.eho, !dbg !25525 ; 2 uses
  store i32 1, ptr %i.ehq, align 4, !dbg !25525, !alias.scope !22499, !noalias !22497
  %.sroa.412.0..sroa_idx.i.i.i592 = getelementptr inbounds nuw i8, ptr %i.ehq, i64 4, !dbg !25525
  store i32 %i.ehm, ptr %.sroa.412.0..sroa_idx.i.i.i592, align 4, !dbg !25525, !alias.scope !22499, !noalias !22497
  %i.ehr = add i64 %.sroa.08.0.i92.i.i, 1, !dbg !25526 ; 2 uses
  %i.ehs = icmp eq i64 %i.eho, 0, !dbg !25519
  br i1 %i.ehs, label %.loopexit322.i, label %.lr.ph95.i.i, !dbg !25519

bb.acj:                                           ; preds = %.loopexit.i.i596, %.lr.ph86.i.i
  %.sroa.0.085.i.i = phi i64 [ 0, %.lr.ph86.i.i ], [ %.sroa.0.1.i.i, %.loopexit.i.i596 ] ; 5 uses
  %.sroa.05.084.i.i = phi i64 [ 0, %.lr.ph86.i.i ], [ %i.eii, %.loopexit.i.i596 ] ; 6 uses
  %i.eht = icmp ult i64 %.sroa.05.084.i.i, %i.dyw, !dbg !25527
  br i1 %i.eht, label %bb.ack, label %.invoke.i, !dbg !25527

bb.ack:                                           ; preds = %bb.acj
  %i.ehu = icmp ugt i64 %.sroa.0.085.i.i, %.sroa.16.0.lcssa.i, !dbg !25528
  br i1 %i.ehu, label %bb.acm, label %bb.acl, !dbg !25528, !prof !712

bb.acl:                                           ; preds = %bb.ack
  %i.ehv = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %.sroa.05.084.i.i, !dbg !25527
  %i.ehw = load i32, ptr %i.ehv, align 4, !dbg !25527, !alias.scope !22493, !noalias !22500, !noundef !664 ; 2 uses
  %i.ehx = zext i32 %i.ehw to i64, !dbg !25527    ; 2 uses
  %i.ehy = sub nuw nsw i64 %.sroa.16.0.lcssa.i, %.sroa.0.085.i.i, !dbg !25529
  %i.ehz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0.lcssa.i, i64 %.sroa.0.085.i.i, !dbg !25530
  %i.eia = invoke fastcc noundef i64 @_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq11UpdateNodesNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i64 noundef range(i64 0, 4294967296) %1, i64 noundef range(i64 0, 4294967296) %2, i64 noundef %.sroa.05.084.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, i64 noundef range(i64 -15, 9223372036854775793) %i.dys, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef %i.ehx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ehz, i64 noundef %i.ehy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2864) %i.m, ptr noalias noundef align 8 dereferenceable(264) %i.c, ptr noalias noundef nonnull align 4 %i.eau, i64 noundef range(i64 0, 461168601842738791) %i.eav)
          to label %.noexc173.i unwind label %.loopexit.split-lp.loopexit.i, !dbg !25531 ; 2 uses

.noexc173.i:                                      ; preds = %bb.acl
  %15 = icmp ult i64 %i.eia, 16384, !dbg !25532   ; 2 uses
  %spec.store.select.i.i594 = select i1 %15, i64 0, i64 %i.eia, !dbg !25532 ; 2 uses
  %i.eib = add nuw nsw i64 %.sroa.0.085.i.i, %i.ehx, !dbg !25533 ; 3 uses
  %i.eic = icmp eq i32 %i.ehw, 1, !dbg !25534
  br i1 %i.eic, label %bb.acn, label %bb.acp, !dbg !25534

bb.acm:                                           ; preds = %bb.ack
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.085.i.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.16.0.lcssa.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.16.0.lcssa.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @389) #18
          to label %.noexc174.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !dbg !25535, !noalias !22453

.noexc174.i:                                      ; preds = %bb.acm
  unreachable, !dbg !25535

bb.acn:                                           ; preds = %.noexc173.i
  %i.eid = add nsw i64 %i.eib, -1, !dbg !25536    ; 3 uses
  %i.eie = icmp ult i64 %i.eid, %.sroa.16.0.lcssa.i, !dbg !25537
  br i1 %i.eie, label %bb.aco, label %.invoke.i, !dbg !25537

bb.aco:                                           ; preds = %bb.acn
  %i.eif = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0.lcssa.i, i64 %i.eid, !dbg !25537
  %i.eig = load i64, ptr %i.eif, align 8, !dbg !25537, !alias.scope !22494, !noalias !22501, !noundef !664 ; 2 uses
  %i.eih = icmp ugt i64 %i.eig, 44805098831871, !dbg !25538
  br i1 %i.eih, label %.thread5158, label %bb.acp, !dbg !25538

bb.acp:                                           ; preds = %bb.aco, %.noexc173.i
  br i1 %15, label %.loopexit.i.i596, label %.lr.ph.preheader.i.i595, !dbg !25539

.lr.ph.preheader.i.i595:                          ; preds = %.thread5158, %bb.acp
  %.sroa.018.0.i.i5161 = phi i64 [ %.sroa.0.0.i40.i.i, %.thread5158 ], [ %spec.store.select.i.i594, %bb.acp ]
  %.sroa.018.176.i.i = add i64 %.sroa.018.0.i.i5161, -1
  br label %.lr.ph.i167.i, !dbg !25540

.thread5158:                                      ; preds = %bb.aco
  %sum.shift.i.i607 = lshr i64 %i.eig, 37, !dbg !25541
  %.sroa.0.0.i40.i.i = call noundef i64 @llvm.umax.i64(i64 %spec.store.select.i.i594, i64 %sum.shift.i.i607), !dbg !25542
  br label %.lr.ph.preheader.i.i595, !dbg !25539

.loopexit.i.i596:                                 ; preds = %bb.acy, %.lr.ph.i167.i, %bb.acp
  %.sroa.05.1.i.i = phi i64 [ %.sroa.05.084.i.i, %bb.acp ], [ %i.eil, %.lr.ph.i167.i ], [ %i.eil, %bb.acy ], !dbg !25543 ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.eib, %bb.acp ], [ %i.eke, %bb.acy ], [ %.sroa.0.278.i.i, %.lr.ph.i167.i ], !dbg !25544
  %i.eii = add i64 %.sroa.05.1.i.i, 1, !dbg !25545
  %i.eij = add i64 %.sroa.05.1.i.i, 4, !dbg !25546
  %i.eik = icmp ult i64 %i.eij, %1, !dbg !25513
  br i1 %i.eik, label %bb.acj, label %.lr.ph89.i.i.preheader, !dbg !25513

.lr.ph.i167.i:                                    ; preds = %bb.acy, %.lr.ph.preheader.i.i595
  %.sroa.018.179.i.i = phi i64 [ %.sroa.018.1.i.i, %bb.acy ], [ %.sroa.018.176.i.i, %.lr.ph.preheader.i.i595 ]
  %.sroa.0.278.i.i = phi i64 [ %i.eke, %bb.acy ], [ %i.eib, %.lr.ph.preheader.i.i595 ] ; 2 uses
  %.sroa.05.277.i.i = phi i64 [ %i.eil, %bb.acy ], [ %.sroa.05.084.i.i, %.lr.ph.preheader.i.i595 ] ; 2 uses
  %i.eil = add nuw nsw i64 %.sroa.05.277.i.i, 1, !dbg !25547 ; 15 uses
  %i.eim = add nuw nsw i64 %.sroa.05.277.i.i, 4, !dbg !25548
  %.not38.i.i = icmp ult i64 %i.eim, %1, !dbg !25540
  br i1 %.not38.i.i, label %bb.acq, label %.loopexit.i.i596, !dbg !25540

bb.acq:                                           ; preds = %.lr.ph.i167.i
  call void @llvm.experimental.noalias.scope.decl(metadata !22502), !dbg !25549
  %i.ein = getelementptr inbounds nuw [20 x i8], ptr %i.eau, i64 %i.eil, !dbg !25550 ; 7 uses
  %i.eio = load i32, ptr %i.ein, align 4, !dbg !25550, !range !897, !alias.scope !22503, !noalias !22504, !noundef !664
  %i.eip = icmp eq i32 %i.eio, 0, !dbg !25551
  br i1 %i.eip, label %bb.acr, label %bb.acs, !dbg !25551

bb.acr:                                           ; preds = %bb.acq
  %i.eiq = getelementptr inbounds nuw i8, ptr %i.ein, i64 4, !dbg !25552
  %i.eir = load float, ptr %i.eiq, align 4, !dbg !25552, !alias.scope !22503, !noalias !22504, !noundef !664
  br label %bb.acs, !dbg !25553

bb.acs:                                           ; preds = %bb.acr, %bb.acq
  %.sroa.0.0.i41.i.i = phi float [ %i.eir, %bb.acr ], [ 0.000000e+00, %bb.acq ], !dbg !25554 ; 3 uses
  %i.eis = getelementptr inbounds nuw i8, ptr %i.ein, i64 8, !dbg !25555
  %i.eit = load i32, ptr %i.eis, align 4, !dbg !25555, !alias.scope !22505, !noalias !22504, !noundef !664
  %i.eiu = and i32 %i.eit, 33554431, !dbg !25555  ; 2 uses
  %i.eiv = getelementptr inbounds nuw i8, ptr %i.ein, i64 16, !dbg !25556
  %i.eiw = load i32, ptr %i.eiv, align 4, !dbg !25556, !alias.scope !22505, !noalias !22504, !noundef !664 ; 2 uses
  %i.eix = and i32 %i.eiw, 134217727, !dbg !25556
  %i.eiy = getelementptr inbounds nuw i8, ptr %i.ein, i64 12, !dbg !25557
  %i.eiz = load i32, ptr %i.eiy, align 4, !dbg !25557, !alias.scope !22505, !noalias !22504, !noundef !664 ; 2 uses
  %i.eja = zext nneg i32 %i.eiu to i64, !dbg !25558
  %i.ejb = zext i32 %i.eiz to i64, !dbg !25559    ; 2 uses
  %i.ejc = add nuw nsw i64 %i.ejb, %i.eja, !dbg !25560
  %i.ejd = add nuw nsw i64 %i.eil, %2, !dbg !25561
  %i.eje = icmp samesign ule i64 %i.ejc, %i.ejd, !dbg !25562
  %i.ejf = icmp uge i64 %i.dys, %i.ejb
  %or.cond.i.i.i.i597 = and i1 %i.ejf, %i.eje, !dbg !25562
  br i1 %or.cond.i.i.i.i597, label %bb.acu, label %bb.act, !dbg !25562

bb.act:                                           ; preds = %bb.acu, %bb.acs
  %narrow.i.i.i.i598 = add nuw nsw i32 %i.eix, %i.eiu, !dbg !25563
  %i.ejg = zext nneg i32 %narrow.i.i.i.i598 to i64, !dbg !25563
  %i.ejh = sub nsw i64 %i.eil, %i.ejg, !dbg !25563 ; 3 uses
  %i.eji = icmp ult i64 %i.ejh, %i.eav, !dbg !25564
  br i1 %i.eji, label %bb.acw, label %.invoke.i, !dbg !25564

bb.acu:                                           ; preds = %bb.acs
  %i.ejj = lshr i32 %i.eiw, 27, !dbg !25565       ; 2 uses
  %i.ejk = icmp eq i32 %i.ejj, 0, !dbg !25566
  %i.ejl = add i32 %i.eiz, 15, !dbg !25566
  %i.ejm = add nsw i32 %i.ejj, -1, !dbg !25566
  %.sroa.02.0.i.i.i.i605 = select i1 %i.ejk, i32 %i.ejl, i32 %i.ejm, !dbg !25566
  %.not.i.i.i.i606 = icmp eq i32 %.sroa.02.0.i.i.i.i605, 0, !dbg !25567
  br i1 %.not.i.i.i.i606, label %bb.act, label %bb.acv, !dbg !25567

bb.acv:                                           ; preds = %bb.acu
  %i.ejn = trunc i64 %i.eil to i32, !dbg !25568
  br label %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i599, !dbg !25569

bb.acw:                                           ; preds = %bb.act
  %i.ejo = getelementptr inbounds nuw [20 x i8], ptr %i.eau, i64 %i.ejh, !dbg !25564 ; 2 uses
  %i.ejp = load i32, ptr %i.ejo, align 4, !dbg !25564, !range !897, !alias.scope !22505, !noalias !22504, !noundef !664
  %i.ejq = icmp eq i32 %i.ejp, 2, !dbg !25570
  br i1 %i.ejq, label %bb.acx, label %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i599, !dbg !25570

bb.acx:                                           ; preds = %bb.acw
  %i.ejr = getelementptr inbounds nuw i8, ptr %i.ejo, i64 4, !dbg !25571
  %i.ejs = load i32, ptr %i.ejr, align 4, !dbg !25571, !alias.scope !22505, !noalias !22504, !noundef !664
  br label %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i599, !dbg !25572

_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i599: ; preds = %bb.acx, %bb.acw, %bb.acv
  %.sroa.0.0.i.i.i.i600 = phi i32 [ 0, %bb.acw ], [ %i.ejn, %bb.acv ], [ %i.ejs, %bb.acx ], !dbg !25573
  store i32 2, ptr %i.ein, align 4, !dbg !25574, !alias.scope !22503, !noalias !22504
  %.sroa.4.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %i.ein, i64 4, !dbg !25574
  store i32 %.sroa.0.0.i.i.i.i600, ptr %.sroa.4.0..sroa_idx.i42.i.i, align 4, !dbg !25574, !alias.scope !22503, !noalias !22504
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i166.i) ]
  %i.ejt = icmp ult i64 %i.eil, %.val39.i.i, !dbg !25575
  br i1 %i.ejt, label %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i601, label %.invoke.i, !dbg !25575

_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i601: ; preds = %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i599
  %i.eju = getelementptr inbounds nuw [4 x i8], ptr %.val.i166.i, i64 %i.eil, !dbg !25575
  %i.ejv = load float, ptr %i.eju, align 4, !dbg !25575, !noalias !22506, !noundef !664
  %i.ejw = load float, ptr %.val.i166.i, align 4, !dbg !25576, !noalias !22506, !noundef !664
  %i.ejx = fsub float %i.ejv, %i.ejw, !dbg !25575 ; 2 uses
  %i.ejy = fcmp ugt float %.sroa.0.0.i41.i.i, %i.ejx, !dbg !25577
  br i1 %i.ejy, label %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i604, label %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i602, !dbg !25577

_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i602: ; preds = %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25578, !noalias !22507
  %i.ejz = fsub float %.sroa.0.0.i41.i.i, %i.ejx, !dbg !25579
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !dbg !25580, !noalias !22507
  store i64 %i.eil, ptr %i.ebm, align 8, !dbg !25581, !noalias !22507
  store float %i.ejz, ptr %i.ebn, align 8, !dbg !25581, !noalias !22507
  store float %.sroa.0.0.i41.i.i, ptr %i.ebo, align 4, !dbg !25581, !noalias !22507
  invoke void @_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq20ComputeDistanceCache(i64 noundef %i.eil, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef 16, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.eau, i64 noundef range(i64 1, 461168601842738791) %i.eav, ptr noalias noundef nonnull align 4 %i.b, i64 noundef 4)
          to label %.noexc179.i unwind label %.body.thread.i603, !dbg !25582, !noalias !22453

.noexc179.i:                                      ; preds = %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i602
  invoke void @_RNvMs3_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqNtB5_13StartPosQueue4push(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %.noexc180.i unwind label %.body.thread.i603, !dbg !25583, !noalias !22453

.noexc180.i:                                      ; preds = %.noexc179.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25584, !noalias !22507
  br label %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i604, !dbg !25585

_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i604: ; preds = %.noexc180.i, %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i601
  %i.eka = icmp ult i64 %i.eil, %i.dyw, !dbg !25586
  br i1 %i.eka, label %bb.acy, label %.invoke.i, !dbg !25586

bb.acy:                                           ; preds = %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i604
  %i.ekb = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %i.eil, !dbg !25586
  %i.ekc = load i32, ptr %i.ekb, align 4, !dbg !25586, !alias.scope !22493, !noalias !22500, !noundef !664
  %i.ekd = zext i32 %i.ekc to i64, !dbg !25586
  %i.eke = add i64 %.sroa.0.278.i.i, %i.ekd, !dbg !25587 ; 2 uses
  %.sroa.018.1.i.i = add i64 %.sroa.018.179.i.i, -1, !dbg !25588 ; 2 uses
  %i.ekf = icmp eq i64 %.sroa.018.1.i.i, 0, !dbg !25589
  br i1 %i.ekf, label %.loopexit.i.i596, label %.lr.ph.i167.i, !dbg !25589

.loopexit322.i:                                   ; preds = %bb.aci, %bb.acg
  %.sroa.08.0.i.lcssa.i.i593 = phi i64 [ 0, %bb.acg ], [ %i.ehr, %bb.aci ], !dbg !25590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25591, !noalias !22496
  %i.ekg = add i64 %.sroa.08.0.i.lcssa.i.i593, %i.ear, !dbg !25592 ; 2 uses
  store i64 %i.ekg, ptr %13, align 8, !dbg !25593, !alias.scope !22453, !noalias !22464
  invoke void @_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq26BrotliZopfliCreateCommands(i64 noundef range(i64 0, 4294967296) %1, i64 noundef range(i64 0, 4294967296) %2, i64 noundef %i.dys, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.eau, i64 noundef %i.eav, ptr noalias noundef nonnull align 4 %9, i64 noundef 16, ptr noalias noundef nonnull align 8 dereferenceable(8) %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, ptr noalias noundef nonnull align 4 %11, i64 noundef range(i64 0, 576460752303423488) %12, ptr noalias noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.abg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !25594, !noalias !22453

bb.acz:                                           ; preds = %bb.abr
  %i.ekh = getelementptr inbounds nuw [20 x i8], ptr %i.eau, i64 %.sroa.055.0493.i, !dbg !25424 ; 4 uses
  store i64 9151254648282152960, ptr %i.ekh, align 4, !dbg !25424, !noalias !22453
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ekh, i64 8, !dbg !25424
  store i32 1, ptr %.sroa.453.0..sroa_idx.i, align 4, !dbg !25424, !noalias !22453
  %.sroa.5.0..sroa_idx.i586 = getelementptr inbounds nuw i8, ptr %i.ekh, i64 12, !dbg !25424
  store i32 0, ptr %.sroa.5.0..sroa_idx.i586, align 4, !dbg !25424, !noalias !22453
  %.sroa.654.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ekh, i64 16, !dbg !25424
  store i32 0, ptr %.sroa.654.0..sroa_idx.i, align 4, !dbg !25424, !noalias !22453
  %i.eki = add nuw nsw i64 %.sroa.055.0493.i, 1, !dbg !25595
  %exitcond625.not.i = icmp eq i64 %.sroa.055.0493.i, %1, !dbg !25422
  br i1 %exitcond625.not.i, label %bb.abq, label %bb.abr, !dbg !25422

bb.ada:                                           ; preds = %bb.abr
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eav, i64 noundef %i.eav, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #20
          to label %bb.adb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !dbg !25424, !noalias !22453

bb.adb:                                           ; preds = %bb.adr, %bb.ada
  unreachable

.body.i581:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %bb.abe, %bb.abd
  %.sroa.044.2.lpad-body.i = phi i1 [ false, %bb.abd ], [ false, %bb.abe ], [ %.sroa.044.2.ph.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ true, %.loopexit.split-lp.loopexit.i ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ] ; 2 uses
  %eh.lpad-body.i582 = phi { ptr, i32 } [ %i.ebg, %bb.abd ], [ %i.ebg, %bb.abe ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit323.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit326.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ] ; 2 uses
  %i.ekj = icmp eq i64 %i.eav, 0, !dbg !25374
  br i1 %i.ekj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10ZopfliNodeEECsfISxE4fmY1Y_14polars_parquet.exit.i580, label %bb.adc, !dbg !25374

bb.adc:                                           ; preds = %.body.i581, %.body.thread.i603
  %eh.lpad-body669.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.body.thread.i603 ], [ %eh.lpad-body.i582, %.body.i581 ]
  %.sroa.044.2.lpad-body668.i = phi i1 [ true, %.body.thread.i603 ], [ %.sroa.044.2.lpad-body.i, %.body.i581 ]
  %i.ekk = mul nuw nsw i64 %i.eav, 20, !dbg !25596
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eau) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eau, i64 noundef range(i64 1, 0) %i.ekk, i64 noundef 4) #19, !dbg !25597, !noalias !22453
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10ZopfliNodeEECsfISxE4fmY1Y_14polars_parquet.exit.i580, !dbg !25598

bb.add:                                           ; preds = %bb.adu, %.lr.ph488.i
  %.sroa.0.0487.i = phi i64 [ %i.dyx, %.lr.ph488.i ], [ %.sroa.0.1.i611, %bb.adu ] ; 8 uses
  %.sroa.08.0486.i = phi i64 [ 0, %.lr.ph488.i ], [ %.sroa.08.1.i, %bb.adu ] ; 10 uses
  %.sroa.016.0485.i = phi i64 [ 0, %.lr.ph488.i ], [ %i.emt, %bb.adu ] ; 9 uses
  %.sroa.0215.0484.i = phi ptr [ %i.dzb, %.lr.ph488.i ], [ %.sroa.0215.3.i, %bb.adu ] ; 9 uses
  %.sroa.16.0483.i = phi i64 [ %i.dzc, %.lr.ph488.i ], [ %.sroa.16.3.i, %bb.adu ] ; 7 uses
  %i.ekl = add i64 %.sroa.016.0485.i, %2, !dbg !25599 ; 4 uses
  %.sroa.0.0.i.i610 = call noundef i64 @llvm.umin.i64(i64 %i.dys, i64 %i.ekl), !dbg !25600
  %i.ekm = sub i64 %1, %.sroa.016.0485.i, !dbg !25601
  %i.ekn = add i64 %.sroa.08.0486.i, 128, !dbg !25602 ; 3 uses
  %i.eko = icmp ult i64 %.sroa.0.0487.i, %i.ekn, !dbg !25603
  br i1 %i.eko, label %bb.ade, label %bb.adp, !dbg !25603

bb.ade:                                           ; preds = %bb.add
  %i.ekp = icmp eq i64 %.sroa.0.0487.i, 0, !dbg !25604 ; 2 uses
  %..sroa.0.0.i = select i1 %i.ekp, i64 %i.ekn, i64 %.sroa.0.0487.i, !dbg !25605
  br label %bb.adf, !dbg !25606

bb.adf:                                           ; preds = %bb.adf, %bb.ade
  %.sroa.024.1.i = phi i64 [ %..sroa.0.0.i, %bb.ade ], [ %i.ekr, %bb.adf ], !dbg !25607 ; 5 uses
  %i.ekq = icmp ult i64 %.sroa.024.1.i, %i.ekn, !dbg !25608
  %i.ekr = shl i64 %.sroa.024.1.i, 1, !dbg !25609
  br i1 %i.ekq, label %bb.adf, label %bb.adg, !dbg !25608

bb.adg:                                           ; preds = %bb.adf
  %i.eks = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8alloc_ifyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext true, ptr noalias noundef nonnull %0, i64 noundef %.sroa.024.1.i)
          to label %bb.adh unwind label %.loopexit329.i, !dbg !25610, !noalias !22453 ; 2 uses

bb.adh:                                           ; preds = %bb.adg
  %i.ekt = extractvalue { ptr, i64 } %i.eks, 0, !dbg !25610 ; 8 uses
  %i.eku = extractvalue { ptr, i64 } %i.eks, 1, !dbg !25610 ; 5 uses
  br i1 %i.ekp, label %.thread312.i, label %bb.adi, !dbg !25611

.thread312.i:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IteryEECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.adh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25612, !noalias !22457
  store i64 0, ptr %i.a, align 8, !dbg !25612, !noalias !22457
  store ptr inttoptr (i64 8 to ptr), ptr %i.dze, align 8, !dbg !25612, !noalias !22457
  store i64 0, ptr %i.dzf, align 8, !dbg !25612, !noalias !22457
  %i.ekv = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecyE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.adm unwind label %.loopexit339.i, !dbg !25613, !noalias !22453 ; 2 uses

bb.adi:                                           ; preds = %bb.adh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ekt) ]
  %.not.i183.i = icmp ugt i64 %.sroa.0.0487.i, %i.eku, !dbg !25614
  br i1 %.not.i183.i, label %bb.adj, label %bb.adk, !dbg !25614, !prof !712

bb.adj:                                           ; preds = %bb.adi
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #18
          to label %.noexc184.i unwind label %.loopexit.split-lp340.i, !dbg !25615, !noalias !22453

.noexc184.i:                                      ; preds = %bb.adj
  unreachable, !dbg !25615

bb.adk:                                           ; preds = %bb.adi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0215.0484.i) ]
  %.not.i185.i = icmp ugt i64 %.sroa.0.0487.i, %.sroa.16.0483.i, !dbg !25616
  br i1 %.not.i185.i, label %bb.adl, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSy8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !25616, !prof !712

bb.adl:                                           ; preds = %bb.adk
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #18
          to label %.noexc189.i unwind label %.thread318.loopexit.split-lp.i, !dbg !25617, !noalias !22453

.noexc189.i:                                      ; preds = %bb.adl
  unreachable, !dbg !25617

_RNvMNtCscgRAwXFJnXP_4core5sliceSy8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.adk
  %i.ekw = getelementptr inbounds nuw [8 x i8], ptr %i.ekt, i64 %.sroa.0.0487.i, !dbg !25618
  %i.ekx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0484.i, i64 %.sroa.0.0487.i, !dbg !25619
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_4IteryEEINtB5_7ZipImplBW_B1r_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull %i.ekt, ptr noundef nonnull %i.ekw, ptr noundef nonnull %.sroa.0215.0484.i, ptr noundef nonnull %i.ekx)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IteryEECsfISxE4fmY1Y_14polars_parquet.exit.i unwind label %.thread318.loopexit.i, !dbg !25620, !noalias !22453

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IteryEECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSy8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i
  %.sroa.0235.0.copyload.i = load ptr, ptr %i.l, align 8, !dbg !25621, !noalias !22457 ; 8 uses
  %.sroa.4237.0.copyload.i = load ptr, ptr %.sroa.4237.0..sroa_idx.i, align 8, !dbg !25621, !noalias !22457 ; 8 uses
  %.sroa.5239.0.copyload.i = load i64, ptr %.sroa.5239.0..sroa_idx.i, align 8, !dbg !25621, !noalias !22457 ; 5 uses
  %.sroa.7240.0.copyload.i = load i64, ptr %.sroa.7240.0..sroa_idx.i, align 8, !dbg !25621, !noalias !22457 ; 5 uses
  %i.eky = icmp ult i64 %.sroa.5239.0.copyload.i, %.sroa.7240.0.copyload.i, !dbg !25622
  br i1 %i.eky, label %.lr.ph.i612, label %.thread312.i, !dbg !25622

.lr.ph.i612:                                      ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IteryEECsfISxE4fmY1Y_14polars_parquet.exit.i
  %.sroa.4237.0.copyload.i2263 = ptrtoaddr ptr %.sroa.4237.0.copyload.i to i64, !dbg !25621
  %.sroa.0235.0.copyload.i2262 = ptrtoaddr ptr %.sroa.0235.0.copyload.i to i64, !dbg !25621
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0235.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4237.0.copyload.i) ]
  %i.ekz = sub nuw i64 %.sroa.7240.0.copyload.i, %.sroa.5239.0.copyload.i, !dbg !25622 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ekz, 4, !dbg !25622
  %i.ela = sub i64 %.sroa.4237.0.copyload.i2263, %.sroa.0235.0.copyload.i2262, !dbg !25622
  %diff.check = icmp ugt i64 %i.ela, -32, !dbg !25622
  %or.cond2307 = select i1 %min.iters.check, i1 true, i1 %diff.check, !dbg !25622
  br i1 %or.cond2307, label %scalar.ph.preheader, label %vector.ph, !dbg !25622

vector.ph:                                        ; preds = %.lr.ph.i612
  %n.vec = and i64 %i.ekz, -4                     ; 3 uses
  %i.elb = add i64 %.sroa.5239.0.copyload.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.elc = add nuw i64 %.sroa.5239.0.copyload.i, %index ; 2 uses
  %i.eld = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %i.elc, !dbg !25623 ; 2 uses
  %i.ele = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %i.elc, !dbg !25624 ; 2 uses
  %i.elf = getelementptr inbounds nuw i8, ptr %i.ele, i64 16, !dbg !25625
  %wide.load = load <2 x i64>, ptr %i.ele, align 8, !dbg !25625, !noalias !22453
  %wide.load2264 = load <2 x i64>, ptr %i.elf, align 8, !dbg !25625, !noalias !22453
  %i.elg = getelementptr inbounds nuw i8, ptr %i.eld, i64 16, !dbg !25626
  store <2 x i64> %wide.load, ptr %i.eld, align 8, !dbg !25626, !noalias !22453
  store <2 x i64> %wide.load2264, ptr %i.elg, align 8, !dbg !25626, !noalias !22453
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.elh = icmp eq i64 %index.next, %n.vec, !dbg !25622
  br i1 %i.elh, label %middle.block, label %vector.body, !dbg !25622, !llvm.loop !21957

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ekz, %n.vec, !dbg !25622
  br i1 %cmp.n, label %.thread312.i, label %scalar.ph.preheader, !dbg !25622

scalar.ph.preheader:                              ; preds = %.lr.ph.i612, %middle.block
  %.sroa.5239.0480.i.ph = phi i64 [ %.sroa.5239.0.copyload.i, %.lr.ph.i612 ], [ %i.elb, %middle.block ] ; 4 uses
  %i.eli = sub i64 %.sroa.7240.0.copyload.i, %.sroa.5239.0480.i.ph, !dbg !25622
  %xtraiter = and i64 %i.eli, 3, !dbg !25622      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !25622
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !25622

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.5239.0480.i.prol = phi i64 [ %i.ell, %scalar.ph.prol ], [ %.sroa.5239.0480.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.elj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %.sroa.5239.0480.i.prol, !dbg !25623
  %i.elk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %.sroa.5239.0480.i.prol, !dbg !25624
  %i.ell = add nuw i64 %.sroa.5239.0480.i.prol, 1, !dbg !25627 ; 2 uses
  %i.elm = load i64, ptr %i.elk, align 8, !dbg !25625, !noalias !22453, !noundef !664
  store i64 %i.elm, ptr %i.elj, align 8, !dbg !25626, !noalias !22453
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !25622 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !25622
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !25622, !llvm.loop !21958

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.5239.0480.i.unr = phi i64 [ %.sroa.5239.0480.i.ph, %scalar.ph.preheader ], [ %i.ell, %scalar.ph.prol ]
  %i.eln = sub i64 %.sroa.5239.0480.i.ph, %.sroa.7240.0.copyload.i, !dbg !25622
  %i.elo = icmp ugt i64 %i.eln, -4, !dbg !25622
  br i1 %i.elo, label %.thread312.i, label %scalar.ph, !dbg !25622

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.5239.0480.i = phi i64 [ %i.emd, %scalar.ph ], [ %.sroa.5239.0480.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.elp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %.sroa.5239.0480.i, !dbg !25623
  %i.elq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %.sroa.5239.0480.i, !dbg !25624
  %i.elr = add nuw i64 %.sroa.5239.0480.i, 1, !dbg !25627 ; 2 uses
  %i.els = load i64, ptr %i.elq, align 8, !dbg !25625, !noalias !22453, !noundef !664
  store i64 %i.els, ptr %i.elp, align 8, !dbg !25626, !noalias !22453
  %i.elt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %i.elr, !dbg !25623
  %i.elu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %i.elr, !dbg !25624
  %i.elv = add nuw i64 %.sroa.5239.0480.i, 2, !dbg !25627 ; 2 uses
  %i.elw = load i64, ptr %i.elu, align 8, !dbg !25625, !noalias !22453, !noundef !664
  store i64 %i.elw, ptr %i.elt, align 8, !dbg !25626, !noalias !22453
  %i.elx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %i.elv, !dbg !25623
  %i.ely = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %i.elv, !dbg !25624
  %i.elz = add nuw i64 %.sroa.5239.0480.i, 3, !dbg !25627 ; 2 uses
  %i.ema = load i64, ptr %i.ely, align 8, !dbg !25625, !noalias !22453, !noundef !664
  store i64 %i.ema, ptr %i.elx, align 8, !dbg !25626, !noalias !22453
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.fmin.v4f32
!21664 = distinct !DILocation(line: 849, column: 5, scope: !22440, inlinedAt: !21661)
!21665 = distinct !DILocation(line: 827, column: 11, scope: !21397, inlinedAt: !21643)
!21666 = distinct !DILocation(line: 13, column: 4, scope: !160, inlinedAt: !21665)
!21667 = distinct !DILocation(line: 810, column: 1, scope: !159, inlinedAt: !21666)
!21668 = distinct !DILocation(line: 810, column: 1, scope: !158, inlinedAt: !21667)
!21669 = distinct !DILocation(line: 1919, column: 26, scope: !156, inlinedAt: !21668)
!21670 = distinct !DILocation(line: 255, column: 43, scope: !162, inlinedAt: !21669)
!21671 = distinct !DILocation(line: 1921, column: 24, scope: !157, inlinedAt: !21668)
!21672 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !21671)
!21673 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !21672)
!21674 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !21673)
!21675 = distinct !DILocation(line: 1445, column: 5, scope: !21617, inlinedAt: !21548)
!21676 = distinct !DILocation(line: 13, column: 4, scope: !21519, inlinedAt: !21675)
!21677 = distinct !DILocation(line: 810, column: 1, scope: !21348, inlinedAt: !21676)
!21678 = distinct !DILocation(line: 810, column: 1, scope: !21347, inlinedAt: !21677)
!21679 = distinct !DILocation(line: 1919, column: 26, scope: !21345, inlinedAt: !21678)
!21680 = distinct !DILocation(line: 255, column: 43, scope: !21353, inlinedAt: !21679)
!21681 = distinct !DILocation(line: 1921, column: 24, scope: !21346, inlinedAt: !21678)
!21682 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !21681)
!21683 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !21682)
!21684 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !21683)
!21685 = distinct !DISubprogram(name: "drop<[u64], alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet", scope: !685, file: !682, line: 1913, type: !666, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21686 = distinct !DILexicalBlock(scope: !21685, file: !682, line: 1916, column: 9)
!21687 = distinct !DILexicalBlock(scope: !21686, file: !682, line: 1919, column: 13)
!21688 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<[u64], alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSyEECsfISxE4fmY1Y_14polars_parquet", scope: !669, file: !686, line: 810, type: !666, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21689 = distinct !DISubprogram(name: "drop_in_place<alloc_stdlib::heap_alloc::WrapBox<u64>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxyEECsfISxE4fmY1Y_14polars_parquet", scope: !669, file: !686, line: 810, type: !666, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21690 = distinct !DISubprogram(name: "free_cell<u64>", linkageName: "_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatoryE9free_cellCsfISxE4fmY1Y_14polars_parquet", scope: !744, file: !742, line: 11, type: !666, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21691 = distinct !DILocation(line: 1446, column: 5, scope: !21617, inlinedAt: !21548)
!21692 = distinct !DILocation(line: 13, column: 4, scope: !21690, inlinedAt: !21691)
!21693 = distinct !DILocation(line: 810, column: 1, scope: !21689, inlinedAt: !21692)
!21694 = distinct !DILocation(line: 810, column: 1, scope: !21688, inlinedAt: !21693)
!21695 = distinct !DISubprogram(name: "size_of_val_raw<[u64]>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawSyECsfISxE4fmY1Y_14polars_parquet", scope: !692, file: !691, line: 455, type: !665, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21696 = distinct !DISubprogram(name: "for_value_raw<[u64]>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawSyECsfISxE4fmY1Y_14polars_parquet", scope: !696, file: !693, line: 253, type: !665, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21697 = distinct !DILocation(line: 1919, column: 26, scope: !21686, inlinedAt: !21694)
!21698 = distinct !DILocation(line: 255, column: 43, scope: !21696, inlinedAt: !21697)
!21699 = distinct !DILocation(line: 1921, column: 24, scope: !21687, inlinedAt: !21694)
!21700 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !21699)
!21701 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !21700)
!21702 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !21701)
!21703 = distinct !DILocation(line: 1447, column: 5, scope: !21617, inlinedAt: !21548)
!21704 = distinct !DILocation(line: 13, column: 4, scope: !285, inlinedAt: !21703)
!21705 = distinct !DILocation(line: 810, column: 1, scope: !29, inlinedAt: !21704)
!21706 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !21705)
!21707 = distinct !DILocation(line: 1919, column: 26, scope: !26, inlinedAt: !21706)
!21708 = distinct !DILocation(line: 255, column: 43, scope: !31, inlinedAt: !21707)
!21709 = distinct !DILocation(line: 1921, column: 24, scope: !27, inlinedAt: !21706)
!21710 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !21709)
!21711 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !21710)
!21712 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !21711)
!21713 = distinct !{!21713, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet"}
!21714 = distinct !{!21714, !21713, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!21715 = distinct !DILocation(line: 1448, column: 1, scope: !21565, inlinedAt: !21548)
!21716 = distinct !DILocation(line: 810, column: 1, scope: !192, inlinedAt: !21715)
!21717 = distinct !DILocation(line: 810, column: 1, scope: !159, inlinedAt: !21716)
!21718 = distinct !DILocation(line: 810, column: 1, scope: !158, inlinedAt: !21717)
!21719 = distinct !DILocation(line: 1919, column: 26, scope: !156, inlinedAt: !21718)
!21720 = distinct !DILocation(line: 255, column: 43, scope: !162, inlinedAt: !21719)
!21721 = distinct !DILocation(line: 1921, column: 24, scope: !157, inlinedAt: !21718)
!21722 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !21721)
!21723 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !21722)
!21724 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !21723)
!21725 = distinct !DILocation(line: 810, column: 1, scope: !192, inlinedAt: !21715)
!21726 = distinct !DILocation(line: 810, column: 1, scope: !159, inlinedAt: !21725)
!21727 = distinct !DILocation(line: 810, column: 1, scope: !158, inlinedAt: !21726)
!21728 = distinct !DILocation(line: 1919, column: 26, scope: !156, inlinedAt: !21727)
!21729 = distinct !DILocation(line: 255, column: 43, scope: !162, inlinedAt: !21728)
!21730 = distinct !DILocation(line: 1921, column: 24, scope: !157, inlinedAt: !21727)
!21731 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !21730)
!21732 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !21731)
!21733 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !21732)
!21734 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !679, file: !677, line: 886, type: !665, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21735 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !706, file: !701, line: 212, type: !665, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21736 = distinct !DILexicalBlock(scope: !21636, file: !701, line: 782, column: 13)
!21737 = distinct !DILocation(line: 784, column: 35, scope: !21736, inlinedAt: !21640)
!21738 = distinct !DILocation(line: 214, column: 28, scope: !21735, inlinedAt: !21737)
!21739 = distinct !DISubprogram(name: "BrotliInitZopfliNodes", linkageName: "_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq21BrotliInitZopfliNodes", scope: !892, file: !891, line: 58, type: !665, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21740 = distinct !DILexicalBlock(scope: !21739, file: !891, line: 59, column: 5)
!21741 = distinct !DILexicalBlock(scope: !21740, file: !891, line: 60, column: 5)
!21742 = distinct !DILexicalBlock(scope: !21638, file: !891, line: 1392, column: 5)
!21743 = distinct !DILocation(line: 1393, column: 9, scope: !21742, inlinedAt: !21548)
!21744 = distinct !DILocation(line: 1402, column: 30, scope: !21742, inlinedAt: !21548)
!21745 = distinct !{!21745, !"_RNvMsb_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17set_from_commandsCsfISxE4fmY1Y_14polars_parquet"}
!21746 = distinct !{!21746, !21745, !"_RNvMsb_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17set_from_commandsCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!21747 = distinct !{!21747, !21745, !"_RNvMsb_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17set_from_commandsCsfISxE4fmY1Y_14polars_parquet: argument 1"}
!21748 = distinct !{!21748, !21745, !"_RNvMsb_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17set_from_commandsCsfISxE4fmY1Y_14polars_parquet: argument 2"}
!21749 = distinct !DISubprogram(name: "set_from_commands<alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RNvMsb_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17set_from_commandsCsfISxE4fmY1Y_14polars_parquet", scope: !893, file: !891, line: 1076, type: !665, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21750 = distinct !DILocation(line: 1397, column: 19, scope: !21742, inlinedAt: !21548)
!21751 = distinct !DILexicalBlock(scope: !21749, file: !891, line: 1085, column: 9)
!21752 = distinct !DILexicalBlock(scope: !21751, file: !891, line: 1086, column: 9)
!21753 = distinct !DILexicalBlock(scope: !21752, file: !891, line: 1087, column: 9)
!21754 = distinct !DILexicalBlock(scope: !21753, file: !891, line: 1088, column: 9)
!21755 = distinct !DILexicalBlock(scope: !21754, file: !891, line: 1089, column: 9)
!21756 = distinct !DILexicalBlock(scope: !21755, file: !891, line: 1090, column: 9)
!21757 = distinct !DILexicalBlock(scope: !21756, file: !891, line: 1091, column: 9)
!21758 = distinct !DILexicalBlock(scope: !21757, file: !891, line: 1092, column: 9)
!21759 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !679, file: !677, line: 886, type: !665, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21760 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !706, file: !701, line: 212, type: !665, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21761 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsfISxE4fmY1Y_14polars_parquet", scope: !705, file: !701, line: 780, type: !665, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21762 = distinct !DILexicalBlock(scope: !21761, file: !701, line: 782, column: 13)
!21763 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !704, file: !701, line: 865, type: !665, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21764 = distinct !DILexicalBlock(scope: !21758, file: !891, line: 1138, column: 9)
!21765 = distinct !DILocation(line: 1138, column: 18, scope: !22479, inlinedAt: !21750)
!21766 = distinct !DILocation(line: 866, column: 14, scope: !22478, inlinedAt: !21765)
!21767 = distinct !DILocation(line: 784, column: 35, scope: !22477, inlinedAt: !21766)
!21768 = distinct !DILocation(line: 214, column: 28, scope: !22476, inlinedAt: !21767)
!21769 = distinct !DILexicalBlock(scope: !21764, file: !891, line: 1138, column: 9)
!21770 = distinct !DISubprogram(name: "min", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3f32f3min", scope: !905, file: !903, line: 1019, type: !665, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21771 = distinct !DILocation(line: 1139, column: 41, scope: !21769, inlinedAt: !21750)
!21772 = distinct !{!21772, !812, !813}
!21773 = distinct !DILexicalBlock(scope: !21758, file: !891, line: 1143, column: 13)
!21774 = distinct !DILexicalBlock(scope: !21773, file: !891, line: 1144, column: 13)
!21775 = distinct !DILexicalBlock(scope: !21774, file: !891, line: 1145, column: 13)
!21776 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !700, file: !697, line: 1917, type: !665, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21777 = distinct !DILexicalBlock(scope: !21775, file: !891, line: 1147, column: 13)
!21778 = distinct !DILocation(line: 1147, column: 22, scope: !22483, inlinedAt: !21750)
!21779 = distinct !DILocation(line: 866, column: 14, scope: !22482, inlinedAt: !21778)
!21780 = distinct !DILocation(line: 781, column: 12, scope: !22481, inlinedAt: !21779)
!21781 = distinct !DILexicalBlock(scope: !21777, file: !891, line: 1147, column: 13)
!21782 = distinct !DILexicalBlock(scope: !21761, file: !701, line: 782, column: 13)
!21783 = distinct !DILocation(line: 784, column: 35, scope: !22485, inlinedAt: !21779)
!21784 = distinct !DILocation(line: 214, column: 28, scope: !22484, inlinedAt: !21783)
!21785 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !679, file: !677, line: 2510, type: !665, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21786 = distinct !DILocation(line: 1149, column: 54, scope: !21781, inlinedAt: !21750)
!21787 = distinct !DISubprogram(name: "copy_len", linkageName: "_RNvMNtNtCsk4ZPsEfLtLH_6brotli3enc7commandNtB2_7Command8copy_len", scope: !759, file: !757, line: 24, type: !665, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21788 = distinct !DILexicalBlock(scope: !21758, file: !891, line: 1096, column: 17)
!21789 = distinct !DILocation(line: 1097, column: 53, scope: !21788, inlinedAt: !21750)
!21790 = distinct !DILexicalBlock(scope: !21788, file: !891, line: 1097, column: 17)
!21791 = distinct !DILexicalBlock(scope: !21790, file: !891, line: 1098, column: 17)
!21792 = distinct !DILexicalBlock(scope: !21791, file: !891, line: 1099, column: 17)
!21793 = distinct !DILexicalBlock(scope: !21792, file: !891, line: 1101, column: 21)
!21794 = distinct !DILexicalBlock(scope: !21793, file: !891, line: 1102, column: 21)
!21795 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_add", scope: !725, file: !677, line: 2510, type: !665, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21796 = distinct !DILocation(line: 1103, column: 37, scope: !21794, inlinedAt: !21750)
!21797 = distinct !DILexicalBlock(scope: !21792, file: !891, line: 1110, column: 17)
!21798 = distinct !DILocation(line: 1110, column: 26, scope: !22490, inlinedAt: !21750)
!21799 = distinct !DILocation(line: 866, column: 14, scope: !21763, inlinedAt: !21798)
!21800 = distinct !DILocation(line: 781, column: 12, scope: !21761, inlinedAt: !21799)
!21801 = distinct !DILexicalBlock(scope: !21792, file: !891, line: 1106, column: 21)
!21802 = distinct !DILexicalBlock(scope: !21801, file: !891, line: 1107, column: 21)
!21803 = distinct !DILocation(line: 1108, column: 37, scope: !21802, inlinedAt: !21750)
!21804 = distinct !DILocation(line: 1116, column: 50, scope: !21792, inlinedAt: !21750)
!21805 = distinct !DILocation(line: 1116, column: 27, scope: !21792, inlinedAt: !21750)
!21806 = distinct !DILocation(line: 1118, column: 19, scope: !21758, inlinedAt: !21750)
!21807 = distinct !DILexicalBlock(scope: !21797, file: !891, line: 1110, column: 17)
!21808 = distinct !DILexicalBlock(scope: !21807, file: !891, line: 1111, column: 21)
!21809 = distinct !DILocation(line: 1113, column: 43, scope: !21808, inlinedAt: !21750)
!21810 = distinct !DILexicalBlock(scope: !21761, file: !701, line: 782, column: 13)
!21811 = distinct !DILocation(line: 784, column: 35, scope: !21810, inlinedAt: !21799)
!21812 = distinct !DILocation(line: 214, column: 28, scope: !21760, inlinedAt: !21811)
!21813 = distinct !DILexicalBlock(scope: !21808, file: !891, line: 1112, column: 21)
!21814 = distinct !DILocation(line: 1114, column: 37, scope: !21813, inlinedAt: !21750)
!21815 = distinct !DILocation(line: 1413, column: 14, scope: !21742, inlinedAt: !21548)
!21816 = distinct !DILocation(line: 631, column: 9, scope: !21588, inlinedAt: !21815)
!21817 = distinct !DILexicalBlock(scope: !21742, file: !891, line: 1409, column: 9)
!21818 = distinct !DILocation(line: 1409, column: 23, scope: !22491, inlinedAt: !21548)
!21819 = distinct !DILocation(line: 85, column: 9, scope: !21597, inlinedAt: !21818)
!21820 = distinct !DILocation(line: 313, column: 30, scope: !21603, inlinedAt: !21819)
!21821 = distinct !DILocation(line: 429, column: 60, scope: !21602, inlinedAt: !21820)
!21822 = distinct !DILocation(line: 313, column: 66, scope: !21603, inlinedAt: !21819)
!21823 = distinct !DILocation(line: 429, column: 60, scope: !21607, inlinedAt: !21822)
!21824 = distinct !DILexicalBlock(scope: !21817, file: !891, line: 1409, column: 9)
!21825 = distinct !{!21825, !812, !813}
!21826 = distinct !{!21826, !781}
!21827 = distinct !{!21827, !812}
!21828 = distinct !{!21828, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq13ZopfliIterateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet"}
!21829 = distinct !{!21829, !21828, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq13ZopfliIterateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet: argument 3"}
!21830 = distinct !{!21830, !21828, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq13ZopfliIterateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet: argument 4"}
!21831 = distinct !{!21831, !21828, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq13ZopfliIterateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet: argument 5"}
!21832 = distinct !{!21832, !21828, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq13ZopfliIterateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet: argument 6"}
!21833 = distinct !{!21833, !21828, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq13ZopfliIterateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet: argument 2"}
!21834 = distinct !{!21834, !21828, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq13ZopfliIterateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet: argument 1"}
!21835 = distinct !{!21835, !21828, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq13ZopfliIterateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!21836 = distinct !DISubprogram(name: "ZopfliIterate<alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq13ZopfliIterateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet", scope: !892, file: !891, line: 1157, type: !665, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21837 = distinct !DILexicalBlock(scope: !21836, file: !891, line: 1172, column: 5)
!21838 = distinct !DILocation(line: 1417, column: 51, scope: !21742, inlinedAt: !21548)
!21839 = distinct !DILexicalBlock(scope: !21837, file: !891, line: 1173, column: 5)
!21840 = distinct !DILexicalBlock(scope: !21839, file: !891, line: 1174, column: 5)
!21841 = distinct !DILexicalBlock(scope: !21840, file: !891, line: 1175, column: 5)
!21842 = distinct !DILocation(line: 1234, column: 5, scope: !21841, inlinedAt: !21838)
!21843 = distinct !{!21843, !"_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq28ComputeShortestPathFromNodes"}
!21844 = distinct !{!21844, !21843, !"_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq28ComputeShortestPathFromNodes: argument 0"}
!21845 = distinct !DILocation(line: 844, column: 23, scope: !21435, inlinedAt: !21842)
!21846 = distinct !DILocation(line: 848, column: 32, scope: !21435, inlinedAt: !21842)
!21847 = distinct !DILocation(line: 834, column: 14, scope: !21442, inlinedAt: !21846)
!21848 = distinct !DILocation(line: 835, column: 14, scope: !21442, inlinedAt: !21846)
!21849 = distinct !DILocation(line: 849, column: 23, scope: !21447, inlinedAt: !21842)
!21850 = distinct !DILocation(line: 851, column: 37, scope: !21447, inlinedAt: !21842)
!21851 = distinct !DISubprogram(name: "index<u64>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSyE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !710, file: !707, line: 567, type: !665, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21852 = distinct !DISubprogram(name: "index<u64, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSyINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !730, file: !707, line: 18, type: !665, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21853 = distinct !DILocation(line: 1193, column: 25, scope: !21841, inlinedAt: !21838)
!21854 = distinct !DILocation(line: 19, column: 15, scope: !21852, inlinedAt: !21853)
!21855 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckyECsfISxE4fmY1Y_14polars_parquet", scope: !709, file: !707, line: 82, type: !665, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21856 = distinct !DILexicalBlock(scope: !21855, file: !707, line: 87, column: 5)
!21857 = distinct !DILexicalBlock(scope: !21851, file: !707, line: 573, column: 13)
!21858 = distinct !DILocation(line: 574, column: 15, scope: !21857, inlinedAt: !21854)
!21859 = distinct !DILexicalBlock(scope: !21841, file: !891, line: 1182, column: 13)
!21860 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !679, file: !677, line: 2510, type: !665, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21861 = distinct !DILocation(line: 1201, column: 43, scope: !21859, inlinedAt: !21838)
!21862 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_sub", scope: !679, file: !677, line: 2547, type: !665, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21863 = distinct !DILocation(line: 1203, column: 56, scope: !21859, inlinedAt: !21838)
!21864 = distinct !DISubprogram(name: "length", linkageName: "_RNvMs1_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqNtNtB7_19hash_to_binary_tree13BackwardMatch6length", scope: !896, file: !891, line: 411, type: !665, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21865 = distinct !DILocation(line: 1203, column: 74, scope: !21859, inlinedAt: !21838)
!21866 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3maxjECsfISxE4fmY1Y_14polars_parquet", scope: !698, file: !697, line: 1682, type: !665, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21867 = distinct !DILocation(line: 1205, column: 24, scope: !21859, inlinedAt: !21838)
!21868 = distinct !DILocation(line: 1683, column: 8, scope: !21866, inlinedAt: !21867)
!21869 = distinct !DILocation(line: 1232, column: 15, scope: !21841, inlinedAt: !21838)
!21870 = distinct !DILocation(line: 1180, column: 13, scope: !21841, inlinedAt: !21838)
!21871 = distinct !DILocation(line: 1213, column: 27, scope: !21859, inlinedAt: !21838)
!21872 = distinct !DILocation(line: 1214, column: 26, scope: !21859, inlinedAt: !21838)
!21873 = distinct !{!21873, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet"}
!21874 = distinct !{!21874, !21873, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet: argument 2"}
!21875 = distinct !DILocation(line: 1217, column: 21, scope: !21859, inlinedAt: !21838)
!21876 = distinct !{!21876, !21873, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet: argument 1"}
!21877 = distinct !{!21877, !21873, !"_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!21878 = distinct !DILocation(line: 526, column: 39, scope: !563, inlinedAt: !21875)
!21879 = distinct !DILocation(line: 429, column: 34, scope: !562, inlinedAt: !21878)
!21880 = distinct !{!21880, !"_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut"}
!21881 = distinct !{!21881, !21880, !"_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut: argument 0"}
!21882 = distinct !DILocation(line: 431, column: 34, scope: !566, inlinedAt: !21878)
!21883 = distinct !DILocation(line: 434, column: 20, scope: !567, inlinedAt: !21878)
!21884 = distinct !DILocation(line: 434, column: 54, scope: !567, inlinedAt: !21878)
!21885 = distinct !DILocation(line: 440, column: 46, scope: !567, inlinedAt: !21878)
!21886 = distinct !DILocation(line: 436, column: 23, scope: !567, inlinedAt: !21878)
!21887 = distinct !DILocation(line: 533, column: 27, scope: !563, inlinedAt: !21875)
!21888 = distinct !DILocation(line: 1227, column: 51, scope: !21859, inlinedAt: !21838)
!21889 = distinct !DILocation(line: 0, scope: !21859, inlinedAt: !21838)
!21890 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !679, file: !677, line: 2510, type: !665, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21891 = distinct !DILocation(line: 1417, column: 38, scope: !21742, inlinedAt: !21548)
!21892 = distinct !DILocation(line: 64, column: 15, scope: !21741, inlinedAt: !21743)
!21893 = distinct !DILocation(line: 1919, column: 26, scope: !21345, inlinedAt: !21633)
!21894 = distinct !DILocation(line: 255, column: 43, scope: !21353, inlinedAt: !21893)
!21895 = distinct !DILocation(line: 1921, column: 24, scope: !21346, inlinedAt: !21633)
!21896 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !21895)
!21897 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !21896)
!21898 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !21897)
!21899 = distinct !DILocation(line: 1282, column: 39, scope: !21571, inlinedAt: !21548)
!21900 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECsfISxE4fmY1Y_14polars_parquet", scope: !698, file: !697, line: 1575, type: !665, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21901 = distinct !DILexicalBlock(scope: !21571, file: !891, line: 1282, column: 13)
!21902 = distinct !DILocation(line: 1283, column: 39, scope: !21901, inlinedAt: !21548)
!21903 = distinct !DILocation(line: 1576, column: 8, scope: !21900, inlinedAt: !21902)
!21904 = distinct !DILexicalBlock(scope: !21901, file: !891, line: 1283, column: 13)
!21905 = distinct !DILocation(line: 1284, column: 47, scope: !21904, inlinedAt: !21548)
!21906 = distinct !DILexicalBlock(scope: !21904, file: !891, line: 1284, column: 13)
!21907 = distinct !DILexicalBlock(scope: !21906, file: !891, line: 1286, column: 13)
!21908 = distinct !DILocation(line: 1288, column: 49, scope: !21907, inlinedAt: !21548)
!21909 = distinct !DILexicalBlock(scope: !21907, file: !891, line: 1289, column: 21)
!21910 = distinct !DILocation(line: 1295, column: 45, scope: !21909, inlinedAt: !21548)
!21911 = distinct !DILocation(line: 1297, column: 41, scope: !21909, inlinedAt: !21548)
!21912 = distinct !DILexicalBlock(scope: !21909, file: !891, line: 1297, column: 21)
!21913 = distinct !DISubprogram(name: "take<alloc_stdlib::heap_alloc::WrapBox<u64>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem4takeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxyEECsfISxE4fmY1Y_14polars_parquet", scope: !692, file: !691, line: 848, type: !665, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21914 = distinct !DILocation(line: 1310, column: 69, scope: !21912, inlinedAt: !21548)
!21915 = distinct !DILocation(line: 849, column: 19, scope: !21913, inlinedAt: !21914)
!21916 = distinct !DILocation(line: 26, column: 35, scope: !578, inlinedAt: !21915)
!21917 = distinct !DILocation(line: 1301, column: 30, scope: !21912, inlinedAt: !21548)
!21918 = distinct !DILocation(line: 1987, column: 20, scope: !581, inlinedAt: !21917)
!21919 = distinct !DISubprogram(name: "split_at_checked<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy16split_at_checkedCsfISxE4fmY1Y_14polars_parquet", scope: !733, file: !731, line: 2153, type: !665, scopeLine: 2153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21920 = distinct !DISubprogram(name: "split_at<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy8split_atCsfISxE4fmY1Y_14polars_parquet", scope: !733, file: !731, line: 1952, type: !666, scopeLine: 1952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21921 = distinct !DILocation(line: 1304, column: 50, scope: !21912, inlinedAt: !21548)
!21922 = distinct !DILocation(line: 1953, column: 20, scope: !21920, inlinedAt: !21921)
!21923 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOy3addCsfISxE4fmY1Y_14polars_parquet", scope: !797, file: !795, line: 927, type: !665, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21924 = distinct !DISubprogram(name: "new<u64>", linkageName: "_RNvMsa_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7IterMutyE3newCsfISxE4fmY1Y_14polars_parquet", scope: !800, file: !798, line: 221, type: !665, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21925 = distinct !DILexicalBlock(scope: !21924, file: !798, line: 222, column: 9)
!21926 = distinct !DILexicalBlock(scope: !21925, file: !798, line: 223, column: 9)
!21927 = distinct !DISubprogram(name: "iter_mut<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy8iter_mutCsfISxE4fmY1Y_14polars_parquet", scope: !733, file: !731, line: 1060, type: !665, scopeLine: 1060, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21928 = distinct !DILocation(line: 1303, column: 30, scope: !21912, inlinedAt: !21548)
!21929 = distinct !DILocation(line: 1061, column: 9, scope: !21927, inlinedAt: !21928)
!21930 = distinct !DILocation(line: 242, column: 82, scope: !21926, inlinedAt: !21929)
!21931 = distinct !DISubprogram(name: "new<u64>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IteryE3newCsfISxE4fmY1Y_14polars_parquet", scope: !849, file: !798, line: 96, type: !665, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21932 = distinct !DILexicalBlock(scope: !21931, file: !798, line: 97, column: 9)
!21933 = distinct !DILexicalBlock(scope: !21932, file: !798, line: 98, column: 9)
!21934 = distinct !DISubprogram(name: "iter<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy4iterCsfISxE4fmY1Y_14polars_parquet", scope: !733, file: !731, line: 1040, type: !665, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21935 = distinct !DILocation(line: 1304, column: 75, scope: !21912, inlinedAt: !21548)
!21936 = distinct !DILocation(line: 1041, column: 9, scope: !21934, inlinedAt: !21935)
!21937 = distinct !DILocation(line: 102, column: 78, scope: !21933, inlinedAt: !21936)
!21938 = distinct !DISubprogram(name: "new<core::slice::iter::IterMut<u64>, core::slice::iter::Iter<u64>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter7IterMutyEINtBW_4IteryEE3newCsfISxE4fmY1Y_14polars_parquet", scope: !900, file: !898, line: 23, type: !665, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21939 = distinct !DISubprogram(name: "zip<core::slice::iter::IterMut<u64>, core::slice::iter::Iter<u64>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IteryEECsfISxE4fmY1Y_14polars_parquet", scope: !841, file: !838, line: 626, type: !665, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21940 = distinct !DILocation(line: 1304, column: 30, scope: !21912, inlinedAt: !21548)
!21941 = distinct !DILocation(line: 631, column: 9, scope: !21939, inlinedAt: !21940)
!21942 = distinct !DISubprogram(name: "next<core::slice::iter::IterMut<u64>, core::slice::iter::Iter<u64>>", linkageName: "_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_4IteryEEINtB5_7ZipImplBW_B1r_E4nextCsfISxE4fmY1Y_14polars_parquet", scope: !901, file: !898, line: 305, type: !665, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21943 = distinct !DISubprogram(name: "next<core::slice::iter::IterMut<u64>, core::slice::iter::Iter<u64>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter7IterMutyEINtBY_4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !902, file: !898, line: 84, type: !665, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21944 = distinct !DILexicalBlock(scope: !21912, file: !891, line: 1299, column: 25)
!21945 = distinct !DILocation(line: 1299, column: 43, scope: !22508, inlinedAt: !21548)
!21946 = distinct !DILocation(line: 85, column: 9, scope: !21943, inlinedAt: !21945)
!21947 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOy3addCsfISxE4fmY1Y_14polars_parquet", scope: !797, file: !795, line: 927, type: !665, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21948 = distinct !DISubprogram(name: "__iterator_get_unchecked<u64>", linkageName: "_RNvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfISxE4fmY1Y_14polars_parquet", scope: !802, file: !801, line: 418, type: !666, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21949 = distinct !DILexicalBlock(scope: !21942, file: !898, line: 307, column: 13)
!21950 = distinct !DILocation(line: 313, column: 30, scope: !21949, inlinedAt: !21946)
!21951 = distinct !DILocation(line: 429, column: 60, scope: !21948, inlinedAt: !21950)
!21952 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOy3addCsfISxE4fmY1Y_14polars_parquet", scope: !797, file: !795, line: 927, type: !665, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21953 = distinct !DISubprogram(name: "__iterator_get_unchecked<u64>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsfISxE4fmY1Y_14polars_parquet", scope: !809, file: !801, line: 418, type: !666, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21954 = distinct !DILocation(line: 313, column: 66, scope: !21949, inlinedAt: !21946)
!21955 = distinct !DILocation(line: 429, column: 60, scope: !21953, inlinedAt: !21954)
!21956 = distinct !DILexicalBlock(scope: !21944, file: !891, line: 1299, column: 25)
!21957 = distinct !{!21957, !812, !813}
!21958 = distinct !{!21958, !781}
!21959 = distinct !{!21959, !812}
!21960 = distinct !DILocation(line: 1310, column: 25, scope: !21912, inlinedAt: !21548)
!21961 = distinct !DILocation(line: 13, column: 4, scope: !21690, inlinedAt: !21960)
!21962 = distinct !DILocation(line: 810, column: 1, scope: !21689, inlinedAt: !21961)
!21963 = distinct !DILocation(line: 810, column: 1, scope: !21688, inlinedAt: !21962)
!21964 = distinct !DILocation(line: 1919, column: 26, scope: !21686, inlinedAt: !21963)
!21965 = distinct !DILocation(line: 255, column: 43, scope: !21696, inlinedAt: !21964)
!21966 = distinct !DILocation(line: 1921, column: 24, scope: !21687, inlinedAt: !21963)
!21967 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !21966)
!21968 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !21967)
!21969 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !21968)
!21970 = distinct !DILocation(line: 1312, column: 21, scope: !21912, inlinedAt: !21548)
!21971 = distinct !DILocation(line: 810, column: 1, scope: !21689, inlinedAt: !21970)
!21972 = distinct !DILocation(line: 810, column: 1, scope: !21688, inlinedAt: !21971)
!21973 = distinct !DILocation(line: 1919, column: 26, scope: !21686, inlinedAt: !21972)
!21974 = distinct !DILocation(line: 255, column: 43, scope: !21696, inlinedAt: !21973)
!21975 = distinct !DILocation(line: 1921, column: 24, scope: !21687, inlinedAt: !21972)
!21976 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !21975)
!21977 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !21976)
!21978 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !21977)
!21979 = distinct !DISubprogram(name: "index_mut<u64>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSyE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !710, file: !707, line: 579, type: !665, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21980 = distinct !DISubprogram(name: "index_mut<u64, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSyINtNtNtB8_3ops5index8IndexMutINtNtBK_5range9RangeFromjEE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !711, file: !707, line: 30, type: !665, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21981 = distinct !DILocation(line: 1330, column: 41, scope: !21907, inlinedAt: !21548)
!21982 = distinct !DILocation(line: 31, column: 15, scope: !21980, inlinedAt: !21981)
!21983 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckyECsfISxE4fmY1Y_14polars_parquet", scope: !709, file: !707, line: 94, type: !665, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21984 = distinct !DILexicalBlock(scope: !21983, file: !707, line: 99, column: 5)
!21985 = distinct !DILexicalBlock(scope: !21979, file: !707, line: 585, column: 13)
!21986 = distinct !DILocation(line: 586, column: 19, scope: !21985, inlinedAt: !21982)
!21987 = distinct !DILexicalBlock(scope: !21907, file: !891, line: 1319, column: 13)
!21988 = distinct !DILocation(line: 1332, column: 54, scope: !21987, inlinedAt: !21548)
!21989 = distinct !DILexicalBlock(scope: !21987, file: !891, line: 1332, column: 13)
!21990 = distinct !DILocation(line: 1370, column: 15, scope: !21571, inlinedAt: !21548)
!21991 = distinct !DILocation(line: 1280, column: 51, scope: !21571, inlinedAt: !21548)
!21992 = distinct !DILocation(line: 1341, column: 65, scope: !21989, inlinedAt: !21548)
!21993 = distinct !DISubprogram(name: "length", linkageName: "_RNvMs1_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqNtNtB7_19hash_to_binary_tree13BackwardMatch6length", scope: !896, file: !891, line: 411, type: !665, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!21994 = distinct !DILocation(line: 1341, column: 83, scope: !21989, inlinedAt: !21548)
!21995 = distinct !DILexicalBlock(scope: !21989, file: !891, line: 1340, column: 17)
!21996 = distinct !DILocation(line: 1343, column: 49, scope: !21995, inlinedAt: !21548)
!21997 = distinct !DILexicalBlock(scope: !21995, file: !891, line: 1343, column: 21)
!21998 = distinct !DILexicalBlock(scope: !21997, file: !891, line: 1344, column: 21)
!21999 = distinct !DILocation(line: 1346, column: 51, scope: !21998, inlinedAt: !21548)
!22000 = distinct !DILocation(line: 1352, column: 33, scope: !21998, inlinedAt: !21548)
!22001 = distinct !DILocation(line: 1352, column: 25, scope: !21998, inlinedAt: !21548)
!22002 = distinct !DILocation(line: 1576, column: 8, scope: !21900, inlinedAt: !22001)
!22003 = distinct !DILocation(line: 1351, column: 29, scope: !21998, inlinedAt: !21548)
!22004 = distinct !DILocation(line: 1356, column: 41, scope: !21998, inlinedAt: !21548)
!22005 = distinct !DILocation(line: 1356, column: 26, scope: !21998, inlinedAt: !21548)
!22006 = distinct !DILocation(line: 1987, column: 20, scope: !586, inlinedAt: !22005)
!22007 = distinct !DILocation(line: 2196, column: 32, scope: !585, inlinedAt: !22006)
!22008 = distinct !DILocation(line: 1358, column: 26, scope: !21998, inlinedAt: !21548)
!22009 = distinct !DILocation(line: 1987, column: 20, scope: !586, inlinedAt: !22008)
!22010 = distinct !DISubprogram(name: "eq<u32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullmENtNtB9_3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet", scope: !808, file: !804, line: 1716, type: !665, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!22011 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_7IterMutmENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !802, file: !801, line: 157, type: !665, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!22012 = distinct !DILexicalBlock(scope: !22011, file: !801, line: 161, column: 17)
!22013 = distinct !DILexicalBlock(scope: !22012, file: !801, line: 162, column: 17)
!22014 = distinct !DILexicalBlock(scope: !21998, file: !891, line: 1354, column: 21)
!22015 = distinct !DILocation(line: 1354, column: 33, scope: !22509, inlinedAt: !21548)
!22016 = distinct !DILocation(line: 180, column: 28, scope: !22013, inlinedAt: !22015)
!22017 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCsfISxE4fmY1Y_14polars_parquet", scope: !797, file: !795, line: 927, type: !665, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!22018 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMsa_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7IterMutmE3newCsfISxE4fmY1Y_14polars_parquet", scope: !800, file: !798, line: 221, type: !665, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!22019 = distinct !DILexicalBlock(scope: !22018, file: !798, line: 222, column: 9)
!22020 = distinct !DILexicalBlock(scope: !22019, file: !798, line: 223, column: 9)
!22021 = distinct !DISubprogram(name: "iter_mut<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm8iter_mutCsfISxE4fmY1Y_14polars_parquet", scope: !733, file: !731, line: 1060, type: !665, scopeLine: 1060, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!22022 = distinct !DILocation(line: 1360, column: 26, scope: !21998, inlinedAt: !21548)
!22023 = distinct !DILocation(line: 1061, column: 9, scope: !22511, inlinedAt: !22022)
!22024 = distinct !DILocation(line: 242, column: 82, scope: !22510, inlinedAt: !22023)
!22025 = distinct !DILocation(line: 2109, column: 40, scope: !584, inlinedAt: !22007)
!22026 = distinct !DILexicalBlock(scope: !22014, file: !891, line: 1354, column: 21)
!22027 = distinct !DILocation(line: 1364, column: 27, scope: !21998, inlinedAt: !21548)
!22028 = distinct !DILocation(line: 1314, column: 17, scope: !21909, inlinedAt: !21548)
!22029 = distinct !DILocation(line: 810, column: 1, scope: !21689, inlinedAt: !22028)
!22030 = distinct !DILocation(line: 810, column: 1, scope: !21688, inlinedAt: !22029)
!22031 = distinct !DILocation(line: 1919, column: 26, scope: !21686, inlinedAt: !22030)
!22032 = distinct !DILocation(line: 255, column: 43, scope: !21696, inlinedAt: !22031)
!22033 = distinct !DILocation(line: 1921, column: 24, scope: !21687, inlinedAt: !22030)
!22034 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !22033)
!22035 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !22034)
!22036 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !22035)
!22037 = distinct !DILocation(line: 1448, column: 1, scope: !21567, inlinedAt: !21548)
!22038 = distinct !DILocation(line: 810, column: 1, scope: !21689, inlinedAt: !22037)
!22039 = distinct !DILocation(line: 810, column: 1, scope: !21688, inlinedAt: !22038)
!22040 = distinct !DILocation(line: 1919, column: 26, scope: !21686, inlinedAt: !22039)
!22041 = distinct !DILocation(line: 255, column: 43, scope: !21696, inlinedAt: !22040)
!22042 = distinct !DILocation(line: 1921, column: 24, scope: !21687, inlinedAt: !22039)
!22043 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !22042)
!22044 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !22043)
!22045 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !22044)
!22046 = distinct !DILocation(line: 1448, column: 1, scope: !21556, inlinedAt: !21548)
!22047 = distinct !DILocation(line: 810, column: 1, scope: !29, inlinedAt: !22046)
!22048 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !22047)
!22049 = distinct !DILocation(line: 1919, column: 26, scope: !26, inlinedAt: !22048)
!22050 = distinct !DILocation(line: 255, column: 43, scope: !31, inlinedAt: !22049)
!22051 = distinct !DILocation(line: 1921, column: 24, scope: !27, inlinedAt: !22048)
!22052 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !22051)
!22053 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !22052)
!22054 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !22053)
!22055 = !{!18929}
!22056 = !{!18930}
!22057 = !{!18931}
!22058 = !{!18932}
!22059 = !{!18933}
!22060 = !{!18934}
!22061 = !{!18940, !18939, !18930, !18931, !18932, !18938, !18933, !18934}
!22062 = !{!18940, !18939, !18929, !18930, !18931, !18938, !18933, !18934}
!22063 = !{!18940, !18939, !18929, !18930, !18931, !18932, !18938, !18933, !18934}
!22064 = !{!18940, !18939, !18929, !18931, !18932, !18938, !18933, !18934}
!22065 = !DINamespace(name: "AnyHasher", scope: !748)
!22066 = !{!18980, !18979, !18977, !18930, !18931, !18932, !18933, !18934}
!22067 = !{!18987, !18985, !18977, !18983, !18940, !18939, !18929, !18930, !18931, !18932, !18938, !18933, !18934}
!22068 = !{!18995, !18994, !18985, !18977, !18930, !18931, !18932, !18933, !18934}
!22069 = !{!18930, !18931, !18932, !18933, !18934}
!22070 = !{!18977, !18983, !18930, !18931, !18932, !18933, !18934}
!22071 = !{!19013, !19012, !19010, !18930, !18931, !18932, !18933, !18934}
!22072 = !{!19020, !19018, !19010, !19016, !18940, !18939, !18929, !18930, !18931, !18932, !18938, !18933, !18934}
!22073 = !{!19028, !19027, !19018, !19010, !18930, !18931, !18932, !18933, !18934}
!22074 = !{!19010, !19016, !18930, !18931, !18932, !18933, !18934}
!22075 = !{!19060, !18931}
!22076 = !{!18940, !18939, !18929, !18930, !18932, !18938, !18933, !18934}
!22077 = !{!19076, !19075, !18930, !18931, !18932, !18933, !18934}
!22078 = !{!18940, !18939, !18929, !18930, !18931, !18932, !18938, !18933}
!22079 = !DINamespace(name: "BasicHasher", scope: !748)
!22080 = !DILexicalBlockFile(scope: !19098, file: !747, discriminator: 2)
!22081 = !{!19113, !19112, !18930, !18931, !18932, !18933, !18934}
!22082 = !{!19119, !19118, !18930, !18931, !18932, !18933, !18934}
!22083 = !{!19128, !19126, !19124, !19122, !18940, !18939, !18929, !18930, !18931, !18932, !18938, !18933, !18934}
!22084 = !{!19145, !19143, !19124, !19122, !18940, !18939, !18929, !18930, !18931, !18932, !18938, !18933, !18934}
!22085 = !{!19160, !19158, !19124, !19122, !18940, !18939, !18929, !18930, !18931, !18932, !18938, !18933, !18934}
!22086 = !{!19175, !19173, !19124, !19122, !18940, !18939, !18929, !18930, !18931, !18932, !18938, !18933, !18934}
!22087 = !{!19124, !19122, !18930, !18931, !18932, !18933, !18934}
!22088 = !DILexicalBlockFile(scope: !19191, file: !747, discriminator: 2)
!22089 = !{!19208, !19207, !19205, !18930, !18931, !18932, !18933, !18934}
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.fmin.v4f32
!22302 = !{!20609, !20610, !20432, !20421, !20422, !20423, !20424, !20425, !20431, !20426, !20427}
!22303 = !{!20612, !20609, !20423}
!22304 = !{!20615, !20610, !20432, !20421, !20422, !20424, !20425, !20431, !20426, !20427}
!22305 = !{!20612, !20615, !20609, !20610, !20432, !20421, !20422, !20423, !20424, !20425, !20431, !20426, !20427}
!22306 = !DILexicalBlockFile(scope: !20621, file: !747, discriminator: 0)
!22307 = !{!20612, !20615, !20609, !20610, !20423, !20424, !20425, !20426, !20427}
!22308 = !DILexicalBlockFile(scope: !20622, file: !747, discriminator: 0)
!22309 = !DILexicalBlockFile(scope: !20623, file: !747, discriminator: 0)
!22310 = !DILexicalBlockFile(scope: !20624, file: !747, discriminator: 0)
!22311 = !DILexicalBlockFile(scope: !20630, file: !747, discriminator: 2)
!22312 = !{!20615, !20610, !20421}
!22313 = !{!20612, !20609, !20432, !20422, !20423, !20424, !20425, !20431, !20426, !20427}
!22314 = !DILexicalBlockFile(scope: !20671, file: !747, discriminator: 2)
!22315 = !{!20689, !20688, !20686, !20685, !20423, !20424, !20425, !20426, !20427}
!22316 = !{!20696, !20694, !20692, !20686, !20685, !20432, !20421, !20422, !20423, !20424, !20425, !20431, !20426, !20427}
!22317 = !{!20704, !20703, !20692, !20686, !20685, !20423, !20424, !20425, !20426, !20427}
!22318 = !{!20686, !20423, !20424, !20425, !20426, !20427}
!22319 = !{!20432, !20421, !20422, !20423, !20424, !20425, !20431, !20427}
!22320 = !{!20715}
!22321 = !{!20716}
!22322 = !{!20717}
!22323 = !{!20718}
!22324 = !{!20719}
!22325 = !{!20720}
!22326 = !{!20721}
!22327 = !{!20726, !20715, !20717, !20718, !20719, !20725, !20720, !20721}
!22328 = !{!20726, !20715, !20716, !20717, !20718, !20725, !20720, !20721}
!22329 = !{!20726, !20715, !20716, !20718, !20719, !20725, !20720, !20721}
!22330 = !{!20749, !20747, !20718}
!22331 = !{!20726, !20715, !20716, !20717, !20719, !20725, !20720, !20721}
!22332 = !{!20726, !20715, !20716, !20717, !20718, !20719, !20725, !20720, !20721}
!22333 = !{!20764}
!22334 = !{!20765}
!22335 = !{!20764, !20717}
!22336 = !{!20765, !20726, !20715, !20716, !20718, !20719, !20725, !20720, !20721}
!22337 = !{!20764, !20765, !20717, !20718, !20719, !20720, !20721}
!22338 = !{!20765, !20715}
!22339 = !{!20764, !20726, !20716, !20717, !20718, !20719, !20725, !20720, !20721}
!22340 = !{!20805}
!22341 = !{!20806}
!22342 = !{!20805, !20717}
!22343 = !{!20806, !20726, !20715, !20716, !20718, !20719, !20725, !20720, !20721}
!22344 = !{!20805, !20806, !20717, !20718, !20719, !20720, !20721}
!22345 = !{!20806, !20715}
!22346 = !{!20805, !20726, !20716, !20717, !20718, !20719, !20725, !20720, !20721}
!22347 = !{!20876, !20718}
!22348 = !{!20887, !20886, !20717, !20718, !20719, !20720, !20721}
!22349 = !{!20893, !20891, !20718}
!22350 = !{!20717, !20718, !20719, !20720, !20721}
!22351 = !{!20726, !20715, !20716, !20717, !20718, !20719, !20725, !20720}
!22352 = !{!20903}
!22353 = !{!20904}
!22354 = !{!20906}
!22355 = !{!20909}
!22356 = !{!20903, !20904, !20726, !20715, !20716, !20717, !20718, !20719, !20725, !20720, !20721}
!22357 = !{!20906, !20903, !20717}
!22358 = !{!20909, !20904, !20726, !20715, !20716, !20718, !20719, !20725, !20720, !20721}
!22359 = !{!20906, !20909, !20903, !20904, !20726, !20715, !20716, !20717, !20718, !20719, !20725, !20720, !20721}
!22360 = !DILexicalBlockFile(scope: !20915, file: !747, discriminator: 0)
!22361 = !{!20906, !20909, !20903, !20904, !20717, !20718, !20719, !20720, !20721}
!22362 = !DILexicalBlockFile(scope: !20916, file: !747, discriminator: 0)
!22363 = !DILexicalBlockFile(scope: !20917, file: !747, discriminator: 0)
!22364 = !DILexicalBlockFile(scope: !20918, file: !747, discriminator: 0)
!22365 = !DILexicalBlockFile(scope: !20924, file: !747, discriminator: 2)
!22366 = !{!20909, !20904, !20715}
!22367 = !{!20906, !20903, !20726, !20716, !20717, !20718, !20719, !20725, !20720, !20721}
!22368 = !DILexicalBlockFile(scope: !20965, file: !747, discriminator: 2)
!22369 = !{!20983, !20982, !20980, !20979, !20717, !20718, !20719, !20720, !20721}
!22370 = !{!20990, !20988, !20986, !20980, !20979, !20726, !20715, !20716, !20717, !20718, !20719, !20725, !20720, !20721}
!22371 = !{!20998, !20997, !20986, !20980, !20979, !20717, !20718, !20719, !20720, !20721}
!22372 = !{!20980, !20717, !20718, !20719, !20720, !20721}
!22373 = !{!20726, !20715, !20716, !20717, !20718, !20719, !20725, !20721}
!22374 = !{!21009}
!22375 = !{!21010}
!22376 = !{!21011}
!22377 = !{!21012}
!22378 = !{!21013}
!22379 = !{!21014}
!22380 = !{!21020, !21019, !21010, !21011, !21012, !21018, !21013, !21014}
!22381 = !{!21020, !21019, !21009, !21010, !21011, !21018, !21013, !21014}
!22382 = !{!21020, !21019, !21009, !21011, !21012, !21018, !21013, !21014}
!22383 = !{!21043, !21041, !21011}
!22384 = !{!21020, !21019, !21009, !21010, !21012, !21018, !21013, !21014}
!22385 = !{!21020, !21019, !21009, !21010, !21011, !21012, !21018, !21013, !21014}
!22386 = !{!21011, !21012, !21013, !21014}
!22387 = !{!21091, !21011}
!22388 = !{!21102, !21101, !21010, !21011, !21012, !21013, !21014}
!22389 = !{!21108, !21106, !21011}
!22390 = !{!21010, !21011, !21012, !21013, !21014}
!22391 = !{!21020, !21019, !21009, !21010, !21011, !21012, !21018, !21013}
!22392 = !DILexicalBlockFile(scope: !21121, file: !747, discriminator: 2)
!22393 = !{!21140, !21139, !21137, !21136, !21010, !21011, !21012, !21013, !21014}
!22394 = !{!21148, !21146, !21145, !21143, !21137, !21136, !21020, !21019, !21009, !21010, !21011, !21012, !21018, !21013, !21014}
!22395 = !{!21156, !21155, !21146, !21143, !21137, !21136, !21010, !21011, !21012, !21013, !21014}
!22396 = !{!21146, !21137, !21010, !21011, !21012, !21013, !21014}
!22397 = !{!21137, !21010, !21011, !21012, !21013, !21014}
!22398 = !{!21020, !21019, !21009, !21010, !21011, !21012, !21018, !21014}
!22399 = !{!21168}
!22400 = !{!21169}
!22401 = !{!21170}
!22402 = !{!21171}
!22403 = !{!21172}
!22404 = !{!21173}
!22405 = !{!21179, !21178, !21169, !21170, !21171, !21177, !21172, !21173}
!22406 = !{!21179, !21178, !21168, !21169, !21170, !21177, !21172, !21173}
!22407 = !{!21201, !21199, !21170}
!22408 = !{!21179, !21178, !21168, !21169, !21171, !21177, !21172, !21173}
!22409 = !{!21179, !21178, !21168, !21169, !21170, !21171, !21177, !21172, !21173}
!22410 = !{!21170, !21171, !21172, !21173}
!22411 = !{!21250, !21170}
!22412 = !{!21261, !21260, !21169, !21170, !21171, !21172, !21173}
!22413 = !{!21267, !21265, !21170}
!22414 = !{!21169, !21170, !21171, !21172, !21173}
!22415 = !{!21179, !21178, !21168, !21169, !21170, !21171, !21177, !21172}
!22416 = !DILexicalBlockFile(scope: !21280, file: !747, discriminator: 2)
!22417 = !{!21179, !21178, !21168, !21170, !21171, !21177, !21172, !21173}
!22418 = !{!21299, !21298, !21296, !21295, !21169, !21170, !21171, !21172, !21173}
!22419 = !{!21302, !21296, !21295, !21179, !21178, !21168, !21169, !21170, !21171, !21177, !21172, !21173}
!22420 = !{!21309, !21308, !21296, !21295, !21169, !21170, !21171, !21172, !21173}
!22421 = !{!21296, !21169, !21170, !21171, !21172, !21173}
!22422 = !{!21179, !21178, !21168, !21169, !21170, !21171, !21177, !21173}
!22423 = !{!21322}
!22424 = !{!21323}
!22425 = !{!21333, !21332, !21331, !21330, !21329, !21328, !21327, !21323, !21326}
!22426 = !{!21332, !21331, !21322, !21330, !21329, !21328, !21327, !21323, !21326}
!22427 = !{!21333, !21332, !21331, !21322, !21330, !21329, !21328, !21327, !21326}
!22428 = !{!21361}
!22429 = !{!21362}
!22430 = !{!21367, !21366, !21365, !21361, !21364, !21363, !21362, !21333, !21332, !21331, !21322, !21330, !21329, !21328, !21327, !21323, !21326}
!22431 = !{!21367, !21366, !21365, !21361, !21364, !21363, !21322, !21328, !21327, !21323, !21326}
!22432 = !{!21361, !21322}
!22433 = !{!21367, !21366, !21365, !21364, !21363, !21362, !21333, !21332, !21331, !21330, !21329, !21328, !21327, !21323, !21326}
!22434 = !{!21322, !21328, !21327, !21323, !21326}
!22435 = !{!21383, !21361, !21322, !21328, !21327, !21323, !21326}
!22436 = !{!21361, !21322, !21328, !21327, !21323, !21326}
!22437 = !{!21333, !21332, !21331, !21322, !21330, !21329, !21328, !21327, !21323, !21326}
!22438 = !{!21403}
!22439 = !{!21404, !21367, !21366, !21365, !21361, !21364, !21363, !21362, !21333, !21332, !21331, !21322, !21330, !21329, !21328, !21327, !21323, !21326}
!22440 = !DILexicalBlockFile(scope: !21396, file: !691, discriminator: 2)
!22441 = !{!21438, !21362}
!22442 = !{!21458, !21361, !21322, !21328, !21327, !21323, !21326}
!22443 = !{!21499}
!22444 = !{!21499, !21362}
!22445 = !{!21502, !21501, !21367, !21366, !21365, !21361, !21364, !21363, !21322, !21328, !21327, !21323, !21326}
!22446 = !{!21506, !21499, !21362}
!22447 = !{!21502, !21501, !21499, !21361, !21322, !21328, !21327, !21323, !21326}
!22448 = !{!21502, !21501, !21499, !21367, !21366, !21365, !21361, !21364, !21363, !21362, !21333, !21332, !21331, !21322, !21330, !21329, !21328, !21327, !21323, !21326}
!22449 = !{!21541}
!22450 = !{!21542}
!22451 = !{!21543}
!22452 = !{!21544}
!22453 = !{!21545}
!22454 = !{!21546}
!22455 = !{!21552, !21551, !21541, !21550, !21549, !21543, !21544, !21545, !21546}
!22456 = !{!21551, !21541, !21542, !21550, !21549, !21543, !21544, !21545, !21546}
!22457 = !{!21552, !21551, !21541, !21542, !21550, !21549, !21543, !21544, !21545, !21546}
!22458 = !{!21552, !21551, !21541, !21542, !21550, !21549, !21543, !21544, !21545}
!22459 = !{!21552, !21551, !21541, !21542, !21550, !21549, !21544, !21545, !21546}
!22460 = !DILexicalBlockFile(scope: !21576, file: !798, discriminator: 4)
!22461 = !DILexicalBlockFile(scope: !21577, file: !731, discriminator: 4)
!22462 = !DINamespace(name: "{impl#1}", scope: !799)
!22463 = !DILexicalBlockFile(scope: !21598, file: !891, discriminator: 2)
!22464 = !{!21552, !21551, !21541, !21542, !21550, !21549, !21543, !21544, !21546}
!22465 = !{!21621, !21545}
!22466 = !DILexicalBlockFile(scope: !21638, file: !891, discriminator: 2)
!22467 = !{!21648}
!22468 = !{!21649, !21552, !21551, !21541, !21542, !21550, !21549, !21543, !21544, !21545, !21546}
!22469 = !{!21714}
!22470 = !{!21714, !21545}
!22471 = !{!21746}
!22472 = !{!21747}
!22473 = !{!21748}
!22474 = !{!21746, !21747, !21748, !21552, !21551, !21541, !21542, !21550, !21549, !21543, !21544, !21545, !21546}
!22475 = !{!21747, !21748, !21552, !21551, !21541, !21542, !21550, !21549, !21543, !21544, !21545, !21546}
!22476 = !DILexicalBlockFile(scope: !21760, file: !701, discriminator: 2)
!22477 = !DILexicalBlockFile(scope: !21762, file: !701, discriminator: 2)
!22478 = !DILexicalBlockFile(scope: !21763, file: !701, discriminator: 2)
!22479 = !DILexicalBlockFile(scope: !21764, file: !891, discriminator: 2)
!22480 = !{!21747, !21748, !21545}
!22481 = !DILexicalBlockFile(scope: !21761, file: !701, discriminator: 4)
!22482 = !DILexicalBlockFile(scope: !21763, file: !701, discriminator: 4)
!22483 = !DILexicalBlockFile(scope: !21777, file: !891, discriminator: 2)
!22484 = !DILexicalBlockFile(scope: !21760, file: !701, discriminator: 4)
!22485 = !DILexicalBlockFile(scope: !21782, file: !701, discriminator: 4)
!22486 = !{!21747, !21541}
!22487 = !{!21746, !21748, !21552, !21551, !21542, !21550, !21549, !21543, !21544, !21545, !21546}
!22488 = !{!21748, !21544}
!22489 = !{!21746, !21747, !21552, !21551, !21541, !21542, !21550, !21549, !21543, !21545, !21546}
!22490 = !DILexicalBlockFile(scope: !21797, file: !891, discriminator: 2)
!22491 = !DILexicalBlockFile(scope: !21817, file: !891, discriminator: 2)
!22492 = !{!21829}
!22493 = !{!21830}
!22494 = !{!21831}
!22495 = !{!21832}
!22496 = !{!21835, !21834, !21833, !21829, !21830, !21831, !21832, !21552, !21551, !21541, !21542, !21550, !21549, !21543, !21544, !21545, !21546}
!22497 = !{!21835, !21834, !21833, !21829, !21830, !21831, !21545}
!22498 = !{!21835, !21834, !21833, !21830, !21831, !21832, !21552, !21551, !21541, !21542, !21550, !21549, !21543, !21544, !21545, !21546}
!22499 = !{!21844, !21832}
!22500 = !{!21835, !21834, !21833, !21829, !21831, !21832, !21545}
!22501 = !{!21835, !21834, !21833, !21829, !21830, !21832, !21545}
!22502 = !{!21874}
!22503 = !{!21874, !21832}
!22504 = !{!21877, !21876, !21835, !21834, !21833, !21829, !21830, !21831, !21545}
!22505 = !{!21881, !21874, !21832}
!22506 = !{!21877, !21876, !21874, !21834, !21829, !21830, !21831, !21545}
!22507 = !{!21877, !21876, !21874, !21835, !21834, !21833, !21829, !21830, !21831, !21832, !21552, !21551, !21541, !21542, !21550, !21549, !21543, !21544, !21545, !21546}
!22508 = !DILexicalBlockFile(scope: !21944, file: !891, discriminator: 2)
!22509 = !DILexicalBlockFile(scope: !22014, file: !891, discriminator: 2)
!22510 = !DILexicalBlockFile(scope: !22020, file: !798, discriminator: 2)
!22511 = !DILexicalBlockFile(scope: !22021, file: !731, discriminator: 2)
!22512 = !DILocation(line: 2575, column: 11, scope: !18926)
!22513 = !DILocation(line: 2575, column: 5, scope: !18926)
!22514 = !DILocation(line: 2576, column: 37, scope: !18926)
!22515 = !DILocation(line: 2622, column: 30, scope: !18926)
!22516 = !DILocation(line: 2623, column: 16, scope: !18927)
!22517 = !DILocation(line: 2623, column: 13, scope: !18927)
!22518 = !DILocation(line: 2622, column: 49, scope: !18927)
!22519 = !DILocation(line: 2393, column: 48, scope: !18936, inlinedAt: !18937)
!22520 = !DILocation(line: 2393, column: 37, scope: !18936, inlinedAt: !18937)
!22521 = !DILocation(line: 2548, column: 13, scope: !18941, inlinedAt: !18942)
!22522 = !DILocation(line: 2395, column: 36, scope: !18944, inlinedAt: !18937)
!22523 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !18947)
!22524 = !DILocation(line: 2397, column: 31, scope: !18948, inlinedAt: !18937)
!22525 = !DILocation(line: 151, column: 9, scope: !18949, inlinedAt: !18951)
!22526 = !DILocation(line: 151, column: 5, scope: !18949, inlinedAt: !18951)
!22527 = !DILocation(line: 2411, column: 11, scope: !18954, inlinedAt: !18937)
!22528 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !18955)
!22529 = !DILocation(line: 2548, column: 13, scope: !18941, inlinedAt: !18956)
!22530 = !DILocation(line: 1077, column: 12, scope: !24, inlinedAt: !18960)
!22531 = !DILocation(line: 2414, column: 13, scope: !18961, inlinedAt: !18937)
!22532 = !DILocation(line: 2414, column: 22, scope: !18961, inlinedAt: !18937)
!22533 = !DILocation(line: 2423, column: 9, scope: !18962, inlinedAt: !18937)
!22534 = !DILocation(line: 2424, column: 19, scope: !18962, inlinedAt: !18937)
!22535 = !DILocation(line: 2424, column: 12, scope: !18962, inlinedAt: !18937)
!22536 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !18963)
!22537 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !18964)
!22538 = !DILocation(line: 2529, column: 16, scope: !18962, inlinedAt: !18937)
!22539 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !18966)
!22540 = !DILocation(line: 2531, column: 20, scope: !18965, inlinedAt: !18937)
!22541 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !18967)
!22542 = !DILocation(line: 2534, column: 27, scope: !18965, inlinedAt: !18937)
!22543 = !DILocation(line: 0, scope: !18965, inlinedAt: !18937)
!22544 = !DILocation(line: 2532, column: 64, scope: !18965, inlinedAt: !18937)
!22545 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !18968)
!22546 = !DILocation(line: 2531, column: 17, scope: !18965, inlinedAt: !18937)
!22547 = !DILocation(line: 2154, column: 12, scope: !444, inlinedAt: !18975)
!22548 = !DILocation(line: 1955, column: 21, scope: !445, inlinedAt: !18974)
!22549 = !DILocation(line: 2053, column: 74, scope: !459, inlinedAt: !18981)
!22550 = !DILocation(line: 45, column: 9, scope: !460, inlinedAt: !18990)
!22551 = !DILocation(line: 45, column: 17, scope: !460, inlinedAt: !18990)
!22552 = !DILocation(line: 2154, column: 12, scope: !444, inlinedAt: !18992)
!22553 = !DILocation(line: 1955, column: 21, scope: !445, inlinedAt: !18991)
!22554 = !DILocation(line: 863, column: 18, scope: !465, inlinedAt: !18996)
!22555 = !DILocation(line: 5621, column: 13, scope: !466, inlinedAt: !18998)
!22556 = !DILocation(line: 47, column: 6, scope: !464, inlinedAt: !18990)
!22557 = !DILocation(line: 55, column: 1, scope: !460, inlinedAt: !18990)
!22558 = !DILocation(line: 2587, column: 13, scope: !468, inlinedAt: !18999)
!22559 = !DILocation(line: 488, column: 9, scope: !469, inlinedAt: !18989)
!22560 = !DILocation(line: 325, column: 9, scope: !471, inlinedAt: !18973)
!22561 = !DILocation(line: 195, column: 36, scope: !18971, inlinedAt: !18972)
!22562 = !DILocation(line: 322, column: 46, scope: !456, inlinedAt: !18973)
!22563 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19000)
!22564 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19001)
!22565 = !DILocation(line: 2534, column: 24, scope: !18965, inlinedAt: !18937)
!22566 = !DILocation(line: 2154, column: 12, scope: !444, inlinedAt: !19008)
!22567 = !DILocation(line: 1955, column: 21, scope: !445, inlinedAt: !19007)
!22568 = !DILocation(line: 2053, column: 74, scope: !459, inlinedAt: !19014)
!22569 = !DILocation(line: 45, column: 9, scope: !460, inlinedAt: !19023)
!22570 = !DILocation(line: 45, column: 17, scope: !460, inlinedAt: !19023)
!22571 = !DILocation(line: 2154, column: 12, scope: !444, inlinedAt: !19025)
!22572 = !DILocation(line: 1955, column: 21, scope: !445, inlinedAt: !19024)
!22573 = !DILocation(line: 863, column: 18, scope: !465, inlinedAt: !19029)
!22574 = !DILocation(line: 5621, column: 13, scope: !466, inlinedAt: !19031)
!22575 = !DILocation(line: 47, column: 6, scope: !464, inlinedAt: !19023)
!22576 = !DILocation(line: 55, column: 1, scope: !460, inlinedAt: !19023)
!22577 = !DILocation(line: 2587, column: 13, scope: !468, inlinedAt: !19032)
!22578 = !DILocation(line: 488, column: 9, scope: !469, inlinedAt: !19022)
!22579 = !DILocation(line: 325, column: 9, scope: !471, inlinedAt: !19006)
!22580 = !DILocation(line: 190, column: 36, scope: !19004, inlinedAt: !19005)
!22581 = !DILocation(line: 322, column: 46, scope: !456, inlinedAt: !19006)
!22582 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19033)
!22583 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19034)
!22584 = !DILocation(line: 0, scope: !18962, inlinedAt: !18937)
!22585 = !DILocation(line: 0, scope: !18943, inlinedAt: !18937)
!22586 = !DILocation(line: 2548, column: 5, scope: !18961, inlinedAt: !18937)
!22587 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19035)
!22588 = !DILocation(line: 0, scope: !18944, inlinedAt: !18937)
!22589 = !DILocation(line: 2548, column: 13, scope: !18941, inlinedAt: !19037)
!22590 = !DILocation(line: 2444, column: 25, scope: !19038, inlinedAt: !18937)
!22591 = !DILocation(line: 2450, column: 34, scope: !19039, inlinedAt: !18937)
!22592 = !DILocation(line: 2451, column: 29, scope: !19039, inlinedAt: !18937)
!22593 = !DILocation(line: 2548, column: 13, scope: !18941, inlinedAt: !19040)
!22594 = !DILocation(line: 1077, column: 12, scope: !24, inlinedAt: !19042)
!22595 = !DILocation(line: 2450, column: 31, scope: !19039, inlinedAt: !18937)
!22596 = !DILocation(line: 0, scope: !19039, inlinedAt: !18937)
!22597 = !DILocation(line: 2450, column: 21, scope: !19039, inlinedAt: !18937)
!22598 = !DILocation(line: 2456, column: 21, scope: !19039, inlinedAt: !18937)
!22599 = !DILocation(line: 2457, column: 21, scope: !19039, inlinedAt: !18937)
!22600 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19043)
!22601 = !DILocation(line: 1077, column: 12, scope: !24, inlinedAt: !19045)
!22602 = !DILocation(line: 2459, column: 55, scope: !19039, inlinedAt: !18937)
!22603 = !DILocation(line: 2473, column: 24, scope: !19046, inlinedAt: !18937)
!22604 = !DILocation(line: 2487, column: 17, scope: !19038, inlinedAt: !18937)
!22605 = !DILocation(line: 2491, column: 53, scope: !19036, inlinedAt: !18937)
!22606 = !DILocation(line: 2587, column: 13, scope: !19047, inlinedAt: !19048)
!22607 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19049)
!22608 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19050)
!22609 = !DILocation(line: 1077, column: 12, scope: !24, inlinedAt: !19052)
!22610 = !DILocation(line: 2496, column: 41, scope: !19036, inlinedAt: !18937)
!22611 = !DILocation(line: 49, column: 8, scope: !19053, inlinedAt: !19054)
!22612 = !DILocation(line: 2548, column: 13, scope: !19055, inlinedAt: !19056)
!22613 = !DILocation(line: 68, column: 2, scope: !19053, inlinedAt: !19054)
!22614 = !DILocation(line: 2511, column: 13, scope: !19057, inlinedAt: !19058)
!22615 = !DILocation(line: 51, column: 59, scope: !19061, inlinedAt: !19054)
!22616 = !DILocation(line: 2548, column: 13, scope: !19055, inlinedAt: !19062)
!22617 = !DILocation(line: 52, column: 59, scope: !19063, inlinedAt: !19054)
!22618 = !DILocation(line: 2548, column: 13, scope: !19055, inlinedAt: !19064)
!22619 = !DILocation(line: 53, column: 12, scope: !19065, inlinedAt: !19054)
!22620 = !DILocation(line: 55, column: 19, scope: !19065, inlinedAt: !19054)
!22621 = !DILocation(line: 57, column: 19, scope: !19065, inlinedAt: !19054)
!22622 = !DILocation(line: 59, column: 19, scope: !19065, inlinedAt: !19054)
!22623 = !DILocation(line: 58, column: 21, scope: !19065, inlinedAt: !19054)
!22624 = !DILocation(line: 58, column: 20, scope: !19065, inlinedAt: !19054)
!22625 = !DILocation(line: 58, column: 13, scope: !19065, inlinedAt: !19054)
!22626 = !DILocation(line: 60, column: 21, scope: !19065, inlinedAt: !19054)
!22627 = !DILocation(line: 60, column: 20, scope: !19065, inlinedAt: !19054)
!22628 = !DILocation(line: 60, column: 13, scope: !19065, inlinedAt: !19054)
!22629 = !DILocation(line: 61, column: 31, scope: !19065, inlinedAt: !19054)
!22630 = !DILocation(line: 61, column: 19, scope: !19065, inlinedAt: !19054)
!22631 = !DILocation(line: 63, column: 31, scope: !19065, inlinedAt: !19054)
!22632 = !DILocation(line: 63, column: 19, scope: !19065, inlinedAt: !19054)
!22633 = !DILocation(line: 0, scope: !19053, inlinedAt: !19054)
!22634 = !DILocation(line: 2497, column: 20, scope: !19066, inlinedAt: !18937)
!22635 = !DILocation(line: 2473, column: 43, scope: !19046, inlinedAt: !18937)
!22636 = !DILocation(line: 2473, column: 56, scope: !19046, inlinedAt: !18937)
!22637 = !DILocation(line: 2511, column: 13, scope: !19067, inlinedAt: !19068)
!22638 = !DILocation(line: 2473, column: 42, scope: !19046, inlinedAt: !18937)
!22639 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19069)
!22640 = !DILocation(line: 2476, column: 30, scope: !19046, inlinedAt: !18937)
!22641 = !DILocation(line: 2477, column: 28, scope: !19046, inlinedAt: !18937)
!22642 = !DILocation(line: 2478, column: 29, scope: !19046, inlinedAt: !18937)
!22643 = !DILocation(line: 2440, column: 13, scope: !19036, inlinedAt: !18937)
!22644 = !DILocation(line: 2193, column: 12, scope: !19070, inlinedAt: !19073)
!22645 = !DILocation(line: 1989, column: 21, scope: !19071, inlinedAt: !19072)
!22646 = !DILocation(line: 2498, column: 37, scope: !19066, inlinedAt: !18937)
!22647 = !DILocation(line: 2498, column: 21, scope: !19066, inlinedAt: !18937)
!22648 = !DILocation(line: 2500, column: 37, scope: !19066, inlinedAt: !18937)
!22649 = !DILocation(line: 2500, column: 21, scope: !19066, inlinedAt: !18937)
!22650 = !DILocation(line: 2501, column: 21, scope: !19066, inlinedAt: !18937)
!22651 = !DILocation(line: 2497, column: 17, scope: !19066, inlinedAt: !18937)
!22652 = !DILocation(line: 961, column: 18, scope: !19077, inlinedAt: !19082)
!22653 = !DILocation(line: 2109, column: 50, scope: !19080, inlinedAt: !19081)
!22654 = !DILocation(line: 2504, column: 17, scope: !19066, inlinedAt: !18937)
!22655 = !DILocation(line: 2512, column: 30, scope: !19083, inlinedAt: !18937)
!22656 = !DILocation(line: 2512, column: 21, scope: !19083, inlinedAt: !18937)
!22657 = !DILocation(line: 2508, column: 24, scope: !19083, inlinedAt: !18937)
!22658 = !DILocation(line: 2516, column: 29, scope: !19036, inlinedAt: !18937)
!22659 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19084)
!22660 = !DILocation(line: 2516, column: 13, scope: !19036, inlinedAt: !18937)
!22661 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19085)
!22662 = !DILocation(line: 2522, column: 43, scope: !19036, inlinedAt: !18937)
!22663 = !DILocation(line: 2511, column: 13, scope: !18945, inlinedAt: !19086)
!22664 = !DILocation(line: 1077, column: 12, scope: !24, inlinedAt: !19088)
!22665 = !DILocation(line: 2518, column: 20, scope: !19036, inlinedAt: !18937)
!22666 = !DILocation(line: 262, column: 22, scope: !19090, inlinedAt: !19093)
!22667 = !DILocation(line: 262, column: 12, scope: !19090, inlinedAt: !19093)
!22668 = !DILocation(line: 263, column: 31, scope: !19090, inlinedAt: !19093)
!22669 = !DILocation(line: 1917, column: 50, scope: !19094, inlinedAt: !19101)
!22670 = !DILocation(line: 781, column: 12, scope: !19095, inlinedAt: !19100)
!22671 = !DILocation(line: 281, column: 31, scope: !19097, inlinedAt: !19093)
!22672 = !DILocation(line: 281, column: 20, scope: !19097, inlinedAt: !19093)
!22673 = !DILocation(line: 284, column: 6, scope: !19089, inlinedAt: !19093)
!22674 = !DILocation(line: 898, column: 17, scope: !19102, inlinedAt: !19106)
!22675 = !DILocation(line: 265, column: 37, scope: !19107, inlinedAt: !19093)
!22676 = !DILocation(line: 265, column: 25, scope: !19107, inlinedAt: !19093)
!22677 = !DILocation(line: 2154, column: 12, scope: !444, inlinedAt: !19110)
!22678 = !DILocation(line: 1955, column: 21, scope: !445, inlinedAt: !19109)
!22679 = !DILocation(line: 2053, column: 74, scope: !459, inlinedAt: !19114)
!22680 = !DILocation(line: 2154, column: 12, scope: !444, inlinedAt: !19116)
!22681 = !DILocation(line: 1955, column: 21, scope: !445, inlinedAt: !19115)
!22682 = !DILocation(line: 863, column: 18, scope: !465, inlinedAt: !19120)
!22683 = !DILocation(line: 45, column: 9, scope: !460, inlinedAt: !19133)
!22684 = !DILocation(line: 45, column: 17, scope: !460, inlinedAt: !19133)
!22685 = !DILocation(line: 5621, column: 13, scope: !466, inlinedAt: !19135)
!22686 = !DILocation(line: 47, column: 6, scope: !464, inlinedAt: !19133)
!22687 = !DILocation(line: 55, column: 1, scope: !460, inlinedAt: !19133)
!22688 = !DILocation(line: 2587, column: 13, scope: !468, inlinedAt: !19136)
!22689 = !DILocation(line: 488, column: 9, scope: !469, inlinedAt: !19132)
!22690 = !DILocation(line: 863, column: 18, scope: !465, inlinedAt: !19141)
!22691 = !DILocation(line: 45, column: 9, scope: !460, inlinedAt: !19148)
!22692 = !DILocation(line: 45, column: 17, scope: !460, inlinedAt: !19148)
!22693 = !DILocation(line: 5621, column: 13, scope: !466, inlinedAt: !19150)
!22694 = !DILocation(line: 47, column: 6, scope: !464, inlinedAt: !19148)
!22695 = !DILocation(line: 55, column: 1, scope: !460, inlinedAt: !19148)
!22696 = !DILocation(line: 2587, column: 13, scope: !468, inlinedAt: !19151)
!22697 = !DILocation(line: 488, column: 9, scope: !469, inlinedAt: !19147)
!22698 = !DILocation(line: 863, column: 18, scope: !465, inlinedAt: !19156)
!22699 = !DILocation(line: 45, column: 9, scope: !460, inlinedAt: !19163)
!22700 = !DILocation(line: 45, column: 17, scope: !460, inlinedAt: !19163)
!22701 = !DILocation(line: 5621, column: 13, scope: !466, inlinedAt: !19165)
!22702 = !DILocation(line: 47, column: 6, scope: !464, inlinedAt: !19163)
!22703 = !DILocation(line: 55, column: 1, scope: !460, inlinedAt: !19163)
!22704 = !DILocation(line: 2587, column: 13, scope: !468, inlinedAt: !19166)
!22705 = !DILocation(line: 488, column: 9, scope: !469, inlinedAt: !19162)
!22706 = !DILocation(line: 863, column: 18, scope: !465, inlinedAt: !19171)
!22707 = !DILocation(line: 45, column: 9, scope: !460, inlinedAt: !19178)
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.fmin.v4f32
!25340 = !DILocation(line: 1262, column: 31, scope: !21561, inlinedAt: !21548)
!25341 = !DILocation(line: 1273, column: 9, scope: !21564, inlinedAt: !21548)
!25342 = !DILocation(line: 1273, column: 31, scope: !21564, inlinedAt: !21548)
!25343 = !DILocation(line: 1275, column: 9, scope: !21565, inlinedAt: !21548)
!25344 = !DILocation(line: 551, column: 5, scope: !21566, inlinedAt: !21568)
!25345 = !DILocation(line: 1448, column: 1, scope: !21565, inlinedAt: !21548)
!25346 = !DILocation(line: 1280, column: 11, scope: !21571, inlinedAt: !21548)
!25347 = !DILocation(line: 0, scope: !21567, inlinedAt: !21548)
!25348 = !DILocation(line: 1372, column: 36, scope: !21571, inlinedAt: !21548)
!25349 = !DILocation(line: 1373, column: 39, scope: !21572, inlinedAt: !21548)
!25350 = !DILocation(line: 961, column: 18, scope: !21573, inlinedAt: !21581)
!25351 = !DILocation(line: 961, column: 18, scope: !21582, inlinedAt: !21593)
!25352 = !DILocation(line: 24, column: 9, scope: !21594, inlinedAt: !21595)
!25353 = !DILocation(line: 1374, column: 19, scope: !21578, inlinedAt: !21548)
!25354 = !DILocation(line: 306, column: 12, scope: !21596, inlinedAt: !21600)
!25355 = !DILocation(line: 961, column: 18, scope: !21601, inlinedAt: !21605)
!25356 = !DILocation(line: 961, column: 18, scope: !21606, inlinedAt: !21609)
!25357 = !DILocation(line: 1380, column: 14, scope: !21610, inlinedAt: !21548)
!25358 = !DILocation(line: 1380, column: 9, scope: !21610, inlinedAt: !21548)
!25359 = !DILocation(line: 310, column: 13, scope: !21603, inlinedAt: !21600)
!25360 = !DILocation(line: 1382, column: 36, scope: !21578, inlinedAt: !21548)
!25361 = !DILocation(line: 1384, column: 62, scope: !21614, inlinedAt: !21548)
!25362 = !DILocation(line: 551, column: 5, scope: !21615, inlinedAt: !21616)
!25363 = !DILocation(line: 1388, column: 13, scope: !21617, inlinedAt: !21548)
!25364 = !DILocation(line: 211, column: 62, scope: !21378, inlinedAt: !21618)
!25365 = !DILocation(line: 551, column: 5, scope: !21380, inlinedAt: !21619)
!25366 = !DILocation(line: 214, column: 17, scope: !21378, inlinedAt: !21618)
!25367 = !DILocation(line: 216, column: 29, scope: !21378, inlinedAt: !21618)
!25368 = !DILocation(line: 216, column: 17, scope: !21378, inlinedAt: !21618)
!25369 = !DILocation(line: 213, column: 25, scope: !21378, inlinedAt: !21618)
!25370 = !DILocation(line: 457, column: 14, scope: !161, inlinedAt: !21626)
!25371 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21630)
!25372 = !DILocation(line: 1920, column: 13, scope: !157, inlinedAt: !21624)
!25373 = !DILocation(line: 1920, column: 16, scope: !157, inlinedAt: !21624)
!25374 = !DILocation(line: 1920, column: 16, scope: !21346, inlinedAt: !21633)
!25375 = !DILocation(line: 1077, column: 12, scope: !128, inlinedAt: !21635)
!25376 = !DILocation(line: 1388, column: 5, scope: !21617, inlinedAt: !21548)
!25377 = !DILocation(line: 206, column: 9, scope: !21378, inlinedAt: !21618)
!25378 = !DILocation(line: 781, column: 12, scope: !21636, inlinedAt: !21640)
!25379 = !DILocation(line: 1917, column: 50, scope: !21641, inlinedAt: !21642)
!25380 = !DILocation(line: 464, column: 9, scope: !152, inlinedAt: !21646)
!25381 = !DILocation(line: 27, column: 18, scope: !154, inlinedAt: !21645)
!25382 = !DILocation(line: 29, column: 6, scope: !153, inlinedAt: !21645)
!25383 = !DILocation(line: 849, column: 19, scope: !21396, inlinedAt: !21644)
!25384 = !DILocation(line: 929, column: 22, scope: !21405, inlinedAt: !21650)
!25385 = !DILocation(line: 930, column: 49, scope: !21407, inlinedAt: !21650)
!25386 = !DILocation(line: 1920, column: 16, scope: !157, inlinedAt: !21654)
!25387 = !DILocation(line: 457, column: 14, scope: !161, inlinedAt: !21656)
!25388 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21660)
!25389 = !DILocation(line: 1920, column: 13, scope: !157, inlinedAt: !21654)
!25390 = !DILocation(line: 464, column: 9, scope: !152, inlinedAt: !21663)
!25391 = !DILocation(line: 27, column: 18, scope: !154, inlinedAt: !21662)
!25392 = !DILocation(line: 29, column: 6, scope: !153, inlinedAt: !21662)
!25393 = !DILocation(line: 849, column: 19, scope: !21396, inlinedAt: !21661)
!25394 = !DILocation(line: 929, column: 22, scope: !21405, inlinedAt: !21664)
!25395 = !DILocation(line: 930, column: 49, scope: !21422, inlinedAt: !21664)
!25396 = !DILocation(line: 1920, column: 16, scope: !157, inlinedAt: !21668)
!25397 = !DILocation(line: 457, column: 14, scope: !161, inlinedAt: !21670)
!25398 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21674)
!25399 = !DILocation(line: 1920, column: 13, scope: !157, inlinedAt: !21668)
!25400 = !DILocation(line: 1920, column: 16, scope: !21346, inlinedAt: !21678)
!25401 = !DILocation(line: 457, column: 14, scope: !21352, inlinedAt: !21680)
!25402 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21684)
!25403 = !DILocation(line: 1920, column: 13, scope: !21346, inlinedAt: !21678)
!25404 = !DILocation(line: 1920, column: 16, scope: !21687, inlinedAt: !21694)
!25405 = !DILocation(line: 457, column: 14, scope: !21695, inlinedAt: !21698)
!25406 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21702)
!25407 = !DILocation(line: 1920, column: 13, scope: !21687, inlinedAt: !21694)
!25408 = !DILocation(line: 1920, column: 16, scope: !27, inlinedAt: !21706)
!25409 = !DILocation(line: 457, column: 14, scope: !30, inlinedAt: !21708)
!25410 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21712)
!25411 = !DILocation(line: 1920, column: 13, scope: !27, inlinedAt: !21706)
!25412 = !DILocation(line: 810, column: 1, scope: !192, inlinedAt: !21715)
!25413 = !DILocation(line: 1920, column: 16, scope: !157, inlinedAt: !21718)
!25414 = !DILocation(line: 457, column: 14, scope: !161, inlinedAt: !21720)
!25415 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21724)
!25416 = !DILocation(line: 1920, column: 13, scope: !157, inlinedAt: !21718)
!25417 = !DILocation(line: 1920, column: 16, scope: !157, inlinedAt: !21727)
!25418 = !DILocation(line: 457, column: 14, scope: !161, inlinedAt: !21729)
!25419 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21733)
!25420 = !DILocation(line: 1920, column: 13, scope: !157, inlinedAt: !21727)
!25421 = !DILocation(line: 898, column: 17, scope: !21734, inlinedAt: !21738)
!25422 = !DILocation(line: 62, column: 11, scope: !21741, inlinedAt: !21743)
!25423 = !DILocation(line: 1394, column: 12, scope: !21742, inlinedAt: !21548)
!25424 = !DILocation(line: 63, column: 9, scope: !21741, inlinedAt: !21743)
!25425 = !DILocation(line: 1395, column: 19, scope: !21742, inlinedAt: !21548)
!25426 = !DILocation(line: 2548, column: 13, scope: !21553, inlinedAt: !21744)
!25427 = !DILocation(line: 1397, column: 19, scope: !21742, inlinedAt: !21548)
!25428 = !DILocation(line: 1085, column: 13, scope: !21749, inlinedAt: !21750)
!25429 = !DILocation(line: 1085, column: 37, scope: !21749, inlinedAt: !21750)
!25430 = !DILocation(line: 1086, column: 13, scope: !21751, inlinedAt: !21750)
!25431 = !DILocation(line: 1086, column: 33, scope: !21751, inlinedAt: !21750)
!25432 = !DILocation(line: 1087, column: 13, scope: !21752, inlinedAt: !21750)
!25433 = !DILocation(line: 1087, column: 34, scope: !21752, inlinedAt: !21750)
!25434 = !DILocation(line: 1088, column: 13, scope: !21753, inlinedAt: !21750)
!25435 = !DILocation(line: 1094, column: 15, scope: !21758, inlinedAt: !21750)
!25436 = !DILocation(line: 1120, column: 9, scope: !21758, inlinedAt: !21750)
!25437 = !DILocation(line: 1126, column: 9, scope: !21758, inlinedAt: !21750)
!25438 = !DILocation(line: 1134, column: 13, scope: !21758, inlinedAt: !21750)
!25439 = !DILocation(line: 1136, column: 29, scope: !21758, inlinedAt: !21750)
!25440 = !DILocation(line: 1132, column: 9, scope: !21758, inlinedAt: !21750)
!25441 = !DILocation(line: 898, column: 17, scope: !21759, inlinedAt: !21768)
!25442 = !DILocation(line: 1139, column: 45, scope: !21769, inlinedAt: !21750)
!25443 = !DILocation(line: 1020, column: 9, scope: !21770, inlinedAt: !21771)
!25444 = !DILocation(line: 781, column: 12, scope: !21761, inlinedAt: !21766)
!25445 = !DILocation(line: 1096, column: 40, scope: !21758, inlinedAt: !21750)
!25446 = !DILocation(line: 1141, column: 9, scope: !21758, inlinedAt: !21750)
!25447 = !DILocation(line: 1143, column: 68, scope: !21758, inlinedAt: !21750)
!25448 = !DILocation(line: 1145, column: 36, scope: !21774, inlinedAt: !21750)
!25449 = !DILocation(line: 1146, column: 13, scope: !21775, inlinedAt: !21750)
!25450 = !DILocation(line: 1917, column: 50, scope: !21776, inlinedAt: !21780)
!25451 = !DILocation(line: 781, column: 12, scope: !21761, inlinedAt: !21779)
!25452 = !DILocation(line: 1149, column: 34, scope: !21781, inlinedAt: !21750)
!25453 = !DILocation(line: 0, scope: !21742, inlinedAt: !21548)
!25454 = !DILocation(line: 898, column: 17, scope: !21759, inlinedAt: !21784)
!25455 = !DILocation(line: 2511, column: 13, scope: !21785, inlinedAt: !21786)
!25456 = !DILocation(line: 1149, column: 45, scope: !21781, inlinedAt: !21750)
!25457 = !DILocation(line: 1150, column: 17, scope: !21781, inlinedAt: !21750)
!25458 = !DILocation(line: 1149, column: 21, scope: !21781, inlinedAt: !21750)
!25459 = !DILocation(line: 1148, column: 17, scope: !21781, inlinedAt: !21750)
!25460 = !DILocation(line: 1151, column: 34, scope: !21781, inlinedAt: !21750)
!25461 = !DILocation(line: 1151, column: 17, scope: !21781, inlinedAt: !21750)
!25462 = !DILocation(line: 25, column: 9, scope: !21787, inlinedAt: !21789)
!25463 = !DILocation(line: 1097, column: 41, scope: !21788, inlinedAt: !21750)
!25464 = !DILocation(line: 1098, column: 40, scope: !21790, inlinedAt: !21750)
!25465 = !DILocation(line: 1098, column: 39, scope: !21790, inlinedAt: !21750)
!25466 = !DILocation(line: 1099, column: 38, scope: !21791, inlinedAt: !21750)
!25467 = !DILocation(line: 1102, column: 37, scope: !21793, inlinedAt: !21750)
!25468 = !DILocation(line: 1102, column: 32, scope: !21793, inlinedAt: !21750)
!25469 = !DILocation(line: 1103, column: 29, scope: !21794, inlinedAt: !21750)
!25470 = !DILocation(line: 2511, column: 13, scope: !21795, inlinedAt: !21796)
!25471 = !DILocation(line: 1103, column: 21, scope: !21794, inlinedAt: !21750)
!25472 = !DILocation(line: 1105, column: 20, scope: !21792, inlinedAt: !21750)
!25473 = !DILocation(line: 1917, column: 50, scope: !21776, inlinedAt: !21800)
!25474 = !DILocation(line: 781, column: 12, scope: !21761, inlinedAt: !21799)
!25475 = !DILocation(line: 1107, column: 37, scope: !21801, inlinedAt: !21750)
!25476 = !DILocation(line: 1107, column: 32, scope: !21801, inlinedAt: !21750)
!25477 = !DILocation(line: 1108, column: 29, scope: !21802, inlinedAt: !21750)
!25478 = !DILocation(line: 2511, column: 13, scope: !21795, inlinedAt: !21803)
!25479 = !DILocation(line: 1108, column: 21, scope: !21802, inlinedAt: !21750)
!25480 = !DILocation(line: 1105, column: 17, scope: !21792, inlinedAt: !21750)
!25481 = !DILocation(line: 2511, column: 13, scope: !21785, inlinedAt: !21804)
!25482 = !DILocation(line: 2511, column: 13, scope: !21785, inlinedAt: !21805)
!25483 = !DILocation(line: 2511, column: 13, scope: !21785, inlinedAt: !21806)
!25484 = !DILocation(line: 2511, column: 13, scope: !21785, inlinedAt: !21809)
!25485 = !DILocation(line: 1113, column: 38, scope: !21808, inlinedAt: !21750)
!25486 = !DILocation(line: 1113, column: 27, scope: !21808, inlinedAt: !21750)
!25487 = !DILocation(line: 898, column: 17, scope: !21759, inlinedAt: !21812)
!25488 = !DILocation(line: 1113, column: 26, scope: !21808, inlinedAt: !21750)
!25489 = !DILocation(line: 1112, column: 32, scope: !21808, inlinedAt: !21750)
!25490 = !DILocation(line: 1114, column: 29, scope: !21813, inlinedAt: !21750)
!25491 = !DILocation(line: 2511, column: 13, scope: !21795, inlinedAt: !21814)
!25492 = !DILocation(line: 1114, column: 21, scope: !21813, inlinedAt: !21750)
!25493 = !DILocation(line: 1154, column: 5, scope: !21753, inlinedAt: !21750)
!25494 = !DILocation(line: 1154, column: 5, scope: !21752, inlinedAt: !21750)
!25495 = !DILocation(line: 1154, column: 5, scope: !21751, inlinedAt: !21750)
!25496 = !DILocation(line: 1154, column: 5, scope: !21749, inlinedAt: !21750)
!25497 = !DILocation(line: 1154, column: 6, scope: !21749, inlinedAt: !21750)
!25498 = !DILocation(line: 1406, column: 9, scope: !21742, inlinedAt: !21548)
!25499 = !DILocation(line: 1407, column: 9, scope: !21742, inlinedAt: !21548)
!25500 = !DILocation(line: 1408, column: 9, scope: !21742, inlinedAt: !21548)
!25501 = !DILocation(line: 24, column: 9, scope: !21594, inlinedAt: !21816)
!25502 = !DILocation(line: 1409, column: 23, scope: !21742, inlinedAt: !21548)
!25503 = !DILocation(line: 306, column: 12, scope: !21596, inlinedAt: !21819)
!25504 = !DILocation(line: 961, column: 18, scope: !21601, inlinedAt: !21821)
!25505 = !DILocation(line: 961, column: 18, scope: !21606, inlinedAt: !21823)
!25506 = !DILocation(line: 1415, column: 18, scope: !21824, inlinedAt: !21548)
!25507 = !DILocation(line: 1415, column: 13, scope: !21824, inlinedAt: !21548)
!25508 = !DILocation(line: 310, column: 13, scope: !21603, inlinedAt: !21819)
!25509 = !DILocation(line: 1417, column: 51, scope: !21742, inlinedAt: !21548)
!25510 = !DILocation(line: 1173, column: 9, scope: !21837, inlinedAt: !21838)
!25511 = !DILocation(line: 1176, column: 5, scope: !21841, inlinedAt: !21838)
!25512 = !DILocation(line: 1177, column: 5, scope: !21841, inlinedAt: !21838)
!25513 = !DILocation(line: 1180, column: 11, scope: !21841, inlinedAt: !21838)
!25514 = !DILocation(line: 843, column: 11, scope: !21435, inlinedAt: !21842)
!25515 = !DILocation(line: 843, column: 12, scope: !21435, inlinedAt: !21842)
!25516 = !DILocation(line: 843, column: 68, scope: !21435, inlinedAt: !21842)
!25517 = !DILocation(line: 2548, column: 13, scope: !21439, inlinedAt: !21845)
!25518 = !DILocation(line: 846, column: 5, scope: !21435, inlinedAt: !21842)
!25519 = !DILocation(line: 847, column: 11, scope: !21435, inlinedAt: !21842)
!25520 = !DILocation(line: 848, column: 19, scope: !21435, inlinedAt: !21842)
!25521 = !DILocation(line: 71, column: 9, scope: !21441, inlinedAt: !21847)
!25522 = !DILocation(line: 835, column: 27, scope: !21442, inlinedAt: !21846)
!25523 = !DILocation(line: 2511, column: 13, scope: !21445, inlinedAt: !21848)
!25524 = !DILocation(line: 2548, column: 13, scope: !21439, inlinedAt: !21849)
!25525 = !DILocation(line: 850, column: 9, scope: !21447, inlinedAt: !21842)
!25526 = !DILocation(line: 2511, column: 13, scope: !21449, inlinedAt: !21850)
!25527 = !DILocation(line: 1192, column: 17, scope: !21841, inlinedAt: !21838)
!25528 = !DILocation(line: 568, column: 12, scope: !21851, inlinedAt: !21854)
!25529 = !DILocation(line: 573, column: 27, scope: !21851, inlinedAt: !21854)
!25530 = !DILocation(line: 89, column: 24, scope: !21856, inlinedAt: !21858)
!25531 = !DILocation(line: 1182, column: 35, scope: !21841, inlinedAt: !21838)
!25532 = !DILocation(line: 1198, column: 16, scope: !21859, inlinedAt: !21838)
!25533 = !DILocation(line: 2511, column: 13, scope: !21860, inlinedAt: !21861)
!25534 = !DILocation(line: 1202, column: 16, scope: !21859, inlinedAt: !21838)
!25535 = !DILocation(line: 569, column: 13, scope: !21851, inlinedAt: !21854)
!25536 = !DILocation(line: 2548, column: 13, scope: !21862, inlinedAt: !21863)
!25537 = !DILocation(line: 1203, column: 34, scope: !21859, inlinedAt: !21838)
!25538 = !DILocation(line: 1203, column: 20, scope: !21859, inlinedAt: !21838)
!25539 = !DILocation(line: 1210, column: 16, scope: !21859, inlinedAt: !21838)
!25540 = !DILocation(line: 1214, column: 24, scope: !21859, inlinedAt: !21838)
!25541 = !DILocation(line: 412, column: 9, scope: !21864, inlinedAt: !21865)
!25542 = !DILocation(line: 1038, column: 12, scope: !20, inlinedAt: !21868)
!25543 = !DILocation(line: 0, scope: !21841, inlinedAt: !21838)
!25544 = !DILocation(line: 1201, column: 13, scope: !21859, inlinedAt: !21838)
!25545 = !DILocation(line: 2511, column: 13, scope: !21860, inlinedAt: !21869)
!25546 = !DILocation(line: 2511, column: 13, scope: !21860, inlinedAt: !21870)
!25547 = !DILocation(line: 2511, column: 13, scope: !21860, inlinedAt: !21871)
!25548 = !DILocation(line: 2511, column: 13, scope: !21860, inlinedAt: !21872)
!25549 = !DILocation(line: 1217, column: 21, scope: !21859, inlinedAt: !21838)
!25550 = !DILocation(line: 522, column: 35, scope: !560, inlinedAt: !21875)
!25551 = !DILocation(line: 522, column: 29, scope: !560, inlinedAt: !21875)
!25552 = !DILocation(line: 523, column: 22, scope: !560, inlinedAt: !21875)
!25553 = !DILocation(line: 523, column: 32, scope: !560, inlinedAt: !21875)
!25554 = !DILocation(line: 0, scope: !560, inlinedAt: !21875)
!25555 = !DILocation(line: 71, column: 9, scope: !561, inlinedAt: !21879)
!25556 = !DILocation(line: 430, column: 23, scope: !564, inlinedAt: !21878)
!25557 = !DILocation(line: 76, column: 9, scope: !565, inlinedAt: !21882)
!25558 = !DILocation(line: 429, column: 23, scope: !562, inlinedAt: !21878)
!25559 = !DILocation(line: 431, column: 23, scope: !566, inlinedAt: !21878)
!25560 = !DILocation(line: 2511, column: 13, scope: !568, inlinedAt: !21883)
!25561 = !DILocation(line: 2511, column: 13, scope: !568, inlinedAt: !21884)
!25562 = !DILocation(line: 434, column: 15, scope: !567, inlinedAt: !21878)
!25563 = !DILocation(line: 2548, column: 13, scope: !569, inlinedAt: !21885)
!25564 = !DILocation(line: 440, column: 15, scope: !567, inlinedAt: !21878)
!25565 = !DILocation(line: 88, column: 31, scope: !570, inlinedAt: !21886)
!25566 = !DILocation(line: 89, column: 12, scope: !571, inlinedAt: !21886)
!25567 = !DILocation(line: 436, column: 12, scope: !567, inlinedAt: !21878)
!25568 = !DILocation(line: 438, column: 9, scope: !567, inlinedAt: !21878)
!25569 = !DILocation(line: 434, column: 12, scope: !567, inlinedAt: !21878)
!25570 = !DILocation(line: 440, column: 9, scope: !567, inlinedAt: !21878)
!25571 = !DILocation(line: 441, column: 30, scope: !567, inlinedAt: !21878)
!25572 = !DILocation(line: 441, column: 42, scope: !567, inlinedAt: !21878)
!25573 = !DILocation(line: 0, scope: !567, inlinedAt: !21878)
!25574 = !DILocation(line: 526, column: 5, scope: !563, inlinedAt: !21875)
!25575 = !DILocation(line: 450, column: 9, scope: !572, inlinedAt: !21887)
!25576 = !DILocation(line: 450, column: 43, scope: !572, inlinedAt: !21887)
!25577 = !DILocation(line: 533, column: 8, scope: !563, inlinedAt: !21875)
!25578 = !DILocation(line: 534, column: 13, scope: !563, inlinedAt: !21875)
!25579 = !DILocation(line: 537, column: 23, scope: !563, inlinedAt: !21875)
!25580 = !DILocation(line: 538, column: 29, scope: !563, inlinedAt: !21875)
!25581 = !DILocation(line: 534, column: 27, scope: !563, inlinedAt: !21875)
!25582 = !DILocation(line: 540, column: 9, scope: !573, inlinedAt: !21875)
!25583 = !DILocation(line: 546, column: 15, scope: !573, inlinedAt: !21875)
!25584 = !DILocation(line: 547, column: 5, scope: !563, inlinedAt: !21875)
!25585 = !DILocation(line: 533, column: 5, scope: !563, inlinedAt: !21875)
!25586 = !DILocation(line: 1227, column: 64, scope: !21859, inlinedAt: !21838)
!25587 = !DILocation(line: 2511, column: 13, scope: !21860, inlinedAt: !21888)
!25588 = !DILocation(line: 2548, column: 13, scope: !21862, inlinedAt: !21889)
!25589 = !DILocation(line: 1212, column: 23, scope: !21859, inlinedAt: !21838)
!25590 = !DILocation(line: 0, scope: !21434, inlinedAt: !21842)
!25591 = !DILocation(line: 1235, column: 1, scope: !21837, inlinedAt: !21838)
!25592 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !21891)
!25593 = !DILocation(line: 1417, column: 9, scope: !21742, inlinedAt: !21548)
!25594 = !DILocation(line: 1432, column: 9, scope: !21742, inlinedAt: !21548)
!25595 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !21892)
!25596 = !DILocation(line: 457, column: 14, scope: !21352, inlinedAt: !21894)
!25597 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21898)
!25598 = !DILocation(line: 1920, column: 13, scope: !21346, inlinedAt: !21633)
!25599 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !21899)
!25600 = !DILocation(line: 1077, column: 12, scope: !24, inlinedAt: !21903)
!25601 = !DILocation(line: 2548, column: 13, scope: !21553, inlinedAt: !21905)
!25602 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !21908)
!25603 = !DILocation(line: 1288, column: 20, scope: !21907, inlinedAt: !21548)
!25604 = !DILocation(line: 1289, column: 50, scope: !21907, inlinedAt: !21548)
!25605 = !DILocation(line: 1289, column: 47, scope: !21907, inlinedAt: !21548)
!25606 = !DILocation(line: 1294, column: 21, scope: !21909, inlinedAt: !21548)
!25607 = !DILocation(line: 0, scope: !21907, inlinedAt: !21548)
!25608 = !DILocation(line: 1294, column: 27, scope: !21909, inlinedAt: !21548)
!25609 = !DILocation(line: 2587, column: 13, scope: !21558, inlinedAt: !21910)
!25610 = !DILocation(line: 551, column: 5, scope: !21566, inlinedAt: !21911)
!25611 = !DILocation(line: 1298, column: 24, scope: !21912, inlinedAt: !21548)
!25612 = !DILocation(line: 464, column: 9, scope: !577, inlinedAt: !21916)
!25613 = !DILocation(line: 27, column: 18, scope: !579, inlinedAt: !21915)
!25614 = !DILocation(line: 2193, column: 12, scope: !580, inlinedAt: !21918)
!25615 = !DILocation(line: 1989, column: 21, scope: !581, inlinedAt: !21917)
!25616 = !DILocation(line: 2154, column: 12, scope: !21919, inlinedAt: !21922)
!25617 = !DILocation(line: 1955, column: 21, scope: !21920, inlinedAt: !21921)
!25618 = !DILocation(line: 961, column: 18, scope: !21923, inlinedAt: !21930)
!25619 = !DILocation(line: 961, column: 18, scope: !21923, inlinedAt: !21937)
!25620 = !DILocation(line: 24, column: 9, scope: !21938, inlinedAt: !21941)
!25621 = !DILocation(line: 1299, column: 43, scope: !21912, inlinedAt: !21548)
!25622 = !DILocation(line: 306, column: 12, scope: !21942, inlinedAt: !21946)
!25623 = !DILocation(line: 961, column: 18, scope: !21947, inlinedAt: !21951)
!25624 = !DILocation(line: 961, column: 18, scope: !21952, inlinedAt: !21955)
!25625 = !DILocation(line: 1306, column: 36, scope: !21956, inlinedAt: !21548)
!25626 = !DILocation(line: 1306, column: 29, scope: !21956, inlinedAt: !21548)
!25627 = !DILocation(line: 310, column: 13, scope: !21949, inlinedAt: !21946)
!25628 = !DILocation(line: 29, column: 6, scope: !578, inlinedAt: !21915)
!25629 = !DILocation(line: 849, column: 19, scope: !21913, inlinedAt: !21914)
!25630 = !DILocation(line: 1920, column: 16, scope: !21687, inlinedAt: !21963)
!25631 = !DILocation(line: 457, column: 14, scope: !21695, inlinedAt: !21965)
!25632 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21969)
!25633 = !DILocation(line: 1920, column: 13, scope: !21687, inlinedAt: !21963)
!25634 = !DILocation(line: 1920, column: 16, scope: !21687, inlinedAt: !21972)
!25635 = !DILocation(line: 457, column: 14, scope: !21695, inlinedAt: !21974)
!25636 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !21978)
!25637 = !DILocation(line: 1920, column: 13, scope: !21687, inlinedAt: !21972)
!25638 = !DILocation(line: 0, scope: !21559, inlinedAt: !21548)
!25639 = !DILocation(line: 580, column: 12, scope: !21979, inlinedAt: !21982)
!25640 = !DILocation(line: 585, column: 27, scope: !21979, inlinedAt: !21982)
!25641 = !DILocation(line: 101, column: 24, scope: !21984, inlinedAt: !21986)
!25642 = !DILocation(line: 1319, column: 44, scope: !21907, inlinedAt: !21548)
!25643 = !DILocation(line: 581, column: 13, scope: !21979, inlinedAt: !21982)
!25644 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !21988)
!25645 = !DILocation(line: 1338, column: 13, scope: !21989, inlinedAt: !21548)
!25646 = !DILocation(line: 1339, column: 16, scope: !21989, inlinedAt: !21548)
!25647 = !DILocation(line: 0, scope: !21571, inlinedAt: !21548)
!25648 = !DILocation(line: 0, scope: !21562, inlinedAt: !21548)
!25649 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !21990)
!25650 = !DILocation(line: 2548, column: 13, scope: !21553, inlinedAt: !21991)
!25651 = !DILocation(line: 2548, column: 13, scope: !21553, inlinedAt: !21992)
!25652 = !DILocation(line: 1341, column: 35, scope: !21989, inlinedAt: !21548)
!25653 = !DILocation(line: 412, column: 9, scope: !21993, inlinedAt: !21994)
!25654 = !DILocation(line: 1342, column: 20, scope: !21995, inlinedAt: !21548)
!25655 = !DILocation(line: 2548, column: 13, scope: !21553, inlinedAt: !21996)
!25656 = !DILocation(line: 1345, column: 21, scope: !21998, inlinedAt: !21548)
!25657 = !DILocation(line: 0, scope: !21989, inlinedAt: !21548)
!25658 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !21999)
!25659 = !DILocation(line: 1347, column: 21, scope: !21998, inlinedAt: !21548)
!25660 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !22000)
!25661 = !DILocation(line: 1077, column: 12, scope: !24, inlinedAt: !22002)
!25662 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !22003)
!25663 = !DILocation(line: 1348, column: 28, scope: !21998, inlinedAt: !21548)
!25664 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !22004)
!25665 = !DILocation(line: 2109, column: 50, scope: !584, inlinedAt: !22007)
!25666 = !DILocation(line: 2193, column: 12, scope: !585, inlinedAt: !22009)
!25667 = !DILocation(line: 1989, column: 21, scope: !586, inlinedAt: !22008)
!25668 = !DILocation(line: 1717, column: 9, scope: !22010, inlinedAt: !22016)
!25669 = !DILocation(line: 180, column: 28, scope: !22013, inlinedAt: !22015)
!25670 = !DILocation(line: 961, column: 18, scope: !22017, inlinedAt: !22024)
!25671 = !DILocation(line: 961, column: 18, scope: !587, inlinedAt: !22025)
!25672 = !DILocation(line: 1362, column: 25, scope: !22026, inlinedAt: !21548)
!25673 = !DILocation(line: 2511, column: 13, scope: !21890, inlinedAt: !22027)
!25674 = !DILocation(line: 1342, column: 17, scope: !21995, inlinedAt: !21548)
!25675 = !DILocation(line: 1920, column: 16, scope: !21687, inlinedAt: !22030)
!25676 = !DILocation(line: 457, column: 14, scope: !21695, inlinedAt: !22032)
!25677 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !22036)
!25678 = !DILocation(line: 1920, column: 13, scope: !21687, inlinedAt: !22030)
!25679 = !DILocation(line: 0, scope: !21547, inlinedAt: !21548)
!25680 = !DILocation(line: 1920, column: 16, scope: !21687, inlinedAt: !22039)
!25681 = !DILocation(line: 457, column: 14, scope: !21695, inlinedAt: !22041)
!25682 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !22045)
!25683 = !DILocation(line: 1920, column: 13, scope: !21687, inlinedAt: !22039)
!25684 = !DILocation(line: 1920, column: 16, scope: !27, inlinedAt: !22048)
!25685 = !DILocation(line: 457, column: 14, scope: !30, inlinedAt: !22050)
!25686 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !22054)
!25687 = !DILocation(line: 1920, column: 13, scope: !27, inlinedAt: !22048)
!25688 = !DILocation(line: 1448, column: 1, scope: !21564, inlinedAt: !21548)
!25689 = !DILocation(line: 1448, column: 2, scope: !21547, inlinedAt: !21548)
!25690 = !DILocation(line: 2578, column: 13, scope: !21320)
!25691 = distinct !DILocation(line: 1121, column: 17, scope: !119)
!25692 = !DILocation(line: 1119, column: 11, scope: !119)
!25693 = !DILocation(line: 1119, column: 5, scope: !119)
!25694 = !DILocation(line: 1123, column: 2, scope: !119)
!25695 = !DILocation(line: 2186, column: 74, scope: !120, inlinedAt: !25691)
!25696 = !DILocation(line: 2192, column: 75, scope: !120, inlinedAt: !25691)
!25697 = !DILocation(line: 0, scope: !120, inlinedAt: !25691)
!25698 = !DILocation(line: 1121, column: 14, scope: !119)
!25699 = !DILocation(line: 1121, column: 54, scope: !119)
!25700 = distinct !DISubprogram(name: "InitializeH6<alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc6encode12InitializeH6NtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet", scope: !714, file: !713, line: 1042, type: !666, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!25701 = distinct !DILexicalBlock(scope: !25700, file: !713, line: 1046, column: 5)
!25702 = distinct !DILexicalBlock(scope: !25701, file: !713, line: 1047, column: 5)
!25703 = distinct !DISubprogram(name: "allocate<u32, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8allocatemNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet", scope: !681, file: !680, line: 524, type: !665, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!25704 = distinct !DILocation(line: 525, column: 5, scope: !25703, inlinedAt: !25736)
!25705 = distinct !{!25705, !"_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet"}
!25706 = distinct !{!25706, !25705, !"_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!25707 = distinct !DILocation(line: 9, column: 8, scope: !260, inlinedAt: !25704)
!25708 = distinct !DILocation(line: 3678, column: 5, scope: !261, inlinedAt: !25707)
!25709 = distinct !DILocation(line: 24, column: 31, scope: !264, inlinedAt: !25708)
!25710 = distinct !DILocation(line: 221, column: 20, scope: !263, inlinedAt: !25709)
!25711 = distinct !DILocation(line: 9, column: 39, scope: !260, inlinedAt: !25704)
!25712 = distinct !DILocation(line: 778, column: 9, scope: !267, inlinedAt: !25711)
!25713 = distinct !DISubprogram(name: "allocate<u16, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8allocatetNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet", scope: !681, file: !680, line: 524, type: !665, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!25714 = distinct !DILexicalBlock(scope: !25702, file: !713, line: 1048, column: 5)
!25715 = distinct !DILocation(line: 525, column: 5, scope: !25713, inlinedAt: !25738)
!25716 = distinct !{!25716, !"_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet"}
!25717 = distinct !{!25717, !25716, !"_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!25718 = distinct !DILocation(line: 9, column: 8, scope: !250, inlinedAt: !25715)
!25719 = distinct !DILocation(line: 3678, column: 5, scope: !251, inlinedAt: !25718)
!25720 = distinct !DILocation(line: 24, column: 31, scope: !254, inlinedAt: !25719)
!25721 = distinct !DILocation(line: 221, column: 20, scope: !253, inlinedAt: !25720)
!25722 = distinct !DILocation(line: 9, column: 39, scope: !250, inlinedAt: !25715)
!25723 = distinct !DILocation(line: 778, column: 9, scope: !257, inlinedAt: !25722)
!25724 = distinct !DILocation(line: 1070, column: 1, scope: !25702)
!25725 = distinct !DILocation(line: 810, column: 1, scope: !29, inlinedAt: !25724)
!25726 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !25725)
!25727 = distinct !DILocation(line: 1919, column: 26, scope: !26, inlinedAt: !25726)
!25728 = distinct !DILocation(line: 255, column: 43, scope: !31, inlinedAt: !25727)
!25729 = distinct !DILocation(line: 1921, column: 24, scope: !27, inlinedAt: !25726)
!25730 = distinct !DILocation(line: 462, column: 23, scope: !9, inlinedAt: !25729)
!25731 = distinct !DILocation(line: 344, column: 9, scope: !8, inlinedAt: !25730)
!25732 = distinct !DILocation(line: 229, column: 22, scope: !7, inlinedAt: !25731)
!25733 = distinct !DISubprogram(name: "new", linkageName: "_RNvMse_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesNtB5_6H9Opts3new", scope: !906, file: !747, line: 605, type: !665, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!25734 = distinct !DILexicalBlock(scope: !25714, file: !713, line: 1050, column: 5)
!25735 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy12wrapping_sub", scope: !716, file: !677, line: 2547, type: !665, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
!25736 = !DILocation(line: 1049, column: 9, scope: !25702)
!25737 = !{!25706}
!25738 = !DILocation(line: 1051, column: 9, scope: !25714)
!25739 = !{!25717}
!25740 = !DILocation(line: 1055, column: 18, scope: !25734)
!25741 = !DILocation(line: 1065, column: 37, scope: !25734)
!25742 = !DILocation(line: 1046, column: 30, scope: !25700)
!25743 = !DILocation(line: 1046, column: 22, scope: !25700)
!25744 = !DILocation(line: 1047, column: 31, scope: !25701)
!25745 = !DILocation(line: 1047, column: 23, scope: !25701)
!25746 = !DILocation(line: 1049, column: 33, scope: !25702)
!25747 = !DILocation(line: 9, column: 8, scope: !260, inlinedAt: !25704)
!25748 = !DILocation(line: 3678, column: 5, scope: !261, inlinedAt: !25707)
!25749 = !DILocation(line: 590, column: 15, scope: !262, inlinedAt: !25710)
!25750 = !DILocation(line: 590, column: 9, scope: !262, inlinedAt: !25710)
!25751 = !DILocation(line: 0, scope: !262, inlinedAt: !25710)
!25752 = !DILocation(line: 592, column: 17, scope: !262, inlinedAt: !25710)
!25753 = !DILocation(line: 592, column: 25, scope: !265, inlinedAt: !25710)
!25754 = !DILocation(line: 591, column: 16, scope: !262, inlinedAt: !25710)
!25755 = !DILocation(line: 593, column: 9, scope: !262, inlinedAt: !25710)
!25756 = !DILocation(line: 24, column: 20, scope: !264, inlinedAt: !25708)
!25757 = !DILocation(line: 14, column: 22, scope: !266, inlinedAt: !25712)
!25758 = !DILocation(line: 9, column: 44, scope: !260, inlinedAt: !25704)
!25759 = !DILocation(line: 525, column: 5, scope: !25703, inlinedAt: !25736)
!25760 = !DILocation(line: 9, column: 8, scope: !250, inlinedAt: !25715)
!25761 = !DILocation(line: 3678, column: 5, scope: !251, inlinedAt: !25718)
!25762 = !DILocation(line: 590, column: 15, scope: !252, inlinedAt: !25721)
!25763 = !DILocation(line: 590, column: 9, scope: !252, inlinedAt: !25721)
!25764 = !DILocation(line: 0, scope: !252, inlinedAt: !25721)
!25765 = !DILocation(line: 592, column: 17, scope: !252, inlinedAt: !25721)
!25766 = !DILocation(line: 592, column: 25, scope: !255, inlinedAt: !25721)
!25767 = !DILocation(line: 591, column: 16, scope: !252, inlinedAt: !25721)
!25768 = !DILocation(line: 593, column: 9, scope: !252, inlinedAt: !25721)
!25769 = !DILocation(line: 24, column: 20, scope: !254, inlinedAt: !25719)
!25770 = !DILocation(line: 14, column: 22, scope: !256, inlinedAt: !25723)
!25771 = !DILocation(line: 1920, column: 16, scope: !27, inlinedAt: !25726)
!25772 = !DILocation(line: 457, column: 14, scope: !30, inlinedAt: !25728)
!25773 = !DILocation(line: 128, column: 14, scope: !6, inlinedAt: !25732)
!25774 = !DILocation(line: 1920, column: 13, scope: !27, inlinedAt: !25726)
!25775 = !DILocation(line: 9, column: 44, scope: !250, inlinedAt: !25715)
!25776 = !DILocation(line: 607, column: 36, scope: !25733, inlinedAt: !25740)
!25777 = !DILocation(line: 607, column: 33, scope: !25733, inlinedAt: !25740)
!25778 = !DILocation(line: 525, column: 5, scope: !25713, inlinedAt: !25738)
!25779 = !DILocation(line: 1052, column: 5, scope: !25734)
!25780 = !DILocation(line: 1057, column: 21, scope: !25734)
!25781 = !DILocation(line: 1063, column: 27, scope: !25734)
!25782 = !DILocation(line: 2548, column: 13, scope: !25735, inlinedAt: !25741)
!25783 = !DILocation(line: 1065, column: 26, scope: !25734)
!25784 = !DILocation(line: 1066, column: 58, scope: !25734)
!25785 = !DILocation(line: 1066, column: 24, scope: !25734)
!25786 = !DILocation(line: 1067, column: 26, scope: !25734)
!25787 = !DILocation(line: 1070, column: 2, scope: !25700)
!25788 = !DILocation(line: 1042, column: 1, scope: !25700)
!25789 = distinct !DISubprogram(name: "GetHashTableInternal<alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc6encode20GetHashTableInternalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet", scope: !714, file: !713, line: 1671, type: !666, scopeLine: 1671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !664)
end_hunk_3
