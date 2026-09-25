Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN15linked_hash_map30LinkedHashMap$LT$K$C$V$C$S$GT$6insert17h665fc2dedab7b176E":bb.a
bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.al, %bb.f ]
  %.pn.i.i = phi i64 [ %i.p, %bb.c ], [ %i.am, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.t      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !1039 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ak, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.t
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val3.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !1040, !noundef !17
  %i.af = tail call fastcc noundef zeroext i1 @"_ZN83_$LT$insta..content..yaml..vendored..yaml..Yaml$u20$as$u20$core..cmp..PartialEq$GT$2eq17hde8fc5f8e49ce21aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val3.i.i.i), !noalias !1040
  br i1 %i.af, label %bb.m, label %bb.e, !prof !23

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %select.unfold, !prof !22

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aj = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i, %i.al
  br label %bb.d

select.unfold:                                    ; preds = %._crit_edge.i.i, %"_ZN15linked_hash_map30LinkedHashMap$LT$K$C$V$C$S$GT$17ensure_guard_node17h391833786f7b5337E.exit"
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !noundef !17 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.k

bb.g:                                             ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !1041
  %i.as = tail call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !1041 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.h, label %bb.l, !prof !18

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 160) #54
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$linked_hash_map..Node$LT$insta..content..yaml..vendored..yaml..Yaml$C$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17hd8fd44fc47284387E"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.b) #55
          to label %.thread55 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.k:                                             ; preds = %select.unfold
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 144 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !17
  store ptr %i.ax, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.02, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %.sroa.02.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.02.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ao, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.02, i64 144, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02)
  br label %.thread39

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.as, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.thread39

