Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB2_16InvocationParser16parse_invocation:bb.a
bb.ch:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge: ; preds = %bb.cg, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i, %.preheader.i.i
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.rq, %.preheader.i.i ], [ %i.rq, %bb.cg ], [ %.sroa.8.0.i.i.i.i2562, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i ] ; 2 uses
  %i.sc = icmp eq i64 %.sroa.3.0.i.i.i265, 0
  br i1 %i.sc, label %.loopexit86.i, label %bb.ci

bb.ci:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i266, i64 10136
  %i.se = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  call void @llvm.assume(i1 %i.se)
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %.sroa.4.0.i.ph.i.i.i
  %i.sg = load ptr, ptr %i.sf, align 8, !noalias !36881, !nonnull !28, !noundef !28
  %i.sh = add i64 %.sroa.3.0.i.i.i265, -1
  br label %.preheader.i.i

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE3geteEB1e_.exit.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.si = icmp samesign ult i64 %.sroa.8.0.i.i.i.i2562, 11
  call void @llvm.assume(i1 %i.si)
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i266, i64 184
  %i.sk = getelementptr inbounds nuw [904 x i8], ptr %i.sj, i64 %.sroa.8.0.i.i.i.i2562
  br label %bb.cm

.loopexit86.i:                                    ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge, %bb.cf
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.011.0153.i, i64 752
  %.val82.i = load ptr, ptr %i.sl, align 8, !noalias !36857, !noundef !28 ; 2 uses
  %.not.i90.i = icmp eq ptr %.val82.i, null
  br i1 %.not.i90.i, label %.loopexit85.i, label %.preheader.i91.preheader.i

.preheader.i91.preheader.i:                       ; preds = %.loopexit86.i
  %i.sm = getelementptr i8, ptr %.sroa.011.0153.i, i64 760
  %.val83.i = load i64, ptr %i.sm, align 8, !noalias !36857
  br label %.preheader.i91.i

.preheader.i91.i:                                 ; preds = %bb.cl, %.preheader.i91.preheader.i
  %.sroa.3.0.i.i92.i = phi i64 [ %i.th, %bb.cl ], [ %.val83.i, %.preheader.i91.preheader.i ] ; 2 uses
  %.sroa.0.0.i.i93.i = phi ptr [ %i.tg, %bb.cl ], [ %.val82.i, %.preheader.i91.preheader.i ] ; 4 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i93.i, i64 1408 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i93.i, i64 1594
  %i.sp = load i16, ptr %i.so, align 2, !noalias !36882, !noundef !28 ; 2 uses
  %i.sq = zext i16 %i.sp to i64                   ; 3 uses
  %.idx2612 = shl nuw nsw i64 %i.sq, 4
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 %.idx2612
  %i.ss = icmp eq i16 %i.sp, 0
  br i1 %i.ss, label %._crit_edge2568, label %.lr.ph2567

bb.cj:                                            ; preds = %.lr.ph2567
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i95.i2566, i64 16 ; 2 uses
  %i.su = add nuw nsw i64 %.sroa.8.0.i.i.i94.i2565, 1
  %i.sv = icmp eq ptr %i.st, %i.sr
  br i1 %i.sv, label %._crit_edge2568, label %.lr.ph2567

.lr.ph2567:                                       ; preds = %.preheader.i91.i, %bb.cj
  %.sroa.0.01.i.i.i95.i2566 = phi ptr [ %i.st, %bb.cj ], [ %i.sn, %.preheader.i91.i ] ; 3 uses
  %.sroa.8.0.i.i.i94.i2565 = phi i64 [ %i.su, %bb.cj ], [ 0, %.preheader.i91.i ] ; 4 uses
  %.val.i.i.i96.i = load ptr, ptr %.sroa.0.01.i.i.i95.i2566, align 8, !noalias !36882, !nonnull !28, !noundef !28
  %i.sw = getelementptr i8, ptr %.sroa.0.01.i.i.i95.i2566, i64 8
  %.val6.i.i.i97.i = load i64, ptr %i.sw, align 8, !noalias !36882, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i98.i = call i64 @llvm.umin.i64(i64 %.val73.i, i64 %.val6.i.i.i97.i)
  %i.sx = call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val.i.i.i96.i, i64 %spec.store.select.i.i.i.i98.i), !alias.scope !36883, !noalias !36884 ; 2 uses
  %i.sy = sext i32 %i.sx to i64
  %i.sz = icmp eq i32 %i.sx, 0
  %i.ta = sub i64 %.val73.i, %.val6.i.i.i97.i
  %spec.select.i.i.i.i99.i = select i1 %i.sz, i64 %i.ta, i64 %i.sy
  %i.tb = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i99.i, i64 0)
  switch i8 %i.tb, label %bb.ck [
    i8 -1, label %._crit_edge2568
    i8 0, label %bb.cn
    i8 1, label %bb.cj
  ]

bb.ck:                                            ; preds = %.lr.ph2567
  unreachable

