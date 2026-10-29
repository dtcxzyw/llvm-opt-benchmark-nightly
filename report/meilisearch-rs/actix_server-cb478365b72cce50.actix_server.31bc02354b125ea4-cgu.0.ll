Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_server-cb478365b72cce50.actix_server.31bc02354b125ea4-cgu.0?download=true
inline.NumInlined: 3999
inline.NumDeleted: 1944
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN12actix_server6server11ServerInner8run_sync17h5588d64d57df2709E:bb.a

bb.aq:                                            ; preds = %.noexc165, %.noexc164, %bb.ah, %.noexc162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %bb.aa

._crit_edge.loopexit:                             ; preds = %bb.ki
  %.sroa.4208.0.copyload.pre = load ptr, ptr %i.gc, align 8
  %.sroa.5209.0.copyload.pre = load i64, ptr %i.ge, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.aa
  %.sroa.5209.0.copyload = phi i64 [ %.sroa.5209.0.copyload.pre, %._crit_edge.loopexit ], [ 0, %bb.aa ] ; 3 uses
  %.sroa.4208.0.copyload = phi ptr [ %.sroa.4208.0.copyload.pre, %._crit_edge.loopexit ], [ %i.gd, %bb.aa ] ; 13 uses
  %.sroa.0207.0.copyload = load i64, ptr %i.gb, align 8 ; 3 uses
  store i64 0, ptr %i.gb, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gc, align 8
  store i64 0, ptr %i.ge, align 8
  %i.jk = icmp ult i64 %.sroa.5209.0.copyload, 230584300921369396
  call void @llvm.assume(i1 %i.jk)
  %.idx = mul nuw nsw i64 %.sroa.5209.0.copyload, 40
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.4208.0.copyload, i64 %.idx ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !1156
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.6206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.jm = mul i64 %.sroa.0207.0.copyload, 40      ; 8 uses
  %.not17.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5209.0.copyload, 0
  br i1 %.not17.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %._crit_edge, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h499731ff42a1aed3E.exit.i.i.i.i.i.i.i.i"
  %.sroa.4.018.i.i.i.i.i.i.i.i = phi ptr [ %i.jr, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h499731ff42a1aed3E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.4208.0.copyload, %._crit_edge ] ; 3 uses
  %i.jn = phi ptr [ %i.jp, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h499731ff42a1aed3E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.4208.0.copyload, %._crit_edge ] ; 5 uses
  %.sroa.013.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.jn, align 8, !noalias !1163 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %.sroa.415.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1163
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jo = load <2 x i32>, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1163
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 40 ; 3 uses
  %i.jq = icmp eq i64 %.sroa.013.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.jq, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h499731ff42a1aed3E.exit.i.i.i.i.i.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1163, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.013.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1164
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h499731ff42a1aed3E.exit.i.i.i.i.i.i.i.i"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h499731ff42a1aed3E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i.i.i
  store i64 %.sroa.415.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.018.i.i.i.i.i.i.i.i, align 8, !noalias !1165
  %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i.i.i.i.i.i, i64 8
  store <2 x i32> %i.jo, ptr %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1165
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.jp, %i.jl
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h499731ff42a1aed3E.exit.i.i.i.i.i.i.i.i", %._crit_edge
  %i.js = phi ptr [ %.sroa.4208.0.copyload, %._crit_edge ], [ %i.jp, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h499731ff42a1aed3E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.4208.0.copyload, %._crit_edge ], [ %i.jr, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h499731ff42a1aed3E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.jt = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i to i64
  %i.ju = ptrtoint ptr %.sroa.4208.0.copyload to i64
  %i.jv = sub nuw i64 %i.jt, %i.ju                ; 3 uses
  %i.jw = lshr exact i64 %i.jv, 4                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !1166
  store ptr %.sroa.4208.0.copyload, ptr %i.bu, align 8, !noalias !1166
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.jw, ptr %i.jx, align 8, !noalias !1166
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %.sroa.0207.0.copyload, ptr %i.jy, align 8, !noalias !1166
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %i.jz = ptrtoint ptr %i.jl to i64
  %i.ka = ptrtoint ptr %i.js to i64
  %i.kb = sub nuw i64 %i.jz, %i.ka
  %i.kc = udiv exact i64 %i.kb, 40
  store i64 0, ptr %.sroa.5205.0..sroa_idx, align 8, !alias.scope !1168, !noalias !1156
  store ptr inttoptr (i64 8 to ptr), ptr %i.bv, align 8, !alias.scope !1168, !noalias !1156
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4204.0..sroa_idx, align 8, !alias.scope !1168, !noalias !1156
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6206.0..sroa_idx, align 8, !alias.scope !1168, !noalias !1156
  call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %i.kd = icmp eq ptr %i.jl, %i.js
  br i1 %i.kd, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h924eccee90152916E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i, %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.kf, %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i.i.i.i.i" ], [ 0, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [40 x i8], ptr %i.js, i64 %.sroa.0.07.i.i.i.i.i.i.i ; 3 uses
  %i.kf = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ke, align 8, !alias.scope !1171, !noalias !1172 ; 2 uses
  %i.kg = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.kg, label %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i.i.i.i.i", label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.kh, align 8, !alias.scope !1171, !noalias !1172, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1173
  br label %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i.i.i.i.i": ; preds = %bb.as, %.lr.ph.i.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 36
  %.val3.i.i.i.i.i.i.i.i = load i32, ptr %i.ki, align 4, !alias.scope !1171, !noalias !1172
  %i.kj = call noundef i32 @close(i32 noundef %.val3.i.i.i.i.i.i.i.i) #24, !noalias !1173 ; 0 uses
  %i.kk = icmp eq i64 %i.kf, %i.kc
  br i1 %i.kk, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h924eccee90152916E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.az
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr205drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$C$$LP$usize$C$actix_server..socket..MioListener$RP$$GT$$GT$17hf7d314b11a8d6b99E"(ptr noalias noundef align 8 dereferenceable(24) %i.bu) #36, !noalias !1166
  call fastcc void @"_ZN4core3ptr246drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$C$actix_server..server..ServerInner..run_sync..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf4e9be1759e92b57E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bv) #36, !noalias !1174
  br label %.body

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h924eccee90152916E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0207.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h924eccee90152916E.exit.i.i.i.i.i"
  %i.km = and i64 %i.jm, -16                      ; 4 uses
  %.not49.i.i.i.i.i = icmp eq i64 %i.jm, %i.km
  br i1 %.not49.i.i.i.i.i, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ko = icmp eq i64 %i.jm, 0
  br i1 %i.ko, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4208.0.copyload, i64 noundef %i.jm, i64 noundef 8) #24, !noalias !1166
  br label %bb.bb

bb.ay:                                            ; preds = %bb.av
  %i.kp = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.4208.0.copyload, i64 noundef %i.jm, i64 noundef 8, i64 noundef %i.km) #24, !noalias !1166 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.az, label %bb.bb, !prof !1175

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.km) #35
          to label %bb.ba unwind label %bb.at, !noalias !1166

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h924eccee90152916E.exit.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %.sroa.4208.0.copyload, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h924eccee90152916E.exit.i.i.i.i.i" ], [ %.sroa.4208.0.copyload, %bb.au ], [ %i.kp, %bb.ay ], [ inttoptr (i64 8 to ptr), %bb.ax ], [ inttoptr (i64 8 to ptr), %bb.aw ] ; 10 uses
  %i.kr = lshr i64 %i.jm, 4                       ; 4 uses
  store i64 %i.kr, ptr %i.ch, align 8, !alias.scope !1176
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %i.ks, align 8, !alias.scope !1176
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.jw, ptr %i.kt, align 8, !alias.scope !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !1166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1156
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !1178
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !1177, !nonnull !12, !noundef !12 ; 15 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 456 ; 3 uses
  %i.kx = atomicrmw add ptr %i.kw, i64 1 monotonic, align 8, !noalias !1178 ; 0 uses
  %i.ky = atomicrmw add ptr %i.kv, i64 1 monotonic, align 8, !noalias !1178
  %i.kz = icmp slt i64 %i.ky, 0
  br i1 %i.kz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.kv, ptr %i.bt, align 8, !noalias !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !1178
  invoke void @_ZN3mio4poll4Poll3new17hafd74350236bde73E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.br)
          to label %bb.bf unwind label %bb.be, !noalias !1179

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.ia

bb.bf:                                            ; preds = %bb.bc
  %i.lb = load i32, ptr %i.br, align 8, !range !21, !noalias !1178, !noundef !12
  %i.lc = trunc nuw i32 %i.lb to i1
  br i1 %i.lc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ld = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !1178, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1178
  br label %bb.hr

bb.bh:                                            ; preds = %bb.bf
  %i.lf = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !range !22, !noalias !1178, !noundef !12 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1178
  store i32 %i.lg, ptr %i.bs, align 4, !noalias !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !1180
  invoke void @_ZN3mio5waker5Waker3new17hb37b72fc4b9ac11dE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bf, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bs, i64 noundef -1)
          to label %.noexc.i unwind label %bb.bp, !noalias !1179

.noexc.i:                                         ; preds = %bb.bh
  %i.lh = load i32, ptr %i.bf, align 8, !range !21, !noalias !1180, !noundef !12
  %i.li = trunc nuw i32 %i.lh to i1
  br i1 %i.li, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %.noexc.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !range !22, !noalias !1180, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1180
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1181
  %i.ll = call noundef align 8 dereferenceable_or_null(640) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, 9) 8) #24, !noalias !1181 ; 2 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 640, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #35
          to label %.noexc.i.i unwind label %bb.bo, !noalias !1179

.noexc.i.i:                                       ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !1180
  store i64 1, ptr %i.be, align 8, !noalias !1180
  %i.ln = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 1, ptr %i.ln, align 8, !noalias !1180
  %i.lo = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 %i.lk, ptr %i.lo, align 8, !noalias !1180
  %.sroa.45.sroa.3.0..sroa.45.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 0, ptr %.sroa.45.sroa.3.0..sroa.45.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1180
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  store i8 0, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !1180
  %.sroa.45.sroa.5.sroa.4.0..sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store i64 16, ptr %.sroa.45.sroa.5.sroa.4.0..sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !1180
  %.sroa.45.sroa.5.sroa.5.0..sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %i.ll, ptr %.sroa.45.sroa.5.sroa.5.0..sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !1180
  %.sroa.45.sroa.5.sroa.6.0..sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45.sroa.5.sroa.6.0..sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !1180
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1182
  %i.lp = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1182 ; 3 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.bl, label %bb.br, !prof !18

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #35
          to label %.noexc23.i.i unwind label %bb.bm, !noalias !1179

.noexc23.i.i:                                     ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.lr = landingpad { ptr, i32 }
          cleanup
  %i.ls = call noundef i32 @close(i32 noundef %i.lk) #24, !noalias !1183 ; 0 uses
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$17hcf1d3efe47dba215E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %.sroa.45.sroa.5.sroa.4.0..sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx.i.i)
          to label %.body90.thread.i unwind label %bb.bn, !noalias !1179

bb.bn:                                            ; preds = %bb.bm
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1179
  unreachable

bb.bo:                                            ; preds = %bb.bj
  %i.lu = landingpad { ptr, i32 }
          cleanup
  %i.lv = call noundef i32 @close(i32 noundef %i.lk) #24, !noalias !1179 ; 0 uses
  br label %.body90.thread.i

.body90.i:                                        ; preds = %bb.ch, %.body92.i, %bb.bp
  %.sroa.044.0.i = phi i8 [ %.sroa.044.2.i, %bb.ch ], [ %.sroa.044.1.i, %bb.bp ], [ %.sroa.044.2.i, %.body92.i ]
  %.pn79.i = phi { ptr, i32 } [ %.pn77.i, %bb.ch ], [ %i.lx, %bb.bp ], [ %.pn77.i, %.body92.i ] ; 2 uses
  %i.lw = trunc nuw i8 %.sroa.044.0.i to i1
  br i1 %i.lw, label %.body90.thread.i, label %.body

bb.bp:                                            ; preds = %bb.hp, %bb.bh
  %.sroa.044.1.i = phi i8 [ %.sroa.044.4.i, %bb.hp ], [ 1, %bb.bh ]
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %.body90.i

bb.bq:                                            ; preds = %.noexc.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !1180, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !1178
  br label %.thread211.i

bb.br:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lp, ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 64, i1 false), !noalias !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1180
  store ptr %i.lp, ptr %i.bq, align 8, !noalias !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !1178
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.mb = load i64, ptr %i.ma, align 8, !alias.scope !1177, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !1184
  store ptr null, ptr %i.bd, align 8, !noalias !1184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1185
  store ptr %1, ptr %i.bc, align 8, !alias.scope !1186, !noalias !1187
  %.sroa.4.0..sroa_idx130.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx130.i, align 8, !alias.scope !1186, !noalias !1187
  %.sroa.5131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 0, ptr %.sroa.5131.0..sroa_idx.i, align 8, !alias.scope !1186, !noalias !1187
  %.sroa.6.0..sroa_idx132.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i64 %i.mb, ptr %.sroa.6.0..sroa_idx132.i, align 8, !alias.scope !1186, !noalias !1187
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1186, !noalias !1188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1190
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63d1fb350182e039E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bc)
          to label %.noexc.i.i.i.i unwind label %bb.by, !noalias !1191

