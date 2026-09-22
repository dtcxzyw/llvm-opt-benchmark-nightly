Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_geo-e292a746520cdc95.lance_geo.96157f1265388ca0-cgu.0?download=true
inline.NumInlined: 1265
inline.NumDeleted: 690
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvNtCscSToqyP0NyK_9lance_geo4bbox12bounding_box:bb.a
  %.sroa.5.0.copyload3.i.i.i.i = load i64, ptr %i.abl, align 8, !noalias !2673
  %.sroa.7.0.copyload7.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx6.i.i.i.i, align 8, !noalias !2673
  %.sroa.8.0.copyload9.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx8.i.i.i.i, align 8, !noalias !2673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx10.i.i.i.i, i64 16, i1 false), !noalias !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i, i64 16, i1 false), !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2662
  store <2 x double> splat (double +inf), ptr %i.x, align 16, !alias.scope !2677, !noalias !2662
  store <2 x double> splat (double -inf), ptr %i.abn, align 16, !alias.scope !2677, !noalias !2662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i249, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i, i64 16, i1 false), !noalias !2662
  store i64 %i.ack, ptr %i.w, align 8, !noalias !2662
  store i64 %.sroa.5.0.copyload3.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i248, align 8, !noalias !2662
  store i64 %i.acm, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !2662
  store ptr %.sroa.7.0.copyload7.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !2662
  store i64 %.sroa.8.0.copyload9.i.i.i.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !2662
  call fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtCsdkROKCKhesT_3wkt3WktEB5_(ptr noalias noundef align 8 dereferenceable(32) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.w), !noalias !2662
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsdkROKCKhesT_3wkt3WktECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(56) %i.w)
          to label %bb.lh unwind label %.loopexit61.i, !noalias !2662

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2662
  invoke fastcc void @_RINvMNtNtCsfC1H8tYQGpK_14geoarrow_array7builder4rectNtB3_11RectBuilder9push_rectNtNtCscSToqyP0NyK_9lance_geo4bbox11BoundingBoxEB1k_(ptr noalias noundef align 8 dereferenceable(280) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.x)
          to label %bb.li unwind label %.loopexit61.i, !noalias !2662

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2662
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.le
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %exitcond.not.i256 = icmp eq i64 %i.abo, %i.aax
  br i1 %exitcond.not.i256, label %._crit_edge.i257, label %bb.kx

bb.lk:                                            ; preds = %.thread.i244, %bb.kt
  %i.acs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !2662
  unreachable

bb.ll:                                            ; preds = %bb.lf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !2661
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 -1, ptr %i.act, align 8, !alias.scope !2660, !noalias !2661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2662
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder4rect11RectBuilderECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(280) %i.z)
          to label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox19impl_array_accessorINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylEEB4_.exit unwind label %bb.q

.thread.i244:                                     ; preds = %.loopexit.split-lp62.i, %.loopexit61.i, %.loopexit.split-lp.i250, %.loopexit.i253, %.thread44.i243
  %.pn24.pn43.i = phi { ptr, i32 } [ %i.aay, %.thread44.i243 ], [ %lpad.loopexit.split-lp.i251, %.loopexit.split-lp.i250 ], [ %lpad.loopexit.i254, %.loopexit.i253 ], [ %lpad.loopexit63.i, %.loopexit61.i ], [ %lpad.loopexit.split-lp64.i, %.loopexit.split-lp62.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder4rect11RectBuilderECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(280) %i.z) #26
          to label %.body unwind label %bb.lk, !noalias !2662

_RINvNtCscSToqyP0NyK_9lance_geo4bbox19impl_array_accessorINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylEEB4_.exit: ; preds = %bb.ll, %.noexc258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  br label %bb.ba

bb.lm:                                            ; preds = %bb.o
  %i.acu = extractvalue { ptr, ptr } %i.fi, 0     ; 10 uses
  %i.acv = extractvalue { ptr, ptr } %i.fi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 24
  %i.acx = load ptr, ptr %i.acw, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.acx(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.en, ptr noundef %i.acu)
          to label %bb.ln unwind label %bb.q

bb.ln:                                            ; preds = %bb.lm
  %i.acy = load i128, ptr %i.en, align 16, !noundef !5
  %i.acz = icmp eq i128 %i.acy, -43199900627134242813699660524125166159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  br i1 %i.acz, label %bb.lo, label %.invoke, !prof !14

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acu) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i263)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2680
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acu, i64 120
  %.val28.i264 = load ptr, ptr %i.ada, align 8, !alias.scope !2679, !noalias !2678, !nonnull !5, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  %i.adb = atomicrmw add ptr %.val28.i264, i64 1 monotonic, align 8, !noalias !2682
  %i.adc = icmp slt i64 %i.adb, 0
  br i1 %i.adc, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.trap()
  unreachable

bb.lq:                                            ; preds = %bb.lo
  %i.add = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.val28.i264, ptr %i.add, align 8, !alias.scope !2681, !noalias !2680
  store i64 13, ptr %i.p, align 8, !alias.scope !2681, !noalias !2680
  %i.ade = atomicrmw add ptr %.val28.i264, i64 1 monotonic, align 8, !noalias !2680
  %i.adf = icmp slt i64 %i.ade, 0
  br i1 %i.adf, label %bb.lr, label %bb.lt

