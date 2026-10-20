Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel.nickel.321223028b931924-cgu.0?download=true
inline.NumInlined: 8339
inline.NumDeleted: 3956
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hed812a3005248fa4E":bb.a
  unreachable

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.thread.i.i.i.i": ; preds = %bb.av, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1012
  br label %bb.ax

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1015
  %.sroa.015.0.copyload.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !1032, !noalias !1012 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i.i.i.i, i64 64, i1 false), !alias.scope !1032, !noalias !1012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1012
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.015.0.copyload.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.thread.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i.i)
  br label %bb.b

bb.ay:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.i.i.i.i"
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616.i.i.i.i, i64 64, i1 false), !noalias !1033
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i.i)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.015.0.copyload.i.i.i.i, ptr %i.aw, align 8, !noalias !1033
  %.val.i = load ptr, ptr %i.hm, align 8, !alias.scope !968 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.hq = load i32, ptr %i.hp, align 8, !range !38, !alias.scope !1036, !noalias !1033, !noundef !16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.hs = load i32, ptr %i.hr, align 4, !alias.scope !1036, !noalias !1033
  %i.ht = trunc nuw i32 %i.hq to i1
  br i1 %i.ht, label %bb.az, label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 3 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !1036, !noalias !1033, !nonnull !16, !noundef !16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !1037, !noundef !16 ; 3 uses
  %i.hy = icmp ult i64 %i.hx, 1152921504606846976
  call void @llvm.assume(i1 %i.hy)
  %i.hz = icmp eq i64 %i.hx, 1
  br i1 %i.hz, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ia = zext i32 %i.hs to i64                   ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %i.hx, %i.ia
  %i.ib = shl nuw nsw i64 %i.ia, 1                ; 2 uses
  %i.ic = or disjoint i64 %i.ib, 1
  br i1 %.not.i.i.i.i, label %bb.bb, label %bb.bk

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.057.0.i.i.i = phi i64 [ 0, %bb.az ], [ %i.ib, %bb.ba ] ; 2 uses
  %.sroa.058.0.i.i.i = phi i64 [ 1, %bb.az ], [ %i.ic, %bb.ba ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !1036, !noalias !1033, !noundef !16 ; 2 uses
  %.not63.i.i.i = icmp ult i64 %.sroa.057.0.i.i.i, %i.if
  %i.ig = load ptr, ptr %i.id, align 8, !alias.scope !1036, !noalias !1033, !nonnull !16 ; 2 uses
  br i1 %.not63.i.i.i, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.sroa.057.0.i.i.i
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !1037, !noundef !16 ; 6 uses
  %.not.i.i.i = icmp ne i64 %i.ii, 0
  %.not64.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i, %i.if
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not64.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.sroa.058.0.i.i.i
  %i.ik = load i64, ptr %i.ij, align 8, !noalias !1037, !noundef !16 ; 6 uses
  %.not60.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not60.i.i.i, label %bb.bk, label %bb.bj

.body.i.i:                                        ; preds = %bb.ce, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c8149b4fd09469E.exit.i.i", %.body.i.i.i.i.i.i, %bb.bp, %bb.bo, %bb.bo, %bb.bi
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.je, %bb.bp ], [ %i.iw, %bb.bi ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.je, %bb.bo ], [ %i.je, %bb.bo ], [ %.pn.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c8149b4fd09469E.exit.i.i" ], [ %.pn.i.i, %bb.ce ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  call void @llvm.experimental.noalias.scope.decl(metadata !1039), !noalias !1040
  %i.il = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041), !noalias !1040
  call void @llvm.experimental.noalias.scope.decl(metadata !1042), !noalias !1040
  call void @llvm.experimental.noalias.scope.decl(metadata !1043), !noalias !1040
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !1044, !noalias !1045, !nonnull !16, !noundef !16
  %i.in = atomicrmw sub ptr %i.im, i64 1 release, align 8, !noalias !1046
  %i.io = icmp eq i64 %i.in, 1
  br i1 %i.io, label %bb.be, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i"

bb.be:                                            ; preds = %.body.i.i
  fence acquire, !noalias !1040
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.il)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i" unwind label %bb.bf, !noalias !1047

bb.bf:                                            ; preds = %bb.be
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !1048, !noalias !1045 ; 2 uses
  %i.iq = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.iq, label %.body.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val3.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !1048, !noalias !1045, !nonnull !16, !noundef !16
  %i.is = shl nuw i64 %.val2.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1047
  br label %.body.i

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i": ; preds = %bb.be, %.body.i.i
  %.val.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !1048, !noalias !1045 ; 2 uses
  %i.it = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.it, label %common.resume, label %bb.bh

bb.bh:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i"
  %i.iu = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val1.i.i.i = load ptr, ptr %i.iu, align 8, !alias.scope !1048, !noalias !1045, !nonnull !16, !noundef !16
  %i.iv = shl nuw i64 %.val.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1047
  br label %common.resume

bb.bi:                                            ; preds = %bb.bm, %bb.bk, %bb.bj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bj:                                            ; preds = %bb.bd
  %i.ix = add i64 %i.ii, -1                       ; 8 uses
  %i.iy = add i64 %i.ik, -1                       ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !1034, !noalias !1033, !nonnull !16, !align !28, !noundef !16 ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.jc = load i64, ptr %i.jb, align 8, !alias.scope !1034, !noalias !1033, !noundef !16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1049
  invoke void @_ZN14regex_automata4util8captures8Captures4iter17h5ada3b58a888dec5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ho)
          to label %bb.bm unwind label %bb.bi, !noalias !1047

