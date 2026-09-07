Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.02?download=true
inline.NumInlined: 329
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE3new:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !134
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.l:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !134
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %i.al, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !132, !noalias !133
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.bb = icmp ult i64 %.sroa.5.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !143
  store ptr %.sroa.4.0.copyload, ptr %i.ac, align 8, !alias.scope !144, !noalias !145
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx.i5, align 8, !alias.scope !144, !noalias !145
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !145
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !145
  invoke void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB6_3VecdEINtB4_12SpecFromIterdINtNtB6_9into_iter8IntoIterdEE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ac)
          to label %.noexc7 unwind label %.body8.thread55

.body8.thread55:                                  ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body8.thread

.noexc7:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !143
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noalias !142, !noundef !5 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 1152921504606846976
  call void @llvm.assume(i1 %i.bg)
  %i.bh = mul i64 %i.al, %i.al
  %i.bi = icmp eq i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.n, label %bb.m, !prof !138

bb.m:                                             ; preds = %.noexc7
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 181 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
          to label %bb.s unwind label %bb.t, !noalias !142

bb.n:                                             ; preds = %.noexc7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !142
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !146, !noalias !147, !noundef !5 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 1152921504606846976
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp eq i64 %i.bf, %i.bk
  br i1 %i.bm, label %bb.v, label %bb.p, !prof !138

bb.o:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #10
          to label %.body8.thread unwind label %bb.r, !noalias !147

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #11
          to label %bb.q unwind label %bb.o, !noalias !148

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !147
  unreachable

bb.s:                                             ; preds = %bb.m
  unreachable

bb.t:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #10
          to label %.body8.thread unwind label %bb.u, !noalias !142

bb.u:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !142
  unreachable

bb.v:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23.sroa.6.i)
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.al, ptr %.sroa.443.0..sroa_idx, align 8, !noalias !152
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %i.al, ptr %.sroa.544.0..sroa_idx, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !149
  store i64 -1, ptr %i.aa, align 8, !noalias !149
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !155
  invoke void @_RINvMsg_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB6_7RawIterPddNtNtB8_9dimension3DynINtB10_5ConstKj1_EB1j_BY_E3newINtNtB8_11vec_storage10VecStoragedBY_B1j_EECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %bb.w unwind label %bb.cd, !noalias !156

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.copyload130.i.i = load ptr, ptr %i.s, align 8, !noalias !155
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !155
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !155
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !155 ; 2 uses
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.13.0.copyload.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !155 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !155
  %.not5.i.i.i73 = icmp eq i64 %.sroa.11.0.copyload.i.i, 0
  br i1 %.not5.i.i.i73, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i._crit_edge, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i

bb.x:                                             ; preds = %bb.y
  %i.br = add i64 %i.bx, -1                       ; 3 uses
  %i.bs = icmp eq i64 %i.br, 0
  %.idx.i.i = select i1 %i.bs, i64 0, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i
  %i.bu = getelementptr [8 x i8], ptr %i.by, i64 %.sroa.13.0.copyload.i.i
  %i.bv = select i1 %i.cb, ptr %i.bu, ptr %i.bz
  %i.bw = select i1 %i.cb, ptr %i.cc, ptr %i.ca
  %.not5.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not5.i.i.i, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i._crit_edge, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i

_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i: ; preds = %bb.w, %bb.x
  %i.bx = phi i64 [ %i.br, %bb.x ], [ %.sroa.11.0.copyload.i.i, %bb.w ]
  %i.by = phi ptr [ %i.bt, %bb.x ], [ %.sroa.0.0.copyload130.i.i, %bb.w ] ; 3 uses
  %i.bz = phi ptr [ %i.bv, %bb.x ], [ %.sroa.9.0.copyload.i.i, %bb.w ] ; 2 uses
  %i.ca = phi ptr [ %i.bw, %bb.x ], [ %.sroa.7.0.copyload.i.i, %bb.w ] ; 2 uses
  %i.cb = icmp eq ptr %i.by, %i.bz                ; 3 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %.sroa.13.0.copyload.i.i ; 2 uses
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.by   ; 3 uses
  %.not.not.not.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.not.not.not.i.i.i, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i._crit_edge, label %bb.y

bb.y:                                             ; preds = %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i
  %spec.select.i.val.i.i.i = load double, ptr %i.cd, align 8, !noalias !157, !noundef !5
  %i.ce = fcmp uno double %spec.select.i.val.i.i.i, 0.000000e+00
  br i1 %i.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra6linalg8cholesky8CholeskydNtNtNtB14_4base9dimension3DynEEECs8lmMd0ZksV9_6statrs.exit.i.i, label %bb.x

_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i._crit_edge: ; preds = %bb.x, %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i, %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.val.i.i = load i64, ptr %i.cf, align 8, !alias.scope !158, !noalias !156, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ab, align 8, !alias.scope !154, !noalias !159 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i._crit_edge
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 135 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
          to label %bb.ab unwind label %bb.aa, !noalias !156

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i109.i.i, %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body127.i.i

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.ce, %bb.cd, %.body127.i.i, %.body29
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !160
  unreachable

