Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN11lsp_harness11TestHarness7request17h1ba4336a03dace2fE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !17883)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i.i.i2, ptr nonnull align 1 %i.rh, i64 %.pre-phi.i.i.i.i, i1 false), !noalias !17884
  %i.se = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.sf = load i64, ptr %i.se, align 8, !alias.scope !17885, !noundef !35 ; 3 uses
  %i.sg = icmp eq i64 %i.sf, 0
  br i1 %i.sg, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h1bbfb4a93e97f807E.exit.i.i.i.i"
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.rh, align 16, !noalias !17886
  %i.sh = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.si = bitcast <16 x i1> %i.sh to i16
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.sk = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.sm = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.sn = getelementptr inbounds nuw i8, ptr %i.al, i64 42
  %i.so = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.sp = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.sq = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %i.sr = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ss = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.st = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.su = ptrtoint ptr %i.rh to i64
  br label %bb.gx

bb.gw:                                            ; preds = %.loopexit.i.i.i.i.i.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i3

.body.i.i.i.i.i.i3:                               ; preds = %bb.gz, %bb.gy, %bb.gw
  %eh.lpad-body.i.i.i.i.i.i4 = phi { ptr, i32 } [ %i.sv, %bb.gw ], [ %i.uf, %bb.gz ], [ %i.uf, %bb.gy ]
  call fastcc void @"_ZN4core3ptr325drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1e5529a5bed7f61aE"(i64 %.sroa.015.031.i.i.i.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.am) #43, !noalias !17887
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$$GT$17h9181c0c7040241c0E"(ptr noalias noundef align 8 dereferenceable(32) %i.am) #43, !noalias !17878
  br label %.body