.thread39:                                        ; preds = %bb.l, %bb.k
  %.sroa.09.0.ph = phi ptr [ %i.ao, %bb.k ], [ %i.as, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i21.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1042
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val8.i.pre = load i64, ptr %.phi.trans.insert68, align 8, !alias.scope !1042
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noundef !17 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72 ; 2 uses
  %.sroa.016.0.copyload = load i8, ptr %i.ba, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 73
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.2.0..sroa_idx, i64 71, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ba, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  %i.bb = load ptr, ptr %i.ay, align 8, !noundef !17 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not19 = icmp eq i8 %.sroa.016.0.copyload, 8
  br i1 %.not19, label %bb.n, label %.thread48

.thread48:                                        ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !17 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 152 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !noundef !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  store ptr %i.bd, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.be, align 8, !noundef !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 152
  store ptr %i.bh, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 144 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !17
  store ptr %i.bk, ptr %i.bc, align 8
  store ptr %i.j, ptr %i.be, align 8
  store ptr %i.bb, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.bc, align 8, !noundef !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  store ptr %i.bb, ptr %i.bm, align 8
  store i8 %.sroa.016.0.copyload, ptr %0, align 8
  %.sroa.8.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.8.0..sroa_idx66, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.8, i64 71, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.y

bb.n:                                             ; preds = %.thread39, %bb.m
  %.val8.i = phi i64 [ %.val8.i.pre, %.thread39 ], [ %.val5.i, %bb.m ]
  %.val.i21 = phi i64 [ %.val.i21.pre, %.thread39 ], [ %.val.i, %bb.m ]
  %.sroa.04.347 = phi i1 [ false, %.thread39 ], [ true, %bb.m ] ; 2 uses
  %.sroa.09.045 = phi ptr [ %.sroa.09.0.ph, %.thread39 ], [ %i.bb, %bb.m ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.09.045, ptr %i.a, align 8, !noalias !1042
  %i.bn = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4c2a74504d7d0c2bE(i64 %.val.i21, i64 %.val8.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !1042 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1043, !noalias !1044, !noundef !17
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcf19e018151582dfE.exit.i.i", !prof !22

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8324b711def37916E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.br, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcf19e018151582dfE.exit.i.i" unwind label %bb.z ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcf19e018151582dfE.exit.i.i": ; preds = %bb.o, %bb.n
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !1045, !noalias !1046, !nonnull !17, !noundef !17 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.i.i = load i64, ptr %i.bt, align 8, !alias.scope !1045, !noalias !1046, !noundef !17 ; 4 uses
  %i.bu = lshr i64 %i.bn, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.bv, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcf19e018151582dfE.exit.i.i"
  %.pn.i.i.i = phi i64 [ %i.bn, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcf19e018151582dfE.exit.i.i" ], [ %i.cu, %bb.s ]
  %.sroa.6.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcf19e018151582dfE.exit.i.i" ], [ %.sroa.6.120.i.i.i, %bb.s ]
  %.sroa.01.0.i.i.i22 = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcf19e018151582dfE.exit.i.i" ], [ %.sroa.01.122.i.i.i, %bb.s ]
  %i.bw = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcf19e018151582dfE.exit.i.i" ], [ %i.ct, %bb.s ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.bx, align 1, !noalias !1047 ; 3 uses
  %i.by = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not25.i.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not25.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %bb.q
  %.sroa.05.026.i.i.i = phi i16 [ %i.cj, %bb.q ], [ %i.bz, %bb.p ] ; 3 uses
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = add i64 %.sroa.0.017.i.i.i, %i.cb
  %i.cd = and i64 %i.cc, %.val7.i.i
  %i.ce = sub nsw i64 0, %i.cd                    ; 2 uses
  %i.cf = getelementptr inbounds [16 x i8], ptr %.val.i.i, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -16
  %.val3.i.i.i23 = load ptr, ptr %i.cg, align 8, !noalias !1048, !noundef !17
  %i.ch = tail call fastcc noundef zeroext i1 @"_ZN83_$LT$insta..content..yaml..vendored..yaml..Yaml$u20$as$u20$core..cmp..PartialEq$GT$2eq17hde8fc5f8e49ce21aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.09.045, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val3.i.i.i23), !noalias !1048
  br i1 %i.ch, label %.loopexit, label %bb.q, !prof !23

._crit_edge.i.i.i:                                ; preds = %bb.q, %bb.p
  %.not13.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i22, 0
  br i1 %.not13.i.i.i, label %bb.r, label %.thread.i.i.i, !prof !23

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ci = add i16 %.sroa.05.026.i.i.i, -1
  %i.cj = and i16 %i.ci, %.sroa.05.026.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.ck = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.cl, 0    ; 2 uses
  %i.cm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cl, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %.sroa.6.0.i.i.i.i = select i1 %.not.not.i.not.i.i.i, i64 undef, i64 %i.cn
  %i.co = add i64 %.sroa.6.0.i.i.i.i, %.sroa.0.017.i.i.i
  %i.cp = and i64 %i.co, %.val7.i.i
  br i1 %.not.not.i.not.i.i.i, label %bb.s, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.r, %._crit_edge.i.i.i
  %.sroa.6.121.i.i.i = phi i64 [ %i.cp, %bb.r ], [ %.sroa.6.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.s, label %bb.t, !prof !22

bb.s:                                             ; preds = %.thread.i.i.i, %bb.r
  %.sroa.01.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.r ]
  %.sroa.6.120.i.i.i = phi i64 [ %.sroa.6.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.r ]
  %i.ct = add i64 %i.bw, 16                       ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.017.i.i.i
  br label %bb.p

bb.t:                                             ; preds = %.thread.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.6.121.i.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !1049, !noundef !17 ; 2 uses
  %i.cx = icmp sgt i8 %i.cw, -1
  br i1 %i.cx, label %bb.u, label %bb.v, !prof !22

bb.u:                                             ; preds = %bb.t
  %.val62.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !1049
  %i.cy = icmp slt <16 x i8> %.val62.i.i.i.i, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %i.da = icmp ne i16 %i.cz, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cz, i1 true)
  %i.dc = zext nneg i16 %i.db to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dc
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !1050
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dd = phi i8 [ %.pre.i, %bb.u ], [ %i.cw, %bb.t ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.dc, %bb.u ], [ %.sroa.6.121.i.i.i, %bb.t ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.df = and i8 %i.dd, 1
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.di = and i64 %i.dh, %.val7.i.i
  store i8 %i.bv, ptr %i.de, align 1, !noalias !1050
  %i.dj = getelementptr i8, ptr %.val.i.i, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.bv, ptr %i.dk, align 1, !noalias !1050
  %i.dl = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !1051
  %i.dm = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.dg, i64 0
  %i.dn = sub <2 x i64> %i.dl, %i.dm
  store <2 x i64> %i.dn, ptr %i.bo, align 8, !alias.scope !1051
  %i.do = sub nsw i64 0, %.sroa.3.0.i.ph.i.i      ; 2 uses
  %i.dp = getelementptr inbounds [16 x i8], ptr %.val.i.i, i64 %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -16
  store ptr %.sroa.09.045, ptr %i.dq, align 8, !noalias !1050
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %bb.v
  %i.dr = phi i64 [ %i.do, %bb.v ], [ %i.ce, %.lr.ph.i.i.i ]
  %i.ds = getelementptr inbounds [16 x i8], ptr %.val.i.i, i64 %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  store ptr %.sroa.09.045, ptr %i.dt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.du = load ptr, ptr %i.d, align 8, !noundef !17
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 144
  %i.dw = load ptr, ptr %i.dv, align 8, !noundef !17
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.09.045, i64 144 ; 2 uses
  store ptr %i.dw, ptr %i.dx, align 8
  %i.dy = load ptr, ptr %i.d, align 8, !noundef !17 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.09.045, i64 152
  store ptr %i.dy, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  store ptr %.sroa.09.045, ptr %i.ea, align 8
  %i.eb = load ptr, ptr %i.dx, align 8, !noundef !17
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 152
  store ptr %.sroa.09.045, ptr %i.ec, align 8
  store i8 8, ptr %0, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.8, i64 71, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br i1 %.sroa.04.347, label %bb.y, label %bb.x

bb.w:                                             ; preds = %.thread50
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.x:                                             ; preds = %bb.y, %.loopexit
  ret void

bb.y:                                             ; preds = %.thread48, %.loopexit
  tail call fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %2)
  br label %bb.x

bb.z:                                             ; preds = %bb.o
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.04.347, label %.thread50, label %.thread55

.thread55:                                        ; preds = %bb.i, %.thread50, %bb.z
  %.pn3153 = phi { ptr, i32 } [ %i.ee, %.thread50 ], [ %i.ee, %bb.z ], [ %i.au, %bb.i ]
  resume { ptr, i32 } %.pn3153

.thread50:                                        ; preds = %bb.z
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %2) #55
          to label %.thread55 unwind label %bb.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN3std2io16append_to_string17h5d3e27cd4598480fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !17 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  store ptr %0, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i64 %i.g, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h4ac9490b6fb58d97E.exit23.i.i", %bb.a
  %.sroa.01.0.ph.i.i = phi i64 [ %i.bt, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h4ac9490b6fb58d97E.exit23.i.i" ], [ 0, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.noexc15, %.outer.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1087
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %i.t = load i64, ptr %i.j, align 8, !alias.scope !1092, !noalias !1093, !noundef !17 ; 2 uses
  %i.u = load i64, ptr %i.k, align 8, !alias.scope !1092, !noalias !1093, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.t, %i.u
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !1092, !noalias !1093 ; 4 uses
  br i1 %.not.i.i.i.i, label %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17hff33f059be3d73eeE.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1094
  %i.v = load i64, ptr %i.m, align 8, !alias.scope !1092, !noalias !1093, !noundef !17
  store ptr %.pre.i.i.i.i, ptr %i.a, align 8, !noalias !1094
  store i64 %i.v, ptr %i.n, align 8, !noalias !1094
  store i64 0, ptr %i.o, align 8, !noalias !1094
  %i.w = load i64, ptr %i.q, align 8, !alias.scope !1092, !noalias !1093, !noundef !17
  store i64 %i.w, ptr %i.p, align 8, !noalias !1094
  %i.x = invoke noundef ptr @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$8read_buf17h6293496402feb8cbE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %bb.c
  store i64 0, ptr %i.j, align 8, !alias.scope !1092, !noalias !1093
  %i.y = load <2 x i64>, ptr %i.o, align 8, !noalias !1094
  %i.z = load i64, ptr %i.o, align 8, !noalias !1094, !noundef !17
  store <2 x i64> %i.y, ptr %i.k, align 8, !alias.scope !1092, !noalias !1093
  %.not4.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not4.i.i.i.i, label %bb.d, label %"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17hff33f059be3d73eeE.exit.thread.i.i"

"_ZN85_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17hff33f059be3d73eeE.exit.thread.i.i": ; preds = %.noexc
  store ptr %i.x, ptr %i.r, align 8, !alias.scope !1095, !noalias !1096
  store ptr null, ptr %i.b, align 8, !alias.scope !1095, !noalias !1096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1094
  br label %bb.e

bb.d:                                             ; preds = %.noexc
end_hunk_0
begin_hunk_1_@"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$18fetch_plain_scalar17h06ecf30032f6074fE":bb.a
bb.aq:                                            ; preds = %bb.am
  %i.fr = icmp sgt i64 %i.fg, -1
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = load i64, ptr %i.a, align 8, !range !20, !noalias !14705, !noundef !17
  %i.ft = icmp eq i64 %i.fs, %i.fg
  br i1 %i.ft, label %bb.ar, label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i, !prof !22

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.fg, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc173.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !14704

.noexc173.i:                                      ; preds = %bb.ar
  %.pre.i.i = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !14705
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit.i: ; preds = %.noexc173.i, %bb.aq
  %i.fu = phi i64 [ %i.fg, %bb.aq ], [ %.pre.i.i, %.noexc173.i ] ; 2 uses
  %i.fv = load ptr, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !14705, !nonnull !17, !noundef !17
  %i.fw = icmp sgt i64 %i.fu, -1
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fu
  store i8 32, ptr %i.fx, align 1, !noalias !14723
  %i.fy = add nuw i64 %i.fg, 1
  br label %.sink.split.i

bb.as:                                            ; preds = %bb.am
  %i.fz = load i64, ptr %i.a, align 8, !range !20, !noalias !14705, !noundef !17
  %i.ga = sub i64 %i.fz, %i.fg
  %i.gb = icmp ugt i64 %i.dv, %i.ga
  br i1 %i.gb, label %bb.at, label %bb.au, !prof !22

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.fg, i64 noundef %i.dv, i64 noundef 1, i64 noundef 1)
          to label %.noexc175.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !14704

.noexc175.i:                                      ; preds = %bb.at
  %.pre.i.i174.i = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !14705
  br label %bb.au

bb.au:                                            ; preds = %.noexc175.i, %bb.as
  %i.gc = phi i64 [ %i.fg, %bb.as ], [ %.pre.i.i174.i, %.noexc175.i ] ; 3 uses
  %i.gd = icmp sgt i64 %i.gc, -1
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = load ptr, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !14705, !nonnull !17, !noundef !17
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr nonnull readonly align 1 %i.dr, i64 %i.dv, i1 false), !noalias !14724
  %i.gg = add nuw i64 %i.gc, %i.dv
  br label %.sink.split.i

bb.av:                                            ; preds = %bb.ai
  %i.gh = load i64, ptr %i.r, align 8, !alias.scope !14720, !noalias !14704, !noundef !17 ; 2 uses
  %i.gi = load i64, ptr %i.n, align 8, !range !20, !alias.scope !14720, !noalias !14704, !noundef !17 ; 2 uses
  %.not.i163.i = icmp ult i64 %i.gh, %i.gi
  %i.gj = select i1 %.not.i163.i, i64 0, i64 %i.gi
  %.sroa.01.0.i164.i = sub nuw i64 %i.gh, %i.gj
  %i.gk = load ptr, ptr %i.s, align 8, !alias.scope !14720, !noalias !14704, !nonnull !17, !noundef !17
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.sroa.01.0.i164.i
  %i.gm = load i32, ptr %i.gl, align 4, !range !56, !noalias !14704, !noundef !17 ; 10 uses
  %i.gn = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !14705, !noundef !17 ; 5 uses
  %i.go = icmp sgt i64 %i.gn, -1
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = icmp samesign ult i32 %i.gm, 128        ; 2 uses
  br i1 %i.gp, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gq = icmp samesign ult i32 %i.gm, 2048
  br i1 %i.gq, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = icmp samesign ult i32 %i.gm, 65536
  %..i.i = select i1 %i.gr, i64 3, i64 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.sroa.0.0.i177.i = phi i64 [ 2, %bb.aw ], [ %..i.i, %bb.ax ], [ 1, %bb.av ] ; 3 uses
  %i.gs = load i64, ptr %i.a, align 8, !range !20, !noalias !14705, !noundef !17
  %i.gt = sub nsw i64 %i.gs, %i.gn
  %i.gu = icmp ugt i64 %.sroa.0.0.i177.i, %i.gt
  br i1 %i.gu, label %bb.az, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hea94e9a2fce04dfaE.exit.i.i", !prof !22

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.gn, i64 noundef %.sroa.0.0.i177.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc179.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !14704

.noexc179.i:                                      ; preds = %bb.az
  %.pre.i178.i = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !14705
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hea94e9a2fce04dfaE.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hea94e9a2fce04dfaE.exit.i.i": ; preds = %.noexc179.i, %bb.ay
  %i.gv = phi i64 [ %i.gn, %bb.ay ], [ %.pre.i178.i, %.noexc179.i ] ; 2 uses
  %i.gw = load ptr, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !14705, !nonnull !17, !noundef !17
  %i.gx = icmp sgt i64 %i.gv, -1
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gv ; 10 uses
  br i1 %i.gp, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hea94e9a2fce04dfaE.exit.i.i"
  %i.gz = icmp samesign ult i32 %i.gm, 2048
  %i.ha = trunc i32 %i.gm to i8
  %i.hb = and i8 %i.ha, 63
  %i.hc = or disjoint i8 %i.hb, -128              ; 3 uses
  %i.hd = lshr i32 %i.gm, 6
  %i.he = trunc i32 %i.hd to i8                   ; 2 uses
  %i.hf = and i8 %i.he, 63
  %i.hg = or disjoint i8 %i.hf, -128              ; 2 uses
  %i.hh = lshr i32 %i.gm, 12
  %i.hi = trunc i32 %i.hh to i8                   ; 2 uses
  %i.hj = and i8 %i.hi, 63
  %i.hk = or disjoint i8 %i.hj, -128
  %i.hl = lshr i32 %i.gm, 18
  %i.hm = trunc nuw nsw i32 %i.hl to i8
  %i.hn = or disjoint i8 %i.hm, -16
  br i1 %i.gz, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hea94e9a2fce04dfaE.exit.i.i"
  %i.ho = trunc nuw nsw i32 %i.gm to i8
  store i8 %i.ho, ptr %i.gy, align 1, !noalias !14725
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  %i.hp = or disjoint i8 %i.he, -64
  store i8 %i.hp, ptr %i.gy, align 1, !noalias !14725
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  store i8 %i.hc, ptr %i.hq, align 1, !noalias !14725
  br label %bb.bg

bb.bd:                                            ; preds = %bb.ba
  %i.hr = icmp samesign ult i32 %i.gm, 65536
  br i1 %i.hr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hs = or disjoint i8 %i.hi, -32
  store i8 %i.hs, ptr %i.gy, align 1, !noalias !14725
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  store i8 %i.hg, ptr %i.ht, align 1, !noalias !14725
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  store i8 %i.hc, ptr %i.hu, align 1, !noalias !14725
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  store i8 %i.hn, ptr %i.gy, align 1, !noalias !14725
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  store i8 %i.hk, ptr %i.hv, align 1, !noalias !14725
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  store i8 %i.hg, ptr %i.hw, align 1, !noalias !14725
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gy, i64 3
  store i8 %i.hc, ptr %i.hx, align 1, !noalias !14725
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb
  %i.hy = add nuw i64 %.sroa.0.0.i177.i, %i.gn
  store i64 %i.hy, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !14705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14726)
  %i.hz = load i64, ptr %i.o, align 8, !alias.scope !14727, !noalias !14704, !noundef !17 ; 4 uses
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %.invoke656.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ib = load i64, ptr %i.r, align 8, !alias.scope !14727, !noalias !14704, !noundef !17 ; 2 uses
  %i.ic = add i64 %i.ib, 1                        ; 2 uses
  %i.id = load i64, ptr %i.n, align 8, !range !20, !alias.scope !14727, !noalias !14704, !noundef !17 ; 3 uses
  %.not.i181.i = icmp ult i64 %i.ic, %i.id
  %i.ie = select i1 %.not.i181.i, i64 0, i64 %i.id
  %.sroa.01.0.i182.i = sub nuw i64 %i.ic, %i.ie
  store i64 %.sroa.01.0.i182.i, ptr %i.r, align 8, !alias.scope !14727, !noalias !14704
  %i.if = add i64 %i.hz, -1                       ; 3 uses
  store i64 %i.if, ptr %i.o, align 8, !alias.scope !14727, !noalias !14704
  %i.ig = icmp ult i64 %i.if, %i.id
  tail call void @llvm.assume(i1 %i.ig)
  %i.ih = load ptr, ptr %i.s, align 8, !alias.scope !14727, !noalias !14704, !nonnull !17, !noundef !17
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ib
  %i.ij = load i32, ptr %i.ii, align 4, !range !56, !noalias !14728, !noundef !17
  %i.ik = load i64, ptr %i.m, align 8, !alias.scope !14703, !noalias !14704, !noundef !17
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.m, align 8, !alias.scope !14703, !noalias !14704
  %i.im = icmp eq i32 %i.ij, 10
  br i1 %i.im, label %bb.bi, label %bb.bj