bb.lr:                                            ; preds = %bb.lq
  call void @llvm.trap()
  unreachable

bb.ls:                                            ; preds = %bb.lt
  %i.adg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema8datatype12GeoArrowTypeECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(24) %i.p) #26
          to label %.body unwind label %bb.mj, !noalias !2680

bb.lt:                                            ; preds = %bb.lq
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acu, i64 40
  %.val.i265 = load i64, ptr %i.adh, align 8, !alias.scope !2679, !noalias !2678, !noundef !5
  %i.adi = lshr i64 %.val.i265, 3                 ; 2 uses
  %i.adj = add nsw i64 %i.adi, -1                 ; 3 uses
  invoke void @_RNvMNtNtCsfC1H8tYQGpK_14geoarrow_array7builder4rectNtB2_11RectBuilder13with_capacity(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(280) %i.q, ptr noundef nonnull %.val28.i264, i8 noundef 0, i64 noundef %i.adj)
          to label %bb.lu unwind label %bb.ls, !noalias !2680

bb.lu:                                            ; preds = %bb.lt
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema8datatype12GeoArrowTypeECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(24) %i.p)
          to label %bb.lv unwind label %.thread44.i267, !noalias !2680

.thread44.i267:                                   ; preds = %bb.lu
  %i.adk = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i268

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i262)
  %.not.i270 = icmp eq i64 %i.adj, 0
  br i1 %.not.i270, label %._crit_edge.i300, label %.lr.ph.i271

.lr.ph.i271:                                      ; preds = %bb.lv
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acu, i64 72
  %i.adm = load ptr, ptr %i.adl, align 8, !alias.scope !2683, !noalias !2684, !noundef !5
  %.not.i.i.i.i.i.i.i272 = icmp eq ptr %i.adm, null
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acu, i64 104
  %i.ado = load i64, ptr %i.adn, align 8, !alias.scope !2679, !noalias !2678
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acu, i64 80
  %i.adq = load ptr, ptr %i.adp, align 8, !alias.scope !2679, !noalias !2678
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acu, i64 96
  %i.ads = load i64, ptr %i.adr, align 8, !alias.scope !2679, !noalias !2678
  %i.adt = getelementptr inbounds nuw i8, ptr %i.acu, i64 32
  %i.adu = load ptr, ptr %i.adt, align 8, !alias.scope !2679, !noalias !2678 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.acu, i64 56
  %i.adw = load ptr, ptr %i.adv, align 8, !alias.scope !2679, !noalias !2678 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i273 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i274 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.adx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.7.0..sroa_idx6.i.i.i.i275 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.8.0..sroa_idx8.i.i.i.i276 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.9.0..sroa_idx10.i.i.i.i277 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.adz = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4.0..sroa_idx.i278 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0..sroa_idx.i279 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i280 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i281 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i282 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  br label %bb.lw

bb.lw:                                            ; preds = %bb.mi, %.lr.ph.i271
  %.sroa.536.068.i283 = phi i64 [ 0, %.lr.ph.i271 ], [ %i.aea, %bb.mi ] ; 4 uses
  %i.aea = add nuw i64 %.sroa.536.068.i283, 1     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  br i1 %.not.i.i.i.i.i.i.i272, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.aeb = icmp ult i64 %.sroa.536.068.i283, %i.ado
  br i1 %i.aeb, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i, label %bb.ly, !prof !14

bb.ly:                                            ; preds = %bb.lx
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc.i286 unwind label %.loopexit.split-lp.i284, !noalias !2680