bb.gx:                                            ; preds = %_ZN4core5clone5Clone5clone17hba7a8ebb9966889eE.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.015.031.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.uo, %_ZN4core5clone5Clone5clone17hba7a8ebb9966889eE.exit.i.i.i.i.i.i ]
  %.sroa.016.030.i.i.i.i.i.i = phi ptr [ %i.rh, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.016.1.i.i.i.i.i.i, %_ZN4core5clone5Clone5clone17hba7a8ebb9966889eE.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.029.i.i.i.i.i.i = phi ptr [ %i.sj, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.1.i.i.i.i.i.i, %_ZN4core5clone5Clone5clone17hba7a8ebb9966889eE.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.817.028.i.i.i.i.i.i = phi i16 [ %i.si, %.lr.ph.i.i.i.i.i.i ], [ %i.te, %_ZN4core5clone5Clone5clone17hba7a8ebb9966889eE.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.1018.027.i.i.i.i.i.i = phi i64 [ %i.sf, %.lr.ph.i.i.i.i.i.i ], [ %i.th, %_ZN4core5clone5Clone5clone17hba7a8ebb9966889eE.exit.i.i.i.i.i.i ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.817.028.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.gx, %.lr.ph.i.i.i.i.i.i.i
  %i.sw = phi ptr [ %i.ta, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.029.i.i.i.i.i.i, %bb.gx ] ; 2 uses
  %i.sx = phi ptr [ %i.sz, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.016.030.i.i.i.i.i.i, %bb.gx ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sw, align 16, !noalias !17888
  %i.sy = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.sz = getelementptr inbounds i8, ptr %i.sx, i64 -1792 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.sy to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.gx
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.029.i.i.i.i.i.i, %bb.gx ], [ %i.ta, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.016.1.i.i.i.i.i.i = phi ptr [ %.sroa.016.030.i.i.i.i.i.i, %bb.gx ], [ %i.sz, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.817.028.i.i.i.i.i.i, %bb.gx ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.tb = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.tc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.td = zext nneg i16 %i.tc to i64
  %i.te = and i16 %i.tb, %.lcssa.i.i.i.i.i.i.i
  %i.tf = sub nsw i64 0, %i.td
  %i.tg = getelementptr inbounds [112 x i8], ptr %.sroa.016.1.i.i.i.i.i.i, i64 %i.tf ; 13 uses
  %i.th = add i64 %.sroa.1018.027.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !17884
  %i.ti = getelementptr inbounds i8, ptr %i.tg, i64 -112
  call void @llvm.experimental.noalias.scope.decl(metadata !17889)
  call void @llvm.experimental.noalias.scope.decl(metadata !17890)
  call void @llvm.experimental.noalias.scope.decl(metadata !17891)
  call void @llvm.experimental.noalias.scope.decl(metadata !17892)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(112) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ti, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @316)
          to label %.noexc.i.i.i.i.i.i7 unwind label %bb.gw, !noalias !17884

.noexc.i.i.i.i.i.i7:                              ; preds = %.loopexit.i.i.i.i.i.i
  %i.tj = getelementptr inbounds i8, ptr %i.tg, i64 -68
  %i.tk = getelementptr inbounds i8, ptr %i.tg, i64 -48
  %i.tl = getelementptr inbounds i8, ptr %i.tg, i64 -72
  %i.tm = getelementptr inbounds i8, ptr %i.tg, i64 -70
  %i.tn = getelementptr inbounds i8, ptr %i.tg, i64 -52
  %i.to = getelementptr inbounds i8, ptr %i.tg, i64 -88
  %i.tp = getelementptr inbounds i8, ptr %i.tg, i64 -84
  %i.tq = getelementptr inbounds i8, ptr %i.tg, i64 -80
  %i.tr = getelementptr inbounds i8, ptr %i.tg, i64 -76
  %i.ts = load <4 x i32>, ptr %i.tj, align 4, !alias.scope !17893, !noalias !17884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.sk, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.tk, i64 17, i1 false), !alias.scope !17894, !noalias !17884
  %i.tt = load i16, ptr %i.tl, align 8, !range !84, !alias.scope !17893, !noalias !17884, !noundef !35 ; 2 uses
  %i.tu = trunc nuw i16 %i.tt to i1
  %i.tv = load i16, ptr %i.tm, align 2, !alias.scope !17893, !noalias !17884
  %.sroa.5.0.i.i.i.i.i.i.i.i = select i1 %i.tu, i16 %i.tv, i16 undef
  %i.tw = load i32, ptr %i.tn, align 4, !alias.scope !17893, !noalias !17884, !noundef !35
  %i.tx = load i32, ptr %i.to, align 8, !range !58, !alias.scope !17893, !noalias !17884, !noundef !35 ; 2 uses
  %i.ty = trunc nuw i32 %i.tx to i1
  %i.tz = load i32, ptr %i.tp, align 4, !alias.scope !17893, !noalias !17884
  %.sroa.52.0.i.i.i.i.i.i.i.i = select i1 %i.ty, i32 %i.tz, i32 undef
  %i.ua = load i32, ptr %i.tq, align 8, !range !58, !alias.scope !17893, !noalias !17884, !noundef !35 ; 2 uses
  %i.ub = trunc nuw i32 %i.ua to i1
  %i.uc = load i32, ptr %i.tr, align 4, !alias.scope !17893, !noalias !17884
  %.sroa.54.0.i.i.i.i.i.i.i.i = select i1 %i.ub, i32 %i.uc, i32 undef
  store <4 x i32> %i.ts, ptr %i.sl, align 4, !alias.scope !17895, !noalias !17884
  store i16 %i.tt, ptr %i.sm, align 8, !alias.scope !17895, !noalias !17884
  store i16 %.sroa.5.0.i.i.i.i.i.i.i.i, ptr %i.sn, align 2, !alias.scope !17895, !noalias !17884
  store i32 %i.tw, ptr %i.so, align 4, !alias.scope !17895, !noalias !17884
  store i32 %i.tx, ptr %i.sp, align 8, !alias.scope !17895, !noalias !17884
  store i32 %.sroa.52.0.i.i.i.i.i.i.i.i, ptr %i.sq, align 4, !alias.scope !17895, !noalias !17884
  store i32 %i.ua, ptr %i.sr, align 8, !alias.scope !17895, !noalias !17884
  store i32 %.sroa.54.0.i.i.i.i.i.i.i.i, ptr %i.ss, align 4, !alias.scope !17895, !noalias !17884
  %i.ud = getelementptr inbounds i8, ptr %i.tg, i64 -16
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ud, align 8, !alias.scope !17890, !noalias !17884, !nonnull !35, !noundef !35
  %i.ue = getelementptr inbounds i8, ptr %i.tg, i64 -8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ue, align 8, !alias.scope !17890, !noalias !17884, !noundef !35
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea6e08763bf87b5fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.st, ptr nonnull %.val.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i)
          to label %_ZN4core5clone5Clone5clone17hba7a8ebb9966889eE.exit.i.i.i.i.i.i unwind label %bb.gy, !noalias !17884

bb.gy:                                            ; preds = %.noexc.i.i.i.i.i.i7
  %i.uf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17896)
  call void @llvm.experimental.noalias.scope.decl(metadata !17897)
  call void @llvm.experimental.noalias.scope.decl(metadata !17898)
  %.val.i.i.i.i.i.i.i.i.i.i8 = load i64, ptr %i.al, align 8, !range !36, !alias.scope !17899, !noalias !17884, !noundef !35 ; 2 uses
  %i.ug = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i8, 0
  br i1 %i.ug, label %.body.i.i.i.i.i.i3, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.uh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i9 = load ptr, ptr %i.uh, align 8, !alias.scope !17899, !noalias !17884, !nonnull !35, !noundef !35
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i9, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17900
  br label %.body.i.i.i.i.i.i3

_ZN4core5clone5Clone5clone17hba7a8ebb9966889eE.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i7
  %i.ui = ptrtoint ptr %i.tg to i64
  %i.uj = sub i64 %i.su, %i.ui
  %i.uk = sdiv exact i64 %i.uj, 112               ; 2 uses
  %i.ul = sub nsw i64 0, %i.uk
  %i.um = getelementptr inbounds [112 x i8], ptr %.sroa.0.0.i.i.i.i2, i64 %i.ul
  %i.un = getelementptr inbounds i8, ptr %i.um, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.un, ptr noundef nonnull align 8 dereferenceable(112) %i.al, i64 112, i1 false), !noalias !17884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !17884
  %i.uo = add nsw i64 %i.uk, 1
  %i.up = icmp eq i64 %i.th, 0
  br i1 %i.up, label %.loopexit.i.i.i.i, label %bb.gx

.loopexit.i.i.i.i:                                ; preds = %_ZN4core5clone5Clone5clone17hba7a8ebb9966889eE.exit.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h1bbfb4a93e97f807E.exit.i.i.i.i"
  store i64 %i.sf, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !17901, !noalias !17878
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.ur = load i64, ptr %i.uq, align 8, !alias.scope !17885, !noundef !35
  store i64 %i.ur, ptr %.sroa.52.0..sroa_idx.i.i.i.i, align 8, !alias.scope !17901, !noalias !17878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !17877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !17878
  br label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdaa6541bf3f78e09E.exit.i.i"

"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdaa6541bf3f78e09E.exit.i.i": ; preds = %.loopexit.i.i.i.i, %bb.gq
  %.sroa.048.0.i.i = phi ptr [ @310, %bb.gq ], [ %.sroa.0.0.i.i.i.i2, %.loopexit.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, i64 24, i1 false), !noalias !17902
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.ha

bb.ha:                                            ; preds = %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdaa6541bf3f78e09E.exit.i.i", %bb.go
  %.sroa.0.0.i.i = phi ptr [ null, %bb.go ], [ %.sroa.048.0.i.i, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdaa6541bf3f78e09E.exit.i.i" ]
  %i.us = phi <2 x i64> [ undef, %bb.go ], [ %i.rj, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdaa6541bf3f78e09E.exit.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !17902
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !17903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.540.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.i.i, i64 24, i1 false), !noalias !17902
  call void @llvm.experimental.noalias.scope.decl(metadata !17904)
  call void @llvm.experimental.noalias.scope.decl(metadata !17905)
  store i64 1, ptr %i.ak, align 8, !alias.scope !17906, !noalias !17907
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 5 uses
  store ptr %.sroa.0.0.i.i, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !alias.scope !17906, !noalias !17907
  %.sroa.540.sroa.4.0..sroa.540.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store <2 x i64> %i.us, ptr %.sroa.540.sroa.4.0..sroa.540.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !17906, !noalias !17907
  %.sroa.6.0..sroa_idx41.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 4 uses
  store i64 -9223372036854775807, ptr %.sroa.6.0..sroa_idx41.i.i, align 8, !alias.scope !17906, !noalias !17907
  %.sroa.742.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 120 ; 4 uses
  store i64 -9223372036854775807, ptr %.sroa.742.0..sroa_idx.i.i, align 8, !alias.scope !17906, !noalias !17907
  call void @llvm.experimental.noalias.scope.decl(metadata !17908)
  call void @llvm.experimental.noalias.scope.decl(metadata !17909)
  call void @llvm.experimental.noalias.scope.decl(metadata !17910)
  call void @llvm.experimental.noalias.scope.decl(metadata !17911)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !17912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !17913
  call fastcc void @"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2312c97b28139accE"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.ak), !noalias !17914
  %i.ut = load i64, ptr %i.ai, align 8, !range !41, !noalias !17913, !noundef !35 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ut, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.uu = load i64, ptr %.sroa.6.0..sroa_idx41.i.i, align 8, !range !47, !alias.scope !17915, !noalias !17903, !noundef !35
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.uu, -9223372036854775807
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.uv, align 8, !alias.scope !17915, !noalias !17903
  %i.uw = load i64, ptr %.sroa.742.0..sroa_idx.i.i, align 8, !range !47, !alias.scope !17915, !noalias !17903, !noundef !35
  %.not51.i.i.i.i.i.i.i.i = icmp eq i64 %i.uw, -9223372036854775807
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  %.val.i57.i.i.i.i.i.i.i.i = load i64, ptr %i.ux, align 8, !alias.scope !17915, !noalias !17903
  %.sroa.8.0.i.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i.i, i64 0, i64 %.val.i57.i.i.i.i.i.i.i.i ; 2 uses
  %i.uy = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i)
  %i.uz = select i1 %.not.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i, i64 %i.uy
  %i.va = call i64 @llvm.uadd.sat.i64(i64 %i.uz, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.va, i64 4) ; 3 uses
  %i.vb = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 112   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.va, 82351536043346212
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.hk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !51