bb.ad:                                            ; preds = %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i._crit_edge
  %.sroa.4.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !155
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.v, align 8, !noalias !155
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx4.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i10, i64 32, i1 false), !noalias !159
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  %.val6.i = load i64, ptr %i.ci, align 8, !alias.scope !161, !noalias !156, !noundef !5 ; 38 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.val7.i = load i64, ptr %i.cj, align 8, !alias.scope !161, !noalias !156, !noundef !5
  %i.ck = icmp eq i64 %.val6.i, %.val7.i
  br i1 %i.ck, label %bb.ae, label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !162
  call void @llvm.experimental.noalias.scope.decl(metadata !163), !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !164
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v)
          to label %.noexc28 unwind label %bb.bp

.noexc28:                                         ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.g, align 8, !noalias !164
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !164 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !164
  %i.cl = icmp ult i64 %.val6.i, 2
  br i1 %i.cl, label %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc28
  %i.cm = add i64 %.val6.i, -1                    ; 2 uses
  %i.cn = add i64 %.val6.i, -2
  %xtraiter = and i64 %i.cm, 3                    ; 3 uses
  %i.co = icmp ult i64 %i.cn, 3
  br i1 %i.co, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.cm, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.04.014.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %i.db, %.lr.ph.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.cp = add nuw nsw i64 %.sroa.04.014.i.i.i, 1  ; 2 uses
  %i.cq = shl nuw i64 %.sroa.04.014.i.i.i, 3
  %i.cr = mul i64 %.sroa.04.014.i.i.i, %.val6.i
  %i.cs = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, i8 0, i64 %i.cq, i1 false), !noalias !165
  %i.ct = add nuw nsw i64 %.sroa.04.014.i.i.i, 2  ; 2 uses
  %i.cu = shl nuw i64 %i.cp, 3
  %i.cv = mul i64 %i.cp, %.val6.i
  %i.cw = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i8 0, i64 %i.cu, i1 false), !noalias !165
  %i.cx = add nuw i64 %.sroa.04.014.i.i.i, 3      ; 2 uses
  %i.cy = shl nuw i64 %i.ct, 3
  %i.cz = mul i64 %i.ct, %.val6.i
  %i.da = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.cz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.da, i8 0, i64 %i.cy, i1 false), !noalias !165
  %i.db = add nuw i64 %.sroa.04.014.i.i.i, 4      ; 2 uses
  %i.dc = shl nuw i64 %i.cx, 3
  %i.dd = mul i64 %i.cx, %.val6.i
  %i.de = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.dd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.de, i8 0, i64 %i.dc, i1 false), !noalias !165
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.04.014.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %i.db, %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.04.014.i.i.i.epil = phi i64 [ %i.df, %.lr.ph.i.i.i.epil ], [ %.sroa.04.014.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.df = add nuw i64 %.sroa.04.014.i.i.i.epil, 1
  %i.dg = shl nuw i64 %.sroa.04.014.i.i.i.epil, 3
  %i.dh = mul i64 %.sroa.04.014.i.i.i.epil, %.val6.i
  %i.di = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.dh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.di, i8 0, i64 %i.dg, i1 false), !noalias !165
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !57

_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %.noexc28
  store i64 %.sroa.0.0.copyload.i.i17, ptr %i.k, align 8, !alias.scope !163, !noalias !167
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !alias.scope !163, !noalias !167
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !163, !noalias !167
  %.sroa.56.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store i64 %.val6.i, ptr %.sroa.56.0..sroa_idx7.i.i, align 8, !alias.scope !163, !noalias !167
  %.sroa.6.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i64 %.val6.i, ptr %.sroa.6.0..sroa_idx9.i.i, align 8, !alias.scope !163, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !162
  call void @llvm.experimental.noalias.scope.decl(metadata !168), !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !169
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v)
          to label %.noexc.i unwind label %bb.ag, !noalias !156

.noexc.i:                                         ; preds = %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i
  %.sroa.0.0.copyload.i10.i = load i64, ptr %i.f, align 8, !noalias !169
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0.copyload.i12.i = load ptr, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !noalias !169 ; 5 uses
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0.copyload.i14.i = load i64, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !169
  %.not.i.i15.i = icmp eq i64 %.val6.i, 0         ; 2 uses
  br i1 %.not.i.i15.i, label %.loopexit.i, label %.lr.ph16.i.i.i

.lr.ph16.i.i.i:                                   ; preds = %.noexc.i
  %i.dj = shl i64 %.val6.i, 3                     ; 2 uses
  %i.dk = add i64 %i.dj, 8                        ; 3 uses
  %i.dl = add i64 %i.dj, -8                       ; 3 uses
  %xtraiter79 = and i64 %.val6.i, 1
  %i.dm = icmp eq i64 %.val6.i, 1
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph16.i.i.i.new

.lr.ph16.i.i.i.new:                               ; preds = %.lr.ph16.i.i.i
  %unroll_iter83 = and i64 %.val6.i, -2
  br label %bb.af

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i17.i, %bb.af
  %i.dn = add nuw i64 %.sroa.04.015.i.i.i, 2      ; 3 uses
  %i.do = icmp ult i64 %i.dn, %.val6.i
  br i1 %i.do, label %.lr.ph.i.i17.i.1, label %.loopexit.i.i.i.1