.noexc.i.i.i.i:                                   ; preds = %bb.br
  %i.mc = load ptr, ptr %i.ba, align 8, !noalias !1190, !noundef !12
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.thread.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1192
  %i.md = call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, 9) 8) #24, !noalias !1192 ; 6 uses
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %bb.bt, label %bb.bu

bb.bs:                                            ; preds = %bb.bt
  %i.mf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$17hed9d79695ebb42a7E"(ptr noalias noundef align 8 dereferenceable(48) %i.ba) #36
          to label %.body.i.i.i.i unwind label %bb.bx, !noalias !1193

bb.bt:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 192, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #35
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.bs, !noalias !1193

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.md, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !1193
  store i64 4, ptr %i.bb, align 8, !noalias !1190
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store ptr %i.md, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1190
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i64 40, i1 false), !noalias !1194
  call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1197
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63d1fb350182e039E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.az)
          to label %.noexc5.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1193

.noexc5.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.bu
  %i.mg = load ptr, ptr %i.ay, align 8, !noalias !1198, !noundef !12
  %.not1.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mg, null
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i, label %.thread234, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc5.i.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i.i.i
  %i.mh = phi ptr [ %i.mm, %.noexc6.i.i.i.i.i.i.i.i.i ], [ %i.md, %.noexc5.i.i.i.i.i.i.i.i.i ]
  %i.mi = phi i64 [ %i.mo, %.noexc6.i.i.i.i.i.i.i.i.i ], [ 1, %.noexc5.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.mj = icmp samesign ult i64 %i.mi, 192153584101141163
  call void @llvm.assume(i1 %i.mj)
  %i.mk = load i64, ptr %i.bb, align 8, !range !24, !alias.scope !1199, !noalias !1190, !noundef !12
  %i.ml = icmp eq i64 %i.mi, %i.mk
  br i1 %i.ml, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha8d761eeec586e1dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.mi, i64 noundef range(i64 1, 0) 1, i64 noundef 48)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i" unwind label %bb.bv

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1199, !noalias !1190
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.mm = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he67020e00220ac33E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i" ], [ %i.mh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.mn = getelementptr inbounds nuw [48 x i8], ptr %i.mm, i64 %i.mi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mn, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !noalias !1200
  %i.mo = add nuw nsw i64 %i.mi, 1                ; 4 uses
  store i64 %i.mo, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1199, !noalias !1190
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63d1fb350182e039E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.az)
          to label %.noexc6.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1193

.noexc6.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haeb7de4aa090aa02E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.mp = load ptr, ptr %i.ay, align 8, !noalias !1198, !noundef !12
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN12actix_server6server11ServerInner8run_sync17h5588d64d57df2709E:bb.a

bb.gr:                                            ; preds = %bb.gq
  %i.yl = extractvalue { i64, ptr } %i.yk, 0
  %i.ym = extractvalue { i64, ptr } %i.yk, 1      ; 4 uses
  %i.yn = trunc nuw i64 %i.yl to i1
  br i1 %i.yn, label %bb.gs, label %bb.ic

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1329
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.yo = load ptr, ptr %i.af, align 8, !alias.scope !1346, !noalias !1329, !nonnull !12, !noundef !12
  %i.yp = atomicrmw add ptr %i.yo, i64 -1 release, align 8, !noalias !1347
  %i.yq = icmp eq i64 %i.yp, 1
  br i1 %i.yq, label %bb.gt, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i"

bb.gt:                                            ; preds = %bb.gs
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i" unwind label %.thread31.i.i.i, !noalias !1331

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i": ; preds = %bb.gt, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1329
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.yr = load ptr, ptr %i.aj, align 8, !alias.scope !1352, !noalias !1329, !nonnull !12, !noundef !12
  %i.ys = atomicrmw add ptr %i.yr, i64 -1 release, align 8, !noalias !1353
  %i.yt = icmp eq i64 %i.ys, 1
  br i1 %i.yt, label %bb.gu, label %bb.hf

bb.gu:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.hf unwind label %bb.ft, !noalias !1331

bb.gv:                                            ; preds = %bb.go
  %i.yu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17heea3bd4bf211275fE"(ptr nonnull %i.yc, ptr nonnull @293) #36
          to label %.thread36.i.i.i unwind label %bb.gw, !noalias !1331

bb.gw:                                            ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i", %bb.hd, %.noexc51.i.i.i, %bb.ha, %bb.gy, %bb.gx, %bb.gv, %bb.fy
  %i.yv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1331
  unreachable

.thread36.i.i.i:                                  ; preds = %bb.gy, %bb.gv, %bb.gp, %bb.gm
  %.pn39.i.i.i = phi { ptr, i32 } [ %i.ye, %bb.gm ], [ %i.yz, %bb.gy ], [ %i.yh, %bb.gp ], [ %i.yu, %bb.gv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.yw = load ptr, ptr %i.af, align 8, !alias.scope !1356, !noalias !1329, !nonnull !12, !noundef !12
  %i.yx = atomicrmw add ptr %i.yw, i64 -1 release, align 8, !noalias !1357
  %i.yy = icmp eq i64 %i.yx, 1
  br i1 %i.yy, label %bb.gx, label %.thread27.i.i.i

bb.gx:                                            ; preds = %.thread36.i.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %.thread27.i.i.i unwind label %bb.gw, !noalias !1331

bb.gy:                                            ; preds = %bb.gj
  %i.yz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr171drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$actix_server..accept..Accept..start..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h24d83e005a45bffaE"(ptr noalias noundef nonnull align 16 dereferenceable(208) %i.ae) #36
          to label %.thread36.i.i.i unwind label %bb.gw, !noalias !1331

bb.gz:                                            ; preds = %bb.gd
  %i.za = atomicrmw add ptr %i.xm, i64 -1 release, align 8, !noalias !1358
  %i.zb = icmp eq i64 %i.za, 1
  br i1 %i.zb, label %bb.ha, label %.noexc51.i.i.i

bb.ha:                                            ; preds = %bb.gz
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %.noexc51.i.i.i unwind label %bb.gw, !noalias !1331

.noexc51.i.i.i:                                   ; preds = %bb.ha, %bb.gz
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h6353e3d12818c11dE"(ptr noalias noundef align 8 dereferenceable(32) %i.ah) #36
          to label %.thread27.i.i.i unwind label %bb.gw, !noalias !1331

.thread.i.i.i:                                    ; preds = %bb.fy, %.thread27.i.i.i, %bb.ft
  %.pn3315.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %bb.ft ], [ %.pn30.pn.i.i.i, %bb.fy ], [ %.pn30.pn.i.i.i, %.thread27.i.i.i ] ; 2 uses
  %.sroa.020.014.i.i.i = phi i8 [ %.sroa.020.1.ph.i.i.i, %bb.ft ], [ %.sroa.020.2.i.i.i, %bb.fy ], [ %.sroa.020.2.i.i.i, %.thread27.i.i.i ]
  %.sroa.019.013.i.i.i = phi i8 [ %.sroa.020.1.ph.i.i.i, %bb.ft ], [ %.sroa.019.2.i.i.i, %bb.fy ], [ %.sroa.019.2.i.i.i, %.thread27.i.i.i ]
  %i.zc = trunc nuw i8 %.sroa.019.013.i.i.i to i1
  br i1 %i.zc, label %.thread.thread.i.i.i, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i"

.thread16.i.i.i:                                  ; preds = %.thread23.i.i.i, %bb.fh, %bb.fg
  %eh.lpad-body4121.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i109.i, %.thread23.i.i.i ], [ %i.vt, %bb.fh ], [ %i.vt, %bb.fg ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i108.i, label %bb.hb [
    i64 -9223372036854775808, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i"
    i64 0, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i"
  ]

bb.hb:                                            ; preds = %.thread16.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i108.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1331
  br label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i"

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i": ; preds = %bb.hd, %bb.hc, %.thread.thread.i.i.i, %.thread.i.i.i
  %i.zd = trunc nuw i8 %.sroa.020.014.i.i.i to i1
  br i1 %i.zd, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i", label %.critedge.i

.thread.thread.i.i.i:                             ; preds = %.thread.i.i.i
  %.pre57.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !1359, !noalias !1329 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.ze = icmp eq ptr %.pre57.i.i.i, null
  br i1 %i.ze, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i", label %bb.hc

bb.hc:                                            ; preds = %.thread.thread.i.i.i
  %i.zf = atomicrmw add ptr %.pre57.i.i.i, i64 -1 release, align 8, !noalias !1360
  %i.zg = icmp eq i64 %i.zf, 1
  br i1 %i.zg, label %bb.hd, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i"

bb.hd:                                            ; preds = %bb.hc
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbfbb7d711b1d7fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i" unwind label %bb.gw, !noalias !1331

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i.i": ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i", %bb.hb, %.thread16.i.i.i, %.thread16.i.i.i
  %.pn33154973.i.i.i = phi { ptr, i32 } [ %.pn3315.i.i.i, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i.i" ], [ %eh.lpad-body4121.i.i.i, %bb.hb ], [ %eh.lpad-body4121.i.i.i, %.thread16.i.i.i ], [ %eh.lpad-body4121.i.i.i, %.thread16.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$actix_server..accept..Accept..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7501753db6de6aa5E"(ptr noalias noundef nonnull readonly align 16 dereferenceable(160) %i.bh) #36
          to label %.critedge.i unwind label %bb.gw, !noalias !1361

bb.he:                                            ; preds = %bb.hj
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.hf:                                            ; preds = %bb.gu, %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1328
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ym) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1178
  store ptr %i.ym, ptr %i.bg, align 8, !noalias !1178
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1179
  %i.zi = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1179 ; 3 uses
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %bb.hg, label %bb.hj, !prof !18

bb.hg:                                            ; preds = %bb.hf
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #35
          to label %.noexc114.i unwind label %bb.hh, !noalias !1179

.noexc114.i:                                      ; preds = %bb.hg
  unreachable

bb.hh:                                            ; preds = %bb.hg
  %i.zk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bg) #36
          to label %.critedge.i unwind label %bb.hi, !noalias !1179

bb.hi:                                            ; preds = %bb.hh
  %i.zl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1179
  unreachable

bb.hj:                                            ; preds = %bb.hf
  store ptr %i.ym, ptr %i.zi, align 8, !noalias !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1178
  %i.zm = invoke noundef nonnull ptr @_ZN3std2io5error5Error4_new17h6d8eca976092d069E(i8 noundef 40, ptr noundef nonnull align 1 %i.zi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @65)
          to label %.thread205.i unwind label %bb.he, !noalias !1179

.thread205.i:                                     ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1178
  br label %bb.hk

