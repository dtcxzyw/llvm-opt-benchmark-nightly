Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.09?download=true
inline.NumInlined: 8525
inline.NumDeleted: 3292
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type30recursive_type_normalized_impl:bb.a
bb.p:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType30recursive_type_normalized_impl(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ao, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ci, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %5, i1 noundef zeroext %6)
  %i.cj = load i32, ptr %i.ao, align 4, !range !13644, !noundef !32
  %.not79 = icmp eq i32 %i.cj, -3
  br i1 %.not79, label %bb.cl, label %bb.ck

bb.q:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @_RNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20ProtocolInstanceType30recursive_type_normalized_impl(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ap, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ck, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %5, i1 noundef zeroext %6)
  %i.cl = load i32, ptr %i.ap, align 4, !range !13645, !noundef !32
  %.not78 = icmp eq i32 %i.cl, -2
  br i1 %.not78, label %bb.cn, label %bb.cm

bb.r:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instanceNtB5_17KnownInstanceType30recursive_type_normalized_impl(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ak, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.cm, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %5, i1 noundef zeroext %6)
  %i.cn = load i32, ptr %i.ak, align 4, !range !13646, !noundef !32
  %.not77 = icmp eq i32 %i.cn, -1
  br i1 %.not77, label %bb.cp, label %bb.co

bb.s:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit.thread
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !range !45, !noundef !32
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !noundef !32
  %i.cs = tail call { i32, i32 } @_RNvMsd_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_20PropertyInstanceType30recursive_type_normalized_impl(i32 noundef %i.cp, i32 noundef %i.cr, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %5, i1 noundef zeroext %6) ; 2 uses
  %i.ct = extractvalue { i32, i32 } %i.cs, 0      ; 2 uses
  %.not76 = icmp eq i32 %i.ct, 0
  br i1 %.not76, label %bb.cr, label %bb.cq

bb.t:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !range !45, !noundef !32 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !13648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !13648
  %.sroa.0107.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0107.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !noalias !13649
  store i64 0, ptr %i.af, align 8, !alias.scope !13650, !noalias !13648
  %.sroa.0107.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0107.sroa.4.0..sroa_idx, align 8, !alias.scope !13650, !noalias !13648
  %.sroa.0107.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %.sroa.0107.sroa.5.0..sroa_idx, align 8, !alias.scope !13650, !noalias !13648
  %.sroa.0107.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %2, ptr %.sroa.0107.sroa.6.0..sroa_idx, align 8, !alias.scope !13650, !noalias !13648
  %.sroa.0107.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %3, ptr %.sroa.0107.sroa.7.0..sroa_idx, align 8, !alias.scope !13650, !noalias !13648
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  store i8 0, ptr %.sroa.4108.0..sroa_idx, align 4, !alias.scope !13650, !noalias !13648
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 53
  store i8 1, ptr %.sroa.5111.0..sroa_idx, align 1, !alias.scope !13650, !noalias !13648
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 54 ; 2 uses
  store i16 1, ptr %.sroa.6114.0..sroa_idx, align 2, !alias.scope !13650, !noalias !13648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13651)
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !32, !alias.scope !13651, !noalias !13649, !nonnull !32 ; 2 uses
  %i.da = invoke noundef nonnull align 8 ptr %i.cz(ptr noundef nonnull %2)
          to label %.noexc100 unwind label %bb.ah, !inline_history !13606 ; 4 uses

.noexc100:                                        ; preds = %bb.t
  %i.db = load atomic i32, ptr @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB9_9UnionType10ingredient5CACHE acquire, align 4, !noalias !13652 ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %bb.u, label %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB7_9UnionType10ingredient.exit.i98, !prof !41

bb.u:                                             ; preds = %.noexc100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @25, i64 16, i1 false), !noalias !13652
  %i.dd = invoke noundef i32 @_RNvNtNtCs45bxiIjzMqg_5salsa16ingredient_cache3imp24get_or_create_index_slow(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB9_9UnionType10ingredient5CACHE, ptr noundef nonnull align 8 %i.da, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 81, i64 noundef 0)
          to label %.noexc101 unwind label %bb.ah

.noexc101:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13652
  br label %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB7_9UnionType10ingredient.exit.i98