bb.bk:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #45
          to label %bb.bl unwind label %bb.bi, !noalias !1047

bb.bl:                                            ; preds = %bb.cs, %.loopexit24.i.i, %bb.bk
  unreachable

bb.bm:                                            ; preds = %bb.bj
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.54.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1049
  store ptr %i.ja, ptr %i.ac, align 8, !alias.scope !1051, !noalias !1052
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.jc, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !1051, !noalias !1052
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  store i64 1, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !alias.scope !1051, !noalias !1052
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1055
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb4d8f5d6fee17f7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac)
          to label %.noexc.i.i unwind label %bb.bi, !noalias !1047

.noexc.i.i:                                       ; preds = %bb.bm
  %i.jd = load i64, ptr %i.aa, align 8, !range !39, !noalias !1055, !noundef !16 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.jd, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1055
  br label %bb.by

bb.bo:                                            ; preds = %bb.bs
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %i.jd, label %bb.bp [
    i64 -9223372036854775808, label %.body.i.i
    i64 0, label %.body.i.i
  ]

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef %i.jd, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1056
  br label %.body.i.i

bb.bq:                                            ; preds = %.noexc.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1055 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i, align 8, !noalias !1055
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.jf, align 8, !alias.scope !1057, !noalias !1050, !nonnull !16, !noundef !16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.val5.i.i.i.i.i.i.i.i = load ptr, ptr %i.jg, align 8, !alias.scope !1057, !noalias !1050, !nonnull !16, !noundef !16
  %i.jh = ptrtoint ptr %.val5.i.i.i.i.i.i.i.i to i64
  %i.ji = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.jj = sub nuw i64 %i.jh, %i.ji
  %i.jk = lshr exact i64 %i.jj, 4
  %i.jl = load i64, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !alias.scope !1057, !noalias !1050, !noundef !16
  %i.jm = call i64 @llvm.usub.sat.i64(i64 %i.jk, i64 %i.jl) ; 2 uses
  %i.jn = call i64 @llvm.umax.i64(i64 %i.jm, i64 3)
  %.sroa.0.0.i.i.i.i.i.i.i = add nuw nsw i64 %i.jn, 1 ; 3 uses
  %i.jo = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 24    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.jm, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bs, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bq
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1058
  %i.jq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jo, i64 noundef range(i64 1, 9) 8) #44, !noalias !1058 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.br ], [ 0, %bb.bq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.jo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #45
          to label %.noexc.i.i.i.i.i3.i unwind label %bb.bo, !noalias !1059

.noexc.i.i.i.i.i3.i:                              ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.br, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.jq, %bb.br ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.br ] ; 3 uses
  %1 = icmp samesign ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %1)
  store i64 %i.jd, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !1059
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1059
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1059
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.ab, align 8, !noalias !1055
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1055
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !noalias !1060
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1065
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb4d8f5d6fee17f7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %.noexc6.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1059

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.bt
  %i.js = load i64, ptr %i.y, align 8, !range !39, !noalias !1065, !noundef !16 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i64 %i.js, -9223372036854775807
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.loopexit12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc6.i.i.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.jv = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  br label %bb.bu

bb.bu:                                            ; preds = %.noexc7.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.jw = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kc, %.noexc7.i.i.i.i.i.i ]
  %i.jx = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ke, %.noexc7.i.i.i.i.i.i ] ; 5 uses
  %i.jy = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kf, %.noexc7.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1065 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1065
  %i.jz = icmp samesign ult i64 %i.jx, 384307168202282326
  call void @llvm.assume(i1 %i.jz)
  %i.ka = load i64, ptr %i.ab, align 8, !range !40, !alias.scope !1066, !noalias !1055, !noundef !16
  %i.kb = icmp eq i64 %i.jx, %i.ka
  br i1 %i.kb, label %bb.bx, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.bu
  %i.kc = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.jw, %bb.bu ] ; 2 uses
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %i.jx ; 3 uses
  store i64 %i.jy, ptr %i.kd, align 8, !noalias !1067
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1067
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1067
  %i.ke = add nuw nsw i64 %i.jx, 1                ; 3 uses
  store i64 %i.ke, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1066, !noalias !1055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1065
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb4d8f5d6fee17f7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1059

.noexc7.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i.i.i.i.i.i.i"
  %i.kf = load i64, ptr %i.y, align 8, !range !39, !noalias !1065, !noundef !16 ; 2 uses
  %.not.i.i.i.i.i.i.i1.i = icmp eq i64 %i.kf, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i.i1.i, label %.loopexit12.i.i.i.i.i.loopexit.i, label %bb.bu