.invoke656.i:                                     ; preds = %bb.bg, %bb.cu
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @471) #54
          to label %.cont657.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !14704

.cont657.i:                                       ; preds = %.invoke656.i
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.in = load i64, ptr %i.v, align 8, !alias.scope !14703, !noalias !14704, !noundef !17
  %i.io = add i64 %i.in, 1
  store i64 %i.io, ptr %i.v, align 8, !alias.scope !14703, !noalias !14704
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ip = load i64, ptr %i.t, align 8, !alias.scope !14703, !noalias !14704, !noundef !17
  %i.iq = add i64 %i.ip, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %storemerge.i = phi i64 [ %i.iq, %bb.bj ], [ 0, %bb.bi ]
  store i64 %storemerge.i, ptr %i.t, align 8, !alias.scope !14703, !noalias !14704
  %.not.i184.i = icmp ult i64 %i.hz, 3
  br i1 %.not.i184.i, label %bb.bl, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit202.i"

bb.bl:                                            ; preds = %bb.bk, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i190.i"
  %.sroa.03.015.i186.i = phi i64 [ %i.ir, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i190.i" ], [ 0, %bb.bk ]
  %i.ir = add nuw nsw i64 %.sroa.03.015.i186.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14730)
  %i.is = load ptr, ptr %i.p, align 8, !alias.scope !14731, !noalias !14704, !nonnull !17, !noundef !17 ; 6 uses
  %i.it = load ptr, ptr %i.q, align 8, !alias.scope !14731, !noalias !14704, !nonnull !17, !noundef !17 ; 4 uses
  %.not.i.i187.i = icmp eq ptr %i.is, %i.it
  br i1 %.not.i.i187.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i200.i", label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 1 ; 3 uses
  store ptr %i.iu, ptr %i.p, align 8, !alias.scope !14731, !noalias !14704
  %i.iv = load i8, ptr %i.is, align 1, !noalias !14732, !noundef !17 ; 5 uses
  %i.iw = icmp sgt i8 %i.iv, -1
  br i1 %i.iw, label %bb.bn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i188.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i188.i": ; preds = %bb.bm
  %i.ix = and i8 %i.iv, 31
  %i.iy = zext nneg i8 %i.ix to i32               ; 3 uses
  %i.iz = icmp ne ptr %i.iu, %i.it
  tail call void @llvm.assume(i1 %i.iz)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 2 ; 3 uses
  store ptr %i.ja, ptr %i.p, align 8, !alias.scope !14733, !noalias !14704
  %i.jb = load i8, ptr %i.iu, align 1, !noalias !14732, !noundef !17
  %i.jc = shl nuw nsw i32 %i.iy, 6
  %i.jd = and i8 %i.jb, 63
  %i.je = zext nneg i8 %i.jd to i32               ; 2 uses
  %i.jf = or disjoint i32 %i.jc, %i.je
  %i.jg = icmp samesign ugt i8 %i.iv, -33
  br i1 %i.jg, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i196.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i189.i"

bb.bn:                                            ; preds = %bb.bm
  %i.jh = zext nneg i8 %i.iv to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i189.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i196.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i188.i"
  %i.ji = icmp ne ptr %i.ja, %i.it
  tail call void @llvm.assume(i1 %i.ji)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.is, i64 3 ; 3 uses
  store ptr %i.jj, ptr %i.p, align 8, !alias.scope !14734, !noalias !14704
  %i.jk = load i8, ptr %i.ja, align 1, !noalias !14732, !noundef !17
  %i.jl = shl nuw nsw i32 %i.je, 6
  %i.jm = and i8 %i.jk, 63
  %i.jn = zext nneg i8 %i.jm to i32
  %i.jo = or disjoint i32 %i.jl, %i.jn            ; 2 uses
  %i.jp = shl nuw nsw i32 %i.iy, 12
  %i.jq = or disjoint i32 %i.jo, %i.jp
  %i.jr = icmp samesign ugt i8 %i.iv, -17
  br i1 %i.jr, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i197.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i189.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i197.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i196.i"
  %i.js = icmp ne ptr %i.jj, %i.it
  tail call void @llvm.assume(i1 %i.js)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  store ptr %i.jt, ptr %i.p, align 8, !alias.scope !14735, !noalias !14704
  %i.ju = load i8, ptr %i.jj, align 1, !noalias !14732, !noundef !17
  %i.jv = shl nuw nsw i32 %i.iy, 18
  %i.jw = and i32 %i.jv, 1835008
  %i.jx = shl nuw nsw i32 %i.jo, 6
  %i.jy = and i8 %i.ju, 63
  %i.jz = zext nneg i8 %i.jy to i32
  %i.ka = or disjoint i32 %i.jx, %i.jz
  %i.kb = or disjoint i32 %i.ka, %i.jw
  %.fr.i198.i = freeze i32 %i.kb                  ; 2 uses
  %.not6.i199.i = icmp eq i32 %.fr.i198.i, 1114112
  br i1 %.not6.i199.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i200.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i189.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i200.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i197.i", %bb.bl
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i189.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i189.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i200.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i197.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i196.i", %bb.bn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i188.i"
  %i.kc = phi i32 [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i200.i" ], [ %.fr.i198.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i197.i" ], [ %i.jq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i196.i" ], [ %i.jf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i188.i" ], [ %i.jh, %bb.bn ]
  %i.kd = load i64, ptr %i.o, align 8, !alias.scope !14736, !noalias !14704, !noundef !17 ; 2 uses
  %i.ke = load i64, ptr %i.n, align 8, !range !20, !alias.scope !14736, !noalias !14704, !noundef !17 ; 2 uses
  %i.kf = icmp eq i64 %i.kd, %i.ke
  br i1 %i.kf, label %bb.bo, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i190.i"

bb.bo:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i189.i"
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h7e45e2cfd1818014E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565)
          to label %.noexc201.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !14704