.noexc.i286:                                      ; preds = %bb.ly
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i: ; preds = %bb.lx
  %i.aec = add i64 %.sroa.536.068.i283, %i.ads    ; 2 uses
  %i.aed = lshr i64 %i.aec, 3
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.aed
  %i.aef = load i8, ptr %i.aee, align 1, !noalias !2688, !noundef !5
  %i.aeg = trunc i64 %i.aec to i8
  %i.aeh = and i8 %i.aeg, 7
  %i.aei = xor i8 %i.aef, -1
  %i.aej = lshr i8 %i.aei, %i.aeh
  %i.aek = trunc i8 %i.aej to i1
  br i1 %i.aek, label %bb.md, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i, %bb.lw
  %i.ael = icmp ult i64 %i.aea, %i.adi
  call void @llvm.assume(i1 %i.ael)
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %i.aea
  %i.aen = load i64, ptr %i.aem, align 8, !noalias !2689, !noundef !5 ; 2 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %.sroa.536.068.i283
  %i.aep = load i64, ptr %i.aeo, align 8, !noalias !2689, !noundef !5 ; 2 uses
  %i.aeq = getelementptr inbounds i8, ptr %i.adw, i64 %i.aep
  %3 = sub i64 %i.aen, %i.aep
  %4 = icmp sgt i64 %3, -1
  call void @llvm.assume(i1 %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2690
  %i.aer = getelementptr inbounds i8, ptr %i.adw, i64 %i.aen
  store ptr %i.aeq, ptr %i.i, align 8, !noalias !2690
  store ptr %i.aer, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i273, align 8, !noalias !2690
  store i32 -2, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i274, align 8, !noalias !2690
  invoke fastcc void @_RNvMs3_CsdkROKCKhesT_3wktNtB5_3Wkt11from_tokensCscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.j, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %.noexc31.i289 unwind label %.loopexit.i287, !noalias !2680

.noexc31.i289:                                    ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2690
  %i.aes = load i64, ptr %i.j, align 8, !range !29, !noalias !2690, !noundef !5 ; 2 uses
  %i.aet = icmp eq i64 %i.aes, -2
  %i.aeu = load i64, ptr %i.ady, align 8, !noalias !2691 ; 8 uses
  br i1 %i.aet, label %bb.lz, label %bb.mf

bb.lz:                                            ; preds = %.noexc31.i289
  %i.aev = load ptr, ptr %i.adx, align 8, !noalias !2690, !nonnull !5, !noundef !5
  %i.aew = icmp sgt i64 %i.aeu, -1
  br i1 %i.aew, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %i.aex = icmp eq i64 %i.aeu, 0
  br i1 %i.aex, label %bb.me, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i308

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i308: ; preds = %bb.ma
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2692
  %i.aey = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aeu, i64 noundef 1) #24, !noalias !2692 ; 3 uses
  %i.aez = icmp eq ptr %i.aey, null
  br i1 %i.aez, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i308, %bb.lz
  %.sroa.4.0.ph.i.i.i.i.i.i306 = phi i64 [ 1, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i308 ], [ 0, %bb.lz ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i306, i64 %i.aeu) #25
          to label %.noexc32.i307 unwind label %.loopexit.split-lp.i284, !noalias !2680

.noexc32.i307:                                    ; preds = %bb.mb
  unreachable

bb.mc:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i308
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aey, ptr nonnull readonly align 1 %i.aev, i64 %i.aeu, i1 false), !noalias !2693
  br label %bb.me

.loopexit.i287:                                   ; preds = %bb.md, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i
  %lpad.loopexit.i288 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i268

.loopexit.split-lp.i284:                          ; preds = %bb.mb, %bb.ly
  %lpad.loopexit.split-lp.i285 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i268

._crit_edge.i300:                                 ; preds = %bb.mi, %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.m, ptr noundef nonnull align 8 dereferenceable(280) %i.q, i64 280, i1 false), !noalias !2680
  invoke void @_RNvMNtNtCsfC1H8tYQGpK_14geoarrow_array7builder4rectNtB2_11RectBuilder6finish(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.m)
          to label %.noexc309 unwind label %bb.q

.noexc309:                                        ; preds = %._crit_edge.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2680
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox19impl_array_accessorINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxEEB4_.exit

bb.md:                                            ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i263, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i262, i64 16, i1 false), !noalias !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i262)
  invoke fastcc void @_RINvMNtNtCsfC1H8tYQGpK_14geoarrow_array7builder4rectNtB3_11RectBuilder9push_rectNtNtNtB7_6scalar4rect4RectECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(280) %i.q)
          to label %bb.mi unwind label %.loopexit.i287, !noalias !2680

.loopexit61.i297:                                 ; preds = %bb.mg, %bb.mf
  %lpad.loopexit63.i298 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i268

.loopexit.split-lp62.i304:                        ; preds = %bb.me
  %lpad.loopexit.split-lp64.i305 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i268

bb.me:                                            ; preds = %bb.mc, %bb.ma
  %.sroa.7.0.i.i.i.i294.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.ma ], [ %i.aey, %bb.mc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2690
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2680
  store i64 -9223372036854775779, ptr %i.l, align 8, !noalias !2680
  %.sroa.4.0..sroa_idx90.i301 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.aeu, ptr %.sroa.4.0..sroa_idx90.i301, align 8, !noalias !2680
  %.sroa.591.0..sroa_idx.i302 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.7.0.i.i.i.i294.ph, ptr %.sroa.591.0..sroa_idx.i302, align 8, !noalias !2680
  %.sroa.692.0..sroa_idx.i303 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.aeu, ptr %.sroa.692.0..sroa_idx.i303, align 8, !noalias !2680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2680
  invoke void @_RNvXNtCs84Wnv3hhsUu_15geoarrow_schema5errorNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB2_13GeoArrowErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.mk unwind label %.loopexit.split-lp62.i304, !noalias !2680

bb.mf:                                            ; preds = %.noexc31.i289
  %.sroa.5.0.copyload3.i.i.i.i290 = load i64, ptr %i.adx, align 8, !noalias !2691
  %.sroa.7.0.copyload7.i.i.i.i291 = load ptr, ptr %.sroa.7.0..sroa_idx6.i.i.i.i275, align 8, !noalias !2691
  %.sroa.8.0.copyload9.i.i.i.i292 = load i64, ptr %.sroa.8.0..sroa_idx8.i.i.i.i276, align 8, !noalias !2691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i262, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx10.i.i.i.i277, i64 16, i1 false), !noalias !2694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i263, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i262, i64 16, i1 false), !noalias !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2680
  store <2 x double> splat (double +inf), ptr %i.o, align 16, !alias.scope !2695, !noalias !2680
  store <2 x double> splat (double -inf), ptr %i.adz, align 16, !alias.scope !2695, !noalias !2680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i279, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i263, i64 16, i1 false), !noalias !2680
  store i64 %i.aes, ptr %i.n, align 8, !noalias !2680
  store i64 %.sroa.5.0.copyload3.i.i.i.i290, ptr %.sroa.4.0..sroa_idx.i278, align 8, !noalias !2680
  store i64 %i.aeu, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i280, align 8, !noalias !2680
  store ptr %.sroa.7.0.copyload7.i.i.i.i291, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i281, align 8, !noalias !2680
  store i64 %.sroa.8.0.copyload9.i.i.i.i292, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i282, align 8, !noalias !2680
  call fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtCsdkROKCKhesT_3wkt3WktEB5_(ptr noalias noundef align 8 dereferenceable(32) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n), !noalias !2680
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsdkROKCKhesT_3wkt3WktECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(56) %i.n)
          to label %bb.mg unwind label %.loopexit61.i297, !noalias !2680

