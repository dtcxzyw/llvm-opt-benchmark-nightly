Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.09?download=true
inline.NumInlined: 13762
inline.NumDeleted: 6781
loop-unroll.NumCompletelyUnrolled: 155
loop-unroll.NumRuntimeUnrolled: 281
loop-unroll.NumUnrolled: 436
begin_hunk_0_@_RINvNtCslFlrwjHoTci_14polars_compute3nan15is_not_nan_implNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core:bb.a
  %i.bj = lshr exact i64 %i.bi, 1, !dbg !17903
  %i.bk = add nuw i64 %i.bj, 1, !dbg !17903       ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 6, !dbg !17903
  br i1 %min.iters.check, label %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader170, label %vector.ph152, !dbg !17903

vector.ph152:                                     ; preds = %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader
  %n.vec = and i64 %i.bk, -4                      ; 4 uses
  %i.bl = shl i64 %n.vec, 1
  %i.bm = getelementptr i8, ptr %i.f, i64 %i.bl
  %i.bn = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.018.0.lcssa, i64 0
  br label %vector.body153, !dbg !17903

vector.body153:                                   ; preds = %vector.body153, %vector.ph152
  %index154 = phi i64 [ 0, %vector.ph152 ], [ %index.next163, %vector.body153 ], !dbg !17904 ; 2 uses
  %vec.phi155 = phi <2 x i64> [ %i.bn, %vector.ph152 ], [ %i.ce, %vector.body153 ]
  %vec.phi156 = phi <2 x i64> [ zeroinitializer, %vector.ph152 ], [ %i.cf, %vector.body153 ]
  %vec.phi157 = phi <2 x i64> [ zeroinitializer, %vector.ph152 ], [ %i.ca, %vector.body153 ]
  %vec.phi158 = phi <2 x i64> [ zeroinitializer, %vector.ph152 ], [ %i.cb, %vector.body153 ]
  %vec.ind159 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph152 ], [ %vec.ind.next164, %vector.body153 ] ; 3 uses
  %step.add160 = add nuw <2 x i64> %vec.ind159, splat (i64 2)
  %i.bo = shl i64 %index154, 1
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 4, !dbg !17905
  %wide.load161 = load <2 x i16>, ptr %next.gep, align 2, !dbg !17905
  %wide.load162 = load <2 x i16>, ptr %i.bp, align 2, !dbg !17905
  %i.bq = and <2 x i16> %wide.load161, splat (i16 32767), !dbg !17906
  %i.br = and <2 x i16> %wide.load162, splat (i16 32767), !dbg !17906
  %i.bs = icmp samesign ugt <2 x i16> %i.bq, splat (i16 31744), !dbg !17906 ; 2 uses
  %i.bt = icmp samesign ugt <2 x i16> %i.br, splat (i16 31744), !dbg !17906 ; 2 uses
  %i.bu = xor <2 x i1> %i.bs, splat (i1 true), !dbg !17907
  %i.bv = xor <2 x i1> %i.bt, splat (i1 true), !dbg !17907
  %i.bw = zext <2 x i1> %i.bu to <2 x i64>, !dbg !17908
  %i.bx = zext <2 x i1> %i.bv to <2 x i64>, !dbg !17908
  %i.by = shl nuw <2 x i64> %i.bw, %vec.ind159, !dbg !17908
  %i.bz = shl nuw <2 x i64> %i.bx, %step.add160, !dbg !17908
  %i.ca = or <2 x i64> %i.by, %vec.phi157, !dbg !17909 ; 2 uses
  %i.cb = or <2 x i64> %i.bz, %vec.phi158, !dbg !17909 ; 2 uses
  %i.cc = zext <2 x i1> %i.bs to <2 x i64>, !dbg !17910
  %i.cd = zext <2 x i1> %i.bt to <2 x i64>, !dbg !17910
  %i.ce = add <2 x i64> %vec.phi155, %i.cc, !dbg !17911 ; 2 uses
  %i.cf = add <2 x i64> %vec.phi156, %i.cd, !dbg !17911 ; 2 uses
  %index.next163 = add nuw i64 %index154, 4, !dbg !17904 ; 2 uses
  %vec.ind.next164 = add nuw <2 x i64> %vec.ind159, splat (i64 4)
  %i.cg = icmp eq i64 %index.next163, %n.vec, !dbg !17903
  br i1 %i.cg, label %middle.block165, label %vector.body153, !dbg !17903, !llvm.loop !17765

middle.block165:                                  ; preds = %vector.body153
  %bin.rdx166 = add <2 x i64> %i.cf, %i.ce, !dbg !17903
  %i.ch = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx166), !dbg !17903 ; 2 uses
  %bin.rdx167 = or <2 x i64> %i.cb, %i.ca, !dbg !17903
  %i.ci = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx167), !dbg !17903 ; 2 uses
  %cmp.n = icmp eq i64 %i.bk, %n.vec, !dbg !17903
  br i1 %cmp.n, label %.thread62.loopexit, label %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader170, !dbg !17903

_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader170: ; preds = %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader, %middle.block165
  %.sroa.018.189.ph = phi i64 [ %.sroa.018.0.lcssa, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader ], [ %i.ch, %middle.block165 ]
  %.sroa.022.088.ph = phi i64 [ 0, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader ], [ %i.ci, %middle.block165 ]
  %.sroa.054.087.ph = phi ptr [ %i.f, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader ], [ %i.bm, %middle.block165 ]
  %.sroa.7.086.ph = phi i64 [ 0, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader ], [ %n.vec, %middle.block165 ]
  br label %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit, !dbg !17903

_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader170, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.018.189 = phi i64 [ %i.cs, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit ], [ %.sroa.018.189.ph, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader170 ]
  %.sroa.022.088 = phi i64 [ %i.cq, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit ], [ %.sroa.022.088.ph, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader170 ]
  %.sroa.054.087 = phi ptr [ %i.ck, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit ], [ %.sroa.054.087.ph, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader170 ] ; 2 uses
  %.sroa.7.086 = phi i64 [ %i.cj, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit ], [ %.sroa.7.086.ph, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit.preheader170 ] ; 2 uses
  %i.cj = add nuw nsw i64 %.sroa.7.086, 1, !dbg !17904
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 2, !dbg !17912 ; 2 uses
  %.val = load i16, ptr %.sroa.054.087, align 2, !dbg !17905, !noundef !7548
  %i.cl = and i16 %.val, 32767, !dbg !17906
  %i.cm = icmp samesign ugt i16 %i.cl, 31744, !dbg !17906 ; 2 uses
  %i.cn = xor i1 %i.cm, true, !dbg !17907
  %i.co = zext i1 %i.cn to i64, !dbg !17908
  %i.cp = shl nuw i64 %i.co, %.sroa.7.086, !dbg !17908
  %i.cq = or i64 %i.cp, %.sroa.022.088, !dbg !17909 ; 2 uses
  %i.cr = zext i1 %i.cm to i64, !dbg !17910
  %i.cs = add i64 %.sroa.018.189, %i.cr, !dbg !17911 ; 2 uses
  %i.ct = icmp eq ptr %i.ck, %i.bh, !dbg !17913
  br i1 %i.ct, label %.thread62.loopexit, label %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit, !dbg !17903, !llvm.loop !17768

.thread62.loopexit:                               ; preds = %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit, %middle.block165
  %.lcssa126 = phi i64 [ %i.ci, %middle.block165 ], [ %i.cq, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !17909
  %.lcssa = phi i64 [ %i.ch, %middle.block165 ], [ %i.cs, %_RNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs1LHh8CLbVkQ_11polars_core.exit ], !dbg !17911
  %i.cu = xor i64 %.lcssa126, %.sroa.0.0, !dbg !17914
  br label %.thread62, !dbg !17914

.thread62:                                        ; preds = %.thread62.loopexit, %._crit_edge
  %.sroa.022.0.lcssa = phi i64 [ %.sroa.0.0, %._crit_edge ], [ %i.cu, %.thread62.loopexit ], !dbg !17915
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0.lcssa, %._crit_edge ], [ %.lcssa, %.thread62.loopexit ], !dbg !17901 ; 2 uses
  %i.cv = load i64, ptr %i.be, align 8, !dbg !17916, !alias.scope !17840, !noundef !7548 ; 3 uses
  %i.cw = load i64, ptr %i.d, align 8, !dbg !17917, !range !7638, !alias.scope !17840, !noundef !7548
  %i.cx = icmp eq i64 %i.cv, %i.cw, !dbg !17918
  br i1 %i.cx, label %bb.i, label %bb.j, !dbg !17918

bb.i:                                             ; preds = %.thread62
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17919

bb.j:                                             ; preds = %.thread62, %bb.i
  %i.cy = load ptr, ptr %i.bd, align 8, !dbg !17920, !alias.scope !17840, !nonnull !7548, !noundef !7548
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cv, !dbg !17921
  store i64 %.sroa.022.0.lcssa, ptr %i.cz, align 8, !dbg !17922
  %i.da = add i64 %i.cv, 1, !dbg !17923
  store i64 %i.da, ptr %i.be, align 8, !dbg !17923, !alias.scope !17840
  %i.db = sub i64 %2, %.sroa.018.1.lcssa
  %spec.select = select i1 %3, i64 %i.db, i64 %.sroa.018.1.lcssa, !dbg !17924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !17926
  %i.dc = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageyE8from_vecCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !dbg !17925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17927
  %i.dd = call { i64, ptr } @_RINvMsa_NtCsknLZRuU4977_13polars_buffer7storageINtB6_13SharedStorageyE13try_transmutehECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.dc), !dbg !17928 ; 2 uses
  %i.de = extractvalue { i64, ptr } %i.dd, 0, !dbg !17925 ; 2 uses
  %i.df = extractvalue { i64, ptr } %i.dd, 1, !dbg !17925 ; 2 uses
  store i64 %i.de, ptr %i.c, align 8, !dbg !17925
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17925 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !dbg !17925
  %i.dh = trunc nuw i64 %i.de to i1, !dbg !17929  ; 2 uses
  %. = select i1 %i.dh, ptr null, ptr %i.df, !dbg !17930 ; 2 uses
  br i1 %i.dh, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit, !dbg !17931