bb.hk:                                            ; preds = %.thread169.i, %bb.ew, %.thread205.i
  %.sroa.9.3.a = phi ptr [ %i.zm, %.thread205.i ], [ %.sroa.040.0..sroa.040.0..sroa.040.0.copyload41.i.off0.i, %bb.ew ], [ %i.sc, %.thread169.i ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$actix_server..worker..WorkerHandleServer$GT$$GT$17h5ef5cf5ec6c3e0b4E"(ptr noalias noundef align 8 dereferenceable(24) %i.bo)
          to label %bb.hn unwind label %bb.ci, !noalias !1179

bb.hl:                                            ; preds = %bb.ez, %bb.ey
  %i.zn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$alloc..boxed..Box$LT$$u5b$actix_server..accept..ServerSocketInfo$u5d$$GT$$GT$17hd6c684e517aa1cf7E"(ptr nonnull %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.sa) #36, !noalias !1179
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$actix_server..accept..Accept$GT$17h0a0c936412a6f779E"(ptr noalias noundef align 16 dereferenceable(144) %i.bl) #36
          to label %.critedge.i unwind label %bb.hm, !noalias !1179

bb.hm:                                            ; preds = %bb.ia, %bb.hl, %.critedge.i, %bb.ch
  %i.zo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1179
  unreachable

bb.hn:                                            ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1178
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.ck
  %.sroa.9.0221 = phi ptr [ %.sroa.9.3.a, %bb.hn ], [ %.sroa.5.0168.i, %bb.ck ] ; 2 uses
  %.sroa.044.4.i = phi i8 [ 0, %bb.hn ], [ 1, %bb.ck ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.zp = load ptr, ptr %i.bq, align 8, !alias.scope !1365, !noalias !1178, !nonnull !12, !noundef !12
  %i.zq = atomicrmw add ptr %i.zp, i64 -1 release, align 8, !noalias !1366
  %i.zr = icmp eq i64 %i.zq, 1
  br i1 %i.zr, label %bb.hp, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i.a"

bb.hp:                                            ; preds = %bb.ho
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bq)
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i.a" unwind label %bb.bp, !noalias !1179

"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i.a": ; preds = %bb.hp, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !1178
  %i.zs = trunc nuw i8 %.sroa.044.4.i to i1
  br i1 %i.zs, label %.thread211.i, label %bb.hq

.thread211.i:                                     ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i.a", %bb.bq
  %.sroa.9.1.a = phi ptr [ %i.lz, %bb.bq ], [ %.sroa.9.0221, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i.a" ]
  %i.zt = call noundef i32 @close(i32 noundef %i.lg) #24, !noalias !1179 ; 0 uses
  br label %bb.hr

bb.hq:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit116.i.a"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1178
  br label %.thread247

bb.hr:                                            ; preds = %.thread211.i, %bb.bg
  %.sroa.9.2 = phi ptr [ %i.le, %bb.bg ], [ %.sroa.9.1.a, %.thread211.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1178
  %i.zu = atomicrmw add ptr %i.kw, i64 -1 acq_rel, align 8, !noalias !1367
  %i.zv = icmp eq i64 %i.zu, 1
  br i1 %i.zv, label %bb.hs, label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i"

bb.hs:                                            ; preds = %bb.hr
  %i.zw = getelementptr inbounds nuw i8, ptr %i.kv, i64 128
  %i.zx = getelementptr inbounds nuw i8, ptr %i.kv, i64 136
  %i.zy = atomicrmw add ptr %i.zx, i64 1 acquire, align 8, !noalias !1367
  %i.zz = invoke fastcc noundef nonnull ptr @"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$10find_block17he1ab7aef3f46240bE"(ptr noundef nonnull align 8 %i.zw, i64 noundef %i.zy)
          to label %.noexc.i.i.i117.i unwind label %bb.ht, !noalias !1367

.noexc.i.i.i117.i:                                ; preds = %bb.hs
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 784
  %i.aab = atomicrmw or ptr %i.aaa, i64 8589934592 release, align 8, !noalias !1367 ; 0 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.kv, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.aac)
          to label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i" unwind label %bb.ht, !noalias !1367

bb.ht:                                            ; preds = %.noexc.i.i.i117.i, %bb.hs
  %i.aad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aae = atomicrmw add ptr %i.kv, i64 -1 release, align 8, !noalias !1368
  %i.aaf = icmp eq i64 %i.aae, 1
  br i1 %i.aaf, label %bb.hu, label %bb.ib

bb.hu:                                            ; preds = %bb.ht
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf6e7299f654e58aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bt)
          to label %bb.ib unwind label %bb.hw, !noalias !1179

"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i": ; preds = %.noexc.i.i.i117.i, %bb.hr
  %i.aag = atomicrmw add ptr %i.kv, i64 -1 release, align 8, !noalias !1369
  %i.aah = icmp eq i64 %i.aag, 1
  br i1 %i.aah, label %bb.hv, label %bb.hy

bb.hv:                                            ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf6e7299f654e58aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bt)
          to label %bb.hy unwind label %bb.hx, !noalias !1179

bb.hw:                                            ; preds = %bb.hu
  %i.aai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1367
  unreachable

.body90.thread.i:                                 ; preds = %.body90.i, %bb.bo, %bb.bm
  %.pn79223.i = phi { ptr, i32 } [ %.pn79.i, %.body90.i ], [ %i.lu, %bb.bo ], [ %i.lr, %bb.bm ]
  %i.aaj = call noundef i32 @close(i32 noundef %i.lg) #24, !noalias !1179 ; 0 uses
  br label %bb.ia

bb.hx:                                            ; preds = %bb.hv
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.hv, %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1178
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  %i.aal = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i, %.sroa.4208.0.copyload
  br i1 %i.aal, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i", label %.lr.ph.i.i.i121.i

.lr.ph.i.i.i121.i:                                ; preds = %bb.hy, %.lr.ph.i.i.i121.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.aan, %.lr.ph.i.i.i121.i ], [ 0, %bb.hy ] ; 2 uses
  %i.aam = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i
  %i.aan = add nuw i64 %.sroa.0.010.i.i.i.i, 1    ; 2 uses
  %i.aao = getelementptr i8, ptr %i.aam, i64 12
  %.val9.i.i.i.i = load i32, ptr %i.aao, align 4, !alias.scope !1370, !noalias !1371
  %i.aap = call noundef i32 @close(i32 noundef %.val9.i.i.i.i) #24, !noalias !1372 ; 0 uses
  %i.aaq = icmp eq i64 %i.aan, %i.jw
  br i1 %i.aaq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i", label %.lr.ph.i.i.i121.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i": ; preds = %.lr.ph.i.i.i121.i, %bb.hy
  %i.aar = icmp eq i64 %i.kr, 0
  br i1 %i.aar, label %.thread247, label %bb.hz

bb.hz:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i"
  %i.aas = and i64 %i.jm, -16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i.i.i.i.i, i64 noundef %i.aas, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1371
  br label %.thread247

bb.ia:                                            ; preds = %.body90.thread.i, %bb.be
  %.pn81.ph.i = phi { ptr, i32 } [ %.pn79223.i, %.body90.thread.i ], [ %i.la, %bb.be ]
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_server..handle..ServerHandle$GT$17h22a7caa4898d49c3E"(ptr noalias noundef align 8 dereferenceable(8) %i.bt) #36
          to label %bb.ib unwind label %bb.hm, !noalias !1179

bb.ib:                                            ; preds = %bb.ia, %bb.hx, %bb.hu, %bb.ht
  %.pn83.ph.i = phi { ptr, i32 } [ %.pn81.ph.i, %bb.ia ], [ %i.aak, %bb.hx ], [ %i.aad, %bb.hu ], [ %i.aad, %bb.ht ]
  call fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$actix_server..socket..MioListener$RP$$GT$$GT$17h71bc1b06a7df30d9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ch) #36, !noalias !1373
  br label %.body

.thread247:                                       ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i", %bb.hz, %bb.hq
  %.sroa.9.4.ph = phi ptr [ %.sroa.9.0221, %bb.hq ], [ %.sroa.9.2, %bb.hz ], [ %.sroa.9.2, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb5b890ae051715cdE.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.id

bb.ic:                                            ; preds = %bb.gr
  %i.aat = load ptr, ptr %i.aj, align 8, !noalias !1329, !nonnull !12, !noundef !12
  %i.aau = load ptr, ptr %i.af, align 8, !noalias !1329, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1178
  %i.aav = load ptr, ptr %i.bq, align 8, !noalias !1178, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.0213.0.copyload = load i64, ptr %i.bo, align 8, !noalias !1374 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !1374 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.aaw = icmp eq i64 %.sroa.0213.0.copyload, -9223372036854775808
  br i1 %i.aaw, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic, %.thread247
  %.sroa.9.4264 = phi ptr [ %.sroa.9.4.ph, %.thread247 ], [ %.sroa.9.0.copyload, %bb.ic ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.4264) ]
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.4264, ptr %i.aax, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$actix_server..builder..ServerBuilder$GT$17hc45e88f3bea95b41E"(ptr noalias noundef align 8 dereferenceable(136) %1)
  br label %"_ZN4core3ptr109drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_server..server..ServerCommand$GT$$GT$17hddf3da2be0aa9637E.exit"

bb.ie:                                            ; preds = %bb.ic
  %i.aay = ptrtoint ptr %i.ym to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store ptr %i.aav, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store i64 %.sroa.0213.0.copyload, ptr %i.cf, align 8
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %.sroa.9.0.copyload, ptr %.sroa.2141.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %.sroa.16.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store ptr %i.aat, ptr %i.ce, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.aau, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 %i.aay, ptr %.sroa.3.0..sroa_idx220, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aba = load ptr, ptr %i.aaz, align 8, !align !14, !noundef !12 ; 2 uses
  %.not148 = icmp eq ptr %i.aba, null
  br i1 %.not148, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.abc = load ptr, ptr %i.abb, align 8, !nonnull !12, !noundef !12
  %.sroa.7.0.copyload218.cast = ptrtoint ptr %i.abc to i64
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit"

bb.ig:                                            ; preds = %bb.ie
  store i64 -9223372036854775807, ptr %i.cd, align 8
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 133
  %.val153276 = load i8, ptr %i.abd, align 1
  %i.abe = trunc nuw i8 %.val153276 to i1
  br i1 %i.abe, label %bb.ih, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit"

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1375
  %i.abf = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8, !noalias !1376
  %i.abg = icmp eq i64 %i.abf, 0
  br i1 %i.abg, label %bb.ii, label %.thread29.i.i.i

bb.ii:                                            ; preds = %bb.ih
  %i.abh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12actix_server7signals9OsSignals3new10__CALLSITE17hec8d6af88b9f3a0cE, i64 16) monotonic, align 8, !noalias !1376 ; 3 uses
  switch i8 %i.abh, label %bb.ij [
    i8 0, label %.thread29.i.i.i
    i8 1, label %.thread.i.i.i175
    i8 2, label %.thread.i.i.i175
  ], !prof !15

bb.ij:                                            ; preds = %bb.ii
  %i.abi = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN12actix_server7signals9OsSignals3new10__CALLSITE17hec8d6af88b9f3a0cE)
          to label %.noexc.i176 unwind label %bb.jb, !noalias !1377 ; 2 uses

.noexc.i176:                                      ; preds = %bb.ij
  %i.abj = icmp eq i8 %i.abi, 0
  br i1 %i.abj, label %.thread29.i.i.i, label %.thread.i.i.i175

.thread.i.i.i175:                                 ; preds = %bb.ii, %.noexc.i176, %bb.ii
  %.sroa.06.028.i.i.i = phi i8 [ %i.abi, %.noexc.i176 ], [ %i.abh, %bb.ii ], [ %i.abh, %bb.ii ]
  %i.abk = load ptr, ptr @_ZN12actix_server7signals9OsSignals3new10__CALLSITE17hec8d6af88b9f3a0cE, align 8, !noalias !1376, !nonnull !12, !align !13, !noundef !12
  %i.abl = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abk, i8 noundef %.sroa.06.028.i.i.i)
          to label %.noexc3.i unwind label %bb.jb, !noalias !1377

.noexc3.i:                                        ; preds = %.thread.i.i.i175
  br i1 %i.abl, label %bb.ik, label %.thread29.i.i.i

bb.ik:                                            ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1376
  %i.abm = load ptr, ptr @_ZN12actix_server7signals9OsSignals3new10__CALLSITE17hec8d6af88b9f3a0cE, align 8, !noalias !1376, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1376
  store ptr @223, ptr %i.x, align 8, !noalias !1376
  %i.abo = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.abo, align 8, !noalias !1376
  %i.abp = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %i.abp, align 8, !noalias !1376
  %i.abq = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.abq, align 8, !noalias !1376
  %i.abr = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.abr, align 8, !noalias !1376
  store ptr %i.x, ptr %i.y, align 8, !noalias !1376
  %i.abs = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @51, ptr %i.abs, align 8, !noalias !1376
  store i64 1, ptr %i.z, align 8, !noalias !1376
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1376
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1376
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.abn, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1376
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %.noexc4.i unwind label %bb.jb, !noalias !1377

.noexc4.i:                                        ; preds = %bb.ik
  %i.abt = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !1378
  %i.abu = icmp eq i8 %i.abt, 0
  br i1 %i.abu, label %bb.il, label %"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i"

bb.il:                                            ; preds = %.noexc4.i
  %i.abv = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !1378 ; 2 uses
  %i.abw = icmp ult i64 %i.abv, 6
  call void @llvm.assume(i1 %i.abw)
  %i.abx = icmp samesign ugt i64 %i.abv, 4
  br i1 %i.abx, label %bb.im, label %"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i"

bb.im:                                            ; preds = %bb.il
  %i.aby = load ptr, ptr @_ZN12actix_server7signals9OsSignals3new10__CALLSITE17hec8d6af88b9f3a0cE, align 8, !noalias !1378, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  %i.aca = load ptr, ptr %i.abz, align 8, !noalias !1376, !nonnull !12, !align !14, !noundef !12
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 40
  %i.acc = load i64, ptr %i.acb, align 8, !noalias !1376, !noundef !12
  store i64 5, ptr %i.q, align 8, !noalias !1378
  %.sroa.52.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.aca, ptr %.sroa.52.0..sroa_idx.i.i.i.i, align 8, !noalias !1378
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.acc, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !1378
  %i.acd = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc5.i unwind label %bb.jb, !noalias !1377 ; 2 uses