bb.bv:                                            ; preds = %bb.bx
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %i.jy, label %bb.bw [
    i64 -9223372036854775808, label %.body.i.i.i.i.i.i
    i64 0, label %.body.i.i.i.i.i.i
  ]

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %i.jy, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1068
  br label %.body.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bu
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jt, align 8, !alias.scope !1069, !noalias !1055, !nonnull !16, !noundef !16
  %i.kh = ptrtoint ptr %.val5.i.i.i.i.i.i.i.i.i.i to i64
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ju, align 8, !alias.scope !1069, !noalias !1055, !nonnull !16, !noundef !16
  %i.ki = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i to i64
  %i.kj = sub nuw i64 %i.kh, %i.ki
  %i.kk = lshr exact i64 %i.kj, 4
  %i.kl = load i64, ptr %i.jv, align 8, !alias.scope !1069, !noalias !1055, !noundef !16
  %i.km = call i64 @llvm.usub.sat.i64(i64 %i.kk, i64 %i.kl)
  %i.kn = add nuw nsw i64 %i.km, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h8ae3cfdfc96bbcc2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.jx, i64 noundef range(i64 1, 0) %i.kn, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.bv, !noalias !1059

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.bx
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1066, !noalias !1055
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i.i.i.i.i.i.i", %bb.bt
  %lpad.loopexit.split-lp189 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bw, %bb.bv, %bb.bv
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.kg, %bb.bv ], [ %i.kg, %bb.bw ], [ %i.kg, %bb.bv ], [ %lpad.loopexit.split-lp189, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$$GT$17h129007d066d41211E"(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #46, !noalias !1059
  br label %.body.i.i

.loopexit12.i.i.i.i.i.loopexit.i:                 ; preds = %.noexc7.i.i.i.i.i.i
  %.sroa.013.0.copyload.pre.i = load i64, ptr %i.ab, align 8, !noalias !1070
  %.sroa.615.0.copyload.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1070
  br label %.loopexit12.i.i.i.i.i.i

.loopexit12.i.i.i.i.i.i:                          ; preds = %.loopexit12.i.i.i.i.i.loopexit.i, %.noexc6.i.i.i.i.i.i
  %.sroa.8.0.copyload.i = phi i64 [ %i.ke, %.loopexit12.i.i.i.i.i.loopexit.i ], [ 1, %.noexc6.i.i.i.i.i.i ]
  %.sroa.615.0.copyload.i = phi ptr [ %.sroa.615.0.copyload.pre.i, %.loopexit12.i.i.i.i.i.loopexit.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i ]
  %.sroa.013.0.copyload.i = phi i64 [ %.sroa.013.0.copyload.pre.i, %.loopexit12.i.i.i.i.i.loopexit.i ], [ %.sroa.4.0.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1055
  br label %bb.by

bb.by:                                            ; preds = %.loopexit12.i.i.i.i.i.i, %bb.bn
  %.sroa.8.0.i = phi i64 [ 0, %bb.bn ], [ %.sroa.8.0.copyload.i, %.loopexit12.i.i.i.i.i.i ] ; 6 uses
  %.sroa.615.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bn ], [ %.sroa.615.0.copyload.i, %.loopexit12.i.i.i.i.i.i ] ; 10 uses
  %.sroa.013.0.i = phi i64 [ 0, %bb.bn ], [ %.sroa.013.0.copyload.i, %.loopexit12.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1049
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !1071, !nonnull !16, !noundef !16 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !1071, !noundef !16 ; 4 uses
  %i.ks = ptrtoint ptr %i.kp to i64
  store i64 0, ptr %i.af, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 0, ptr %.sroa.05.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i64 0, ptr %.sroa.05.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i64 %i.kr, ptr %.sroa.05.sroa.0.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i32 0, ptr %.sroa.05.sroa.0.sroa.11.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.11.sroa.4.0..sroa.05.sroa.0.sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 68
  store i32 0, ptr %.sroa.05.sroa.0.sroa.11.sroa.4.0..sroa.05.sroa.0.sroa.11.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !1049
  %.sroa.05.sroa.0.sroa.11.sroa.5.0..sroa.05.sroa.0.sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store i8 2, ptr %.sroa.05.sroa.0.sroa.11.sroa.5.0..sroa.05.sroa.0.sroa.11.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 76
  store <4 x i8> <i8 1, i8 0, i8 2, i8 16>, ptr %.sroa.05.sroa.0.sroa.12.0..sroa_idx.i.i, align 4, !noalias !1049
  %.sroa.05.sroa.0.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store i8 16, ptr %.sroa.05.sroa.0.sroa.16.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i64 0, ptr %.sroa.05.sroa.0.sroa.18.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.18.sroa.5.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store i64 0, ptr %.sroa.05.sroa.0.sroa.18.sroa.5.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.18.sroa.7.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store i64 0, ptr %.sroa.05.sroa.0.sroa.18.sroa.7.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.18.sroa.9.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  store i64 %i.kr, ptr %.sroa.05.sroa.0.sroa.18.sroa.9.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.18.sroa.10.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  store i64 %i.kr, ptr %.sroa.05.sroa.0.sroa.18.sroa.10.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.18.sroa.11.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  store i32 0, ptr %.sroa.05.sroa.0.sroa.18.sroa.11.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.18.sroa.11.sroa.4.0..sroa.05.sroa.0.sroa.18.sroa.11.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 156
  store i32 0, ptr %.sroa.05.sroa.0.sroa.18.sroa.11.sroa.4.0..sroa.05.sroa.0.sroa.18.sroa.11.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 4, !noalias !1049
  %.sroa.05.sroa.0.sroa.18.sroa.11.sroa.5.0..sroa.05.sroa.0.sroa.18.sroa.11.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  store i8 2, ptr %.sroa.05.sroa.0.sroa.18.sroa.11.sroa.5.0..sroa.05.sroa.0.sroa.18.sroa.11.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.0.sroa.18.sroa.12.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 164
  store <4 x i8> <i8 1, i8 0, i8 2, i8 16>, ptr %.sroa.05.sroa.0.sroa.18.sroa.12.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !1049
  %.sroa.05.sroa.0.sroa.18.sroa.16.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  store i8 16, ptr %.sroa.05.sroa.0.sroa.18.sroa.16.0..sroa.05.sroa.0.sroa.18.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  store ptr %i.kp, ptr %.sroa.05.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.05.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 184
  store i64 %i.kr, ptr %.sroa.05.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 192 ; 2 uses
  store i64 %i.ks, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1049
  %i.kt = getelementptr inbounds nuw i8, ptr %i.af, i64 200 ; 2 uses
  store i64 0, ptr %i.kt, align 8, !noalias !1049
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.ku = invoke fastcc ptr @"_ZN100_$LT$unicode_segmentation..grapheme..Graphemes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h23989c0c124e9c8bE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.af)
          to label %.noexc60.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc60.i.i:                                     ; preds = %bb.by
  %.not.i29.i.i.i = icmp eq ptr %i.ku, null
  br i1 %.not.i29.i.i.i, label %.loopexit24.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc60.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.0.24..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i, i64 24
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc63.i.i, %.lr.ph.i.i.i
  %i.kx = phi ptr [ %i.ku, %.lr.ph.i.i.i ], [ %i.lg, %.noexc63.i.i ]
  %i.ky = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.lf, %.noexc63.i.i ] ; 2 uses
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = load i64, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !alias.scope !1074, !noalias !1049, !noundef !16
end_hunk_0
begin_hunk_1_@"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17ha6c55521a30056acE":bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.m, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @359) #45
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %1, align 8, !noalias !16244, !noundef !16
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %1, align 8, !noalias !16244
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit"

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit" unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.n