bb.k:                                             ; preds = %bb.j
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dg), !dbg !17932
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit, !dbg !17932

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17933
  %.not45 = icmp eq ptr %., null, !dbg !17934
  br i1 %.not45, label %bb.m, label %bb.l, !dbg !17935, !prof !7680

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit
  store ptr %., ptr %0, align 8, !dbg !17936
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17936
  store i64 0, ptr %.sroa.231.0..sroa_idx, align 8, !dbg !17936
  %.sroa.332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17936
  store i64 %2, ptr %.sroa.332.0..sroa_idx, align 8, !dbg !17936
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17936
  store i64 %spec.select, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !17936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17937
  br label %bb.f, !dbg !17889

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #47, !dbg !17938
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.08.085 = phi i64 [ %.sroa.08.1, %.loopexit ], [ %i.as, %.lr.ph.preheader ] ; 2 uses
  %.sroa.018.084 = phi i64 [ %i.ef, %.loopexit ], [ 0, %.lr.ph.preheader ]
  %i.di = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %.sroa.08.085, !dbg !17939
  br label %vector.body140, !dbg !17900

vector.body140:                                   ; preds = %vector.body140, %.lr.ph
  %index141 = phi i64 [ 0, %.lr.ph ], [ %index.next148, %vector.body140 ], !dbg !17940 ; 2 uses
  %vec.phi142 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.du, %vector.body140 ]
  %vec.phi143 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dv, %vector.body140 ]
  %vec.ind144 = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph ], [ %vec.ind.next149, %vector.body140 ] ; 3 uses
  %step.add145 = add nuw <2 x i64> %vec.ind144, splat (i64 2)
  %i.dj = shl nuw i64 %index141, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj, !dbg !17941 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4, !dbg !17942
  %wide.load146 = load <2 x i16>, ptr %i.dk, align 2, !dbg !17942, !alias.scope !17844
  %wide.load147 = load <2 x i16>, ptr %i.dl, align 2, !dbg !17942, !alias.scope !17844
  %i.dm = and <2 x i16> %wide.load146, splat (i16 32767), !dbg !17943
  %i.dn = and <2 x i16> %wide.load147, splat (i16 32767), !dbg !17943
  %i.do = icmp samesign ugt <2 x i16> %i.dm, splat (i16 31744), !dbg !17943
  %i.dp = icmp samesign ugt <2 x i16> %i.dn, splat (i16 31744), !dbg !17943
  %i.dq = zext <2 x i1> %i.do to <2 x i64>, !dbg !17944
  %i.dr = zext <2 x i1> %i.dp to <2 x i64>, !dbg !17944
  %i.ds = shl nuw <2 x i64> %i.dq, %vec.ind144, !dbg !17944
  %i.dt = shl nuw <2 x i64> %i.dr, %step.add145, !dbg !17944
  %i.du = or <2 x i64> %i.ds, %vec.phi142, !dbg !17945 ; 2 uses
  %i.dv = or <2 x i64> %i.dt, %vec.phi143, !dbg !17945 ; 2 uses
  %index.next148 = add nuw i64 %index141, 4, !dbg !17940 ; 2 uses
  %vec.ind.next149 = add nuw <2 x i64> %vec.ind144, splat (i64 4)
  %i.dw = icmp eq i64 %index.next148, 64, !dbg !17900
  br i1 %i.dw, label %middle.block150, label %vector.body140, !dbg !17900, !llvm.loop !17795

middle.block150:                                  ; preds = %vector.body140
  %bin.rdx151 = or <2 x i64> %i.dv, %i.du, !dbg !17900
  %i.dx = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx151), !dbg !17900 ; 3 uses
  %.reass.reass = xor i64 %i.dx, %invariant.op
  %i.dy = load i64, ptr %i.be, align 8, !dbg !17946, !alias.scope !17845, !noundef !7548 ; 3 uses
  %i.dz = load i64, ptr %i.d, align 8, !dbg !17947, !range !7638, !alias.scope !17845, !noundef !7548
  %i.ea = icmp eq i64 %i.dy, %i.dz, !dbg !17948
  br i1 %i.ea, label %bb.n, label %bb.o, !dbg !17948

bb.n:                                             ; preds = %middle.block150
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17949

bb.o:                                             ; preds = %middle.block150, %bb.n
  %i.eb = load ptr, ptr %i.bd, align 8, !dbg !17950, !alias.scope !17845, !nonnull !7548, !noundef !7548
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dy, !dbg !17951
  store i64 %.reass.reass, ptr %i.ec, align 8, !dbg !17952
  %i.ed = add i64 %i.dy, 1, !dbg !17953           ; 2 uses
  store i64 %i.ed, ptr %i.be, align 8, !dbg !17953, !alias.scope !17845
  %i.ee = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dx), !dbg !17954
  %i.ef = add i64 %i.ee, %.sroa.018.084, !dbg !17955 ; 3 uses
  %i.eg = add nuw nsw i64 %.sroa.08.085, 1, !dbg !17956 ; 3 uses
  %i.eh = icmp eq i64 %i.dx, 0, !dbg !17957
  %i.ei = icmp samesign ult i64 %i.eg, %i.at
  %or.cond = and i1 %i.ei, %i.eh, !dbg !17957
  br i1 %or.cond, label %.preheader, label %.loopexit, !dbg !17957

.loopexit:                                        ; preds = %.preheader, %bb.o
  %.sroa.08.1 = phi i64 [ %i.eg, %bb.o ], [ %.sroa.08.2, %.preheader ], !dbg !17958 ; 2 uses
  %i.ej = icmp ult i64 %.sroa.08.1, %i.at, !dbg !17899
  br i1 %i.ej, label %.lr.ph, label %._crit_edge, !dbg !17899

.preheader:                                       ; preds = %bb.o, %bb.r
  %i.ek = phi i64 [ %i.er, %bb.r ], [ %i.ed, %bb.o ] ; 3 uses
  %.sroa.08.2 = phi i64 [ %i.es, %bb.r ], [ %i.eg, %bb.o ], !dbg !17958 ; 3 uses
  %i.el = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %.sroa.08.2, !dbg !17959
  %i.em = call fastcc noundef zeroext i1 @_RINvNtCslFlrwjHoTci_14polars_compute3nan13chunk_has_nanNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(128) %i.el), !dbg !17960
  br i1 %i.em, label %.loopexit, label %bb.p, !dbg !17960

bb.p:                                             ; preds = %.preheader
  %i.en = load i64, ptr %i.d, align 8, !dbg !17961, !range !7638, !alias.scope !17848, !noundef !7548
  %i.eo = icmp eq i64 %i.ek, %i.en, !dbg !17962
  br i1 %i.eo, label %bb.q, label %bb.r, !dbg !17962

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17963

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ep = load ptr, ptr %i.bd, align 8, !dbg !17964, !alias.scope !17848, !nonnull !7548, !noundef !7548
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ek, !dbg !17965
  store i64 %i.bf, ptr %i.eq, align 8, !dbg !17966
  %i.er = add i64 %i.ek, 1, !dbg !17967           ; 2 uses
  store i64 %i.er, ptr %i.be, align 8, !dbg !17967, !alias.scope !17848
  %i.es = add nuw nsw i64 %.sroa.08.2, 1, !dbg !17968 ; 2 uses
  %exitcond.not = icmp eq i64 %i.es, %i.at, !dbg !17969
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !17969

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp178, !dbg !17970

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.n, %bb.h, %bb.i
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #46
          to label %bb.s unwind label %bb.t, !dbg !17937

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !17970
  unreachable, !dbg !17970
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCslFlrwjHoTci_14polars_compute3nan15is_not_nan_impldECs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !17971 !guid !18158 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %.sroa.0.0 = sext i1 %3 to i64, !dbg !18191     ; 4 uses
  %i.e = and i64 %2, 1152921504606846912, !dbg !18192
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e, !dbg !18193 ; 6 uses
  %i.g = and i64 %2, 63, !dbg !18194              ; 5 uses
  %i.h = shl nuw nsw i64 %2, 3, !dbg !18195
  %.idx21.i = and i64 %i.h, 9223372036854775296, !dbg !18195 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.idx21.i, !dbg !18195
  %i.j = icmp samesign eq i64 %.idx21.i, 0, !dbg !18196
  br i1 %i.j, label %._crit_edge.i, label %.lr.ph.preheader.i, !dbg !18197

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.k = add nsw i64 %.idx21.i, -512, !dbg !18198
  %i.l = lshr exact i64 %i.k, 3, !dbg !18198
  %i.m = add nuw nsw i64 %i.l, 64, !dbg !18198
  br label %.lr.ph.i, !dbg !18198

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.01.020.i = phi i64 [ %i.af, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.09.019.i = phi ptr [ %i.ae, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.09.019.i, i64 256, !dbg !18199
  %i.o = load <32 x double>, ptr %.sroa.09.019.i, align 8, !dbg !18200, !alias.scope !18160
  %i.p = load <32 x double>, ptr %i.n, align 8, !dbg !18201, !alias.scope !18160
  %i.q = fcmp uno <32 x double> %i.o, %i.p, !dbg !18200
  %i.r = bitcast <32 x i1> %i.q to i32, !dbg !18202
  %.not236 = icmp eq i32 %i.r, 0, !dbg !18202
  br i1 %.not236, label %bb.b, label %vector.body, !dbg !18198

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ], !dbg !18203 ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ab, %vector.body ], [ zeroinitializer, %.lr.ph.i ]
  %vec.phi203 = phi <2 x i64> [ %i.ac, %vector.body ], [ zeroinitializer, %.lr.ph.i ]
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1>, %.lr.ph.i ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.s = shl nuw i64 %index, 3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.019.i, i64 %i.s, !dbg !18204 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !18205
  %wide.load = load <2 x double>, ptr %i.t, align 8, !dbg !18205, !alias.scope !18161
  %wide.load204 = load <2 x double>, ptr %i.u, align 8, !dbg !18205, !alias.scope !18161
  %i.v = fcmp uno <2 x double> %wide.load, zeroinitializer, !dbg !18206
  %i.w = fcmp uno <2 x double> %wide.load204, zeroinitializer, !dbg !18206
  %i.x = zext <2 x i1> %i.v to <2 x i64>, !dbg !18207
  %i.y = zext <2 x i1> %i.w to <2 x i64>, !dbg !18207
  %i.z = shl nuw <2 x i64> %i.x, %vec.ind, !dbg !18207
  %i.aa = shl nuw <2 x i64> %i.y, %step.add, !dbg !18207
  %i.ab = or <2 x i64> %i.z, %vec.phi, !dbg !18208 ; 2 uses
  %i.ac = or <2 x i64> %i.aa, %vec.phi203, !dbg !18208 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !18203 ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ad = icmp eq i64 %index.next, 64, !dbg !18209
  br i1 %i.ad, label %_RINvNtCslFlrwjHoTci_14polars_compute3nan14chunk_nan_maskdECs1LHh8CLbVkQ_11polars_core.exit.i, label %vector.body, !dbg !18209, !llvm.loop !18029