_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB7_9UnionType10ingredient.exit.i98: ; preds = %.noexc101, %.noexc100
  %.sroa.0.0.i.i.i99 = phi i32 [ %i.dd, %.noexc101 ], [ %i.db, %.noexc100 ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !noalias !13652, !nonnull !32, !noundef !32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !13652, !noundef !32
  %i.di = zext i32 %.sroa.0.0.i.i.i99 to i64      ; 2 uses
  %i.dj = icmp ugt i64 %i.dh, %i.di
  call void @llvm.assume(i1 %i.dj), !noalias !13649
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.di
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !13652, !nonnull !32, !noundef !32
  %i.dm = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic9UnionTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.dl, ptr noundef nonnull align 8 %i.da, i32 noundef range(i32 1, 0) %i.cv, i32 noundef %i.cx)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB7_9UnionType10ingredient.exit.i98
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i8, ptr %i.dn, align 8, !range !36, !noalias !13652, !noundef !32
  call void @llvm.experimental.noalias.scope.decl(metadata !13653)
  store i8 %i.do, ptr %.sroa.6114.0..sroa_idx, align 2, !alias.scope !13654, !noalias !13655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 56, i1 false), !alias.scope !13656, !noalias !13648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !13648
  %i.dp = invoke noundef nonnull align 8 ptr %i.cz(ptr noundef nonnull %2)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !13610 ; 4 uses

.noexc:                                           ; preds = %bb.v
  %i.dq = load atomic i32, ptr @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB9_9UnionType10ingredient5CACHE acquire, align 4, !noalias !13657 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, -1
  br i1 %i.dr, label %bb.w, label %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB7_9UnionType10ingredient.exit.i, !prof !41

bb.w:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) @25, i64 16, i1 false), !noalias !13657
  %i.ds = invoke noundef i32 @_RNvNtNtCs45bxiIjzMqg_5salsa16ingredient_cache3imp24get_or_create_index_slow(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB9_9UnionType10ingredient5CACHE, ptr noundef nonnull align 8 %i.dp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 81, i64 noundef 0)
          to label %.noexc96 unwind label %.loopexit.split-lp

.noexc96:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13657
  br label %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB7_9UnionType10ingredient.exit.i

_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB7_9UnionType10ingredient.exit.i: ; preds = %.noexc96, %.noexc
  %.sroa.0.0.i.i.i = phi i32 [ %i.ds, %.noexc96 ], [ %i.dq, %.noexc ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !13657, !nonnull !32, !noundef !32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !13657, !noundef !32
  %i.dx = zext i32 %.sroa.0.0.i.i.i to i64        ; 2 uses
  %i.dy = icmp ugt i64 %i.dw, %i.dx
  call void @llvm.assume(i1 %i.dy), !noalias !13649
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dx
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !13657, !nonnull !32, !noundef !32
  %i.eb = invoke noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic9UnionTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.ea, ptr noundef nonnull align 8 %i.dp, i32 noundef range(i32 1, 0) %i.cv, i32 noundef %i.cx)
          to label %bb.x unwind label %.loopexit.split-lp ; 2 uses

bb.x:                                             ; preds = %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB7_9UnionType10ingredient.exit.i
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !13657, !nonnull !32, !noundef !32 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !13657, !noundef !32 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ee, 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx ; 3 uses
  %i.eg = icmp eq i64 %i.ee, 0
  br i1 %i.eg, label %.critedge189, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.x
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 54
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  br i1 %6, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %.outer.us
  %.sroa.01.0.i.ph183.us = phi ptr [ %i.eh, %.outer.us ], [ %i.ec, %.lr.ph.lr.ph ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.ph183.us, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !13648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !13648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.01.0.i.ph183.us, i64 16, i1 false), !noalias !13649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !13648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !noalias !13658
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type30recursive_type_normalized_impl(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.ad, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.w, i1 noundef zeroext true)
          to label %bb.y unwind label %.loopexit.split.us, !noalias !13649, !inline_history !13613

bb.y:                                             ; preds = %.lr.ph.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !13648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !13648
  %i.ei = load i32, ptr %i.ae, align 4, !range !39, !noalias !13648, !noundef !32
  %.not6.i.us = icmp eq i32 %i.ei, -1
  br i1 %.not6.i.us, label %.split.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !noalias !13648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !13648
  %.sroa.0139.0.copyload.us = load i32, ptr %i.ac, align 4, !noalias !13648 ; 2 uses
  %i.ej = icmp ne i32 %.sroa.0139.0.copyload.us, 17
  call void @llvm.assume(i1 %i.ej), !noalias !13649
  %i.ek = icmp eq i32 %.sroa.0139.0.copyload.us, 5
  br i1 %i.ek, label %bb.aa, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit93.thread.us