.noexc201.i:                                      ; preds = %bb.bo
  %.pre.i.i194.i = load i64, ptr %i.o, align 8, !alias.scope !14736, !noalias !14704
  %.pre1.i.i195.i = load i64, ptr %i.n, align 8, !range !20, !alias.scope !14736, !noalias !14704
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i190.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i190.i": ; preds = %.noexc201.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i189.i"
  %i.kg = phi i64 [ %.pre1.i.i195.i, %.noexc201.i ], [ %i.ke, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i189.i" ] ; 2 uses
  %i.kh = phi i64 [ %.pre.i.i194.i, %.noexc201.i ], [ %i.kd, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i189.i" ] ; 2 uses
  %i.ki = add i64 %i.kh, 1
  store i64 %i.ki, ptr %i.o, align 8, !alias.scope !14736, !noalias !14704
  %i.kj = load i64, ptr %i.r, align 8, !alias.scope !14736, !noalias !14704, !noundef !17
  %i.kk = add i64 %i.kj, %i.kh                    ; 2 uses
  %.not.i7.i191.i = icmp ult i64 %i.kk, %i.kg
  %i.kl = select i1 %.not.i7.i191.i, i64 0, i64 %i.kg
  %.sroa.0.0.i.i192.i = sub nuw i64 %i.kk, %i.kl
  %i.km = load ptr, ptr %i.s, align 8, !alias.scope !14736, !noalias !14704, !nonnull !17, !noundef !17
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.sroa.0.0.i.i192.i
  store i32 %i.kc, ptr %i.kn, align 4, !noalias !14704
  %2 = xor i64 %i.ir, %i.hz
  %exitcond.not.i193.i = icmp eq i64 %2, 3
  br i1 %exitcond.not.i193.i, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit202.loopexit.i", label %bb.bl

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit202.loopexit.i": ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$13push_back_mut17h250151835bdab181E.exit.i190.i"
  %.pre515.i = load i64, ptr %i.o, align 8, !alias.scope !14719, !noalias !14704
  br label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit202.i"

"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit202.i": ; preds = %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit202.loopexit.i", %bb.bk
  %i.ko = phi i64 [ %.pre515.i, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit202.loopexit.i" ], [ %i.if, %bb.bk ] ; 3 uses
  %.not361.i = icmp eq i64 %i.ko, 0
  br i1 %.not361.i, label %.invoke.i, label %bb.w

bb.bp:                                            ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  store i64 %i.dt, ptr %.sroa.623.0..sroa_idx28.i, align 8, !noalias !14705
  store i64 %i.du, ptr %.sroa.623.0..sroa_idx24.i, align 8, !noalias !14705
  store i64 %i.dv, ptr %.sroa.623.0..sroa_idx26.i, align 8, !noalias !14705
  switch i32 %i.eb, label %.loopexit [
    i32 32, label %.lr.ph418.i.preheader
    i32 9, label %.lr.ph418.i.preheader
    i32 10, label %.lr.ph418.i.preheader
    i32 13, label %.lr.ph418.i.preheader
  ]

.lr.ph418.i.preheader:                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp
  br label %.lr.ph418.i

.lr.ph418.i:                                      ; preds = %.lr.ph418.i.preheader, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit290.i"
  %i.kp = phi i64 [ %i.pc, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit290.i" ], [ %i.ds, %.lr.ph418.i.preheader ] ; 3 uses
  %.pre509517.i = phi i64 [ %i.pc, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit290.i" ], [ %.pre509518.i, %.lr.ph418.i.preheader ] ; 3 uses
  %i.kq = phi ptr [ %i.ne, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit290.i" ], [ %i.x, %.lr.ph418.i.preheader ] ; 6 uses
  %i.kr = phi ptr [ %i.nf, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit290.i" ], [ %i.y, %.lr.ph418.i.preheader ] ; 5 uses
  %i.ks = phi i64 [ %.sroa.623.0..sroa_idx28.promoted511.i, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit290.i" ], [ %i.dt, %.lr.ph418.i.preheader ] ; 9 uses
  %.sroa.0.4417.i = phi i8 [ %.sroa.0.5.i, %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit290.i" ], [ %.sroa.0.2410.i, %.lr.ph418.i.preheader ] ; 4 uses
  %i.kt = load i64, ptr %i.r, align 8, !alias.scope !14737, !noalias !14704, !noundef !17 ; 5 uses
  %i.ku = load i64, ptr %i.n, align 8, !range !20, !alias.scope !14737, !noalias !14704, !noundef !17 ; 7 uses
  %.not.i227.i = icmp ult i64 %i.kt, %i.ku
  %i.kv = select i1 %.not.i227.i, i64 0, i64 %i.ku
  %.sroa.01.0.i228.i = sub nuw i64 %i.kt, %i.kv
  %i.kw = load ptr, ptr %i.s, align 8, !alias.scope !14737, !noalias !14704, !nonnull !17, !noundef !17 ; 3 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.sroa.01.0.i228.i
  %i.ky = load i32, ptr %i.kx, align 4, !range !56, !noalias !14704, !noundef !17 ; 3 uses
  switch i32 %i.ky, label %bb.bq [
    i32 32, label %bb.bz
    i32 9, label %bb.bz
    i32 10, label %bb.ca
    i32 13, label %bb.ca
  ]

bb.bq:                                            ; preds = %.lr.ph418.i
  %i.kz = load i8, ptr %i.u, align 4, !alias.scope !14703, !noalias !14704, !noundef !17
  %i.la = icmp eq i8 %i.kz, 0
  br i1 %i.la, label %bb.br, label %.backedge

bb.br:                                            ; preds = %bb.bq
  %i.lb = load i64, ptr %i.t, align 8, !alias.scope !14703, !noalias !14704, !noundef !17
  %i.lc = icmp slt i64 %i.lb, %i.l
  br i1 %i.lc, label %.loopexit, label %.backedge

.backedge:                                        ; preds = %bb.br, %bb.bq
  br label %bb.d

bb.bs:                                            ; preds = %bb.bu, %.loopexit
  %.sroa.5.i.sroa.3.6.copyload = load i64, ptr %i.a, align 8, !noalias !14705
  %.sroa.5.i.sroa.5.6.copyload = load ptr, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !14705
  %.sroa.5.i.sroa.6.6.copyload = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !14705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14738)
  %.val.i234.i = load i64, ptr %i.b, align 8, !alias.scope !14738, !noalias !14705 ; 2 uses
  %i.ld = icmp eq i64 %.val.i234.i, 0
  br i1 %i.ld, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit236.i", label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val1.i235.i = load ptr, ptr %.sroa.516.0..sroa_idx21.i, align 8, !alias.scope !14738, !noalias !14705, !nonnull !17, !noundef !17
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i235.i, i64 noundef %.val.i234.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !14739
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit236.i"

bb.bu:                                            ; preds = %.loopexit
  store i8 1, ptr %i.i, align 2, !alias.scope !14703, !noalias !14704
  br label %bb.bs

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i": ; preds = %bb.i, %.loopexit.split-lp.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14740)
  %.val.i237.i = load i64, ptr %i.c, align 8, !alias.scope !14740, !noalias !14705 ; 2 uses
  %i.le = icmp eq i64 %.val.i237.i, 0
  br i1 %i.le, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit239.i", label %bb.bv

bb.bv:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i"
  %.val1.i238.i = load ptr, ptr %.sroa.516.0..sroa_idx19.i, align 8, !alias.scope !14740, !noalias !14705, !nonnull !17, !noundef !17
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i238.i, i64 noundef %.val.i237.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !14741
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit239.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit236.i": ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14742)
  %.val.i240.i = load i64, ptr %i.c, align 8, !alias.scope !14742, !noalias !14705 ; 2 uses
  %i.lf = icmp eq i64 %.val.i240.i, 0
  br i1 %i.lf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit242.i", label %bb.bw

bb.bw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit236.i"
  %.val1.i241.i = load ptr, ptr %.sroa.516.0..sroa_idx19.i, align 8, !alias.scope !14742, !noalias !14705, !nonnull !17, !noundef !17
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i241.i, i64 noundef %.val.i240.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !14743
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit242.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit239.i": ; preds = %bb.bv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14744)
  %.val.i243.i = load i64, ptr %i.d, align 8, !alias.scope !14744, !noalias !14705 ; 2 uses
  %i.lg = icmp eq i64 %.val.i243.i, 0
  br i1 %i.lg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit245.i", label %bb.bx

bb.bx:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit239.i"
  %.val1.i244.i = load ptr, ptr %.sroa.516.0..sroa_idx17.i, align 8, !alias.scope !14744, !noalias !14705, !nonnull !17, !noundef !17
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i244.i, i64 noundef %.val.i243.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !14745
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit245.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit242.i": ; preds = %bb.bw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit236.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14746)
  %.val.i246.i = load i64, ptr %i.d, align 8, !alias.scope !14746, !noalias !14705 ; 2 uses
  %i.lh = icmp eq i64 %.val.i246.i, 0
  br i1 %i.lh, label %bb.dd, label %bb.by

bb.by:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit242.i"
  %.val1.i247.i = load ptr, ptr %.sroa.516.0..sroa_idx17.i, align 8, !alias.scope !14746, !noalias !14705, !nonnull !17, !noundef !17
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i247.i, i64 noundef %.val.i246.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !14747
  br label %bb.dd

bb.bz:                                            ; preds = %.lr.ph418.i, %.lr.ph418.i
  %i.li = trunc nuw i8 %.sroa.0.4417.i to i1
  br i1 %i.li, label %bb.ck, label %bb.cs

bb.ca:                                            ; preds = %.lr.ph418.i, %.lr.ph418.i
  %.not.i253.i = icmp ult i64 %.pre509517.i, 2
  br i1 %.not.i253.i, label %.lr.ph.i254.i, label %"_ZN5insta7content4yaml8vendored7scanner16Scanner$LT$T$GT$9lookahead17hddef1e727776ec67E.exit271.i"

.lr.ph.i254.i:                                    ; preds = %bb.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14749)
  %i.lj = load ptr, ptr %i.p, align 8, !alias.scope !14750, !noalias !14704, !nonnull !17, !noundef !17 ; 6 uses
  %i.lk = load ptr, ptr %i.q, align 8, !alias.scope !14750, !noalias !14704, !nonnull !17, !noundef !17 ; 4 uses
  %.not.i.i256.i = icmp eq ptr %i.lj, %i.lk
  br i1 %.not.i.i256.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i269.i", label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i254.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 1 ; 3 uses
  store ptr %i.ll, ptr %i.p, align 8, !alias.scope !14750, !noalias !14704
  %i.lm = load i8, ptr %i.lj, align 1, !noalias !14751, !noundef !17 ; 5 uses
  %i.ln = icmp sgt i8 %i.lm, -1
  br i1 %i.ln, label %bb.cc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i257.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i257.i": ; preds = %bb.cb
  %i.lo = and i8 %i.lm, 31
  %i.lp = zext nneg i8 %i.lo to i32               ; 3 uses
  %i.lq = icmp ne ptr %i.ll, %i.lk
  tail call void @llvm.assume(i1 %i.lq)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 2 ; 3 uses
  store ptr %i.lr, ptr %i.p, align 8, !alias.scope !14752, !noalias !14704
  %i.ls = load i8, ptr %i.ll, align 1, !noalias !14751, !noundef !17
  %i.lt = shl nuw nsw i32 %i.lp, 6
  %i.lu = and i8 %i.ls, 63
  %i.lv = zext nneg i8 %i.lu to i32               ; 2 uses
  %i.lw = or disjoint i32 %i.lt, %i.lv
  %i.lx = icmp samesign ugt i8 %i.lm, -33
  br i1 %i.lx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i265.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i258.i"

bb.cc:                                            ; preds = %bb.cb
  %i.ly = zext nneg i8 %i.lm to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i258.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i265.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i.i257.i"
  %i.lz = icmp ne ptr %i.lr, %i.lk
  tail call void @llvm.assume(i1 %i.lz)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lj, i64 3 ; 3 uses
  store ptr %i.ma, ptr %i.p, align 8, !alias.scope !14753, !noalias !14704
  %i.mb = load i8, ptr %i.lr, align 1, !noalias !14751, !noundef !17
  %i.mc = shl nuw nsw i32 %i.lv, 6
  %i.md = and i8 %i.mb, 63
  %i.me = zext nneg i8 %i.md to i32
  %i.mf = or disjoint i32 %i.mc, %i.me            ; 2 uses
  %i.mg = shl nuw nsw i32 %i.lp, 12
  %i.mh = or disjoint i32 %i.mf, %i.mg
  %i.mi = icmp samesign ugt i8 %i.lm, -17
  br i1 %i.mi, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i266.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i258.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i266.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i.i265.i"
  %i.mj = icmp ne ptr %i.ma, %i.lk
  tail call void @llvm.assume(i1 %i.mj)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store ptr %i.mk, ptr %i.p, align 8, !alias.scope !14754, !noalias !14704
  %i.ml = load i8, ptr %i.ma, align 1, !noalias !14751, !noundef !17
  %i.mm = shl nuw nsw i32 %i.lp, 18
  %i.mn = and i32 %i.mm, 1835008
  %i.mo = shl nuw nsw i32 %i.mf, 6
  %i.mp = and i8 %i.ml, 63
  %i.mq = zext nneg i8 %i.mp to i32
  %i.mr = or disjoint i32 %i.mo, %i.mq
  %i.ms = or disjoint i32 %i.mr, %i.mn
  %.fr.i267.i = freeze i32 %i.ms                  ; 2 uses
  %.not6.i268.i = icmp eq i32 %.fr.i267.i, 1114112
  br i1 %.not6.i268.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i269.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i258.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread11.i269.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i266.i", %.lr.ph.i254.i
end_hunk_1
begin_hunk_2_@_ZN5insta9redaction8Selector5parse17h630c77a0df3a1df5E:bb.a
  %i.xs = add i64 %i.xr, -1                       ; 2 uses
  store i64 %i.xs, ptr %i.xq, align 8, !noalias !19841
  %i.xt = icmp eq i64 %i.xs, 0
  br i1 %i.xt, label %bb.gg, label %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit210"

bb.gg:                                            ; preds = %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i209"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h5733b4becd2ef19aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ee)
  br label %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit210"

"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit210": ; preds = %bb.gg, %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i209"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.xu = load i64, ptr %i.ii, align 8, !noalias !19842, !noundef !17
  %i.xv = add i64 %i.xu, -1                       ; 2 uses
  store i64 %i.xv, ptr %i.ii, align 8, !noalias !19842
  %i.xw = icmp eq i64 %i.xv, 0
  br i1 %i.xw, label %bb.gh, label %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i211"

bb.gh:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit210"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha8d07ef1a3d5a3b5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.aq)
  br label %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i211"

"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i211": ; preds = %bb.gh, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit210"
  %i.xx = load i64, ptr %i.ik, align 8, !noalias !19843, !noundef !17
  %i.xy = add i64 %i.xx, -1                       ; 2 uses
  store i64 %i.xy, ptr %i.ik, align 8, !noalias !19843
  %i.xz = icmp eq i64 %i.xy, 0
  br i1 %i.xz, label %bb.gi, label %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit212"

bb.gi:                                            ; preds = %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i211"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h5733b4becd2ef19aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.eb)
  br label %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit212"

"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit212": ; preds = %bb.gi, %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i211"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.val.i213 = load ptr, ptr %i.ds, align 8, !nonnull !17, !noundef !17 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19844)
  %i.ya = icmp eq i64 %.val1.i214, 0
  br i1 %i.ya, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i", label %.lr.ph.i.i.i215

.lr.ph.i.i.i215:                                  ; preds = %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit212", %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i"
  %.sroa.0.07.i.i.i216 = phi i64 [ %i.yc, %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i" ], [ 0, %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit212" ] ; 2 uses
  %i.yb = getelementptr inbounds nuw [32 x i8], ptr %.val.i213, i64 %.sroa.0.07.i.i.i216 ; 3 uses
  %i.yc = add nuw i64 %.sroa.0.07.i.i.i216, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19845)
  %i.yd = load i64, ptr %i.yb, align 8, !range !39, !alias.scope !19846, !noalias !19847, !noundef !17
  %i.ye = icmp eq i64 %i.yd, 4
  br i1 %i.ye, label %bb.gj, label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i"

bb.gj:                                            ; preds = %.lr.ph.i.i.i215
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %.val.i.i.i.i218 = load i64, ptr %i.yf, align 8, !range !30, !alias.scope !19846, !noalias !19847, !noundef !17 ; 2 uses
  %switch.i.i.i.i = icmp sgt i64 %.val.i.i.i.i218, 0
  br i1 %switch.i.i.i.i, label %bb.gk, label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i"

bb.gk:                                            ; preds = %bb.gj
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %.val1.i.i.i.i219 = load ptr, ptr %i.yg, align 8, !alias.scope !19846, !noalias !19847, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i219, i64 noundef %.val.i.i.i.i218, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !19848
  br label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i"

"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i": ; preds = %bb.gk, %bb.gj, %.lr.ph.i.i.i215
  %i.yh = icmp eq i64 %i.yc, %.val1.i214
  br i1 %i.yh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i", label %.lr.ph.i.i.i215

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i", %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit212"
  %.val2.i217 = load i64, ptr %i.u, align 8, !range !20, !noundef !17 ; 2 uses
  %i.yi = icmp eq i64 %.val2.i217, 0
  br i1 %i.yi, label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit", label %bb.gl

bb.gl:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i"
  %i.yj = shl nuw i64 %.val2.i217, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i213, i64 noundef %i.yj, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !19847
  br label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit"

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit": ; preds = %bb.gl, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.experimental.noalias.scope.decl(metadata !19849)
  call void @llvm.experimental.noalias.scope.decl(metadata !19850)
  call void @llvm.experimental.noalias.scope.decl(metadata !19851)
  %i.yk = load ptr, ptr %i.ax, align 8, !alias.scope !19852, !nonnull !17, !noundef !17 ; 2 uses
  %i.yl = load i64, ptr %i.yk, align 8, !noalias !19852, !noundef !17
  %i.ym = add i64 %i.yl, -1                       ; 2 uses
  store i64 %i.ym, ptr %i.yk, align 8, !noalias !19852
  %i.yn = icmp eq i64 %i.ym, 0
  br i1 %i.yn, label %bb.gm, label %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i220"

bb.gm:                                            ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha8d07ef1a3d5a3b5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.ax)
  br label %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i220"

"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i220": ; preds = %bb.gm, %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit"
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19853)
  call void @llvm.experimental.noalias.scope.decl(metadata !19854)
  %i.yp = load ptr, ptr %i.yo, align 8, !alias.scope !19855, !nonnull !17, !noundef !17 ; 2 uses
  %i.yq = load i64, ptr %i.yp, align 8, !noalias !19855, !noundef !17
  %i.yr = add i64 %i.yq, -1                       ; 2 uses
  store i64 %i.yr, ptr %i.yp, align 8, !noalias !19855
  %i.ys = icmp eq i64 %i.yr, 0
  br i1 %i.ys, label %bb.gn, label %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit221"

bb.gn:                                            ; preds = %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i220"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h5733b4becd2ef19aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.yo)
  br label %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit221"

"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit221": ; preds = %bb.gn, %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i220"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.experimental.noalias.scope.decl(metadata !19856)
  %.val.i222 = load ptr, ptr %i.bw, align 8, !alias.scope !19856, !nonnull !17, !noundef !17 ; 2 uses
  %.val1.i223 = load i64, ptr %i.bx, align 8, !alias.scope !19856, !noundef !17 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19857)
  %i.yt = icmp eq i64 %.val1.i223, 0
  br i1 %i.yt, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc373727848184298E.exit.i234", label %.lr.ph.i.i.i224

.lr.ph.i.i.i224:                                  ; preds = %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit221", %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i233"
  %.sroa.0.07.i.i.i225 = phi i64 [ %i.yv, %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i233" ], [ 0, %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit221" ] ; 2 uses
  %i.yu = getelementptr inbounds nuw [24 x i8], ptr %.val.i222, i64 %.sroa.0.07.i.i.i225 ; 3 uses
  %i.yv = add nuw i64 %.sroa.0.07.i.i.i225, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19858)
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %.val.i.i.i.i226 = load ptr, ptr %i.yw, align 8, !alias.scope !19859, !noalias !19856, !nonnull !17, !noundef !17 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %.val1.i.i.i.i227 = load i64, ptr %i.yx, align 8, !alias.scope !19859, !noalias !19856, !noundef !17 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19860)
  %i.yy = icmp eq i64 %.val1.i.i.i.i227, 0
  br i1 %i.yy, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i.i.i.i231", label %.lr.ph.i.i.i.i.i.i228

.lr.ph.i.i.i.i.i.i228:                            ; preds = %.lr.ph.i.i.i224, %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i230"
  %.sroa.0.07.i.i.i.i.i.i229 = phi i64 [ %i.za, %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i230" ], [ 0, %.lr.ph.i.i.i224 ] ; 2 uses
  %i.yz = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i226, i64 %.sroa.0.07.i.i.i.i.i.i229 ; 3 uses
  %i.za = add nuw i64 %.sroa.0.07.i.i.i.i.i.i229, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19861)
  %i.zb = load i64, ptr %i.yz, align 8, !range !39, !alias.scope !19862, !noalias !19863, !noundef !17
  %i.zc = icmp eq i64 %i.zb, 4
  br i1 %i.zc, label %bb.go, label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i230"

bb.go:                                            ; preds = %.lr.ph.i.i.i.i.i.i228
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %.val.i.i.i.i.i.i.i236 = load i64, ptr %i.zd, align 8, !range !30, !alias.scope !19862, !noalias !19863, !noundef !17 ; 2 uses
  %switch.i.i.i.i.i.i.i237 = icmp sgt i64 %.val.i.i.i.i.i.i.i236, 0
  br i1 %switch.i.i.i.i.i.i.i237, label %bb.gp, label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i230"

bb.gp:                                            ; preds = %bb.go
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  %.val1.i.i.i.i.i.i.i238 = load ptr, ptr %i.ze, align 8, !alias.scope !19862, !noalias !19863, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i238, i64 noundef %.val.i.i.i.i.i.i.i236, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !19864
  br label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i230"

"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i230": ; preds = %bb.gp, %bb.go, %.lr.ph.i.i.i.i.i.i228
  %i.zf = icmp eq i64 %i.za, %.val1.i.i.i.i227
  br i1 %i.zf, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i.i.i.i231", label %.lr.ph.i.i.i.i.i.i228

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i.i.i.i231": ; preds = %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i230", %.lr.ph.i.i.i224
  %.val2.i.i.i.i232 = load i64, ptr %i.yu, align 8, !range !20, !alias.scope !19859, !noalias !19856, !noundef !17 ; 2 uses
  %i.zg = icmp eq i64 %.val2.i.i.i.i232, 0
  br i1 %i.zg, label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i233", label %bb.gq

bb.gq:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i.i.i.i231"
  %i.zh = shl nuw i64 %.val2.i.i.i.i232, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i226, i64 noundef %i.zh, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !19863
  br label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i233"

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i233": ; preds = %bb.gq, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i.i.i.i231"
  %i.zi = icmp eq i64 %i.yv, %.val1.i223
  br i1 %i.zi, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc373727848184298E.exit.i234", label %.lr.ph.i.i.i224

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc373727848184298E.exit.i234": ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i233", %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit221"
  %.val2.i235 = load i64, ptr %i.ba, align 8, !range !20, !alias.scope !19856, !noundef !17 ; 2 uses
  %i.zj = icmp eq i64 %.val2.i235, 0
  br i1 %i.zj, label %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$$GT$17h72c1a21a055eca08E.exit239", label %bb.gr

bb.gr:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc373727848184298E.exit.i234"
  %i.zk = mul nuw i64 %.val2.i235, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i222, i64 noundef %i.zk, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !19856
  br label %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$$GT$17h72c1a21a055eca08E.exit239"

"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$$GT$17h72c1a21a055eca08E.exit239": ; preds = %bb.gr, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc373727848184298E.exit.i234"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.aq

bb.gs:                                            ; preds = %.invoke3021, %bb.dy
  %i.zl = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr76drop_in_place$LT$pest..error..ErrorVariant$LT$insta..redaction..Rule$GT$$GT$17h51310e331a6b391bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.an) #55
  br label %.thread383