bb.b:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.019.i, i64 512, !dbg !18210 ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.01.020.i, 64, !dbg !18211
  %i.ag = icmp eq ptr %i.ae, %i.i, !dbg !18196
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i, !dbg !18197

_RINvNtCslFlrwjHoTci_14polars_compute3nan14chunk_nan_maskdECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.ac, %i.ab, !dbg !18209
  %i.ah = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx), !dbg !18209
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ah, i1 false), !dbg !18212
  %i.aj = add nuw i64 %i.ai, %.sroa.01.020.i, !dbg !18213
  br label %bb.e, !dbg !18214

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %.sroa.01.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.m, %bb.b ], !dbg !18215
  %.idx.i = shl nuw nsw i64 %i.g, 3, !dbg !18216
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i, !dbg !18216
  %i.al = icmp eq i64 %i.g, 0, !dbg !18217
  br i1 %i.al, label %.loopexit138, label %.lr.ph.i.i, !dbg !18218

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %bb.c
  %.sroa.02.08.i.i = phi i64 [ %i.ap, %bb.c ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.am = phi ptr [ %i.ao, %bb.c ], [ %i.f, %._crit_edge.i ] ; 2 uses
  %.val.i13.i = load double, ptr %i.am, align 8, !dbg !18219, !alias.scope !18165, !noalias !18166, !noundef !7548
  %i.an = fcmp uno double %.val.i13.i, 0.000000e+00, !dbg !18220
  br i1 %i.an, label %bb.d, label %bb.c, !dbg !18219

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !18221 ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.02.08.i.i, 1, !dbg !18222
  %i.aq = icmp eq ptr %i.ao, %i.ak, !dbg !18217
  br i1 %i.aq, label %.loopexit138, label %.lr.ph.i.i, !dbg !18218

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ar = icmp samesign ult i64 %.sroa.02.08.i.i, %i.g, !dbg !18223
  tail call void @llvm.assume(i1 %i.ar), !dbg !18224
  %i.as = add nuw nsw i64 %.sroa.02.08.i.i, %.sroa.01.0.lcssa.i, !dbg !18225
  br label %bb.e, !dbg !18225

bb.e:                                             ; preds = %_RINvNtCslFlrwjHoTci_14polars_compute3nan14chunk_nan_maskdECs1LHh8CLbVkQ_11polars_core.exit.i, %bb.d
  %.sroa.4.0.i.ph = phi i64 [ %i.as, %bb.d ], [ %i.aj, %_RINvNtCslFlrwjHoTci_14polars_compute3nan14chunk_nan_maskdECs1LHh8CLbVkQ_11polars_core.exit.i ]
  %i.at = lshr i64 %.sroa.4.0.i.ph, 6, !dbg !18226 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18227
  %i.au = lshr i64 %2, 6, !dbg !18228             ; 5 uses
  %.not = icmp ne i64 %i.g, 0, !dbg !18229        ; 2 uses
  %i.av = zext i1 %.not to i64, !dbg !18229
  %.sroa.016.0 = add nuw nsw i64 %i.au, %i.av, !dbg !18229 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18230
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.016.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !18230
  %i.aw = load i64, ptr %i.a, align 8, !dbg !18230, !range !7781, !noundef !7548
  %i.ax = trunc nuw i64 %i.aw to i1, !dbg !18231
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18232
  %i.az = load i64, ptr %i.ay, align 8, !dbg !18232, !range !7738, !noundef !7548 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18232 ; 2 uses
  br i1 %i.ax, label %bb.g, label %bb.h, !dbg !18231, !prof !7680

.loopexit138:                                     ; preds = %bb.c, %._crit_edge.i
  store ptr null, ptr %0, align 8, !dbg !18233
  br label %bb.f, !dbg !18234

bb.f:                                             ; preds = %bb.l, %.loopexit138
  ret void, !dbg !18234

bb.g:                                             ; preds = %bb.e
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !18235
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.bb) #47, !dbg !18236
  unreachable, !dbg !18236

bb.h:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.ba, align 8, !dbg !18237, !nonnull !7548, !noundef !7548
  %i.bd = icmp samesign ule i64 %.sroa.016.0, %i.az, !dbg !18238
  tail call void @llvm.assume(i1 %i.bd), !dbg !18239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18240
  store i64 %i.az, ptr %i.d, align 8, !dbg !18241
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18241 ; 4 uses
  store ptr %i.bc, ptr %i.be, align 8, !dbg !18241
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18241 ; 7 uses
  store i64 0, ptr %i.bf, align 8, !dbg !18241
  %i.bg = xor i64 %.sroa.0.0, -1, !dbg !18242     ; 2 uses
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE6resizeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.at, i64 noundef %i.bg)
          to label %.preheader134.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18243

.preheader134.split:                              ; preds = %bb.h
  %i.bh = icmp samesign ult i64 %i.at, %i.au, !dbg !18244
  br i1 %i.bh, label %.lr.ph.preheader, label %._crit_edge, !dbg !18244

.lr.ph.preheader:                                 ; preds = %.preheader134.split
  %invariant.op = xor i64 %.sroa.0.0, -1, !dbg !18245
  br label %.lr.ph, !dbg !18245

._crit_edge:                                      ; preds = %.loopexit, %bb.r, %.preheader134.split
  %.sroa.018.0.lcssa = phi i64 [ 0, %.preheader134.split ], [ %i.eb, %bb.r ], [ %i.eb, %.loopexit ], !dbg !18246 ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 3, !dbg !18247    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx, !dbg !18247
  br i1 %.not, label %.lr.ph155.preheader, label %.thread127, !dbg !18248

.lr.ph155.preheader:                              ; preds = %._crit_edge
  %i.bj = add nsw i64 %.idx, -8, !dbg !18248      ; 2 uses
  %i.bk = lshr exact i64 %i.bj, 3, !dbg !18248
  %i.bl = add nuw nsw i64 %i.bk, 1, !dbg !18248   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24, !dbg !18248
  br i1 %min.iters.check, label %.lr.ph155.preheader238, label %vector.ph218, !dbg !18248

vector.ph218:                                     ; preds = %.lr.ph155.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 4 uses
  %i.bm = shl i64 %n.vec, 3
  %i.bn = getelementptr i8, ptr %i.f, i64 %i.bm
  %i.bo = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.018.0.lcssa, i64 0
  br label %vector.body219, !dbg !18248