.noexc5.i:                                        ; preds = %bb.im
  %i.ace = extractvalue { ptr, ptr } %i.acd, 0    ; 2 uses
  %i.acf = extractvalue { ptr, ptr } %i.acd, 1    ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 24
  %i.ach = load ptr, ptr %i.acg, align 8, !invariant.load !12, !noalias !1376, !nonnull !12
  %i.aci = invoke noundef zeroext i1 %i.ach(ptr noundef align 1 %i.ace, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %.noexc6.i unwind label %bb.jb, !noalias !1377, !inline_history !1093

.noexc6.i:                                        ; preds = %.noexc5.i
  br i1 %i.aci, label %bb.in, label %"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i"

bb.in:                                            ; preds = %.noexc6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1378
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aby, ptr noundef nonnull align 1 %i.ace, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.acf, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %.noexc7.i unwind label %bb.jb, !noalias !1377

.noexc7.i:                                        ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1378
  br label %"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i"

"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i": ; preds = %.noexc7.i, %.noexc6.i, %bb.il, %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1376
  br label %bb.ir

.thread29.i.i.i:                                  ; preds = %.noexc3.i, %.noexc.i176, %bb.ii, %bb.ih
  %i.acj = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !1376
  %i.ack = icmp eq i8 %i.acj, 0
  br i1 %i.ack, label %bb.io, label %bb.ir

bb.io:                                            ; preds = %.thread29.i.i.i
  %i.acl = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !1376 ; 2 uses
  %i.acm = icmp ult i64 %i.acl, 6
  call void @llvm.assume(i1 %i.acm)
  %i.acn = icmp samesign ugt i64 %i.acl, 4
  br i1 %i.acn, label %bb.ip, label %bb.ir

bb.ip:                                            ; preds = %bb.io
end_hunk_1
begin_hunk_2_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h21c7fa30fe47c32bE:bb.a
  %i.zy = icmp eq i64 %i.zx, 1
  br i1 %i.zy, label %bb.lk, label %.thread113.i

bb.lk:                                            ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5121bd2d41adeb8eE.exit.i.i.i"
  fence acquire, !noalias !2727
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcff2d799f1d375ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %.thread113.i unwind label %bb.lg

bb.ll:                                            ; preds = %bb.lj
  %i.zz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2727
  unreachable

.thread92.i:                                      ; preds = %.thread97.i, %.body.i.i
  %eh.lpad-body96.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread97.i ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_rt..arbiter..ArbiterCommand$GT$$GT$17h46bb923e9ac3b327E"(ptr noalias noundef align 8 dereferenceable(8) %i.aaa) #36
          to label %bb.lm unwind label %bb.lg

.critedge.i:                                      ; preds = %bb.lm, %.thread113.i, %bb.k
  %.sroa.01.091.i = phi i1 [ %.sroa.01.2106.i, %.thread113.i ], [ false, %bb.k ], [ true, %bb.lm ]
  %.pn690.i = phi { ptr, i32 } [ %.pn105.i, %.thread113.i ], [ %lpad.thr_comm.split-lp.i, %bb.k ], [ %eh.lpad-body96.i, %bb.lm ]
  %.val.i = load i64, ptr %0, align 8, !range !39, !alias.scope !2727, !noundef !12
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load ptr, ptr %i.aab, align 8, !alias.scope !2727
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..sync..mpsc..Sender$LT$$LP$$RP$$GT$$GT$17hf9cc5a6e53f2c7aeE"(i64 %.val.i, ptr %.val8.i) #36
          to label %bb.ln unwind label %bb.lg

bb.lm:                                            ; preds = %.thread92.i
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef align 8 dereferenceable(24) %i.aac) #36
          to label %.critedge.i unwind label %bb.lg

bb.ln:                                            ; preds = %.critedge.i
  br i1 %.sroa.01.091.i, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.lp, %bb.ln
  resume { ptr, i32 } %.pn690.i

bb.lp:                                            ; preds = %bb.ln
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_rt..arbiter..ArbiterCommand$GT$$GT$17h63dfb4994c342d98E"(ptr noalias noundef align 8 dereferenceable(8) %i.aad) #36
          to label %bb.lo unwind label %bb.lg

"_ZN8actix_rt7arbiter7Arbiter13with_tokio_rt28_$u7b$$u7b$closure$u7d$$u7d$17hd852c4de24d743fcE.exit": ; preds = %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !2727
  %.val9.i = load i64, ptr %0, align 8, !range !39, !alias.scope !2727, !noundef !12
  %.val10.i = load ptr, ptr %i.du, align 8, !alias.scope !2727
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..sync..mpsc..Sender$LT$$LP$$RP$$GT$$GT$17hf9cc5a6e53f2c7aeE"(i64 %.val9.i, ptr %.val10.i), !noalias !2727
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !50
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h4b24d2f6a212e05cE(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_ZN3std6thread9spawnhook15ChildSpawnHooks3run17h1ae0a54de4e945fcE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !2906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2906
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !50
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h74757a2e90818992E(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_ZN3std6thread9spawnhook15ChildSpawnHooks3run17h1ae0a54de4e945fcE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !2909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2909
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !50
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h915282f64c0121dbE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 11 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %i.c = alloca [2 x i8], align 1                 ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [2 x i8], align 1                 ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 9 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  %i.k = alloca [64 x i8], align 8                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 11 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [72 x i8], align 8                ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 9 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %i.s = alloca [312 x i8], align 8               ; 8 uses
  %i.t = alloca [2 x i8], align 1                 ; 8 uses
  %i.u = alloca [312 x i8], align 8               ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 9 uses
  %i.x = alloca [312 x i8], align 8               ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [48 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5.i.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.ab = alloca [312 x i8], align 8              ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [312 x i8], align 8              ; 5 uses
  %i.ae = alloca [48 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [48 x i8], align 8               ; 9 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 9 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [48 x i8], align 8               ; 9 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [32 x i8], align 8               ; 9 uses
  %i.at = alloca [32 x i8], align 8               ; 9 uses
  %i.au = alloca [1 x i8], align 1                ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 7 uses
  %i.aw = alloca [2 x i8], align 1                ; 8 uses
  %i.ax = alloca [200 x i8], align 8              ; 18 uses
  %i.ay = alloca [32 x i8], align 8               ; 8 uses
  %i.az = alloca [16 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [48 x i8], align 8               ; 7 uses
  %i.bc = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.bd = alloca [64 x i8], align 8               ; 8 uses
  %i.be = alloca [8 x i8], align 8                ; 5 uses
  %i.bf = alloca [8 x i8], align 8                ; 5 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [240 x i8], align 8              ; 8 uses
  %i.bi = alloca [80 x i8], align 8               ; 6 uses
  %i.bj = alloca [80 x i8], align 8               ; 12 uses
  %i.bk = alloca [144 x i8], align 8              ; 17 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 7 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [200 x i8], align 8              ; 7 uses
  %i.bp = alloca [16 x i8], align 8               ; 25 uses
  %i.bq = alloca [8 x i8], align 8                ; 7 uses
  %i.br = alloca [8 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !3282
  store i64 1, ptr %i.bd, align 8, !noalias !3282
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 1, ptr %i.bs, align 8, !noalias !3282
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !3282
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !3282
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3283
  %i.bt = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !3283 ; 5 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6887b2e29b148abfE.exit.i.i", !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #35
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..sync..ArcInner$LT$tokio..sync..oneshot..Inner$LT$$LP$$RP$$GT$$GT$$GT$17h0a12adeaac36aec4E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bd) #36
          to label %.body37.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6887b2e29b148abfE.exit.i.i": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3282
  %i.bx = atomicrmw add ptr %i.bt, i64 1 monotonic, align 8
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %bb.e, label %bb.k

bb.e:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6887b2e29b148abfE.exit.i.i"
  tail call void @llvm.trap()
  unreachable

.body37.i:                                        ; preds = %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i", %bb.mo, %bb.mt, %bb.ml, %bb.mk, %bb.ll, %bb.lk, %.split342.i, %.body66.i, %bb.j, %bb.c
  %cond.i.a = phi i1 [ false, %bb.c ], [ true, %.split342.i ], [ false, %bb.j ], [ true, %.body66.i ], [ false, %bb.ml ], [ false, %bb.mk ], [ true, %bb.lk ], [ true, %bb.ll ], [ false, %bb.mt ], [ false, %bb.mo ], [ false, %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i" ]
  %.sroa.05.0.i = phi i1 [ true, %bb.c ], [ false, %.split342.i ], [ true, %bb.j ], [ false, %.body66.i ], [ true, %bb.ml ], [ true, %bb.mk ], [ false, %bb.lk ], [ false, %bb.ll ], [ true, %bb.mt ], [ true, %bb.mo ], [ true, %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i" ]
  %.pn18.i = phi { ptr, i32 } [ %i.bv, %bb.c ], [ %lpad.thr_comm.split-lp.i, %.split342.i ], [ %i.ci, %bb.j ], [ %.pn12.i, %.body66.i ], [ %i.aab, %bb.ml ], [ %i.aab, %bb.mk ], [ %i.yg, %bb.lk ], [ %i.yg, %bb.ll ], [ %.pn16.ph.i, %bb.mt ], [ %.pn16.ph.i, %bb.mo ], [ %.pn16.ph.i, %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  %i.bz = load i64, ptr %0, align 8, !range !34, !alias.scope !3286, !noundef !12
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.body37.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  call void @llvm.experimental.noalias.scope.decl(metadata !3288)
  %i.cc = load ptr, ptr %i.ca, align 8, !alias.scope !3289, !nonnull !12, !noundef !12
  %i.cd = atomicrmw add ptr %i.cc, i64 -1 release, align 8, !noalias !3289
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.g, label %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit"

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb6722ad016bd85d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit" unwind label %bb.lu

bb.h:                                             ; preds = %.body37.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3290)
  call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  %i.cf = load ptr, ptr %i.ca, align 8, !alias.scope !3292, !nonnull !12, !noundef !12
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 release, align 8, !noalias !3292
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.i, label %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit"

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf5f3293d72219e9aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit" unwind label %bb.lu

bb.j:                                             ; preds = %bb.mm
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body37.i

bb.k:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6887b2e29b148abfE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !3282
  store ptr %i.bt, ptr %i.br, align 8, !noalias !3282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !3282
  store ptr %i.bt, ptr %i.bq, align 8, !noalias !3282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !3282
  %i.cj = invoke { ptr, i8 } @_ZN5tokio4task5local8LocalSet3new17h753586399d26789fE()
          to label %bb.l unwind label %.split342.thread.i ; 2 uses

.body66.i:                                        ; preds = %bb.dp, %bb.do
  br i1 %.sroa.03.2.i, label %.body66.thread.i, label %.body37.i

.split342.thread.i:                               ; preds = %bb.me, %bb.k
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body66.thread.i

.split342.i:                                      ; preds = %bb.ln
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body37.i

bb.l:                                             ; preds = %bb.k
  %i.ck = extractvalue { ptr, i8 } %i.cj, 0
  %i.cl = extractvalue { ptr, i8 } %i.cj, 1
  store ptr %i.ck, ptr %i.bp, align 8, !noalias !3282
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i8 %i.cl, ptr %i.cm, align 8, !noalias !3282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !3282
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.bp, ptr %i.bo, align 8, !noalias !3282
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  store ptr %i.cn, ptr %i.co, align 8, !noalias !3282
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  store i8 0, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !3282
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 192
  store i8 0, ptr %i.cp, align 8, !noalias !3282
  call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3295)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !3296
  call void @llvm.experimental.noalias.scope.decl(metadata !3297)
  %i.cq = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 20 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 72 ; 18 uses
  %i.cs = load i8, ptr %i.cr, align 8, !range !41, !noalias !3298, !noundef !12
  switch i8 %i.cs, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.thread.i.i.i.i"
  ], !prof !44

default.unreachable:                              ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i, %bb.ad, %.noexc.i.i.i.i.i, %bb.v, %bb.gd, %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$$GT$17h59d90914bf75be85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.if, %bb.fa, %bb.hd, %bb.fu, %bb.eq, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.cq, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E)
          to label %.noexc.i.i.i unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3299

.noexc.i.i.i:                                     ; preds = %bb.m
  store i8 1, ptr %i.cr, align 8, !noalias !3298
  br label %bb.n

bb.n:                                             ; preds = %.noexc.i.i.i, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 70 ; 6 uses
  %i.cu = load i8, ptr %i.ct, align 2, !range !41, !noalias !3301, !noundef !12
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cu, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %.thread9.i.i.i

.thread9.i.i.i:                                   ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3296
  br label %bb.di

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.ct, align 2, !noalias !3301
  %i.cv = load i64, ptr %0, align 8, !range !34, !alias.scope !3302, !noundef !12
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.cx = trunc nuw i64 %i.cv to i1
  %i.cy = load ptr, ptr %i.cw, align 8, !alias.scope !3302, !nonnull !12
  %.sroa.010.0.v.i.i.i.i.i.i = select i1 %i.cx, i64 496, i64 544
  %.sroa.010.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.010.0.v.i.i.i.i.i.i
  %i.cz = invoke { i32, i32 } @_ZN5tokio4util4rand2rt16RngSeedGenerator9next_seed17h077e1e186bf6cf33E(ptr noundef nonnull align 4 %.sroa.010.0.i.i.i.i.i.i)
          to label %.noexc3.i.i.i unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3299 ; 2 uses

.noexc3.i.i.i:                                    ; preds = %bb.o
  %i.da = extractvalue { i32, i32 } %i.cz, 0
  %i.db = extractvalue { i32, i32 } %i.cz, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 6 uses
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.dc, align 8, !noalias !3301
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 60 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 6 uses
  %i.dd = trunc i32 %.sroa.03.0.copyload.i.i.i.i.i.i to i1
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc3.i.i.i
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3301
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !3301
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.i.i.i.i"

bb.q:                                             ; preds = %.noexc3.i.i.i
  %i.de = invoke { i32, i32 } @_ZN5tokio4util4rand8FastRand3new17h09ba846b31a186dfE()
          to label %.noexc4.i.i.i unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3299 ; 2 uses

.noexc4.i.i.i:                                    ; preds = %bb.q
  %i.df = extractvalue { i32, i32 } %i.de, 0
  %i.dg = extractvalue { i32, i32 } %i.de, 1
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.i.i.i.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.i.i.i.i": ; preds = %.noexc4.i.i.i, %bb.p
  %.sroa.7.0.i.i.i.i.i.i = phi i32 [ %.sroa.5.0.copyload.i.i.i.i.i.i, %bb.p ], [ %i.dg, %.noexc4.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i, %bb.p ], [ %i.df, %.noexc4.i.i.i ]
  store i32 1, ptr %i.dc, align 8, !noalias !3301
  store i32 %i.da, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !3301
  store i32 %i.db, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3301
  invoke void @"_ZN5tokio7runtime7context7current50_$LT$impl$u20$tokio..runtime..context..Context$GT$11set_current17h64f445a830289f2dE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.ba, ptr noundef nonnull align 8 %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %0)
          to label %.noexc5.i.i.i unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3299

.noexc5.i.i.i:                                    ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.i.i.i.i"
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3303
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  store i32 %.sroa.7.0.i.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !3303
  %.sroa.0.0.copyload1.pr.i.i.i.i = load i64, ptr %i.ba, align 8, !noalias !3303 ; 3 uses
  %i.dh = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i, 4
  br i1 %i.dh, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.thread.i.i.i.i", label %bb.r, !prof !48

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.thread.i.i.i.i": ; preds = %.noexc5.i.i.i, %bb.l
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc6.i.i.i unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3299

.noexc6.i.i.i:                                    ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.thread.i.i.i.i"
  unreachable

bb.r:                                             ; preds = %.noexc5.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false), !noalias !3304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3296
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i, 3
  br i1 %.not.i.i.i, label %bb.di, label %bb.s, !prof !48

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !3296
  store i64 %.sroa.0.0.copyload1.pr.i.i.i.i, ptr %i.bc, align 8, !noalias !3296
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, i64 24, i1 false), !noalias !3296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3305
  %.sink2.i27.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 104 ; 6 uses
  %.sink2.i27.sroa.gep41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.dj = invoke { ptr, ptr } @_ZN5tokio7runtime4park16CachedParkThread5waker17h7eb7a1e1ef2b1e8fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a)
          to label %bb.t unwind label %common.ret.sink.split.i37.i.i.i.i.i, !noalias !3306 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.dk = extractvalue { ptr, ptr } %i.dj, 0      ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %common.ret.sink.split.i.i.i.i.i.i, label %bb.u

common.ret.sink.split.i.i.i.i.i.i:                ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3305
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h855d3ccb6d21b838E"(ptr noundef nonnull readonly align 8 %i.co)
          to label %.noexc11.i.i.i unwind label %bb.dj, !noalias !3307
end_hunk_2
begin_hunk_3_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h915282f64c0121dbE:bb.a
  br i1 %i.zb, label %bb.lw, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit.i", !prof !18

bb.lw:                                            ; preds = %bb.lv
  %i.zc = extractvalue { i64, ptr } %i.ls, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !3488
  store ptr %i.zc, ptr %i.bf, align 8, !noalias !3488
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #35
          to label %bb.lz unwind label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.zd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ze = load ptr, ptr %i.bf, align 8, !alias.scope !3489, !noalias !3282, !noundef !12
  %i.zf = icmp eq ptr %i.ze, null
  br i1 %i.zf, label %.body23.i, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bf)
          to label %.body23.i unwind label %bb.ma