._crit_edge2568:                                  ; preds = %bb.cj, %.lr.ph2567, %.preheader.i91.i
  %.sroa.4.0.i.ph.i.i101.i = phi i64 [ %i.sq, %.preheader.i91.i ], [ %i.sq, %bb.cj ], [ %.sroa.8.0.i.i.i94.i2565, %.lr.ph2567 ] ; 2 uses
  %i.tc = icmp eq i64 %.sroa.3.0.i.i92.i, 0
  br i1 %i.tc, label %.loopexit85.i, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge2568
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i93.i, i64 1600
  %i.te = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i101.i, 12
  call void @llvm.assume(i1 %i.te)
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %.sroa.4.0.i.ph.i.i101.i
  %i.tg = load ptr, ptr %i.tf, align 8, !noalias !36885, !nonnull !28, !noundef !28
  %i.th = add i64 %.sroa.3.0.i.i92.i, -1
  br label %.preheader.i91.i

bb.cm:                                            ; preds = %bb.co, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE3geteEB1e_.exit.i
  %.sroa.011.1.i = phi ptr [ %i.sk, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE3geteEB1e_.exit.i ], [ %i.tl, %bb.co ] ; 2 uses
  %i.ti = icmp eq ptr %i.qx, %i.op
  br i1 %i.ti, label %._crit_edge.i, label %.lr.ph.i

bb.cn:                                            ; preds = %.lr.ph2567
  %i.tj = icmp samesign ult i64 %.sroa.8.0.i.i.i94.i2565, 11
  call void @llvm.assume(i1 %i.tj)
  %i.tk = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.0.i.i93.i, i64 %.sroa.8.0.i.i.i94.i2565
  %i.tl = invoke fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile9submodule(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %.val243, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.tk)
          to label %bb.co unwind label %.thread51.loopexit.i, !noalias !36857 ; 2 uses

.loopexit85.i:                                    ; preds = %.loopexit86.i, %._crit_edge2568
  %i.tm = call fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile6recipe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %.sroa.011.0153.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val73.i), !noalias !36857 ; 2 uses
  %.not65.i = icmp eq ptr %i.tm, null
  br i1 %.not65.i, label %bb.cs, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %.not70.i = icmp eq ptr %i.tl, null
  br i1 %.not70.i, label %bb.cp, label %bb.cm, !prof !44

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #71
          to label %bb.cq unwind label %.thread51.loopexit.split-lp.i, !noalias !36857

bb.cq:                                            ; preds = %bb.cp, %bb.ca
  unreachable

bb.cr:                                            ; preds = %.loopexit85.i
  %i.tn = icmp ult i64 %i.qy, %.sroa.5636.0.copyload
  br i1 %i.tn, label %bb.cx, label %bb.cw

bb.cs:                                            ; preds = %.loopexit85.i
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.011.0153.i, i64 704
  %.val76.i = load ptr, ptr %i.to, align 8, !noalias !36857, !noundef !28 ; 2 uses
  %.not.i102.i = icmp eq ptr %.val76.i, null
  br i1 %.not.i102.i, label %.loopexit84.i, label %.preheader.i103.preheader.i

.preheader.i103.preheader.i:                      ; preds = %bb.cs
  %i.tp = getelementptr i8, ptr %.sroa.011.0153.i, i64 712
  %.val77.i = load i64, ptr %i.tp, align 8, !noalias !36857
  br label %.preheader.i103.i

.preheader.i103.i:                                ; preds = %bb.cv, %.preheader.i103.preheader.i
  %.sroa.3.0.i.i104.i = phi i64 [ %i.uk, %bb.cv ], [ %.val77.i, %.preheader.i103.preheader.i ] ; 2 uses
  %.sroa.0.0.i.i105.i = phi ptr [ %i.uj, %bb.cv ], [ %.val76.i, %.preheader.i103.preheader.i ] ; 4 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i105.i, i64 1056 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i105.i, i64 1242
  %i.ts = load i16, ptr %i.tr, align 2, !noalias !36886, !noundef !28 ; 2 uses
  %i.tt = zext i16 %i.ts to i64                   ; 3 uses
  %.idx2613 = shl nuw nsw i64 %i.tt, 4
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 %.idx2613
  %i.tv = icmp eq i16 %i.ts, 0
  br i1 %i.tv, label %._crit_edge2575, label %.lr.ph2574

bb.ct:                                            ; preds = %.lr.ph2574
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i107.i2573, i64 16 ; 2 uses
  %i.tx = add nuw nsw i64 %.sroa.8.0.i.i.i106.i2572, 1
  %i.ty = icmp eq ptr %i.tw, %i.tu
  br i1 %i.ty, label %._crit_edge2575, label %.lr.ph2574

.lr.ph2574:                                       ; preds = %.preheader.i103.i, %bb.ct
  %.sroa.0.01.i.i.i107.i2573 = phi ptr [ %i.tw, %bb.ct ], [ %i.tq, %.preheader.i103.i ] ; 3 uses
  %.sroa.8.0.i.i.i106.i2572 = phi i64 [ %i.tx, %bb.ct ], [ 0, %.preheader.i103.i ] ; 4 uses
  %.val.i.i.i108.i = load ptr, ptr %.sroa.0.01.i.i.i107.i2573, align 8, !noalias !36886, !nonnull !28, !noundef !28
  %i.tz = getelementptr i8, ptr %.sroa.0.01.i.i.i107.i2573, i64 8
  %.val6.i.i.i109.i = load i64, ptr %i.tz, align 8, !noalias !36886, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i110.i = call i64 @llvm.umin.i64(i64 %.val73.i, i64 %.val6.i.i.i109.i)
  %i.ua = call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val.i.i.i108.i, i64 %spec.store.select.i.i.i.i110.i), !alias.scope !36887, !noalias !36888 ; 2 uses
  %i.ub = sext i32 %i.ua to i64
  %i.uc = icmp eq i32 %i.ua, 0
  %i.ud = sub i64 %.val73.i, %.val6.i.i.i109.i
  %spec.select.i.i.i.i111.i = select i1 %i.uc, i64 %i.ud, i64 %i.ub
  %i.ue = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i111.i, i64 0)
  switch i8 %i.ue, label %bb.cu [
    i8 -1, label %._crit_edge2575
    i8 0, label %bb.cz
    i8 1, label %bb.ct
  ]