.lr.ph.i.i17.i.1:                                 ; preds = %.loopexit.i.i.i
  %i.dp = shl i64 %i.dt, 3
  %i.dq = sub i64 %i.dl, %i.dp
  %i.dr = mul i64 %i.dt, %i.dk
  %i.ds = getelementptr i8, ptr %.sroa.4.0.copyload.i12.i, i64 %i.dr
  %scevgep.i.i.i.1 = getelementptr i8, ptr %i.ds, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i.1, i8 0, i64 %i.dq, i1 false), !noalias !170
  br label %.loopexit.i.i.i.1

.loopexit.i.i.i.1:                                ; preds = %.lr.ph.i.i17.i.1, %.loopexit.i.i.i
  %niter84.next.1 = add nuw i64 %niter84, 2       ; 2 uses
  %niter84.ncmp.1 = icmp eq i64 %niter84.next.1, %unroll_iter83
  br i1 %niter84.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.af

bb.af:                                            ; preds = %.loopexit.i.i.i.1, %.lr.ph16.i.i.i.new
  %.sroa.04.015.i.i.i = phi i64 [ 0, %.lr.ph16.i.i.i.new ], [ %i.dn, %.loopexit.i.i.i.1 ] ; 4 uses
  %niter84 = phi i64 [ 0, %.lr.ph16.i.i.i.new ], [ %niter84.next.1, %.loopexit.i.i.i.1 ]
  %i.dt = or disjoint i64 %.sroa.04.015.i.i.i, 1  ; 3 uses
  %i.du = icmp ult i64 %i.dt, %.val6.i
  br i1 %i.du, label %.lr.ph.i.i17.i, label %.loopexit.i.i.i

.lr.ph.i.i17.i:                                   ; preds = %bb.af
  %i.dv = shl i64 %.sroa.04.015.i.i.i, 3
  %i.dw = sub i64 %i.dl, %i.dv
  %i.dx = mul i64 %.sroa.04.015.i.i.i, %i.dk
  %i.dy = getelementptr i8, ptr %.sroa.4.0.copyload.i12.i, i64 %i.dx
  %scevgep.i.i.i = getelementptr i8, ptr %i.dy, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i, i8 0, i64 %i.dw, i1 false), !noalias !170
  br label %.loopexit.i.i.i

.body34.i:                                        ; preds = %bb.bk, %bb.be, %.body.i22, %bb.ag
  %.pn3.i = phi { ptr, i32 } [ %.pn.i, %.body.i22 ], [ %i.hf, %bb.be ], [ %i.dz, %bb.ag ], [ %i.hx, %bb.bk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k) #10
          to label %.body29 unwind label %bb.bo, !noalias !156

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i43.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i33.i, %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.loopexit.i.i.i.1
  %lcmp.mod81.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod81.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph16.i.i.i
  %.sroa.04.015.i.i.i.epil.init = phi i64 [ 0, %.lr.ph16.i.i.i ], [ %i.dn, %.loopexit.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod82 = trunc i64 %.val6.i to i1
  call void @llvm.assume(i1 %lcmp.mod82)
  %i.ea = add nuw i64 %.sroa.04.015.i.i.i.epil.init, 1
  %i.eb = icmp ult i64 %i.ea, %.val6.i
  br i1 %i.eb, label %.lr.ph.i.i17.i.epil, label %.loopexit.i

.lr.ph.i.i17.i.epil:                              ; preds = %.epil.preheader
  %i.ec = shl i64 %.sroa.04.015.i.i.i.epil.init, 3
  %i.ed = sub i64 %i.dl, %i.ec
  %i.ee = mul i64 %.sroa.04.015.i.i.i.epil.init, %i.dk
  %i.ef = getelementptr i8, ptr %.sroa.4.0.copyload.i12.i, i64 %i.ee
  %scevgep.i.i.i.epil = getelementptr i8, ptr %i.ef, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i.epil, i8 0, i64 %i.ed, i1 false), !noalias !170
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i17.i.epil, %.epil.preheader, %.noexc.i
  store i64 %.sroa.0.0.copyload.i10.i, ptr %i.i, align 8, !alias.scope !168, !noalias !171
  %.sroa.4.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.4.0.copyload.i12.i, ptr %.sroa.4.0..sroa_idx3.i.i, align 8, !alias.scope !168, !noalias !171
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.5.0.copyload.i14.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !alias.scope !168, !noalias !171
  %.sroa.57.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.val6.i, ptr %.sroa.57.0..sroa_idx8.i.i, align 8, !alias.scope !168, !noalias !171
  %.sroa.6.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.val6.i, ptr %.sroa.6.0..sroa_idx10.i.i, align 8, !alias.scope !168, !noalias !171
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !173
  store i64 0, ptr %i.c, align 8, !noalias !173
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.eg, align 8, !noalias !173
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.eh, align 8, !noalias !173
  %i.ei = mul i64 %.val6.i, %.val6.i              ; 4 uses
  invoke void @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 0, i64 noundef %i.ei, i64 noundef 8, i64 noundef 8)
          to label %bb.ah unwind label %bb.an, !noalias !173