bb.mg:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2680
  invoke fastcc void @_RINvMNtNtCsfC1H8tYQGpK_14geoarrow_array7builder4rectNtB3_11RectBuilder9push_rectNtNtCscSToqyP0NyK_9lance_geo4bbox11BoundingBoxEB1k_(ptr noalias noundef align 8 dereferenceable(280) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.o)
          to label %bb.mh unwind label %.loopexit61.i297, !noalias !2680

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2680
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.md
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i262)
  %exitcond.not.i299 = icmp eq i64 %i.aea, %i.adj
  br i1 %exitcond.not.i299, label %._crit_edge.i300, label %bb.lw

bb.mj:                                            ; preds = %.thread.i268, %bb.ls
  %i.afa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !2680
  unreachable

bb.mk:                                            ; preds = %bb.me
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !2679
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 -1, ptr %i.afb, align 8, !alias.scope !2678, !noalias !2679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2680
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder4rect11RectBuilderECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(280) %i.q)
          to label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox19impl_array_accessorINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxEEB4_.exit unwind label %bb.q

.thread.i268:                                     ; preds = %.loopexit.split-lp62.i304, %.loopexit61.i297, %.loopexit.split-lp.i284, %.loopexit.i287, %.thread44.i267
  %.pn24.pn43.i269 = phi { ptr, i32 } [ %i.adk, %.thread44.i267 ], [ %lpad.loopexit.split-lp.i285, %.loopexit.split-lp.i284 ], [ %lpad.loopexit.i288, %.loopexit.i287 ], [ %lpad.loopexit63.i298, %.loopexit61.i297 ], [ %lpad.loopexit.split-lp64.i305, %.loopexit.split-lp62.i304 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder4rect11RectBuilderECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(280) %i.q) #26
          to label %.body unwind label %bb.mj, !noalias !2680

_RINvNtCscSToqyP0NyK_9lance_geo4bbox19impl_array_accessorINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxEEB4_.exit: ; preds = %bb.mk, %.noexc309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i263)
  br label %bb.ba

bb.ml:                                            ; preds = %bb.p
  %i.afc = extractvalue { ptr, ptr } %i.fj, 0     ; 9 uses
  %i.afd = extractvalue { ptr, ptr } %i.fj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 24
  %i.aff = load ptr, ptr %i.afe, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.aff(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.eo, ptr noundef %i.afc)
          to label %bb.mm unwind label %bb.q

bb.mm:                                            ; preds = %bb.ml
  %i.afg = load i128, ptr %i.eo, align 16, !noundef !5
  %i.afh = icmp eq i128 %i.afg, -355476744251357671167320073448530080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  br i1 %i.afh, label %bb.mn, label %.invoke, !prof !14

.invoke:                                          ; preds = %bb.mm, %bb.ln, %bb.ko, %bb.jq, %bb.is, %bb.hu, %bb.gx, %bb.gg, %bb.fk, %bb.eo, %bb.ds, %bb.cv, %bb.bz, %bb.bc, %bb.s
  %i.afi = phi ptr [ @48, %bb.ln ], [ @48, %bb.ko ], [ @47, %bb.jq ], [ @46, %bb.is ], [ @46, %bb.hu ], [ @45, %bb.gx ], [ @44, %bb.gg ], [ @43, %bb.fk ], [ @42, %bb.eo ], [ @41, %bb.ds ], [ @40, %bb.cv ], [ @39, %bb.bz ], [ @38, %bb.bc ], [ @37, %bb.s ], [ @49, %bb.mm ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afi) #25
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afc) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.837.i313)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2698
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afc, i64 112
  %.val28.i314 = load ptr, ptr %i.afj, align 8, !alias.scope !2697, !noalias !2696, !nonnull !5, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2699)
  %i.afk = atomicrmw add ptr %.val28.i314, i64 1 monotonic, align 8, !noalias !2700
  %i.afl = icmp slt i64 %i.afk, 0
  br i1 %i.afl, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  call void @llvm.trap()