bb.lz:                                            ; preds = %bb.lw
  unreachable

bb.ma:                                            ; preds = %bb.ly
  %i.zg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit.i": ; preds = %bb.lv
  invoke void @"_ZN70_$LT$tokio..task..local..LocalSet$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2b6215a242bdfaa1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %bb.md unwind label %bb.mb

bb.mb:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit.i"
  %i.zh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3490)
  call void @llvm.experimental.noalias.scope.decl(metadata !3491)
  %i.zi = load ptr, ptr %i.bp, align 8, !alias.scope !3492, !noalias !3282, !nonnull !12, !noundef !12 ; 2 uses
  %i.zj = load i64, ptr %i.zi, align 8, !noalias !3493, !noundef !12
  %i.zk = add i64 %i.zj, -1                       ; 2 uses
  store i64 %i.zk, ptr %i.zi, align 8, !noalias !3493
  %i.zl = icmp eq i64 %i.zk, 0
  br i1 %i.zl, label %bb.mc, label %.body66.thread.i

bb.mc:                                            ; preds = %bb.mb
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %.body66.thread.i unwind label %bb.mf

bb.md:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !3494)
  call void @llvm.experimental.noalias.scope.decl(metadata !3495)
  %i.zm = load ptr, ptr %i.bp, align 8, !alias.scope !3496, !noalias !3282, !nonnull !12, !noundef !12 ; 2 uses
  %i.zn = load i64, ptr %i.zm, align 8, !noalias !3497, !noundef !12
  %i.zo = add i64 %i.zn, -1                       ; 2 uses
  store i64 %i.zo, ptr %i.zm, align 8, !noalias !3497
  %i.zp = icmp eq i64 %i.zo, 0
  br i1 %i.zp, label %bb.me, label %"_ZN4core3ptr49drop_in_place$LT$tokio..task..local..LocalSet$GT$17he3839b17dc3dba21E.exit77.i"

bb.me:                                            ; preds = %bb.md
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %"_ZN4core3ptr49drop_in_place$LT$tokio..task..local..LocalSet$GT$17he3839b17dc3dba21E.exit77.i" unwind label %.split342.thread.i

bb.mf:                                            ; preds = %bb.mc
  %i.zq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr49drop_in_place$LT$tokio..task..local..LocalSet$GT$17he3839b17dc3dba21E.exit77.i": ; preds = %bb.me, %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3282
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$tokio..sync..oneshot..Receiver$LT$$LP$$RP$$GT$$GT$17hda34d53a9da8a35cE"(ptr noalias noundef align 8 dereferenceable(8) %i.bq)
          to label %bb.mh unwind label %bb.mg

bb.mg:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$tokio..task..local..LocalSet$GT$17he3839b17dc3dba21E.exit77.i"
  %i.zr = landingpad { ptr, i32 }
          cleanup
  br label %bb.mo

bb.mh:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$tokio..task..local..LocalSet$GT$17he3839b17dc3dba21E.exit77.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !3282
  call void @llvm.experimental.noalias.scope.decl(metadata !3498)
  %.val.i.i = load ptr, ptr %i.br, align 8, !alias.scope !3498, !noalias !3282, !noundef !12 ; 6 uses
  %.not.i.i78.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i78.i, label %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE.exit.i", label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.zs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  %i.zt = invoke noundef i64 @_ZN5tokio4sync7oneshot5State12set_complete17hd7c1ac113075f48fE(ptr noundef nonnull align 8 %i.zs)
          to label %.noexc.i79.i unwind label %bb.mk, !noalias !3498

.noexc.i79.i:                                     ; preds = %bb.mi
  %i.zu = and i64 %i.zt, 5
  %or.cond.not.i.i.i.i = icmp eq i64 %i.zu, 1
  br i1 %or.cond.not.i.i.i.i, label %bb.mj, label %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i.i"

bb.mj:                                            ; preds = %.noexc.i79.i
  %i.zv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.zw = load ptr, ptr %i.zv, align 8, !noalias !3498, !nonnull !12, !align !13, !noundef !12
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %i.zy = load ptr, ptr %i.zx, align 8, !noalias !3498, !nonnull !12, !noundef !12
  %i.zz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.aaa = load ptr, ptr %i.zz, align 8, !noalias !3498, !noundef !12
  invoke void %i.zy(ptr noundef %i.aaa)
          to label %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i.i" unwind label %bb.mk, !noalias !3498, !inline_history !0

bb.mk:                                            ; preds = %bb.mj, %bb.mi
  %i.aab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aac = atomicrmw add ptr %.val.i.i, i64 -1 release, align 8, !noalias !3499
  %i.aad = icmp eq i64 %i.aac, 1
  br i1 %i.aad, label %bb.ml, label %.body37.i

bb.ml:                                            ; preds = %bb.mk
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd1d4e4546c42d21aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %.body37.i unwind label %bb.mn

"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i.i": ; preds = %bb.mj, %.noexc.i79.i
  %i.aae = atomicrmw add ptr %.val.i.i, i64 -1 release, align 8, !noalias !3500
  %i.aaf = icmp eq i64 %i.aae, 1
  br i1 %i.aaf, label %bb.mm, label %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE.exit.i"

bb.mm:                                            ; preds = %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd1d4e4546c42d21aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE.exit.i" unwind label %bb.j

bb.mn:                                            ; preds = %bb.ml
  %i.aag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE.exit.i": ; preds = %bb.mm, %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i.i", %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !3282
  call fastcc void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17haceca7b85fd18874E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
  br label %"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$17h42a57b4073f8aaa7E.exit"

.body66.thread.i:                                 ; preds = %bb.mc, %bb.mb, %.split342.thread.i, %.body66.i
  %.pn14117.i = phi { ptr, i32 } [ %.pn12.i, %.body66.i ], [ %i.zh, %bb.mc ], [ %i.zh, %bb.mb ], [ %lpad.thr_comm.i, %.split342.thread.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$tokio..sync..oneshot..Receiver$LT$$LP$$RP$$GT$$GT$17hda34d53a9da8a35cE"(ptr noalias noundef align 8 dereferenceable(8) %i.bq) #36
          to label %bb.mo unwind label %bb.lu

bb.mo:                                            ; preds = %.body66.thread.i, %bb.mg
  %.pn16.ph.i = phi { ptr, i32 } [ %.pn14117.i, %.body66.thread.i ], [ %i.zr, %bb.mg ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3501)
  %.val.i2 = load ptr, ptr %i.br, align 8, !alias.scope !3501, !noundef !12 ; 6 uses
  %.not.i.i = icmp eq ptr %.val.i2, null
  br i1 %.not.i.i, label %.body37.i, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.aah = getelementptr inbounds nuw i8, ptr %.val.i2, i64 48
  %i.aai = invoke noundef i64 @_ZN5tokio4sync7oneshot5State12set_complete17hd7c1ac113075f48fE(ptr noundef nonnull align 8 %i.aah)
          to label %.noexc.i unwind label %bb.mr, !noalias !3501

.noexc.i:                                         ; preds = %bb.mp
  %i.aaj = and i64 %i.aai, 5
  %or.cond.not.i.i.i = icmp eq i64 %i.aaj, 1
  br i1 %or.cond.not.i.i.i, label %bb.mq, label %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i"

bb.mq:                                            ; preds = %.noexc.i
  %i.aak = getelementptr inbounds nuw i8, ptr %.val.i2, i64 32
  %i.aal = load ptr, ptr %i.aak, align 8, !noalias !3501, !nonnull !12, !align !13, !noundef !12
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aan = load ptr, ptr %i.aam, align 8, !noalias !3501, !nonnull !12, !noundef !12
  %i.aao = getelementptr inbounds nuw i8, ptr %.val.i2, i64 40
  %i.aap = load ptr, ptr %i.aao, align 8, !noalias !3501, !noundef !12
  invoke void %i.aan(ptr noundef %i.aap)
          to label %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i" unwind label %bb.mr, !noalias !3501, !inline_history !0

bb.mr:                                            ; preds = %bb.mp, %bb.mq
  %i.aaq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.aar = atomicrmw add ptr %.val.i2, i64 -1 release, align 8, !noalias !3502
  %i.aas = icmp eq i64 %i.aar, 1
  br i1 %i.aas, label %bb.ms, label %.body

bb.ms:                                            ; preds = %bb.mr
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd1d4e4546c42d21aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %.body unwind label %bb.mu

"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i": ; preds = %bb.mq, %.noexc.i
  %i.aat = atomicrmw add ptr %.val.i2, i64 -1 release, align 8, !noalias !3503
  %i.aau = icmp eq i64 %i.aat, 1
  br i1 %i.aau, label %bb.mt, label %.body37.i

bb.mt:                                            ; preds = %"_ZN79_$LT$tokio..sync..oneshot..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haeb932975200a7dcE.exit.thread.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd1d4e4546c42d21aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %.body37.i unwind label %bb.lu

bb.mu:                                            ; preds = %bb.ms
  %i.aav = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit": ; preds = %bb.h, %bb.f, %bb.g, %bb.i
  br i1 %.sroa.05.0.i, label %bb.mv, label %"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit"

"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit": ; preds = %bb.my, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6c33fef59afafe5E.exit.i", %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit"
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.aaw, align 8, !range !39, !alias.scope !3282, !noundef !12
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val28.i = load ptr, ptr %i.aax, align 8, !alias.scope !3282
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$std..sync..mpsc..SyncSender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h14e8596d1877b5ffE"(i64 %.val.i, ptr %.val28.i) #36
          to label %bb.mz unwind label %bb.lu

bb.mv:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit"
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3504)
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i1 = load ptr, ptr %i.aaz, align 8, !alias.scope !3504, !nonnull !12, !noundef !12 ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.aba, align 8, !alias.scope !3504, !noundef !12
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$u5d$$GT$17hd8fe2da27ab1387fE"(ptr noalias noundef nonnull readonly align 8 %.val.i1, i64 noundef %.val1.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6c33fef59afafe5E.exit.i" unwind label %bb.mw, !noalias !3504