bb.ah:                                            ; preds = %.loopexit.i
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE11resize_withNvMs1_BI_BF_6uninitECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ei)
          to label %bb.ai unwind label %bb.an, !noalias !173

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !173
  call void @llvm.experimental.noalias.scope.decl(metadata !174), !noalias !156
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !174, !noalias !175, !noundef !5 ; 2 uses
  %i.el = icmp ult i64 %i.ek, 1152921504606846976
  call void @llvm.assume(i1 %i.el), !noalias !156
  %i.em = icmp eq i64 %i.ei, %i.ek
  br i1 %i.em, label %.preheader.i.i, label %bb.ak, !prof !138

bb.aj:                                            ; preds = %bb.ak
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #10
          to label %.body.i22 unwind label %bb.am, !noalias !175

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #11
          to label %bb.al unwind label %bb.aj, !noalias !176

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !175
  unreachable

bb.an:                                            ; preds = %bb.ah, %.loopexit.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #10
          to label %.body.i22 unwind label %bb.ao, !noalias !173

bb.ao:                                            ; preds = %bb.an
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !173
  unreachable

.preheader.i.i:                                   ; preds = %bb.ai
  %.sroa.0.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !177
  %.sroa.0.sroa.4.0.copyload.i = load ptr, ptr %i.eg, align 8, !noalias !177 ; 3 uses
  %.sroa.0.sroa.5.0.copyload.i = load i64, ptr %i.eh, align 8, !noalias !177 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !173
  br i1 %.not.i.i15.i, label %_RINvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB6_6MatrixdNtNtB8_9dimension3DynBX_INtNtB8_11vec_storage10VecStoragedBX_BX_EE19transpose_to_uninitNtNtB8_6uninit6UninitBX_BX_IB1m_INtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEBX_BX_EECs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.er = add i64 %.val6.i, -1
  %xtraiter86 = and i64 %.val6.i, 3               ; 3 uses
  %i.es = icmp ult i64 %i.er, 3
  %unroll_iter90 = and i64 %.val6.i, -4
  %lcmp.mod88.not = icmp eq i64 %xtraiter86, 0
  %lcmp.mod89 = icmp ne i64 %xtraiter86, 0
  br label %.lr.ph.i.i

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i.new
  br i1 %lcmp.mod88.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader85

.epil.preheader85:                                ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.05.015.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fm, %..loopexit_crit_edge.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %bb.ap
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE3new:bb.a
bb.cv:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %.body.i.i
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !226
  unreachable

bb.cw:                                            ; preds = %bb.cx, %bb.ch
  %.pn9.i.i = phi { ptr, i32 } [ %.pn10.i.i, %bb.cx ], [ %eh.lpad-body.i.i, %bb.ch ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y) #10
          to label %bb.cy unwind label %bb.cv, !noalias !210

bb.cx:                                            ; preds = %.thread.i.i, %bb.ch
  %.pn10.i.i = phi { ptr, i32 } [ %i.is, %.thread.i.i ], [ %eh.lpad-body.i.i, %bb.ch ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra6linalg8cholesky8CholeskydNtNtNtBI_4base9dimension3DynEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x) #10
          to label %bb.cw unwind label %bb.cv, !noalias !210

bb.cy:                                            ; preds = %bb.cw
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z) #10
          to label %.thread unwind label %bb.cv, !noalias !226

_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE13new_uncheckedB9_.exit.i: ; preds = %bb.cs
  %i.ku = trunc i64 %.val.i7.i to i32
  %i.kv = call double @llvm.powi.f64.i32(double f0x401921FB54442D18, i32 %i.ku)
  %i.kw = call double @llvm.fabs.f64(double %.sroa.0.0.i.i.i.i)
  %i.kx = fmul double %i.kv, %i.kw
  %i.ky = fdiv double 1.000000e+00, %i.kx
  %i.kz = call double @llvm.sqrt.f64(double %i.ky)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !202
  %.sroa.014.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.40..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !alias.scope !227, !noalias !228
  %.sroa.014.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.014.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false), !alias.scope !229, !noalias !230
  %.sroa.014.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.014.112..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.014.i, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.014.i, i64 152, i1 false), !noalias !197
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.kz, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  br label %bb.cz

bb.cz:                                            ; preds = %_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE13new_uncheckedB9_.exit.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  ret void

.body8.thread:                                    ; preds = %bb.t, %bb.o, %.body8.thread55
  %eh.lpad-body951 = phi { ptr, i32 } [ %i.bd, %.body8.thread55 ], [ %i.bp, %bb.t ], [ %i.bn, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aj) #10
          to label %.thread unwind label %bb.da

bb.da:                                            ; preds = %bb.db, %.body8.thread
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9
  unreachable

.thread:                                          ; preds = %bb.cy, %.body127.i.i, %bb.bx, %.body8.thread, %bb.db
  %.pn47 = phi { ptr, i32 } [ %eh.lpad-body, %bb.db ], [ %.pn9.i.i, %bb.cy ], [ %eh.lpad-body951, %.body8.thread ], [ %.pn66.i.i, %.body127.i.i ], [ %i.ij, %bb.bx ]
  resume { ptr, i32 } %.pn47