bb.cu:                                            ; preds = %.lr.ph2574
  unreachable

._crit_edge2575:                                  ; preds = %bb.ct, %.lr.ph2574, %.preheader.i103.i
  %.sroa.4.0.i.ph.i.i113.i = phi i64 [ %i.tt, %.preheader.i103.i ], [ %i.tt, %bb.ct ], [ %.sroa.8.0.i.i.i106.i2572, %.lr.ph2574 ] ; 2 uses
  %i.uf = icmp eq i64 %.sroa.3.0.i.i104.i, 0
  br i1 %i.uf, label %.loopexit84.i, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge2575
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i105.i, i64 1248
  %i.uh = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i113.i, 12
  call void @llvm.assume(i1 %i.uh)
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %.sroa.4.0.i.ph.i.i113.i
  %i.uj = load ptr, ptr %i.ui, align 8, !noalias !36889, !nonnull !28, !noundef !28
  %i.uk = add i64 %.sroa.3.0.i.i104.i, -1
  br label %.preheader.i103.i

bb.cw:                                            ; preds = %bb.cr
  %i.ul = ptrtoint ptr %i.tm to i64
  br label %bb.ec

bb.cx:                                            ; preds = %bb.cr
  %i.um = load ptr, ptr %i.on, align 8, !noalias !36857, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !36857
  invoke fastcc void @_RINvNtCs4wP2HXfJTCR_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.um, i64 noundef %i.rl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2)
          to label %bb.cy unwind label %.thread51.loopexit.split-lp.i, !noalias !36857

bb.cy:                                            ; preds = %bb.cx
  %.sroa.14.8.copyload521 = load i64, ptr %i.ab, align 8, !noalias !36856
  %.sroa.25.8..sroa_idx527 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.30.8..sroa_idx535 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.30.8.copyload536.a = load i64, ptr %.sroa.30.8..sroa_idx535, align 8, !noalias !36856
  %.sroa.25.8.copyload528 = load i64, ptr %.sroa.25.8..sroa_idx527, align 8, !noalias !36856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !36857
  br label %bb.ec

bb.cz:                                            ; preds = %.lr.ph2574
  %i.un = icmp samesign ult i64 %.sroa.8.0.i.i.i106.i2572, 11
  call void @llvm.assume(i1 %i.un)
  %i.uo = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.i.i105.i, i64 %.sroa.8.0.i.i.i106.i2572 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !36857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !36857
  %i.up = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  store i8 0, ptr %i.up, align 8, !noalias !36857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !36857
  call void @llvm.experimental.noalias.scope.decl(metadata !36890)
  call void @llvm.experimental.noalias.scope.decl(metadata !36891)
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.ur = load i64, ptr %i.uq, align 8, !alias.scope !36891, !noalias !36892, !noundef !28
  %i.us = icmp eq i64 %i.ur, 0
  br i1 %i.us, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ut = load ptr, ptr %i.uo, align 8, !alias.scope !36891, !noalias !36892, !noundef !28 ; 2 uses
  %.not.i114.i = icmp eq ptr %i.ut, null
  br i1 %.not.i114.i, label %bb.dd, label %bb.dc, !prof !44

bb.db:                                            ; preds = %bb.cz
  store ptr null, ptr %i.aa, align 8, !alias.scope !36890, !noalias !36893
  %i.uu = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %i.uu, align 8, !alias.scope !36890, !noalias !36893
  br label %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit.i

bb.dc:                                            ; preds = %bb.da
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uw = load i64, ptr %i.uv, align 8, !alias.scope !36891, !noalias !36892, !noundef !28
  invoke fastcc void @_RINvNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsj6eKBz9Db1c_4core5clone5Clone5clone13clone_subtreeNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalEB2c_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull %i.ut, i64 noundef %i.uw)
          to label %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit.i unwind label %bb.dh, !noalias !36857

bb.dd:                                            ; preds = %bb.da
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1732) #75
          to label %.noexc116.i unwind label %bb.dh, !noalias !36857

.noexc116.i:                                      ; preds = %bb.dd
  unreachable

.loopexit84.i:                                    ; preds = %._crit_edge2575, %bb.cs
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.011.0153.i, i64 680
  %.val74.i = load ptr, ptr %i.ux, align 8, !noalias !36857, !noundef !28 ; 2 uses
  %.not.i117.i = icmp eq ptr %.val74.i, null
  br i1 %.not.i117.i, label %.loopexit.i273, label %.preheader.i118.preheader.i