bb.h:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.j, label %bb.m

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %.not = icmp eq i64 %i.d, 32
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.s = phi i64 [ %i.w, %bb.l ], [ 0, %bb.j ]    ; 2 uses
  store i64 %i.s, ptr %i.f, align 8
  store i64 0, ptr %i.c, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.u = shl i64 %i.d, 3
  %i.v = sub i64 256, %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.t, i64 %i.v, i1 false)
  %.pre = load i64, ptr %i.c, align 8
  %i.w = sub i64 32, %.pre
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.h, %bb.i
  %i.x = phi i64 [ %i.s, %bb.k ], [ %i.g, %bb.h ], [ 0, %bb.i ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x
  store ptr %1, ptr %i.y, align 8
  %i.z = load i64, ptr %i.f, align 8, !noundef !16
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(80) ptr @"_ZN18codespan_reporting4term5views28RichDiagnostic$LT$FileId$GT$6render25LabeledFile$LT$FileId$GT$18get_or_insert_line17h0ed524c4aeb3f769E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 16              ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [120 x i8], align 8               ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [120 x i8], align 8               ; 9 uses
  %i.h = alloca [80 x i8], align 8                ; 12 uses
  %.sroa.825.i.i.i = alloca [72 x i8], align 8    ; 6 uses
  %.sroa.7.i.i.i = alloca [72 x i8], align 8      ; 5 uses
  %.sroa.14.i.i.i = alloca [72 x i8], align 8     ; 7 uses
  %i.i = alloca [80 x i8], align 8                ; 17 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16352)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !16352, !noundef !16 ; 5 uses
  %.not.i = icmp eq ptr %i.k, null                ; 2 uses
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !16352, !noundef !16
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.m, %bb.b ], [ %i.ac, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.ab, %bb.f ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 888 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 978
  %i.p = load i16, ptr %i.o, align 2, !noalias !16353, !noundef !16 ; 2 uses
  %i.q = zext i16 %i.p to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.s = icmp eq i16 %i.p, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i190, i64 8 ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.8.0.i.i.i189, 1
  %i.v = icmp eq ptr %i.t, %i.r
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.03.0.i.i.i190 = phi ptr [ %i.t, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i.i189 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.val7.i.i.i = load i64, ptr %.sroa.03.0.i.i.i190, align 8, !noalias !16353, !noundef !16
  %i.w = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %.val7.i.i.i)
  switch i8 %i.w, label %bb.e [
    i8 -1, label %._crit_edge
    i8 0, label %bb.g
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %.sroa.8.0.i.i.i189, %.lr.ph ] ; 3 uses
  %i.x = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.x, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 984
  %i.z = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.4.0.i.ph.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !16354, !nonnull !16, !noundef !16
  %i.ac = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.8.0.i.i.i189
  br label %"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$14or_insert_with17h919824cee48dc7efE.exit"

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  %.sroa.19.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.4.0.i.ph.i.i, %._crit_edge ] ; 11 uses
  %.sroa.11.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.0.0.i.i, %._crit_edge ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16355
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %4, ptr %i.ae, align 8, !alias.scope !16356, !noalias !16355
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %2, ptr %i.af, align 8, !alias.scope !16356, !noalias !16355
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %3, ptr %i.ag, align 8, !alias.scope !16356, !noalias !16355
  store i64 0, ptr %i.i, align 8, !alias.scope !16356, !noalias !16355
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !16356, !noalias !16355
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.42.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !16356, !noalias !16355
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i9.i, align 8, !alias.scope !16356, !noalias !16355
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !16356, !noalias !16355
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i8 0, ptr %i.ah, align 8, !alias.scope !16356, !noalias !16355
  %.not.i.i = icmp eq ptr %.sroa.11.0.ph, null
  br i1 %.not.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.loopexit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !16357
  %i.ai = tail call noalias noundef align 8 dereferenceable_or_null(984) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 984, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !16357 ; 7 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %bb.j, !prof !22

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 984) #45
          to label %.noexc.i.i unwind label %bb.be, !noalias !16357

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 880
  store ptr null, ptr %i.ak, align 8, !noalias !16357
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 978
  store ptr %i.ai, ptr %i.j, align 8, !noalias !16357
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.am, align 8, !noalias !16357
  store i16 1, ptr %i.al, align 2, !noalias !16358
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 888
  store i64 %1, ptr %i.an, align 8, !noalias !16358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !16359
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h3e48daec15fe73caE.exit.i"