bb.mw:                                            ; preds = %bb.mv
  %i.abb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val4.i = load i64, ptr %i.aay, align 8, !range !24, !alias.scope !3504, !noundef !12 ; 2 uses
  %i.abc = icmp eq i64 %.val4.i, 0
  br i1 %i.abc, label %.body, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.abd = shl nuw i64 %.val4.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef %i.abd, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !3504
  br label %.body

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6c33fef59afafe5E.exit.i": ; preds = %bb.mv
  %.val2.i = load i64, ptr %i.aay, align 8, !range !24, !alias.scope !3504, !noundef !12 ; 2 uses
  %i.abe = icmp eq i64 %.val2.i, 0
  br i1 %i.abe, label %"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit", label %bb.my

bb.my:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6c33fef59afafe5E.exit.i"
  %i.abf = shl nuw i64 %.val2.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef %i.abf, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !3504
  br label %"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit"

bb.mz:                                            ; preds = %"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit"
  br i1 %cond.i.a, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit.i", label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Conn$GT$$GT$17he1e1be6b3bd06677E"(ptr noalias noundef align 8 dereferenceable(8) %i.abg) #36
          to label %bb.nb unwind label %bb.lu

bb.nb:                                            ; preds = %bb.na
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias noundef align 8 dereferenceable(8) %i.abh) #36
          to label %bb.nc unwind label %bb.lu

bb.nc:                                            ; preds = %bb.nb
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3505)
  call void @llvm.experimental.noalias.scope.decl(metadata !3506)
  call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  %i.abj = load ptr, ptr %i.abi, align 8, !alias.scope !3508, !nonnull !12, !noundef !12
  %i.abk = atomicrmw add ptr %i.abj, i64 -1 release, align 8, !noalias !3509
  %i.abl = icmp eq i64 %i.abk, 1
  br i1 %i.abl, label %bb.nd, label %.noexc83.i

bb.nd:                                            ; preds = %bb.nc
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.abi)
          to label %.noexc83.i unwind label %bb.lu

.noexc83.i:                                       ; preds = %bb.nd, %bb.nc
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3510)
  call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  call void @llvm.experimental.noalias.scope.decl(metadata !3512)
  %i.abn = load ptr, ptr %i.abm, align 8, !alias.scope !3513, !nonnull !12, !noundef !12
  %i.abo = atomicrmw add ptr %i.abn, i64 -1 release, align 8, !noalias !3514
  %i.abp = icmp eq i64 %i.abo, 1
  br i1 %i.abp, label %bb.ne, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit.i"

bb.ne:                                            ; preds = %.noexc83.i
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0540fea244bce1c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.abm)
  br label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit.i"

"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$17h42a57b4073f8aaa7E.exit": ; preds = %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit.i", %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !50
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hd1c418e806a17b46E(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_ZN3std6thread9spawnhook15ChildSpawnHooks3run17h1ae0a54de4e945fcE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !3517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3517
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !50
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17he4b50ab3746223baE(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(160) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3638)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.u = load ptr, ptr %0, align 16, !alias.scope !3638, !nonnull !12, !align !13, !noundef !12 ; 13 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3638, !noundef !12 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3641
  invoke void @_ZN3mio5event6events6Events13with_capacity17hb4dd15674c428ed1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, i64 noundef 256)
          to label %.noexc.i unwind label %bb.dd, !noalias !3638

.noexc.i:                                         ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.8.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 8 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.w, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i
  %i.aj = icmp eq i64 %i.w, 0                     ; 6 uses
  %i.ak = shl nuw i64 %i.w, 3                     ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.an = icmp ult i64 %i.w, 4
  %unroll_iter = and i64 %i.w, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod560 = icmp ne i64 %xtraiter, 0
  %.idx = shl nuw nsw i64 %i.w, 3
  %.not.i.i66.i.i445 = icmp eq i64 %i.w, 0
  br label %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i

_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i: ; preds = %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i.backedge, %.noexc.i
  %i.ao = load i64, ptr %i.y, align 16, !alias.scope !3642
  %i.ap = load i32, ptr %i.z, align 8, !range !28, !alias.scope !3642, !noundef !12
  %i.aq = invoke noundef ptr @_ZN3mio4poll4Poll4poll17h200e78b34f7beb3bE(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, i64 %i.ao, i32 noundef %i.ap)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cf, %bb.bo, %bb.ae, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i70.i.i, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.aw, %bb.f ], [ %i.do, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i70.i.i ], [ %i.hu, %bb.bo ], [ %i.jl, %bb.cf ], [ %lpad.loopexit.split-lp468, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp455, %.loopexit.split-lp99.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.do, %bb.ae ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val39.i.i = load i64, ptr %i.s, align 8, !noalias !3641 ; 2 uses
  %i.ar = icmp eq i64 %.val39.i.i, 0
  br i1 %i.ar, label %.body.i, label %bb.b

bb.b:                                             ; preds = %.body.i.i
  %.val40.i.i = load ptr, ptr %i.ab, align 8, !noalias !3641, !nonnull !12, !noundef !12
  %i.as = mul nuw i64 %.val39.i.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ak, %"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit.sink.split.i.i.i", %bb.bu, %bb.cj, %bb.t, %._crit_edge.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i, %bb.bq, %bb.x, %bb.y, %.noexc25.i.i.i, %bb.aq, %.noexc29.i.i.i, %bb.au, %.noexc33.i.i.i, %bb.ay, %._crit_edge.i.i.i.us.i.i.i.i, %bb.l, %bb.g, %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i, %bb.cy, %bb.cw, %bb.cv, %bb.ct, %.noexc62.i.i, %bb.cs, %bb.cq, %.thread76.i.i, %bb.cn, %bb.bm, %.noexc40.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.c:                                             ; preds = %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3641
  store ptr %i.aq, ptr %i.r, align 8, !noalias !3641
  %i.at = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %i.aq)
  %i.au = icmp eq i8 %i.at, 35
  br i1 %i.au, label %bb.g, label %bb.h, !prof !23

bb.e:                                             ; preds = %bb.i, %bb.c
  %i.av = load i64, ptr %i.aa, align 8, !noalias !3641, !noundef !12
  %.not81216.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not81216.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #36
          to label %.body.i.i unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3641
  store ptr %i.r, ptr %i.p, align 8, !noalias !3641
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !3641
  store ptr @72, ptr %i.q, align 8, !noalias !3641
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.ax, align 8, !noalias !3641
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ay, align 8, !noalias !3641
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.p, ptr %i.az, align 8, !noalias !3641
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %i.ba, align 8, !noalias !3641
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #35
          to label %bb.j unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3641
  br label %bb.e

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable
end_hunk_3
begin_hunk_4_@"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17hc0f95525fff41f66E":bb.a
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i, %.lr.ph.i17.i.i.preheader.new
  %niter211 = phi i32 [ 0, %.lr.ph.i17.i.i.preheader.new ], [ %niter211.next.7, %.lr.ph.i17.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !3831
  call void @llvm.x86.sse2.pause() #24, !noalias !3831
  call void @llvm.x86.sse2.pause() #24, !noalias !3831
  call void @llvm.x86.sse2.pause() #24, !noalias !3831
  call void @llvm.x86.sse2.pause() #24, !noalias !3831
  call void @llvm.x86.sse2.pause() #24, !noalias !3831
  call void @llvm.x86.sse2.pause() #24, !noalias !3831
  call void @llvm.x86.sse2.pause() #24, !noalias !3831
  %niter211.next.7 = add i32 %niter211, 8         ; 2 uses
  %niter211.ncmp.7 = icmp eq i32 %niter211.next.7, %unroll_iter210
  br i1 %niter211.ncmp.7, label %._crit_edge.loopexit.i20.i.i.unr-lcssa, label %.lr.ph.i17.i.i

.body.thread27.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h181f74496d1ed537E.exit.i.i", %bb.ab, %bb.w, %bb.r, %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i, %bb.p
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h528a032f03e85757E.exit.i": ; preds = %bb.i
  %i.cd = load i32, ptr %i.y, align 8, !range !28, !noundef !12 ; 2 uses
  %.not.i = icmp eq i32 %i.cd, 1000000000
  br i1 %.not.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  store ptr %i.ax, ptr %i.v, align 8, !alias.scope !3831
  %i.ce = add i64 %.sroa.01.033.i.i, 1            ; 2 uses
  store i64 %i.ce, ptr %i.z, align 8, !alias.scope !3831
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %0, ptr %i.cf, align 8
  store atomic i64 %i.ce, ptr %i.ax release, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.cg)
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit"

bb.p:                                             ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h528a032f03e85757E.exit.i"
  %i.ch = load i64, ptr %i.w, align 8, !noundef !12 ; 2 uses
  %i.ci = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %bb.ae unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.af, %.split.i, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h528a032f03e85757E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3832
  store ptr %i.v, ptr %i.u, align 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr %i.w, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.cj = load i8, ptr %i.al, align 8, !range !41, !noalias !3833, !noundef !12
  %i.ck = icmp eq i8 %i.cj, 1
  br i1 %i.ck, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i, !prof !23

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i: ; preds = %bb.q
  %i.cl = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hdedf86108203ab65E"(ptr noundef nonnull align 8 %i.ak, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc15.i unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc15.i:                                       ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h181f74496d1ed537E.exit.i.i", label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i: ; preds = %.noexc15.i, %bb.q
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.cl, %.noexc15.i ], [ %i.ak, %bb.q ] ; 4 uses
  %i.cn = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3832, !noundef !12 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3832
  %.not.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.y, !prof !18

bb.r:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3832
  %i.co = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE()
          to label %bb.s unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %bb.r
  store ptr %i.co, ptr %i.t, align 8, !noalias !3832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3832
  store ptr %i.v, ptr %i.r, align 8, !noalias !3832
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store ptr %i.w, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h7add430b9b0e0e92E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr nonnull %i.co)
          to label %bb.v unwind label %bb.t, !noalias !3832

bb.t:                                             ; preds = %bb.s
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3834)
  call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  call void @llvm.experimental.noalias.scope.decl(metadata !3836)
  %i.cq = load ptr, ptr %i.t, align 8, !alias.scope !3837, !noalias !3832, !nonnull !12, !noundef !12
  %i.cr = atomicrmw add ptr %i.cq, i64 -1 release, align 8, !noalias !3838
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.u, label %.body.thread.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %.body.thread.i unwind label %bb.x, !noalias !3832

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3832
  call void @llvm.experimental.noalias.scope.decl(metadata !3839)
  call void @llvm.experimental.noalias.scope.decl(metadata !3840)
  call void @llvm.experimental.noalias.scope.decl(metadata !3841)
  %i.ct = load ptr, ptr %i.t, align 8, !alias.scope !3842, !noalias !3832, !nonnull !12, !noundef !12
  %i.cu = atomicrmw add ptr %i.ct, i64 -1 release, align 8, !noalias !3843
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.w, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i"

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i" unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i": ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3832
  br label %bb.ag

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3832
  unreachable