bb.gt:                                            ; preds = %bb.bx, %bb.bw
  %i.zm = load ptr, ptr %i.ds, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.zn = getelementptr inbounds nuw [32 x i8], ptr %i.zm, i64 %.val1.i214
  store i64 3, ptr %i.zn, align 8, !noalias !19865
  br label %.sink.split

bb.gu:                                            ; preds = %bb.by
  %i.zo = extractvalue { ptr, i64 } %i.lb, 0      ; 3 uses
  %i.zp = extractvalue { ptr, i64 } %i.lb, 1      ; 5 uses
  %.not.i240 = icmp ugt i64 %i.zp, 1
  br i1 %.not.i240, label %bb.gv, label %.split.i

.split.i:                                         ; preds = %bb.gu
  %i.zq = icmp eq i64 %i.zp, 0
  br i1 %i.zq, label %bb.gx, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 1
  %i.zs = load i8, ptr %i.zr, align 1, !alias.scope !19866, !noundef !17
  %i.zt = icmp sgt i8 %i.zs, -65
  br i1 %i.zt, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv, %.split.i
  %i.zu = add i64 %i.zp, -1
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zo, i64 1
  %i.zw = ptrtoint ptr %i.zv to i64
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gv, %.split.i
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.zo, i64 noundef %i.zp, i64 noundef 1, i64 noundef %i.zp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @703) #54
          to label %bb.n unwind label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit302.thread"