vector.body219:                                   ; preds = %vector.body219, %vector.ph218
  %index220 = phi i64 [ 0, %vector.ph218 ], [ %index.next229, %vector.body219 ], !dbg !18249 ; 2 uses
  %vec.phi221 = phi <2 x i64> [ %i.bo, %vector.ph218 ], [ %i.cd, %vector.body219 ]
  %vec.phi222 = phi <2 x i64> [ zeroinitializer, %vector.ph218 ], [ %i.ce, %vector.body219 ]
  %vec.phi223 = phi <2 x i64> [ zeroinitializer, %vector.ph218 ], [ %i.bz, %vector.body219 ]
  %vec.phi224 = phi <2 x i64> [ zeroinitializer, %vector.ph218 ], [ %i.ca, %vector.body219 ]
  %vec.ind225 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph218 ], [ %vec.ind.next230, %vector.body219 ] ; 3 uses
  %step.add226 = add nuw <2 x i64> %vec.ind225, splat (i64 2)
  %i.bp = shl i64 %index220, 3
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep, i64 16, !dbg !18250
  %wide.load227 = load <2 x double>, ptr %next.gep, align 8, !dbg !18250
  %wide.load228 = load <2 x double>, ptr %i.bq, align 8, !dbg !18250
  %i.br = fcmp uno <2 x double> %wide.load227, zeroinitializer, !dbg !18251 ; 2 uses
  %i.bs = fcmp uno <2 x double> %wide.load228, zeroinitializer, !dbg !18251 ; 2 uses
  %i.bt = xor <2 x i1> %i.br, splat (i1 true), !dbg !18252
  %i.bu = xor <2 x i1> %i.bs, splat (i1 true), !dbg !18252
  %i.bv = zext <2 x i1> %i.bt to <2 x i64>, !dbg !18253
  %i.bw = zext <2 x i1> %i.bu to <2 x i64>, !dbg !18253
  %i.bx = shl nuw <2 x i64> %i.bv, %vec.ind225, !dbg !18253
  %i.by = shl nuw <2 x i64> %i.bw, %step.add226, !dbg !18253
  %i.bz = or <2 x i64> %i.bx, %vec.phi223, !dbg !18254 ; 2 uses
  %i.ca = or <2 x i64> %i.by, %vec.phi224, !dbg !18254 ; 2 uses
  %i.cb = zext <2 x i1> %i.br to <2 x i64>, !dbg !18255
  %i.cc = zext <2 x i1> %i.bs to <2 x i64>, !dbg !18255
  %i.cd = add <2 x i64> %vec.phi221, %i.cb, !dbg !18256 ; 2 uses
  %i.ce = add <2 x i64> %vec.phi222, %i.cc, !dbg !18256 ; 2 uses
  %index.next229 = add nuw i64 %index220, 4, !dbg !18249 ; 2 uses
  %vec.ind.next230 = add nuw <2 x i64> %vec.ind225, splat (i64 4)
  %i.cf = icmp eq i64 %index.next229, %n.vec, !dbg !18248
  br i1 %i.cf, label %middle.block231, label %vector.body219, !dbg !18248, !llvm.loop !18103

middle.block231:                                  ; preds = %vector.body219
  %bin.rdx232 = add <2 x i64> %i.ce, %i.cd, !dbg !18248
  %i.cg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx232), !dbg !18248 ; 2 uses
  %bin.rdx233 = or <2 x i64> %i.ca, %i.bz, !dbg !18248
  %i.ch = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx233), !dbg !18248 ; 2 uses
  %cmp.n = icmp eq i64 %i.bl, %n.vec, !dbg !18248
  br i1 %cmp.n, label %.thread127.loopexit, label %.lr.ph155.preheader238, !dbg !18248

.lr.ph155.preheader238:                           ; preds = %.lr.ph155.preheader, %middle.block231
  %.sroa.018.1153.ph = phi i64 [ %.sroa.018.0.lcssa, %.lr.ph155.preheader ], [ %i.cg, %middle.block231 ]
  %.sroa.022.0152.ph = phi i64 [ 0, %.lr.ph155.preheader ], [ %i.ch, %middle.block231 ]
  %.sroa.0119.0151.ph = phi ptr [ %i.f, %.lr.ph155.preheader ], [ %i.bn, %middle.block231 ]
  %.sroa.7.0150.ph = phi i64 [ 0, %.lr.ph155.preheader ], [ %n.vec, %middle.block231 ]
  br label %.lr.ph155, !dbg !18248

.thread127.loopexit:                              ; preds = %.lr.ph155, %middle.block231
  %.lcssa192 = phi i64 [ %i.ch, %middle.block231 ], [ %i.dc, %.lr.ph155 ], !dbg !18254
  %.lcssa = phi i64 [ %i.cg, %middle.block231 ], [ %i.de, %.lr.ph155 ], !dbg !18256
  %i.ci = xor i64 %.lcssa192, %.sroa.0.0, !dbg !18257
  br label %.thread127, !dbg !18257

.thread127:                                       ; preds = %.thread127.loopexit, %._crit_edge
  %.sroa.022.0.lcssa = phi i64 [ %.sroa.0.0, %._crit_edge ], [ %i.ci, %.thread127.loopexit ], !dbg !18258
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0.lcssa, %._crit_edge ], [ %.lcssa, %.thread127.loopexit ], !dbg !18246 ; 2 uses
  %i.cj = load i64, ptr %i.bf, align 8, !dbg !18259, !alias.scope !18180, !noundef !7548 ; 3 uses
  %i.ck = load i64, ptr %i.d, align 8, !dbg !18260, !range !7638, !alias.scope !18180, !noundef !7548
  %i.cl = icmp eq i64 %i.cj, %i.ck, !dbg !18261
  br i1 %i.cl, label %bb.i, label %bb.j, !dbg !18261

bb.i:                                             ; preds = %.thread127
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18262

bb.j:                                             ; preds = %.thread127, %bb.i
  %i.cm = load ptr, ptr %i.be, align 8, !dbg !18263, !alias.scope !18180, !nonnull !7548, !noundef !7548
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cj, !dbg !18264
  store i64 %.sroa.022.0.lcssa, ptr %i.cn, align 8, !dbg !18265
  %i.co = add i64 %i.cj, 1, !dbg !18266
  store i64 %i.co, ptr %i.bf, align 8, !dbg !18266, !alias.scope !18180
  %i.cp = sub i64 %2, %.sroa.018.1.lcssa
  %spec.select = select i1 %3, i64 %i.cp, i64 %.sroa.018.1.lcssa, !dbg !18267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !18269
  %i.cq = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageyE8from_vecCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !dbg !18268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18270
  %i.cr = call { i64, ptr } @_RINvMsa_NtCsknLZRuU4977_13polars_buffer7storageINtB6_13SharedStorageyE13try_transmutehECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.cq), !dbg !18271 ; 2 uses
  %i.cs = extractvalue { i64, ptr } %i.cr, 0, !dbg !18268 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cr, 1, !dbg !18268 ; 2 uses
  store i64 %i.cs, ptr %i.c, align 8, !dbg !18268
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18268 ; 2 uses
  store ptr %i.ct, ptr %i.cu, align 8, !dbg !18268
  %i.cv = trunc nuw i64 %i.cs to i1, !dbg !18272  ; 2 uses
  %. = select i1 %i.cv, ptr null, ptr %i.ct, !dbg !18273 ; 2 uses
  br i1 %i.cv, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit, !dbg !18274

bb.k:                                             ; preds = %bb.j
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cu), !dbg !18275
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit, !dbg !18275

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18276
  %.not45 = icmp eq ptr %., null, !dbg !18277
  br i1 %.not45, label %bb.m, label %bb.l, !dbg !18278, !prof !7680

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit
  store ptr %., ptr %0, align 8, !dbg !18279
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18279
  store i64 0, ptr %.sroa.231.0..sroa_idx, align 8, !dbg !18279
  %.sroa.332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18279
  store i64 %2, ptr %.sroa.332.0..sroa_idx, align 8, !dbg !18279
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18279
  store i64 %spec.select, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !18279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18280
  br label %bb.f, !dbg !18234

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #47, !dbg !18281
  unreachable

.lr.ph155:                                        ; preds = %.lr.ph155.preheader238, %.lr.ph155
  %.sroa.018.1153 = phi i64 [ %i.de, %.lr.ph155 ], [ %.sroa.018.1153.ph, %.lr.ph155.preheader238 ]
  %.sroa.022.0152 = phi i64 [ %i.dc, %.lr.ph155 ], [ %.sroa.022.0152.ph, %.lr.ph155.preheader238 ]
  %.sroa.0119.0151 = phi ptr [ %i.cx, %.lr.ph155 ], [ %.sroa.0119.0151.ph, %.lr.ph155.preheader238 ] ; 2 uses
  %.sroa.7.0150 = phi i64 [ %i.cw, %.lr.ph155 ], [ %.sroa.7.0150.ph, %.lr.ph155.preheader238 ] ; 2 uses
  %i.cw = add nuw nsw i64 %.sroa.7.0150, 1, !dbg !18249
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0119.0151, i64 8, !dbg !18282 ; 2 uses
  %.val = load double, ptr %.sroa.0119.0151, align 8, !dbg !18250, !noundef !7548
  %i.cy = fcmp uno double %.val, 0.000000e+00, !dbg !18251 ; 2 uses
  %i.cz = xor i1 %i.cy, true, !dbg !18252
  %i.da = zext i1 %i.cz to i64, !dbg !18253
  %i.db = shl nuw i64 %i.da, %.sroa.7.0150, !dbg !18253
  %i.dc = or i64 %i.db, %.sroa.022.0152, !dbg !18254 ; 2 uses
  %i.dd = zext i1 %i.cy to i64, !dbg !18255
  %i.de = add i64 %.sroa.018.1153, %i.dd, !dbg !18256 ; 2 uses
  %i.df = icmp eq ptr %i.cx, %i.bi, !dbg !18283
  br i1 %i.df, label %.thread127.loopexit, label %.lr.ph155, !dbg !18248, !llvm.loop !18124

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.08.0149 = phi i64 [ %.sroa.08.1, %.loopexit ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  %.sroa.018.0148 = phi i64 [ %i.eb, %.loopexit ], [ 0, %.lr.ph.preheader ]
  %i.dg = getelementptr inbounds nuw [512 x i8], ptr %1, i64 %.sroa.08.0149, !dbg !18284
  br label %vector.body206, !dbg !18245

vector.body206:                                   ; preds = %vector.body206, %.lr.ph
  %index207 = phi i64 [ 0, %.lr.ph ], [ %index.next214, %vector.body206 ], !dbg !18285 ; 2 uses
  %vec.phi208 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dq, %vector.body206 ]
  %vec.phi209 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dr, %vector.body206 ]
  %vec.ind210 = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph ], [ %vec.ind.next215, %vector.body206 ] ; 3 uses
  %step.add211 = add nuw <2 x i64> %vec.ind210, splat (i64 2)
  %i.dh = shl nuw i64 %index207, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh, !dbg !18286 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !18287
  %wide.load212 = load <2 x double>, ptr %i.di, align 8, !dbg !18287, !alias.scope !18184
  %wide.load213 = load <2 x double>, ptr %i.dj, align 8, !dbg !18287, !alias.scope !18184
  %i.dk = fcmp uno <2 x double> %wide.load212, zeroinitializer, !dbg !18288
  %i.dl = fcmp uno <2 x double> %wide.load213, zeroinitializer, !dbg !18288
  %i.dm = zext <2 x i1> %i.dk to <2 x i64>, !dbg !18289
  %i.dn = zext <2 x i1> %i.dl to <2 x i64>, !dbg !18289
  %i.do = shl nuw <2 x i64> %i.dm, %vec.ind210, !dbg !18289
  %i.dp = shl nuw <2 x i64> %i.dn, %step.add211, !dbg !18289
  %i.dq = or <2 x i64> %i.do, %vec.phi208, !dbg !18290 ; 2 uses
  %i.dr = or <2 x i64> %i.dp, %vec.phi209, !dbg !18290 ; 2 uses
  %index.next214 = add nuw i64 %index207, 4, !dbg !18285 ; 2 uses
  %vec.ind.next215 = add nuw <2 x i64> %vec.ind210, splat (i64 4)
  %i.ds = icmp eq i64 %index.next214, 64, !dbg !18245
  br i1 %i.ds, label %middle.block216, label %vector.body206, !dbg !18245, !llvm.loop !18130

