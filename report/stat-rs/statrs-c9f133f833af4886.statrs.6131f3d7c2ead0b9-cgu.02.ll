Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.02?download=true
inline.NumInlined: 329
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE3new:bb.a
bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #11
          to label %bb.f unwind label %bb.d, !noalias !139

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !138
  unreachable

bb.h:                                             ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #10
          to label %bb.da unwind label %bb.j, !noalias !132

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !132
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.l:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !132
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %i.al, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !130
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.bb = icmp ult i64 %.sroa.5.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !141
  store ptr %.sroa.4.0.copyload, ptr %i.ac, align 8, !alias.scope !142, !noalias !143
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx.i5, align 8, !alias.scope !142, !noalias !143
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !143
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !143
  invoke void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB6_3VecdEINtB4_12SpecFromIterdINtNtB6_9into_iter8IntoIterdEE9from_iterCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ac)
          to label %.noexc7 unwind label %.body8.thread55

.body8.thread55:                                  ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body8.thread

.noexc7:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !141
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noalias !140, !noundef !5 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 1152921504606846976
  call void @llvm.assume(i1 %i.bg)
  %i.bh = mul i64 %i.al, %i.al
  %i.bi = icmp eq i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.n, label %bb.m, !prof !136

bb.m:                                             ; preds = %.noexc7
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 181 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #11
          to label %bb.s unwind label %bb.t, !noalias !140

bb.n:                                             ; preds = %.noexc7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !140
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !144, !noalias !140, !noundef !5 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 1152921504606846976
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp eq i64 %i.bf, %i.bk
  br i1 %i.bm, label %bb.v, label %bb.p, !prof !136

bb.o:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #10
          to label %.body8.thread unwind label %bb.r, !noalias !145

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #11
          to label %bb.q unwind label %bb.o, !noalias !146

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !145
  unreachable

bb.s:                                             ; preds = %bb.m
  unreachable

bb.t:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #10
          to label %.body8.thread unwind label %bb.u, !noalias !140

bb.u:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !140
  unreachable

bb.v:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23.sroa.6.i)
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.al, ptr %.sroa.443.0..sroa_idx, align 8, !noalias !150
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %i.al, ptr %.sroa.544.0..sroa_idx, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !147
  store i64 -1, ptr %i.aa, align 8, !noalias !147
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !153
  invoke void @_RINvMsg_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB6_7RawIterPddNtNtB8_9dimension3DynINtB10_5ConstKj1_EB1j_BY_E3newINtNtB8_11vec_storage10VecStoragedBY_B1j_EECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %bb.w unwind label %bb.cc, !noalias !154

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.copyload130.i.i = load ptr, ptr %i.s, align 8, !noalias !153
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !153
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !153
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !153 ; 2 uses
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.13.0.copyload.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !153 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !153
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
  %spec.select.i.val.i.i.i = load double, ptr %i.cd, align 8, !noalias !155, !noundef !5
  %i.ce = fcmp uno double %spec.select.i.val.i.i.i, 0.000000e+00
  br i1 %i.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra6linalg8cholesky8CholeskydNtNtNtB14_4base9dimension3DynEEECs8lmMd0ZksV9_6statrs.exit.i.i, label %bb.x

_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i._crit_edge: ; preds = %bb.x, %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i, %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.val.i.i = load i64, ptr %i.cf, align 8, !alias.scope !156, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ab, align 8, !alias.scope !152, !noalias !147 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i._crit_edge
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 135 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #11
          to label %bb.aa unwind label %3, !noalias !154

3:                                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i109.i.i, %bb.z
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %.body127.i.i

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.cd, %bb.cc, %.body127.i.i, %.body29
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !157
  unreachable

bb.ac:                                            ; preds = %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynINtBZ_5ConstKj1_EB1i_BX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i._crit_edge
  %.sroa.4.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !153
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.v, align 8, !noalias !153
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx4.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i10, i64 32, i1 false), !noalias !158
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  %.val6.i = load i64, ptr %i.ch, align 8, !alias.scope !159, !noalias !154, !noundef !5 ; 38 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.val7.i = load i64, ptr %i.ci, align 8, !alias.scope !159, !noalias !154, !noundef !5
  %i.cj = icmp eq i64 %.val6.i, %.val7.i
  br i1 %i.cj, label %bb.ad, label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !160
  call void @llvm.experimental.noalias.scope.decl(metadata !161), !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !162
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v)
          to label %.noexc28 unwind label %bb.bo