end_hunk_0
begin_hunk_1_@_RNvNtCscSToqyP0NyK_9lance_geo4bbox12total_bounds:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3369
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3354
  store i64 -9223372036854775779, ptr %i.q, align 8, !noalias !3354
  %.sroa.4.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.zj, ptr %.sroa.4.0..sroa_idx50.i, align 8, !noalias !3354
  %.sroa.551.0..sroa_idx.i356 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.sroa.7.0.i.i.i.ph.i, ptr %.sroa.551.0..sroa_idx.i356, align 8, !noalias !3354
  %.sroa.6.0..sroa_idx.i357 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.zj, ptr %.sroa.6.0..sroa_idx.i357, align 8, !noalias !3354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3354
  invoke void @_RNvXNtCs84Wnv3hhsUu_15geoarrow_schema5errorNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB2_13GeoArrowErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.fb unwind label %.loopexit.split-lp.i353, !noalias !3352

bb.ez:                                            ; preds = %.noexc.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3354
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %i.zp = icmp ult i64 %.us-phi.i348, %i.xq
  br i1 %i.zp, label %.lr.ph.i343, label %.noexc.thread.i.sink.split

bb.fa:                                            ; preds = %bb.ex
  %i.zq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3352
  unreachable

bb.fb:                                            ; preds = %bb.ey
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zr, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !3353
  store i64 1, ptr %0, align 8, !alias.scope !3352, !noalias !3353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3354
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylENtNtB2b_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.s)
          to label %.noexc360 unwind label %bb.q

.noexc360:                                        ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3354
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylEEB4_.exit

_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylEEB4_.exit: ; preds = %.noexc359, %.noexc360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3354
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayEB4_.exit

bb.fc:                                            ; preds = %bb.o
  %i.zs = extractvalue { ptr, ptr } %i.dy, 0      ; 10 uses
  %i.zt = extractvalue { ptr, ptr } %i.dy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  %i.zv = load ptr, ptr %i.zu, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.zv(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dd, ptr noundef %i.zs)
          to label %bb.fd unwind label %bb.q

bb.fd:                                            ; preds = %bb.fc
  %i.zw = load i128, ptr %i.dd, align 16, !noundef !5
  %i.zx = icmp eq i128 %i.zw, -43199900627134242813699660524125166159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br i1 %i.zx, label %bb.fe, label %.invoke, !prof !14

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zs) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3374)
  call void @llvm.experimental.noalias.scope.decl(metadata !3375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3376
  store <2 x double> splat (double +inf), ptr %i.m, align 16, !alias.scope !3377, !noalias !3376
  %i.zy = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> splat (double -inf), ptr %i.zy, align 16, !alias.scope !3377, !noalias !3376
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zs, i64 40
  %.val.i.i366 = load i64, ptr %i.zz, align 8, !alias.scope !3378, !noalias !3379, !noundef !5
  %i.aaa = lshr i64 %.val.i.i366, 3               ; 2 uses
  %i.aab = add nsw i64 %i.aaa, -1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3376
  store i64 -4, ptr %i.l, align 8, !noalias !3376
  %.sroa.223.0..sroa_idx.i367 = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 -4, ptr %.sroa.223.0..sroa_idx.i367, align 8, !noalias !3376
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i368 = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store ptr %i.zs, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i368, align 8, !noalias !3376
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i369 = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 5 uses
  store i64 0, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i369, align 8, !noalias !3376
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i370 = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i64 %i.aab, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i370, align 8, !noalias !3376
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i364)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i363)
  %.not.i371 = icmp eq i64 %i.aab, 0
  br i1 %.not.i371, label %.noexc.thread.i400, label %.lr.ph.lr.ph.i372

.lr.ph.lr.ph.i372:                                ; preds = %bb.fe
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zs, i64 72
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !3380, !noalias !3381, !noundef !5
  %.not.i.i.i.i.i.i.i373 = icmp eq ptr %i.aad, null
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zs, i64 104
  %i.aaf = load i64, ptr %i.aae, align 8, !alias.scope !3375, !noalias !3374
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zs, i64 80
  %i.aah = load ptr, ptr %i.aag, align 8, !alias.scope !3375, !noalias !3374
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zs, i64 96
  %i.aaj = load i64, ptr %i.aai, align 8, !alias.scope !3375, !noalias !3374
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zs, i64 32
  %i.aal = load ptr, ptr %i.aak, align 8, !alias.scope !3375, !noalias !3374 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zs, i64 56
  %i.aan = load ptr, ptr %i.aam, align 8, !alias.scope !3375, !noalias !3374 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i374 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i375 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aao = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7.0..sroa_idx6.i.i.i.i376 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.8.0..sroa_idx8.i.i.i.i377 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.9.0..sroa_idx10.i.i.i.i378 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.4.0..sroa_idx.i379 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i380 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i381 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i382 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.5.0..sroa_idx.i383 = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.lr.ph.i384

.lr.ph.i384:                                      ; preds = %bb.fm, %.lr.ph.lr.ph.i372
  %i.aaq = phi i64 [ 0, %.lr.ph.lr.ph.i372 ], [ %.us-phi.i389, %bb.fm ] ; 5 uses
  br i1 %.not.i.i.i.i.i.i.i373, label %.lr.ph.split.us.i413, label %.lr.ph.split.preheader.i385