bb.aa:                                            ; preds = %bb.z
  %.sroa.0143.0.copyload.us = load i32, ptr %5, align 4, !noalias !13658 ; 2 uses
  %i.el = icmp ne i32 %.sroa.0143.0.copyload.us, 17
  call void @llvm.assume(i1 %i.el), !noalias !13649
  %i.em = icmp eq i32 %.sroa.0143.0.copyload.us, 5
  %i.en = load <2 x i32>, ptr %.sroa.4136.0..sroa_idx, align 4, !noalias !13658
  %i.eo = load <2 x i32>, ptr %.sroa.4140.0..sroa_idx, align 4, !noalias !13648
  %i.ep = icmp eq <2 x i32> %i.eo, %i.en          ; 2 uses
  %i.eq = extractelement <2 x i1> %i.ep, i64 1
  %or.cond172.us = select i1 %i.em, i1 %i.eq, i1 false
  %i.er = extractelement <2 x i1> %i.ep, i64 0
  %or.cond173.us = select i1 %or.cond172.us, i1 %i.er, i1 false
  br i1 %or.cond173.us, label %.split187.us, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit93.thread.us

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit93.thread.us: ; preds = %bb.aa, %bb.z
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.ac)
          to label %.outer.us unwind label %.loopexit.split.us, !noalias !13649, !inline_history !13613

.outer.us:                                        ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit93.thread.us
  %i.es = icmp eq ptr %i.eh, %i.ef
  br i1 %i.es, label %.critedge, label %.lr.ph.us

.loopexit.split.us:                               ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit93.thread.us, %.lr.ph.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.i87.ph184 = phi i1 [ false, %.outer ], [ true, %.lr.ph.lr.ph ]
  %.sroa.01.0.i.ph183 = phi ptr [ %i.et, %.outer ], [ %i.ec, %.lr.ph.lr.ph ]
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ae
  %.sroa.01.0.i180 = phi ptr [ %.sroa.01.0.i.ph183, %.lr.ph ], [ %i.et, %bb.ae ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i180, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.01.0.i180, i64 16, i1 false), !noalias !13649
  %.sroa.0131.0.copyload = load i32, ptr %i.ab, align 4, !noalias !13648 ; 2 uses
  %i.eu = icmp ne i32 %.sroa.0131.0.copyload, 17
  call void @llvm.assume(i1 %i.eu), !noalias !13649
  %i.ev = icmp eq i32 %.sroa.0131.0.copyload, 5
  br i1 %i.ev, label %bb.ac, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit95.thread

.outer._crit_edge:                                ; preds = %bb.ae
  br i1 %.sroa.0.0.i87.ph184, label %.critedge189, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %.sroa.0135.0.copyload = load i32, ptr %5, align 4, !noalias !13658 ; 2 uses
  %i.ew = icmp ne i32 %.sroa.0135.0.copyload, 17
  call void @llvm.assume(i1 %i.ew), !noalias !13649
  %i.ex = icmp eq i32 %.sroa.0135.0.copyload, 5
  %i.ey = load <2 x i32>, ptr %.sroa.4136.0..sroa_idx, align 4, !noalias !13658
  %i.ez = load <2 x i32>, ptr %.sroa.4132.0..sroa_idx, align 4, !noalias !13648
  %i.fa = icmp eq <2 x i32> %i.ez, %i.ey          ; 2 uses
  %i.fb = extractelement <2 x i1> %i.fa, i64 1
  %or.cond170 = select i1 %i.ex, i1 %i.fb, i1 false
  %i.fc = extractelement <2 x i1> %i.fa, i64 0
  %or.cond171 = select i1 %or.cond170, i1 %i.fc, i1 false
  br i1 %or.cond171, label %bb.ae, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit95.thread

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit95.thread: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !13648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !13648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !noalias !13658
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type30recursive_type_normalized_impl(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.z, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.ab, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.x, i1 noundef zeroext false)
          to label %bb.ad unwind label %.loopexit.split, !noalias !13649, !inline_history !13613

bb.ad:                                            ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit95.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !13648
  %i.fd = load i32, ptr %i.z, align 4, !range !39, !noalias !13648, !noundef !32
  %.not.i = icmp eq i32 %i.fd, -1
  %. = select i1 %.not.i, ptr %5, ptr %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %., i64 16, i1 false), !noalias !13658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !13648
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.aa)
          to label %.outer unwind label %.loopexit.split, !noalias !13649, !inline_history !13613

.outer:                                           ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13648
  %i.fe = icmp eq ptr %i.et, %i.ef
  br i1 %i.fe, label %.critedge, label %.lr.ph

bb.ae:                                            ; preds = %bb.ac
  store i8 0, ptr %.sroa.4122.0..sroa_idx, align 2, !noalias !13648
  %i.ff = icmp eq ptr %i.et, %i.ef
  br i1 %i.ff, label %.outer._crit_edge, label %bb.ab

.split.us:                                        ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !13648
  store i32 -1, ptr %0, align 4, !alias.scope !13647, !noalias !13659
  br label %bb.af