bb.k:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %.sink62.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %.sink62.i.sroa.gep44.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 3 uses
  %.sink61.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sink61.i.sroa.gep46.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16360
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph, i64 978 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !16361, !noundef !16 ; 2 uses
  %i.aq = icmp ugt i16 %i.ap, 10
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp ult i64 %.sroa.19.0.ph, 5
  store ptr %.sroa.11.0.ph, ptr %i.f, align 8, !noalias !16361
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.as, align 8, !noalias !16361
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  br i1 %i.ar, label %.invoke.i.i.i.i, label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.au = zext nneg i16 %i.ap to i64              ; 2 uses
  %5 = add nuw nsw i64 %i.au, 1                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph, i64 888 ; 2 uses
  %i.aw = add i64 %.sroa.19.0.ph, 1               ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %5, %i.aw
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.19.0.ph ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %1, ptr %i.ax, align 8, !alias.scope !16362, !noalias !16363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !16364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16365)
  br label %.thread.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.az = sub nsw i64 %i.au, %.sroa.19.0.ph       ; 2 uses
  %i.ba = shl nsw i64 %i.az, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.ax, i64 %i.ba, i1 false), !alias.scope !16362, !noalias !16363
  store i64 %1, ptr %i.ax, align 8, !alias.scope !16362, !noalias !16363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !16364
  %i.bb = getelementptr inbounds nuw [80 x i8], ptr %.sroa.11.0.ph, i64 %.sroa.19.0.ph
  %i.bc = getelementptr inbounds nuw [80 x i8], ptr %.sroa.11.0.ph, i64 %i.aw
  %i.bd = mul nsw i64 %i.az, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull align 8 %i.bb, i64 %i.bd, i1 false), !alias.scope !16366, !noalias !16363
  br label %.thread.i.i.i

bb.p:                                             ; preds = %bb.l
  switch i64 %.sroa.19.0.ph, label %bb.q [
    i64 5, label %.invoke.i.i.i.i
    i64 6, label %bb.r
  ]

.invoke.i.i.i.i:                                  ; preds = %bb.p, %bb.l
  %.sink.i.i.i.i = phi i64 [ %.sroa.19.0.ph, %bb.p ], [ 4, %bb.l ]
  store i64 %.sink.i.i.i.i, ptr %i.at, align 8, !noalias !16361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16361
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17heaeb42c23312c8daE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.t unwind label %bb.be, !noalias !16361

bb.q:                                             ; preds = %bb.p
  store i64 6, ptr %i.at, align 8, !noalias !16361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16361
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17heaeb42c23312c8daE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.s unwind label %bb.be, !noalias !16361

bb.r:                                             ; preds = %bb.p
  store i64 5, ptr %i.at, align 8, !noalias !16361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16361
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17heaeb42c23312c8daE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.t unwind label %bb.be, !noalias !16361

bb.s:                                             ; preds = %bb.q
  %i.be = add i64 %.sroa.19.0.ph, -7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.invoke.i.i.i.i
  %.sink62.i.sroa.phi.i.i.i = phi ptr [ %.sink62.i.sroa.gep.i.i.i, %.invoke.i.i.i.i ], [ %.sink62.i.sroa.gep44.i.i.i, %bb.r ], [ %.sink62.i.sroa.gep44.i.i.i, %bb.s ]
  %.sroa.10.0.i.i.i.i = phi i64 [ %.sroa.19.0.ph, %.invoke.i.i.i.i ], [ 0, %bb.r ], [ %i.be, %bb.s ] ; 9 uses
  %i.bf = load ptr, ptr %.sink62.i.sroa.phi.i.i.i, align 8, !noalias !16361, !nonnull !16, !noundef !16 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 978 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !16367, !noundef !16 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %6 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 888 ; 2 uses
  %.not.i41.not.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sroa.10.0.i.i.i.i ; 3 uses
  br i1 %.not.i41.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %1, ptr %i.bk, align 8, !alias.scope !16368, !noalias !16367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !16369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16370)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bl = add nuw nsw i64 %.sroa.10.0.i.i.i.i, 1  ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.10.0.i.i.i.i ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !16368, !noalias !16367
  store i64 %1, ptr %i.bk, align 8, !alias.scope !16368, !noalias !16367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !16369
  %i.bp = getelementptr inbounds nuw [80 x i8], ptr %i.bf, i64 %.sroa.10.0.i.i.i.i
  %i.bq = getelementptr inbounds nuw [80 x i8], ptr %i.bf, i64 %i.bl
  %i.br = mul nuw nsw i64 %i.bn, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !16371, !noalias !16367
  br label %bb.w

.thread.i.i.i:                                    ; preds = %bb.o, %bb.n
  %i.bs = getelementptr inbounds nuw [80 x i8], ptr %.sroa.11.0.ph, i64 %.sroa.19.0.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.d, i64 80, i1 false), !alias.scope !16372, !noalias !16363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %7 = trunc nuw nsw i64 %5 to i16
  store i16 %7, ptr %i.ao, align 2, !noalias !16363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16360
  br label %bb.y

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bt = getelementptr inbounds nuw [80 x i8], ptr %i.bf, i64 %.sroa.10.0.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.c, i64 80, i1 false), !alias.scope !16373, !noalias !16367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i16 %6, ptr %i.bg, align 2, !noalias !16367
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.e, align 8, !noalias !16374 ; 2 uses
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !noalias !16374 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx.i.i.i, i64 72, i1 false), !noalias !16374
  %.sroa.79.0.copyload.i.i.i = load ptr, ptr %.sink62.i.sroa.gep.i.i.i, align 8, !noalias !16374 ; 4 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sink61.i.sroa.gep.i.i.i, align 8, !noalias !16374 ; 2 uses
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sink62.i.sroa.gep44.i.i.i, align 8, !noalias !16374 ; 3 uses
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sink61.i.sroa.gep46.i.i.i, align 8, !noalias !16374 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16360
  %.not.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.79.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.i.i.i, i64 72, i1 false), !noalias !16360
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.79.0.copyload.i.i.i, i64 880
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !16375, !noundef !16 ; 2 uses
  %.not.i141.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i141.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %.sroa.825.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %.sroa.931.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %.sroa.1137.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.14.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.ag