bb.gy:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit285", %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit281", %"_ZN4core3ptr183drop_in_place$LT$core..iter..adapters..map..Map$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$C$insta..redaction..Selector..parse..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hbeb473b64aebe16dE.exit", %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit257", %bb.gw
  %i.zx = phi i64 [ %.val1.i214, %bb.gw ], [ %.pre2061, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit257" ], [ %.val1.i214, %"_ZN4core3ptr183drop_in_place$LT$core..iter..adapters..map..Map$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$C$insta..redaction..Selector..parse..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hbeb473b64aebe16dE.exit" ], [ %.val1.i214, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit281" ], [ %.val1.i214, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit285" ] ; 3 uses
  %.sroa.43.0 = phi i64 [ %i.zu, %bb.gw ], [ %.sroa.43.1, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit257" ], [ %.sroa.533.0, %"_ZN4core3ptr183drop_in_place$LT$core..iter..adapters..map..Map$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$C$insta..redaction..Selector..parse..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hbeb473b64aebe16dE.exit" ], [ %.sroa.535.0, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit281" ], [ undef, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit285" ]
  %.sroa.33.0 = phi i64 [ %i.zw, %bb.gw ], [ %.sroa.33.1, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit257" ], [ %.sroa.032.0, %"_ZN4core3ptr183drop_in_place$LT$core..iter..adapters..map..Map$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$C$insta..redaction..Selector..parse..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hbeb473b64aebe16dE.exit" ], [ %.sroa.034.0, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit281" ], [ 0, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit285" ] ; 2 uses
  %.sroa.24.0 = phi i64 [ -9223372036854775808, %bb.gw ], [ %.sroa.24.1, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit257" ], [ %.sroa.531.0, %"_ZN4core3ptr183drop_in_place$LT$core..iter..adapters..map..Map$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$C$insta..redaction..Selector..parse..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hbeb473b64aebe16dE.exit" ], [ undef, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit281" ], [ %.sroa.537.0, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit285" ] ; 3 uses
  %.sroa.0306.0 = phi i64 [ 4, %bb.gw ], [ %.sroa.0306.1, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit257" ], [ %.sroa.030.0, %"_ZN4core3ptr183drop_in_place$LT$core..iter..adapters..map..Map$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$C$insta..redaction..Selector..parse..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hbeb473b64aebe16dE.exit" ], [ 0, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit281" ], [ %.sroa.036.0, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit285" ] ; 2 uses
  %.sroa.038.2 = phi i8 [ 1, %bb.gw ], [ 0, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit257" ], [ 0, %"_ZN4core3ptr183drop_in_place$LT$core..iter..adapters..map..Map$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$C$insta..redaction..Selector..parse..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hbeb473b64aebe16dE.exit" ], [ 0, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit281" ], [ 0, %"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E.exit285" ] ; 3 uses
  %i.zy = load i64, ptr %i.u, align 8, !range !20, !noundef !17
  %i.zz = icmp eq i64 %i.zx, %i.zy
  br i1 %i.zz, label %bb.gz, label %bb.kh

bb.gz:                                            ; preds = %bb.gy
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h182e1fad708ddfe7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @701)
          to label %bb.kh unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aaa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aab = icmp eq i64 %.sroa.0306.0, 4
  %switch.i300 = icmp sgt i64 %.sroa.24.0, 0
  %or.cond = select i1 %i.aab, i1 %switch.i300, i1 false
  br i1 %or.cond, label %bb.hb, label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit302"

bb.hb:                                            ; preds = %bb.ha
  %i.aac = inttoptr i64 %.sroa.33.0 to ptr
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aac, i64 noundef %.sroa.24.0, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !19867
  br label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit302"

"_ZN4pest9iterators4pair13Pair$LT$R$GT$10into_inner17h50ccae55f3269776E.exit147": ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke fastcc void @"_ZN97_$LT$pest..iterators..pairs..Pairs$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8c485c864ef256E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ak, ptr noalias noundef align 8 dereferenceable(56) %i.aj)
          to label %bb.hd unwind label %.loopexit456

.loopexit456:                                     ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$10into_inner17h50ccae55f3269776E.exit147"
  %lpad.loopexit458 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

.loopexit.split-lp457:                            ; preds = %bb.hh
  %lpad.loopexit.split-lp459 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.hc:                                            ; preds = %.loopexit.split-lp457, %.loopexit456
  %lpad.phi460 = phi { ptr, i32 } [ %lpad.loopexit458, %.loopexit456 ], [ %lpad.loopexit.split-lp459, %.loopexit.split-lp457 ]
  call fastcc void @"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E"(ptr noalias noundef align 8 dereferenceable(56) %i.aj) #55
  br label %.body119

bb.hd:                                            ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$10into_inner17h50ccae55f3269776E.exit147"
  %i.aad = load ptr, ptr %i.ak, align 8, !noundef !17
  %.not70 = icmp eq ptr %i.aad, null
  br i1 %.not70, label %bb.hh, label %bb.he, !prof !22

bb.he:                                            ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19870)
  %i.aae = load ptr, ptr %i.aj, align 8, !alias.scope !19871, !nonnull !17, !noundef !17 ; 2 uses
  %i.aaf = load i64, ptr %i.aae, align 8, !noalias !19871, !noundef !17
  %i.aag = add i64 %i.aaf, -1                     ; 2 uses
  store i64 %i.aag, ptr %i.aae, align 8, !noalias !19871
  %i.aah = icmp eq i64 %i.aag, 0
  br i1 %i.aah, label %bb.hf, label %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i246"

bb.hf:                                            ; preds = %bb.he
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha8d07ef1a3d5a3b5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.aj)
  br label %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i246"

"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i246": ; preds = %bb.hf, %bb.he
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19873)
  %i.aai = load ptr, ptr %i.fg, align 8, !alias.scope !19874, !nonnull !17, !noundef !17 ; 2 uses
  %i.aaj = load i64, ptr %i.aai, align 8, !noalias !19874, !noundef !17
  %i.aak = add i64 %i.aaj, -1                     ; 2 uses
  store i64 %i.aak, ptr %i.aai, align 8, !noalias !19874
  %i.aal = icmp eq i64 %i.aak, 0
  br i1 %i.aal, label %bb.hg, label %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit247"

bb.hg:                                            ; preds = %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i246"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h5733b4becd2ef19aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fg)
  br label %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit247"

bb.hh:                                            ; preds = %bb.hd
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @704) #54
          to label %bb.n unwind label %.loopexit.split-lp457