bb.hc:                                            ; preds = %bb.ha
  store i64 0, ptr %i.an, align 8, !alias.scope !17916, !noalias !17902
  %i.vc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.vc, align 8, !alias.scope !17916, !noalias !17902
  %i.vd = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 0, ptr %i.vd, align 8, !alias.scope !17916, !noalias !17902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !17913
  %i.ve = load i64, ptr %i.ak, align 8, !range !50, !alias.scope !17917, !noalias !17903, !noundef !35
  %i.vf = icmp eq i64 %i.ve, 0
  %i.vg = load ptr, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !17902
  %i.vh = icmp eq ptr %i.vg, null
  %or.cond.i.i = select i1 %i.vf, i1 true, i1 %i.vh
  br i1 %or.cond.i.i, label %.thread316.i.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$$GT$17h9181c0c7040241c0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %.sroa.439.0..sroa_idx.i.i), !noalias !17914
  br label %.thread316.i.i

.thread316.i.i:                                   ; preds = %bb.hd, %bb.hc
  call fastcc void @"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..IntoIter$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$$GT$17h4fbb02021ad46b2cE"(ptr noalias noundef align 8 dereferenceable(64) %.sroa.6.0..sroa_idx41.i.i), !noalias !17914
  call fastcc void @"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..IntoIter$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$$GT$17h4fbb02021ad46b2cE"(ptr noalias noundef align 8 dereferenceable(64) %.sroa.742.0..sroa_idx.i.i), !noalias !17914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !17912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !17903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !17918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !17918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !17918
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h70b56ccc30ea811aE.exit.i.i.i