.preheader.i118.preheader.i:                      ; preds = %.loopexit84.i
  %i.uy = getelementptr i8, ptr %.sroa.011.0153.i, i64 688
  %.val75.i = load i64, ptr %i.uy, align 8, !noalias !36857
  br label %.preheader.i118.i

.preheader.i118.i:                                ; preds = %bb.dg, %.preheader.i118.preheader.i
  %.sroa.3.0.i.i119.i = phi i64 [ %i.vt, %bb.dg ], [ %.val75.i, %.preheader.i118.preheader.i ] ; 2 uses
  %.sroa.0.0.i.i120.i = phi ptr [ %i.vs, %bb.dg ], [ %.val74.i, %.preheader.i118.preheader.i ] ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i120.i, i64 1056 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i120.i, i64 1242
  %i.vb = load i16, ptr %i.va, align 2, !noalias !36894, !noundef !28 ; 2 uses
  %i.vc = zext i16 %i.vb to i64                   ; 3 uses
  %.idx2614 = shl nuw nsw i64 %i.vc, 4
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 %.idx2614
  %i.ve = icmp eq i16 %i.vb, 0
  br i1 %i.ve, label %._crit_edge2582, label %.lr.ph2581

bb.de:                                            ; preds = %.lr.ph2581
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i122.i2580, i64 16 ; 2 uses
  %i.vg = add nuw nsw i64 %.sroa.8.0.i.i.i121.i2579, 1
  %i.vh = icmp eq ptr %i.vf, %i.vd
  br i1 %i.vh, label %._crit_edge2582, label %.lr.ph2581

.lr.ph2581:                                       ; preds = %.preheader.i118.i, %bb.de
  %.sroa.0.01.i.i.i122.i2580 = phi ptr [ %i.vf, %bb.de ], [ %i.uz, %.preheader.i118.i ] ; 3 uses
  %.sroa.8.0.i.i.i121.i2579 = phi i64 [ %i.vg, %bb.de ], [ 0, %.preheader.i118.i ] ; 4 uses
  %.val.i.i.i123.i = load ptr, ptr %.sroa.0.01.i.i.i122.i2580, align 8, !noalias !36894, !nonnull !28, !noundef !28
  %i.vi = getelementptr i8, ptr %.sroa.0.01.i.i.i122.i2580, i64 8
  %.val6.i.i.i124.i = load i64, ptr %i.vi, align 8, !noalias !36894, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i125.i = call i64 @llvm.umin.i64(i64 %.val73.i, i64 %.val6.i.i.i124.i)
  %i.vj = call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val.i.i.i123.i, i64 %spec.store.select.i.i.i.i125.i), !alias.scope !36895, !noalias !36896 ; 2 uses
  %i.vk = sext i32 %i.vj to i64
  %i.vl = icmp eq i32 %i.vj, 0
  %i.vm = sub i64 %.val73.i, %.val6.i.i.i124.i
  %spec.select.i.i.i.i126.i = select i1 %i.vl, i64 %i.vm, i64 %i.vk
  %i.vn = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i126.i, i64 0)
  switch i8 %i.vn, label %bb.df [
    i8 -1, label %._crit_edge2582
    i8 0, label %bb.di
    i8 1, label %bb.de
  ]

bb.df:                                            ; preds = %.lr.ph2581
  unreachable

._crit_edge2582:                                  ; preds = %bb.de, %.lr.ph2581, %.preheader.i118.i
  %.sroa.4.0.i.ph.i.i129.i = phi i64 [ %i.vc, %.preheader.i118.i ], [ %i.vc, %bb.de ], [ %.sroa.8.0.i.i.i121.i2579, %.lr.ph2581 ] ; 2 uses
  %i.vo = icmp eq i64 %.sroa.3.0.i.i119.i, 0
  br i1 %i.vo, label %.loopexit.i273, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge2582
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i120.i, i64 1248
  %i.vq = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i129.i, 12
  call void @llvm.assume(i1 %i.vq)
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %.sroa.4.0.i.ph.i.i129.i
  %i.vs = load ptr, ptr %i.vr, align 8, !noalias !36897, !nonnull !28, !noundef !28
  %i.vt = add i64 %.sroa.3.0.i.i119.i, -1
  br label %.preheader.i118.i

bb.dh:                                            ; preds = %bb.dd, %bb.dc
  %i.vu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai) #72, !noalias !36857
  br label %.body274

_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit.i: ; preds = %bb.dc, %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !36856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !36857
  %.sroa.14.8.copyload = load i64, ptr %i.ai, align 8, !noalias !36856
  %.sroa.25.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.vv = load <2 x i64>, ptr %.sroa.25.8..sroa_idx, align 8, !noalias !36856
  %i.vw = load i64, ptr %i.up, align 8, !noalias !36856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !36857
  br label %.thread

bb.di:                                            ; preds = %.lr.ph2581
  %i.vx = icmp samesign ult i64 %.sroa.8.0.i.i.i121.i2579, 11
  call void @llvm.assume(i1 %i.vx)
  %i.vy = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.i.i120.i, i64 %.sroa.8.0.i.i.i121.i2579 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !36857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !36857
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store i8 0, ptr %i.vz, align 8, !noalias !36857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !36857
  call void @llvm.experimental.noalias.scope.decl(metadata !36898)
  call void @llvm.experimental.noalias.scope.decl(metadata !36899)
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wb = load i64, ptr %i.wa, align 8, !alias.scope !36899, !noalias !36900, !noundef !28
  %i.wc = icmp eq i64 %i.wb, 0
  br i1 %i.wc, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wd = load ptr, ptr %i.vy, align 8, !alias.scope !36899, !noalias !36900, !noundef !28 ; 2 uses
  %.not.i131.i = icmp eq ptr %i.wd, null
  br i1 %.not.i131.i, label %bb.dm, label %bb.dl, !prof !44