bb.y:                                             ; preds = %bb.w, %.thread.i.i.i
  %.sroa.11.060.i.i.i = phi ptr [ %.sroa.11.0.ph, %.thread.i.i.i ], [ %i.bf, %bb.w ]
  %.sroa.19.058.i.i.i = phi i64 [ %.sroa.19.0.ph, %.thread.i.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h3e48daec15fe73caE.exit.i"

._crit_edge.i.i.i:                                ; preds = %bb.bc, %bb.x
  %.sroa.11.0.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i, %bb.x ], [ %i.jw, %bb.bc ]
  %.sroa.1034.0131.lcssa.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i, %bb.x ], [ %.sroa.1034.0.i.i.i, %bb.bc ] ; 4 uses
  %.sroa.931.0126.lcssa.i.i.i = phi i64 [ %.sroa.8.0.copyload.i.i.i, %bb.x ], [ %.sroa.931.0.i.i.i, %bb.bc ]
  %.sroa.828.0121.lcssa.i.i.i = phi ptr [ %.sroa.79.0.copyload.i.i.i, %bb.x ], [ %.sroa.828.0.i.i.i, %bb.bc ]
  %.sroa.018.0116.lcssa.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i, %bb.x ], [ %i.jz, %bb.bc ] ; 2 uses
  %.lcssa93.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i, %bb.x ], [ %.sroa.1137.0.copyload39.i.i.i, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16360
  %.sroa.02.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.02.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14.i.i.i, i64 72, i1 false), !noalias !16360
  store i64 %.sroa.018.0116.lcssa.i.i.i, ptr %i.g, align 8, !noalias !16360
  %.sroa.02.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 %.sroa.11.0.i.i.i, ptr %.sroa.02.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !16360
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr %.sroa.828.0121.lcssa.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !16360
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 %.sroa.931.0126.lcssa.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !16360
  %.sroa.65.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %.sroa.1034.0131.lcssa.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i, align 8, !noalias !16360
  %.sroa.76.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i64 %.lcssa93.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i.i, align 8, !noalias !16360
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %.not.i, label %bb.z, label %bb.ab, !prof !22

bb.z:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @492) #45
          to label %bb.aa unwind label %bb.af, !noalias !16376

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16377)
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !16377, !noalias !16376, !noundef !16 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !16378
  %i.cb = tail call noalias noundef align 8 dereferenceable_or_null(1080) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1080, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !16378 ; 10 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ac, label %bb.ae, !prof !22

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1080) #45
          to label %.noexc.i.i.i.i.i unwind label %bb.ad, !noalias !16378

.noexc.i.i.i.i.i:                                 ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 880
  store ptr null, ptr %i.ce, align 8, !noalias !16378
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 978 ; 2 uses
  store i16 0, ptr %i.cf, align 2, !noalias !16378
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 984
  store ptr %i.k, ptr %i.cg, align 8, !noalias !16378
  %i.ch = add i64 %i.ca, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 880
  store ptr %i.cb, ptr %i.ci, align 8, !noalias !16379
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 976
  store i16 0, ptr %i.cj, align 8, !noalias !16380
  store ptr %i.cb, ptr %i.j, align 8, !alias.scope !16377, !noalias !16376
  store i64 %i.ch, ptr %i.bz, align 8, !alias.scope !16377, !noalias !16376
  %i.ck = icmp eq i64 %.lcssa93.i.i.i, %i.ca
  br i1 %i.ck, label %bb.bd, label %.invoke.i.i.i.i.i, !prof !18

.invoke.i.i.i.i.i:                                ; preds = %bb.ae
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @494, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @495) #45
          to label %.cont.i.i.i.i.i unwind label %bb.af, !noalias !16381

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

bb.af:                                            ; preds = %.invoke.i.i.i.i.i, %bb.z
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.ag:                                            ; preds = %bb.bc, %.lr.ph.i.i.i
  %.sroa.11.1.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %i.jw, %bb.bc ]
  %i.cm = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %i.jy, %bb.bc ] ; 14 uses
  %i.cn = phi ptr [ %.sroa.79.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.828.0.i.i.i, %bb.bc ]
  %i.co = phi i64 [ %.sroa.8.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.931.0.i.i.i, %bb.bc ] ; 2 uses
  %i.cp = phi ptr [ %.sroa.9.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.1034.0.i.i.i, %bb.bc ] ; 3 uses
  %.sroa.018.0116146.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %i.jz, %bb.bc ] ; 6 uses
  %.sroa.1137.0136142.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.1137.0.copyload39.i.i.i, %bb.bc ]
  %i.cq = add i64 %i.co, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 976
  %i.cs = load i16, ptr %i.cr, align 8, !noalias !16375 ; 5 uses
  %i.ct = zext i16 %i.cs to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.825.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16360
  store i64 %.sroa.11.1.i.i.i, ptr %i.h, align 8, !noalias !16360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14.i.i.i, i64 72, i1 false), !noalias !16360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16360
  %i.cu = icmp eq i64 %.sroa.1137.0136142.i.i.i, %i.co
  br i1 %i.cu, label %bb.ai, label %bb.ah, !prof !18

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @500, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501) #45
          to label %bb.aj unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16382