bb.y:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3832
  store ptr %i.cn, ptr %i.s, align 8, !noalias !3832
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store atomic i64 0, ptr %i.cx release, align 8, !noalias !3832
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store atomic ptr null, ptr %i.cy release, align 8, !noalias !3832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3832
  store ptr %i.v, ptr %i.q, align 8, !noalias !3832
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8
  store ptr %i.w, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h7add430b9b0e0e92E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr nonnull %i.cn)
          to label %bb.z unwind label %bb.ac, !noalias !3832

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3832
  %i.cz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3832, !noundef !12 ; 3 uses
  store ptr %i.cz, ptr %i.p, align 8, !noalias !3832
  store ptr %i.cn, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3832
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = atomicrmw add ptr %i.cz, i64 -1 release, align 8, !noalias !3844
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.ab, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i" unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i": ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3832
  br label %bb.ag

bb.ac:                                            ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = atomicrmw add ptr %i.cn, i64 -1 release, align 8, !noalias !3845
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ad, label %.body.thread.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.body.thread.i unwind label %bb.x, !noalias !3832

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h181f74496d1ed537E.exit.i.i": ; preds = %.noexc15.i
  invoke fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h6aed0fd83d6f99c0E"(ptr nonnull %i.u)
          to label %bb.ag unwind label %.body.thread27.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.p
  %i.dg = extractvalue { i64, i32 } %i.ci, 0      ; 2 uses
  %i.dh = icmp eq i64 %i.dg, %i.ch
  br i1 %i.dh, label %.split.i, label %bb.af

.split.i:                                         ; preds = %bb.ae
  %i.di = extractvalue { i64, i32 } %i.ci, 1      ; 2 uses
  %i.dj = icmp ult i32 %i.di, 1000000000
  call void @llvm.assume(i1 %i.dj)
  %.not36.i = icmp samesign ult i32 %i.di, %i.cd
  br i1 %.not36.i, label %bb.q, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit"

bb.af:                                            ; preds = %bb.ae
  %.not35.i = icmp slt i64 %i.dg, %i.ch
  br i1 %.not35.i, label %bb.q, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit"

bb.ag:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h181f74496d1ed537E.exit.i.i", %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i", %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3832
  %i.dk = load atomic i64, ptr %i.aa monotonic, align 16, !noalias !3846 ; 2 uses
  %i.dl = load i64, ptr %i.ab, align 16, !noalias !3846, !noundef !12 ; 2 uses
  %i.dm = and i64 %i.dl, %i.dk
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit"

common.resume:                                    ; preds = %bb.ds, %bb.dt, %.body.i, %.body.i.i, %bb.db, %.body.thread90.i, %bb.dn, %.body.thread.i11, %bb.bc, %.body.thread.i, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.jy, %bb.db ], [ %eh.lpad-body26.i, %.body.thread.i ], [ %eh.lpad-body16.i, %.body.thread.i11 ], [ %eh.lpad-body26.i, %bb.ah ], [ %eh.lpad-body16.i, %bb.bc ], [ %i.hz, %.body.i ], [ %.pn.pn93.i, %.body.thread90.i ], [ %.pn.pn93.i, %bb.dn ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ks, %bb.dt ], [ %i.ks, %bb.ds ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %.body.thread27.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.ac, %bb.u, %bb.t
  %eh.lpad-body26.i = phi { ptr, i32 } [ %i.dd, %bb.ad ], [ %i.cp, %bb.t ], [ %i.dd, %bb.ac ], [ %i.cp, %bb.u ], [ %lpad.loopexit.split-lp153, %.body.thread27.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.do = icmp eq ptr %0, null
  br i1 %i.do, label %common.resume, label %bb.ah

bb.ah:                                            ; preds = %.body.thread.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.x)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit": ; preds = %.split.i, %bb.af, %bb.ag, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i, %bb.b, %bb.o
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 2, %bb.o ], [ 1, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i ], [ 0, %.split.i ], [ 0, %bb.af ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.do

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %0, ptr %i.o, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 5 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8, !noalias !3847 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 5 uses
  %i.dt = load atomic ptr, ptr %i.ds acquire, align 8, !noalias !3847
  %i.du = and i64 %i.dr, 1
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph.lr.ph.i.i, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit"

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.aj
  %i.dw = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %.outer.backedge.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.01.0.ph89.i.i = phi i64 [ %i.dr, %.lr.ph.lr.ph.i.i ], [ %i.ew, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.05.0.ph88.i.i = phi ptr [ %i.dt, %.lr.ph.lr.ph.i.i ], [ %i.ex, %.outer.backedge.i.i ]
  %.sroa.0.0.ph87.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.sroa.0.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.043.0.ph86.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i ], [ %.sroa.043.0.ph.be.i.i, %.outer.backedge.i.i ] ; 4 uses
  %i.dx = lshr exact i64 %.sroa.01.0.ph89.i.i, 1
  %i.dy = and i64 %i.dx, 31                       ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 31
  br i1 %i.dz, label %.lr.ph.i, label %._crit_edge.i

bb.ak:                                            ; preds = %.loopexit.i.i
  %i.ea = add i32 %.sroa.0.082.i50.i, 1           ; 2 uses
  %i.eb = lshr exact i64 %i.fa, 1
  %i.ec = and i64 %i.eb, 31                       ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 31
  br i1 %i.ed, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ak, %.lr.ph.i.i7
  %.sroa.01.084.i.lcssa.i = phi i64 [ %.sroa.01.0.ph89.i.i, %.lr.ph.i.i7 ], [ %i.fa, %bb.ak ] ; 2 uses
  %.sroa.05.083.i.lcssa.i = phi ptr [ %.sroa.05.0.ph88.i.i, %.lr.ph.i.i7 ], [ %i.fb, %bb.ak ] ; 2 uses
  %.sroa.0.082.i.lcssa.i = phi i32 [ %.sroa.0.0.ph87.i.i, %.lr.ph.i.i7 ], [ %i.ea, %bb.ak ] ; 6 uses
  %.lcssa.i = phi i64 [ %i.dy, %.lr.ph.i.i7 ], [ %i.ec, %bb.ak ] ; 2 uses
  %.not64.i.i = icmp eq i64 %.lcssa.i, 30         ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.043.0.ph86.i.i, null
  %or.cond.i.i = select i1 %.not64.i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.an, label %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i"

.lr.ph.i:                                         ; preds = %.lr.ph.i.i7, %bb.ak
  %.sroa.0.082.i50.i = phi i32 [ %i.ea, %bb.ak ], [ %.sroa.0.0.ph87.i.i, %.lr.ph.i.i7 ] ; 6 uses
  %i.ee = icmp ult i32 %.sroa.0.082.i50.i, 7
  br i1 %i.ee, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %.loopexit.i.i unwind label %.loopexit65.i.i, !noalias !3847

bb.am:                                            ; preds = %.lr.ph.i
  %.not.i.i.i13 = icmp eq i32 %.sroa.0.082.i50.i, 0
  br i1 %.not.i.i.i13, label %.loopexit.i.i, label %.lr.ph.i.i.i14.preheader

.lr.ph.i.i.i14.preheader:                         ; preds = %bb.am
  %i.ef = mul nuw i32 %.sroa.0.082.i50.i, %.sroa.0.082.i50.i ; 2 uses
  %xtraiter = and i32 %i.ef, 7                    ; 3 uses
  %i.eg = icmp ult i32 %.sroa.0.082.i50.i, 3
  br i1 %i.eg, label %.lr.ph.i.i.i14.epil.preheader, label %.lr.ph.i.i.i14.preheader.new

.lr.ph.i.i.i14.preheader.new:                     ; preds = %.lr.ph.i.i.i14.preheader
  %unroll_iter = and i32 %i.ef, 56
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph.i.i.i14, %.lr.ph.i.i.i14.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i14.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i14 ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14

"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i": ; preds = %bb.an, %._crit_edge.i
  %.sroa.043.1.i.i = phi ptr [ %.sroa.043.0.ph86.i.i, %._crit_edge.i ], [ %i.ei, %bb.an ] ; 9 uses
  %i.eh = icmp eq ptr %.sroa.05.083.i.lcssa.i, null
  br i1 %i.eh, label %bb.ao, label %bb.au

bb.an:                                            ; preds = %._crit_edge.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3847
  %i.ei = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef 8) #24, !noalias !3847 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.noexc24.i.i, label %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i", !prof !18

.noexc24.i.i:                                     ; preds = %bb.an
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 504) #35
          to label %.noexc.i unwind label %.body.thread18.i

.noexc.i:                                         ; preds = %.noexc24.i.i
  unreachable

bb.ao:                                            ; preds = %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3847
  %i.ek = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef 8) #24, !noalias !3847 ; 6 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ap, label %bb.aq, !prof !18

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 504) #35
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.i.i, !noalias !3847

.noexc25.i.i:                                     ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.em = cmpxchg ptr %i.ds, ptr null, ptr %i.ek release monotonic, align 8, !noalias !3847
  %i.en = extractvalue { ptr, i1 } %i.em, 1
  br i1 %i.en, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store atomic ptr %i.ek, ptr %i.dw release, align 8, !noalias !3847
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.eo = icmp eq ptr %.sroa.043.1.i.i, null
  br i1 %i.eo, label %.outer.backedge.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.1.i.i, i64 noundef 504, i64 noundef 8) #24, !noalias !3847
  br label %.outer.backedge.i.i

bb.au:                                            ; preds = %bb.ar, %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i"
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.083.i.lcssa.i, %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i" ], [ %i.ek, %bb.ar ] ; 3 uses
  %i.ep = add i64 %.sroa.01.084.i.lcssa.i, 2
  %i.eq = cmpxchg weak ptr %i.dq, i64 %.sroa.01.084.i.lcssa.i, i64 %i.ep seq_cst acquire, align 8, !noalias !3847
  %.sroa.18.0.in.i.i.i8 = extractvalue { i64, i1 } %i.eq, 1
  br i1 %.sroa.18.0.in.i.i.i8, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0.0.i.i.i.i9 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.082.i.lcssa.i, i32 6) ; 2 uses
  %i.er = mul nuw nsw i32 %.sroa.0.0.i.i.i.i9, %.sroa.0.0.i.i.i.i9 ; 2 uses
  %.not.i30.i.i = icmp eq i32 %.sroa.0.082.i.lcssa.i, 0
  br i1 %.not.i30.i.i, label %.outer.backedge.i.i, label %.lr.ph.i31.i.i.preheader

.lr.ph.i31.i.i.preheader:                         ; preds = %bb.av
  %xtraiter188 = and i32 %i.er, 5                 ; 3 uses
  %i.es = icmp ult i32 %.sroa.0.082.i.lcssa.i, 3
  br i1 %i.es, label %.lr.ph.i31.i.i.epil.preheader, label %.lr.ph.i31.i.i.preheader.new

.lr.ph.i31.i.i.preheader.new:                     ; preds = %.lr.ph.i31.i.i.preheader
  %unroll_iter192 = and i32 %i.er, 56
  br label %.lr.ph.i31.i.i

._crit_edge.loopexit.i.i.i10.unr-lcssa:           ; preds = %.lr.ph.i31.i.i
  %lcmp.mod190.not = icmp eq i32 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %._crit_edge.loopexit.i.i.i10, label %.lr.ph.i31.i.i.epil.preheader

.lr.ph.i31.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i10.unr-lcssa, %.lr.ph.i31.i.i.preheader
  %lcmp.mod191 = icmp ne i32 %xtraiter188, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %.lr.ph.i31.i.i.epil