bb.dk:                                            ; preds = %bb.di
  store ptr null, ptr %i.z, align 8, !alias.scope !36898, !noalias !36901
  %i.we = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.we, align 8, !alias.scope !36898, !noalias !36901
  br label %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit134.i

bb.dl:                                            ; preds = %bb.dj
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wg = load i64, ptr %i.wf, align 8, !alias.scope !36899, !noalias !36900, !noundef !28
  invoke fastcc void @_RINvNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCsj6eKBz9Db1c_4core5clone5Clone5clone13clone_subtreeNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBa_7set_val9SetValZSTNtNtBe_5alloc6GlobalEB2c_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull %i.wd, i64 noundef %i.wg)
          to label %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit134.i unwind label %bb.dn, !noalias !36857

bb.dm:                                            ; preds = %bb.dj
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1732) #75
          to label %.noexc133.i unwind label %bb.dn, !noalias !36857

.noexc133.i:                                      ; preds = %bb.dm
  unreachable

.loopexit.i273:                                   ; preds = %._crit_edge2582, %.loopexit84.i
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.011.0153.i, i64 624
  %.val80.i = load ptr, ptr %i.wh, align 8, !noalias !36857, !noundef !28
  %i.wi = getelementptr i8, ptr %.sroa.011.0153.i, i64 632
  %.val81.i = load i64, ptr %i.wi, align 8, !noalias !36857
  %i.wj = call fastcc noundef ptr @_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTE3geteECskXtk6F4WjxZ_4just(ptr %.val80.i, i64 %.val81.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val73.i), !noalias !36857
  %.not68.i = icmp eq ptr %i.wj, null
  br i1 %.not68.i, label %bb.do, label %bb.dp

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.wk = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah) #72, !noalias !36857
  br label %.body274

_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit134.i: ; preds = %bb.dl, %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !36856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !36857
  %.sroa.14.8.copyload519 = load i64, ptr %i.ah, align 8, !noalias !36856
  %.sroa.25.8..sroa_idx523 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.wl = load <2 x i64>, ptr %.sroa.25.8..sroa_idx523, align 8, !noalias !36856
  %i.wm = load i64, ptr %i.vz, align 8, !noalias !36856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !36857
  br label %.thread

bb.do:                                            ; preds = %.loopexit.i273
  %i.wn = icmp ult i64 %i.qy, %.sroa.5636.0.copyload
  br i1 %i.wn, label %bb.dr, label %bb.dq

bb.dp:                                            ; preds = %.loopexit.i273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !36857
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.011.0153.i, i64 72
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath4join(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val73.i)
          to label %bb.eb unwind label %.thread51.loopexit.split-lp.i, !noalias !36857

bb.dq:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !36857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !36857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !36857
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 0, ptr %i.wp, align 8, !noalias !36857
  invoke fastcc void @_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtB5_12SpecToString14spec_to_stringBC_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %bb.dt unwind label %bb.ds, !noalias !36857

bb.dr:                                            ; preds = %bb.do
  %i.wq = load ptr, ptr %i.on, align 8, !noalias !36857, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !36857
  invoke fastcc void @_RINvNtCs4wP2HXfJTCR_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.wq, i64 noundef %i.rl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2)
          to label %bb.dx unwind label %.thread51.loopexit.split-lp.i, !noalias !36857

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.dv, %bb.du, %bb.ds
  %.pn.i = phi { ptr, i32 } [ %i.wr, %bb.ds ], [ %i.ws, %bb.du ], [ %i.ws, %bb.dv ]
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad) #72, !noalias !36857
  br label %.body274

bb.ds:                                            ; preds = %bb.dq
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i

bb.dt:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !36857
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile14suggest_recipe(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %.sroa.011.0153.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val73.i)
          to label %bb.dw unwind label %bb.du, !noalias !36857

bb.du:                                            ; preds = %bb.dt
  %i.ws = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36902)
  call void @llvm.experimental.noalias.scope.decl(metadata !36903)
  %.val.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !36904, !noalias !36857 ; 2 uses
  %i.wt = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.wt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val1.i.i.i = load ptr, ptr %i.wu, align 8, !alias.scope !36904, !noalias !36857, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36905
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i

bb.dw:                                            ; preds = %bb.dt
  %.sroa.14.8.copyload522 = load i64, ptr %i.ae, align 8, !noalias !36856
  %.sroa.25.8..sroa_idx529 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.wv = load <2 x i64>, ptr %.sroa.25.8..sroa_idx529, align 8, !noalias !36856
  %.sroa.33.sroa.0.0.copyload = load i64, ptr %i.ac, align 8, !noalias !36856
  %.sroa.33.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.sroa.9.0..sroa_idx, i64 24, i1 false), !noalias !36856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !36857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !36857
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad), !noalias !36857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !36857
  br label %.thread