middle.block216:                                  ; preds = %vector.body206
  %bin.rdx217 = or <2 x i64> %i.dr, %i.dq, !dbg !18245
  %i.dt = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx217), !dbg !18245 ; 3 uses
  %.reass.reass = xor i64 %i.dt, %invariant.op
  %i.du = load i64, ptr %i.bf, align 8, !dbg !18291, !alias.scope !18185, !noundef !7548 ; 3 uses
  %i.dv = load i64, ptr %i.d, align 8, !dbg !18292, !range !7638, !alias.scope !18185, !noundef !7548
  %i.dw = icmp eq i64 %i.du, %i.dv, !dbg !18293
  br i1 %i.dw, label %bb.n, label %bb.o, !dbg !18293

bb.n:                                             ; preds = %middle.block216
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18294

bb.o:                                             ; preds = %middle.block216, %bb.n
  %i.dx = load ptr, ptr %i.be, align 8, !dbg !18295, !alias.scope !18185, !nonnull !7548, !noundef !7548
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.du, !dbg !18296
  store i64 %.reass.reass, ptr %i.dy, align 8, !dbg !18297
  %i.dz = add i64 %i.du, 1, !dbg !18298
  store i64 %i.dz, ptr %i.bf, align 8, !dbg !18298, !alias.scope !18185
  %i.ea = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dt), !dbg !18299
  %i.eb = add i64 %i.ea, %.sroa.018.0148, !dbg !18300 ; 3 uses
  %i.ec = add nuw nsw i64 %.sroa.08.0149, 1, !dbg !18301 ; 3 uses
  %i.ed = icmp eq i64 %i.dt, 0, !dbg !18302
  %i.ee = icmp samesign ult i64 %i.ec, %i.au
  %or.cond = and i1 %i.ee, %i.ed, !dbg !18302
  br i1 %or.cond, label %.preheader, label %.loopexit, !dbg !18302

.loopexit:                                        ; preds = %.preheader, %bb.o
  %.sroa.08.1 = phi i64 [ %i.ec, %bb.o ], [ %.sroa.08.2, %.preheader ], !dbg !18303 ; 2 uses
  %i.ef = icmp ult i64 %.sroa.08.1, %i.au, !dbg !18244
  br i1 %i.ef, label %.lr.ph, label %._crit_edge, !dbg !18244

.preheader:                                       ; preds = %bb.o, %bb.r
  %.sroa.08.2 = phi i64 [ %i.es, %bb.r ], [ %i.ec, %bb.o ], !dbg !18303 ; 3 uses
  %i.eg = getelementptr inbounds nuw [512 x i8], ptr %1, i64 %.sroa.08.2, !dbg !18304 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 256, !dbg !18305
  %i.ei = load <32 x double>, ptr %i.eg, align 8, !dbg !18306, !alias.scope !18188
  %i.ej = load <32 x double>, ptr %i.eh, align 8, !dbg !18307, !alias.scope !18188
  %i.ek = fcmp uno <32 x double> %i.ei, %i.ej, !dbg !18306
  %i.el = bitcast <32 x i1> %i.ek to i32, !dbg !18308
  %.not237 = icmp eq i32 %i.el, 0, !dbg !18308
  br i1 %.not237, label %bb.p, label %.loopexit, !dbg !18309

bb.p:                                             ; preds = %.preheader
  %i.em = load i64, ptr %i.bf, align 8, !dbg !18310, !alias.scope !18189, !noundef !7548 ; 3 uses
  %i.en = load i64, ptr %i.d, align 8, !dbg !18311, !range !7638, !alias.scope !18189, !noundef !7548
  %i.eo = icmp eq i64 %i.em, %i.en, !dbg !18312
  br i1 %i.eo, label %bb.q, label %bb.r, !dbg !18312

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18313

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ep = load ptr, ptr %i.be, align 8, !dbg !18314, !alias.scope !18189, !nonnull !7548, !noundef !7548
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.em, !dbg !18315
  store i64 %i.bg, ptr %i.eq, align 8, !dbg !18316
  %i.er = add i64 %i.em, 1, !dbg !18317
  store i64 %i.er, ptr %i.bf, align 8, !dbg !18317, !alias.scope !18189
  %i.es = add nuw nsw i64 %.sroa.08.2, 1, !dbg !18318 ; 2 uses
  %exitcond.not = icmp eq i64 %i.es, %i.au, !dbg !18319
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !18319

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp246, !dbg !18320

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.n, %bb.h, %bb.i
  %lpad.loopexit.split-lp246 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #46
          to label %bb.s unwind label %bb.t, !dbg !18280

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !18320
  unreachable, !dbg !18320
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCslFlrwjHoTci_14polars_compute3nan15is_not_nan_implfECs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18321 !guid !18508 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %.sroa.0.0 = sext i1 %3 to i64, !dbg !18541     ; 4 uses
  %i.e = and i64 %2, 2305843009213693888, !dbg !18542
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e, !dbg !18543 ; 6 uses
  %i.g = and i64 %2, 63, !dbg !18544              ; 5 uses
  %i.h = shl nuw nsw i64 %2, 2, !dbg !18545
  %.idx21.i = and i64 %i.h, 9223372036854775552, !dbg !18545 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.idx21.i, !dbg !18545
  %i.j = icmp samesign eq i64 %.idx21.i, 0, !dbg !18546
  br i1 %i.j, label %._crit_edge.i, label %.lr.ph.preheader.i, !dbg !18547

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.k = add nsw i64 %.idx21.i, -256, !dbg !18548
  %i.l = lshr exact i64 %i.k, 2, !dbg !18548
  %i.m = add nuw nsw i64 %i.l, 64, !dbg !18548
  br label %.lr.ph.i, !dbg !18548

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.01.020.i = phi i64 [ %i.af, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.09.019.i = phi ptr [ %i.ae, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.09.019.i, i64 128, !dbg !18549
  %i.o = load <32 x float>, ptr %.sroa.09.019.i, align 4, !dbg !18550, !alias.scope !18510
  %i.p = load <32 x float>, ptr %i.n, align 4, !dbg !18551, !alias.scope !18510
  %i.q = fcmp uno <32 x float> %i.o, %i.p, !dbg !18550
  %i.r = bitcast <32 x i1> %i.q to i32, !dbg !18552
  %.not236 = icmp eq i32 %i.r, 0, !dbg !18552
  br i1 %.not236, label %bb.b, label %vector.body, !dbg !18548

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ], !dbg !18553 ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ab, %vector.body ], [ zeroinitializer, %.lr.ph.i ]
  %vec.phi203 = phi <2 x i64> [ %i.ac, %vector.body ], [ zeroinitializer, %.lr.ph.i ]
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1>, %.lr.ph.i ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.s = shl nuw i64 %index, 2
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.09.019.i, i64 %i.s, !dbg !18554 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !18555
  %wide.load = load <2 x float>, ptr %i.t, align 4, !dbg !18555, !alias.scope !18511
  %wide.load204 = load <2 x float>, ptr %i.u, align 4, !dbg !18555, !alias.scope !18511
  %i.v = fcmp uno <2 x float> %wide.load, zeroinitializer, !dbg !18556
  %i.w = fcmp uno <2 x float> %wide.load204, zeroinitializer, !dbg !18556
  %i.x = zext <2 x i1> %i.v to <2 x i64>, !dbg !18557
  %i.y = zext <2 x i1> %i.w to <2 x i64>, !dbg !18557
  %i.z = shl nuw <2 x i64> %i.x, %vec.ind, !dbg !18557
  %i.aa = shl nuw <2 x i64> %i.y, %step.add, !dbg !18557
  %i.ab = or <2 x i64> %i.z, %vec.phi, !dbg !18558 ; 2 uses
  %i.ac = or <2 x i64> %i.aa, %vec.phi203, !dbg !18558 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !18553 ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ad = icmp eq i64 %index.next, 64, !dbg !18559
  br i1 %i.ad, label %_RINvNtCslFlrwjHoTci_14polars_compute3nan14chunk_nan_maskfECs1LHh8CLbVkQ_11polars_core.exit.i, label %vector.body, !dbg !18559, !llvm.loop !18379