bb.he:                                            ; preds = %bb.hk
  %i.vi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !17919)
  call void @llvm.experimental.noalias.scope.decl(metadata !17920), !noalias !17921
  call void @llvm.experimental.noalias.scope.decl(metadata !17922), !noalias !17921
  call void @llvm.experimental.noalias.scope.decl(metadata !17923), !noalias !17921
  %i.vj = icmp eq i64 %i.ut, 0
  br i1 %i.vj, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i", label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.vk, align 8, !alias.scope !17924, !noalias !17913, !nonnull !35, !noundef !35
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.ut, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17925
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i"

"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i": ; preds = %bb.hf, %bb.he
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  call void @llvm.experimental.noalias.scope.decl(metadata !17926), !noalias !17921
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %.val.i.i.i.i.i29.i.i = load ptr, ptr %i.vm, align 8, !alias.scope !17927, !noalias !17913, !nonnull !35, !noundef !35 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %.val1.i.i.i.i.i30.i.i = load i64, ptr %i.vn, align 8, !alias.scope !17927, !noalias !17913, !noundef !35 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17928), !noalias !17921
  %i.vo = icmp eq i64 %.val1.i.i.i.i.i30.i.i, 0
  br i1 %i.vo, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i", %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.vq, %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.vp = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i.i.i29.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.vq = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.vp, align 8, !range !36, !alias.scope !17929, !noalias !17930, !noundef !35 ; 2 uses
  %i.vr = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.vr, label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i", label %bb.hg