.loopexit461:                                     ; preds = %bb.hl, %bb.hm
  %lpad.loopexit463 = landingpad { ptr, i32 }
          cleanup
  br label %.body267

.loopexit.split-lp462:                            ; preds = %.invoke3025.a, %.invoke3023, %.split.i259, %.loopexit
  %lpad.loopexit.split-lp464 = landingpad { ptr, i32 }
          cleanup
  br label %.body267

.body267:                                         ; preds = %.loopexit461, %.loopexit.split-lp462, %bb.ip, %bb.iq
  %eh.lpad-body268 = phi { ptr, i32 } [ %i.agg, %bb.ip ], [ %i.agg, %bb.iq ], [ %lpad.loopexit463, %.loopexit461 ], [ %lpad.loopexit.split-lp464, %.loopexit.split-lp462 ]
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E"(ptr noalias noundef align 8 dereferenceable(40) %i.al) #55
  br label %.body119

"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit247": ; preds = %bb.hg, %"_ZN4core3ptr143drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$insta..redaction..Rule$GT$$GT$$GT$$GT$17h291dd66abe923cddE.exit.i246"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.val85 = load ptr, ptr %i.al, align 8, !nonnull !17, !noundef !17 ; 7 uses
  %.val86 = load i64, ptr %i.fh, align 8, !noundef !17 ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.val85, i64 32
  %i.aan = load i64, ptr %i.aam, align 8, !noundef !17 ; 3 uses
  %i.aao = icmp ult i64 %.val86, %i.aan
  br i1 %i.aao, label %bb.hi, label %.invoke3025.a

bb.hi:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit247"
  %i.aap = getelementptr inbounds nuw i8, ptr %.val85, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.aar = getelementptr inbounds nuw [40 x i8], ptr %i.aaq, i64 %.val86 ; 2 uses
  %i.aas = load i8, ptr %i.aar, align 8, !range !21, !noundef !17
  %i.aat = trunc nuw i8 %i.aas to i1
  br i1 %i.aat, label %.invoke3023, label %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hc1ba9aff4990f8fdE.exit.i248", !prof !22

.invoke3025.a:                                    ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hc1ba9aff4990f8fdE.exit.i248", %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit247"
  %i.aau = phi i64 [ %.val86, %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit247" ], [ %i.aax, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hc1ba9aff4990f8fdE.exit.i248" ]
  %i.aav = phi ptr [ @157, %"_ZN4core3ptr80drop_in_place$LT$pest..iterators..pairs..Pairs$LT$insta..redaction..Rule$GT$$GT$17hf03bf4c57c8a4232E.exit247" ], [ @160, %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hc1ba9aff4990f8fdE.exit.i248" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aau, i64 noundef %i.aan, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aav) #54
          to label %.cont3026.a unwind label %.loopexit.split-lp462

.cont3026.a:                                      ; preds = %.invoke3025.a
  unreachable

"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hc1ba9aff4990f8fdE.exit.i248": ; preds = %bb.hi
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %i.aax = load i64, ptr %i.aaw, align 8, !noundef !17 ; 3 uses
  %i.aay = icmp ult i64 %i.aax, %i.aan
  br i1 %i.aay, label %bb.hj, label %.invoke3025.a

bb.hj:                                            ; preds = %"_ZN4pest9iterators4pair13Pair$LT$R$GT$4pair17hc1ba9aff4990f8fdE.exit.i248"
  %i.aaz = getelementptr inbounds nuw [40 x i8], ptr %i.aaq, i64 %i.aax ; 2 uses
  %i.aba = load i8, ptr %i.aaz, align 8, !range !21, !noundef !17
  %i.abb = trunc nuw i8 %i.aba to i1
  br i1 %i.abb, label %bb.hk, label %.invoke3023, !prof !23

bb.hk:                                            ; preds = %bb.hj
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaz, i64 1
  %i.abd = load i8, ptr %i.abc, align 1, !range !24, !noundef !17
  switch i8 %i.abd, label %.invoke3023 [
    i8 6, label %bb.hl
    i8 7, label %bb.hm
  ], !prof !36

.invoke3023:                                      ; preds = %bb.hk, %bb.hj, %bb.hi
  %i.abe = phi ptr [ @161, %bb.hj ], [ @158, %bb.hi ], [ @707, %bb.hk ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abe) #54
          to label %.cont3024 unwind label %.loopexit.split-lp462

.cont3024:                                        ; preds = %.invoke3023
  unreachable

bb.hl:                                            ; preds = %bb.hk
  %i.abf = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17hb862d284d5629c74E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.hn unwind label %.loopexit461 ; 2 uses

bb.hm:                                            ; preds = %bb.hk
  %i.abg = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17hb862d284d5629c74E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.hx unwind label %.loopexit461 ; 2 uses

bb.hn:                                            ; preds = %bb.hl
  %i.abh = extractvalue { ptr, i64 } %i.abf, 0    ; 6 uses
  %i.abi = extractvalue { ptr, i64 } %i.abf, 1    ; 6 uses
  switch i64 %i.abi, label %bb.hp [
    i64 0, label %.loopexit
    i64 1, label %bb.ho
  ]

bb.ho:                                            ; preds = %bb.hn
  %i.abj = load i8, ptr %i.abh, align 1, !alias.scope !19875, !noalias !19876, !noundef !17
  switch i8 %i.abj, label %.lr.ph.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

.lr.ph.i.preheader:                               ; preds = %bb.hq, %bb.hs, %bb.ho
  %.sroa.01.162.i.ph = phi ptr [ %i.abk, %bb.hq ], [ %i.abh, %bb.hs ], [ %i.abh, %bb.ho ]
  %.sroa.16.161.i.ph = phi i64 [ %i.abl, %bb.hq ], [ %i.abi, %bb.hs ], [ 1, %bb.ho ]
end_hunk_2
begin_hunk_3_@"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h896609c81019143bE":bb.a
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i.not33.us.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.not33.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.split.us.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i"
  %.sroa.06.0.i34.us.us.i = phi i16 [ %i.cr, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i" ], [ %i.cd, %.split.us.i ] ; 3 uses
  %i.ce = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.us.us.i, i1 true)
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = add i64 %.sroa.01.0.i.us.i, %i.cf
  %i.ch = and i64 %i.cg, %i.bz
  %i.ci = sub nsw i64 0, %i.ch                    ; 2 uses
  %i.cj = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %i.ci ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23999), !noalias !24000
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -16
  %.val.i.i.us.us.i = load ptr, ptr %i.ck, align 8, !noalias !24001, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.cl = getelementptr i8, ptr %.val.i.i.us.us.i, i64 8
  %.val1.i12.i.i.us.us.i = load i64, ptr %i.cl, align 8, !noalias !24002, !noundef !17
  %.not.i.i.i14.i.i.us.us.i = icmp eq i64 %.val1.i12.i.i.us.us.i, %.val3.i.i.i
  br i1 %.not.i.i.i14.i.i.us.us.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i", !prof !72

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i": ; preds = %.lr.ph.us.i
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8, !range !44, !alias.scope !24003, !noalias !24004, !noundef !17
  %i.co = trunc nuw i64 %i.cn to i1               ; 2 uses
  %.val.i.i.us.us.i. = select i1 %i.co, ptr %.val.i.i.us.us.i, ptr %3
  %..val.i.i.us.us.i = select i1 %i.co, ptr %3, ptr %.val.i.i.us.us.i
  %.val2.i16.i.i.us.us.i = load ptr, ptr %..val.i.i.us.us.i, align 8, !noalias !24002, !nonnull !17, !align !31, !noundef !17
  %.val.i17.i.i.us.us.i = load ptr, ptr %.val.i.i.us.us.i., align 8, !noalias !24002, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i18.i.i.us.us.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i17.i.i.us.us.i, ptr nonnull readonly align 1 %.val2.i16.i.i.us.us.i, i64 %.val3.i.i.i), !noalias !24002
  %i.cp = icmp eq i32 %bcmp.i.i.i18.i.i.us.us.i, 0
  br i1 %i.cp, label %.loopexit, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i", !prof !66

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i": ; preds = %.lr.ph.us.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i"
  %i.cq = add i16 %.sroa.06.0.i34.us.us.i, -1
  %i.cr = and i16 %i.cq, %.sroa.06.0.i34.us.us.i  ; 2 uses
  %.not.i.not.us.us.i = icmp eq i16 %i.cr, 0
  br i1 %.not.i.not.us.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