bb.b:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.019.i, i64 256, !dbg !18560 ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.01.020.i, 64, !dbg !18561
  %i.ag = icmp eq ptr %i.ae, %i.i, !dbg !18546
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i, !dbg !18547

_RINvNtCslFlrwjHoTci_14polars_compute3nan14chunk_nan_maskfECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.ac, %i.ab, !dbg !18559
  %i.ah = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx), !dbg !18559
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ah, i1 false), !dbg !18562
  %i.aj = add nuw i64 %i.ai, %.sroa.01.020.i, !dbg !18563
  br label %bb.e, !dbg !18564

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %.sroa.01.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.m, %bb.b ], !dbg !18565
  %.idx.i = shl nuw nsw i64 %i.g, 2, !dbg !18566
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i, !dbg !18566
  %i.al = icmp eq i64 %i.g, 0, !dbg !18567
  br i1 %i.al, label %.loopexit138, label %.lr.ph.i.i, !dbg !18568

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %bb.c
  %.sroa.02.08.i.i = phi i64 [ %i.ap, %bb.c ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.am = phi ptr [ %i.ao, %bb.c ], [ %i.f, %._crit_edge.i ] ; 2 uses
  %.val.i13.i = load float, ptr %i.am, align 4, !dbg !18569, !alias.scope !18515, !noalias !18516, !noundef !7548
  %i.an = fcmp uno float %.val.i13.i, 0.000000e+00, !dbg !18570
  br i1 %i.an, label %bb.d, label %bb.c, !dbg !18569

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4, !dbg !18571 ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.02.08.i.i, 1, !dbg !18572
  %i.aq = icmp eq ptr %i.ao, %i.ak, !dbg !18567
  br i1 %i.aq, label %.loopexit138, label %.lr.ph.i.i, !dbg !18568

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ar = icmp samesign ult i64 %.sroa.02.08.i.i, %i.g, !dbg !18573
  tail call void @llvm.assume(i1 %i.ar), !dbg !18574
  %i.as = add nuw nsw i64 %.sroa.02.08.i.i, %.sroa.01.0.lcssa.i, !dbg !18575
  br label %bb.e, !dbg !18575

bb.e:                                             ; preds = %_RINvNtCslFlrwjHoTci_14polars_compute3nan14chunk_nan_maskfECs1LHh8CLbVkQ_11polars_core.exit.i, %bb.d
  %.sroa.4.0.i.ph = phi i64 [ %i.as, %bb.d ], [ %i.aj, %_RINvNtCslFlrwjHoTci_14polars_compute3nan14chunk_nan_maskfECs1LHh8CLbVkQ_11polars_core.exit.i ]
  %i.at = lshr i64 %.sroa.4.0.i.ph, 6, !dbg !18576 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18577
  %i.au = lshr i64 %2, 6, !dbg !18578             ; 5 uses
  %.not = icmp ne i64 %i.g, 0, !dbg !18579        ; 2 uses
  %i.av = zext i1 %.not to i64, !dbg !18579
  %.sroa.016.0 = add nuw nsw i64 %i.au, %i.av, !dbg !18579 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18580
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.016.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !18580
  %i.aw = load i64, ptr %i.a, align 8, !dbg !18580, !range !7781, !noundef !7548
  %i.ax = trunc nuw i64 %i.aw to i1, !dbg !18581
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18582
  %i.az = load i64, ptr %i.ay, align 8, !dbg !18582, !range !7738, !noundef !7548 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18582 ; 2 uses
  br i1 %i.ax, label %bb.g, label %bb.h, !dbg !18581, !prof !7680

.loopexit138:                                     ; preds = %bb.c, %._crit_edge.i
  store ptr null, ptr %0, align 8, !dbg !18583
  br label %bb.f, !dbg !18584

bb.f:                                             ; preds = %bb.l, %.loopexit138
  ret void, !dbg !18584

bb.g:                                             ; preds = %bb.e
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !18585
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.bb) #47, !dbg !18586
  unreachable, !dbg !18586

bb.h:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.ba, align 8, !dbg !18587, !nonnull !7548, !noundef !7548
  %i.bd = icmp samesign ule i64 %.sroa.016.0, %i.az, !dbg !18588
  tail call void @llvm.assume(i1 %i.bd), !dbg !18589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18590
  store i64 %i.az, ptr %i.d, align 8, !dbg !18591
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18591 ; 4 uses
  store ptr %i.bc, ptr %i.be, align 8, !dbg !18591
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18591 ; 7 uses
  store i64 0, ptr %i.bf, align 8, !dbg !18591
  %i.bg = xor i64 %.sroa.0.0, -1, !dbg !18592     ; 2 uses
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE6resizeCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.at, i64 noundef %i.bg)
          to label %.preheader134.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18593

.preheader134.split:                              ; preds = %bb.h
  %i.bh = icmp samesign ult i64 %i.at, %i.au, !dbg !18594
  br i1 %i.bh, label %.lr.ph.preheader, label %._crit_edge, !dbg !18594

.lr.ph.preheader:                                 ; preds = %.preheader134.split
  %invariant.op = xor i64 %.sroa.0.0, -1, !dbg !18595
  br label %.lr.ph, !dbg !18595

._crit_edge:                                      ; preds = %.loopexit, %bb.r, %.preheader134.split
  %.sroa.018.0.lcssa = phi i64 [ 0, %.preheader134.split ], [ %i.eb, %bb.r ], [ %i.eb, %.loopexit ], !dbg !18596 ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 2, !dbg !18597    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx, !dbg !18597
  br i1 %.not, label %.lr.ph155.preheader, label %.thread127, !dbg !18598

.lr.ph155.preheader:                              ; preds = %._crit_edge
  %i.bj = add nsw i64 %.idx, -4, !dbg !18598      ; 2 uses
  %i.bk = lshr exact i64 %i.bj, 2, !dbg !18598
  %i.bl = add nuw nsw i64 %i.bk, 1, !dbg !18598   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 12, !dbg !18598
  br i1 %min.iters.check, label %.lr.ph155.preheader238, label %vector.ph218, !dbg !18598

vector.ph218:                                     ; preds = %.lr.ph155.preheader
  %n.vec = and i64 %i.bl, 9223372036854775804     ; 4 uses
  %i.bm = shl i64 %n.vec, 2
  %i.bn = getelementptr i8, ptr %i.f, i64 %i.bm
  %i.bo = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.018.0.lcssa, i64 0
  br label %vector.body219, !dbg !18598

vector.body219:                                   ; preds = %vector.body219, %vector.ph218
  %index220 = phi i64 [ 0, %vector.ph218 ], [ %index.next229, %vector.body219 ], !dbg !18599 ; 2 uses
  %vec.phi221 = phi <2 x i64> [ %i.bo, %vector.ph218 ], [ %i.cd, %vector.body219 ]
  %vec.phi222 = phi <2 x i64> [ zeroinitializer, %vector.ph218 ], [ %i.ce, %vector.body219 ]
  %vec.phi223 = phi <2 x i64> [ zeroinitializer, %vector.ph218 ], [ %i.bz, %vector.body219 ]
  %vec.phi224 = phi <2 x i64> [ zeroinitializer, %vector.ph218 ], [ %i.ca, %vector.body219 ]
  %vec.ind225 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph218 ], [ %vec.ind.next230, %vector.body219 ] ; 3 uses
  %step.add226 = add nuw <2 x i64> %vec.ind225, splat (i64 2)
  %i.bp = shl i64 %index220, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep, i64 8, !dbg !18600
  %wide.load227 = load <2 x float>, ptr %next.gep, align 4, !dbg !18600
  %wide.load228 = load <2 x float>, ptr %i.bq, align 4, !dbg !18600
  %i.br = fcmp uno <2 x float> %wide.load227, zeroinitializer, !dbg !18601 ; 2 uses
  %i.bs = fcmp uno <2 x float> %wide.load228, zeroinitializer, !dbg !18601 ; 2 uses
  %i.bt = xor <2 x i1> %i.br, splat (i1 true), !dbg !18602
  %i.bu = xor <2 x i1> %i.bs, splat (i1 true), !dbg !18602
  %i.bv = zext <2 x i1> %i.bt to <2 x i64>, !dbg !18603
  %i.bw = zext <2 x i1> %i.bu to <2 x i64>, !dbg !18603
  %i.bx = shl nuw <2 x i64> %i.bv, %vec.ind225, !dbg !18603
  %i.by = shl nuw <2 x i64> %i.bw, %step.add226, !dbg !18603
  %i.bz = or <2 x i64> %i.bx, %vec.phi223, !dbg !18604 ; 2 uses
  %i.ca = or <2 x i64> %i.by, %vec.phi224, !dbg !18604 ; 2 uses
  %i.cb = zext <2 x i1> %i.br to <2 x i64>, !dbg !18605
  %i.cc = zext <2 x i1> %i.bs to <2 x i64>, !dbg !18605
  %i.cd = add <2 x i64> %vec.phi221, %i.cb, !dbg !18606 ; 2 uses
  %i.ce = add <2 x i64> %vec.phi222, %i.cc, !dbg !18606 ; 2 uses
  %index.next229 = add nuw i64 %index220, 4, !dbg !18599 ; 2 uses
  %vec.ind.next230 = add nuw <2 x i64> %vec.ind225, splat (i64 4)
  %i.cf = icmp eq i64 %index.next229, %n.vec, !dbg !18598
  br i1 %i.cf, label %middle.block231, label %vector.body219, !dbg !18598, !llvm.loop !18453