bb.hg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.vs = getelementptr i8, ptr %i.vp, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.vs, align 8, !alias.scope !17928, !noalias !17930, !nonnull !35, !noundef !35
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17931
  br label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.hg, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.vt = icmp eq i64 %i.vq, %.val1.i.i.i.i.i30.i.i
  br i1 %i.vt, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.i.i.i.i.i.i"
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.vl, align 8, !range !36, !alias.scope !17927, !noalias !17913, !noundef !35 ; 2 uses
  %i.vu = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.vu, label %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i", label %bb.hh

bb.hh:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i.i.i.i.i"
  %i.vv = mul nuw i64 %.val2.i.i.i.i.i.i.i, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i29.i.i, i64 noundef %i.vv, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17930
  br label %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i"

"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i": ; preds = %bb.hh, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i.i.i.i.i"
  %i.vw = load i64, ptr %i.ak, align 8, !range !50, !alias.scope !17932, !noalias !17933, !noundef !35
  %i.vx = icmp eq i64 %i.vw, 0
  %i.vy = load ptr, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !17902
  %i.vz = icmp eq ptr %i.vy, null
  %or.cond52.i.i = select i1 %i.vx, i1 true, i1 %i.vz
  br i1 %or.cond52.i.i, label %"_ZN4core3ptr194drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$std..collections..hash..map..HashMap$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$$GT$$GT$17h0de398e3bc7087b4E.exit.i.i.i.i.i", label %bb.hi

bb.hi:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i"
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$$GT$17h9181c0c7040241c0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %.sroa.439.0..sroa_idx.i.i), !noalias !17914
  br label %"_ZN4core3ptr194drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$std..collections..hash..map..HashMap$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$$GT$$GT$17h0de398e3bc7087b4E.exit.i.i.i.i.i"

"_ZN4core3ptr194drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$core..option..IntoIter$LT$std..collections..hash..map..HashMap$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$$GT$$GT$17h0de398e3bc7087b4E.exit.i.i.i.i.i": ; preds = %bb.hi, %"_ZN4core3ptr82drop_in_place$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$17h3698e1a9bfe0767cE.exit.i.i.i.i.i"
  call fastcc void @"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..IntoIter$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$$GT$17h4fbb02021ad46b2cE"(ptr noalias noundef align 8 dereferenceable(64) %.sroa.6.0..sroa_idx41.i.i), !noalias !17914
  call fastcc void @"_ZN4core3ptr147drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..IntoIter$LT$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$$GT$17h4fbb02021ad46b2cE"(ptr noalias noundef align 8 dereferenceable(64) %.sroa.742.0..sroa_idx.i.i), !noalias !17914
  br label %.body

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.hb
  %i.wa = icmp eq i64 %i.vb, 0
  br i1 %i.wa, label %bb.hl, label %bb.hj

bb.hj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17934
  %i.wb = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.vb, i64 noundef range(i64 1, 9) 8) #41, !noalias !17934 ; 2 uses
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj, %bb.hb
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.hj ], [ 0, %bb.hb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.vb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @821) #42
          to label %.noexc.i.i.i.i31.i.i unwind label %bb.he, !noalias !17913

.noexc.i.i.i.i31.i.i:                             ; preds = %bb.hk
  unreachable