.lr.ph.split.preheader.i385:                      ; preds = %.lr.ph.i384
  %umax.i386 = call i64 @llvm.umax.i64(i64 %i.aaq, i64 %i.aaf) ; 2 uses
  br label %.lr.ph.split.i387

.lr.ph.split.us.i413:                             ; preds = %.lr.ph.i384
  call void @llvm.experimental.noalias.scope.decl(metadata !3382)
  %i.aar = add nuw nsw i64 %i.aaq, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3383)
  call void @llvm.experimental.noalias.scope.decl(metadata !3384)
  call void @llvm.experimental.noalias.scope.decl(metadata !3385)
  br label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxENtNtB1S_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i..noexc.thread_crit_edge.i: ; preds = %.noexc.thread65.i410
  %i.aas = add nuw nsw i64 %i.aaq, 1
  %umax120.le.i411 = call i64 @llvm.umax.i64(i64 %i.aab, i64 %i.aas)
  br label %.noexc.thread.i400.sink.split

.noexc.thread.i400.sink.split:                    ; preds = %bb.fm, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxENtNtB1S_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i..noexc.thread_crit_edge.i
  %umax120.le.i411.sink = phi i64 [ %umax120.le.i411, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxENtNtB1S_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i..noexc.thread_crit_edge.i ], [ %.us-phi.i389, %bb.fm ]
  store i64 %umax120.le.i411.sink, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i369, align 8, !noalias !3376
  br label %.noexc.thread.i400

.noexc.thread.i400:                               ; preds = %.noexc.thread.i400.sink.split, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i363)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i364)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxENtNtB2b_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.l)
          to label %.noexc414 unwind label %bb.q

.noexc414:                                        ; preds = %.noexc.thread.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3376
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aat, ptr noundef nonnull align 16 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !3375
  store i64 0, ptr %0, align 8, !alias.scope !3374, !noalias !3375
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxEEB4_.exit

.lr.ph.split.i387:                                ; preds = %.noexc.thread65.i410, %.lr.ph.split.preheader.i385
  %i.aau = phi i64 [ %i.aav, %.noexc.thread65.i410 ], [ %i.aaq, %.lr.ph.split.preheader.i385 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3382)
  %i.aav = add nuw i64 %i.aau, 1                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3383)
  call void @llvm.experimental.noalias.scope.decl(metadata !3384)
  call void @llvm.experimental.noalias.scope.decl(metadata !3385)
  %exitcond.not.i388 = icmp eq i64 %i.aau, %umax.i386
  br i1 %exitcond.not.i388, label %bb.ff, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i, !prof !7

bb.ff:                                            ; preds = %.lr.ph.split.i387
  %i.aaw = add nuw i64 %umax.i386, 1
  store i64 %i.aaw, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i369, align 8, !alias.scope !3386, !noalias !3387
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc19.i412 unwind label %.loopexit.split-lp.i402, !noalias !3374

.noexc19.i412:                                    ; preds = %bb.ff
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i: ; preds = %.lr.ph.split.i387
  %i.aax = add i64 %i.aau, %i.aaj                 ; 2 uses
  %i.aay = lshr i64 %i.aax, 3
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.aay
  %i.aba = load i8, ptr %i.aaz, align 1, !noalias !3388, !noundef !5
  %i.abb = trunc i64 %i.aax to i8
  %i.abc = and i8 %i.abb, 7
  %i.abd = xor i8 %i.aba, -1
  %i.abe = lshr i8 %i.abd, %i.abc
  %i.abf = trunc i8 %i.abe to i1
  br i1 %i.abf, label %.noexc.thread65.i410, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i

.noexc.thread65.i410:                             ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i364, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i363, i64 16, i1 false), !noalias !3389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i363)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i363)
  %i.abg = icmp ult i64 %i.aav, %i.aab
  br i1 %i.abg, label %.lr.ph.split.i387, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxENtNtB1S_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i..noexc.thread_crit_edge.i

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i, %.lr.ph.split.us.i413
  %.us-phi.i389 = phi i64 [ %i.aar, %.lr.ph.split.us.i413 ], [ %i.aav, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i ] ; 7 uses
  %.us-phi106.i390 = phi i64 [ %i.aaq, %.lr.ph.split.us.i413 ], [ %i.aau, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i ]
  %i.abh = icmp ult i64 %.us-phi.i389, %i.aaa
  call void @llvm.assume(i1 %i.abh)
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.aal, i64 %.us-phi.i389
  %i.abj = load i64, ptr %i.abi, align 8, !noalias !3390, !noundef !5 ; 2 uses
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.aal, i64 %.us-phi106.i390
  %i.abl = load i64, ptr %i.abk, align 8, !noalias !3390, !noundef !5 ; 2 uses
  %i.abm = getelementptr inbounds i8, ptr %i.aan, i64 %i.abl
  %3 = sub i64 %i.abj, %i.abl
  %4 = icmp sgt i64 %3, -1
  call void @llvm.assume(i1 %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3391
  %i.abn = getelementptr inbounds i8, ptr %i.aan, i64 %i.abj
  store ptr %i.abm, ptr %i.g, align 8, !noalias !3391
  store ptr %i.abn, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i374, align 8, !noalias !3391
  store i32 -2, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i375, align 8, !noalias !3391
  invoke fastcc void @_RNvMs3_CsdkROKCKhesT_3wktNtB5_3Wkt11from_tokensCscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %.noexc20.i394 unwind label %.loopexit.i391, !noalias !3374

.noexc20.i394:                                    ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3391
  %i.abo = load i64, ptr %i.h, align 8, !range !29, !noalias !3391, !noundef !5 ; 2 uses
  %i.abp = icmp eq i64 %i.abo, -2
  %i.abq = load i64, ptr %i.aap, align 8, !noalias !3392 ; 8 uses
  br i1 %i.abp, label %bb.fg, label %.noexc.i395

bb.fg:                                            ; preds = %.noexc20.i394
  store i64 %.us-phi.i389, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i369, align 8, !noalias !3376
  %i.abr = load ptr, ptr %i.aao, align 8, !noalias !3391, !nonnull !5, !noundef !5
  %i.abs = icmp sgt i64 %i.abq, -1
  br i1 %i.abs, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.abt = icmp eq i64 %i.abq, 0
  br i1 %i.abt, label %bb.fl, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i405

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i405: ; preds = %bb.fh
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3393
  %i.abu = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.abq, i64 noundef 1) #24, !noalias !3393 ; 3 uses
  %i.abv = icmp eq ptr %i.abu, null
  br i1 %i.abv, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i405, %bb.fg
  %.sroa.4.0.ph.i.i.i.i.i.i401 = phi i64 [ 1, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i405 ], [ 0, %bb.fg ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i401, i64 %i.abq) #25
          to label %.noexc21.i404 unwind label %.loopexit.split-lp.i402, !noalias !3374