.noexc28:                                         ; preds = %bb.ad
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.g, align 8, !noalias !162
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !162 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !162
  %i.ck = icmp ult i64 %.val6.i, 2
  br i1 %i.ck, label %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc28
  %i.cl = add i64 %.val6.i, -1                    ; 2 uses
  %i.cm = add i64 %.val6.i, -2
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 3
  br i1 %i.cn, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.04.014.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %i.da, %.lr.ph.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.co = add nuw nsw i64 %.sroa.04.014.i.i.i, 1  ; 2 uses
  %i.cp = shl nuw i64 %.sroa.04.014.i.i.i, 3
  %i.cq = mul i64 %.sroa.04.014.i.i.i, %.val6.i
  %i.cr = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.cq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, i8 0, i64 %i.cp, i1 false), !noalias !163
  %i.cs = add nuw nsw i64 %.sroa.04.014.i.i.i, 2  ; 2 uses
  %i.ct = shl nuw i64 %i.co, 3
  %i.cu = mul i64 %i.co, %.val6.i
  %i.cv = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.cu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, i8 0, i64 %i.ct, i1 false), !noalias !163
  %i.cw = add nuw i64 %.sroa.04.014.i.i.i, 3      ; 2 uses
  %i.cx = shl nuw i64 %i.cs, 3
  %i.cy = mul i64 %i.cs, %.val6.i
  %i.cz = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.cy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cz, i8 0, i64 %i.cx, i1 false), !noalias !163
  %i.da = add nuw i64 %.sroa.04.014.i.i.i, 4      ; 2 uses
  %i.db = shl nuw i64 %i.cw, 3
  %i.dc = mul i64 %i.cw, %.val6.i
  %i.dd = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.dc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dd, i8 0, i64 %i.db, i1 false), !noalias !163
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.04.014.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %i.da, %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.04.014.i.i.i.epil = phi i64 [ %i.de, %.lr.ph.i.i.i.epil ], [ %.sroa.04.014.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.de = add nuw i64 %.sroa.04.014.i.i.i.epil, 1
  %i.df = shl nuw i64 %.sroa.04.014.i.i.i.epil, 3
  %i.dg = mul i64 %.sroa.04.014.i.i.i.epil, %.val6.i
  %i.dh = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.dg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, i8 0, i64 %i.df, i1 false), !noalias !163
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !57

_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %.noexc28
  store i64 %.sroa.0.0.copyload.i.i17, ptr %i.k, align 8, !alias.scope !161, !noalias !160
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !alias.scope !161, !noalias !160
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !161, !noalias !160
  %.sroa.56.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store i64 %.val6.i, ptr %.sroa.56.0..sroa_idx7.i.i, align 8, !alias.scope !161, !noalias !160
  %.sroa.6.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i64 %.val6.i, ptr %.sroa.6.0..sroa_idx9.i.i, align 8, !alias.scope !161, !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !160
  call void @llvm.experimental.noalias.scope.decl(metadata !165), !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !166
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v)
          to label %.noexc.i unwind label %bb.af, !noalias !154

.noexc.i:                                         ; preds = %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i
  %.sroa.0.0.copyload.i10.i = load i64, ptr %i.f, align 8, !noalias !166
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0.copyload.i12.i = load ptr, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !noalias !166 ; 5 uses
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0.copyload.i14.i = load i64, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !166
  %.not.i.i15.i = icmp eq i64 %.val6.i, 0         ; 2 uses
  br i1 %.not.i.i15.i, label %.loopexit.i, label %.lr.ph16.i.i.i

.lr.ph16.i.i.i:                                   ; preds = %.noexc.i
  %i.di = shl i64 %.val6.i, 3                     ; 2 uses
  %i.dj = add i64 %i.di, 8                        ; 3 uses
  %i.dk = add i64 %i.di, -8                       ; 3 uses
  %xtraiter79 = and i64 %.val6.i, 1
  %i.dl = icmp eq i64 %.val6.i, 1
  br i1 %i.dl, label %.epil.preheader, label %.lr.ph16.i.i.i.new