bb.hl:                                            ; preds = %bb.hj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.wb, %bb.hj ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.hj ] ; 2 uses
  %i.wd = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.wd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.ai, i64 112, i1 false), !noalias !17913
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.aj, align 8, !noalias !17913
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !17913
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !17913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !17913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ah, ptr noundef nonnull align 8 dereferenceable(184) %i.ak, i64 184, i1 false), !noalias !17914
  call void @llvm.experimental.noalias.scope.decl(metadata !17935)
  call void @llvm.experimental.noalias.scope.decl(metadata !17936)
  call void @llvm.experimental.noalias.scope.decl(metadata !17937)
  call void @llvm.experimental.noalias.scope.decl(metadata !17938)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !17939
  call fastcc void @"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2312c97b28139accE"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.ah), !noalias !17940
  %i.we = load i64, ptr %i.ag, align 8, !range !41, !noalias !17941, !noundef !35
  %.not1.i.i.i.i.i.i.i.i = icmp eq i64 %i.we, -9223372036854775808
  br i1 %.not1.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.hl
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  br label %bb.hm

bb.hm:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i
  %i.wj = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.wy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i.i.i.i.i.i.i" ]
  %i.wk = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.xa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %i.wl = icmp samesign ult i64 %i.wk, 82351536043346213
  call void @llvm.assume(i1 %i.wl)
  %i.wm = load i64, ptr %i.aj, align 8, !range !36, !alias.scope !17942, !noalias !17913, !noundef !35
  %i.wn = icmp eq i64 %i.wk, %i.wm
  br i1 %i.wn, label %bb.hp, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i.i.i.i.i.i.i", %bb.hl
  %i.wo = load i64, ptr %i.ah, align 8, !range !50, !alias.scope !17943, !noalias !17913, !noundef !35
  %i.wp = icmp eq i64 %i.wo, 0
  br i1 %i.wp, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd48a2ea4c1ad522dE.exit.i.i, label %bb.hn

bb.hn:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.wr = load ptr, ptr %i.wq, align 8, !alias.scope !17944, !noalias !17913, !noundef !35
  %i.ws = icmp eq ptr %i.wr, null
  br i1 %i.ws, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd48a2ea4c1ad522dE.exit.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$$GT$17h9181c0c7040241c0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.wq), !noalias !17940
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hd48a2ea4c1ad522dE.exit.i.i

bb.hp:                                            ; preds = %bb.hm
  %i.wt = load i64, ptr %i.wf, align 8, !range !47, !alias.scope !17945, !noalias !17913, !noundef !35
  %.not.i.i.i.i.i.i.i.i.i.i18 = icmp eq i64 %i.wt, -9223372036854775807
  %.val.i.i.i.i.i.i.i.i.i.i.i19 = load i64, ptr %i.wg, align 8, !alias.scope !17945, !noalias !17913
  %i.wu = load i64, ptr %i.wh, align 8, !range !47, !alias.scope !17945, !noalias !17913, !noundef !35
  %.not51.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wu, -9223372036854775807
  %.val.i57.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.wi, align 8, !alias.scope !17945, !noalias !17913
  %.sroa.8.0.i.i.i.i.i.i.i.i.i.i = select i1 %.not51.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %.val.i57.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wv = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i.i.i.i19, i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i.i)
  %i.ww = select i1 %.not.i.i.i.i.i.i.i.i.i.i18, i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i.i, i64 %i.wv
  %i.wx = call i64 @llvm.uadd.sat.i64(i64 %i.ww, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef %i.wk, i64 noundef range(i64 1, 0) %i.wx, i64 noundef 8, i64 noundef 112)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %.body.i.i.i.i28.i.i, !noalias !17946

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.hp
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !17942, !noalias !17913
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.hm
  %i.wy = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62374ed62186109aE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.wj, %bb.hm ] ; 2 uses
  %i.wz = getelementptr inbounds nuw [112 x i8], ptr %i.wy, i64 %i.wk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.wz, ptr noundef nonnull align 8 dereferenceable(112) %i.ag, i64 112, i1 false), !noalias !17941
  %i.xa = add nuw nsw i64 %i.wk, 1                ; 2 uses
  store i64 %i.xa, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !17942, !noalias !17913
  call fastcc void @"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2312c97b28139accE"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.ah), !noalias !17940
  %i.xb = load i64, ptr %i.ag, align 8, !range !41, !noalias !17941, !noundef !35
end_hunk_0