.noexc21.i404:                                    ; preds = %bb.fi
  unreachable

bb.fj:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i405
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abu, ptr nonnull readonly align 1 %i.abr, i64 %i.abq, i1 false), !noalias !3394
  br label %bb.fl

.noexc.i395:                                      ; preds = %.noexc20.i394
  %.sroa.5.0.copyload3.i.i.i.i396 = load i64, ptr %i.aao, align 8, !noalias !3392
  %.sroa.7.0.copyload7.i.i.i.i397 = load ptr, ptr %.sroa.7.0..sroa_idx6.i.i.i.i376, align 8, !noalias !3392
  %.sroa.8.0.copyload9.i.i.i.i398 = load i64, ptr %.sroa.8.0..sroa_idx8.i.i.i.i377, align 8, !noalias !3392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i363, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx10.i.i.i.i378, i64 16, i1 false), !noalias !3395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i364, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i363, i64 16, i1 false), !noalias !3389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i383, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i364, i64 16, i1 false), !noalias !3376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i364)
  store i64 %i.abo, ptr %i.k, align 8, !noalias !3376
  store i64 %.sroa.5.0.copyload3.i.i.i.i396, ptr %.sroa.4.0..sroa_idx.i379, align 8, !noalias !3376
  store i64 %i.abq, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i380, align 8, !noalias !3376
  store ptr %.sroa.7.0.copyload7.i.i.i.i397, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i381, align 8, !noalias !3376
  store i64 %.sroa.8.0.copyload9.i.i.i.i398, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i382, align 8, !noalias !3376
  call fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtCsdkROKCKhesT_3wkt3WktEB5_(ptr noalias noundef align 8 dereferenceable(32) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k), !noalias !3374
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsdkROKCKhesT_3wkt3WktECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(56) %i.k)
          to label %bb.fm unwind label %.loopexit.i391, !noalias !3374

.loopexit.i391:                                   ; preds = %.noexc.i395, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArrayxENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i
  %lpad.loopexit.i392 = landingpad { ptr, i32 }
          cleanup
  store i64 %.us-phi.i389, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i369, align 8, !noalias !3376
  br label %bb.fk

.loopexit.split-lp.i402:                          ; preds = %bb.fl, %bb.fi, %bb.ff
  %lpad.loopexit.split-lp.i403 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fk:                                            ; preds = %.loopexit.split-lp.i402, %.loopexit.i391
  %lpad.phi.i393 = phi { ptr, i32 } [ %lpad.loopexit.i392, %.loopexit.i391 ], [ %lpad.loopexit.split-lp.i403, %.loopexit.split-lp.i402 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxENtNtB2b_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.l) #26
          to label %.body unwind label %bb.fn, !noalias !3374

bb.fl:                                            ; preds = %bb.fj, %bb.fh
  %.sroa.7.0.i.i.i.ph.i406 = phi ptr [ inttoptr (i64 1 to ptr), %bb.fh ], [ %i.abu, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3391
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i363)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3376
  store i64 -9223372036854775779, ptr %i.j, align 8, !noalias !3376
  %.sroa.4.0..sroa_idx50.i407 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.abq, ptr %.sroa.4.0..sroa_idx50.i407, align 8, !noalias !3376
  %.sroa.551.0..sroa_idx.i408 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.7.0.i.i.i.ph.i406, ptr %.sroa.551.0..sroa_idx.i408, align 8, !noalias !3376
  %.sroa.6.0..sroa_idx.i409 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.abq, ptr %.sroa.6.0..sroa_idx.i409, align 8, !noalias !3376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3376
  invoke void @_RNvXNtCs84Wnv3hhsUu_15geoarrow_schema5errorNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB2_13GeoArrowErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.fo unwind label %.loopexit.split-lp.i402, !noalias !3374