bb.af:                                            ; preds = %.split187.us, %.split.us
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(56) %i.ag), !noalias !13649, !inline_history !13613
  br label %_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_9UnionType30recursive_type_normalized_impl.exit

.split187.us:                                     ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !noalias !13659
  br label %bb.af

.critedge:                                        ; preds = %.outer, %.outer.us, %.critedge189, %.outer._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !13648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 56, i1 false), !noalias !13648
  call void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder5build(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.y), !noalias !13660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !13648
  br label %_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_9UnionType30recursive_type_normalized_impl.exit

.critedge189:                                     ; preds = %bb.x, %.outer._crit_edge
  invoke void @_RNvMs1_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builderNtB5_12UnionBuilder12add_in_place(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %5)
          to label %.critedge unwind label %.loopexit.split-lp, !noalias !13647, !inline_history !13613

common.resume:                                    ; preds = %bb.aw, %.loopexit, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.fh, %bb.ah ], [ %lpad.phi, %.loopexit ], [ %lpad.thr_comm155, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

.loopexit.split:                                  ; preds = %bb.ad, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit95.thread
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.w, %bb.v, %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB7_9UnionType10ingredient.exit.i, %.critedge189
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(56) %i.ag) #50
          to label %common.resume unwind label %bb.ag, !noalias !13649, !inline_history !13613

bb.ag:                                            ; preds = %bb.ah, %.loopexit
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !13649, !inline_history !13613
  unreachable

bb.ah:                                            ; preds = %bb.t, %bb.u, %_RNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB7_9UnionType10ingredient.exit.i98
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic7builder12UnionBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(56) %i.af) #50
          to label %common.resume unwind label %bb.ag, !noalias !13649, !inline_history !13613

_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_9UnionType30recursive_type_normalized_impl.exit: ; preds = %bb.af, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !13648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCsoTR8nlGN3X_18ty_python_semantic5types40recursive_type_normalize_type_guard_likeNtB2_10TypeIsTypeEB4_.exit

bb.ai:                                            ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type21same_divergent_marker.exit.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !range !45, !noundef !32 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !noundef !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.fm = zext i1 %6 to i8
  store i8 %i.fm, ptr %i.v, align 1, !noalias !13661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !13661
  br i1 %6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !13661
  %i.fn = tail call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB8_16IntersectionType8positiveDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %i.fj, i32 noundef %i.fl, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !13662, !inline_history !13617 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !13661, !nonnull !32, !noundef !32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !noalias !13661, !noundef !32
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fp, i64 %i.fr
  store ptr %i.fp, ptr %i.r, align 8, !noalias !13661
  %i.ft = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !noalias !13661
  %i.fu = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %2, ptr %i.fu, align 8, !noalias !13661
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %3, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !13661
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %4, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !13661
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %5, ptr %.sroa.66.0..sroa_idx.i, align 8, !noalias !13661
  %.sroa.77.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %.sroa.77.0..sroa_idx.i, align 8, !noalias !13661
  call void @_RINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6_8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtB1F_4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtB37_8adapters3map3MapINtNtB6_4iter4IterBO_ENCNvMsB_NtBQ_13set_theoreticNtB4V_16IntersectionType30recursive_type_normalized_impls_0EEBS_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13661
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !13661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !13661
  %i.fv = tail call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB8_16IntersectionType8positiveDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %i.fj, i32 noundef %i.fl, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !13662, !inline_history !13617 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !13661, !nonnull !32, !noundef !32 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !13661, !noundef !32
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %i.fz
  store ptr %i.fx, ptr %i.s, align 8, !noalias !13661
  %i.gb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ga, ptr %i.gb, align 8, !noalias !13661
  %i.gc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %2, ptr %i.gc, align 8, !noalias !13661
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %3, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13661
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %4, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !13661
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %5, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !13661
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.v, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !13661
  call void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCNvMsB_NtB1Q_13set_theoreticNtB2J_16IntersectionType30recursive_type_normalized_impl0EB1O_INtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B47_IB45_INtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetB1O_INtNtB6_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEINtNtNtB4_6traits7collect12FromIteratorIB45_B1O_EE9from_iterBQ_E0B5a_EB1S_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.t, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.s), !inline_history !13617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13661
  %i.gd = load i64, ptr %i.t, align 8, !range !40, !noalias !13661, !noundef !32
  %.not.i88 = icmp eq i64 %i.gd, -1
  br i1 %.not.i88, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.am, %bb.aj
  %i.ge = load i8, ptr %i.v, align 1, !range !36, !noalias !13661, !noundef !32
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.ap, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false), !noalias !13661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13661
  br label %bb.al

end_hunk_0