middle.block231:                                  ; preds = %vector.body219
  %bin.rdx232 = add <2 x i64> %i.ce, %i.cd, !dbg !18598
  %i.cg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx232), !dbg !18598 ; 2 uses
  %bin.rdx233 = or <2 x i64> %i.ca, %i.bz, !dbg !18598
  %i.ch = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx233), !dbg !18598 ; 2 uses
  %cmp.n = icmp eq i64 %i.bl, %n.vec, !dbg !18598
  br i1 %cmp.n, label %.thread127.loopexit, label %.lr.ph155.preheader238, !dbg !18598

.lr.ph155.preheader238:                           ; preds = %.lr.ph155.preheader, %middle.block231
  %.sroa.018.1153.ph = phi i64 [ %.sroa.018.0.lcssa, %.lr.ph155.preheader ], [ %i.cg, %middle.block231 ]
  %.sroa.022.0152.ph = phi i64 [ 0, %.lr.ph155.preheader ], [ %i.ch, %middle.block231 ]
  %.sroa.0119.0151.ph = phi ptr [ %i.f, %.lr.ph155.preheader ], [ %i.bn, %middle.block231 ]
  %.sroa.7.0150.ph = phi i64 [ 0, %.lr.ph155.preheader ], [ %n.vec, %middle.block231 ]
  br label %.lr.ph155, !dbg !18598

.thread127.loopexit:                              ; preds = %.lr.ph155, %middle.block231
  %.lcssa192 = phi i64 [ %i.ch, %middle.block231 ], [ %i.dc, %.lr.ph155 ], !dbg !18604
  %.lcssa = phi i64 [ %i.cg, %middle.block231 ], [ %i.de, %.lr.ph155 ], !dbg !18606
  %i.ci = xor i64 %.lcssa192, %.sroa.0.0, !dbg !18607
  br label %.thread127, !dbg !18607

.thread127:                                       ; preds = %.thread127.loopexit, %._crit_edge
  %.sroa.022.0.lcssa = phi i64 [ %.sroa.0.0, %._crit_edge ], [ %i.ci, %.thread127.loopexit ], !dbg !18608
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0.lcssa, %._crit_edge ], [ %.lcssa, %.thread127.loopexit ], !dbg !18596 ; 2 uses
  %i.cj = load i64, ptr %i.bf, align 8, !dbg !18609, !alias.scope !18530, !noundef !7548 ; 3 uses
  %i.ck = load i64, ptr %i.d, align 8, !dbg !18610, !range !7638, !alias.scope !18530, !noundef !7548
  %i.cl = icmp eq i64 %i.cj, %i.ck, !dbg !18611
  br i1 %i.cl, label %bb.i, label %bb.j, !dbg !18611

bb.i:                                             ; preds = %.thread127
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18612

bb.j:                                             ; preds = %.thread127, %bb.i
  %i.cm = load ptr, ptr %i.be, align 8, !dbg !18613, !alias.scope !18530, !nonnull !7548, !noundef !7548
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cj, !dbg !18614
  store i64 %.sroa.022.0.lcssa, ptr %i.cn, align 8, !dbg !18615
  %i.co = add i64 %i.cj, 1, !dbg !18616
  store i64 %i.co, ptr %i.bf, align 8, !dbg !18616, !alias.scope !18530
  %i.cp = sub i64 %2, %.sroa.018.1.lcssa
  %spec.select = select i1 %3, i64 %i.cp, i64 %.sroa.018.1.lcssa, !dbg !18617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !18619
  %i.cq = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageyE8from_vecCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !dbg !18618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18620
  %i.cr = call { i64, ptr } @_RINvMsa_NtCsknLZRuU4977_13polars_buffer7storageINtB6_13SharedStorageyE13try_transmutehECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.cq), !dbg !18621 ; 2 uses
  %i.cs = extractvalue { i64, ptr } %i.cr, 0, !dbg !18618 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cr, 1, !dbg !18618 ; 2 uses
  store i64 %i.cs, ptr %i.c, align 8, !dbg !18618
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18618 ; 2 uses
  store ptr %i.ct, ptr %i.cu, align 8, !dbg !18618
  %i.cv = trunc nuw i64 %i.cs to i1, !dbg !18622  ; 2 uses
  %. = select i1 %i.cv, ptr null, ptr %i.ct, !dbg !18623 ; 2 uses
  br i1 %i.cv, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit, !dbg !18624

bb.k:                                             ; preds = %bb.j
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cu), !dbg !18625
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit, !dbg !18625

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18626
  %.not45 = icmp eq ptr %., null, !dbg !18627
  br i1 %.not45, label %bb.m, label %bb.l, !dbg !18628, !prof !7680

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit
  store ptr %., ptr %0, align 8, !dbg !18629
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18629
  store i64 0, ptr %.sroa.231.0..sroa_idx, align 8, !dbg !18629
  %.sroa.332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18629
  store i64 %2, ptr %.sroa.332.0..sroa_idx, align 8, !dbg !18629
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18629
  store i64 %spec.select, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !18629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18630
  br label %bb.f, !dbg !18584

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEIB13_yEEECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #47, !dbg !18631
  unreachable

.lr.ph155:                                        ; preds = %.lr.ph155.preheader238, %.lr.ph155
  %.sroa.018.1153 = phi i64 [ %i.de, %.lr.ph155 ], [ %.sroa.018.1153.ph, %.lr.ph155.preheader238 ]
  %.sroa.022.0152 = phi i64 [ %i.dc, %.lr.ph155 ], [ %.sroa.022.0152.ph, %.lr.ph155.preheader238 ]
  %.sroa.0119.0151 = phi ptr [ %i.cx, %.lr.ph155 ], [ %.sroa.0119.0151.ph, %.lr.ph155.preheader238 ] ; 2 uses
  %.sroa.7.0150 = phi i64 [ %i.cw, %.lr.ph155 ], [ %.sroa.7.0150.ph, %.lr.ph155.preheader238 ] ; 2 uses
  %i.cw = add nuw nsw i64 %.sroa.7.0150, 1, !dbg !18599
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0119.0151, i64 4, !dbg !18632 ; 2 uses
  %.val = load float, ptr %.sroa.0119.0151, align 4, !dbg !18600, !noundef !7548
  %i.cy = fcmp uno float %.val, 0.000000e+00, !dbg !18601 ; 2 uses
  %i.cz = xor i1 %i.cy, true, !dbg !18602
  %i.da = zext i1 %i.cz to i64, !dbg !18603
  %i.db = shl nuw i64 %i.da, %.sroa.7.0150, !dbg !18603
  %i.dc = or i64 %i.db, %.sroa.022.0152, !dbg !18604 ; 2 uses
  %i.dd = zext i1 %i.cy to i64, !dbg !18605
  %i.de = add i64 %.sroa.018.1153, %i.dd, !dbg !18606 ; 2 uses
  %i.df = icmp eq ptr %i.cx, %i.bi, !dbg !18633
  br i1 %i.df, label %.thread127.loopexit, label %.lr.ph155, !dbg !18598, !llvm.loop !18474

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.sroa.08.0149 = phi i64 [ %.sroa.08.1, %.loopexit ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  %.sroa.018.0148 = phi i64 [ %i.eb, %.loopexit ], [ 0, %.lr.ph.preheader ]
  %i.dg = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.08.0149, !dbg !18634
  br label %vector.body206, !dbg !18595

vector.body206:                                   ; preds = %vector.body206, %.lr.ph
  %index207 = phi i64 [ 0, %.lr.ph ], [ %index.next214, %vector.body206 ], !dbg !18635 ; 2 uses
  %vec.phi208 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dq, %vector.body206 ]
  %vec.phi209 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dr, %vector.body206 ]
  %vec.ind210 = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph ], [ %vec.ind.next215, %vector.body206 ] ; 3 uses
  %step.add211 = add nuw <2 x i64> %vec.ind210, splat (i64 2)
  %i.dh = shl nuw i64 %index207, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh, !dbg !18636 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8, !dbg !18637
  %wide.load212 = load <2 x float>, ptr %i.di, align 4, !dbg !18637, !alias.scope !18534
  %wide.load213 = load <2 x float>, ptr %i.dj, align 4, !dbg !18637, !alias.scope !18534
  %i.dk = fcmp uno <2 x float> %wide.load212, zeroinitializer, !dbg !18638
  %i.dl = fcmp uno <2 x float> %wide.load213, zeroinitializer, !dbg !18638
  %i.dm = zext <2 x i1> %i.dk to <2 x i64>, !dbg !18639
  %i.dn = zext <2 x i1> %i.dl to <2 x i64>, !dbg !18639
  %i.do = shl nuw <2 x i64> %i.dm, %vec.ind210, !dbg !18639
  %i.dp = shl nuw <2 x i64> %i.dn, %step.add211, !dbg !18639
  %i.dq = or <2 x i64> %i.do, %vec.phi208, !dbg !18640 ; 2 uses
  %i.dr = or <2 x i64> %i.dp, %vec.phi209, !dbg !18640 ; 2 uses
  %index.next214 = add nuw i64 %index207, 4, !dbg !18635 ; 2 uses
  %vec.ind.next215 = add nuw <2 x i64> %vec.ind210, splat (i64 4)
  %i.ds = icmp eq i64 %index.next214, 64, !dbg !18595
  br i1 %i.ds, label %middle.block216, label %vector.body206, !dbg !18595, !llvm.loop !18480

middle.block216:                                  ; preds = %vector.body206
  %bin.rdx217 = or <2 x i64> %i.dr, %i.dq, !dbg !18595
  %i.dt = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx217), !dbg !18595 ; 3 uses
  %.reass.reass = xor i64 %i.dt, %invariant.op
  %i.du = load i64, ptr %i.bf, align 8, !dbg !18641, !alias.scope !18535, !noundef !7548 ; 3 uses
  %i.dv = load i64, ptr %i.d, align 8, !dbg !18642, !range !7638, !alias.scope !18535, !noundef !7548
  %i.dw = icmp eq i64 %i.du, %i.dv, !dbg !18643
  br i1 %i.dw, label %bb.n, label %bb.o, !dbg !18643