._crit_edge.split.us.us.i:                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i", %.split.us.i
  %i.cs = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i, splat (i8 -1)
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = icmp eq i16 %i.ct, 0
  br i1 %i.cu, label %bb.d, label %.loopexit10, !prof !22

bb.d:                                             ; preds = %._crit_edge.split.us.us.i
  %i.cv = add i64 %.sroa.9.0.i.us.i, 16           ; 2 uses
  %i.cw = add i64 %.sroa.01.0.i.us.i, %i.cv
  br label %.split.us.i

.split.i:                                         ; preds = %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit, %bb.e
  %.sroa.9.0.i.i = phi i64 [ %i.do, %bb.e ], [ 0, %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit ]
  %.pn.i = phi i64 [ %i.dp, %bb.e ], [ %i.bv, %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.bz         ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !23998 ; 2 uses
  %i.cy = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %.sroa.0.15.vec.insert.i.i
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.not33.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i"
  %.sroa.06.0.i34.i = phi i16 [ %i.dn, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i" ], [ %i.cz, %.split.i ] ; 3 uses
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true)
  %i.db = zext nneg i16 %i.da to i64
  %i.dc = add i64 %.sroa.01.0.i.i, %i.db
  %i.dd = and i64 %i.dc, %i.bz
  %i.de = sub nsw i64 0, %i.dd                    ; 2 uses
  %i.df = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %i.de
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23999), !noalias !24000
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -16
  %.sroa.02.0.i.val.i.i.i = load ptr, ptr %i.dg, align 8, !noalias !24001, !nonnull !17, !align !29, !noundef !17 ; 2 uses
  %i.dh = getelementptr i8, ptr %.sroa.02.0.i.val.i.i.i, i64 8
  %.val1.i4.i.i.i = load i64, ptr %i.dh, align 8, !noalias !24002, !noundef !17
  %.not.i.i.i6.i.i.i = icmp eq i64 %.val1.i4.i.i.i, %.val3.i.i.i
  br i1 %.not.i.i.i6.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i", !prof !72

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.i": ; preds = %.lr.ph.i
  %.val.i17.i.i.i = load ptr, ptr %.sroa.02.0.i.val.i.i.i, align 8, !noalias !24002, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i18.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i17.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !24002
  %i.di = icmp eq i32 %bcmp.i.i.i18.i.i.i, 0
  br i1 %i.di, label %.loopexit, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i", !prof !66

._crit_edge.split.i:                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i", %.split.i
  %i.dj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1)
  %i.dk = bitcast <16 x i1> %i.dj to i16
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.e, label %.loopexit10, !prof !22

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.i", %.lr.ph.i
  %i.dm = add i16 %.sroa.06.0.i34.i, -1
  %i.dn = and i16 %i.dm, %.sroa.06.0.i34.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.dn, 0
  br i1 %.not.i.not.i, label %._crit_edge.split.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.split.i
  %i.do = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.dp = add i64 %.sroa.01.0.i.i, %i.do
  br label %.split.i

.loopexit:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i"
  %.pre-phi = phi i64 [ %i.ci, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i" ], [ %i.de, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.i" ]
  %i.dq = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %.pre-phi
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dq, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ds, align 8
  store i64 2, ptr %0, align 8
  br label %bb.g

.loopexit10:                                      ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !24005, !noalias !24006, !noundef !17
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.f, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h14be252801ede1baE.exit", !prof !22

bb.f:                                             ; preds = %.loopexit10
  %i.dw = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h445ebb60b0257be2E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i1 noundef zeroext true) ; 0 uses
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h14be252801ede1baE.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h14be252801ede1baE.exit": ; preds = %.loopexit10, %bb.f
  store i64 %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h14be252801ede1baE.exit", %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h0a320f296251e285E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !noundef !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val9 = load i64, ptr %i.b, align 8, !noundef !17
  %i.c = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h782ea02e9b9726f3E(i64 %.val, i64 %.val9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24029)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !24030, !noalias !24031, !noundef !17
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i", !prof !22

bb.b:                                             ; preds = %bb.a
  %i.g = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h74b8e924a24d8cebE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i" unwind label %bb.l ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !24028, !noalias !24032, !nonnull !17, !noundef !17 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !24028, !noalias !24032, !noundef !17 ; 4 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !24029, !noalias !24033 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !24029, !noalias !24033, !nonnull !17 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i"
  %.pn.i.i = phi i64 [ %i.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i" ], [ %i.al, %bb.e ]
  %.sroa.6.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i" ], [ %.sroa.6.120.i.i, %bb.e ]
  %.sroa.01.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i" ], [ %.sroa.01.122.i.i, %bb.e ]
  %i.m = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h2a151e618622a864E.exit.i" ], [ %i.ak, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !24034 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not25.i.i = icmp eq i16 %i.p, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i"
  %.sroa.05.026.i.i = phi i16 [ %i.aa, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i" ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.017.i.i, %i.r
  %i.t = and i64 %i.s, %.val7.i
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.u ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -16
  %.val4.i.i = load i64, ptr %i.w, align 8, !noalias !24035, !noundef !17
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, %.val4.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i", !prof !72

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.i": ; preds = %.lr.ph.i.i
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %.val3.i.i = load ptr, ptr %i.x, align 8, !noalias !24035, !nonnull !17, !noundef !17
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val3.i.i, i64 %.val1.i.i.i), !alias.scope !24036, !noalias !24035
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %bb.h, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i", !prof !66

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i", %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 0
  br i1 %.not13.i.i, label %bb.d, label %.thread.i.i, !prof !23

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.thread.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.i", %.lr.ph.i.i
  %i.z = add i16 %.sroa.05.026.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.05.026.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.ac, 0      ; 2 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.ae
  %i.af = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.ag = and i64 %i.af, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.ag, %bb.d ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i
  br label %bb.c

bb.f:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.6.121.i.i
  %i.an = load i8, ptr %i.am, align 1, !noalias !24029, !noundef !17 ; 2 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.g, label %bb.j, !prof !22

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !24029
  %i.ap = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %i.ar = icmp ne i16 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.at = zext nneg i16 %i.as to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.at
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !24037
  br label %bb.j

bb.h:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h44b303b64448eb42E.exit.i"
  %i.au = getelementptr inbounds i8, ptr %i.v, i64 -8
  store i64 %2, ptr %i.au, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24038)
  %.val.i10 = load i64, ptr %1, align 8, !alias.scope !24038 ; 2 uses
  %i.av = icmp eq i64 %.val.i10, 0
  br i1 %i.av, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !24038
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit": ; preds = %bb.i, %bb.h, %bb.j
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.aw = phi i8 [ %.pre, %bb.g ], [ %i.an, %bb.f ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.at, %bb.g ], [ %.sroa.6.121.i.i, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24039)
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.ay = and i8 %i.aw, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bb = and i64 %i.ba, %.val7.i
  store i8 %i.j, ptr %i.ax, align 1, !noalias !24037
  %i.bc = getelementptr i8, ptr %.val.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store i8 %i.j, ptr %i.bd, align 1, !noalias !24037
  %i.be = load <2 x i64>, ptr %i.d, align 8, !alias.scope !24039, !noalias !24040
  %i.bf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.az, i64 0
  %i.bg = sub <2 x i64> %i.be, %i.bf
  store <2 x i64> %i.bg, ptr %i.d, align 8, !alias.scope !24039, !noalias !24040
  %i.bh = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bi = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !24039
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bi, i64 -8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24039
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"

bb.k:                                             ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24041)
  %.val.i11 = load i64, ptr %1, align 8, !alias.scope !24041 ; 2 uses
  %i.bl = icmp eq i64 %.val.i11, 0
  br i1 %i.bl, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i12 = load ptr, ptr %i.bm, align 8, !alias.scope !24041, !nonnull !17, !noundef !17
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12, i64 noundef %.val.i11, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !24041
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 16, 33) %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val13 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !17
  %i.c = add i64 %.val14, 1                       ; 7 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, label %.lr.ph.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val13, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not9.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.29 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val13, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val13, i64 %.29, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.17 = phi i64 [ %.sroa.0.1, %bb.l ], [ 1, %._crit_edge.i ] ; 3 uses
  %.sroa.0.06 = phi i64 [ %.sroa.0.17, %bb.l ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !17
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.c, label %bb.l

end_hunk_3