bb.ai:                                            ; preds = %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 978
  %i.cw = load i16, ptr %i.cv, align 2, !noalias !16382, !noundef !16 ; 4 uses
  %i.cx = icmp ult i16 %i.cw, 11
  br i1 %i.cx, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cy = icmp ult i16 %i.cs, 5
  store ptr %i.cm, ptr %i.b, align 8, !noalias !16382
  store i64 %i.cq, ptr %i.bw, align 8, !noalias !16382
  br i1 %i.cy, label %.invoke.i22.i.i.i, label %bb.ap

bb.al:                                            ; preds = %bb.ai
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 978
  %i.da = zext nneg i16 %i.cw to i64              ; 4 uses
  %i.db = add nuw nsw i16 %i.cw, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 888 ; 2 uses
  %i.dd = add nuw nsw i64 %i.ct, 1                ; 7 uses
  %8 = icmp ugt i16 %i.cw, %i.cs
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ct ; 3 uses
  br i1 %8, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i64 %.sroa.018.0116146.i.i.i, ptr %i.de, align 8, !alias.scope !16383, !noalias !16384
  %i.df = getelementptr inbounds nuw [80 x i8], ptr %i.cm, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.df, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !16360
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd
  %i.dh = sub nuw nsw i64 %i.da, %i.ct            ; 2 uses
  %i.di = shl nuw nsw i64 %i.dh, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.de, i64 %i.di, i1 false), !alias.scope !16383, !noalias !16384
  store i64 %.sroa.018.0116146.i.i.i, ptr %i.de, align 8, !alias.scope !16383, !noalias !16384
  %i.dj = getelementptr inbounds nuw [80 x i8], ptr %i.cm, i64 %i.ct ; 2 uses
  %i.dk = getelementptr inbounds nuw [80 x i8], ptr %i.cm, i64 %i.dd
  %i.dl = mul nuw nsw i64 %i.dh, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr nonnull align 8 %i.dj, i64 %i.dl, i1 false), !alias.scope !16385, !noalias !16384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dj, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !16360
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 984 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dd
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ct
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.dn, i64 %i.di, i1 false), !alias.scope !16386, !noalias !16384
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cm, i64 984 ; 6 uses
  %i.dr = add nuw nsw i64 %i.da, 2                ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dd
  store ptr %i.cp, ptr %i.ds, align 8, !alias.scope !16386, !noalias !16384
  store i16 %i.db, ptr %i.cz, align 2, !noalias !16384
  %i.dt = icmp samesign ult i64 %i.dd, %i.dr
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i.preheader, label %.thread65.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ao
  %i.du = add nuw nsw i64 %i.da, 1
  %i.dv = sub nsw i64 %i.du, %i.ct
  %i.dw = sub nsw i64 %i.da, %i.ct
  %xtraiter235 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter237 = phi i64 [ %prol.iter237.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.dx = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.dy = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !16387, !nonnull !16, !noundef !16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 880
  store ptr %i.cm, ptr %i.eb, align 8, !noalias !16388
  %i.ec = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 976
  store i16 %i.ec, ptr %i.ed, align 8, !noalias !16388
  %prol.iter237.next = add i64 %prol.iter237, 1   ; 2 uses
  %prol.iter237.cmp.not = icmp eq i64 %prol.iter237.next, %xtraiter235
  br i1 %prol.iter237.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !16321

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ee = icmp ult i64 %i.dw, 3
  br i1 %i.ee, label %.thread65.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.ex, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ef = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !16387, !nonnull !16, !noundef !16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 880
  store ptr %i.cm, ptr %i.ei, align 8, !noalias !16388
  %i.ej = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 976
  store i16 %i.ej, ptr %i.ek, align 8, !noalias !16388
  %i.el = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ef
  %i.en = load ptr, ptr %i.em, align 8, !noalias !16387, !nonnull !16, !noundef !16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 880
  store ptr %i.cm, ptr %i.eo, align 8, !noalias !16388
  %i.ep = trunc nuw nsw i64 %i.ef to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 976
  store i16 %i.ep, ptr %i.eq, align 8, !noalias !16388
  %i.er = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.el
  %i.et = load ptr, ptr %i.es, align 8, !noalias !16387, !nonnull !16, !noundef !16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 880
  store ptr %i.cm, ptr %i.eu, align 8, !noalias !16388
  %i.ev = trunc nuw nsw i64 %i.el to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 976
  store i16 %i.ev, ptr %i.ew, align 8, !noalias !16388
  %i.ex = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.ey = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.er
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !16387, !nonnull !16, !noundef !16 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 880
  store ptr %i.cm, ptr %i.fb, align 8, !noalias !16388
  %i.fc = trunc nuw nsw i64 %i.er to i16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 976
  store i16 %i.fc, ptr %i.fd, align 8, !noalias !16388
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ex, %i.dr
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %.thread65.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ak
  switch i16 %i.cs, label %bb.aq [
    i16 5, label %.invoke.i22.i.i.i
    i16 6, label %bb.ar
  ]

.invoke.i22.i.i.i:                                ; preds = %bb.ap, %bb.ak
  %.sink.i23.i.i.i = phi i64 [ 5, %bb.ap ], [ 4, %bb.ak ]
  store i64 %.sink.i23.i.i.i, ptr %i.bx, align 8, !noalias !16382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16382
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h6d9613d7c519e969E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.as unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16382

bb.aq:                                            ; preds = %bb.ap
  store i64 6, ptr %i.bx, align 8, !noalias !16382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16382
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h6d9613d7c519e969E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ba unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16382

bb.ar:                                            ; preds = %bb.ap
  store i64 5, ptr %i.bx, align 8, !noalias !16382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16382
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h6d9613d7c519e969E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.aw unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16382

bb.as:                                            ; preds = %.invoke.i22.i.i.i
  %i.fe = load ptr, ptr %.sroa.828.0..sroa_idx.i.i.i, align 8, !noalias !16382, !nonnull !16, !noundef !16 ; 13 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 978 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !noalias !16389, !noundef !16 ; 3 uses
  %i.fh = zext i16 %i.fg to i64                   ; 4 uses
  %i.fi = add i16 %i.fg, 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 888 ; 2 uses
  %i.fk = add nuw nsw i64 %i.ct, 1                ; 7 uses
  %.not.i39.not.i.i.i.i = icmp ult i16 %i.cs, %i.fg
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.ct ; 3 uses
  br i1 %.not.i39.not.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i64 %.sroa.018.0116146.i.i.i, ptr %i.fl, align 8, !alias.scope !16390, !noalias !16389
  %i.fm = getelementptr inbounds nuw [80 x i8], ptr %i.fe, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fm, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !16391
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fk
  %i.fo = sub nuw nsw i64 %i.fh, %i.ct            ; 2 uses
  %i.fp = shl nuw nsw i64 %i.fo, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fn, ptr nonnull align 8 %i.fl, i64 %i.fp, i1 false), !alias.scope !16390, !noalias !16389
  store i64 %.sroa.018.0116146.i.i.i, ptr %i.fl, align 8, !alias.scope !16390, !noalias !16389
  %i.fq = getelementptr inbounds nuw [80 x i8], ptr %i.fe, i64 %i.ct ; 2 uses
  %i.fr = getelementptr inbounds nuw [80 x i8], ptr %i.fe, i64 %i.fk
  %i.fs = mul nuw nsw i64 %i.fo, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr nonnull align 8 %i.fq, i64 %i.fs, i1 false), !alias.scope !16392, !noalias !16389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !16391
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 984 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fk
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.ct
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr nonnull align 8 %i.fu, i64 %i.fp, i1 false), !alias.scope !16393, !noalias !16389
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fe, i64 984 ; 6 uses
  %i.fy = add nuw nsw i64 %i.fh, 2                ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fk
  store ptr %i.cp, ptr %i.fz, align 8, !alias.scope !16393, !noalias !16389
  store i16 %i.fi, ptr %i.ff, align 2, !noalias !16389
  %i.ga = icmp samesign ult i64 %i.fk, %i.fy
  br i1 %i.ga, label %.lr.ph.i.i40.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc0111e703fdee3ddE.exit43.i.i.i.i"