.lr.ph.i31.i.i.epil:                              ; preds = %.lr.ph.i31.i.i.epil, %.lr.ph.i31.i.i.epil.preheader
  %epil.iter189 = phi i32 [ 0, %.lr.ph.i31.i.i.epil.preheader ], [ %epil.iter189.next, %.lr.ph.i31.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  %epil.iter189.next = add i32 %epil.iter189, 1   ; 2 uses
  %epil.iter189.cmp.not = icmp eq i32 %epil.iter189.next, %xtraiter188
  br i1 %epil.iter189.cmp.not, label %._crit_edge.loopexit.i.i.i10, label %.lr.ph.i31.i.i.epil, !llvm.loop !3755

._crit_edge.loopexit.i.i.i10:                     ; preds = %.lr.ph.i31.i.i.epil, %._crit_edge.loopexit.i.i.i10.unr-lcssa
  %i.et = add i32 %.sroa.0.082.i.lcssa.i, 1
  br label %.outer.backedge.i.i

.lr.ph.i31.i.i:                                   ; preds = %.lr.ph.i31.i.i, %.lr.ph.i31.i.i.preheader.new
  %niter193 = phi i32 [ 0, %.lr.ph.i31.i.i.preheader.new ], [ %niter193.next.7, %.lr.ph.i31.i.i ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3847
end_hunk_4
begin_hunk_5_@"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17hc0f95525fff41f66E":bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store atomic i64 0, ptr %i.jb release, align 8, !noalias !3868
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  store atomic ptr null, ptr %i.jc release, align 8, !noalias !3868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3868
  store i8 2, ptr %.sroa.1071.0..sroa_idx.i, align 8, !noalias !3868
  store ptr %0, ptr %i.c, align 8
  %.sroa.651.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %.sroa.651.0..sroa_idx52.i, align 8
  %.sroa.756.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.m, ptr %.sroa.756.0..sroa_idx57.i, align 8
  %.sroa.861.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.8.val, ptr %.sroa.861.0..sroa_idx62.i, align 8
  %.sroa.966.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.8.val, ptr %.sroa.966.0..sroa_idx67.i, align 8
  %.sroa.412.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 %.sroa.01.0.i.i.i, ptr %.sroa.412.0..sroa_idx13.i.i.i.i, align 8, !noalias !3868
  %i.jd = invoke fastcc { i64, ptr } @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h6022f70b95152c90E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c, ptr nonnull %i.is)
          to label %bb.cp unwind label %bb.cu, !noalias !3868 ; 3 uses

bb.cp:                                            ; preds = %bb.co
  %i.je = extractvalue { i64, ptr } %i.jd, 0      ; 3 uses
  %i.jf = extractvalue { i64, ptr } %i.jd, 1      ; 2 uses
  store i64 %i.je, ptr %i.e, align 8, !noalias !3868
  %i.jg = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.jf, ptr %i.jg, align 8, !noalias !3868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3868
  %i.jh = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i24, align 8, !noalias !3868, !noundef !12 ; 3 uses
  store ptr %i.jh, ptr %i.b, align 8, !noalias !3868
  store ptr %i.is, ptr %.sroa.0.0.i.i.i2.i.i.i24, align 8, !noalias !3868
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i25", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jj = atomicrmw add ptr %i.jh, i64 -1 release, align 8, !noalias !3872
  %i.jk = icmp eq i64 %i.jj, 1
  br i1 %i.jk, label %bb.cr, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i25"

bb.cr:                                            ; preds = %bb.cq
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i25" unwind label %bb.cs, !noalias !3868

bb.cs:                                            ; preds = %bb.cr
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = icmp eq i64 %i.je, 2
  %i.jn = icmp eq ptr %i.jf, null
  %or.cond.i.i.i.i = select i1 %i.jm, i1 true, i1 %i.jn
  br i1 %or.cond.i.i.i.i, label %.body.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.jg)
          to label %.body.i.i unwind label %bb.cn, !noalias !3868

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i25": ; preds = %bb.cr, %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3868
  br label %bb.cx

bb.cu:                                            ; preds = %bb.co
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = atomicrmw add ptr %i.is, i64 -1 release, align 8, !noalias !3873
  %i.jq = icmp eq i64 %i.jp, 1
  br i1 %i.jq, label %bb.cv, label %.body.i.i

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i.i unwind label %bb.cn, !noalias !3868

bb.cw:                                            ; preds = %.thread.i.i, %bb.cm, %bb.ch, %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i22
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.ck, %bb.cj
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.jr, %bb.cw ], [ %i.jl, %bb.ct ], [ %i.iv, %bb.cj ], [ %i.iv, %bb.ck ], [ %i.jl, %bb.cs ], [ %i.jo, %bb.cu ], [ %i.jo, %bb.cv ]
  invoke fastcc void @"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..zero..Channel$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$..send..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf6670afc2619b3f3E"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #36
          to label %common.resume unwind label %bb.dg, !noalias !3868

bb.cx:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i25", %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit26.i.i.i.i"
  %.sroa.0.0.i.i.i = phi i64 [ %i.je, %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i25" ], [ %.pre.i.i.i, %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit26.i.i.i.i" ] ; 2 uses
  %.merged.i.i = phi { i64, ptr } [ %i.jd, %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i25" ], [ %i.iu, %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit26.i.i.i.i" ]
  %i.js = icmp eq i64 %.sroa.0.0.i.i.i, 3
  br i1 %i.js, label %.thread.i.i, label %bb.dl

.thread.i.i:                                      ; preds = %bb.cx, %.noexc.i.i
  %i.jt = invoke fastcc { i64, ptr } @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h9e6a39b394615d5aE"(ptr nonnull %i.h)
          to label %bb.cy unwind label %bb.cw, !noalias !3868 ; 4 uses

bb.cy:                                            ; preds = %.thread.i.i
  %i.ju = extractvalue { i64, ptr } %i.jt, 0      ; 3 uses
  %.pre.i.i = load i8, ptr %.sroa.1071.0..sroa_idx.i, align 8, !range !41, !alias.scope !3874, !noalias !3868 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3874)
  %i.jv = icmp eq i8 %.pre.i.i, 2
  br i1 %i.jv, label %bb.dl, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !3875)
  %i.jw = load ptr, ptr %i.h, align 8, !alias.scope !3876, !noalias !3868, !noundef !12
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i", label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.h)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i" unwind label %bb.db, !noalias !3868

bb.db:                                            ; preds = %bb.da
  %i.jy = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i25.i = load ptr, ptr %.sroa.966.0..sroa_idx.i, align 8, !alias.scope !3877, !noalias !3868, !nonnull !12, !align !13, !noundef !12
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %.val2.i.i.i25.i, i8 %.pre.i.i) #36
          to label %common.resume unwind label %bb.df, !noalias !3878

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i": ; preds = %bb.da, %bb.cz
  %.val.i.i.i.i = load ptr, ptr %.sroa.966.0..sroa_idx.i, align 8, !alias.scope !3877, !noalias !3868, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 4
  %i.ka = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.ka, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i"
  %i.kb = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3878
  %i.kc = and i64 %i.kb, 9223372036854775807
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i, label %.noexc26.i, !prof !23

.noexc26.i:                                       ; preds = %bb.dc
  %i.ke = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.ke, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %.noexc26.i
  store atomic i8 1, ptr %i.jz monotonic, align 4, !noalias !3878
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i: ; preds = %bb.dd, %.noexc26.i, %bb.dc, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i.i.i.i"
  %i.kf = atomicrmw xchg ptr %.val.i.i.i.i, i32 0 release, align 4, !noalias !3878
  %i.kg = icmp eq i32 %i.kf, 2
  br i1 %i.kg, label %bb.de, label %bb.dl, !prof !18

bb.de:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.val.i.i.i.i)
  br label %bb.dl

bb.df:                                            ; preds = %bb.db
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3878
  unreachable

bb.dg:                                            ; preds = %.body.i.i
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3868
  unreachable

bb.dh:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i
  br i1 %i.gd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kj = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.kk = and i64 %i.kj, 9223372036854775807
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i, label %.noexc31.i, !prof !23

.noexc31.i:                                       ; preds = %bb.di
  %i.km = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.km, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i, label %bb.dj

bb.dj:                                            ; preds = %.noexc31.i
  store atomic i8 1, ptr %i.fy monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i: ; preds = %bb.dj, %.noexc31.i, %bb.di, %bb.dh
  %i.kn = atomicrmw xchg ptr %.8.val, i32 0 release, align 4
  %i.ko = icmp eq i32 %i.kn, 2
  br i1 %i.ko, label %bb.dk, label %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit", !prof !18

bb.dk:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %.8.val)
  br label %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit"

bb.dl:                                            ; preds = %bb.de, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i, %bb.cy, %bb.cx
  %.sroa.0.017.i.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.cx ], [ %i.ju, %bb.cy ], [ %i.ju, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i ], [ %i.ju, %bb.de ]
  %.pn16.i.i = phi { i64, ptr } [ %.merged.i.i, %bb.cx ], [ %i.jt, %bb.cy ], [ %i.jt, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i ], [ %i.jt, %bb.de ]
  %.sroa.3.0.i.i = extractvalue { i64, ptr } %.pn16.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3868
  br label %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit"

bb.dm:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull align 8 %.8.val, i8 %.sroa.01.0.i.i.i) #36
          to label %.body.thread90.i unwind label %bb.cf

.body.thread90.i:                                 ; preds = %bb.dm, %bb.bj, %.split.thread.i, %.body.i
  %.pn.pn93.i = phi { ptr, i32 } [ %i.hz, %.body.i ], [ %i.gb, %bb.bj ], [ %lpad.thr_comm.split-lp.i, %bb.dm ], [ %lpad.thr_comm.i17, %.split.thread.i ] ; 2 uses
  %i.kp = icmp eq ptr %0, null
  br i1 %i.kp, label %common.resume, label %bb.dn

bb.dn:                                            ; preds = %.body.thread90.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %common.resume unwind label %bb.cf

"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit": ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit22.i", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i, %bb.dk, %bb.dl
  %.sroa.0.0.pn.i = phi i64 [ %.sroa.0.017.i.i, %bb.dl ], [ 2, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit22.i" ], [ 1, %bb.dk ], [ 1, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i ]
  %.pn95.i = phi ptr [ %.sroa.3.0.i.i, %bb.dl ], [ %0, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit22.i" ], [ %0, %bb.dk ], [ %0, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i30.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.do

bb.do:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit", %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit", %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit"
  %.sroa.0.0.i.i.pn = phi i64 [ %.sroa.0.0.i.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit" ], [ %.sroa.0.0.i, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit" ], [ %.sroa.0.0.pn.i, %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit" ] ; 3 uses
  %.pn2 = phi ptr [ %0, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit" ], [ %0, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit" ], [ %.pn95.i, %"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send17ha2c47bd9dd794b9bE.exit" ] ; 3 uses
  %.not = icmp eq i64 %.sroa.0.0.i.i.pn, 2
  br i1 %.not, label %bb.dv, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.i.i.pn, ptr %i.a, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.pn2, ptr %i.kq, align 8
  %i.kr = trunc nuw i64 %.sroa.0.0.i.i.pn to i1
  br i1 %i.kr, label %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hb145448e40253f68E.exit", label %bb.dq, !prof !23

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #35
          to label %bb.dr unwind label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kt = icmp eq ptr %.pn2, null
  br i1 %i.kt, label %common.resume, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.kq)
          to label %common.resume unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hb145448e40253f68E.exit": ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.dv

bb.dv:                                            ; preds = %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hb145448e40253f68E.exit", %bb.do
  %.sroa.3.0 = phi ptr [ undef, %bb.do ], [ %.pn2, %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hb145448e40253f68E.exit" ]
  %.sroa.0.0 = phi i64 [ 0, %bb.do ], [ 1, %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hb145448e40253f68E.exit" ]
  %i.kv = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.kw = insertvalue { i64, ptr } %i.kv, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.kw
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17heb7b0ef73999bf94E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !51, !noundef !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker8register17h43fb2b28512ccbdbE(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val)
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %.unshifted.i = xor i64 %i.j, %i.h
  %i.k = icmp ult i64 %.unshifted.i, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.m = cmpxchg ptr %i.l, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr %i.i seq_cst, align 128
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !28, !noundef !12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 1000000000
  %i.w = icmp samesign ult i32 %i.u, 1000000000
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %bb.d, %bb.e
  %i.y = load atomic i64, ptr %i.v acquire, align 8
  switch i64 %i.y, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.e
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.e:                                             ; preds = %.split9.us.i
  tail call void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
  br label %.split9.us.i

.split9.i:                                        ; preds = %bb.d, %bb.i
  %i.z = load atomic i64, ptr %i.v acquire, align 8
  switch i64 %i.z, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.f
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ]

bb.f:                                             ; preds = %.split9.i
  %i.aa = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.ab = extractvalue { i64, i32 } %i.aa, 0      ; 3 uses
  %i.ac = extractvalue { i64, i32 } %i.aa, 1      ; 3 uses
  %i.ad = icmp eq i64 %i.ab, %i.s
  br i1 %i.ad, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.ae = icmp ult i32 %i.ac, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.w)
  %i.af = icmp samesign ult i32 %i.ac, %i.u
  br i1 %i.af, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp slt i64 %i.ab, %i.s
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.i
  %i.ah = cmpxchg ptr %i.v, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ah, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit

bb.i:                                             ; preds = %bb.g, %.split.i
  %i.ai = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.s, i32 noundef range(i32 0, 1000000001) %i.u, i64 noundef %i.ab, i32 noundef %i.ac) ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 0
  %i.ak = extractvalue { i64, i32 } %i.ai, 1
  tail call void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, i64 noundef %i.aj, i32 noundef %i.ak)
  br label %.split9.i

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit: ; preds = %bb.h
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.ah, 0
  switch i64 %.sroa.01.0.i.i.i, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4 [
    i64 0, label %bb.j
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  ], !prof !52

bb.j:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #35
  unreachable

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread: ; preds = %.split9.i, %.split9.i, %.split9.us.i, %.split9.us.i, %bb.h, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h5e5c5e8dfd220d35E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d)
  %i.al = load ptr, ptr %i.a, align 8, !noundef !12
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !18

_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4: ; preds = %.split9.i, %.split9.us.i, %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"
  ret void

bb.k:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3890)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !3891, !nonnull !12, !noundef !12
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !3891
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h5882a98672ad383fE.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN3std4sync4mpmc7context7Context10wait_until17h6bf4fdb07195cd57E.exit.thread4
end_hunk_5