.lr.ph16.i.i.i.new:                               ; preds = %.lr.ph16.i.i.i
  %unroll_iter83 = and i64 %.val6.i, -2
  br label %bb.ae

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i17.i, %bb.ae
  %i.dm = add nuw i64 %.sroa.04.015.i.i.i, 2      ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %.val6.i
  br i1 %i.dn, label %.lr.ph.i.i17.i.1, label %.loopexit.i.i.i.1

.lr.ph.i.i17.i.1:                                 ; preds = %.loopexit.i.i.i
  %i.do = shl i64 %i.ds, 3
  %i.dp = sub i64 %i.dk, %i.do
  %i.dq = mul i64 %i.ds, %i.dj
  %i.dr = getelementptr i8, ptr %.sroa.4.0.copyload.i12.i, i64 %i.dq
  %scevgep.i.i.i.1 = getelementptr i8, ptr %i.dr, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i.1, i8 0, i64 %i.dp, i1 false), !noalias !167
  br label %.loopexit.i.i.i.1

.loopexit.i.i.i.1:                                ; preds = %.lr.ph.i.i17.i.1, %.loopexit.i.i.i
  %niter84.next.1 = add nuw i64 %niter84, 2       ; 2 uses
  %niter84.ncmp.1 = icmp eq i64 %niter84.next.1, %unroll_iter83
  br i1 %niter84.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i.i.1, %.lr.ph16.i.i.i.new
  %.sroa.04.015.i.i.i = phi i64 [ 0, %.lr.ph16.i.i.i.new ], [ %i.dm, %.loopexit.i.i.i.1 ] ; 4 uses
  %niter84 = phi i64 [ 0, %.lr.ph16.i.i.i.new ], [ %niter84.next.1, %.loopexit.i.i.i.1 ]
  %i.ds = or disjoint i64 %.sroa.04.015.i.i.i, 1  ; 3 uses
  %i.dt = icmp ult i64 %i.ds, %.val6.i
  br i1 %i.dt, label %.lr.ph.i.i17.i, label %.loopexit.i.i.i

.lr.ph.i.i17.i:                                   ; preds = %bb.ae
  %i.du = shl i64 %.sroa.04.015.i.i.i, 3
  %i.dv = sub i64 %i.dk, %i.du
  %i.dw = mul i64 %.sroa.04.015.i.i.i, %i.dj
  %i.dx = getelementptr i8, ptr %.sroa.4.0.copyload.i12.i, i64 %i.dw
  %scevgep.i.i.i = getelementptr i8, ptr %i.dx, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i, i8 0, i64 %i.dv, i1 false), !noalias !167
  br label %.loopexit.i.i.i

.body34.i:                                        ; preds = %bb.bj, %bb.bd, %.body.i22, %bb.af
  %.pn3.i = phi { ptr, i32 } [ %.pn.i, %.body.i22 ], [ %i.he, %bb.bd ], [ %i.dy, %bb.af ], [ %i.hw, %bb.bj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k) #10
          to label %.body29 unwind label %bb.bn, !noalias !154

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i43.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i33.i, %_RNvMNtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB4_6matrix6MatrixdNtNtB4_9dimension3DynB13_INtNtB4_11vec_storage10VecStoragedB13_B13_EE14lower_triangleCs8lmMd0ZksV9_6statrs.exit.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.loopexit.i.i.i.1
  %lcmp.mod81.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod81.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph16.i.i.i
  %.sroa.04.015.i.i.i.epil.init = phi i64 [ 0, %.lr.ph16.i.i.i ], [ %i.dm, %.loopexit.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod82 = trunc i64 %.val6.i to i1
  call void @llvm.assume(i1 %lcmp.mod82)
  %i.dz = add nuw i64 %.sroa.04.015.i.i.i.epil.init, 1
  %i.ea = icmp ult i64 %i.dz, %.val6.i
  br i1 %i.ea, label %.lr.ph.i.i17.i.epil, label %.loopexit.i

.lr.ph.i.i17.i.epil:                              ; preds = %.epil.preheader
  %i.eb = shl i64 %.sroa.04.015.i.i.i.epil.init, 3
  %i.ec = sub i64 %i.dk, %i.eb
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE3new:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !160
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit40.i unwind label %bb.bf, !noalias !154

bb.bf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit37.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %.body29 unwind label %bb.bg, !noalias !154

bb.bg:                                            ; preds = %bb.bf
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !154
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit40.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit37.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %.noexc31 unwind label %bb.bo

.noexc31:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !160
  invoke void @_RINvMsg_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB6_7RawIterPddNtNtB8_9dimension3DynBY_INtB10_5ConstKj1_EBY_E3newINtNtB8_11vec_storage10VecStoragedBY_BY_EECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v)
          to label %.noexc32 unwind label %bb.bo