bb.dx:                                            ; preds = %bb.dr
  %.sroa.03.0.copyload.i = load i64, ptr %i.y, align 8, !noalias !36857 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.55.0.copyload.i = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !36857 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !36857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !36857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !36857
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile17suggest_submodule(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %.sroa.011.0153.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val73.i)
          to label %bb.ea unwind label %bb.dy, !noalias !36857

bb.dy:                                            ; preds = %bb.dx
  %i.ww = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wx = icmp eq i64 %.sroa.03.0.copyload.i, 0
  br i1 %i.wx, label %.thread47.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.55.0.copyload.i, i64 noundef %.sroa.03.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36906
  br label %.thread47.i

bb.ea:                                            ; preds = %bb.dx
  %.sroa.33.sroa.0.0.copyload1664 = load i64, ptr %i.af, align 8, !noalias !36856
  %.sroa.33.sroa.9.0..sroa_idx1666 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.sroa.9.0..sroa_idx1666, i64 24, i1 false), !noalias !36856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !36857
  %i.wy = ptrtoint ptr %.sroa.55.0.copyload.i to i64
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dp
  %.sroa.14.8.copyload520 = load i64, ptr %i.ag, align 8, !noalias !36856
  %.sroa.25.8..sroa_idx525 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.30.8..sroa_idx533 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.30.8.copyload534.a = load i64, ptr %.sroa.30.8..sroa_idx533, align 8, !noalias !36856
  %.sroa.25.8.copyload526 = load i64, ptr %.sroa.25.8..sroa_idx525, align 8, !noalias !36856
  %.sroa.33.8..sroa_idx540 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.wz = load i64, ptr %.sroa.33.8..sroa_idx540, align 8, !noalias !36856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !36857
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.cy, %bb.cw, %bb.bu
  %.sroa.33.sroa.0.0 = phi i64 [ undef, %bb.bu ], [ %.sroa.33.sroa.0.0.copyload1664, %bb.ea ], [ %i.wz, %bb.eb ], [ undef, %bb.cy ], [ undef, %bb.cw ] ; 2 uses
  %.sroa.30.0 = phi i64 [ %i.pm, %bb.bu ], [ %.sroa.6.0.copyload.i, %bb.ea ], [ %.sroa.30.8.copyload534.a, %bb.eb ], [ %.sroa.30.8.copyload536.a, %bb.cy ], [ undef, %bb.cw ] ; 2 uses
  %.sroa.25.0 = phi i64 [ %i.px, %bb.bu ], [ %i.wy, %bb.ea ], [ %.sroa.25.8.copyload526, %bb.eb ], [ %.sroa.25.8.copyload528, %bb.cy ], [ %i.qy, %bb.cw ] ; 2 uses
  %.sroa.14.0 = phi i64 [ %i.qo, %bb.bu ], [ %.sroa.03.0.copyload.i, %bb.ea ], [ %.sroa.14.8.copyload520, %bb.eb ], [ %.sroa.14.8.copyload521, %bb.cy ], [ %i.ul, %bb.cw ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 32, %bb.bu ], [ 93, %bb.ea ], [ 64, %bb.eb ], [ 45, %bb.cy ], [ -1, %bb.cw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36907)
  %.val.i138.i = load ptr, ptr %i.on, align 8, !alias.scope !36907, !noalias !36857, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i139.i = load i64, ptr %i.oo, align 8, !alias.scope !36907, !noalias !36857, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36908)
  %i.xa = icmp eq i64 %.val1.i139.i, 0
  br i1 %i.xa, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i, label %.lr.ph.i.i.i140.i

.lr.ph.i.i.i140.i:                                ; preds = %bb.ec, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i144.i
  %.sroa.0.010.i.i.i141.i = phi i64 [ %i.xc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i144.i ], [ 0, %bb.ec ] ; 2 uses
  %i.xb = getelementptr inbounds nuw [24 x i8], ptr %.val.i138.i, i64 %.sroa.0.010.i.i.i141.i ; 2 uses
  %i.xc = add nuw nsw i64 %.sroa.0.010.i.i.i141.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36909)
  call void @llvm.experimental.noalias.scope.decl(metadata !36910)
  %.val.i.i.i.i.i142.i = load i64, ptr %i.xb, align 8, !alias.scope !36911, !noalias !36912 ; 2 uses
  %i.xd = icmp eq i64 %.val.i.i.i.i.i142.i, 0
  br i1 %i.xd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i144.i, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i.i.i140.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %.val1.i.i.i.i.i143.i = load ptr, ptr %i.xe, align 8, !alias.scope !36911, !noalias !36912, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i143.i, i64 noundef %.val.i.i.i.i.i142.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36913
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i144.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i144.i: ; preds = %bb.ed, %.lr.ph.i.i.i140.i
  %i.xf = icmp eq i64 %i.xc, %.val1.i139.i
  br i1 %i.xf, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i, label %.lr.ph.i.i.i140.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i144.i, %bb.ec
  %.val2.i146.i = load i64, ptr %i.aj, align 8, !alias.scope !36907, !noalias !36857 ; 2 uses
  %i.xg = icmp eq i64 %.val2.i146.i, 0
  br i1 %i.xg, label %bb.eg, label %.sink.split