bb.n:                                             ; preds = %middle.block216
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18644

bb.o:                                             ; preds = %middle.block216, %bb.n
  %i.dx = load ptr, ptr %i.be, align 8, !dbg !18645, !alias.scope !18535, !nonnull !7548, !noundef !7548
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.du, !dbg !18646
  store i64 %.reass.reass, ptr %i.dy, align 8, !dbg !18647
  %i.dz = add i64 %i.du, 1, !dbg !18648
  store i64 %i.dz, ptr %i.bf, align 8, !dbg !18648, !alias.scope !18535
  %i.ea = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dt), !dbg !18649
  %i.eb = add i64 %i.ea, %.sroa.018.0148, !dbg !18650 ; 3 uses
  %i.ec = add nuw nsw i64 %.sroa.08.0149, 1, !dbg !18651 ; 3 uses
  %i.ed = icmp eq i64 %i.dt, 0, !dbg !18652
  %i.ee = icmp samesign ult i64 %i.ec, %i.au
  %or.cond = and i1 %i.ee, %i.ed, !dbg !18652
  br i1 %or.cond, label %.preheader, label %.loopexit, !dbg !18652

.loopexit:                                        ; preds = %.preheader, %bb.o
  %.sroa.08.1 = phi i64 [ %i.ec, %bb.o ], [ %.sroa.08.2, %.preheader ], !dbg !18653 ; 2 uses
  %i.ef = icmp ult i64 %.sroa.08.1, %i.au, !dbg !18594
  br i1 %i.ef, label %.lr.ph, label %._crit_edge, !dbg !18594

.preheader:                                       ; preds = %bb.o, %bb.r
  %.sroa.08.2 = phi i64 [ %i.es, %bb.r ], [ %i.ec, %bb.o ], !dbg !18653 ; 3 uses
  %i.eg = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.08.2, !dbg !18654 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 128, !dbg !18655
  %i.ei = load <32 x float>, ptr %i.eg, align 4, !dbg !18656, !alias.scope !18538
  %i.ej = load <32 x float>, ptr %i.eh, align 4, !dbg !18657, !alias.scope !18538
  %i.ek = fcmp uno <32 x float> %i.ei, %i.ej, !dbg !18656
  %i.el = bitcast <32 x i1> %i.ek to i32, !dbg !18658
  %.not237 = icmp eq i32 %i.el, 0, !dbg !18658
  br i1 %.not237, label %bb.p, label %.loopexit, !dbg !18659

bb.p:                                             ; preds = %.preheader
  %i.em = load i64, ptr %i.bf, align 8, !dbg !18660, !alias.scope !18539, !noundef !7548 ; 3 uses
  %i.en = load i64, ptr %i.d, align 8, !dbg !18661, !range !7638, !alias.scope !18539, !noundef !7548
  %i.eo = icmp eq i64 %i.em, %i.en, !dbg !18662
  br i1 %i.eo, label %bb.q, label %bb.r, !dbg !18662

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18663

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ep = load ptr, ptr %i.be, align 8, !dbg !18664, !alias.scope !18539, !nonnull !7548, !noundef !7548
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.em, !dbg !18665
  store i64 %i.bg, ptr %i.eq, align 8, !dbg !18666
  %i.er = add i64 %i.em, 1, !dbg !18667
  store i64 %i.er, ptr %i.bf, align 8, !dbg !18667, !alias.scope !18539
  %i.es = add nuw nsw i64 %.sroa.08.2, 1, !dbg !18668 ; 2 uses
  %exitcond.not = icmp eq i64 %i.es, %i.au, !dbg !18669
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !dbg !18669

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp246, !dbg !18670

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.n, %bb.h, %bb.i
  %lpad.loopexit.split-lp246 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #46
          to label %bb.s unwind label %bb.t, !dbg !18630

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !18670
  unreachable, !dbg !18670
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array10comparison6scalar12bitonic_maskNtNtB8_9datatypes10Int128TypeEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) %4, i1 noundef zeroext %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18671 !guid !18702 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 2 uses
  %i.h = alloca [1 x i8], align 1                 ; 2 uses
  %i.i = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.i, align 1
  store i8 %3, ptr %i.h, align 1
  %i.j = zext i1 %5 to i8
  store i8 %i.j, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18727
  store i8 3, ptr %i.f, align 1, !dbg !18728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18729
  store i8 2, ptr %i.e, align 1, !dbg !18730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18731
  store ptr %i.e, ptr %i.d, align 8, !dbg !18732
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18732
  store ptr %i.f, ptr %i.k, align 8, !dbg !18732
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18733
  %i.m = load ptr, ptr %i.l, align 8, !dbg !18733, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18734
  %i.o = load i64, ptr %i.n, align 8, !dbg !18734, !noundef !7548
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o, !dbg !18735
  store ptr %i.m, ptr %i.c, align 8, !dbg !18736
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18736
  store ptr %i.p, ptr %i.q, align 8, !dbg !18736
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18736
  store ptr %i.i, ptr %i.r, align 8, !dbg !18736
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !18736
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !18736
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !18736
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18736
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !18736
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !18736
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !18736
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18737
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18738
  %i.t = load ptr, ptr %i.s, align 8, !dbg !18738, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64, !dbg !18739 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 87, !dbg !18740
  %i.w = load i8, ptr %i.v, align 1, !dbg !18740, !range !7696, !noundef !7548
  %i.x = icmp eq i8 %i.w, -40, !dbg !18741
  br i1 %i.x, label %bb.b, label %bb.c, !dbg !18741

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #49, !dbg !18742
  br label %bb.d, !dbg !18742

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !18743
  br label %bb.d, !dbg !18744

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_RINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes11BooleanTypeE15from_chunk_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB21_INtNtNtB29_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtB7_3ops8downcastIBV_NtB1g_10Int128TypeE13downcast_iter0ENCINvNtNtB7_10comparison6scalar12bitonic_maskB5c_Es_0EEB9_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c), !dbg !18745
  %i.y = load i8, ptr %i.f, align 1, !dbg !18746, !range !7583, !noundef !7548 ; 2 uses
  %.not = icmp eq i8 %i.y, 3, !dbg !18747
  %. = select i1 %.not, i8 0, i8 %i.y, !dbg !18748
  invoke void @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes11BooleanTypeE15set_sorted_flagB4_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b, i8 noundef %.)
          to label %bb.f unwind label %bb.e, !dbg !18749

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.b) #46
          to label %bb.h unwind label %bb.g, !dbg !18750

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !18751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18754
  ret void, !dbg !18755

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !18756
  unreachable, !dbg !18756

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.z, !dbg !18756
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array10comparison6scalar12bitonic_maskNtNtB8_9datatypes10UInt16TypeEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %4, i1 noundef zeroext %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18757 !guid !18788 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 2 uses
  %i.h = alloca [1 x i8], align 1                 ; 2 uses
  %i.i = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.i, align 1
  store i8 %3, ptr %i.h, align 1
  %i.j = zext i1 %5 to i8
  store i8 %i.j, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18813
  store i8 3, ptr %i.f, align 1, !dbg !18814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18815
  store i8 2, ptr %i.e, align 1, !dbg !18816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18817
  store ptr %i.e, ptr %i.d, align 8, !dbg !18818
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18818
  store ptr %i.f, ptr %i.k, align 8, !dbg !18818
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18819
  %i.m = load ptr, ptr %i.l, align 8, !dbg !18819, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18820
  %i.o = load i64, ptr %i.n, align 8, !dbg !18820, !noundef !7548
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o, !dbg !18821
  store ptr %i.m, ptr %i.c, align 8, !dbg !18822
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18822
  store ptr %i.p, ptr %i.q, align 8, !dbg !18822
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18822
  store ptr %i.i, ptr %i.r, align 8, !dbg !18822
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !18822
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !18822
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !18822
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18822
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !18822
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !18822
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !18822
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18823
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18824
  %i.t = load ptr, ptr %i.s, align 8, !dbg !18824, !nonnull !7548, !noundef !7548 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64, !dbg !18825 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 87, !dbg !18826
  %i.w = load i8, ptr %i.v, align 1, !dbg !18826, !range !7696, !noundef !7548
  %i.x = icmp eq i8 %i.w, -40, !dbg !18827
  br i1 %i.x, label %bb.b, label %bb.c, !dbg !18827

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #49, !dbg !18828
  br label %bb.d, !dbg !18828

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !18829
  br label %bb.d, !dbg !18830

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_RINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes11BooleanTypeE15from_chunk_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB21_INtNtNtB29_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtB7_3ops8downcastIBV_NtB1g_10UInt16TypeE13downcast_iter0ENCINvNtNtB7_10comparison6scalar12bitonic_maskB5c_Es_0EEB9_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c), !dbg !18831
  %i.y = load i8, ptr %i.f, align 1, !dbg !18832, !range !7583, !noundef !7548 ; 2 uses
  %.not = icmp eq i8 %i.y, 3, !dbg !18833
  %. = select i1 %.not, i8 0, i8 %i.y, !dbg !18834
  invoke void @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes11BooleanTypeE15set_sorted_flagB4_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b, i8 noundef %.)
          to label %bb.f unwind label %bb.e, !dbg !18835

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.b) #46
          to label %bb.h unwind label %bb.g, !dbg !18836

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !18837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18840
  ret void, !dbg !18841

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #48, !dbg !18842
  unreachable, !dbg !18842

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.z, !dbg !18842
}
end_hunk_0