.noexc32:                                         ; preds = %.noexc31
  %.sroa.0.0.copyload.i26 = load ptr, ptr %i.h, align 8, !noalias !160
  %.sroa.6.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i27, align 8, !noalias !160
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !160
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !160 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !160 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !160
  %.not5.i.i76 = icmp eq i64 %.sroa.10.0.copyload.i, 0
  br i1 %.not5.i.i76, label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynBX_INtBZ_5ConstKj1_EBX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i

bb.bh:                                            ; preds = %bb.bi
  %i.hi = add i64 %i.ho, -1                       ; 3 uses
  %i.hj = icmp eq i64 %i.hi, 0
  %.idx.i = select i1 %i.hj, i64 0, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx.i
  %i.hl = getelementptr [8 x i8], ptr %i.hp, i64 %.sroa.12.0.copyload.i
  %i.hm = select i1 %i.hs, ptr %i.hl, ptr %i.hq
  %i.hn = select i1 %i.hs, ptr %i.ht, ptr %i.hr
  %.not5.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not5.i.i, label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynBX_INtBZ_5ConstKj1_EBX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i

_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynBX_INtBZ_5ConstKj1_EBX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %.noexc32, %bb.bh
  %i.ho = phi i64 [ %i.hi, %bb.bh ], [ %.sroa.10.0.copyload.i, %.noexc32 ]
  %i.hp = phi ptr [ %i.hk, %bb.bh ], [ %.sroa.0.0.copyload.i26, %.noexc32 ] ; 3 uses
  %i.hq = phi ptr [ %i.hm, %bb.bh ], [ %.sroa.8.0.copyload.i, %.noexc32 ] ; 2 uses
  %i.hr = phi ptr [ %i.hn, %bb.bh ], [ %.sroa.6.0.copyload.i, %.noexc32 ] ; 2 uses
  %i.hs = icmp eq ptr %i.hp, %i.hq                ; 3 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %.sroa.12.0.copyload.i ; 2 uses
  %i.hu = select i1 %i.hs, ptr %i.ht, ptr %i.hp   ; 3 uses
  %.not.not.not.not.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.not.not.not.i.i, label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit, label %bb.bi

bb.bi:                                            ; preds = %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynBX_INtBZ_5ConstKj1_EBX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i
  %spec.select.i.val.i.i = load double, ptr %i.hu, align 8, !noalias !184, !noundef !5
  %i.hv = fcmp uno double %spec.select.i.val.i.i, 0.000000e+00
  br i1 %i.hv, label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread, label %bb.bh

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit31.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i27.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i43.i unwind label %bb.bj, !noalias !154

bb.bj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit31.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body34.i unwind label %bb.bk, !noalias !154

bb.bk:                                            ; preds = %bb.bj
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !154
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i43.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit31.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit47.i unwind label %bb.af, !noalias !154

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit47.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !160
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit50.i unwind label %bb.bl, !noalias !154

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit47.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %.body29 unwind label %bb.bm, !noalias !154

bb.bm:                                            ; preds = %bb.bl
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !154
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit50.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit47.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %.noexc33 unwind label %bb.bo

.noexc33:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !160
  br label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread

bb.bn:                                            ; preds = %bb.ay, %.body.i22, %.body34.i
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !154
  unreachable

bb.bo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit50.i, %.noexc31, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit40.i, %bb.ad, %bb.bq, %bb.bp
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body29