.lr.ph.i.i40.i.i.i.i.preheader:                   ; preds = %bb.av
  %i.gb = add nuw nsw i64 %i.fh, 1
  %i.gc = sub nsw i64 %i.gb, %i.ct
  %i.gd = sub nsw i64 %i.fh, %i.ct
  %xtraiter232 = and i64 %i.gc, 3                 ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph.i.i40.i.i.i.i.prol.loopexit, label %.lr.ph.i.i40.i.i.i.i.prol

.lr.ph.i.i40.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i40.i.i.i.i.preheader, %.lr.ph.i.i40.i.i.i.i.prol
  %.sroa.0.06.i.i41.i.i.i.i.prol = phi i64 [ %i.ge, %.lr.ph.i.i40.i.i.i.i.prol ], [ %i.fk, %.lr.ph.i.i40.i.i.i.i.preheader ] ; 4 uses
  %prol.iter234 = phi i64 [ %prol.iter234.next, %.lr.ph.i.i40.i.i.i.i.prol ], [ 0, %.lr.ph.i.i40.i.i.i.i.preheader ]
  %i.ge = add nuw nsw i64 %.sroa.0.06.i.i41.i.i.i.i.prol, 1 ; 2 uses
  %i.gf = icmp samesign ult i64 %.sroa.0.06.i.i41.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.0.06.i.i41.i.i.i.i.prol
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !16394, !nonnull !16, !noundef !16 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 880
  store ptr %i.fe, ptr %i.gi, align 8, !noalias !16395
  %i.gj = trunc nuw nsw i64 %.sroa.0.06.i.i41.i.i.i.i.prol to i16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 976
  store i16 %i.gj, ptr %i.gk, align 8, !noalias !16395
  %prol.iter234.next = add i64 %prol.iter234, 1   ; 2 uses
  %prol.iter234.cmp.not = icmp eq i64 %prol.iter234.next, %xtraiter232
  br i1 %prol.iter234.cmp.not, label %.lr.ph.i.i40.i.i.i.i.prol.loopexit, label %.lr.ph.i.i40.i.i.i.i.prol, !llvm.loop !16335

.lr.ph.i.i40.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i40.i.i.i.i.prol, %.lr.ph.i.i40.i.i.i.i.preheader
  %.sroa.0.06.i.i41.i.i.i.i.unr = phi i64 [ %i.fk, %.lr.ph.i.i40.i.i.i.i.preheader ], [ %i.ge, %.lr.ph.i.i40.i.i.i.i.prol ]
end_hunk_1