bb.db:                                            ; preds = %bb.d, %bb.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.aw, %bb.d ], [ %i.ay, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #10
          to label %.thread unwind label %bb.da
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalNtB2_23MultivariateNormalErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !232, !noundef !5
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !233, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !5, !nonnull !5 ; 4 uses
  switch i8 %i.a, label %default.unreachable48 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

default.unreachable48:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 49) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.j, %bb.f ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 26) #12
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 69) #12
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43) #12
  br label %bb.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBM_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBT_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.powi.f64.i32(double, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsg_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB6_7RawIterPddNtNtB8_9dimension3DynINtB10_5ConstKj1_EB1j_BY_E3newINtNtB8_11vec_storage10VecStoragedBY_B1j_EECs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB5_8CholeskydNtNtNtB9_4base9dimension3DynE12new_internalCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40), i64 noundef range(i64 0, 2), double) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsg_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB6_7RawIterPddNtNtB8_9dimension3DynBY_INtB10_5ConstKj1_EBY_E3newINtNtB8_11vec_storage10VecStoragedBY_BY_EECs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE11resize_withNvMs1_BI_BF_6uninitECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB6_3VecdEINtB4_12SpecFromIterdINtNtB6_9into_iter8IntoIterdEE9from_iterCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB4_2LUdNtNtNtB8_4base9dimension3DynBP_E3newCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef double @_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB5_2LUdNtNtNtB9_4base9dimension3DynBQ_E11determinantCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB4_8CholeskydNtNtNtB8_4base9dimension3DynE7inverseCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB4_8CholeskydNtNtNtB8_4base9dimension3DynE6unpackCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn }
attributes #12 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = distinct !{!6, !"_RNvMsc_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB1e_5ConstKj1_EINtNtB7_11vec_storage10VecStoragedB1c_B1x_EE8from_vecCs8lmMd0ZksV9_6statrs"}
!7 = distinct !{!7, !6, !"_RNvMsc_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB1e_5ConstKj1_EINtNtB7_11vec_storage10VecStoragedB1c_B1x_EE8from_vecCs8lmMd0ZksV9_6statrs: argument 0"}
!8 = distinct !{!8, !6, !"_RNvMsc_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB1e_5ConstKj1_EINtNtB7_11vec_storage10VecStoragedB1c_B1x_EE8from_vecCs8lmMd0ZksV9_6statrs: argument 1"}
!9 = distinct !{!9, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynE22allocate_from_iteratordINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs"}
!10 = distinct !{!10, !9, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynE22allocate_from_iteratordINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs: argument 1"}
!11 = distinct !{!11, !9, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynE22allocate_from_iteratordINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs: argument 0"}
!12 = distinct !{!12, !"_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtB8_3VecdEECs8lmMd0ZksV9_6statrs"}
!13 = distinct !{!13, !12, !"_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtB8_3VecdEECs8lmMd0ZksV9_6statrs: argument 1"}
!14 = distinct !{!14, !12, !"_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtB8_3VecdEECs8lmMd0ZksV9_6statrs: argument 0"}
!15 = distinct !{!15, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecdEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratordE9from_iterINtNtB6_9into_iter8IntoIterdEECs8lmMd0ZksV9_6statrs"}
!16 = distinct !{!16, !15, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecdEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratordE9from_iterINtNtB6_9into_iter8IntoIterdEECs8lmMd0ZksV9_6statrs: argument 1"}
!17 = distinct !{!17, !15, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecdEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratordE9from_iterINtNtB6_9into_iter8IntoIterdEECs8lmMd0ZksV9_6statrs: argument 0"}
!18 = distinct !{!18, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtB2_12IntoIterator9into_iterCs8lmMd0ZksV9_6statrs"}
!19 = distinct !{!19, !18, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtB2_12IntoIterator9into_iterCs8lmMd0ZksV9_6statrs: argument 1"}
!20 = distinct !{!20, !18, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtB2_12IntoIterator9into_iterCs8lmMd0ZksV9_6statrs: argument 0"}
!21 = distinct !{!21, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynINtB19_5ConstKj1_EE3newCs8lmMd0ZksV9_6statrs"}
!22 = distinct !{!22, !21, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynINtB19_5ConstKj1_EE3newCs8lmMd0ZksV9_6statrs: argument 1"}
!23 = distinct !{!23, !21, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynINtB19_5ConstKj1_EE3newCs8lmMd0ZksV9_6statrs: argument 0"}
!24 = distinct !{!24, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynB1J_E22allocate_from_iteratordINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs"}
!25 = distinct !{!25, !24, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynB1J_E22allocate_from_iteratordINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs: argument 1"}
!26 = distinct !{!26, !24, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynB1J_E22allocate_from_iteratordINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs: argument 0"}
!27 = distinct !{!27, !"_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtB8_3VecdEECs8lmMd0ZksV9_6statrs"}
!28 = distinct !{!28, !27, !"_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtB8_3VecdEECs8lmMd0ZksV9_6statrs: argument 1"}
!29 = distinct !{!29, !27, !"_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtB8_3VecdEECs8lmMd0ZksV9_6statrs: argument 0"}
!30 = distinct !{!30, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecdEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratordE9from_iterINtNtB6_9into_iter8IntoIterdEECs8lmMd0ZksV9_6statrs"}
!31 = distinct !{!31, !30, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecdEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratordE9from_iterINtNtB6_9into_iter8IntoIterdEECs8lmMd0ZksV9_6statrs: argument 1"}
!32 = distinct !{!32, !30, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecdEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratordE9from_iterINtNtB6_9into_iter8IntoIterdEECs8lmMd0ZksV9_6statrs: argument 0"}
!33 = distinct !{!33, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtB2_12IntoIterator9into_iterCs8lmMd0ZksV9_6statrs"}
!34 = distinct !{!34, !33, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtB2_12IntoIterator9into_iterCs8lmMd0ZksV9_6statrs: argument 1"}
!35 = distinct !{!35, !33, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdENtB2_12IntoIterator9into_iterCs8lmMd0ZksV9_6statrs: argument 0"}
!36 = distinct !{!36, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_E3newCs8lmMd0ZksV9_6statrs"}
!37 = distinct !{!37, !36, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_E3newCs8lmMd0ZksV9_6statrs: argument 1"}
!38 = distinct !{!38, !36, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_E3newCs8lmMd0ZksV9_6statrs: argument 0"}
!39 = distinct !{!39, !"_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE17new_from_nalgebraB9_"}
!40 = distinct !{!40, !39, !"_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE17new_from_nalgebraB9_: argument 2"}
!41 = distinct !{!41, !39, !"_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE17new_from_nalgebraB9_: argument 1"}
!42 = distinct !{!42, !39, !"_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE17new_from_nalgebraB9_: argument 0"}
!43 = distinct !{!43, !"_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_"}
!44 = distinct !{!44, !43, !"_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_: argument 1"}
!45 = distinct !{!45, !43, !"_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_: argument 2"}
!46 = distinct !{!46, !43, !"_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_: argument 3"}
!47 = distinct !{!47, !43, !"_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_: argument 0"}
!48 = distinct !{!48, !"_RINvYINtNtNtCsbADZB03g5jP_8nalgebra4base4iter10MatrixIterdNtNtB8_9dimension3DynINtBW_5ConstKj1_EINtNtB8_11vec_storage10VecStoragedBU_B1f_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3any5checkRdNCINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsBU_E0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEEB3O_"}
!49 = distinct !{!49, !48, !"_RINvYINtNtNtCsbADZB03g5jP_8nalgebra4base4iter10MatrixIterdNtNtB8_9dimension3DynINtBW_5ConstKj1_EINtNtB8_11vec_storage10VecStoragedBU_B1f_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2d_3any5checkRdNCINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsBU_E0E0INtNtNtB2l_3ops12control_flow11ControlFlowuEEB3O_: argument 0"}
!50 = distinct !{!50, !"_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_"}
!51 = distinct !{!51, !50, !"_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_: argument 0"}
!52 = distinct !{!52, !"_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs"}
!53 = distinct !{!53, !52, !"_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs: argument 0"}
!54 = distinct !{!54, !52, !"_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs: argument 1"}
!55 = distinct !{!55, !"_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs"}
!56 = distinct !{!56, !55, !"_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_upper_triangleCs8lmMd0ZksV9_6statrs: argument 0"}
!57 = distinct !{!57, !166}
!58 = distinct !{!58, !"_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14upper_triangleCs8lmMd0ZksV9_6statrs"}
!59 = distinct !{!59, !58, !"_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14upper_triangleCs8lmMd0ZksV9_6statrs: argument 0"}
!60 = distinct !{!60, !58, !"_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14upper_triangleCs8lmMd0ZksV9_6statrs: argument 1"}
!61 = distinct !{!61, !"_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_lower_triangleCs8lmMd0ZksV9_6statrs"}
!62 = distinct !{!62, !61, !"_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11vec_storage10VecStoragedB16_B16_EE19fill_lower_triangleCs8lmMd0ZksV9_6statrs: argument 0"}
!63 = distinct !{!63, !"_RNvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynBW_INtNtB7_11vec_storage10VecStoragedBW_BW_EE9transposeCs8lmMd0ZksV9_6statrs"}
!64 = distinct !{!64, !63, !"_RNvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynBW_INtNtB7_11vec_storage10VecStoragedBW_BW_EE9transposeCs8lmMd0ZksV9_6statrs: argument 0"}
!65 = distinct !{!65, !63, !"_RNvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynBW_INtNtB7_11vec_storage10VecStoragedBW_BW_EE9transposeCs8lmMd0ZksV9_6statrs: argument 1"}
!66 = distinct !{!66, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynB1J_E15allocate_uninitdECs8lmMd0ZksV9_6statrs"}
!67 = distinct !{!67, !66, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynB1J_E15allocate_uninitdECs8lmMd0ZksV9_6statrs: argument 0"}
!68 = distinct !{!68, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdENtNtB7_9dimension3DynB23_E3newCs8lmMd0ZksV9_6statrs"}
!69 = distinct !{!69, !68, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdENtNtB7_9dimension3DynB23_E3newCs8lmMd0ZksV9_6statrs: argument 1"}
!70 = distinct !{!70, !68, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStorageINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdENtNtB7_9dimension3DynB23_E3newCs8lmMd0ZksV9_6statrs: argument 0"}
!71 = distinct !{!71, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!72 = distinct !{!72, !71, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!73 = distinct !{!73, !"_RINvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB6_6MatrixdNtNtB8_9dimension3DynBX_INtNtB8_11vec_storage10VecStoragedBX_BX_EE19transpose_to_uninitNtNtB8_6uninit6UninitBX_BX_IB1m_INtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEBX_BX_EECs8lmMd0ZksV9_6statrs"}
!74 = distinct !{!74, !73, !"_RINvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB6_6MatrixdNtNtB8_9dimension3DynBX_INtNtB8_11vec_storage10VecStoragedBX_BX_EE19transpose_to_uninitNtNtB8_6uninit6UninitBX_BX_IB1m_INtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEBX_BX_EECs8lmMd0ZksV9_6statrs: argument 1"}
!75 = distinct !{!75, !73, !"_RINvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB6_6MatrixdNtNtB8_9dimension3DynBX_INtNtB8_11vec_storage10VecStoragedBX_BX_EE19transpose_to_uninitNtNtB8_6uninit6UninitBX_BX_IB1m_INtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEBX_BX_EECs8lmMd0ZksV9_6statrs: argument 0"}
!76 = distinct !{!76, !"_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base6uninitNtB4_6UninitINtB4_10InitStatusdE4initCs8lmMd0ZksV9_6statrs"}
!77 = distinct !{!77, !76, !"_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base6uninitNtB4_6UninitINtB4_10InitStatusdE4initCs8lmMd0ZksV9_6statrs: argument 0"}
!78 = distinct !{!78, !166}
!79 = distinct !{!79, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynB1J_E11assume_initdECs8lmMd0ZksV9_6statrs"}
!80 = distinct !{!80, !79, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynB1J_E11assume_initdECs8lmMd0ZksV9_6statrs: argument 1"}
!81 = distinct !{!81, !79, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynB1J_E11assume_initdECs8lmMd0ZksV9_6statrs: argument 0"}
!82 = distinct !{!82, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_E3newCs8lmMd0ZksV9_6statrs"}
!83 = distinct !{!83, !82, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_E3newCs8lmMd0ZksV9_6statrs: argument 0"}
!84 = distinct !{!84, !82, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_E3newCs8lmMd0ZksV9_6statrs: argument 1"}
!85 = distinct !{!85, !"_RNvXst_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynBW_INtNtB7_11vec_storage10VecStoragedBW_BW_EENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8lmMd0ZksV9_6statrs"}
!86 = distinct !{!86, !85, !"_RNvXst_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynBW_INtNtB7_11vec_storage10VecStoragedBW_BW_EENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8lmMd0ZksV9_6statrs: argument 0"}
!87 = distinct !{!87, !85, !"_RNvXst_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynBW_INtNtB7_11vec_storage10VecStoragedBW_BW_EENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8lmMd0ZksV9_6statrs: argument 1"}
!88 = distinct !{!88, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3zip3ZipINtNtNtCsbADZB03g5jP_8nalgebra4base4iter10MatrixIterdNtNtBW_9dimension3DynB1I_INtNtBW_11vec_storage10VecStoragedB1I_B1I_EEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2T_3all5checkTRdB3X_ENCNvXst_NtBW_6matrixINtB4c_6MatrixdB1I_B1I_B27_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs8lmMd0ZksV9_6statrs"}
!89 = distinct !{!89, !88, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3zip3ZipINtNtNtCsbADZB03g5jP_8nalgebra4base4iter10MatrixIterdNtNtBW_9dimension3DynB1I_INtNtBW_11vec_storage10VecStoragedB1I_B1I_EEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2T_3all5checkTRdB3X_ENCNvXst_NtBW_6matrixINtB4c_6MatrixdB1I_B1I_B27_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs8lmMd0ZksV9_6statrs: argument 0"}
!90 = distinct !{!90, !"_RINvYINtNtNtCsbADZB03g5jP_8nalgebra4base4iter10MatrixIterdNtNtB8_9dimension3DynBU_INtNtB8_11vec_storage10VecStoragedBU_BU_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1Y_3any5checkRdNCINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covBU_E0E0INtNtNtB26_3ops12control_flow11ControlFlowuEEB3z_"}
!91 = distinct !{!91, !90, !"_RINvYINtNtNtCsbADZB03g5jP_8nalgebra4base4iter10MatrixIterdNtNtB8_9dimension3DynBU_INtNtB8_11vec_storage10VecStoragedBU_BU_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1Y_3any5checkRdNCINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covBU_E0E0INtNtNtB26_3ops12control_flow11ControlFlowuEEB3z_: argument 0"}
!92 = distinct !{!92, !"_RNvXsl_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs"}
!93 = distinct !{!93, !92, !"_RNvXsl_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs: argument 0"}
!94 = distinct !{!94, !92, !"_RNvXsl_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs: argument 1"}
!95 = distinct !{!95, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtB12_9dimension3DynB1L_INtNtB12_11vec_storage10VecStoragedB1L_B1L_EEEECs8lmMd0ZksV9_6statrs"}
!96 = distinct !{!96, !95, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtB12_9dimension3DynB1L_INtNtB12_11vec_storage10VecStoragedB1L_B1L_EEEECs8lmMd0ZksV9_6statrs: argument 0"}
!97 = distinct !{!97, !"_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE13new_uncheckedB9_"}
!98 = distinct !{!98, !97, !"_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE13new_uncheckedB9_: argument 0"}
!99 = distinct !{!99, !97, !"_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE13new_uncheckedB9_: argument 1"}
!100 = distinct !{!100, !97, !"_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE13new_uncheckedB9_: argument 2"}
!101 = distinct !{!101, !97, !"_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE13new_uncheckedB9_: argument 3"}
!102 = distinct !{!102, !"_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal30density_distribution_pdf_constNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_"}
!103 = distinct !{!103, !102, !"_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal30density_distribution_pdf_constNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_: argument 0"}
!104 = distinct !{!104, !"_RNvMNtNtCsbADZB03g5jP_8nalgebra6linalg11determinantINtNtNtB6_4base6matrix6MatrixdNtNtBS_9dimension3DynB1h_INtNtBS_11vec_storage10VecStoragedB1h_B1h_EE11determinantCs8lmMd0ZksV9_6statrs"}
!105 = distinct !{!105, !104, !"_RNvMNtNtCsbADZB03g5jP_8nalgebra6linalg11determinantINtNtNtB6_4base6matrix6MatrixdNtNtBS_9dimension3DynB1h_INtNtBS_11vec_storage10VecStoragedB1h_B1h_EE11determinantCs8lmMd0ZksV9_6statrs: argument 0"}
!106 = distinct !{!106, !"_RNvXs5_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_EINtNtB7_7storage7StoragedB17_B17_E11clone_ownedCs8lmMd0ZksV9_6statrs"}
!107 = distinct !{!107, !106, !"_RNvXs5_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_EINtNtB7_7storage7StoragedB17_B17_E11clone_ownedCs8lmMd0ZksV9_6statrs: argument 0"}
!108 = distinct !{!108, !"_RNvXsl_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs"}
!109 = distinct !{!109, !108, !"_RNvXsl_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs: argument 0"}
!110 = distinct !{!110, !106, !"_RNvXs5_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_EINtNtB7_7storage7StoragedB17_B17_E11clone_ownedCs8lmMd0ZksV9_6statrs: argument 1"}
!111 = distinct !{!111, !108, !"_RNvXsl_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStoragedNtNtB7_9dimension3DynB17_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs: argument 1"}
!112 = distinct !{!112, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!113 = distinct !{!113, !112, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!114 = distinct !{!114, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!115 = distinct !{!115, !114, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!116 = distinct !{!116, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!117 = distinct !{!117, !116, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!118 = distinct !{!118, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!119 = distinct !{!119, !118, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!120 = distinct !{!120, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!121 = distinct !{!121, !120, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!122 = distinct !{!122, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!123 = distinct !{!123, !122, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!124 = distinct !{!124, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!125 = distinct !{!125, !124, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!126 = distinct !{!126, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!127 = distinct !{!127, !126, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!128 = distinct !{!128, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!129 = distinct !{!129, !128, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!130 = distinct !{!130, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!131 = distinct !{!131, !130, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!132 = !{!7}
!133 = !{!8}
!134 = !{!11, !10, !7, !8}
!135 = !{!17, !16, !14, !13, !11, !10, !7, !8}
!136 = !{!20, !19}
!137 = !{!17, !14, !11, !10, !7, !8}
!138 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!139 = !{!22}
!140 = !{!23, !11, !10, !7, !8}
!141 = !{!23, !22, !11, !10, !7, !8}
!142 = !{!26, !25}
!143 = !{!32, !31, !29, !28, !26, !25}
!144 = !{!35, !34}
!145 = !{!32, !29, !26, !25}
!146 = !{!37}
!147 = !{!38, !26, !25}
!148 = !{!38, !37, !26, !25}
!149 = !{!42, !41, !40}
!150 = !{!42}
!151 = !{!41}
!152 = !{!42, !41}
!153 = !{!44}
!154 = !{!45}
!155 = !{!47, !44, !45, !46, !42, !41, !40}
!156 = !{!47, !45, !46, !42, !40}
!157 = !{!49, !47, !45, !46, !42, !40}
!158 = !{!44, !41}
!159 = !{!47, !44, !46, !42, !41, !40}
!160 = !{!47, !42, !40}
!161 = !{!51}
!162 = !{!51, !47, !45, !46, !42, !40}
!163 = !{!53}
!164 = !{!53, !54, !51, !47, !45, !46, !42, !40}
!165 = !{!56, !53, !47, !45, !46, !42, !40}
!166 = !{!"llvm.loop.unroll.disable"}
!167 = !{!54, !51, !47, !45, !46, !42, !40}
!168 = !{!59}
!169 = !{!59, !60, !51, !47, !45, !46, !42, !40}
!170 = !{!62, !59, !47, !45, !46, !42, !40}
!171 = !{!60, !51, !47, !45, !46, !42, !40}
!172 = !{!64}
!173 = !{!67, !64, !65, !47, !45, !46, !42, !40}
!174 = !{!69}
!175 = !{!70, !67, !64, !65, !47, !45, !46, !42, !40}
!176 = !{!70, !69, !67, !64, !65, !47, !45, !46, !42, !40}
!177 = !{!64, !65, !47, !45, !46, !42, !40}
!178 = !{!72}
!179 = !{!75, !74, !64, !65, !47, !45, !46, !42, !40}
end_hunk_1