.body29:                                          ; preds = %.body34.i, %bb.bf, %bb.bl, %bb.bo
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.ib, %bb.bo ], [ %i.hy, %bb.bl ], [ %i.hg, %bb.bf ], [ %.pn3.i, %.body34.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v) #10
          to label %.body127.i.i unwind label %bb.ab, !noalias !154

_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit: ; preds = %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynBX_INtBZ_5ConstKj1_EBX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i, %bb.bh, %.noexc32
  %.val74.i.i = load i64, ptr %i.ch, align 8, !noalias !153, !noundef !5
  %.not191.i.i = icmp eq i64 %.val74.i.i, %.val.i.i
  br i1 %.not191.i.i, label %bb.bp, label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread

bb.bp:                                            ; preds = %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !153
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v)
          to label %bb.bq unwind label %bb.bo, !noalias !154

bb.bq:                                            ; preds = %bb.bp
  %i.ic = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.id = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !186, !noalias !153
  store <2 x i64> %i.id, ptr %i.ic, align 8, !alias.scope !185, !noalias !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !153
  invoke void @_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB5_8CholeskydNtNtNtB9_4base9dimension3DynE12new_internalCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.t, i64 noundef 0, double undef)
          to label %bb.br unwind label %bb.bo, !noalias !154

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !153
  %i.ie = load i64, ptr %i.u, align 8, !range !4, !noalias !153, !noundef !5 ; 2 uses
  %.not54.i.i = icmp eq i64 %i.ie, -1
  br i1 %.not54.i.i, label %bb.bs, label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.i

_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.i: ; preds = %bb.br
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.440.0.copyload.i.i = load i8, ptr %.sroa.440.0..sroa_idx.i.i, align 8, !noalias !153
  %.sroa.541.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.23.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.541.0..sroa_idx.i.i, i64 31, i1 false), !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !153
  %.sroa.015.0.copyload.i = load i64, ptr %i.ai, align 8, !alias.scope !149, !noalias !188 ; 2 uses
  %.sroa.4.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4.0.copyload.i12 = load i8, ptr %.sroa.4.0..sroa_idx.i11, align 8, !alias.scope !149, !noalias !188 ; 2 uses
  %.sroa.516.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.516.i, i64 23 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.516.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !147
  %i.if = icmp eq i64 %.sroa.015.0.copyload.i, -1
  br i1 %i.if, label %bb.ce, label %bb.cf

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !153
  br label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread

_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread: ; preds = %bb.bi, %.noexc33, %bb.ac, %bb.bs, %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit
  %.sroa.13.3.i = phi i8 [ 3, %bb.bs ], [ 2, %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit ], [ 0, %bb.ac ], [ 0, %.noexc33 ], [ 0, %bb.bi ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i109.i.i unwind label %bb.bt, !noalias !154

bb.bt:                                            ; preds = %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %.body127.i.i unwind label %bb.bu, !noalias !154

bb.bu:                                            ; preds = %bb.bt
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !154
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i109.i.i: ; preds = %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal9check_covNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %bb.bv unwind label %3, !noalias !154

bb.bv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i109.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtB12_9dimension3DynB1L_INtNtB12_11vec_storage10VecStoragedB1L_B1L_EEEECs8lmMd0ZksV9_6statrs.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtB12_9dimension3DynB1L_INtNtB12_11vec_storage10VecStoragedB1L_B1L_EEEECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit.i126.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra6linalg8cholesky8CholeskydNtNtNtB14_4base9dimension3DynEEECs8lmMd0ZksV9_6statrs.exit.i.i, %bb.bv
  %.sroa.13.0.i = phi i8 [ %.sroa.13.3.i, %bb.bv ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra6linalg8cholesky8CholeskydNtNtNtB14_4base9dimension3DynEEECs8lmMd0ZksV9_6statrs.exit.i.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit.i126.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread.i unwind label %bb.bw, !noalias !157

bb.bw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtB12_9dimension3DynB1L_INtNtB12_11vec_storage10VecStoragedB1L_B1L_EEEECs8lmMd0ZksV9_6statrs.exit.i.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %.thread unwind label %bb.bx, !noalias !157

bb.bx:                                            ; preds = %bb.bw
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !157
  unreachable

_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtB12_9dimension3DynB1L_INtNtB12_11vec_storage10VecStoragedB1L_B1L_EEEECs8lmMd0ZksV9_6statrs.exit.i.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !147
  br label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra6linalg8cholesky8CholeskydNtNtNtB14_4base9dimension3DynEEECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %bb.y
  %i.ik = load i64, ptr %i.ab, align 8, !range !4, !alias.scope !189, !noalias !147, !noundef !5
  %i.il = icmp eq i64 %i.ik, -1
  br i1 %i.il, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtB12_9dimension3DynB1L_INtNtB12_11vec_storage10VecStoragedB1L_B1L_EEEECs8lmMd0ZksV9_6statrs.exit.i.i, label %bb.by

bb.by:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra6linalg8cholesky8CholeskydNtNtNtB14_4base9dimension3DynEEECs8lmMd0ZksV9_6statrs.exit.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit.i126.i.i unwind label %bb.bz, !noalias !157

bb.bz:                                            ; preds = %bb.by
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %.body127.i.i unwind label %bb.ca, !noalias !157

bb.ca:                                            ; preds = %bb.bz
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !157
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit.i126.i.i: ; preds = %bb.by
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtB12_9dimension3DynB1L_INtNtB12_11vec_storage10VecStoragedB1L_B1L_EEEECs8lmMd0ZksV9_6statrs.exit.i.i unwind label %bb.cb, !noalias !157

.body127.i.i:                                     ; preds = %bb.cd, %bb.cb, %bb.bz, %bb.bt, %.body29, %3
  %.pn66.i.i = phi { ptr, i32 } [ %i.im, %bb.bz ], [ %i.ip, %bb.cd ], [ %eh.lpad-body30, %.body29 ], [ %i.io, %bb.cb ], [ %i.ig, %bb.bt ], [ %4, %3 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynINtB1r_5ConstKj1_EINtNtBG_11vec_storage10VecStoragedB1p_B1K_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai) #10
          to label %.thread unwind label %bb.ab, !noalias !157

bb.cb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs.exit.i126.i.i
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body127.i.i

bb.cc:                                            ; preds = %bb.v
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra6linalg8cholesky8CholeskydNtNtNtB14_4base9dimension3DynEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa) #10
          to label %bb.cd unwind label %bb.ab, !noalias !190

bb.cd:                                            ; preds = %bb.cc
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtB12_9dimension3DynB1L_INtNtB12_11vec_storage10VecStoragedB1L_B1L_EEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab) #10
          to label %.body127.i.i unwind label %bb.ab, !noalias !157

bb.ce:                                            ; preds = %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread.i, %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.i
  %.sroa.13.420.i = phi i8 [ %.sroa.13.0.i, %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.thread.i ], [ %.sroa.4.0.copyload.i12, %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.sroa.6.i)
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.13.420.i, ptr %i.iq, align 8, !alias.scope !148
  store i64 -1, ptr %0, align 8, !alias.scope !148
  br label %bb.cy

bb.cf:                                            ; preds = %_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normal31normalize_constructor_argumentsNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynEB6_.exit.i
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  %.sroa.9.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.23.sroa.6.i, i64 31, i1 false), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.sroa.6.i)
  store i64 %.sroa.015.0.copyload.i, ptr %i.z, align 8, !noalias !147
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 %.sroa.4.0.copyload.i12, ptr %.sroa.6.0..sroa_idx2.i, align 8, !noalias !147
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.8.0..sroa_idx4.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.516.0..sroa_idx.i, i64 23, i1 false), !noalias !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 1 dereferenceable(40) %.sroa.516.32..sroa_idx.i, i64 40, i1 false), !noalias !147
  store i64 %i.ie, ptr %i.x, align 8, !noalias !147
  %.sroa.9.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 %.sroa.440.0.copyload.i.i, ptr %.sroa.9.sroa.5.0..sroa_idx.i, align 8, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !195
  invoke void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB4_8CholeskydNtNtNtB8_4base9dimension3DynE7inverseCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.x)
          to label %bb.ch unwind label %.thread.i.i, !noalias !196

bb.cg:                                            ; preds = %.body.i.i
  br i1 %.sroa.02.1.lpad-body.i.i, label %bb.cw, label %bb.cv