bb.fm:                                            ; preds = %.noexc.i395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3376
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i364)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i363)
  %i.abw = icmp ult i64 %.us-phi.i389, %i.aab
  br i1 %i.abw, label %.lr.ph.i384, label %.noexc.thread.i400.sink.split

bb.fn:                                            ; preds = %bb.fk
  %i.abx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3374
  unreachable

bb.fo:                                            ; preds = %bb.fl
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aby, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !3375
  store i64 1, ptr %0, align 8, !alias.scope !3374, !noalias !3375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3376
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxENtNtB2b_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.l)
          to label %.noexc415 unwind label %bb.q

.noexc415:                                        ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3376
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxEEB4_.exit

_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxEEB4_.exit: ; preds = %.noexc414, %.noexc415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3376
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayEB4_.exit

bb.fp:                                            ; preds = %bb.p
  %i.abz = extractvalue { ptr, ptr } %i.dz, 0     ; 10 uses
  %i.aca = extractvalue { ptr, ptr } %i.dz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 24
  %i.acc = load ptr, ptr %i.acb, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.acc(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.de, ptr noundef %i.abz)
          to label %bb.fq unwind label %bb.q

bb.fq:                                            ; preds = %bb.fp
  %i.acd = load i128, ptr %i.de, align 16, !noundef !5
  %i.ace = icmp eq i128 %i.acd, -355476744251357671167320073448530080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br i1 %i.ace, label %bb.fr, label %.invoke, !prof !14

.invoke:                                          ; preds = %bb.fq, %bb.fd, %bb.eq, %bb.eg, %bb.dv, %bb.dk, %bb.cp, %bb.ch, %bb.by, %bb.bp, %bb.bf, %bb.av, %bb.al, %bb.ac, %bb.s
  %i.acf = phi ptr [ @48, %bb.fd ], [ @48, %bb.eq ], [ @47, %bb.eg ], [ @46, %bb.dv ], [ @46, %bb.dk ], [ @45, %bb.cp ], [ @44, %bb.ch ], [ @43, %bb.by ], [ @42, %bb.bp ], [ @41, %bb.bf ], [ @40, %bb.av ], [ @39, %bb.al ], [ @38, %bb.ac ], [ @37, %bb.s ], [ @49, %bb.fq ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acf) #25
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abz) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3396)
  call void @llvm.experimental.noalias.scope.decl(metadata !3397)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.828.i418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3398
  store <2 x double> splat (double +inf), ptr %i.f, align 16, !alias.scope !3399, !noalias !3398
  %i.acg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x double> splat (double -inf), ptr %i.acg, align 16, !alias.scope !3399, !noalias !3398
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abz, i64 40
  %.val.i.i419 = load i64, ptr %i.ach, align 8, !alias.scope !3400, !noalias !3401, !noundef !5
  %i.aci = lshr i64 %.val.i.i419, 4               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3398
  store i64 -4, ptr %i.e, align 8, !noalias !3398
  %.sroa.218.0..sroa_idx.i420 = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 -4, ptr %.sroa.218.0..sroa_idx.i420, align 8, !noalias !3398
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i421 = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.abz, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i421, align 8, !noalias !3398
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i422 = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 5 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i423 = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store i64 %i.aci, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i423, align 8, !noalias !3398
  %i.acj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3398
  %exitcond.not.i4267.i = icmp eq i64 %i.aci, 0
  br i1 %exitcond.not.i4267.i, label %.noexc16._crit_edge.i444, label %.lr.ph.lr.ph.i424

.lr.ph.lr.ph.i424:                                ; preds = %bb.fr
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abz, i64 88
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abz, i64 72
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abz, i64 96
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abz, i64 64
  %i.aco = load ptr, ptr %i.acn, align 8, !alias.scope !3402, !noalias !3403, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i425 = icmp eq ptr %i.aco, null
  %i.acp = load i64, ptr %i.acm, align 8, !alias.scope !3397, !noalias !3396
  %i.acq = load ptr, ptr %i.acl, align 8, !alias.scope !3397, !noalias !3396
  %i.acr = load i64, ptr %i.ack, align 8, !alias.scope !3397, !noalias !3396
  %.sroa.828.40..sroa_idx.i426 = getelementptr inbounds nuw i8, ptr %.sroa.828.i418, i64 32
  %.sroa.4.0..sroa_idx.i427 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i428 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %.lr.ph.i.i450, %.lr.ph.lr.ph.i424
  %umax.i70.i = phi i64 [ %i.aci, %.lr.ph.lr.ph.i424 ], [ %umax.i.i451, %.lr.ph.i.i450 ] ; 4 uses
  %.us-phi545868.i = phi i64 [ 0, %.lr.ph.lr.ph.i424 ], [ %.us-phi54.i446, %.lr.ph.i.i450 ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i425, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i, label %.lr.ph.split.preheader.i430

.lr.ph.split.preheader.i430:                      ; preds = %.lr.ph.i429
  %umax.i431 = call i64 @llvm.umax.i64(i64 %.us-phi545868.i, i64 %i.acp)
end_hunk_1