.thread47.i:                                      ; preds = %bb.dz, %bb.dy, %bb.cd, %bb.cc, %.thread51.loopexit.split-lp.i, %.thread51.loopexit.i
  %.pn7146.i = phi { ptr, i32 } [ %i.ri, %bb.cd ], [ %i.ww, %bb.dy ], [ %i.ri, %bb.cc ], [ %i.ww, %bb.dz ], [ %lpad.loopexit.i, %.thread51.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread51.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36914)
  %.val.i511 = load ptr, ptr %i.on, align 8, !alias.scope !36914, !noalias !36857, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i512 = load i64, ptr %i.oo, align 8, !alias.scope !36914, !noalias !36857, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36915), !noalias !36857
  %i.xh = icmp eq i64 %.val1.i512, 0
  br i1 %i.xh, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i513

.lr.ph.i.i.i513:                                  ; preds = %.thread47.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.xj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %.thread47.i ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [24 x i8], ptr %.val.i511, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.xj = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36916), !noalias !36857
  call void @llvm.experimental.noalias.scope.decl(metadata !36917), !noalias !36857
  %.val.i.i.i.i.i514 = load i64, ptr %i.xi, align 8, !alias.scope !36918, !noalias !36919 ; 2 uses
  %i.xk = icmp eq i64 %.val.i.i.i.i.i514, 0
  br i1 %i.xk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i.i513
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %.val1.i.i.i.i.i515 = load ptr, ptr %i.xl, align 8, !alias.scope !36918, !noalias !36919, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i515, i64 noundef %.val.i.i.i.i.i514, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36920
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.ee, %.lr.ph.i.i.i513
  %i.xm = icmp eq i64 %i.xj, %.val1.i512
  br i1 %i.xm, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i513

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, %.thread47.i
  %.val2.i516 = load i64, ptr %i.aj, align 8, !alias.scope !36914, !noalias !36857 ; 2 uses
  %i.xn = icmp eq i64 %.val2.i516, 0
  br i1 %i.xn, label %.body274, label %bb.ef

bb.ef:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  %i.xo = mul nuw i64 %.val2.i516, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i511, i64 noundef %i.xo, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36919
  br label %.body274

.body274:                                         ; preds = %bb.ef, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, %bb.dh, %bb.dn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i
  %eh.lpad-body275 = phi { ptr, i32 } [ %.pn7146.i, %bb.ef ], [ %i.vu, %bb.dh ], [ %i.wk, %bb.dn ], [ %.pn.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i ], [ %.pn7146.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i ]
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.be) #72
  br label %common.resume

.thread:                                          ; preds = %bb.dw, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit134.i, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit.i
  %.sroa.33.sroa.0.1 = phi i64 [ %.sroa.33.sroa.0.0.copyload, %bb.dw ], [ %i.wm, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit134.i ], [ %i.vw, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit.i ]
  %.sroa.14.2.ph = phi i64 [ %.sroa.14.8.copyload522, %bb.dw ], [ %.sroa.14.8.copyload519, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit134.i ], [ %.sroa.14.8.copyload, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit.i ]
  %.sroa.0.1.ph = phi i64 [ 92, %bb.dw ], [ 5, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit134.i ], [ 72, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit.i ]
  %i.xp = phi <2 x i64> [ %i.wv, %bb.dw ], [ %i.wl, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit134.i ], [ %i.vv, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !36857
  br label %bb.eh

.sink.split:                                      ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i
  %.val2.i146.i.sink = phi i64 [ %.val2.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.val2.i146.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ]
  %.val.i138.i.sink = phi ptr [ %.val.i84.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.val.i138.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ]
  %.sroa.33.sroa.0.2.ph = phi i64 [ undef, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.33.sroa.0.0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ]
  %.sroa.30.1.ph2198 = phi i64 [ undef, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.30.0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ]
  %.sroa.25.2.ph2199 = phi i64 [ %.sroa.5636.0.copyload, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.25.0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ]
  %.sroa.14.2.ph2200 = phi i64 [ %.sroa.14.1, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.14.0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ]
  %.sroa.0.1.ph2201 = phi i64 [ %.sink.i270, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.0.0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ]
  %i.xq = mul nuw i64 %.val2.i146.i.sink, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i138.i.sink, i64 noundef %i.xq, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36857
  br label %bb.eg

bb.eg:                                            ; preds = %.sink.split, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.33.sroa.0.2 = phi i64 [ undef, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.33.sroa.0.0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ], [ %.sroa.33.sroa.0.2.ph, %.sink.split ]
  %.sroa.30.1 = phi i64 [ undef, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.30.0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ], [ %.sroa.30.1.ph2198, %.sink.split ]
  %.sroa.25.2 = phi i64 [ %.sroa.5636.0.copyload, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.25.0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ], [ %.sroa.25.2.ph2199, %.sink.split ]
  %.sroa.14.2 = phi i64 [ %.sroa.14.1, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.14.0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ], [ %.sroa.14.2.ph2200, %.sink.split ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sink.i270, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ %.sroa.0.0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i145.i ], [ %.sroa.0.1.ph2201, %.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !36857
  %.not219 = icmp eq i64 %.sroa.0.1, -1
  %i.xr = insertelement <2 x i64> poison, i64 %.sroa.25.2, i64 0
  %i.xs = insertelement <2 x i64> %i.xr, i64 %.sroa.30.1, i64 1
  br i1 %.not219, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %.thread, %bb.eg
  %.sroa.33.sroa.0.3 = phi i64 [ %.sroa.33.sroa.0.2, %bb.eg ], [ %.sroa.33.sroa.0.1, %.thread ]
  %.sroa.0.1699 = phi i64 [ %.sroa.0.1, %bb.eg ], [ %.sroa.0.1.ph, %.thread ]
  %.sroa.14.2698 = phi i64 [ %.sroa.14.2, %bb.eg ], [ %.sroa.14.2.ph, %.thread ]
  %i.xt = phi <2 x i64> [ %i.xs, %bb.eg ], [ %i.xp, %.thread ]
  %i.xu = inttoptr i64 %.sroa.14.2698 to ptr
  %.sroa.6151.sroa.4.sroa.4.0..sroa.6151.sroa.4.0..sroa.6151.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6151.sroa.4.sroa.4.0..sroa.6151.sroa.4.0..sroa.6151.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.sroa.9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.sroa.9)
  store i64 %.sroa.0.1699, ptr %0, align 8
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.xu, ptr %.sroa.4149.0..sroa_idx, align 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.xt, ptr %.sroa.5150.0..sroa_idx, align 8
  %.sroa.6151.sroa.4.0..sroa.6151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.33.sroa.0.3, ptr %.sroa.6151.sroa.4.0..sroa.6151.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !36921)
  br i1 %i.oq, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i283, label %.lr.ph.i.i.i.i278