.thread.i.i:                                      ; preds = %bb.cf
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ch:                                            ; preds = %bb.cf
  %i.is = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.val.i7.i = load i64, ptr %i.is, align 8, !alias.scope !193, !noalias !147, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.it = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.val2.i.i.i = load i64, ptr %i.it, align 8, !alias.scope !198, !noalias !147, !noundef !5 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.val3.i.i.i = load i64, ptr %i.iu, align 8, !alias.scope !198, !noalias !147, !noundef !5
  %i.iv = icmp eq i64 %.val2.i.i.i, %.val.i7.i
  %i.iw = icmp eq i64 %.val2.i.i.i, %.val3.i.i.i
  %or.cond.i.i8.i = and i1 %i.iv, %i.iw
  br i1 %or.cond.i.i8.i, label %bb.ci, label %bb.cs

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  switch i64 %.val.i7.i, label %bb.cj [
    i64 0, label %bb.cr
    i64 1, label %bb.ck
    i64 2, label %bb.cl
    i64 3, label %bb.cm
  ]

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !200
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y)
          to label %.noexc.i.i unwind label %bb.cq, !noalias !201

.noexc.i.i:                                       ; preds = %bb.cj
  %i.ix = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.val.i7.i, ptr %i.ix, align 8, !alias.scope !202, !noalias !200
  %i.iy = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.val.i7.i, ptr %i.iy, align 8, !alias.scope !202, !noalias !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !200
  invoke void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB4_2LUdNtNtNtB8_4base9dimension3DynBP_E3newCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m)
          to label %.noexc5.i.i unwind label %bb.cq, !noalias !201

.noexc5.i.i:                                      ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !200
  %i.iz = invoke noundef double @_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB5_2LUdNtNtNtB9_4base9dimension3DynBQ_E11determinantCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.n)
          to label %bb.co unwind label %bb.cn, !noalias !201

bb.ck:                                            ; preds = %bb.ci
  %i.ja = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val54.i.i.i.i = load ptr, ptr %i.ja, align 8, !alias.scope !203, !noalias !147, !nonnull !5, !noundef !5
  %i.jb = load double, ptr %.val54.i.i.i.i, align 8, !alias.scope !204, !noalias !205, !noundef !5
  br label %bb.cr

bb.cl:                                            ; preds = %bb.ci
  %i.jc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val52.i.i.i.i = load ptr, ptr %i.jc, align 8, !alias.scope !203, !noalias !147, !nonnull !5, !noundef !5 ; 2 uses
  %i.jd = getelementptr i8, ptr %.val52.i.i.i.i, i64 16
  %i.je = load <2 x double>, ptr %.val52.i.i.i.i, align 8, !noalias !205
  %i.jf = load <2 x double>, ptr %i.jd, align 8, !noalias !205
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jh = fmul <2 x double> %i.jg, %i.je          ; 2 uses
  %shift = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.jh, %shift
  %i.ji = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %bb.cr