.lr.ph.i.i.i.i278:                                ; preds = %bb.eh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i282
  %.sroa.0.010.i.i.i.i279 = phi i64 [ %i.xw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i282 ], [ 0, %bb.eh ] ; 2 uses
  %i.xv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4635.0.copyload, i64 %.sroa.0.010.i.i.i.i279 ; 2 uses
  %i.xw = add nuw nsw i64 %.sroa.0.010.i.i.i.i279, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36922)
  call void @llvm.experimental.noalias.scope.decl(metadata !36923)
  %.val.i.i.i.i.i.i280 = load i64, ptr %i.xv, align 8, !alias.scope !36924, !noalias !36925 ; 2 uses
  %i.xx = icmp eq i64 %.val.i.i.i.i.i.i280, 0
  br i1 %i.xx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i282, label %bb.ei

bb.ei:                                            ; preds = %.lr.ph.i.i.i.i278
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %.val1.i.i.i.i.i.i281 = load ptr, ptr %i.xy, align 8, !alias.scope !36924, !noalias !36925, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i281, i64 noundef %.val.i.i.i.i.i.i280, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36926
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i282

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i282: ; preds = %bb.ei, %.lr.ph.i.i.i.i278
  %i.xz = icmp eq i64 %i.xw, %.sroa.5636.0.copyload
  br i1 %i.xz, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i283, label %.lr.ph.i.i.i.i278

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i283: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i282, %bb.eh
  %i.ya = icmp eq i64 %i.oi, 0
  br i1 %i.ya, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_.exit, label %bb.ej

bb.ej:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i283
  %i.yb = mul nuw i64 %i.oi, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4635.0.copyload, i64 noundef %i.yb, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36925
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_.exit

bb.ek:                                            ; preds = %bb.eg
  %i.yc = inttoptr i64 %.sroa.14.2 to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.sroa.9)
  store i64 %i.nv, ptr %i.bh, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !36927)
  br i1 %i.oq, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i292, label %.lr.ph.i.i.i.i287

.lr.ph.i.i.i.i287:                                ; preds = %bb.ek, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i291
  %.sroa.0.010.i.i.i.i288 = phi i64 [ %i.ye, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i291 ], [ 0, %bb.ek ] ; 2 uses
  %i.yd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4635.0.copyload, i64 %.sroa.0.010.i.i.i.i288 ; 2 uses
  %i.ye = add nuw nsw i64 %.sroa.0.010.i.i.i.i288, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36928)
  call void @llvm.experimental.noalias.scope.decl(metadata !36929)
  %.val.i.i.i.i.i.i289 = load i64, ptr %i.yd, align 8, !alias.scope !36930, !noalias !36931 ; 2 uses
  %i.yf = icmp eq i64 %.val.i.i.i.i.i.i289, 0
  br i1 %i.yf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i291, label %bb.el

bb.el:                                            ; preds = %.lr.ph.i.i.i.i287
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %.val1.i.i.i.i.i.i290 = load ptr, ptr %i.yg, align 8, !alias.scope !36930, !noalias !36931, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i290, i64 noundef %.val.i.i.i.i.i.i289, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36932
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i291

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i291: ; preds = %bb.el, %.lr.ph.i.i.i.i287
  %i.yh = icmp eq i64 %i.ye, %.sroa.5636.0.copyload
  br i1 %i.yh, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i292, label %.lr.ph.i.i.i.i287

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i292: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i291, %bb.ek
  %i.yi = icmp eq i64 %i.oi, 0
  br i1 %i.yi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_.exit294, label %bb.em

bb.em:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i292
  %i.yj = mul nuw i64 %i.oi, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4635.0.copyload, i64 noundef %i.yj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36931
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_.exit294

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_.exit294: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i292, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.k

bb.en:                                            ; preds = %.body344
  br i1 %.sroa.0130.2, label %.body257.thread, label %common.resume
end_hunk_0