bb.cm:                                            ; preds = %bb.ci
  %i.jj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val48.i.i.i.i = load ptr, ptr %i.jj, align 8, !alias.scope !203, !noalias !147, !nonnull !5, !noundef !5 ; 9 uses
  %i.jk = load double, ptr %.val48.i.i.i.i, align 8, !alias.scope !206, !noalias !205, !noundef !5
  %i.jl = getelementptr i8, ptr %.val48.i.i.i.i, i64 24
  %i.jm = load double, ptr %i.jl, align 8, !alias.scope !207, !noalias !205, !noundef !5
  %i.jn = getelementptr i8, ptr %.val48.i.i.i.i, i64 48
  %i.jo = load double, ptr %i.jn, align 8, !alias.scope !208, !noalias !205, !noundef !5
  %i.jp = getelementptr i8, ptr %.val48.i.i.i.i, i64 8
  %i.jq = load double, ptr %i.jp, align 8, !alias.scope !209, !noalias !205, !noundef !5 ; 2 uses
  %i.jr = getelementptr i8, ptr %.val48.i.i.i.i, i64 32
  %i.js = load double, ptr %i.jr, align 8, !alias.scope !210, !noalias !205, !noundef !5 ; 2 uses
  %i.jt = getelementptr i8, ptr %.val48.i.i.i.i, i64 56
  %i.ju = load double, ptr %i.jt, align 8, !alias.scope !211, !noalias !205, !noundef !5 ; 2 uses
  %i.jv = getelementptr i8, ptr %.val48.i.i.i.i, i64 16
  %i.jw = load double, ptr %i.jv, align 8, !alias.scope !212, !noalias !205, !noundef !5 ; 2 uses
  %i.jx = getelementptr i8, ptr %.val48.i.i.i.i, i64 40
  %i.jy = load double, ptr %i.jx, align 8, !alias.scope !213, !noalias !205, !noundef !5 ; 2 uses
  %i.jz = getelementptr i8, ptr %.val48.i.i.i.i, i64 64
  %i.ka = load double, ptr %i.jz, align 8, !alias.scope !214, !noalias !205, !noundef !5 ; 2 uses
  %i.kb = fmul double %i.js, %i.ka
  %i.kc = fmul double %i.ju, %i.jy
  %i.kd = fsub double %i.kb, %i.kc
  %i.ke = fmul double %i.jq, %i.ka
  %i.kf = fmul double %i.ju, %i.jw
  %i.kg = fsub double %i.ke, %i.kf
  %i.kh = fmul double %i.jq, %i.jy
  %i.ki = fmul double %i.js, %i.jw
  %i.kj = fsub double %i.kh, %i.ki
  %i.kk = fmul double %i.jk, %i.kd
  %i.kl = fmul double %i.jm, %i.kg
  %i.km = fsub double %i.kk, %i.kl
  %i.kn = fmul double %i.jo, %i.kj
  %i.ko = fadd double %i.kn, %i.km
  br label %bb.cr

bb.cn:                                            ; preds = %.noexc5.i.i
  %i.kp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra6linalg2lu2LUdNtNtNtBI_4base9dimension3DynB1j_EECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(80) %i.n) #10
          to label %.body.i.i unwind label %bb.cp, !noalias !201

bb.co:                                            ; preds = %.noexc5.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra6linalg2lu2LUdNtNtNtBI_4base9dimension3DynB1j_EECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(80) %i.n)
          to label %.noexc6.i.i unwind label %bb.cq, !noalias !201

.noexc6.i.i:                                      ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !200
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cn
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #9, !noalias !201
  unreachable

bb.cq:                                            ; preds = %bb.cs, %bb.cr, %bb.co, %.noexc.i.i, %bb.cj
  %.sroa.02.1.i.i = phi i1 [ false, %bb.cr ], [ true, %bb.cs ], [ true, %bb.co ], [ true, %bb.cj ], [ true, %.noexc.i.i ]
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.cq, %bb.cn
  %.sroa.02.1.lpad-body.i.i = phi i1 [ %.sroa.02.1.i.i, %bb.cq ], [ true, %bb.cn ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.kr, %bb.cq ], [ %i.kp, %bb.cn ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.q) #10
          to label %bb.cg unwind label %bb.cu, !noalias !201

bb.cr:                                            ; preds = %.noexc6.i.i, %bb.cm, %bb.cl, %bb.ck, %bb.ci
  %.sroa.0.0.i.i.i.i = phi double [ %i.iz, %.noexc6.i.i ], [ %i.ko, %bb.cm ], [ %i.jb, %bb.ck ], [ %i.ji, %bb.cl ], [ 1.000000e+00, %bb.ci ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !noalias !215
  invoke void @_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg8choleskyINtB4_8CholeskydNtNtNtB8_4base9dimension3DynE6unpackCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.o)
          to label %_RNvMs1_NtNtCs8lmMd0ZksV9_6statrs12distribution19multivariate_normalINtB5_18MultivariateNormalNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE13new_uncheckedB9_.exit.i unwind label %bb.cq, !noalias !201

bb.cs:                                            ; preds = %bb.ch
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
          to label %bb.ct unwind label %bb.cq, !noalias !196

bb.ct:                                            ; preds = %bb.cs
  unreachable

bb.cu:                                            ; preds = %bb.cx, %bb.cw, %bb.cv, %.body.i.i
  %i.ks = landingpad { ptr, i32 }
end_hunk_1
