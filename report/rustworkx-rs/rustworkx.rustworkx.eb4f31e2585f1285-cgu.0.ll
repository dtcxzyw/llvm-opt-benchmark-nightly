Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 257
loop-unroll.NumUnrolled: 399
begin_hunk_0_@_RINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEB2d_NtB1d_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB2i_3err5PyErrEB3H_:bb.a
bb.gg:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i496
  %i.axm = add i16 %.sroa.05.0.i37.i.i.i494, -1
  %i.axn = and i16 %i.axm, %.sroa.05.0.i37.i.i.i494 ; 2 uses
  %.not.i.not.i.i.i498 = icmp eq i16 %i.axn, 0
  br i1 %.not.i.not.i.i.i498, label %._crit_edge.i.i.i499, label %.lr.ph.i.i.i493

bb.gh:                                            ; preds = %._crit_edge.i.i.i499
  %i.axo = add i64 %.sroa.011.0.i.i.i.i488, 16    ; 2 uses
  %i.axp = add i64 %.sroa.01.0.i.i.i.i490, %i.axo
  br label %.preheader1801

.noexc322:                                        ; preds = %bb.gf
  %.val2.i483.pre = load i32, ptr %i.aqr, align 4, !noalias !14058
  %i.axq = icmp eq i32 %.val2.i483.pre, %.sroa.9572.8.extract.trunc
  br i1 %i.axq, label %.noexc322.thread698, label %.invoke1790

.noexc322.thread698.loopexit2090:                 ; preds = %bb.ge
  %.sroa.9572.12.extract.shift.le = lshr i64 %.sroa.02.0.copyload.i.i, 32 ; 2 uses
  %.sroa.9572.12.extract.trunc.le2606 = trunc nuw i64 %.sroa.9572.12.extract.shift.le to i32
  br label %.noexc322.thread698

.noexc322.thread698:                              ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i496, %.noexc322.thread698.loopexit2090, %.noexc322
  %.sroa.9572.12.extract.shift2385 = phi i64 [ %.sroa.9572.12.extract.shift.le2609, %.noexc322 ], [ %.sroa.9572.12.extract.shift.le, %.noexc322.thread698.loopexit2090 ], [ %.sroa.9572.12.extract.shift.le2609, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i496 ] ; 2 uses
  %.sroa.9572.12.extract.trunc2382 = phi i32 [ %.sroa.9572.12.extract.trunc.le, %.noexc322 ], [ %.sroa.9572.12.extract.trunc.le2606, %.noexc322.thread698.loopexit2090 ], [ %.sroa.9572.12.extract.trunc.le, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i496 ] ; 4 uses
  %.sroa.5.0.i485701 = phi i64 [ 0, %.noexc322 ], [ 0, %.noexc322.thread698.loopexit2090 ], [ %.val.i.i.i.i495, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i496 ] ; 3 uses
  %i.axr = icmp ult i64 %.sroa.5.0.i485701, %i.anv
  br i1 %i.axr, label %bb.gi, label %.invoke1788.a

.backedge.sink.split:                             ; preds = %bb.ib, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i409, %bb.ig
  %.ph = phi ptr [ %i.big, %bb.ig ], [ %.ph2088, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i409 ], [ %.ph2088, %bb.ib ]
  %.ph1792 = phi i64 [ %i.bii, %bb.ig ], [ %.ph2089, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i409 ], [ %.ph2089, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.backedge.outer

bb.gi:                                            ; preds = %.noexc322.thread698
  %i.axs = getelementptr inbounds nuw [24 x i8], ptr %i.aqq, i64 %.sroa.5.0.i485701
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 8
  %i.axu = load double, ptr %i.axt, align 8, !noundef !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke fastcc void @_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2k_5types3any5PyAnyEB2f_NtB1f_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB2k_3err5PyErrEs1_0B3J_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.x, ptr nonnull %i.ab, ptr nonnull %i.ad, i32 %i.arb)
          to label %bb.gj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gj:                                            ; preds = %bb.gi
  %i.axv = load i64, ptr %i.x, align 8, !range !59, !noundef !58
  %i.axw = trunc nuw i64 %i.axv to i1
  %.sroa.050.0.copyload = load double, ptr %i.aqx, align 8 ; 2 uses
  br i1 %i.axw, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.453.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.451.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.050.0.copyload, ptr %i.axx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14059)
  %.val.i325 = load ptr, ptr %i.aql, align 8, !alias.scope !14059, !nonnull !58, !noundef !58 ; 2 uses
  %.val1.i326 = load i64, ptr %i.aqm, align 8, !alias.scope !14059, !noundef !58 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14060)
  %i.axy = icmp eq i64 %.val1.i326, 0
  br i1 %i.axy, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i327

.lr.ph.i.i.i327:                                  ; preds = %bb.gk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.012.i.i.i = phi i64 [ %i.aya, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.gk ] ; 2 uses
  %i.axz = getelementptr inbounds nuw [48 x i8], ptr %.val.i325, i64 %.sroa.0.012.i.i.i ; 2 uses
  %i.aya = add nuw nsw i64 %.sroa.0.012.i.i.i, 1  ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.axz, align 8, !alias.scope !14061, !noalias !14059 ; 2 uses
  %i.ayb = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.ayb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i327
  %i.ayc = getelementptr i8, ptr %i.axz, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ayc, align 8, !alias.scope !14060, !noalias !14059, !nonnull !58, !noundef !58
  %i.ayd = shl nuw i64 %.val8.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.ayd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14062
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i327
  %i.aye = icmp eq i64 %i.aya, %.val1.i326
  br i1 %i.aye, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i327

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.gk
  %.val2.i328 = load i64, ptr %i.y, align 8, !alias.scope !14059 ; 2 uses
  %i.ayf = icmp eq i64 %.val2.i328, 0
  br i1 %i.ayf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  %i.ayg = mul nuw i64 %.val2.i328, 48
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i325, i64 noundef %i.ayg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14059
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeEECskcxRuJ53GpR_9rustworkx.exit

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br i1 %cond, label %.noexc329, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ayh = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !14063, !noundef !58
  %i.ayi = xor i64 %.val3.i285, %.sroa.9572.12.extract.shift2385
  %i.ayj = zext i64 %i.ayi to i128
  %i.ayk = zext i64 %i.ayh to i128
  %i.ayl = mul nuw i128 %i.ayj, %i.ayk            ; 2 uses
  %i.aym = lshr i128 %i.ayl, 64
  %i.ayn = xor i128 %i.aym, %i.ayl
  %i.ayo = trunc i128 %i.ayn to i64               ; 2 uses
  %i.ayp = lshr i64 %i.ayo, 57
  %i.ayq = trunc nuw nsw i64 %i.ayp to i8
  %i.ayr = insertelement <16 x i8> poison, i8 %i.ayq, i64 0
  %i.ays = shufflevector <16 x i8> %i.ayr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gp, %bb.gm
  %.sroa.011.0.i.i.i.i507 = phi i64 [ 0, %bb.gm ], [ %i.azo, %bb.gp ]
  %.pn.i.i.i508 = phi i64 [ %i.ayo, %bb.gm ], [ %i.azp, %bb.gp ]
  %.sroa.01.0.i.i.i.i509 = and i64 %.pn.i.i.i508, %i.aqv ; 3 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.aqw, i64 %.sroa.01.0.i.i.i.i509
  %.sroa.0.0.copyload.i24.i.i.i510 = load <16 x i8>, ptr %i.ayt, align 1, !noalias !14064 ; 2 uses
  %i.ayu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i510, %i.ays
  %i.ayv = bitcast <16 x i1> %i.ayu to i16        ; 2 uses
  %.not.i.not36.i.i.i511 = icmp eq i16 %i.ayv, 0
  br i1 %.not.i.not36.i.i.i511, label %._crit_edge.i.i.i518, label %.lr.ph.i.i.i512

.lr.ph.i.i.i512:                                  ; preds = %bb.gn, %bb.go
  %.sroa.05.0.i37.i.i.i513 = phi i16 [ %i.azn, %bb.go ], [ %i.ayv, %bb.gn ] ; 3 uses
  %i.ayw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i513, i1 true)
  %i.ayx = zext nneg i16 %i.ayw to i64
  %i.ayy = add i64 %.sroa.01.0.i.i.i.i509, %i.ayx
  %i.ayz = and i64 %i.ayy, %i.aqv
  %i.aza = sub nsw i64 0, %i.ayz
  %i.azb = getelementptr inbounds [8 x i8], ptr %i.aqw, i64 %i.aza
  %i.azc = getelementptr inbounds i8, ptr %i.azb, i64 -8
  %.val.i.i.i.i514 = load i64, ptr %i.azc, align 8, !noalias !14065, !noundef !58 ; 4 uses
  %i.azd = icmp ult i64 %.val.i.i.i.i514, %i.anv
  br i1 %i.azd, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i515, label %.invoke1788.a

.invoke1788.a:                                    ; preds = %.noexc322.thread698, %.lr.ph.i.i.i, %.lr.ph.i.i.i493, %.lr.ph.i.i.i512
  %i.aze = phi i64 [ %.val.i.i.i.i, %.lr.ph.i.i.i ], [ %.val.i.i.i.i495, %.lr.ph.i.i.i493 ], [ %.val.i.i.i.i514, %.lr.ph.i.i.i512 ], [ %.sroa.5.0.i485701, %.noexc322.thread698 ]
  %i.azf = phi ptr [ @1218, %.lr.ph.i.i.i ], [ @1218, %.lr.ph.i.i.i493 ], [ @1218, %.lr.ph.i.i.i512 ], [ @61, %.noexc322.thread698 ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.aze, i64 noundef %i.anv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.azf) #60
          to label %.cont1789.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14066

.cont1789.a:                                      ; preds = %.invoke1788.a
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i515: ; preds = %.lr.ph.i.i.i512
  %i.azg = getelementptr inbounds nuw [24 x i8], ptr %i.aqq, i64 %.val.i.i.i.i514
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 16
  %.val2.i.i.i.i.i516 = load i32, ptr %i.azh, align 4, !noalias !14066, !noundef !58
  %i.azi = icmp eq i32 %.val2.i.i.i.i.i516, %.sroa.9572.12.extract.trunc2382
  br i1 %i.azi, label %.noexc329.thread704, label %bb.go, !prof !68

._crit_edge.i.i.i518:                             ; preds = %bb.go, %bb.gn
  %i.azj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i510, splat (i8 -1)
  %i.azk = bitcast <16 x i1> %i.azj to i16
  %i.azl = icmp eq i16 %i.azk, 0
  br i1 %i.azl, label %bb.gp, label %.invoke1790, !prof !62

bb.go:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i515
  %i.azm = add i16 %.sroa.05.0.i37.i.i.i513, -1
  %i.azn = and i16 %i.azm, %.sroa.05.0.i37.i.i.i513 ; 2 uses
  %.not.i.not.i.i.i517 = icmp eq i16 %i.azn, 0
  br i1 %.not.i.not.i.i.i517, label %._crit_edge.i.i.i518, label %.lr.ph.i.i.i512

bb.gp:                                            ; preds = %._crit_edge.i.i.i518
  %i.azo = add i64 %.sroa.011.0.i.i.i.i507, 16    ; 2 uses
  %i.azp = add i64 %.sroa.01.0.i.i.i.i509, %i.azo
  br label %bb.gn

.noexc329:                                        ; preds = %bb.gl
  %.val2.i502 = load i32, ptr %i.aqr, align 4, !noalias !14067, !noundef !58
  %i.azq = icmp eq i32 %.val2.i502, %.sroa.9572.12.extract.trunc2382
  br i1 %i.azq, label %.noexc329.thread704, label %.invoke1790

.noexc329.thread704:                              ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i515, %.noexc329
  %.sroa.5.0.i504707 = phi i64 [ 0, %.noexc329 ], [ %.val.i.i.i.i514, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i515 ]
  %i.azr = getelementptr inbounds nuw [24 x i8], ptr %i.aqq, i64 %.sroa.5.0.i504707
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  %i.azt = fadd double %i.axu, %.sroa.050.0.copyload
  %i.azu = load double, ptr %i.azs, align 8, !noundef !58
  %i.azv = fadd double %i.azt, %i.azu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.azw = invoke fastcc noundef align 8 ptr @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBO_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aa, i32 %.sroa.9572.8.extract.trunc)
          to label %.noexc334 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14068 ; 3 uses

.noexc334:                                        ; preds = %.noexc329.thread704
  %.not.i333 = icmp eq ptr %i.azw, null
  br i1 %.not.i333, label %.invoke1790, label %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit, !prof !62

.invoke1790:                                      ; preds = %.noexc334, %.noexc329, %.noexc322, %._crit_edge.i.i.i499, %._crit_edge.i.i.i518
  %i.azx = phi ptr [ @248, %._crit_edge.i.i.i518 ], [ @247, %._crit_edge.i.i.i499 ], [ @247, %.noexc322 ], [ @248, %.noexc329 ], [ @249, %.noexc334 ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.azx) #60
          to label %.cont1791 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14069

.cont1791:                                        ; preds = %.invoke1790
  unreachable

_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc334
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azw, i64 8
  %i.azz = load ptr, ptr %i.azy, align 8, !nonnull !58, !noundef !58
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azw, i64 16
  %i.bab = load i64, ptr %i.baa, align 8, !noundef !58 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14070)
  call void @llvm.experimental.noalias.scope.decl(metadata !14071)
  %i.bac = call i64 @llvm.usub.sat.i64(i64 %i.bab, i64 1) ; 4 uses
  %i.bad = shl i64 %i.bac, 3                      ; 4 uses
  %i.bae = icmp samesign ugt i64 %i.bac, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.bad, 9223372036854775800
  %or.cond.i.i.i337 = or i1 %i.bae, %.not.i.i.i
  br i1 %or.cond.i.i.i337, label %bb.gt, label %bb.gq, !prof !64

bb.gq:                                            ; preds = %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit
  %i.baf = icmp eq i64 %i.bad, 0
  br i1 %i.baf, label %bb.ha, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !14072
  %i.bag = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bad, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14072 ; 2 uses
  %i.bah = icmp eq ptr %i.bag, null
  br i1 %i.bah, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.bai = ptrtoint ptr %i.bag to i64
  br label %bb.ha

bb.gt:                                            ; preds = %bb.gr, %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit
  %.sroa.47.0.ph.i.i = phi i64 [ 8, %bb.gr ], [ 0, %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.47.0.ph.i.i, i64 %i.bad) #61
          to label %.noexc342 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14073

.noexc342:                                        ; preds = %bb.gt
  unreachable

bb.gu:                                            ; preds = %bb.ha
  %i.baj = add i64 %i.bab, 4611686018427387903
  %i.bak = and i64 %i.baj, 4611686018427387903    ; 2 uses
  br i1 %i.aqy, label %select.unfold.i.i.i.i.i.i.i.i.i.i, label %.split1076

.split1076:                                       ; preds = %bb.gu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gz, %.split1076
  %.val10.i.i.i.i.i.i.i.i = phi i64 [ 0, %.split1076 ], [ %i.bbv, %bb.gz ] ; 3 uses
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.bbz, i64 %.val10.i.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i.i = load i32, ptr %i.bal, align 4, !noalias !14074 ; 2 uses
  %i.bam = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !14075, !noundef !58
  %i.ban = zext i32 %.val15.i.i.i.i.i.i.i.i to i64
  %i.bao = xor i64 %.sroa.28.0.copyload, %i.ban
  %i.bap = zext i64 %i.bao to i128
  %i.baq = zext i64 %i.bam to i128
  %i.bar = mul nuw i128 %i.baq, %i.bap            ; 2 uses
  %i.bas = lshr i128 %i.bar, 64
  %i.bat = xor i128 %i.bas, %i.bar
  %i.bau = trunc i128 %i.bat to i64               ; 2 uses
  %i.bav = lshr i64 %i.bau, 57
  %i.baw = trunc nuw nsw i64 %i.bav to i8
  %i.bax = insertelement <16 x i8> poison, i8 %i.baw, i64 0
  %i.bay = shufflevector <16 x i8> %i.bax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gy, %bb.gv
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.gv ], [ %i.bbp, %bb.gy ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bau, %bb.gv ], [ %i.bbq, %bb.gy ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.13.0.copyload ; 3 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.baz, align 1, !noalias !14076 ; 2 uses
  %i.bba = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i, %i.bay
  %i.bbb = bitcast <16 x i1> %i.bba to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bbb, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.gw, %bb.gx
  %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bbo, %bb.gx ], [ %i.bbb, %bb.gw ] ; 3 uses
  %i.bbc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bbd = zext nneg i16 %i.bbc to i64
  %i.bbe = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bbd
  %i.bbf = and i64 %i.bbe, %.sroa.13.0.copyload
  %i.bbg = sub nsw i64 0, %i.bbf
  %i.bbh = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.bbg ; 2 uses
  %i.bbi = getelementptr inbounds i8, ptr %i.bbh, i64 -8
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bbi, align 4, !noalias !14077, !noundef !58
  %i.bbj = icmp eq i32 %.val15.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bbj, label %bb.gz, label %bb.gx, !prof !68

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.gx, %bb.gw
  %i.bbk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bbl = bitcast <16 x i1> %i.bbk to i16
  %i.bbm = icmp eq i16 %i.bbl, 0
  br i1 %i.bbm, label %bb.gy, label %select.unfold.i.i.i.i.i.i.i.i.i.i, !prof !62

bb.gx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbn = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bbo = and i16 %i.bbn, %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bbo, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.gy:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbp = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.bbq = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bbp
  br label %bb.gw

select.unfold.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.gu, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1207) #60
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body.i.i, !noalias !14078

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.gz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bbr = getelementptr inbounds i8, ptr %i.bbh, i64 -4
  %i.bbs = load i32, ptr %i.bbr, align 4, !noalias !14078, !noundef !58
  %i.bbt = zext i32 %i.bbs to i64
  %i.bbu = getelementptr inbounds nuw [8 x i8], ptr %i.bbx, i64 %.val10.i.i.i.i.i.i.i.i
  store i64 %i.bbt, ptr %i.bbu, align 8, !noalias !14079
  %i.bbv = add i64 %.val10.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.bbw = icmp eq i64 %i.bbv, %i.bak
  br i1 %i.bbw, label %.loopexit, label %bb.gv

bb.ha:                                            ; preds = %bb.gq, %bb.gs
  %.sroa.10.0.i.i338 = phi i64 [ %i.bai, %bb.gs ], [ 8, %bb.gq ]
  %.sroa.47.0.i.i = phi i64 [ %i.bac, %bb.gs ], [ 0, %bb.gq ] ; 6 uses
  %i.bbx = inttoptr i64 %.sroa.10.0.i.i338 to ptr ; 6 uses
  %i.bby = icmp samesign ule i64 %i.bac, %.sroa.47.0.i.i
  call void @llvm.assume(i1 %i.bby)
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.azz, i64 4
  %or.cond = icmp ult i64 %i.bab, 2
  br i1 %or.cond, label %.loopexit, label %bb.gu

.body.i.i:                                        ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i
  %i.bca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcb = icmp eq i64 %.sroa.47.0.i.i, 0
  br i1 %i.bcb, label %.body343, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i341

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i341: ; preds = %.body.i.i
  %i.bcc = shl nuw i64 %.sroa.47.0.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bbx, i64 noundef %i.bcc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14080
  br label %.body343

.loopexit:                                        ; preds = %bb.gz, %bb.ha
  %.sroa.5.0.copyload.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.ha ], [ %i.bak, %bb.gz ] ; 8 uses
  store i64 %.sroa.47.0.i.i, ptr %i.w, align 8, !alias.scope !14081
  store ptr %i.bbx, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !14081
  store i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !14081
  %i.bcd = invoke fastcc noundef align 8 ptr @_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBO_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aa, i32 %.sroa.9572.12.extract.trunc2382)
          to label %.noexc346 unwind label %.thread715.loopexit, !noalias !14082 ; 3 uses

.noexc346:                                        ; preds = %.loopexit
  %.not.i345 = icmp eq ptr %i.bcd, null
  br i1 %.not.i345, label %bb.hb, label %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit348, !prof !62

bb.hb:                                            ; preds = %.noexc346
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #60
          to label %.noexc347 unwind label %.thread715.loopexit.split-lp, !noalias !14083

.noexc347:                                        ; preds = %bb.hb
  unreachable

.thread715.loopexit:                              ; preds = %.loopexit
  %lpad.loopexit747 = landingpad { ptr, i32 }
          cleanup
  br label %.thread712

.thread715.loopexit.split-lp:                     ; preds = %select.unfold727.invoke, %.invoke1793, %bb.hf, %bb.hb
  %lpad.loopexit.split-lp748 = landingpad { ptr, i32 }
          cleanup
  br label %.thread712thread-pre-split

_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit348: ; preds = %.noexc346
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 8
  %i.bcf = load ptr, ptr %i.bce, align 8, !nonnull !58, !noundef !58 ; 2 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcd, i64 16
  %i.bch = load i64, ptr %i.bcg, align 8, !noundef !58 ; 4 uses
  %.idx1117 = shl nuw nsw i64 %i.bch, 2
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %.idx1117
  %i.bcj = call i64 @llvm.usub.sat.i64(i64 %i.bch, i64 1) ; 4 uses
  %i.bck = shl i64 %i.bcj, 3                      ; 4 uses
  %i.bcl = icmp samesign ugt i64 %i.bcj, 2305843009213693951
  %.not.i.i.i350 = icmp ugt i64 %i.bck, 9223372036854775800
  %or.cond.i.i.i351 = or i1 %i.bcl, %.not.i.i.i350
  br i1 %or.cond.i.i.i351, label %bb.hf, label %bb.hc, !prof !64

bb.hc:                                            ; preds = %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit348
  %i.bcm = icmp eq i64 %i.bck, 0
  br i1 %i.bcm, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i352, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !14084
  %i.bcn = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bck, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14084 ; 2 uses
  %i.bco = icmp eq ptr %i.bcn, null
  br i1 %i.bco, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bcp = ptrtoint ptr %i.bcn to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i352

bb.hf:                                            ; preds = %bb.hd, %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit348
  %.sroa.47.0.ph.i.i362 = phi i64 [ 8, %bb.hd ], [ 0, %_RNvXs5_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexRBN_E5indexCskcxRuJ53GpR_9rustworkx.exit348 ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.47.0.ph.i.i362, i64 %i.bck) #61
          to label %.noexc363 unwind label %.thread715.loopexit.split-lp, !noalias !14085

.noexc363:                                        ; preds = %bb.hf
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i352: ; preds = %bb.he, %bb.hc
  %.sroa.10.0.i.i353 = phi i64 [ %i.bcp, %bb.he ], [ 8, %bb.hc ]
  %.sroa.47.0.i.i354 = phi i64 [ %i.bcj, %bb.he ], [ 0, %bb.hc ] ; 7 uses
  %i.bcq = inttoptr i64 %.sroa.10.0.i.i353 to ptr ; 5 uses
  %i.bcr = icmp samesign ule i64 %i.bcj, %.sroa.47.0.i.i354
  call void @llvm.assume(i1 %i.bcr)
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.bch, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.hg, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i352
  %i.bcs = icmp samesign ult i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.bcs)
  br label %bb.ho

bb.hg:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i352
  br i1 %i.aqy, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split1077.preheader

.split1077.preheader:                             ; preds = %bb.hg
  %i.bct = add nsw i64 %i.bch, -1
  br label %.split1077

.split1077:                                       ; preds = %.split1077.preheader, %bb.hl
  %.val6.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.beh, %bb.hl ], [ 0, %.split1077.preheader ] ; 3 uses
  %i.bcu = phi i64 [ %i.bcx, %bb.hl ], [ %i.bct, %.split1077.preheader ]
  %i.bcv = phi ptr [ %i.bcw, %bb.hl ], [ %i.bci, %.split1077.preheader ] ; 2 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bcf, %i.bcv
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB1m_3rev3RevINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtB38_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5K_5types3any5PyAnyEB5F_NtB3a_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5K_3err5PyErrEs3_0EE9from_iterB79_.exit, label %bb.hh

bb.hh:                                            ; preds = %.split1077
  %i.bcw = getelementptr inbounds i8, ptr %i.bcv, i64 -4 ; 2 uses
  %.val11.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bcw, align 4, !noalias !14086 ; 2 uses
  %i.bcx = add nsw i64 %i.bcu, -1                 ; 2 uses
  %i.bcy = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !14087, !noundef !58
  %i.bcz = zext i32 %.val11.i.i.i.i.i.i.i.i.i.i to i64
  %i.bda = xor i64 %.sroa.28.0.copyload, %i.bcz
  %i.bdb = zext i64 %i.bda to i128
  %i.bdc = zext i64 %i.bcy to i128
  %i.bdd = mul nuw i128 %i.bdc, %i.bdb            ; 2 uses
  %i.bde = lshr i128 %i.bdd, 64
  %i.bdf = xor i128 %i.bde, %i.bdd
  %i.bdg = trunc i128 %i.bdf to i64               ; 2 uses
  %i.bdh = lshr i64 %i.bdg, 57
  %i.bdi = trunc nuw nsw i64 %i.bdh to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.bdj = insertelement <16 x i8> poison, i8 %i.bdi, i64 0
  %i.bdk = shufflevector <16 x i8> %i.bdj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hk, %bb.hh
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.hh ], [ %i.beb, %bb.hk ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bdg, %bb.hh ], [ %i.bec, %bb.hk ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.13.0.copyload ; 3 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bdl, align 1, !noalias !14088 ; 2 uses
  %i.bdm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bdk
  %i.bdn = bitcast <16 x i1> %i.bdm to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bdn, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.hi, %bb.hj
  %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bea, %bb.hj ], [ %i.bdn, %bb.hi ] ; 3 uses
  %i.bdo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bdp = zext nneg i16 %i.bdo to i64
  %i.bdq = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bdp
  %i.bdr = and i64 %i.bdq, %.sroa.13.0.copyload
  %i.bds = sub nsw i64 0, %i.bdr
  %i.bdt = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.bds ; 2 uses
  %i.bdu = getelementptr inbounds i8, ptr %i.bdt, i64 -8
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bdu, align 4, !noalias !14089, !noundef !58
  %i.bdv = icmp eq i32 %.val11.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bdv, label %bb.hl, label %bb.hj, !prof !68

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.hj, %bb.hi
  %i.bdw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bdx = bitcast <16 x i1> %i.bdw to i16
  %i.bdy = icmp eq i16 %i.bdx, 0
  br i1 %i.bdy, label %bb.hk, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !62

bb.hj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bdz = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bea = and i16 %i.bdz, %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bea, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hk:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.beb = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.bec = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.beb
  br label %bb.hi

select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.hg, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1208) #60
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i359, !noalias !14090

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.hl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bed = getelementptr inbounds i8, ptr %i.bdt, i64 -4
  %i.bee = load i32, ptr %i.bed, align 4, !noalias !14090, !noundef !58
  %i.bef = zext i32 %i.bee to i64
  %i.beg = getelementptr inbounds nuw [8 x i8], ptr %i.bcq, i64 %.val6.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bef, ptr %i.beg, align 8, !noalias !14091
  %i.beh = add nuw nsw i64 %.val6.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bei = icmp eq i64 %i.bcx, 0
  br i1 %i.bei, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB1m_3rev3RevINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtB38_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5K_5types3any5PyAnyEB5F_NtB3a_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5K_3err5PyErrEs3_0EE9from_iterB79_.exit, label %.split1077

.body.i.i359:                                     ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bek = icmp eq i64 %.sroa.47.0.i.i354, 0
  br i1 %i.bek, label %.thread712thread-pre-split, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i360

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i360: ; preds = %.body.i.i359
  %i.bel = shl nuw i64 %.sroa.47.0.i.i354, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bcq, i64 noundef %i.bel, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14092
  br label %.thread712thread-pre-split

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB1m_3rev3RevINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtB38_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5K_5types3any5PyAnyEB5F_NtB3a_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5K_3err5PyErrEs3_0EE9from_iterB79_.exit: ; preds = %.split1077, %bb.hl
  %.us-phi.ph = phi i64 [ %i.beh, %bb.hl ], [ %.val6.i.i.i.i.i.i.i.i.i.i, %.split1077 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14093)
  %i.bem = sub nsw i64 %.sroa.47.0.i.i, %.sroa.5.0.copyload.sink.i.i.i.i.i.i
  %i.ben = icmp ugt i64 %.us-phi.ph, %i.bem
  br i1 %i.ben, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i, !prof !14094

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB1m_3rev3RevINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtB38_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5K_5types3any5PyAnyEB5F_NtB3a_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5K_3err5PyErrEs3_0EE9from_iterB79_.exit
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef %.sroa.5.0.copyload.sink.i.i.i.i.i.i, i64 noundef %.us-phi.ph, i64 noundef 8, i64 noundef 8)
          to label %.noexc367 unwind label %bb.hn

.noexc367:                                        ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.beo = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !14093, !noundef !58 ; 2 uses
  %i.bep = icmp ult i64 %i.beo, 1152921504606846976
  call void @llvm.assume(i1 %i.bep)
  %.pre = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !14093
  br label %bb.hm

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB1m_3rev3RevINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17fast_metric_edgesRINtNtB38_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5K_5types3any5PyAnyEB5F_NtB3a_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5K_3err5PyErrEs3_0EE9from_iterB79_.exit
  %i.beq = icmp samesign ult i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.beq)
  %.not.i366 = icmp eq i64 %.us-phi.ph, 0
  br i1 %.not.i366, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i, %.noexc367
  %i.ber = phi ptr [ %.pre, %.noexc367 ], [ %i.bbx, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ] ; 2 uses
  %i.bes = phi i64 [ %i.beo, %.noexc367 ], [ %.sroa.5.0.copyload.sink.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ] ; 2 uses
  %i.bet = getelementptr inbounds nuw [8 x i8], ptr %i.ber, i64 %i.bes
  %i.beu = shl nuw nsw i64 %.us-phi.ph, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bet, ptr nonnull readonly align 8 %i.bcq, i64 %i.beu, i1 false), !noalias !14093
  br label %bb.ho

bb.hn:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.bev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bew = icmp eq i64 %.sroa.47.0.i.i354, 0
  br i1 %i.bew, label %.thread712thread-pre-split, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i369

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i369: ; preds = %bb.hn
  %i.bex = shl nuw i64 %.sroa.47.0.i.i354, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bcq, i64 noundef %i.bex, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14095
  br label %.thread712thread-pre-split

bb.ho:                                            ; preds = %bb.hm, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread
  %.val1.i410 = phi ptr [ %i.ber, %bb.hm ], [ %i.bbx, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.bbx, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread ] ; 4 uses
  %.val6.i.i.lcssa.sink.i.i.i.i.i.i.i.i721 = phi i64 [ %.us-phi.ph, %bb.hm ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread ]
  %i.bey = phi i64 [ %i.bes, %bb.hm ], [ %.sroa.5.0.copyload.sink.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ], [ %.sroa.5.0.copyload.sink.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.thread ]
  %i.bez = add i64 %i.bey, %.val6.i.i.lcssa.sink.i.i.i.i.i.i.i.i721 ; 2 uses
  store i64 %i.bez, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !14093
  %i.bfa = icmp eq i64 %.sroa.47.0.i.i354, 0
  br i1 %i.bfa, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit375, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i373

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i373: ; preds = %bb.ho
  %i.bfb = shl nuw i64 %.sroa.47.0.i.i354, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bcq, i64 noundef %i.bfb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14096
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit375

end_hunk_0
begin_hunk_1_@_RINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEB6_:bb.a
_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit, %bb.ab, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvBS_20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedE0EBW_.exit
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.af)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit244, %bb.k
  %.sroa.054.0 = phi i8 [ %i.ge, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit244 ], [ 0, %bb.k ]
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !58, !noundef !58 ; 4 uses
  %i.cc = load i64, ptr %i.bz, align 8, !range !61, !noundef !58
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !58 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 144115188075855872
  call void @llvm.assume(i1 %i.cf)
  %.idx457 = shl nuw nsw i64 %i.ce, 6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx457 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.cb, ptr %i.v, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.cb, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.cc, ptr %.sroa.659.0..sroa_idx, align 8
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.cg, ptr %.sroa.760.0..sroa_idx, align 8
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph: ; preds = %bb.l
  %.not185 = icmp eq ptr %4, null
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, i64 24, i1 false)
  br i1 %.not182, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.j
  tail call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %bb.n
  %.sroa.013.0 = phi ptr [ %.sroa.013.1, %bb.t ], [ @_Py_NoneStruct, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.r, ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noundef nonnull %.sroa.013.0)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RINvMsq_NtCsi0YPOvDEjiZ_4pyo38instanceINtB6_2PyNtNtNtB8_5types3any5PyAnyE5call1TINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1p_6string6StringB2f_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ad, ptr nonnull %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !35748
  invoke fastcc void @_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3mapINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBY_6string6StringB1O_ENtNtBb_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ae)
          to label %.noexc239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35749

.noexc239:                                        ; preds = %bb.q
  %i.cm = load i64, ptr %i.p, align 8, !range !59, !noalias !35748, !noundef !58
  %i.cn = trunc nuw i64 %i.cm to i1
  %.sroa.5317.8.copyload = load ptr, ptr %i.ba, align 8, !noalias !35750 ; 2 uses
  br i1 %i.cn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc239
  %.sroa.9318.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.494.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9318.8..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !35748
  br label %bb.u

bb.s:                                             ; preds = %.noexc239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !35748
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.s
  %.sroa.013.1 = phi ptr [ %.sroa.085.0.copyload, %bb.x ], [ %.sroa.5317.8.copyload, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.o

bb.u:                                             ; preds = %bb.w, %bb.r
  %.sroa.085.0.copyload.sink = phi ptr [ %.sroa.085.0.copyload, %bb.w ], [ %.sroa.5317.8.copyload, %bb.r ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.085.0.copyload.sink, ptr %i.co, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.af)
          to label %bb.ac unwind label %bb.g

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.cp = load i64, ptr %i.ad, align 8, !range !59, !noundef !58
  %i.cq = trunc nuw i64 %i.cp to i1
  %.sroa.085.0.copyload = load ptr, ptr %i.az, align 8 ; 2 uses
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.488.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.486.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.u

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.t

bb.y:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35751)
  %i.cr = load i64, ptr %i.r, align 16, !range !109, !alias.scope !35751, !noundef !58
  %.not.i = icmp eq i64 %i.cr, -1
  br i1 %.not.i, label %bb.aa, label %bb.z, !prof !68

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !35752
  %i.cs = load <2 x i64>, ptr %i.r, align 16, !alias.scope !35751
  store <2 x i64> %i.cs, ptr %i.q, align 16, !noalias !35752
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1066) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35751

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ct = load i32, ptr %i.bb, align 8, !alias.scope !35751, !noundef !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cu = zext i32 %i.ct to i64
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ag, i64 noundef %i.cu, i32 noundef %i.ct)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.cv = icmp eq ptr %i.bx, %i.as
  br i1 %i.cv, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit

bb.ac:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, %bb.ch, %bb.ac
  %.sroa.077.4 = phi i8 [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit ], [ 0, %bb.ch ], [ 1, %bb.ac ] ; 4 uses
  %.val226 = load ptr, ptr %i.ag, align 8         ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val227 = load i64, ptr %i.cw, align 8, !noundef !58 ; 3 uses
  %i.cx = icmp eq i64 %.val227, 0
  br i1 %i.cx, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.ad
  %i.cy = shl i64 %.val227, 4                     ; 2 uses
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %.val227, 17
  %i.db = add i64 %i.da, %i.cz                    ; 4 uses
  %i.dc = icmp uge i64 %i.db, %i.cz
  %i.dd = icmp ult i64 %i.db, 9223372036854775793
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.dd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val226) ]
  %i.de = icmp eq i64 %i.db, 0
  br i1 %i.de, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %i.df = sub nuw nsw i64 -16, %i.cy
  %i.dg = getelementptr inbounds i8, ptr %.val226, i64 %i.df
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

bb.af:                                            ; preds = %bb.bg, %bb.c, %bb.ba, %bb.cg, %bb.dt, %bb.ej, %bb.ei, %bb.ef, %.thread395.loopexit.split-lp, %.loopexit.split-lp424, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa, %bb.h
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %bb.h ], [ %i.bv, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ %.val6.le.i.i.i, %bb.h ], [ %.sroa.0.0.i.i.i.i.1, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %i.bd, i64 %.sroa.04.0.i.i.i.epil.init ; 2 uses
  %.val.i.i6.i.epil = load i64, ptr %i.di, align 8, !range !59, !noundef !58
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val11.i.i.i.epil = load i64, ptr %i.dj, align 8
  %i.dk = trunc nuw i64 %.val.i.i6.i.epil to i1
  %i.dl = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.i.i.i.epil.init, i64 %.val11.i.i.i.epil)
  %.sroa.0.0.i.i.i.i.epil = select i1 %i.dk, i64 %i.dl, i64 %.sroa.02.0.i.i.i.epil.init
  br label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i: ; preds = %.epil.preheader, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENCINvB1C_20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i
  %.sroa.3.0.i = phi i64 [ %.mux, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENCINvB1C_20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i ], [ %.sroa.0.0.i.i.i.i.1, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %.epil.preheader ]
  %i.dm = trunc nuw i64 %.val.i.i.i to i1
  %.sroa.014.0 = select i1 %i.dm, i64 %.sroa.3.0.i, i64 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.sink35.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink35.i.sroa.gep7.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dn = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.014.0, i64 1) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !35753
  %i.do = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 8, !range !60, !noalias !35754, !noundef !58
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %._RNvYNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCscQOBX8uaZYv_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCslwFuT2d6ECx_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, !prof !68

._RNvYNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i
  %.pre.i.i.i.i.i = load i64, ptr %i.do, align 8, !noalias !35755
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !35755
  br label %bb.ag

_RINvMs0_NtNtNtNtCscQOBX8uaZYv_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCslwFuT2d6ECx_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i
  %i.ds = invoke { i64, i64 } @_RNvNtNtNtCscQOBX8uaZYv_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc240 unwind label %bb.g, !noalias !35756 ; 2 uses

.noexc240:                                        ; preds = %_RINvMs0_NtNtNtNtCscQOBX8uaZYv_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCslwFuT2d6ECx_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.dt = extractvalue { i64, i64 } %i.ds, 0
  %i.du = extractvalue { i64, i64 } %i.ds, 1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !noalias !35756
  store i8 1, ptr %i.dp, align 8, !noalias !35756
  br label %bb.ag

bb.ag:                                            ; preds = %._RNvYNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i, %.noexc240
  %.pre-phi28.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i ], [ %i.du, %.noexc240 ]
  %i.dw = phi i64 [ %.pre.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i ], [ %i.dt, %.noexc240 ] ; 2 uses
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.do, align 8, !noalias !35755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35757)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !35758
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.n, i64 noundef range(i64 1, 0) %i.dn)
          to label %.noexc241 unwind label %bb.g, !noalias !35759

.noexc241:                                        ; preds = %bb.ag
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !35759 ; 3 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i.i, align 8, !noalias !35759 ; 5 uses
  %i.dy = shl i64 %i.dn, 4                        ; 3 uses
  %i.dz = icmp ugt i64 %i.dn, 1152921504606846975
  %.not.i.i.i2.i.i = icmp ugt i64 %i.dy, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.dz, %.not.i.i.i2.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.aj, label %bb.ah, !prof !64

bb.ah:                                            ; preds = %.noexc241
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !35760
  %i.ea = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !35760 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.aj, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i.i

bb.ai:                                            ; preds = %bb.aj
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i, 0
  br i1 %i.ed, label %.body, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ee = shl i64 %.sroa.5.0.copyload.i.i.i.i, 3
  %i.ef = icmp slt i64 %.sroa.5.0.copyload.i.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.ef), !noalias !35761
  %i.eg = and i64 %i.ee, -16                      ; 2 uses
  %i.eh = add i64 %i.eg, 16                       ; 2 uses
  %i.ei = add nsw i64 %.sroa.5.0.copyload.i.i.i.i, 17
  %i.ej = add i64 %i.ei, %i.eh                    ; 3 uses
  %i.ek = icmp uge i64 %i.ej, %i.eh
  tail call void @llvm.assume(i1 %i.ek), !noalias !35761
  %i.el = icmp ult i64 %i.ej, 9223372036854775793
  tail call void @llvm.assume(i1 %i.el), !noalias !35761
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ], !noalias !35761
  %i.em = sub nuw nsw i64 -16, %i.eg
  %i.en = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.em
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.en, i64 noundef %i.ej, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !35759
  br label %.body

bb.aj:                                            ; preds = %bb.ah, %.noexc241
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.ah ], [ 0, %.noexc241 ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.dy) #61
          to label %bb.ak unwind label %bb.ai, !noalias !35759

bb.ak:                                            ; preds = %bb.aj
  unreachable

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i.i: ; preds = %bb.ah
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !noalias !35753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !35758
  store i64 %i.dn, ptr %i.o, align 8, !alias.scope !35757, !noalias !35753
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ea, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !35757, !noalias !35753
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !35757, !noalias !35753
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !alias.scope !35757, !noalias !35753
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !35757, !noalias !35753
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 3 uses
  store i64 %i.dw, ptr %i.ep, align 8, !alias.scope !35757, !noalias !35753
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  store i64 %.pre-phi28.i.i, ptr %i.eq, align 8, !alias.scope !35757, !noalias !35753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35762)
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !35762, !noalias !35753, !noundef !58
  %i.et = icmp eq i64 %i.es, 0
  %i.eu = lshr i64 %i.dn, 1
  %i.ev = and i64 %i.dn, 1
  %spec.select.i.i.i = add nuw nsw i64 %i.eu, %i.ev
  %.sroa.0.0.i.i.i = select i1 %i.et, i64 %i.dn, i64 %spec.select.i.i.i
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o, i64 noundef %.sroa.0.0.i.i.i)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35763

.noexc.i.i:                                       ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i.i
  %.not418 = icmp eq i64 %.sroa.014.0, 0
  br i1 %.not418, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.noexc5.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ex = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fc, %.noexc5.i.i ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !35764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !35765
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35764

.noexc3.i.i:                                      ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !35766)
  %i.ey = load i64, ptr %i.m, align 8, !range !109, !alias.scope !35766, !noalias !35765, !noundef !58 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ey, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_10UndirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4S_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5L_8iterator8Iterator8for_each4callB4B_NCINvXsb_NtB4U_3mapINtB8l_8IndexMapB21_uEINtB5J_6ExtendB4B_E6extendIB6A_B6z_B4J_EE0E0E0E0E0B2Y_.exit.i.i.i.i.i.i.i.i, label %bb.am, !prof !68

bb.am:                                            ; preds = %.noexc3.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !35767
  %i.ez = load i64, ptr %i.ew, align 8, !alias.scope !35766, !noalias !35765
  store i64 %i.ey, ptr %i.l, align 8, !noalias !35767
  br label %.invoke.i.i

_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_10UndirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4S_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5L_8iterator8Iterator8for_each4callB4B_NCINvXsb_NtB4U_3mapINtB8l_8IndexMapB21_uEINtB5J_6ExtendB4B_E6extendIB6A_B6z_B4J_EE0E0E0E0E0B2Y_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc3.i.i
  %i.fa = load i32, ptr %i.ew, align 8, !alias.scope !35766, !noalias !35765, !noundef !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35765
  call void @llvm.experimental.noalias.scope.decl(metadata !35768)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !35765
  store i32 %i.fa, ptr %i.k, align 4, !noalias !35769
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !35770, !noalias !35771, !noundef !58
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !alias.scope !35770, !noalias !35771, !noundef !58
  %i.fb = call fastcc noundef i64 @_RINvYNtNtNtCscQOBX8uaZYv_3std4hash6random11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx(i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.k), !noalias !35772
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o, i64 noundef %i.fb, i32 noundef %i.fa)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i.i:                                      ; preds = %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_10UndirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4S_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5L_8iterator8Iterator8for_each4callB4B_NCINvXsb_NtB4U_3mapINtB8l_8IndexMapB21_uEINtB5J_6ExtendB4B_E6extendIB6A_B6z_B4J_EE0E0E0E0E0B2Y_.exit.i.i.i.i.i.i.i.i
  %i.fc = add nuw i64 %i.ex, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !35765
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fc, %.sroa.014.0
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.al

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc5.i.i, %.noexc.i.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !35764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35765
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35764

.noexc6.i.i:                                      ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !35773)
  %i.fd = load i64, ptr %i.j, align 8, !range !109, !alias.scope !35773, !noalias !35765, !noundef !58 ; 2 uses
  %.not.i.i.i.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.fd, -1
  br i1 %.not.i.i.i.i7.i.i.i.i.i.i.i.i, label %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_10UndirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4S_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5L_8iterator8Iterator8for_each4callB4B_NCINvXsb_NtB4U_3mapINtB8l_8IndexMapB21_uEINtB5J_6ExtendB4B_E6extendIB6A_B6z_B4J_EE0E0E0E0E0B2Y_.exit10.i.i.i.i.i.i.i.i, label %bb.an, !prof !68

bb.an:                                            ; preds = %.noexc6.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35774
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !35773, !noalias !35765
  store i64 %i.fd, ptr %i.i, align 8, !noalias !35774
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.an, %bb.am
  %.sink35.i.sroa.phi.i = phi ptr [ %.sink35.i.sroa.gep.i, %bb.am ], [ %.sink35.i.sroa.gep7.i, %bb.an ]
  %.sink35.i.i = phi ptr [ %i.l, %bb.am ], [ %i.i, %bb.an ]
  %.sink.i.i = phi i64 [ %i.ez, %bb.am ], [ %i.ff, %bb.an ]
  store i64 %.sink.i.i, ptr %.sink35.i.sroa.phi.i, align 8, !noalias !35765
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %.sink35.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1275) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35775

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_10UndirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4S_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5L_8iterator8Iterator8for_each4callB4B_NCINvXsb_NtB4U_3mapINtB8l_8IndexMapB21_uEINtB5J_6ExtendB4B_E6extendIB6A_B6z_B4J_EE0E0E0E0E0B2Y_.exit10.i.i.i.i.i.i.i.i: ; preds = %.noexc6.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !alias.scope !35773, !noalias !35765, !noundef !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35765
  call void @llvm.experimental.noalias.scope.decl(metadata !35776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35765
  store i32 %i.fh, ptr %i.h, align 4, !noalias !35777
  %.val.i.i.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !35778, !noalias !35771, !noundef !58
  %.val2.i.i.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !alias.scope !35778, !noalias !35771, !noundef !58
  %i.fi = call fastcc noundef i64 @_RINvYNtNtNtCscQOBX8uaZYv_3std4hash6random11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx(i64 %.val.i.i.i.i.i.i8.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i9.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h), !noalias !35779
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o, i64 noundef %i.fi, i32 noundef %i.fh)
          to label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_10UndirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4S_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5L_8iterator8Iterator8for_each4callB4B_NCINvXsb_NtB4U_3mapINtB8l_8IndexMapB21_uEINtB5J_6ExtendB4B_E6extendIB6A_B6z_B4J_EE0E0E0E0E0B2Y_.exit.i.i.i.i.i.i.i.i, %bb.al, %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_10UndirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4S_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5L_8iterator8Iterator8for_each4callB4B_NCINvXsb_NtB4U_3mapINtB8l_8IndexMapB21_uEINtB5J_6ExtendB4B_E6extendIB6A_B6z_B4J_EE0E0E0E0E0B2Y_.exit10.i.i.i.i.i.i.i.i, %.invoke.i.i, %._crit_edge.i.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph10UndirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3G_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4p_E9from_iterBW_E0ENtNtB4Z_8iterator8Iterator9size_hintB1L_.exit.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(72) %i.o) #63, !noalias !35753
  br label %.body

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.lr.ph: ; preds = %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_10UndirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4S_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5L_8iterator8Iterator8for_each4callB4B_NCINvXsb_NtB4U_3mapINtB8l_8IndexMapB21_uEINtB5J_6ExtendB4B_E6extendIB6A_B6z_B4J_EE0E0E0E0E0B2Y_.exit10.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !noalias !35780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !35753
  %i.fj = load i64, ptr %i.ah, align 8, !range !61, !noundef !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ar, ptr %i.aa, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ar, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.fj, ptr %.sroa.624.0..sroa_idx, align 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.as, ptr %.sroa.725.0..sroa_idx, align 8
  %.not189 = icmp eq ptr %3, null
  %i.fk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fo = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242

.loopexit.split-lp424:                            ; preds = %.loopexit.split-lp424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread406, %bb.dt, %bb.dc
  %.pn193 = phi { ptr, i32 } [ %i.md, %.thread406 ], [ %i.oa, %bb.dt ], [ %i.ly, %bb.dc ], [ %lpad.loopexit.split-lp54, %.loopexit.split-lp424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #63
          to label %bb.eg unwind label %bb.af

.loopexit.split-lp424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dr, %bb.cq, %bb.cp, %bb.de
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp424

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit294
  %i.fx = phi ptr [ %i.ar, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.lr.ph ], [ %i.fy, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit294 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35781)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 48 ; 3 uses
  store ptr %i.fy, ptr %.sroa.523.0..sroa_idx, align 8, !alias.scope !35781
  %.sroa.0324.0.copyload = load i64, ptr %i.fx, align 8, !noalias !35781 ; 2 uses
  %.sroa.8326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.8326.0.copyload = load i64, ptr %.sroa.8326.0..sroa_idx, align 8, !noalias !35781 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %.not183 = icmp eq i64 %.sroa.0324.0.copyload, 2
  br i1 %.not183, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.thread, label %bb.ao

bb.ao:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242
  %.sroa.9327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %.sroa.9327.0.copyload = load i64, ptr %.sroa.9327.0..sroa_idx, align 8, !noalias !35781
  %i.fz = trunc nuw i64 %.sroa.9327.0.copyload to i1
  br i1 %i.fz, label %bb.cm, label %bb.cn

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.thread: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit294
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.thread
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.aq:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !58
  %i.gd = icmp ne i64 %i.gc, 0
  %i.ge = zext i1 %i.gd to i8
  %.sroa.0336.0.copyload = load i64, ptr %i.ab, align 8 ; 4 uses
  %.sroa.4337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4337.0.copyload = load ptr, ptr %.sroa.4337.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5338.0.copyload = load i64, ptr %.sroa.5338.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.7340.0.copyload = load i64, ptr %.sroa.7340.0..sroa_idx, align 8 ; 4 uses
  %i.gf = icmp eq i64 %.sroa.7340.0.copyload, 0
  br i1 %i.gf, label %bb.ar, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.aq
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.6339.0.copyload = load ptr, ptr %.sroa.6339.0..sroa_idx, align 8, !nonnull !58, !noundef !58
  %i.gg = shl i64 %.sroa.7340.0.copyload, 3
  %i.gh = icmp slt i64 %.sroa.7340.0.copyload, 2305843009213693950
  call void @llvm.assume(i1 %i.gh)
  %i.gi = and i64 %i.gg, -16                      ; 2 uses
  %i.gj = add i64 %i.gi, 16                       ; 2 uses
  %i.gk = add nsw i64 %.sroa.7340.0.copyload, 17
  %i.gl = add i64 %i.gk, %i.gj                    ; 3 uses
  %i.gm = icmp uge i64 %i.gl, %i.gj
  call void @llvm.assume(i1 %i.gm)
  %i.gn = icmp ult i64 %i.gl, 9223372036854775793
  call void @llvm.assume(i1 %i.gn)
  %i.go = sub nuw nsw i64 -16, %i.gi
  %i.gp = getelementptr inbounds i8, ptr %.sroa.6339.0.copyload, i64 %i.go
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gp, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !35782
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4337.0.copyload) ]
  %i.gq = icmp ult i64 %.sroa.5338.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.gq)
  %.idx456 = shl nuw nsw i64 %.sroa.5338.0.copyload, 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.4337.0.copyload, i64 %.idx456
  %i.gs = icmp eq i64 %.sroa.5338.0.copyload, 0
  br i1 %i.gs, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ar
  %i.gt = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  br label %bb.at

bb.as:                                            ; preds = %bb.ck, %bb.at
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = icmp eq i64 %.sroa.0336.0.copyload, 0
  br i1 %i.gv, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %bb.as
  %i.gw = shl nuw i64 %.sroa.0336.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4337.0.copyload, i64 noundef %i.gw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !35783
  br label %.body

bb.at:                                            ; preds = %.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit280
  %.sroa.5343.0455 = phi ptr [ %.sroa.4337.0.copyload, %.lr.ph ], [ %i.gx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit280 ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.5343.0455, i64 16 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.5343.0455, i64 8
  %i.gz = load i32, ptr %i.gy, align 8, !noalias !35784, !noundef !58
  %i.ha = invoke fastcc noundef ptr @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE11remove_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(72) %2, i32 noundef %i.gz)
          to label %bb.ci unwind label %bb.as     ; 3 uses

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit280, %bb.ar
  %i.hb = icmp eq i64 %.sroa.0336.0.copyload, 0
  br i1 %i.hb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit244, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i243

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i243: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  %i.hc = shl nuw i64 %.sroa.0336.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4337.0.copyload, i64 noundef %i.hc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !35785
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit244

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit244: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i243, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.l

.thread395.loopexit.split-lp:                     ; preds = %.thread395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cg
end_hunk_1
begin_hunk_2_@_RINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEB6_:bb.a
_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit, %bb.ab, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvBS_20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedE0EBW_.exit
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.af)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit244, %bb.k
  %.sroa.054.0 = phi i8 [ %i.ge, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit244 ], [ 0, %bb.k ]
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !58, !noundef !58 ; 4 uses
  %i.cc = load i64, ptr %i.bz, align 8, !range !61, !noundef !58
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !58 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 144115188075855872
  call void @llvm.assume(i1 %i.cf)
  %.idx457 = shl nuw nsw i64 %i.ce, 6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx457 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.cb, ptr %i.v, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.cb, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.cc, ptr %.sroa.659.0..sroa_idx, align 8
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.cg, ptr %.sroa.760.0..sroa_idx, align 8
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph: ; preds = %bb.l
  %.not185 = icmp eq ptr %4, null
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, i64 24, i1 false)
  br i1 %.not182, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.j
  tail call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %bb.n
  %.sroa.013.0 = phi ptr [ %.sroa.013.1, %bb.t ], [ @_Py_NoneStruct, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.r, ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noundef nonnull %.sroa.013.0)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RINvMsq_NtCsi0YPOvDEjiZ_4pyo38instanceINtB6_2PyNtNtNtB8_5types3any5PyAnyE5call1TINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1p_6string6StringB2f_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ad, ptr nonnull %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !36003
  invoke fastcc void @_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3mapINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBY_6string6StringB1O_ENtNtBb_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ae)
          to label %.noexc239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !36004

.noexc239:                                        ; preds = %bb.q
  %i.cm = load i64, ptr %i.p, align 8, !range !59, !noalias !36003, !noundef !58
  %i.cn = trunc nuw i64 %i.cm to i1
  %.sroa.5317.8.copyload = load ptr, ptr %i.ba, align 8, !noalias !36005 ; 2 uses
  br i1 %i.cn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc239
  %.sroa.9318.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.494.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9318.8..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !36003
  br label %bb.u

bb.s:                                             ; preds = %.noexc239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !36003
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.s
  %.sroa.013.1 = phi ptr [ %.sroa.085.0.copyload, %bb.x ], [ %.sroa.5317.8.copyload, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.o

bb.u:                                             ; preds = %bb.w, %bb.r
  %.sroa.085.0.copyload.sink = phi ptr [ %.sroa.085.0.copyload, %bb.w ], [ %.sroa.5317.8.copyload, %bb.r ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.085.0.copyload.sink, ptr %i.co, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.af)
          to label %bb.ac unwind label %bb.g

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.cp = load i64, ptr %i.ad, align 8, !range !59, !noundef !58
  %i.cq = trunc nuw i64 %i.cp to i1
  %.sroa.085.0.copyload = load ptr, ptr %i.az, align 8 ; 2 uses
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.488.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.486.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.u

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.t

bb.y:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36006)
  %i.cr = load i64, ptr %i.r, align 16, !range !109, !alias.scope !36006, !noundef !58
  %.not.i = icmp eq i64 %i.cr, -1
  br i1 %.not.i, label %bb.aa, label %bb.z, !prof !68

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !36007
  %i.cs = load <2 x i64>, ptr %i.r, align 16, !alias.scope !36006
  store <2 x i64> %i.cs, ptr %i.q, align 16, !noalias !36007
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1066) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !36006

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ct = load i32, ptr %i.bb, align 8, !alias.scope !36006, !noundef !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cu = zext i32 %i.ct to i64
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ag, i64 noundef %i.cu, i32 noundef %i.ct)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.cv = icmp eq ptr %i.bx, %i.as
  br i1 %i.cv, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit

bb.ac:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, %bb.ch, %bb.ac
  %.sroa.077.4 = phi i8 [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit ], [ 0, %bb.ch ], [ 1, %bb.ac ] ; 4 uses
  %.val226 = load ptr, ptr %i.ag, align 8         ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val227 = load i64, ptr %i.cw, align 8, !noundef !58 ; 3 uses
  %i.cx = icmp eq i64 %.val227, 0
  br i1 %i.cx, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.ad
  %i.cy = shl i64 %.val227, 4                     ; 2 uses
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %.val227, 17
  %i.db = add i64 %i.da, %i.cz                    ; 4 uses
  %i.dc = icmp uge i64 %i.db, %i.cz
  %i.dd = icmp ult i64 %i.db, 9223372036854775793
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.dd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val226) ]
  %i.de = icmp eq i64 %i.db, 0
  br i1 %i.de, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %i.df = sub nuw nsw i64 -16, %i.cy
  %i.dg = getelementptr inbounds i8, ptr %.val226, i64 %i.df
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

bb.af:                                            ; preds = %bb.bg, %bb.c, %bb.ba, %bb.cg, %bb.dt, %bb.ej, %bb.ei, %bb.ef, %.thread395.loopexit.split-lp, %.loopexit.split-lp424, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa, %bb.h
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %bb.h ], [ %i.bv, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ %.val6.le.i.i.i, %bb.h ], [ %.sroa.0.0.i.i.i.i.1, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %i.bd, i64 %.sroa.04.0.i.i.i.epil.init ; 2 uses
  %.val.i.i6.i.epil = load i64, ptr %i.di, align 8, !range !59, !noundef !58
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val11.i.i.i.epil = load i64, ptr %i.dj, align 8
  %i.dk = trunc nuw i64 %.val.i.i6.i.epil to i1
  %i.dl = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.i.i.i.epil.init, i64 %.val11.i.i.i.epil)
  %.sroa.0.0.i.i.i.i.epil = select i1 %i.dk, i64 %i.dl, i64 %.sroa.02.0.i.i.i.epil.init
  br label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i: ; preds = %.epil.preheader, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENCINvB1C_20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i
  %.sroa.3.0.i = phi i64 [ %.mux, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENCINvB1C_20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i ], [ %.sroa.0.0.i.i.i.i.1, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %.epil.preheader ]
  %i.dm = trunc nuw i64 %.val.i.i.i to i1
  %.sroa.014.0 = select i1 %i.dm, i64 %.sroa.3.0.i, i64 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.sink35.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink35.i.sroa.gep7.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dn = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.014.0, i64 1) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !36008
  %i.do = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 8, !range !60, !noalias !36009, !noundef !58
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %._RNvYNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCscQOBX8uaZYv_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCslwFuT2d6ECx_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, !prof !68

._RNvYNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i
  %.pre.i.i.i.i.i = load i64, ptr %i.do, align 8, !noalias !36010
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !36010
  br label %bb.ag

_RINvMs0_NtNtNtNtCscQOBX8uaZYv_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCslwFuT2d6ECx_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i
  %i.ds = invoke { i64, i64 } @_RNvNtNtNtCscQOBX8uaZYv_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc240 unwind label %bb.g, !noalias !36011 ; 2 uses

.noexc240:                                        ; preds = %_RINvMs0_NtNtNtNtCscQOBX8uaZYv_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCslwFuT2d6ECx_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.dt = extractvalue { i64, i64 } %i.ds, 0
  %i.du = extractvalue { i64, i64 } %i.ds, 1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !noalias !36011
  store i8 1, ptr %i.dp, align 8, !noalias !36011
  br label %bb.ag

bb.ag:                                            ; preds = %._RNvYNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i, %.noexc240
  %.pre-phi28.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i ], [ %i.du, %.noexc240 ]
  %i.dw = phi i64 [ %.pre.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCscQOBX8uaZYv_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i ], [ %i.dt, %.noexc240 ] ; 2 uses
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.do, align 8, !noalias !36010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36012)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !36013
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.n, i64 noundef range(i64 1, 0) %i.dn)
          to label %.noexc241 unwind label %bb.g, !noalias !36014

.noexc241:                                        ; preds = %bb.ag
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !36014 ; 3 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i.i, align 8, !noalias !36014 ; 5 uses
  %i.dy = shl i64 %i.dn, 4                        ; 3 uses
  %i.dz = icmp ugt i64 %i.dn, 1152921504606846975
  %.not.i.i.i2.i.i = icmp ugt i64 %i.dy, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.dz, %.not.i.i.i2.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.aj, label %bb.ah, !prof !64

bb.ah:                                            ; preds = %.noexc241
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !36015
  %i.ea = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !36015 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.aj, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i.i

bb.ai:                                            ; preds = %bb.aj
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i, 0
  br i1 %i.ed, label %.body, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ee = shl i64 %.sroa.5.0.copyload.i.i.i.i, 3
  %i.ef = icmp slt i64 %.sroa.5.0.copyload.i.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.ef), !noalias !36016
  %i.eg = and i64 %i.ee, -16                      ; 2 uses
  %i.eh = add i64 %i.eg, 16                       ; 2 uses
  %i.ei = add nsw i64 %.sroa.5.0.copyload.i.i.i.i, 17
  %i.ej = add i64 %i.ei, %i.eh                    ; 3 uses
  %i.ek = icmp uge i64 %i.ej, %i.eh
  tail call void @llvm.assume(i1 %i.ek), !noalias !36016
  %i.el = icmp ult i64 %i.ej, 9223372036854775793
  tail call void @llvm.assume(i1 %i.el), !noalias !36016
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ], !noalias !36016
  %i.em = sub nuw nsw i64 -16, %i.eg
  %i.en = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.em
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.en, i64 noundef %i.ej, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !36014
  br label %.body

bb.aj:                                            ; preds = %bb.ah, %.noexc241
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.ah ], [ 0, %.noexc241 ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.dy) #61
          to label %bb.ak unwind label %bb.ai, !noalias !36014

bb.ak:                                            ; preds = %bb.aj
  unreachable

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i.i: ; preds = %bb.ah
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !noalias !36008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !36013
  store i64 %i.dn, ptr %i.o, align 8, !alias.scope !36012, !noalias !36008
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ea, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !36012, !noalias !36008
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !36012, !noalias !36008
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !alias.scope !36012, !noalias !36008
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !36012, !noalias !36008
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 3 uses
  store i64 %i.dw, ptr %i.ep, align 8, !alias.scope !36012, !noalias !36008
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  store i64 %.pre-phi28.i.i, ptr %i.eq, align 8, !alias.scope !36012, !noalias !36008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36017)
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !36017, !noalias !36008, !noundef !58
  %i.et = icmp eq i64 %i.es, 0
  %i.eu = lshr i64 %i.dn, 1
  %i.ev = and i64 %i.dn, 1
  %spec.select.i.i.i = add nuw nsw i64 %i.eu, %i.ev
  %.sroa.0.0.i.i.i = select i1 %i.et, i64 %i.dn, i64 %spec.select.i.i.i
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o, i64 noundef %.sroa.0.0.i.i.i)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !36018

.noexc.i.i:                                       ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i.i
  %.not418 = icmp eq i64 %.sroa.014.0, 0
  br i1 %.not418, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.noexc5.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ex = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fc, %.noexc5.i.i ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !36019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !36020
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !36019

.noexc3.i.i:                                      ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !36021)
  %i.ey = load i64, ptr %i.m, align 8, !range !109, !alias.scope !36021, !noalias !36020, !noundef !58 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ey, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_8DirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4P_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5I_8iterator8Iterator8for_each4callB4y_NCINvXsb_NtB4R_3mapINtB8i_8IndexMapB21_uEINtB5G_6ExtendB4y_E6extendIB6x_B6w_B4G_EE0E0E0E0E0B2Y_.exit.i.i.i.i.i.i.i.i, label %bb.am, !prof !68

bb.am:                                            ; preds = %.noexc3.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !36022
  %i.ez = load i64, ptr %i.ew, align 8, !alias.scope !36021, !noalias !36020
  store i64 %i.ey, ptr %i.l, align 8, !noalias !36022
  br label %.invoke.i.i

_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_8DirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4P_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5I_8iterator8Iterator8for_each4callB4y_NCINvXsb_NtB4R_3mapINtB8i_8IndexMapB21_uEINtB5G_6ExtendB4y_E6extendIB6x_B6w_B4G_EE0E0E0E0E0B2Y_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc3.i.i
  %i.fa = load i32, ptr %i.ew, align 8, !alias.scope !36021, !noalias !36020, !noundef !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !36020
  call void @llvm.experimental.noalias.scope.decl(metadata !36023)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !36020
  store i32 %i.fa, ptr %i.k, align 4, !noalias !36024
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !36025, !noalias !36026, !noundef !58
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !alias.scope !36025, !noalias !36026, !noundef !58
  %i.fb = call fastcc noundef i64 @_RINvYNtNtNtCscQOBX8uaZYv_3std4hash6random11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx(i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.k), !noalias !36027
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o, i64 noundef %i.fb, i32 noundef %i.fa)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i.i:                                      ; preds = %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_8DirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4P_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5I_8iterator8Iterator8for_each4callB4y_NCINvXsb_NtB4R_3mapINtB8i_8IndexMapB21_uEINtB5G_6ExtendB4y_E6extendIB6x_B6w_B4G_EE0E0E0E0E0B2Y_.exit.i.i.i.i.i.i.i.i
  %i.fc = add nuw i64 %i.ex, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36020
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fc, %.sroa.014.0
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.al

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc5.i.i, %.noexc.i.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !36019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36020
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef align 8 dereferenceable(72) %2, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !36019

.noexc6.i.i:                                      ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36028)
  %i.fd = load i64, ptr %i.j, align 8, !range !109, !alias.scope !36028, !noalias !36020, !noundef !58 ; 2 uses
  %.not.i.i.i.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.fd, -1
  br i1 %.not.i.i.i.i7.i.i.i.i.i.i.i.i, label %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_8DirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4P_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5I_8iterator8Iterator8for_each4callB4y_NCINvXsb_NtB4R_3mapINtB8i_8IndexMapB21_uEINtB5G_6ExtendB4y_E6extendIB6x_B6w_B4G_EE0E0E0E0E0B2Y_.exit10.i.i.i.i.i.i.i.i, label %bb.an, !prof !68

bb.an:                                            ; preds = %.noexc6.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !36029
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !36028, !noalias !36020
  store i64 %i.fd, ptr %i.i, align 8, !noalias !36029
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.an, %bb.am
  %.sink35.i.sroa.phi.i = phi ptr [ %.sink35.i.sroa.gep.i, %bb.am ], [ %.sink35.i.sroa.gep7.i, %bb.an ]
  %.sink35.i.i = phi ptr [ %i.l, %bb.am ], [ %i.i, %bb.an ]
  %.sink.i.i = phi i64 [ %i.ez, %bb.am ], [ %i.ff, %bb.an ]
  store i64 %.sink.i.i, ptr %.sink35.i.sroa.phi.i, align 8, !noalias !36020
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %.sink35.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1275) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !36030

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_8DirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4P_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5I_8iterator8Iterator8for_each4callB4y_NCINvXsb_NtB4R_3mapINtB8i_8IndexMapB21_uEINtB5G_6ExtendB4y_E6extendIB6x_B6w_B4G_EE0E0E0E0E0B2Y_.exit10.i.i.i.i.i.i.i.i: ; preds = %.noexc6.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !alias.scope !36028, !noalias !36020, !noundef !58 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !36020
  call void @llvm.experimental.noalias.scope.decl(metadata !36031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36020
  store i32 %i.fh, ptr %i.h, align 4, !noalias !36032
  %.val.i.i.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.ep, align 8, !alias.scope !36033, !noalias !36026, !noundef !58
  %.val2.i.i.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !alias.scope !36033, !noalias !36026, !noundef !58
  %i.fi = call fastcc noundef i64 @_RINvYNtNtNtCscQOBX8uaZYv_3std4hash6random11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx(i64 %.val.i.i.i.i.i.i8.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i9.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h), !noalias !36034
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o, i64 noundef %i.fi, i32 noundef %i.fh)
          to label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_8DirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4P_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5I_8iterator8Iterator8for_each4callB4y_NCINvXsb_NtB4R_3mapINtB8i_8IndexMapB21_uEINtB5G_6ExtendB4y_E6extendIB6x_B6w_B4G_EE0E0E0E0E0B2Y_.exit.i.i.i.i.i.i.i.i, %bb.al, %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_8DirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4P_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5I_8iterator8Iterator8for_each4callB4y_NCINvXsb_NtB4R_3mapINtB8i_8IndexMapB21_uEINtB5G_6ExtendB4y_E6extendIB6x_B6w_B4G_EE0E0E0E0E0B2Y_.exit10.i.i.i.i.i.i.i.i, %.invoke.i.i, %._crit_edge.i.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_3ops5range14RangeInclusivejENCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEs0_0ENCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB3D_8IndexSetNtNtB2S_10graph_impl9NodeIndexEINtNtNtB9_6traits7collect12FromIteratorB4m_E9from_iterBW_E0ENtNtB4W_8iterator8Iterator9size_hintB1L_.exit.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(72) %i.o) #63, !noalias !36008
  br label %.body

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.lr.ph: ; preds = %_RNCINvMNtNtCslwFuT2d6ECx_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2ujNCINvNtNtNtB9_4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtB25_8DirectedEs0_0NCIB1o_B21_TB21_uEuNCINvXs6_NtCsfztDQZkQYYe_8indexmap3setINtB4P_8IndexSetB21_EINtNtNtB1u_6traits7collect12FromIteratorB21_E9from_iterINtB1q_3MapINtNtB7_5range14RangeInclusivejEB2P_EE0NCINvNvNtNtB5I_8iterator8Iterator8for_each4callB4y_NCINvXsb_NtB4R_3mapINtB8i_8IndexMapB21_uEINtB5G_6ExtendB4y_E6extendIB6x_B6w_B4G_EE0E0E0E0E0B2Y_.exit10.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !36020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !noalias !36035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !36008
  %i.fj = load i64, ptr %i.ah, align 8, !range !61, !noundef !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ar, ptr %i.aa, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ar, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.fj, ptr %.sroa.624.0..sroa_idx, align 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.as, ptr %.sroa.725.0..sroa_idx, align 8
  %.not189 = icmp eq ptr %3, null
  %i.fk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fo = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242

.loopexit.split-lp424:                            ; preds = %.loopexit.split-lp424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread406, %bb.dt, %bb.dc
  %.pn193 = phi { ptr, i32 } [ %i.md, %.thread406 ], [ %i.oa, %bb.dt ], [ %i.ly, %bb.dc ], [ %lpad.loopexit.split-lp54, %.loopexit.split-lp424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #63
          to label %bb.eg unwind label %bb.af

.loopexit.split-lp424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dr, %bb.cq, %bb.cp, %bb.de
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp424

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit294
  %i.fx = phi ptr [ %i.ar, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.lr.ph ], [ %i.fy, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit294 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36036)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 48 ; 3 uses
  store ptr %i.fy, ptr %.sroa.523.0..sroa_idx, align 8, !alias.scope !36036
  %.sroa.0324.0.copyload = load i64, ptr %i.fx, align 8, !noalias !36036 ; 2 uses
  %.sroa.8326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.8326.0.copyload = load i64, ptr %.sroa.8326.0..sroa_idx, align 8, !noalias !36036 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %.not183 = icmp eq i64 %.sroa.0324.0.copyload, 2
  br i1 %.not183, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.thread, label %bb.ao

bb.ao:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242
  %.sroa.9327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %.sroa.9327.0.copyload = load i64, ptr %.sroa.9327.0..sroa_idx, align 8, !noalias !36036
  %i.fz = trunc nuw i64 %.sroa.9327.0.copyload to i1
  br i1 %i.fz, label %bb.cm, label %bb.cn

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.thread: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit294
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.thread
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.aq:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB12_.exit242.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !58
  %i.gd = icmp ne i64 %i.gc, 0
  %i.ge = zext i1 %i.gd to i8
  %.sroa.0336.0.copyload = load i64, ptr %i.ab, align 8 ; 4 uses
  %.sroa.4337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4337.0.copyload = load ptr, ptr %.sroa.4337.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5338.0.copyload = load i64, ptr %.sroa.5338.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.7340.0.copyload = load i64, ptr %.sroa.7340.0..sroa_idx, align 8 ; 4 uses
  %i.gf = icmp eq i64 %.sroa.7340.0.copyload, 0
  br i1 %i.gf, label %bb.ar, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.aq
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.6339.0.copyload = load ptr, ptr %.sroa.6339.0..sroa_idx, align 8, !nonnull !58, !noundef !58
  %i.gg = shl i64 %.sroa.7340.0.copyload, 3
  %i.gh = icmp slt i64 %.sroa.7340.0.copyload, 2305843009213693950
  call void @llvm.assume(i1 %i.gh)
  %i.gi = and i64 %i.gg, -16                      ; 2 uses
  %i.gj = add i64 %i.gi, 16                       ; 2 uses
  %i.gk = add nsw i64 %.sroa.7340.0.copyload, 17
  %i.gl = add i64 %i.gk, %i.gj                    ; 3 uses
  %i.gm = icmp uge i64 %i.gl, %i.gj
  call void @llvm.assume(i1 %i.gm)
  %i.gn = icmp ult i64 %i.gl, 9223372036854775793
  call void @llvm.assume(i1 %i.gn)
  %i.go = sub nuw nsw i64 -16, %i.gi
  %i.gp = getelementptr inbounds i8, ptr %.sroa.6339.0.copyload, i64 %i.go
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gp, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !36037
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4337.0.copyload) ]
  %i.gq = icmp ult i64 %.sroa.5338.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.gq)
  %.idx456 = shl nuw nsw i64 %.sroa.5338.0.copyload, 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.4337.0.copyload, i64 %.idx456
  %i.gs = icmp eq i64 %.sroa.5338.0.copyload, 0
  br i1 %i.gs, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ar
  %i.gt = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  br label %bb.at

bb.as:                                            ; preds = %bb.ck, %bb.at
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = icmp eq i64 %.sroa.0336.0.copyload, 0
  br i1 %i.gv, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %bb.as
  %i.gw = shl nuw i64 %.sroa.0336.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4337.0.copyload, i64 noundef %i.gw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !36038
  br label %.body

bb.at:                                            ; preds = %.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit280
  %.sroa.5343.0455 = phi ptr [ %.sroa.4337.0.copyload, %.lr.ph ], [ %i.gx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit280 ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.5343.0455, i64 16 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.5343.0455, i64 8
  %i.gz = load i32, ptr %i.gy, align 8, !noalias !36039, !noundef !58
  %i.ha = invoke fastcc noundef ptr @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E11remove_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(72) %2, i32 noundef %i.gz)
          to label %bb.ci unwind label %bb.as     ; 3 uses

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit280, %bb.ar
  %i.hb = icmp eq i64 %.sroa.0336.0.copyload, 0
  br i1 %i.hb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit244, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i243

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i243: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  %i.hc = shl nuw i64 %.sroa.0336.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4337.0.copyload, i64 noundef %i.hc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !36040
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit244

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit244: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i243, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.l

.thread395.loopexit.split-lp:                     ; preds = %.thread395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cg
end_hunk_2
begin_hunk_3_@_RNvMscT_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_23NodesCountMappingValues21___pymethod___iter____:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_IncRef(ptr noundef nonnull %1) #59
  tail call void @_Py_IncRef(ptr noundef nonnull %1) #59
  %i.e = atomicrmw add ptr %i.b, i64 -1 release, align 8 ; 0 uses
  tail call void @_Py_DecRef(ptr noundef nonnull %1) #59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink20 = phi ptr [ %.sroa.54.8.copyload, %bb.b ], [ %1, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink20, ptr %i.f, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMscT_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_23NodesCountMappingValues21___pymethod___next____(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker14try_borrow_mut(ptr noundef nonnull align 8 %i.d)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvXsr_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_16PyBorrowMutErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c)
  %.sroa.54.8.copyload = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.54.8.copyload, ptr %i.g, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_IncRef(ptr noundef nonnull %1) #59
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !75121, !noundef !58 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noalias !75121, !noundef !58 ; 2 uses
  %i.l = icmp ult i64 %i.k, 384307168202282326
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i64 %i.i, %i.k
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecyENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.7.0 = phi ptr [ %.sroa.5.0.i, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecyENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i ], [ undef, %bb.c ] ; 3 uses
  %.sroa.019.0 = phi i64 [ %.val2.i, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecyENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i ], [ -1, %bb.c ] ; 6 uses
  %.sroa.8.0 = phi i64 [ %.val2.i, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecyENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i ], [ undef, %bb.c ]
  invoke void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.d)
          to label %_RNvMscR_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_23NodesCountMappingValues8___next__.exit unwind label %bb.e, !noalias !75121

common.resume:                                    ; preds = %bb.m, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %bb.e, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.n, %bb.e ], [ %i.ab, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ], [ %i.ab, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %1) #59, !noalias !75121
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !75121, !nonnull !58, !noundef !58
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.i ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val.i = load ptr, ptr %i.r, align 8, !noalias !75121, !nonnull !58, !noundef !58
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %.val2.i = load i64, ptr %i.s, align 8, !noalias !75121, !noundef !58 ; 4 uses
  %i.t = shl nuw nsw i64 %.val2.i, 3              ; 3 uses
  %i.u = icmp eq i64 %.val2.i, 0
  br i1 %i.u, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecyENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !75122
  %i.v = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !75122 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.t) #61
          to label %.noexc.i unwind label %bb.j, !noalias !75123

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull readonly align 8 %.val.i, i64 %i.t, i1 false), !noalias !75124
  %.pre.i = load i64, ptr %i.h, align 8, !noalias !75121
  br label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecyENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo36pycell8PyRefMutNtNtCskcxRuJ53GpR_9rustworkx9iterators23NodesCountMappingValuesEEB1j_(ptr nonnull %1) #63
          to label %common.resume unwind label %bb.k, !noalias !75121

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecyENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.i, %bb.f
  %i.y = phi i64 [ %.pre.i, %bb.i ], [ %i.i, %bb.f ]
  %.sroa.5.0.i = phi ptr [ %i.v, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.f ]
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.h, align 8, !noalias !75121
  br label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !75121
  unreachable

_RNvMscR_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_23NodesCountMappingValues8___next__.exit: ; preds = %bb.d
  tail call void @_Py_DecRef(ptr noundef nonnull %1) #59, !noalias !75121
  %.not = icmp eq i64 %.sroa.019.0, -1
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_RNvMscR_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_23NodesCountMappingValues8___next__.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.019.0, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75126
  invoke void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo311conversions10num_bigintRNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintNtNtB9_10conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.n unwind label %bb.m, !noalias !75125

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = icmp eq i64 %.sroa.019.0, 0
  br i1 %i.ac, label %common.resume, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %bb.m
  %i.ad = shl nuw i64 %.sroa.019.0, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !75127
  br label %common.resume

bb.n:                                             ; preds = %bb.l
  %i.ae = icmp eq i64 %.sroa.019.0, 0
  br i1 %i.ae, label %_RNvXs0_NtNtCsi0YPOvDEjiZ_4pyo311conversions10num_bigintNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintNtNtB9_10conversion12IntoPyObject13into_pyobject.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i4.i.i: ; preds = %bb.n
  %i.af = shl nuw i64 %.sroa.019.0, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !75127
  br label %_RNvXs0_NtNtCsi0YPOvDEjiZ_4pyo311conversions10num_bigintNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintNtNtB9_10conversion12IntoPyObject13into_pyobject.exit.i

_RNvXs0_NtNtCsi0YPOvDEjiZ_4pyo311conversions10num_bigintNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintNtNtB9_10conversion12IntoPyObject13into_pyobject.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i4.i.i, %bb.n
  %i.ag = load i64, ptr %i.a, align 8, !range !59, !noalias !75126, !noundef !58
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.03.0.copyload.i = load ptr, ptr %i.ai, align 8, !noalias !75126
  br i1 %i.ah, label %bb.o, label %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertCskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %_RNvXs0_NtNtCsi0YPOvDEjiZ_4pyo311conversions10num_bigintNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintNtNtB9_10conversion12IntoPyObject13into_pyobject.exit.i
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.46.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.44.0..sroa_idx.i, i64 56, i1 false), !noalias !75128
  br label %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertCskcxRuJ53GpR_9rustworkx.exit

_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs0_NtNtCsi0YPOvDEjiZ_4pyo311conversions10num_bigintNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintNtNtB9_10conversion12IntoPyObject13into_pyobject.exit.i, %bb.o
  %.sink.i = phi i64 [ 1, %bb.o ], [ 0, %_RNvXs0_NtNtCsi0YPOvDEjiZ_4pyo311conversions10num_bigintNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintNtNtB9_10conversion12IntoPyObject13into_pyobject.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75126
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.copyload.i, ptr %i.aj, align 8, !alias.scope !75125
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !75125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.p:                                             ; preds = %_RNvMscR_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_23NodesCountMappingValues8___next__.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertCskcxRuJ53GpR_9rustworkx.exit, %bb.p, %bb.b
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_Cs3KdTQIMNFBN_8smallvecINtB5_8SmallVecANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj4_E21reserve_one_uncheckedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !75135, !noundef !58 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !75135, !nonnull !58 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !75135 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 6 uses
  %i.h = icmp sgt i64 %.sink10.i, -1
  br i1 %i.h, label %bb.b, label %bb.p, !prof !111

bb.b:                                             ; preds = %bb.a
  %i.i = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = shl nuw i64 1, %i.j                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75136)
  %i.l = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.k, %.sink10.i
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !62

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1843, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1844) #60, !noalias !75136
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = icmp samesign ult i64 %.sink10.i, 4
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not42.i = icmp eq i64 %i.c, %i.k
  br i1 %.not42.i, label %_RINvCs3KdTQIMNFBN_8smallvec10infallibleuECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.l, label %_RINvCs3KdTQIMNFBN_8smallvec10infallibleuECskcxRuJ53GpR_9rustworkx.exit, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.n = shl nuw i64 4, %i.j                      ; 3 uses
  %or.cond.i = icmp samesign ult i64 %.sink10.i, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCs3KdTQIMNFBN_8smallvec12layout_arrayNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.o, !prof !75137

_RINvCs3KdTQIMNFBN_8smallvec12layout_arrayNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.g
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvCs3KdTQIMNFBN_8smallvec12layout_arrayNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i
  %i.o = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.o, label %_RINvCs3KdTQIMNFBN_8smallvec12layout_arrayNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit44.i, label %bb.o, !prof !75137

bb.i:                                             ; preds = %_RINvCs3KdTQIMNFBN_8smallvec12layout_arrayNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !75136
  %i.p = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef 4) #59, !noalias !75136 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.n, label %bb.k

_RINvCs3KdTQIMNFBN_8smallvec12layout_arrayNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit44.i: ; preds = %bb.h
  %i.r = shl nuw nsw i64 %.sink.i.i, 2
  %i.s = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.r, i64 noundef 4, i64 noundef %i.n) #59, !noalias !75136 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.k, %_RINvCs3KdTQIMNFBN_8smallvec12layout_arrayNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.p, %bb.k ], [ %i.s, %_RINvCs3KdTQIMNFBN_8smallvec12layout_arrayNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !75136
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !75136
  store i64 %i.k, ptr %i.b, align 8, !alias.scope !75136
  br label %_RINvCs3KdTQIMNFBN_8smallvec10infallibleuECskcxRuJ53GpR_9rustworkx.exit

bb.k:                                             ; preds = %bb.i
  %i.u = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.u, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.f
  %i.v = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.v, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !75136
  %or.cond.i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %or.cond.i.i, label %_RINvCs3KdTQIMNFBN_8smallvec10deallocateNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.m, !prof !75137

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75138
  store i64 0, ptr %i.a, align 8, !noalias !75138
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1551, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #60, !noalias !75138
  unreachable

_RINvCs3KdTQIMNFBN_8smallvec10deallocateNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.l
  %i.w = shl nuw nsw i64 %.sink.i.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.w, i64 noundef 4) #59, !noalias !75136
  br label %_RINvCs3KdTQIMNFBN_8smallvec10infallibleuECskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %_RINvCs3KdTQIMNFBN_8smallvec12layout_arrayNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit44.i, %bb.i
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.n) #61
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #60
  unreachable

_RINvCs3KdTQIMNFBN_8smallvec10infallibleuECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvCs3KdTQIMNFBN_8smallvec10deallocateNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i, %bb.e, %bb.j, %bb.f
  ret void

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1842) #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsck_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_26EdgeCentralityMappingItems21___pymethod___iter____(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = tail call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a)
  %.sroa.54.8.copyload = load ptr, ptr %i.a, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_IncRef(ptr noundef nonnull %1) #59
  tail call void @_Py_IncRef(ptr noundef nonnull %1) #59
  %i.e = atomicrmw add ptr %i.b, i64 -1 release, align 8 ; 0 uses
  tail call void @_Py_DecRef(ptr noundef nonnull %1) #59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink20 = phi ptr [ %.sroa.54.8.copyload, %bb.b ], [ %1, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink20, ptr %i.f, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsck_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_26EdgeCentralityMappingItems21___pymethod___next____(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker14try_borrow_mut(ptr noundef nonnull align 8 %i.c)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXsr_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_16PyBorrowMutErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b)
  %.sroa.54.8.copyload = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.54.8.copyload, ptr %i.f, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_IncRef(ptr noundef nonnull %1) #59
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !75143, !noundef !58 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noalias !75143, !noundef !58 ; 2 uses
  %i.k = icmp ult i64 %i.j, 576460752303423488
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp ult i64 %i.h, %i.j                  ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.5.0 = phi i64 [ %i.q, %bb.f ], [ undef, %bb.c ]
  %.sroa.7.0 = phi double [ %i.s, %bb.f ], [ undef, %bb.c ]
  invoke void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.c)
          to label %_RNvMsci_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_26EdgeCentralityMappingItems8___next__.exit unwind label %bb.e, !noalias !75143

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %1) #59, !noalias !75143
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !75143, !nonnull !58, !noundef !58
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.h ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !75143, !noundef !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load double, ptr %i.r, align 8, !noalias !75143, !noundef !58
  %i.t = add nuw nsw i64 %i.h, 1
  store i64 %i.t, ptr %i.g, align 8, !noalias !75143
  br label %bb.d

_RNvMsci_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_26EdgeCentralityMappingItems8___next__.exit: ; preds = %bb.d
  tail call void @_Py_DecRef(ptr noundef nonnull %1) #59, !noalias !75143
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_RNvMsci_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_26EdgeCentralityMappingItems8___next__.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75144
  call fastcc void @_RNvXsn_NtNtCsi0YPOvDEjiZ_4pyo35types5tupleTjdENtNtB9_10conversion12IntoPyObject13into_pyobjectCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, i64 noundef %.sroa.5.0, double noundef %.sroa.7.0), !noalias !75144
  %i.u = load i64, ptr %i.a, align 8, !range !59, !noalias !75144, !noundef !58
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.03.0.copyload.i = load ptr, ptr %i.w, align 8, !noalias !75144
  br i1 %i.v, label %bb.h, label %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackTjdEINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertCskcxRuJ53GpR_9rustworkx.exit

bb.h:                                             ; preds = %bb.g
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.46.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.44.0..sroa_idx.i, i64 56, i1 false)
  br label %_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35impl_8callbackTjdEINtB5_20IntoPyCallbackOutputONtNtCsjNIR5GOeEkr_8pyo3_ffi6object8PyObjectE7convertCskcxRuJ53GpR_9rustworkx.exit
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx10dot_parser22parse_attr_list_to_map:bb.a

.invoke971:                                       ; preds = %_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4pairBT_.exit.i, %bb.i
  %i.aw = phi i64 [ %.val28, %bb.i ], [ %i.az, %_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4pairBT_.exit.i ]
  %i.ax = phi ptr [ @1567, %bb.i ], [ @1571, %_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4pairBT_.exit.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #60
          to label %.cont972 unwind label %bb.cl

.cont972:                                         ; preds = %.invoke971
  unreachable

_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4pairBT_.exit.i: ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noundef !58 ; 3 uses
  %i.ba = icmp ult i64 %i.az, %i.ap
  br i1 %i.ba, label %bb.k, label %.invoke971

bb.k:                                             ; preds = %_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4pairBT_.exit.i
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.az ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !range !60, !noundef !58
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.p, label %.invoke969, !prof !68

.invoke969:                                       ; preds = %bb.k, %bb.j
  %i.be = phi ptr [ @1568, %bb.j ], [ @1572, %bb.k ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #60
          to label %.cont970 unwind label %bb.cl

.cont970:                                         ; preds = %.invoke969
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !101518)
  call void @llvm.experimental.noalias.scope.decl(metadata !101519)
  call void @llvm.experimental.noalias.scope.decl(metadata !101520)
  %i.bf = load ptr, ptr %i.r, align 8, !alias.scope !101521, !nonnull !58, !noundef !58 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !101521, !noundef !58
  %i.bh = add i64 %i.bg, -1                       ; 2 uses
  store i64 %i.bh, ptr %i.bf, align 8, !noalias !101521
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEE9drop_slowB24_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.r) #62
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i: ; preds = %bb.m, %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101522)
  call void @llvm.experimental.noalias.scope.decl(metadata !101523)
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !101524, !nonnull !58, !noundef !58 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !101524, !noundef !58
  %i.bm = add i64 %i.bl, -1                       ; 2 uses
  store i64 %i.bm, ptr %i.bk, align 8, !noalias !101524
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1r_.exit

bb.n:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1r_.exit unwind label %bb.e

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1r_.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

bb.o:                                             ; preds = %bb.g, %bb.t, %bb.q, %._crit_edge399, %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread129

bb.p:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !range !135, !noundef !58
  %.not14 = icmp eq i8 %i.bp, 20
  br i1 %.not14, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false)
  invoke fastcc void @_RNvMNtNtCscnlsAxKLLci_4pest9iterators4pairINtB2_4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10into_innerBT_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.m)
          to label %bb.u unwind label %bb.o

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !101525)
  %i.bq = load i64, ptr %.val27, align 8, !noalias !101526, !noundef !58
  %i.br = add i64 %i.bq, -1                       ; 2 uses
  store i64 %i.br, ptr %.val27, align 8, !noalias !101526
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.s, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i35

bb.s:                                             ; preds = %bb.r
  call fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEE9drop_slowB24_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.p) #62
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i35

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i35: ; preds = %bb.s, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !101527)
  call void @llvm.experimental.noalias.scope.decl(metadata !101528)
  %i.bt = load ptr, ptr %i.ab, align 8, !alias.scope !101529, !nonnull !58, !noundef !58 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !101529, !noundef !58
  %i.bv = add i64 %i.bu, -1                       ; 2 uses
  store i64 %i.bv, ptr %i.bt, align 8, !noalias !101529
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.t, label %.backedge

bb.t:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i35
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #62
          to label %.backedge unwind label %bb.o

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !101530)
  call void @llvm.experimental.noalias.scope.decl(metadata !101531)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !101532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !101532
  invoke fastcc void @_RNvXs0_NtNtCscnlsAxKLLci_4pest9iterators5pairsINtB5_5PairsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextBY_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %bb.w unwind label %bb.v, !noalias !101530

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1p_.exit88

bb.w:                                             ; preds = %bb.u
  %i.by = load ptr, ptr %i.e, align 8, !noalias !101532, !noundef !58
  %.not.i = icmp eq ptr %i.by, null
  br i1 %.not.i, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  store i64 0, ptr %i.o, align 8, !alias.scope !101530
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8, !alias.scope !101530
  store i64 0, ptr %i.aj, align 8, !alias.scope !101530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !101532
  call void @llvm.experimental.noalias.scope.decl(metadata !101533)
  call void @llvm.experimental.noalias.scope.decl(metadata !101534)
  call void @llvm.experimental.noalias.scope.decl(metadata !101535)
  %i.bz = load ptr, ptr %i.n, align 8, !alias.scope !101536, !nonnull !58, !noundef !58 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !101537, !noundef !58
  %i.cb = add i64 %i.ca, -1                       ; 2 uses
  store i64 %i.cb, ptr %i.bz, align 8, !noalias !101537
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.y, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i.i

bb.y:                                             ; preds = %bb.x
  call fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEE9drop_slowB24_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.n) #62, !noalias !101530
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !101538)
  call void @llvm.experimental.noalias.scope.decl(metadata !101539)
  %i.cd = load ptr, ptr %i.ak, align 8, !alias.scope !101540, !nonnull !58, !noundef !58 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !101541, !noundef !58
  %i.cf = add i64 %i.ce, -1                       ; 2 uses
  store i64 %i.cf, ptr %i.cd, align 8, !noalias !101541
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.z, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEINtB2_18SpecFromIterNestedB11_INtNtB16_5pairs5PairsB1L_EE9from_iterB1P_.exit.thread

bb.z:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #62
          to label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEINtB2_18SpecFromIterNestedB11_INtNtB16_5pairs5PairsB1L_EE9from_iterB1P_.exit.thread unwind label %bb.o, !noalias !101530

bb.aa:                                            ; preds = %bb.ah
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101542)
  call void @llvm.experimental.noalias.scope.decl(metadata !101543), !noalias !101532
  call void @llvm.experimental.noalias.scope.decl(metadata !101544), !noalias !101532
  %i.ci = load ptr, ptr %i.d, align 8, !alias.scope !101545, !noalias !101532, !nonnull !58, !noundef !58 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !101546, !noundef !58
  %i.ck = add i64 %i.cj, -1                       ; 2 uses
  store i64 %i.ck, ptr %i.ci, align 8, !noalias !101546
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.ab, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i86

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEE9drop_slowB24_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.e) #62, !noalias !101532
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i86

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i86: ; preds = %bb.ab, %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101547), !noalias !101532
  call void @llvm.experimental.noalias.scope.decl(metadata !101548), !noalias !101532
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !101549, !noalias !101532, !nonnull !58, !noundef !58 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !noalias !101550, !noundef !58
  %i.cp = add i64 %i.co, -1                       ; 2 uses
  store i64 %i.cp, ptr %i.cn, align 8, !noalias !101550
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.ac, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1p_.exit88

bb.ac:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i86
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cm) #62
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1p_.exit88 unwind label %bb.bb, !noalias !101532

bb.ad:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !101532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !101532
  %.val.i = load i64, ptr %i.ac, align 8, !alias.scope !101531, !noundef !58
  %i.cr = call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1) ; 2 uses
  %i.cs = call i64 @llvm.umax.i64(i64 %i.cr, i64 4) ; 3 uses
  %i.ct = mul i64 %i.cs, 40                       ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.cr, 230584300921369395
  br i1 %or.cond.i.i, label %bb.ah, label %bb.ae, !prof !64

bb.ae:                                            ; preds = %bb.ad
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !101551
  %i.cv = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !101551 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = ptrtoint ptr %i.cv to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i

bb.ah:                                            ; preds = %bb.af, %bb.ad
  %.sroa.46.0.ph.i = phi i64 [ 8, %bb.af ], [ 0, %bb.ad ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.46.0.ph.i, i64 %i.ct) #61
          to label %bb.bc unwind label %bb.aa, !noalias !101532

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.ag, %bb.ae
  %.sroa.10.0.i = phi i64 [ %i.cx, %bb.ag ], [ 8, %bb.ae ]
  %.sroa.46.0.i = phi i64 [ %i.cs, %bb.ag ], [ 0, %bb.ae ] ; 3 uses
  %i.cy = inttoptr i64 %.sroa.10.0.i to ptr       ; 3 uses
  %i.cz = icmp ule i64 %i.cs, %.sroa.46.0.i
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !101532
  store i64 %.sroa.46.0.i, ptr %i.f, align 8, !noalias !101532
  store ptr %i.cy, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !101532
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !101532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !101532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !noalias !101530
  call void @llvm.experimental.noalias.scope.decl(metadata !101552)
  call void @llvm.experimental.noalias.scope.decl(metadata !101553)
  call void @llvm.experimental.noalias.scope.decl(metadata !101554)
  call void @llvm.experimental.noalias.scope.decl(metadata !101555)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8114)
  call void @llvm.experimental.noalias.scope.decl(metadata !101556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101557
  %i.da = load i64, ptr %i.ae, align 16, !alias.scope !101558, !noalias !101559, !noundef !58 ; 2 uses
  %i.db = load i64, ptr %i.af, align 8, !alias.scope !101558, !noalias !101559, !noundef !58
  %i.dc = icmp ult i64 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE7reserveB1s_.exit.i.i.i
  %i.dd = phi i64 [ %i.ey, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE7reserveB1s_.exit.i.i.i ], [ %.sroa.46.0.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i ] ; 7 uses
  %i.de = phi i64 [ %i.fc, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE7reserveB1s_.exit.i.i.i ], [ %i.da, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i ] ; 4 uses
  %i.df = phi i64 [ %i.fb, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE7reserveB1s_.exit.i.i.i ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i ] ; 4 uses
  %i.dg = phi ptr [ %i.ez, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE7reserveB1s_.exit.i.i.i ], [ %i.cy, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !101560)
  call void @llvm.experimental.noalias.scope.decl(metadata !101561), !noalias !101559
  %i.dh = load ptr, ptr %i.c, align 16, !alias.scope !101562, !noalias !101559, !nonnull !58, !noundef !58 ; 8 uses
  %i.di = load i64, ptr %i.dh, align 8, !noalias !101563, !noundef !58 ; 2 uses
  %i.dj = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %i.dj), !noalias !101559
  %i.dk = add i64 %i.di, 1                        ; 2 uses
  store i64 %i.dk, ptr %i.dh, align 8, !noalias !101563
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.ai, label %bb.aj, !prof !62

bb.ai:                                            ; preds = %.lr.ph
  call void @llvm.trap(), !noalias !101559
  unreachable

bb.aj:                                            ; preds = %.lr.ph
  %i.dm = load <2 x ptr>, ptr %i.c, align 16, !alias.scope !101562, !noalias !101559
  %i.dn = load i64, ptr %i.ag, align 16, !alias.scope !101562, !noalias !101559, !noundef !58
  %i.do = load ptr, ptr %i.ah, align 8, !alias.scope !101562, !noalias !101559, !nonnull !58, !noundef !58 ; 5 uses
  %i.dp = load i64, ptr %i.do, align 8, !noalias !101563, !noundef !58 ; 2 uses
  %i.dq = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %i.dq), !noalias !101559
  %i.dr = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dr, ptr %i.do, align 8, !noalias !101563
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.ak, label %_RNvMNtNtCscnlsAxKLLci_4pest9iterators5pairsINtB2_5PairsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4peekBV_.exit.i, !prof !62

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.trap(), !noalias !101559
  unreachable

_RNvMNtNtCscnlsAxKLLci_4pest9iterators5pairsINtB2_5PairsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4peekBV_.exit.i: ; preds = %bb.aj
  store <2 x ptr> %i.dm, ptr %i.a, align 16, !noalias !101564
  store i64 %i.dn, ptr %.sroa.512.0..sroa_idx.i, align 16, !noalias !101564
  store ptr %i.do, ptr %.sroa.613.0..sroa_idx.i, align 8, !noalias !101564
  store i64 %i.de, ptr %.sroa.714.0..sroa_idx.i, align 16, !noalias !101564
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.du = load i64, ptr %i.dt, align 8, !noalias !101564, !noundef !58 ; 2 uses
  %i.dv = icmp ult i64 %i.de, %i.du
  br i1 %i.dv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvMNtNtCscnlsAxKLLci_4pest9iterators5pairsINtB2_5PairsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4peekBV_.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !101564, !nonnull !58, !noundef !58
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %i.dx, i64 %i.de ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 8, !range !60, !noalias !101564, !noundef !58
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.an, label %bb.as, !prof !62

bb.am:                                            ; preds = %_RNvMNtNtCscnlsAxKLLci_4pest9iterators5pairsINtB2_5PairsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4peekBV_.exit.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.de, i64 noundef %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1573) #60
          to label %.noexc.i unwind label %bb.ao, !noalias !101564

.noexc.i:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1574) #60
          to label %.noexc2.i unwind label %bb.ao, !noalias !101564

.noexc2.i:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load i64, ptr %i.dh, align 8, !noalias !101565, !noundef !58
  %i.ed = add i64 %i.ec, -1                       ; 2 uses
  store i64 %i.ed, ptr %i.dh, align 8, !noalias !101565
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.ap, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i90

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEE9drop_slowB24_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.a) #62, !noalias !101564
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i90

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i90: ; preds = %bb.ap, %bb.ao
  %i.ef = load i64, ptr %i.do, align 8, !noalias !101566, !noundef !58
  %i.eg = add i64 %i.ef, -1                       ; 2 uses
  store i64 %i.eg, ptr %i.do, align 8, !noalias !101566
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.aq, label %.body84

bb.aq:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i90
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.613.0..sroa_idx.i) #62
          to label %.body84 unwind label %bb.ar, !noalias !101564

bb.ar:                                            ; preds = %bb.aq
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !101564
  unreachable

.body84:                                          ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i90, %bb.aq, %bb.av
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ff, %bb.av ], [ %i.eb, %bb.aq ], [ %i.eb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i90 ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCscnlsAxKLLci_4pest9iterators5pairs5PairsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #63
          to label %.body.i unwind label %bb.az, !noalias !101559

bb.as:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !101564, !noundef !58
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ae, align 16, !alias.scope !101560, !noalias !101559
  %i.em = load i64, ptr %i.ad, align 16, !alias.scope !101560, !noalias !101559, !noundef !58
  %i.en = add i64 %i.em, -1                       ; 2 uses
  store i64 %i.en, ptr %i.ad, align 16, !alias.scope !101560, !noalias !101559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8114, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.411.0..sroa_idx.i, i64 32, i1 false), !noalias !101567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101568
  store ptr %i.dh, ptr %i.b, align 8, !noalias !101568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8114, i64 32, i1 false), !noalias !101568
  %i.eo = icmp samesign ult i64 %i.df, 230584300921369396
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp eq i64 %i.df, %i.dd
  br i1 %i.ep, label %bb.aw, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE7reserveB1s_.exit.i.i.i

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE7reserveB1s_.exit.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101564
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8114)
  call void @llvm.experimental.noalias.scope.decl(metadata !101569)
  call void @llvm.experimental.noalias.scope.decl(metadata !101570)
  call void @llvm.experimental.noalias.scope.decl(metadata !101571)
  %i.eq = load ptr, ptr %i.c, align 16, !alias.scope !101572, !noalias !101532, !nonnull !58, !noundef !58 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !noalias !101573, !noundef !58
  %i.es = add i64 %i.er, -1                       ; 2 uses
  store i64 %i.es, ptr %i.eq, align 8, !noalias !101573
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %bb.at, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i.i.i.i

bb.at:                                            ; preds = %._crit_edge
  call fastcc void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEE9drop_slowB24_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.c) #62, !noalias !101559
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i.i.i.i: ; preds = %bb.at, %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !101574)
  call void @llvm.experimental.noalias.scope.decl(metadata !101575)
  %i.eu = load ptr, ptr %i.ah, align 8, !alias.scope !101576, !noalias !101532, !nonnull !58, !noundef !58 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !101577, !noundef !58
  %i.ew = add i64 %i.ev, -1                       ; 2 uses
  store i64 %i.ew, ptr %i.eu, align 8, !noalias !101577
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.au, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEINtB2_18SpecFromIterNestedB11_INtNtB16_5pairs5PairsB1L_EE9from_iterB1P_.exit

bb.au:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc2rc2RcINtNtBG_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEEEB2x_.exit.i.i.i.i
  invoke void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #62
          to label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEINtB2_18SpecFromIterNestedB11_INtNtB16_5pairs5PairsB1L_EE9from_iterB1P_.exit unwind label %bb.ba, !noalias !101559

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE7reserveB1s_.exit.i.i.i: ; preds = %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtNtCscnlsAxKLLci_4pest9iterators4pair4PairNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEE7reserveB1s_.exit.i.i_crit_edge.i, %bb.as
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph34___pyfunction_barabasi_albert_graph:bb.a
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !118434
  br i1 %.not105.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.z, i64 72, i1 false), !noalias !118440
  br label %bb.as

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !118441
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_NtB7_10UndirectedE13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.q, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 0) %i.bn), !noalias !118441
  %i.gg = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i8 0, i64 16, i1 false), !alias.scope !118442, !noalias !118441
  store i32 -1, ptr %i.gh, align 8, !alias.scope !118442, !noalias !118441
  %i.gi = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  store i32 -1, ptr %i.gi, align 4, !alias.scope !118442, !noalias !118441
  br label %.preheader.i.i.i

.loopexit42.i.i.i:                                ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.not.i.i.i = icmp eq i64 %i.bn, 1
  br i1 %.not.i.i.i, label %.loopexit149.i.i, label %.lr.ph58.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph58.i.i.i, %.preheader.i.i.i, %bb.an, %.invoke.i.i
  %lpad.loopexit.split-lp508 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(72) %i.q) #63
          to label %common.resume unwind label %bb.ao, !noalias !118441

.preheader.i.i.i:                                 ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.aj
  %.sroa.023.055.i.i.i = phi i64 [ %i.gj, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.aj ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !118441
  %i.gj = add nuw i64 %.sroa.023.055.i.i.i, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !118443
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118441

.noexc.i.i.i:                                     ; preds = %.preheader.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !118444)
  %i.gk = load i64, ptr %i.p, align 8, !range !109, !alias.scope !118444, !noalias !118443, !noundef !58 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.gk, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.ak, !prof !68

bb.ak:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !118445
  %i.gl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !118444, !noalias !118443
  store i64 %i.gk, ptr %i.o, align 8, !noalias !118445
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !118443
  %exitcond.not.i.i.i = icmp eq i64 %i.gj, %i.bn
  br i1 %exitcond.not.i.i.i, label %.loopexit42.i.i.i, label %.preheader.i.i.i

.lr.ph58.i.i.i:                                   ; preds = %.loopexit42.i.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.021.056.i.i.i = phi i64 [ %i.gn, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 1, %.loopexit42.i.i.i ] ; 2 uses
  %i.gn = add nuw i64 %.sroa.021.056.i.i.i, 1     ; 2 uses
  %i.go = trunc i64 %.sroa.021.056.i.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !118441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !118446
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i32 noundef 0, i32 noundef %i.go, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc36.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118447

.noexc36.i.i.i:                                   ; preds = %.lr.ph58.i.i.i
  %i.gp = load i64, ptr %i.n, align 8, !range !109, !noalias !118446, !noundef !58 ; 3 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.gp, 2
  br i1 %cond.i.i.i.i.i, label %bb.an, label %bb.al, !prof !70

bb.al:                                            ; preds = %.noexc36.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !118448)
  %.not.i.i.i.i.i.i60 = icmp eq i64 %i.gp, -1
  br i1 %.not.i.i.i.i.i.i60, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.am, !prof !68

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !118449
  %i.gq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !118448, !noalias !118446
  store i64 %i.gp, ptr %i.k, align 8, !noalias !118449
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.am, %bb.ak
  %.sink384.i.sroa.phi.i = phi ptr [ %.sink384.i.sroa.gep.i, %bb.ak ], [ %.sink384.i.sroa.gep128.i, %bb.am ]
  %.sink384.i.i = phi ptr [ %i.o, %bb.ak ], [ %i.k, %bb.am ]
  %.sink.i.i = phi i64 [ %i.gm, %bb.ak ], [ %i.gr, %bb.am ]
  %i.gs = phi ptr [ @4180, %bb.ak ], [ @616, %bb.am ]
  store i64 %.sink.i.i, ptr %.sink384.i.sroa.phi.i, align 8, !noalias !118441
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %.sink384.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gs) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118450

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.an:                                            ; preds = %.noexc36.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !118446
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !118446, !noundef !58
  store i64 %i.gu, ptr %i.m, align 8, !noalias !118446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !118446
  store ptr %i.m, ptr %i.l, align 8, !noalias !118446
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !118446
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1721, ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @616) #60
          to label %.noexc38.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118451

.noexc38.i.i.i:                                   ; preds = %bb.an
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !118446
  %exitcond68.not.i.i.i = icmp eq i64 %i.gn, %i.bn
  br i1 %exitcond68.not.i.i.i, label %.loopexit149.i.i, label %.lr.ph58.i.i.i

bb.ao:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !118441
  unreachable

.loopexit149.i.i:                                 ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.loopexit42.i.i.i
  %.sroa.096.0.copyload97.i.i = load i64, ptr %i.q, align 8, !noalias !118452 ; 2 uses
  %.sroa.7.0..sroa_idx99.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx99.i.i, i64 64, i1 false), !noalias !118452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !118441
  %i.gw = icmp eq i64 %.sroa.096.0.copyload97.i.i, -1
  br i1 %i.gw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit149.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.cc

bb.aq:                                            ; preds = %.loopexit149.i.i
  %.sroa.4114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4114.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i.i, i64 64, i1 false), !noalias !118434
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  store i64 %.sroa.096.0.copyload97.i.i, ptr %i.w, align 8, !noalias !118434
  br label %bb.as

bb.ar:                                            ; preds = %bb.aw, %bb.at
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i

bb.as:                                            ; preds = %bb.aq, %bb.ai
  %.sroa.011.1.i.i = phi i8 [ 0, %bb.ai ], [ 1, %bb.aq ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 3 uses
  %.val35.i.i = load i64, ptr %i.gy, align 8, !noalias !118434, !noundef !58 ; 2 uses
  %i.gz = icmp ult i64 %.val35.i.i, %i.bn
  %i.ha = icmp ugt i64 %.val35.i.i, %i.be
  %or.cond.i.i = or i1 %i.gz, %i.ha
  br i1 %or.cond.i.i, label %bb.bx, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !118434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !118434
  %i.hb = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.val31.i.i = load ptr, ptr %i.hb, align 8, !noalias !118434, !nonnull !58, !noundef !58 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.val32.i.i = load i64, ptr %i.hc, align 8, !noalias !118434, !noundef !58
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %.val31.i.i, i64 %.val32.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !118453)
  store i64 0, ptr %i.u, align 8, !alias.scope !118454, !noalias !118434
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !alias.scope !118454, !noalias !118434
  %.sroa.7.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %.val31.i.i, ptr %.sroa.7.0..sroa_idx.i42.i.i, align 8, !alias.scope !118455, !noalias !118434
  %.sroa.4.0..sroa.7.0..sroa_idx.i42.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.hd, ptr %.sroa.4.0..sroa.7.0..sroa_idx.i42.sroa_idx.i.i, align 8, !alias.scope !118455, !noalias !118434
  %.sroa.5.0..sroa.7.0..sroa_idx.i42.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 0, ptr %.sroa.5.0..sroa.7.0..sroa_idx.i42.sroa_idx.i.i, align 8, !alias.scope !118455, !noalias !118434
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.w, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !118454, !noalias !118434
  call void @llvm.experimental.noalias.scope.decl(metadata !118456)
  call void @llvm.experimental.noalias.scope.decl(metadata !118457)
  call void @llvm.experimental.noalias.scope.decl(metadata !118458)
  call void @llvm.experimental.noalias.scope.decl(metadata !118459)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !118460
  %i.he = invoke fastcc { i32, i32 } @_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator4nextB6o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.u) #64
          to label %.noexc44.i.i unwind label %bb.ar, !noalias !118461 ; 2 uses

.noexc44.i.i:                                     ; preds = %bb.at
  %i.hf = extractvalue { i32, i32 } %i.he, 0
  %i.hg = extractvalue { i32, i32 } %i.he, 1
  %i.hh = trunc i32 %i.hf to i1
  br i1 %i.hh, label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6o_.exit.i.i.i.i, label %bb.av

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6o_.exit.i.i.i.i: ; preds = %.noexc44.i.i
  %i.hi = load i64, ptr %i.u, align 8, !range !59, !alias.scope !118462, !noalias !118434, !noundef !58
  %i.hj = trunc nuw i64 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.hk, align 8, !alias.scope !118462, !noalias !118434
  %i.hl = load i64, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !range !59, !alias.scope !118462, !noalias !118434, !noundef !58
  %i.hm = trunc nuw i64 %i.hl to i1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val.i60.i.i.i.i.i.i = load i64, ptr %i.hn, align 8, !alias.scope !118462, !noalias !118434
  %.sroa.8.0.i.i.i.i.i.i = select i1 %i.hm, i64 %.val.i60.i.i.i.i.i.i, i64 0 ; 2 uses
  %i.ho = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i)
  %i.hp = select i1 %i.hj, i64 %i.ho, i64 %.sroa.8.0.i.i.i.i.i.i
  %i.hq = call i64 @llvm.uadd.sat.i64(i64 %i.hp, i64 1) ; 2 uses
  %i.hr = call i64 @llvm.umax.i64(i64 %i.hq, i64 4) ; 3 uses
  %i.hs = shl i64 %i.hr, 2                        ; 4 uses
  %i.ht = icmp ugt i64 %i.hq, 4611686018427387903
  %.not.i.i.i43.i.i = icmp ugt i64 %i.hs, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.ht, %.not.i.i.i43.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.aw, label %bb.au, !prof !64

bb.au:                                            ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6o_.exit.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !118463
  %i.hu = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !118463 ; 5 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.aw, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.av:                                            ; preds = %.noexc44.i.i
  store i64 0, ptr %i.v, align 8, !alias.scope !118464, !noalias !118434
  %i.hw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.hw, align 8, !alias.scope !118464, !noalias !118434
  %i.hx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %i.hx, align 8, !alias.scope !118464, !noalias !118434
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6o_.exit.i.i.i.i
  %.sroa.412.0.ph.i.i.i.i = phi i64 [ 4, %bb.au ], [ 0, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6o_.exit.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.412.0.ph.i.i.i.i, i64 %i.hs) #61
          to label %.noexc45.i.i unwind label %bb.ar, !noalias !118460

.noexc45.i.i:                                     ; preds = %bb.aw
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.au
  store i32 %i.hg, ptr %i.hu, align 4, !noalias !118460
  store i64 %i.hr, ptr %i.j, align 8, !noalias !118460
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.hu, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !118460
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !118460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !118460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false), !noalias !118461
  call void @llvm.experimental.noalias.scope.decl(metadata !118465)
  call void @llvm.experimental.noalias.scope.decl(metadata !118466)
  call void @llvm.experimental.noalias.scope.decl(metadata !118467)
  call void @llvm.experimental.noalias.scope.decl(metadata !118468)
  %i.hy = invoke fastcc { i32, i32 } @_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator4nextB6o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.i) #64
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.thread.i.i.i.i, !noalias !118469 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.hz = extractvalue { i32, i32 } %i.hy, 0
  %i.ia = trunc i32 %i.hz to i1
  br i1 %i.ia, label %.lr.ph.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_NtBV_10UndirectedEB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B7p_B3v_E0EE11spec_extendB7v_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.id = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %bb.ax

bb.ax:                                            ; preds = %.noexc10.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ie = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i.i ], [ %i.ir, %.noexc10.i.i.i.i ]
  %i.if = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i ], [ %i.is, %.noexc10.i.i.i.i ] ; 3 uses
  %i.ig = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.iu, %.noexc10.i.i.i.i ] ; 4 uses
  %.pn.i.i.i.i.i.i = phi { i32, i32 } [ %i.hy, %.lr.ph.i.i.i.i.i.i ], [ %i.iv, %.noexc10.i.i.i.i ]
  %i.ih = extractvalue { i32, i32 } %.pn.i.i.i.i.i.i, 1
  %i.ii = icmp samesign ult i64 %i.ig, 2305843009213693952
  call void @llvm.assume(i1 %i.ii)
  %i.ij = icmp eq i64 %i.ig, %i.if
  br i1 %i.ij, label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6o_.exit.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6o_.exit.i.i.i.i.i.i: ; preds = %bb.ax
  %i.ik = load i64, ptr %i.i, align 8, !range !59, !alias.scope !118470, !noalias !118460, !noundef !58
  %i.il = trunc nuw i64 %i.ik to i1
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ib, align 8, !alias.scope !118470, !noalias !118460
  %i.im = load i64, ptr %i.ic, align 8, !range !59, !alias.scope !118470, !noalias !118460, !noundef !58
  %i.in = trunc nuw i64 %i.im to i1
  %.val.i60.i.i.i.i.i.i.i.i = load i64, ptr %i.id, align 8, !alias.scope !118470, !noalias !118460
  %.sroa.8.0.i.i.i.i.i.i.i.i = select i1 %i.in, i64 %.val.i60.i.i.i.i.i.i.i.i, i64 0 ; 2 uses
  %i.io = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i.i)
  %i.ip = select i1 %i.il, i64 %i.io, i64 %.sroa.8.0.i.i.i.i.i.i.i.i
  %i.iq = call i64 @llvm.uadd.sat.i64(i64 %i.ip, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.if, i64 noundef %i.iq, i64 noundef 4, i64 noundef 4)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.a, !noalias !118471

.noexc9.i.i.i.i:                                  ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6o_.exit.i.i.i.i.i.i
  %.pre3.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !range !61, !alias.scope !118472, !noalias !118460
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !118472, !noalias !118460
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i, %bb.ax
  %i.ir = phi ptr [ %.pre.i.i.i.i, %.noexc9.i.i.i.i ], [ %i.ie, %bb.ax ] ; 2 uses
  %i.is = phi i64 [ %.pre3.i.i.i.i.i.i, %.noexc9.i.i.i.i ], [ %i.if, %bb.ax ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ig
  store i32 %i.ih, ptr %i.it, align 4, !noalias !118473
  %i.iu = add nuw nsw i64 %i.ig, 1                ; 2 uses
  store i64 %i.iu, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !118472, !noalias !118460
  %i.iv = invoke fastcc { i32, i32 } @_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator4nextB6o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.i) #64
          to label %.noexc10.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.a, !noalias !118469 ; 2 uses

.noexc10.i.i.i.i:                                 ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.iw = extractvalue { i32, i32 } %i.iv, 0
  %i.ix = trunc i32 %i.iw to i1
  br i1 %i.ix, label %bb.ax, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_NtBV_10UndirectedEB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B7p_B3v_E0EE11spec_extendB7v_.exit.i.i.i.i

.loopexit.split-lp.thread.i.i.i.i:                ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %lpad.loopexit.split-lp19.i.i.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.a:                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_NtB1b_10UndirectedEB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B6i_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6o_.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !118460 ; 2 uses
  %5 = icmp eq i64 %.val.pre.i.i.i.i, 0
  br i1 %5, label %.body46.i.i, label %.loopexit.split-lp.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i.i.i

.loopexit.split-lp.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.a
  %.val8.i.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !118460
  %.pre.i.i.i = shl nuw i64 %.val.pre.i.i.i.i, 2
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.loopexit.split-lp.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i.i.i, %.loopexit.split-lp.thread.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %.loopexit.split-lp.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i.i.i ], [ %i.hs, %.loopexit.split-lp.thread.i.i.i.i ]
  %.val8.i.i.i.i = phi ptr [ %.val8.i.pre.i.i.i, %.loopexit.split-lp.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i.i.i ], [ %i.hu, %.loopexit.split-lp.thread.i.i.i.i ]
  %lpad.phi26.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.i._RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i_crit_edge.i.i.i ], [ %lpad.loopexit.split-lp19.i.i.i.i.a, %.loopexit.split-lp.thread.i.i.i.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i, i64 noundef %.pre-phi.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !118460
  br label %.body46.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_NtBV_10UndirectedEB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B7p_B3v_E0EE11spec_extendB7v_.exit.i.i.i.i: ; preds = %.noexc10.i.i.i.i, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !118460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !118474
  br label %bb.ay

bb.ay:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_NtBV_10UndirectedEB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B7p_B3v_E0EE11spec_extendB7v_.exit.i.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !118460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !118434
  %.val33.i.i = load i64, ptr %i.gy, align 8, !noalias !118434, !noundef !58 ; 3 uses
  %i.iy = icmp ult i64 %.val33.i.i, %i.be
  %i.iz = inttoptr i64 %.val33.i.i to ptr
  br i1 %i.iy, label %.lr.ph215.i.i, label %._crit_edge216.i.i

.lr.ph215.i.i:                                    ; preds = %bb.ay
  %i.ja = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.jb = shl i64 %i.bn, 4                        ; 3 uses
  %i.jc = icmp ugt i64 %i.bn, 1152921504606846975
  %.not.i.i.i52.i.i = icmp ugt i64 %i.jb, 9223372036854775800
  %or.cond.i.i.i53.i.i = or i1 %i.jc, %.not.i.i.i52.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4116.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %.sroa.5117.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %.sroa.6118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.sroa.7119.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %.sroa.8120.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.jh = shl nuw nsw i64 %i.bn, 2                ; 5 uses
  %.not137.i = icmp eq i64 %i.bn, 1
  %i.ji = icmp samesign ult i64 %i.bn, 2305843009213693952
  br i1 %or.cond.i.i.i53.i.i, label %.lr.ph215.split.us.i.i, label %.lr.ph215.split.i.i.preheader, !prof !64

.lr.ph215.split.i.i.preheader:                    ; preds = %.lr.ph215.i.i
  %i.jj = add nsw i64 %i.bn, -1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.jj, 8
  %n.vec = and i64 %i.jj, -8                      ; 4 uses
  %i.jk = shl i64 %n.vec, 2
  %i.jl = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.jj, %n.vec
  br label %.lr.ph215.split.i.i

.lr.ph215.split.us.i.i:                           ; preds = %.lr.ph215.i.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !118434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !118475
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc50.us.i.i unwind label %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118434

.noexc50.us.i.i:                                  ; preds = %.lr.ph215.split.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !118476)
  %i.jm = load i64, ptr %i.h, align 8, !range !109, !alias.scope !118476, !noalias !118475, !noundef !58 ; 2 uses
  %.not.i.i.us.i.i = icmp eq i64 %i.jm, -1
  br i1 %.not.i.i.us.i.i, label %bb.az, label %.split218.us.i.i, !prof !68

bb.az:                                            ; preds = %.noexc50.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !118475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !118434
  %i.jn = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.ba unwind label %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118434 ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.jo = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !118434
  %i.jp = icmp eq i8 %i.jo, 2
  br i1 %i.jp, label %bb.bc, label %bb.bb, !prof !68

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.bc unwind label %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118434

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !118477
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, i64 noundef range(i64 1, 0) %i.bn)
          to label %.noexc59.us.i.i unwind label %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118478

.noexc59.us.i.i:                                  ; preds = %bb.bc
  %.sroa.0.0.copyload.i.i.us.i.i = load ptr, ptr %i.f, align 8, !noalias !118478
  %.sroa.5.0.copyload.i.i.us.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i.i, align 8, !noalias !118478
  br label %.split221.i.i

.body60.i.i:                                      ; preds = %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i10.i.i.i.i, %bb.br, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.bh
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp442, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.mq, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i10.i.i.i.i ], [ %i.no, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i ], [ %i.kh, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ], [ %i.kh, %bb.bh ], [ %i.mq, %bb.br ], [ %lpad.loopexit.split-lp445, %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.val29.i.i = load i64, ptr %i.v, align 8, !noalias !118434 ; 2 uses
  %i.jq = icmp eq i64 %.val29.i.i, 0
  br i1 %i.jq, label %.body46.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.body60.i.i
  %.val30.i.i = load ptr, ptr %i.jf, align 8, !noalias !118434, !nonnull !58, !noundef !58
  %i.jr = shl nuw i64 %.val29.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30.i.i, i64 noundef %i.jr, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !118434
  br label %.body46.i.i

._crit_edge216.i.i.loopexit:                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i82.i.i
  %.sroa.9.i.sroa.9.0.copyload.pre = load ptr, ptr %i.gy, align 8, !noalias !118479
  br label %._crit_edge216.i.i

._crit_edge216.i.i:                               ; preds = %._crit_edge216.i.i.loopexit, %bb.ay
  %.sroa.9.i.sroa.9.0.copyload = phi ptr [ %.sroa.9.i.sroa.9.0.copyload.pre, %._crit_edge216.i.i.loopexit ], [ %i.iz, %bb.ay ]
  %.sroa.0.0.copyload120.i = load i64, ptr %i.w, align 8, !noalias !118479 ; 2 uses
  %.sroa.9.i.sroa.0.0.copyload = load ptr, ptr %i.hb, align 8, !noalias !118479
  %i.js = load <2 x i64>, ptr %i.hc, align 8, !noalias !118479
  %.sroa.9.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.jt = load <2 x ptr>, ptr %.sroa.9.i.sroa.7.0..sroa_idx, align 8, !noalias !118479
  %.sroa.9.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.9.i.sroa.10.0.copyload = load i64, ptr %.sroa.9.i.sroa.10.0..sroa_idx, align 8, !noalias !118479
  %.sroa.9.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ju = load <2 x i32>, ptr %.sroa.9.i.sroa.11.0..sroa_idx, align 8, !noalias !118479
  %.val.i.i = load i64, ptr %i.v, align 8, !noalias !118434 ; 2 uses
  %i.jv = icmp eq i64 %.val.i.i, 0
  br i1 %i.jv, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2z_5types3any5PyAnyEB2u_NtB1u_10UndirectedEB2u_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B3W_B2u_EB42_.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i48.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i48.i.i: ; preds = %._crit_edge216.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val28.i.i = load ptr, ptr %i.jw, align 8, !noalias !118434, !nonnull !58, !noundef !58
  %i.jx = shl nuw i64 %.val.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i, i64 noundef %i.jx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !118434
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2z_5types3any5PyAnyEB2u_NtB1u_10UndirectedEB2u_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B3W_B2u_EB42_.exit.i

.lr.ph215.split.i.i:                              ; preds = %.lr.ph215.split.i.i.preheader, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i82.i.i
  %.sroa.06.0213.i.i = phi i64 [ %i.nn, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i82.i.i ], [ %.val33.i.i, %.lr.ph215.split.i.i.preheader ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !118434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !118475
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc50.i.i unwind label %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118434

.noexc50.i.i:                                     ; preds = %.lr.ph215.split.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !118476)
  %i.jy = load i64, ptr %i.h, align 8, !range !109, !alias.scope !118476, !noalias !118475, !noundef !58 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.jy, -1
  br i1 %.not.i.i.i.i, label %bb.bd, label %.split218.us.i.i, !prof !68

.split218.us.i.i:                                 ; preds = %.noexc50.i.i, %.noexc50.us.i.i
  %.us-phi219.i.i = phi i64 [ %i.jm, %.noexc50.us.i.i ], [ %i.jy, %.noexc50.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !118480
  %i.jz = load i64, ptr %i.ja, align 8, !alias.scope !118476, !noalias !118475
  store i64 %.us-phi219.i.i, ptr %i.g, align 8, !noalias !118480
  %i.ka = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.jz, ptr %i.ka, align 8, !noalias !118480
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60
          to label %.noexc51.i.i unwind label %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118481

.noexc51.i.i:                                     ; preds = %.split218.us.i.i
  unreachable

bb.bd:                                            ; preds = %.noexc50.i.i
  %i.kb = load i32, ptr %i.ja, align 8, !alias.scope !118476, !noalias !118475, !noundef !58 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !118475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !118434
  %i.kc = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.be unwind label %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118434

bb.be:                                            ; preds = %bb.bd
  %i.kd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !118434
  %i.ke = icmp eq i8 %i.kd, 2
  br i1 %i.ke, label %bb.bg, label %bb.bf, !prof !68

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.bg unwind label %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118434

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !118477
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, i64 noundef range(i64 1, 0) %i.bn)
          to label %.noexc59.i.i unwind label %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118478

.noexc59.i.i:                                     ; preds = %bb.bg
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !118478 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i.i, align 8, !noalias !118478 ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !118482
  %i.kf = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.jb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !118482 ; 3 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %.split221.i.i, label %bb.bj

bb.bh:                                            ; preds = %.split221.i.i
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ki = icmp eq i64 %.us-phi223.i.i, 0
  br i1 %i.ki, label %.body60.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.kj = shl i64 %.us-phi223.i.i, 3
  %i.kk = icmp slt i64 %.us-phi223.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.kk), !noalias !118483
  %i.kl = and i64 %i.kj, -16                      ; 2 uses
  %i.km = add i64 %i.kl, 16                       ; 2 uses
  %i.kn = add nsw i64 %.us-phi223.i.i, 17
  %i.ko = add i64 %i.kn, %i.km                    ; 3 uses
  %i.kp = icmp uge i64 %i.ko, %i.km
  call void @llvm.assume(i1 %i.kp), !noalias !118483
  %i.kq = icmp ult i64 %i.ko, 9223372036854775793
  call void @llvm.assume(i1 %i.kq), !noalias !118483
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi222.i.i) ], !noalias !118483
  %i.kr = sub nuw nsw i64 -16, %i.kl
  %i.ks = getelementptr inbounds i8, ptr %.us-phi222.i.i, i64 %i.kr
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ks, i64 noundef %i.ko, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !118478
  br label %.body60.i.i

end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph34___pyfunction_barabasi_albert_graph:bb.a
  %i.mi = load i64, ptr %i.v, align 8, !range !61, !alias.scope !118496, !noalias !118434, !noundef !58
  %i.mj = icmp eq i64 %i.md, %i.mi
  br i1 %i.mj, label %bb.bs, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.bp
  %i.mk = phi i64 [ %.fr226.i.i, %bb.bp ], [ %i.mp, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ] ; 3 uses
  %i.ml = icmp eq i64 %.sroa.0102.0.copyload.i.i, 0
  br i1 %i.ml, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterBR_EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.mm = shl nuw i64 %.sroa.0102.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4103.0.copyload.i.i, i64 noundef %i.mm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !118497
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterBR_EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i, %bb.bq
  %i.mn = phi ptr [ %.pre301.i.i, %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i ], [ %i.mc, %bb.bq ] ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.md
  store i32 %i.mg, ptr %i.mo, align 4, !noalias !118498
  %i.mp = add nuw nsw i64 %i.md, 1                ; 3 uses
  store i64 %i.mp, ptr %i.jg, align 8, !alias.scope !118496, !noalias !118434
  %.not.i.not.i.i.i.i = icmp eq ptr %i.me, %i.ma
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.bq

bb.br:                                            ; preds = %bb.bs
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mr = icmp eq i64 %.sroa.0102.0.copyload.i.i, 0
  br i1 %i.mr, label %.body60.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i10.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i10.i.i.i.i: ; preds = %bb.br
  %i.ms = shl nuw i64 %.sroa.0102.0.copyload.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4103.0.copyload.i.i, i64 noundef %i.ms, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !118499
  br label %.body60.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.mt = ptrtoint ptr %i.me to i64
  %i.mu = sub nuw i64 %i.mb, %i.mt
  %i.mv = lshr exact i64 %i.mu, 4
  %i.mw = add nuw nsw i64 %i.mv, 1
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.md, i64 noundef %i.mw, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i unwind label %bb.br, !noalias !118500

._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i: ; preds = %bb.bs
  %.pre301.i.i = load ptr, ptr %i.jf, align 8, !alias.scope !118496, !noalias !118434
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterBR_EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !118501
  %i.mx = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.jh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !118501 ; 8 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %bb.bt, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i76.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i76.i.i: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterBR_EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i
  br i1 %.not137.i, label %.loopexit.i.i, label %.lr.ph.i.i80.i.i.preheader

.lr.ph.i.i80.i.i.preheader:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i76.i.i
  br i1 %min.iters.check, label %.lr.ph.i.i80.i.i.preheader439, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i80.i.i.preheader
  %i.mz = getelementptr i8, ptr %i.mx, i64 %i.jk  ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.na = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.mx, i64 %i.na ; 2 uses
  %i.nb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !noalias !118502
  store <4 x i32> %broadcast.splat, ptr %i.nb, align 4, !noalias !118502
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nc = icmp eq i64 %index.next, %n.vec
  br i1 %i.nc, label %middle.block, label %vector.body, !llvm.loop !118385

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i80.i.i.preheader439

.lr.ph.i.i80.i.i.preheader439:                    ; preds = %.lr.ph.i.i80.i.i.preheader, %middle.block
  %.sroa.0.021.i.i.i.i.ph = phi ptr [ %i.mx, %.lr.ph.i.i80.i.i.preheader ], [ %i.mz, %middle.block ]
  %.sroa.04.020.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i80.i.i.preheader ], [ %i.jl, %middle.block ]
  br label %.lr.ph.i.i80.i.i

bb.bt:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtCsfztDQZkQYYe_8indexmap3set4iter8IntoIterBR_EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.jh) #61
          to label %.noexc81.i.i unwind label %.body73.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118503

.noexc81.i.i:                                     ; preds = %bb.bt
  unreachable

.lr.ph.i.i80.i.i:                                 ; preds = %.lr.ph.i.i80.i.i.preheader439, %.lr.ph.i.i80.i.i
  %.sroa.0.021.i.i.i.i = phi ptr [ %i.ne, %.lr.ph.i.i80.i.i ], [ %.sroa.0.021.i.i.i.i.ph, %.lr.ph.i.i80.i.i.preheader439 ] ; 2 uses
  %.sroa.04.020.i.i.i.i = phi i64 [ %i.nd, %.lr.ph.i.i80.i.i ], [ %.sroa.04.020.i.i.i.i.ph, %.lr.ph.i.i80.i.i.preheader439 ]
  %i.nd = add nuw nsw i64 %.sroa.04.020.i.i.i.i, 1 ; 2 uses
  store i32 %i.kb, ptr %.sroa.0.021.i.i.i.i, align 4, !noalias !118502
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.nd, %i.bn
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i80.i.i, !llvm.loop !118386

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i80.i.i, %middle.block, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i76.i.i
  %.sroa.0.0.lcssa28.i.i.i.i = phi ptr [ %i.mx, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i76.i.i ], [ %i.mz, %middle.block ], [ %i.ne, %.lr.ph.i.i80.i.i ]
  store i32 %i.kb, ptr %.sroa.0.0.lcssa28.i.i.i.i, align 4, !noalias !118502
  call void @llvm.assume(i1 %i.ji)
  call void @llvm.experimental.noalias.scope.decl(metadata !118504)
  call void @llvm.experimental.noalias.scope.decl(metadata !118505)
  %i.nf = load i64, ptr %i.v, align 8, !range !61, !alias.scope !118506, !noalias !118434, !noundef !58
  %i.ng = sub i64 %i.nf, %i.mk
  %i.nh = icmp ugt i64 %i.bn, %i.ng
  br i1 %i.nh, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i82.i.i, !prof !62

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i: ; preds = %.loopexit.i.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.mk, i64 noundef range(i64 1, 0) %i.bn, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i84.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, !noalias !118507

.noexc.i84.i.i:                                   ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i
  %i.ni = load i64, ptr %i.jg, align 8, !alias.scope !118508, !noalias !118434, !noundef !58
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i82.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i82.i.i: ; preds = %.noexc.i84.i.i, %.loopexit.i.i
  %.sink386.i.i = phi i64 [ %i.ni, %.noexc.i84.i.i ], [ %i.mk, %.loopexit.i.i ] ; 3 uses
  %i.nj = icmp ult i64 %.sink386.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.nj)
  %i.nk = load ptr, ptr %i.jf, align 8, !alias.scope !118508, !noalias !118434, !nonnull !58, !noundef !58
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.sink386.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.nl, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.mx, i64 %i.jh, i1 false), !noalias !118509
  %i.nm = add nuw nsw i64 %.sink386.i.i, %i.bn
  store i64 %i.nm, ptr %i.jg, align 8, !alias.scope !118508, !noalias !118434
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mx, i64 noundef %i.jh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !118510
  %i.nn = add nuw i64 %.sroa.06.0213.i.i, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !118434
  %exitcond.not.i.i = icmp eq i64 %i.nn, %i.be
  br i1 %exitcond.not.i.i, label %._crit_edge216.i.i.loopexit, label %.lr.ph215.split.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mx, i64 noundef %i.jh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !118511
  br label %.body60.i.i

bb.bu:                                            ; preds = %.noexc62.i.i
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.lc
  %i.nq = load i32, ptr %i.np, align 4, !noalias !118434, !noundef !58 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118512)
  %.val.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !118513, !noalias !118434, !noundef !58
  %i.nr = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !118514, !noundef !58
  %i.ns = zext i32 %i.nq to i64
  %i.nt = xor i64 %.val.i.i.i, %i.ns
  %i.nu = zext i64 %i.nt to i128
  %i.nv = zext i64 %i.nr to i128
  %i.nw = mul nuw i128 %i.nu, %i.nv               ; 2 uses
  %i.nx = lshr i128 %i.nw, 64
  %i.ny = xor i128 %i.nx, %i.nw
  %i.nz = trunc i128 %i.ny to i64
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef %i.nz, i32 noundef %i.nq)
          to label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split211.us.i.i:                                 ; preds = %.split.us.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @648) #61
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !118434

bb.bv:                                            ; preds = %.split211.us.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.bu, %bb.bk, %.split211.us.i.i, %bb.bo, %bb.bn, %bb.bl
  %lpad.loopexit.split-lp442 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.t) #63, !noalias !118434
  br label %.body60.i.i

bb.bw:                                            ; preds = %bb.cg, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.oa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body116.i

.body116.i:                                       ; preds = %bb.ca, %bb.bw
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !118434
  unreachable

bb.bx:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.w)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i.i unwind label %bb.by, !noalias !118434

bb.by:                                            ; preds = %bb.bx
  %i.ob = landingpad { ptr, i32 }
          cleanup
  %i.oc = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.oc) #63
          to label %.body.i.i unwind label %bb.bz, !noalias !118434

bb.bz:                                            ; preds = %bb.by
  %i.od = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !118515
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.bx
  %i.oe = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.oe)
          to label %bb.cc unwind label %bb.ad, !noalias !118434

.body46.i.i:                                      ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.body60.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.a, %bb.ar
  %.pn.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.i.i.i.i.a ], [ %i.gx, %bb.ar ], [ %lpad.phi26.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ], [ %.pn.i.i, %.body60.i.i ], [ %.pn.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.w)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.ca, !noalias !118434

bb.ca:                                            ; preds = %.body46.i.i
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.og) #63
          to label %.body116.i unwind label %bb.cb, !noalias !118434

bb.cb:                                            ; preds = %bb.ca
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !118516
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.body46.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.oi)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i..body.i_crit_edge.i unwind label %bb.bw, !noalias !118434

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i..body.i_crit_edge.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.pre.i = load i64, ptr %i.z, align 8, !range !57, !alias.scope !118433, !noalias !118432
  br label %.body.i.i

bb.cc:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.ap
  %.sroa.011.2.i.i = phi i8 [ 1, %bb.ap ], [ %.sroa.011.1.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !118434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !118434
  %i.oj = trunc nuw i8 %.sroa.011.2.i.i to i1
  %or.cond2.i.i = select i1 %.not105.i, i1 %i.oj, i1 false
  br i1 %or.cond2.i.i, label %bb.cd, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2z_5types3any5PyAnyEB2u_NtB1u_10UndirectedEB2u_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B3W_B2u_EB42_.exit.thread.i

bb.cd:                                            ; preds = %bb.cc
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.z)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit94.i.i unwind label %bb.ce, !noalias !118440

bb.ce:                                            ; preds = %bb.cd
  %i.ok = landingpad { ptr, i32 }
          cleanup
  %i.ol = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ol) #63
          to label %common.resume unwind label %bb.cf, !noalias !118440

bb.cf:                                            ; preds = %bb.ce
  %i.om = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !118517
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit94.i.i: ; preds = %bb.cd
  %i.on = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.on), !noalias !118440
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2z_5types3any5PyAnyEB2u_NtB1u_10UndirectedEB2u_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B3W_B2u_EB42_.exit.thread.i

.body.i.i:                                        ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i..body.i_crit_edge.i, %bb.by, %bb.ad
  %i.oo = phi i64 [ %i.cu, %bb.by ], [ %.pre.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i..body.i_crit_edge.i ], [ %i.cu, %bb.ad ]
  %.sroa.011.4.i.i = phi i8 [ %.sroa.011.1.i.i, %bb.by ], [ %.sroa.011.1.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i..body.i_crit_edge.i ], [ %.sroa.011.0.i.i, %bb.ad ]
  %.pn26.i.i = phi { ptr, i32 } [ %i.ob, %bb.by ], [ %.pn.pn.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i..body.i_crit_edge.i ], [ %i.fw, %bb.ad ] ; 2 uses
  %i.op = icmp ne i64 %i.oo, -1
  %i.oq = trunc nuw i8 %.sroa.011.4.i.i to i1
  %or.cond4.i.i = select i1 %i.op, i1 %i.oq, i1 false
  br i1 %or.cond4.i.i, label %bb.cg, label %common.resume

bb.cg:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.z) #63
          to label %common.resume unwind label %bb.bw, !noalias !118440

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.y, %bb.x
  store i64 %i.cu, ptr %i.z, align 8, !noalias !118432
  %.sroa.4127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4127.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.6.0..sroa_idx29, i64 64, i1 false), !noalias !118518
  br label %bb.aa

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2z_5types3any5PyAnyEB2u_NtB1u_10UndirectedEB2u_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B3W_B2u_EB42_.exit.thread.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit94.i.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !118432
  br label %bb.ch

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2z_5types3any5PyAnyEB2u_NtB1u_10UndirectedEB2u_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B3W_B2u_EB42_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i48.i.i, %._crit_edge216.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !118434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !118434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !118434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !118432
  %i.or = icmp eq i64 %.sroa.0.0.copyload120.i, -1
  br i1 %i.or, label %bb.ch, label %bb.cq

bb.ch:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2z_5types3any5PyAnyEB2u_NtB1u_10UndirectedEB2u_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B3W_B2u_EB42_.exit.i, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2z_5types3any5PyAnyEB2u_NtB1u_10UndirectedEB2u_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B3W_B2u_EB42_.exit.thread.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !118432
  %i.os = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !118432 ; 4 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %.noexc112.i, label %bb.ci, !prof !90

.noexc112.i:                                      ; preds = %bb.ch
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !118432
  unreachable

bb.ci:                                            ; preds = %bb.ch
  store ptr @2713, ptr %i.os, align 8, !noalias !118432
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store i64 64, ptr %i.ou, align 8, !noalias !118432
  br label %bb.cr

bb.cj:                                            ; preds = %bb.v
  store ptr @2714, ptr %i.cy, align 8, !noalias !118432
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cm, %bb.cj
  %.sink367.i = phi ptr [ %i.cw, %bb.cm ], [ %i.cy, %bb.cj ] ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.sink367.i, i64 8
  store i64 13, ptr %i.ov, align 8, !noalias !118432
  %i.ow = icmp eq i64 %i.cu, -1
  br i1 %i.ow, label %bb.cr, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.aq), !noalias !118518
  br label %bb.cr

bb.cm:                                            ; preds = %bb.t
  store ptr @2715, ptr %i.cw, align 8, !noalias !118432
  br label %bb.ck

bb.cn:                                            ; preds = %.invoke.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = icmp eq i64 %i.cu, -1
  br i1 %i.ox, label %common.resume, label %bb.co

bb.co:                                            ; preds = %bb.cn
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.aq)
          to label %common.resume unwind label %bb.cp, !noalias !118518

bb.cp:                                            ; preds = %bb.co
  %i.oy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !118432
  unreachable

bb.cq:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2z_5types3any5PyAnyEB2u_NtB1u_10UndirectedEB2u_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph21barabasi_albert_graph0B3W_B2u_EB42_.exit.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !118432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 %.sroa.0.0.copyload120.i, ptr %i.aj, align 8
  %.sroa.862.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.9.i.sroa.0.0.copyload, ptr %.sroa.862.0..sroa_idx, align 8
  %.sroa.862.sroa.8.0..sroa.862.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x i64> %i.js, ptr %.sroa.862.sroa.8.0..sroa.862.0..sroa_idx.sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store <2 x ptr> %i.jt, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr %.sroa.9.i.sroa.9.0.copyload, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i64 %.sroa.9.i.sroa.10.0.copyload, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.2068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store <2 x i32> %i.ju, ptr %.sroa.2068.0..sroa_idx, align 8
  %.sroa.2271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store ptr @_Py_NoneStruct, ptr %.sroa.2271.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store i8 0, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 81
  store i8 1, ptr %.sroa.24.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !118519
  call fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE19create_class_objectB15_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.aj), !noalias !118520, !inline_history !45
  %i.oz = load i64, ptr %i.a, align 8, !range !59, !noalias !118519, !noundef !58
  %i.pa = trunc nuw i64 %i.oz to i1
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.8.copyload74 = load ptr, ptr %i.pb, align 8, !noalias !118521 ; 2 uses
  br i1 %i.pa, label %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.cs

_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.cq
  %.sroa.10.8..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.pc = load <2 x i64>, ptr %.sroa.10.8..sroa_idx76, align 8, !noalias !118521
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx76.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.10.sroa.6.0.copyload87 = load ptr, ptr %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx76.sroa_idx, align 8, !noalias !118521
  %.sroa.10.sroa.7.0..sroa.10.8..sroa_idx76.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.10.sroa.7.0.copyload88 = load ptr, ptr %.sroa.10.sroa.7.0..sroa.10.8..sroa_idx76.sroa_idx, align 8, !noalias !118521
  %.sroa.10.sroa.8.0..sroa.10.8..sroa_idx76.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.10.sroa.8.0.copyload89 = load ptr, ptr %.sroa.10.sroa.8.0..sroa.10.8..sroa_idx76.sroa_idx, align 8, !noalias !118521
  %.sroa.10.sroa.9.0..sroa.10.8..sroa_idx76.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.10.sroa.9.0.copyload90 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.8..sroa_idx76.sroa_idx, align 8, !noalias !118521
  %.sroa.10.sroa.10.0..sroa.10.8..sroa_idx76.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.pd = load <2 x i32>, ptr %.sroa.10.sroa.10.0..sroa.10.8..sroa_idx76.sroa_idx, align 8, !noalias !118521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.cr

bb.cr:                                            ; preds = %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ci, %bb.cl, %bb.ck
  %.sroa.10.sroa.9.0 = phi i64 [ %.sroa.10.sroa.9.0.copyload90, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], [ undef, %bb.ck ], [ undef, %bb.cl ], [ undef, %bb.ci ]
  %.sroa.10.sroa.8.0 = phi ptr [ %.sroa.10.sroa.8.0.copyload89, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], [ @518, %bb.ck ], [ @518, %bb.cl ], [ @518, %bb.ci ]
  %.sroa.10.sroa.7.0 = phi ptr [ %.sroa.10.sroa.7.0.copyload88, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], [ %.sink367.i, %bb.ck ], [ %.sink367.i, %bb.cl ], [ %i.os, %bb.ci ]
  %.sroa.10.sroa.6.0 = phi ptr [ %.sroa.10.sroa.6.0.copyload87, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], [ null, %bb.ck ], [ null, %bb.cl ], [ null, %bb.ci ]
  %.sroa.5.0 = phi ptr [ %.sroa.5.8.copyload74, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], [ null, %bb.ck ], [ null, %bb.cl ], [ null, %bb.ci ]
  %i.pe = phi <2 x i32> [ %i.pd, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], [ <i32 3, i32 undef>, %bb.ck ], [ <i32 3, i32 undef>, %bb.cl ], [ <i32 3, i32 undef>, %bb.ci ]
  %i.pf = phi <2 x i64> [ %i.pc, %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], [ <i64 0, i64 1>, %bb.ck ], [ <i64 0, i64 1>, %bb.cl ], [ <i64 0, i64 1>, %bb.ci ]
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.pg, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.pf, ptr %.sroa.496.0..sroa_idx, align 8
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.sroa.6.0, ptr %.sroa.698.0..sroa_idx, align 8
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.10.sroa.7.0, ptr %.sroa.799.0..sroa_idx, align 8
end_hunk_6
begin_hunk_7_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph43___pyfunction_directed_barabasi_albert_graph:bb.a
  %i.gz = trunc i64 %.sroa.021.056.i.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !119782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !119787
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef 0, i32 noundef %i.gz, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc36.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !119788

.noexc36.i.i.i:                                   ; preds = %.lr.ph58.i.i.i
  %i.ha = load i64, ptr %i.m, align 8, !range !109, !noalias !119787, !noundef !58 ; 3 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.ha, 2
  br i1 %cond.i.i.i.i.i, label %bb.ar, label %bb.ap, !prof !70

bb.ap:                                            ; preds = %.noexc36.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !119789)
  %.not.i.i.i.i.i.i60 = icmp eq i64 %i.ha, -1
  br i1 %.not.i.i.i.i.i.i60, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.aq, !prof !68

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !119790
  %i.hb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !119789, !noalias !119787
  store i64 %i.ha, ptr %i.j, align 8, !noalias !119790
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.aq, %bb.ao
  %.sink578.i.sroa.phi.i = phi ptr [ %.sink578.i.sroa.gep.i, %bb.ao ], [ %.sink578.i.sroa.gep131.i, %bb.aq ]
  %.sink578.i.i = phi ptr [ %i.n, %bb.ao ], [ %i.j, %bb.aq ]
  %.sink.i.i = phi i64 [ %i.gx, %bb.ao ], [ %i.hc, %bb.aq ]
  %i.hd = phi ptr [ @4180, %bb.ao ], [ @616, %bb.aq ]
  store i64 %.sink.i.i, ptr %.sink578.i.sroa.phi.i, align 8, !noalias !119782
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %.sink578.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hd) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !119791

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ar:                                            ; preds = %.noexc36.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !119787
  %i.hf = load i64, ptr %i.he, align 8, !noalias !119787, !noundef !58
  store i64 %i.hf, ptr %i.l, align 8, !noalias !119787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !119787
  store ptr %i.l, ptr %i.k, align 8, !noalias !119787
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !119787
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1721, ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @616) #60
          to label %.noexc38.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !119792

.noexc38.i.i.i:                                   ; preds = %bb.ar
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !119787
  %exitcond68.not.i.i.i = icmp eq i64 %i.gy, %i.bn
  br i1 %exitcond68.not.i.i.i, label %.loopexit169.i.i, label %.lr.ph58.i.i.i

bb.as:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !119782
  unreachable

.loopexit169.i.i:                                 ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.loopexit42.i.i.i
  %.sroa.097.0.copyload98.i.i = load i64, ptr %i.p, align 8, !noalias !119793 ; 2 uses
  %.sroa.7.0..sroa_idx100.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx100.i.i, i64 64, i1 false), !noalias !119793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !119782
  %i.hh = icmp eq i64 %.sroa.097.0.copyload98.i.i, -1
  br i1 %i.hh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit169.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.cm

bb.au:                                            ; preds = %.loopexit169.i.i
  %.sroa.4123.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4123.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i.i, i64 64, i1 false), !noalias !119775
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  store i64 %.sroa.097.0.copyload98.i.i, ptr %i.u, align 8, !noalias !119775
  br label %bb.aw

bb.av:                                            ; preds = %bb.bb, %.split287.us.i.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i

bb.aw:                                            ; preds = %bb.au, %bb.ak
  %.sroa.011.1.i.i = phi i8 [ 0, %bb.ak ], [ 1, %bb.au ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 3 uses
  %.val35.i.i = load i64, ptr %i.hj, align 8, !noalias !119775, !noundef !58 ; 5 uses
  %i.hk = icmp ult i64 %.val35.i.i, %i.bn
  %i.hl = icmp ugt i64 %.val35.i.i, %i.be
  %or.cond.i.i = or i1 %i.hk, %i.hl
  %i.hm = inttoptr i64 %.val35.i.i to ptr         ; 2 uses
  br i1 %or.cond.i.i, label %bb.ch, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !119775
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %.val31.i.i = load ptr, ptr %i.hn, align 8, !noalias !119775, !nonnull !58, !noundef !58 ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %.val32.i.i = load i64, ptr %i.ho, align 8, !noalias !119775, !noundef !58 ; 5 uses
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.val31.i.i, i64 %.val32.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !119794)
  call void @llvm.experimental.noalias.scope.decl(metadata !119795)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !119796
  %i.hq = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.hq, align 8, !noalias !119775 ; 6 uses
  %i.ht = load i64, ptr %i.hr, align 8, !noalias !119775 ; 9 uses
  %i.hu = inttoptr i64 %i.ht to ptr               ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.preheader.i.i
  %i.hv = phi i64 [ 0, %.preheader.preheader.i.i ], [ %i.hz, %.preheader.i.i.backedge ] ; 3 uses
  %i.hw = phi ptr [ %.val31.i.i, %.preheader.preheader.i.i ], [ %i.hy, %.preheader.i.i.backedge ] ; 3 uses
  %i.hx = icmp eq ptr %i.hw, %i.hp
  br i1 %i.hx, label %.loopexit14.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 3 uses
  %i.hz = add i64 %i.hv, 1                        ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hw, align 8, !noalias !119797, !noundef !58
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.backedge, label %bb.ay

.preheader.i.i.backedge:                          ; preds = %bb.ax, %.loopexit.i.i.i.i.i
  br label %.preheader.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ia = and i64 %i.hv, 4294967295               ; 2 uses
  %i.ib = icmp ugt i64 %.val32.i.i, %i.ia
  br i1 %i.ib, label %bb.az, label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %.val31.i.i, i64 %i.ia ; 3 uses
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !119798, !noundef !58
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.az
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ie, align 8, !noalias !119798
  %.sroa.5.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  %.sroa.5.0.copyload.i.i13.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !119799
  %i.if = zext i32 %.sroa.5.0.copyload.i.i13.i.i.i.i.i.i.i.i.i.i to i64
  %i.ig = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i, %bb.az, %bb.ay
  %.sroa.0.0.i.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ig, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i ], [ 4294967295, %bb.ay ], [ 4294967295, %bb.az ] ; 2 uses
  %.sroa.5.0.i.i5.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.if, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i ], [ 4294967295, %bb.ay ], [ 4294967295, %bb.az ] ; 2 uses
  %i.ih = icmp ugt i64 %i.ht, %.sroa.0.0.i.i18.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ih, label %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i

.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ii = phi i64 [ %i.io, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i18.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.in, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.ii ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !119800, !noundef !58
  %.not.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.im = load i32, ptr %i.il, align 8, !noalias !119800, !noundef !58
  %i.in = add i64 %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.io = zext i32 %i.im to i64                   ; 2 uses
  %i.ip = icmp ugt i64 %i.ht, %i.io
  br i1 %i.ip, label %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i

.split.i.i5.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i2.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.in, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.iq = icmp ugt i64 %i.ht, %.sroa.5.0.i.i5.i.i.i.i.i.i.i.i.i.i
  br i1 %i.iq, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i
  %i.ir = phi i64 [ %i.ix, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.i.i5.i.i.i.i.i.i.i.i.i.i, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.016.i.i9.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iw, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i ]
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.ir ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !noalias !119801, !noundef !58
  %.not43.i.i.i10.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not43.i.i.i10.i.i.i.i.i.i.i.i.i.i.i, label %.split287.us.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i, !prof !62

.split287.us.i.i:                                 ; preds = %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4315) #60
          to label %.noexc44.i.i unwind label %bb.av, !noalias !119801

.noexc44.i.i:                                     ; preds = %.split287.us.i.i
  unreachable

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  %i.iv = load i32, ptr %i.iu, align 4, !noalias !119801, !noundef !58
  %i.iw = add i64 %.sroa.0.016.i.i9.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ix = zext i32 %i.iv to i64                   ; 2 uses
  %i.iy = icmp ugt i64 %i.ht, %i.ix
  br i1 %i.iy, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iw, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i ]
  %i.iz = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i2.i.i.i.i.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i.i2.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.not.i.i.i.i.i2.i.i.i, label %.preheader.i.i.backedge, label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i
  %i.ja = trunc i64 %i.hv to i32                  ; 2 uses
  %i.jb = add nsw i64 %i.iz, -1                   ; 2 uses
  %i.jc = call i64 @llvm.umax.i64(i64 %i.iz, i64 4) ; 3 uses
  %i.jd = shl i64 %i.jc, 2                        ; 3 uses
  %i.je = icmp ugt i64 %i.iz, 4611686018427387903
  %.not.i.i.i43.i.i = icmp ugt i64 %i.jd, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.je, %.not.i.i.i43.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.bb, label %bb.ba, !prof !64

bb.ba:                                            ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !119802
  %i.jf = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.jd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !119802 ; 4 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.bb, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

.loopexit14.i.i.i.i.i:                            ; preds = %.preheader.i.i
  store i64 0, ptr %i.t, align 8, !alias.scope !119803, !noalias !119775
  %i.jh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.jh, align 8, !alias.scope !119803, !noalias !119775
  %i.ji = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.ji, align 8, !alias.scope !119803, !noalias !119775
  br label %bb.bi

bb.bb:                                            ; preds = %bb.ba, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i
  %.sroa.463.0.ph.i.i.i.i = phi i64 [ 4, %bb.ba ], [ 0, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.463.0.ph.i.i.i.i, i64 %i.jd) #61
          to label %.noexc45.i.i unwind label %bb.av, !noalias !119796

.noexc45.i.i:                                     ; preds = %bb.bb
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.ba
  store i32 %i.ja, ptr %i.jf, align 4, !noalias !119796
  store i64 %i.jc, ptr %i.i, align 8, !noalias !119796
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.jf, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !119796
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !119796
  call void @llvm.experimental.noalias.scope.decl(metadata !119804)
  call void @llvm.experimental.noalias.scope.decl(metadata !119805)
  %.not.i.i.i.i.i49.i.i289.i.i = icmp eq i64 %i.jb, 0
  br i1 %.not.i.i.i.i.i49.i.i289.i.i, label %.preheader94.i.i.i.i, label %.noexc10.i.i.i.i.preheader

.preheader94.i.i.i.i:                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %.preheader94.i.i.i.i.backedge
  %.sroa.41.6.i.i.i.i = phi i64 [ %i.jm, %.preheader94.i.i.i.i.backedge ], [ %i.hz, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ] ; 3 uses
  %i.jj = phi ptr [ %i.jl, %.preheader94.i.i.i.i.backedge ], [ %i.hy, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ] ; 3 uses
  %i.jk = icmp eq ptr %i.jj, %i.hp
  br i1 %i.jk, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.preheader94.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jm = add i64 %.sroa.41.6.i.i.i.i, 1          ; 2 uses
  %.val.i.i.i.i.i.i.i.i20.i.i.i.i = load ptr, ptr %i.jj, align 8, !noalias !119806, !noundef !58
  %.not.i.not.i.i.i.i.i.i.i.i21.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i20.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i21.i.i.i.i, label %.preheader94.i.i.i.i.backedge, label %bb.bd

.preheader94.i.i.i.i.backedge:                    ; preds = %bb.bc, %.loopexit.i.i28.i.i.i.i
  br label %.preheader94.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.jn = and i64 %.sroa.41.6.i.i.i.i, 4294967295 ; 2 uses
  %i.jo = icmp ugt i64 %.val32.i.i, %i.jn
  br i1 %i.jo, label %bb.be, label %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %.val31.i.i, i64 %i.jn ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !119807, !noundef !58
  %.not.i.i.i.i.i.i.i.i.i.i39.i.i.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i39.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i40.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i40.i.i.i.i: ; preds = %bb.be
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i41.i.i.i.i = load i32, ptr %i.jr, align 8, !noalias !119807
  %.sroa.5.0..sroa_idx.i.i12.i.i.i.i.i.i.i42.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  %.sroa.5.0.copyload.i.i13.i.i.i.i.i.i.i43.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i.i.i.i42.i.i.i.i, align 4, !noalias !119808
  %i.js = zext i32 %.sroa.5.0.copyload.i.i13.i.i.i.i.i.i.i43.i.i.i.i to i64
  %i.jt = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i41.i.i.i.i to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i:          ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i40.i.i.i.i, %bb.be, %bb.bd
  %.sroa.0.0.i.i18.i.i.i.i.i.i.i24.i.i.i.i = phi i64 [ %i.jt, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i40.i.i.i.i ], [ 4294967295, %bb.bd ], [ 4294967295, %bb.be ] ; 2 uses
  %.sroa.5.0.i.i5.i.i.i.i.i.i.i25.i.i.i.i = phi i64 [ %i.js, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i40.i.i.i.i ], [ 4294967295, %bb.bd ], [ 4294967295, %bb.be ] ; 2 uses
  %i.ju = icmp ugt i64 %i.ht, %.sroa.0.0.i.i18.i.i.i.i.i.i.i24.i.i.i.i
  br i1 %i.ju, label %.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i

.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i:           ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i
  %i.jv = phi i64 [ %i.kb, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i ], [ %.sroa.0.0.i.i18.i.i.i.i.i.i.i24.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i ]
  %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i35.i.i.i.i = phi i64 [ %i.ka, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i ], [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.jv ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !119809, !noundef !58
  %.not.i.us.i.i.i.i.i.i.i.i.i.i36.i.i.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.us.i.i.i.i.i.i.i.i.i.i36.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i: ; preds = %.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jz = load i32, ptr %i.jy, align 8, !noalias !119809, !noundef !58
  %i.ka = add i64 %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i35.i.i.i.i, 1 ; 2 uses
  %i.kb = zext i32 %i.jz to i64                   ; 2 uses
  %i.kc = icmp ugt i64 %i.ht, %i.kb
  br i1 %i.kc, label %.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i

.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i:            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i, %.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i
  %.sroa.0.0.i.i2.i.i.i.i.i.i27.i.i.i.i = phi i64 [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i23.i.i.i.i ], [ %i.ka, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i37.i.i.i.i ], [ %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i35.i.i.i.i, %.lr.ph19.i.i.i.i.i.i.i.i.i.i34.i.i.i.i ]
  %i.kd = icmp ugt i64 %i.ht, %.sroa.5.0.i.i5.i.i.i.i.i.i.i25.i.i.i.i
  br i1 %i.kd, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i30.i.i.i.i, label %.loopexit.i.i28.i.i.i.i

.lr.ph.i.i8.i.i.i.i.i.i.i.i30.i.i.i.i:            ; preds = %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i
  %i.ke = phi i64 [ %i.kk, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i ], [ %.sroa.5.0.i.i5.i.i.i.i.i.i.i25.i.i.i.i, %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i ]
  %.sroa.0.016.i.i9.i.i.i.i.i.i.i.i31.i.i.i.i = phi i64 [ %i.kj, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i ], [ 0, %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i ]
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.ke ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !119810, !noundef !58
  %.not43.i.i.i10.i.i.i.i.i.i.i.i32.i.i.i.i = icmp eq ptr %i.kg, null
  br i1 %.not43.i.i.i10.i.i.i.i.i.i.i.i32.i.i.i.i, label %.invoke.i.i.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i, !prof !62

.invoke.i.i.i.i:                                  ; preds = %.lr.ph.i.i8.i.i.i.i.i.i.i.i30.i.i.i.i, %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4315) #60
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !119810

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i: ; preds = %.lr.ph.i.i8.i.i.i.i.i.i.i.i30.i.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.ki = load i32, ptr %i.kh, align 4, !noalias !119810, !noundef !58
  %i.kj = add i64 %.sroa.0.016.i.i9.i.i.i.i.i.i.i.i31.i.i.i.i, 1 ; 2 uses
  %i.kk = zext i32 %i.ki to i64                   ; 2 uses
  %i.kl = icmp ugt i64 %i.ht, %i.kk
  br i1 %i.kl, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i30.i.i.i.i, label %.loopexit.i.i28.i.i.i.i

.loopexit.i.i28.i.i.i.i:                          ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i, %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i29.i.i.i.i = phi i64 [ 0, %.split.i.i5.i.i.i.i.i.i.i.i26.i.i.i.i ], [ %i.kj, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i33.i.i.i.i ]
  %i.km = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i29.i.i.i.i, %.sroa.0.0.i.i2.i.i.i.i.i.i27.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i49.i.i.i.i = icmp eq i64 %i.km, 0
  br i1 %.not.i.i.i.i.i49.i.i.i.i, label %.preheader94.i.i.i.i.backedge, label %..lr.ph.i.i.i.i_crit_edge.i.i

..lr.ph.i.i.i.i_crit_edge.i.i:                    ; preds = %.loopexit.i.i28.i.i.i.i
  %i.kn = trunc i64 %.sroa.41.6.i.i.i.i to i32
  br label %.noexc10.i.i.i.i.preheader

.noexc10.i.i.i.i.preheader:                       ; preds = %..lr.ph.i.i.i.i_crit_edge.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.41.0.i.i.i.i.ph = phi i64 [ %i.jm, %..lr.ph.i.i.i.i_crit_edge.i.i ], [ %i.hz, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %.sroa.3360.0.i.i.i.i.ph = phi ptr [ %i.jl, %..lr.ph.i.i.i.i_crit_edge.i.i ], [ %i.hy, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %.sroa.10.0.i.i.in.i.i.ph = phi i64 [ %i.km, %..lr.ph.i.i.i.i_crit_edge.i.i ], [ %i.jb, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %.sroa.3.0.i2.pn.i.i45.ph.pn.i.i.i.i.ph = phi i32 [ %i.kn, %..lr.ph.i.i.i.i_crit_edge.i.i ], [ %i.ja, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  br label %.noexc10.i.i.i.i.outer

..noexc10.i.i.i.loopexit_crit_edge.i:             ; preds = %.loopexit.i.i.i.i.i.i
  %i.ko = trunc i64 %.sroa.41.2.i.i.i.i to i32
  br label %.noexc10.i.i.i.i.outer

.noexc10.i.i.i.i.outer:                           ; preds = %.noexc10.i.i.i.i.preheader, %..noexc10.i.i.i.loopexit_crit_edge.i
  %.ph = phi ptr [ %i.jf, %.noexc10.i.i.i.i.preheader ], [ %i.ku, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.sroa.41.0.i.i.i.i.ph665 = phi i64 [ %.sroa.41.0.i.i.i.i.ph, %.noexc10.i.i.i.i.preheader ], [ %i.ld, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.sroa.3360.0.i.i.i.i.ph666 = phi ptr [ %.sroa.3360.0.i.i.i.i.ph, %.noexc10.i.i.i.i.preheader ], [ %i.lc, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.sroa.10.0.i.i.in.i.i.ph667 = phi i64 [ %.sroa.10.0.i.i.in.i.i.ph, %.noexc10.i.i.i.i.preheader ], [ %i.md, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.ph668 = phi i64 [ %i.jc, %.noexc10.i.i.i.i.preheader ], [ %i.kv, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.ph669 = phi i64 [ 1, %.noexc10.i.i.i.i.preheader ], [ %i.kx, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  %.sroa.3.0.i2.pn.i.i45.ph.pn.i.i.i.i.ph670 = phi i32 [ %.sroa.3.0.i2.pn.i.i45.ph.pn.i.i.i.i.ph, %.noexc10.i.i.i.i.preheader ], [ %i.ko, %..noexc10.i.i.i.loopexit_crit_edge.i ]
  br label %.noexc10.i.i.i.i

.noexc10.i.i.i.i:                                 ; preds = %.noexc10.i.i.i.i.outer, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.kp = phi ptr [ %i.ku, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %.ph, %.noexc10.i.i.i.i.outer ]
  %.sroa.10.0.i.i.in.i.i = phi i64 [ %.sroa.10.0.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.in.i.i.ph667, %.noexc10.i.i.i.i.outer ] ; 2 uses
  %i.kq = phi i64 [ %i.kv, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %.ph668, %.noexc10.i.i.i.i.outer ] ; 3 uses
  %i.kr = phi i64 [ %i.kx, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %.ph669, %.noexc10.i.i.i.i.outer ] ; 4 uses
  %.sroa.10.0.i.i.i.i = add i64 %.sroa.10.0.i.i.in.i.i, -1 ; 2 uses
  %i.ks = icmp samesign ult i64 %i.kr, 2305843009213693952
  call void @llvm.assume(i1 %i.ks)
  %i.kt = icmp eq i64 %i.kr, %i.kq
  br i1 %i.kt, label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.kq, i64 noundef %.sroa.10.0.i.i.in.i.i, i64 noundef 4, i64 noundef 4)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !119811

.noexc9.i.i.i.i:                                  ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i.i.i
  %.pre3.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !range !61, !alias.scope !119812, !noalias !119796
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !119812, !noalias !119796
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i, %.noexc10.i.i.i.i
  %i.ku = phi ptr [ %.pre.i.i.i.i, %.noexc9.i.i.i.i ], [ %i.kp, %.noexc10.i.i.i.i ] ; 3 uses
  %i.kv = phi i64 [ %.pre3.i.i.i.i.i.i, %.noexc9.i.i.i.i ], [ %i.kq, %.noexc10.i.i.i.i ] ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.kr
  store i32 %.sroa.3.0.i2.pn.i.i45.ph.pn.i.i.i.i.ph670, ptr %i.kw, align 4, !noalias !119813
  %i.kx = add nuw nsw i64 %i.kr, 1                ; 3 uses
  store i64 %i.kx, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !119812, !noalias !119796
  %i.ky = load ptr, ptr %i.hq, align 8, !noalias !119775 ; 3 uses
  %i.kz = load i64, ptr %i.hr, align 8, !noalias !119775 ; 5 uses
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ho, align 8, !noalias !119775 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hn, align 8, !noalias !119775 ; 2 uses
  %.not.i.i.i.i.i.i.i.i250.i = icmp eq i64 %.sroa.10.0.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i250.i, label %.preheader.i.i.i.i, label %.noexc10.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.backedge
  %.sroa.41.2.i.i.i.i = phi i64 [ %i.ld, %.preheader.i.i.i.i.backedge ], [ %.sroa.41.0.i.i.i.i.ph665, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 3 uses
  %i.la = phi ptr [ %i.lc, %.preheader.i.i.i.i.backedge ], [ %.sroa.3360.0.i.i.i.i.ph666, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 3 uses
  %i.lb = icmp eq ptr %i.la, %i.hp
  br i1 %i.lb, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.loopexit328.i.i, label %bb.bf

bb.bf:                                            ; preds = %.preheader.i.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %i.ld = add i64 %.sroa.41.2.i.i.i.i, 1          ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.la, align 8, !noalias !119814, !noundef !58
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.backedge, label %bb.bg

.preheader.i.i.i.i.backedge:                      ; preds = %bb.bf, %.loopexit.i.i.i.i.i.i
  br label %.preheader.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.le = and i64 %.sroa.41.2.i.i.i.i, 4294967295 ; 2 uses
  %i.lf = icmp ugt i64 %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.le
  br i1 %i.lf, label %bb.bh, label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.le ; 3 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !119815, !noundef !58
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.li, align 8, !noalias !119815
  %.sroa.5.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %.sroa.5.0.copyload.i.i13.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !119816
  %i.lj = zext i32 %.sroa.5.0.copyload.i.i13.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.lk = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i.i, %bb.bh, %bb.bg
  %.sroa.0.0.i.i18.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lk, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i.i ], [ 4294967295, %bb.bg ], [ 4294967295, %bb.bh ] ; 2 uses
  %.sroa.5.0.i.i5.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lj, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i10.i.i.i.i.i.i.i.i.i.i.i ], [ 4294967295, %bb.bg ], [ 4294967295, %bb.bh ] ; 2 uses
  %i.ll = icmp ugt i64 %i.kz, %.sroa.0.0.i.i18.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ll, label %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lm = phi i64 [ %i.ls, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i18.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lr, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %i.ky, i64 %i.lm ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !noalias !119817, !noundef !58
  %.not.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !noalias !119817, !noundef !58
  %i.lr = add i64 %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ls = zext i32 %i.lq to i64                   ; 2 uses
  %i.lt = icmp ugt i64 %i.kz, %i.ls
  br i1 %i.lt, label %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i5.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i2.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lr, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.us18.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph19.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.lu = icmp ugt i64 %i.kz, %.sroa.5.0.i.i5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.lu, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lv = phi i64 [ %i.mb, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.i.i5.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.016.i.i9.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ma, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %i.ky, i64 %i.lv ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !119818, !noundef !58
  %.not43.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not43.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i, !prof !62

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  %i.lz = load i32, ptr %i.ly, align 4, !noalias !119818, !noundef !58
  %i.ma = add i64 %.sroa.0.016.i.i9.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mb = zext i32 %i.lz to i64                   ; 2 uses
  %i.mc = icmp ugt i64 %i.kz, %i.mb
  br i1 %i.mc, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.split.i.i5.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ma, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.md = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i2.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.md, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.backedge, label %..noexc10.i.i.i.loopexit_crit_edge.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2g_5types3any5PyAnyEEINtNtNtB9_7sources8repeat_n7RepeatNNtB19_9NodeIndexENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB17_11StableGraphB2b_B2b_EB2b_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B60_B2b_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintB66_.exit.i.i.i.i.i.i, %.invoke.i.i.i.i
  %lpad.loopexit.split-lp663 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i111.i = load i64, ptr %i.i, align 8, !noalias !119796 ; 2 uses
  %i.me = icmp eq i64 %.val.i.i.i111.i, 0
  br i1 %i.me, label %.body46.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i112.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i112.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val8.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !119796, !nonnull !58, !noundef !58
  %i.mf = shl nuw i64 %.val.i.i.i111.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i, i64 noundef %i.mf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !119796
  br label %.body46.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.loopexit328.i.i: ; preds = %.preheader.i.i.i.i
  %i.mg = inttoptr i64 %i.kz to ptr
  %.val33.pre.pre.i.i = load i64, ptr %i.hj, align 8, !noalias !119775 ; 2 uses
  %i.mh = inttoptr i64 %.val33.pre.pre.i.i to ptr
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i: ; preds = %.preheader94.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.loopexit328.i.i
  %.sroa.9.i.sroa.9.0.copyload352 = phi ptr [ %i.mh, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.loopexit328.i.i ], [ %i.hm, %.preheader94.i.i.i.i ]
  %.sroa.9.i.sroa.8.0.copyload349 = phi ptr [ %i.mg, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.loopexit328.i.i ], [ %i.hu, %.preheader94.i.i.i.i ]
  %.sroa.9.i.sroa.7.0.copyload346 = phi ptr [ %i.ky, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.loopexit328.i.i ], [ %i.hs, %.preheader94.i.i.i.i ]
  %.sroa.9.i.sroa.5.0.copyload343 = phi i64 [ %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.loopexit328.i.i ], [ %.val32.i.i, %.preheader94.i.i.i.i ]
  %.sroa.9.i.sroa.0.0.copyload340 = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.loopexit328.i.i ], [ %.val31.i.i, %.preheader94.i.i.i.i ]
  %.val33.pre.i.i = phi i64 [ %.val33.pre.pre.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.loopexit328.i.i ], [ %.val35.i.i, %.preheader94.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !119819
  br label %bb.bi

bb.bi:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i, %.loopexit14.i.i.i.i.i
  %.sroa.9.i.sroa.9.0.copyload351 = phi ptr [ %.sroa.9.i.sroa.9.0.copyload352, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i ], [ %i.hm, %.loopexit14.i.i.i.i.i ]
  %.sroa.9.i.sroa.8.0.copyload348 = phi ptr [ %.sroa.9.i.sroa.8.0.copyload349, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i ], [ %i.hu, %.loopexit14.i.i.i.i.i ]
  %.sroa.9.i.sroa.7.0.copyload345 = phi ptr [ %.sroa.9.i.sroa.7.0.copyload346, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i ], [ %i.hs, %.loopexit14.i.i.i.i.i ]
  %.sroa.9.i.sroa.5.0.copyload342 = phi i64 [ %.sroa.9.i.sroa.5.0.copyload343, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i ], [ %.val32.i.i, %.loopexit14.i.i.i.i.i ]
  %.sroa.9.i.sroa.0.0.copyload339 = phi ptr [ %.sroa.9.i.sroa.0.0.copyload340, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i ], [ %.val31.i.i, %.loopexit14.i.i.i.i.i ]
  %.val33.i.i = phi i64 [ %.val33.pre.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten7FlatMapINtNtBT_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3A_5types3any5PyAnyEEINtNtNtB27_7sources8repeat_n7RepeatNBR_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph21barabasi_albert_graphINtB2Z_11StableGraphB3v_B3v_EB3v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph30directed_barabasi_albert_graph0B78_B3v_E0EE11spec_extendB7e_.exit.i.i.i.i ], [ %.val35.i.i, %.loopexit14.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !119796
  %i.mi = icmp ult i64 %.val33.i.i, %i.be
  %i.mj = insertelement <2 x ptr> poison, ptr %.sroa.9.i.sroa.7.0.copyload345, i64 0
  %i.mk = insertelement <2 x ptr> %i.mj, ptr %.sroa.9.i.sroa.8.0.copyload348, i64 1
  br i1 %i.mi, label %.lr.ph305.i.i, label %._crit_edge306.i.i

.lr.ph305.i.i:                                    ; preds = %bb.bi
  %i.ml = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.mm = shl i64 %i.bn, 4                        ; 3 uses
  %i.mn = icmp ugt i64 %i.bn, 1152921504606846975
  %.not.i.i.i52.i.i = icmp ugt i64 %i.mm, 9223372036854775800
  %or.cond.i.i.i53.i.i = or i1 %i.mn, %.not.i.i.i52.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.sroa.5126.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %.sroa.6127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %.sroa.7128.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %.sroa.8129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.9130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.ms = shl nuw nsw i64 %i.bn, 2                ; 5 uses
  %.not146.i = icmp eq i64 %i.bn, 1
  %i.mt = icmp samesign ult i64 %i.bn, 2305843009213693952
  br i1 %or.cond.i.i.i53.i.i, label %.lr.ph305.split.us.i.i, label %.lr.ph305.split.i.i.preheader, !prof !64

.lr.ph305.split.i.i.preheader:                    ; preds = %.lr.ph305.i.i
  %i.mu = add nsw i64 %i.bn, -1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.mu, 8
  %n.vec = and i64 %i.mu, -8                      ; 4 uses
  %i.mv = shl i64 %n.vec, 2
  %i.mw = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.mu, %n.vec
  br label %.lr.ph305.split.i.i

.lr.ph305.split.us.i.i:                           ; preds = %.lr.ph305.i.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !119775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !119820
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull @_Py_NoneStruct)
end_hunk_7
begin_hunk_8_@_RNvNtCskcxRuJ53GpR_9rustworkx13token_swapper19graph_token_swapper:bb.a
  %i.sr = xor i64 %.val.i111.i.i, %i.sq
  %i.ss = zext i64 %i.sr to i128
  %i.st = zext i64 %i.sp to i128
  %i.su = mul nuw i128 %i.st, %i.ss               ; 2 uses
  %i.sv = lshr i128 %i.su, 64
  %i.sw = xor i128 %i.sv, %i.su
  %i.sx = trunc i128 %i.sw to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135388)
  call void @llvm.experimental.noalias.scope.decl(metadata !135389)
  %i.sy = lshr i64 %i.sx, 57
  %i.sz = trunc nuw nsw i64 %i.sy to i8
  %i.ta = load i64, ptr %i.hx, align 8, !alias.scope !135390, !noalias !135267, !noundef !58 ; 2 uses
  %i.tb = load ptr, ptr %i.fc, align 8, !alias.scope !135390, !noalias !135267, !nonnull !58, !noundef !58 ; 2 uses
  %i.tc = insertelement <16 x i8> poison, i8 %i.sz, i64 0
  %i.td = shufflevector <16 x i8> %i.tc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.cf ], [ %i.tu, %bb.ci ]
  %.pn.i.i.i.i = phi i64 [ %i.sx, %bb.cf ], [ %i.tv, %bb.ci ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ta ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.te, align 1, !noalias !135391 ; 2 uses
  %i.tf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.td
  %i.tg = bitcast <16 x i1> %i.tf to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.tg, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cg, %bb.ch
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.tt, %bb.ch ], [ %i.tg, %bb.cg ] ; 3 uses
  %i.th = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.ti = zext nneg i16 %i.th to i64
  %i.tj = add i64 %.sroa.01.0.i.i.i.i.i, %i.ti
  %i.tk = and i64 %i.tj, %i.ta
  %i.tl = sub nsw i64 0, %i.tk
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.tb, i64 %i.tl ; 2 uses
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 -8
  %.val2.i.i.i.i.i = load i32, ptr %i.tn, align 4, !noalias !135392, !noundef !58
  %i.to = icmp eq i32 %.val2.i.i.i.i.i, %i.sm
  br i1 %i.to, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_E9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ch, !prof !68

._crit_edge.i.i.i.i:                              ; preds = %bb.ch, %bb.cg
  %i.tp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.tq = bitcast <16 x i1> %i.tp to i16
  %i.tr = icmp eq i16 %i.tq, 0
  br i1 %i.tr, label %bb.ci, label %select.unfold.i.i, !prof !62

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ts = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.tt = and i16 %i.ts, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i112.i.i = icmp eq i16 %i.tt, 0
  br i1 %.not.i.not.i.i112.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ci:                                            ; preds = %._crit_edge.i.i.i.i
  %i.tu = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.tv = add i64 %.sroa.01.0.i.i.i.i.i, %i.tu
  br label %bb.cg

bb.cj:                                            ; preds = %bb.cc
  %i.tw = load i64, ptr %i.am, align 8, !range !59, !alias.scope !135285, !noalias !135267, !noundef !58
  %i.tx = trunc nuw i64 %i.tw to i1
  br i1 %i.tx, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ty = load i64, ptr %i.fa, align 8, !alias.scope !135285, !noalias !135267, !noundef !58
  %i.tz = mul i64 %i.ty, 6364136223846793005
  %i.ua = add i64 %i.tz, -6812164046247290893     ; 4 uses
  %i.ub = lshr i64 %i.ua, 45
  %i.uc = lshr i64 %i.ua, 27
  %i.ud = xor i64 %i.ub, %i.uc
  %i.ue = trunc i64 %i.ud to i32                  ; 2 uses
  %i.uf = lshr i64 %i.ua, 59
  %i.ug = trunc nuw nsw i64 %i.uf to i32
  %i.uh = call noundef i32 @llvm.fshr.i32(i32 %i.ue, i32 %i.ue, i32 range(i32 0, 32) %i.ug)
  %i.ui = mul i64 %i.ua, 6364136223846793005
  %i.uj = add i64 %i.ui, -6812164046247290893     ; 4 uses
  %i.uk = lshr i64 %i.uj, 45
  %i.ul = lshr i64 %i.uj, 27
  %i.um = xor i64 %i.uk, %i.ul
  %i.un = trunc i64 %i.um to i32                  ; 2 uses
  %i.uo = lshr i64 %i.uj, 59
  %i.up = trunc nuw nsw i64 %i.uo to i32
  %i.uq = call noundef i32 @llvm.fshr.i32(i32 %i.un, i32 %i.un, i32 range(i32 0, 32) %i.up)
  %i.ur = mul i64 %i.uj, 6364136223846793005
  %i.us = add i64 %i.ur, -6812164046247290893     ; 4 uses
  %i.ut = lshr i64 %i.us, 45
  %i.uu = lshr i64 %i.us, 27
  %i.uv = xor i64 %i.ut, %i.uu
  %i.uw = trunc i64 %i.uv to i32                  ; 2 uses
  %i.ux = lshr i64 %i.us, 59
  %i.uy = trunc nuw nsw i64 %i.ux to i32
  %i.uz = call noundef i32 @llvm.fshr.i32(i32 %i.uw, i32 %i.uw, i32 range(i32 0, 32) %i.uy)
  %i.va = mul i64 %i.us, 6364136223846793005
  %i.vb = add i64 %i.va, -6812164046247290893     ; 4 uses
  %i.vc = lshr i64 %i.vb, 45
  %i.vd = lshr i64 %i.vb, 27
  %i.ve = xor i64 %i.vc, %i.vd
  %i.vf = trunc i64 %i.ve to i32                  ; 2 uses
  %i.vg = lshr i64 %i.vb, 59
  %i.vh = trunc nuw nsw i64 %i.vg to i32
  %i.vi = call noundef i32 @llvm.fshr.i32(i32 %i.vf, i32 %i.vf, i32 range(i32 0, 32) %i.vh)
  %i.vj = mul i64 %i.vb, 6364136223846793005
  %i.vk = add i64 %i.vj, -6812164046247290893     ; 4 uses
  %i.vl = lshr i64 %i.vk, 45
  %i.vm = lshr i64 %i.vk, 27
  %i.vn = xor i64 %i.vl, %i.vm
  %i.vo = trunc i64 %i.vn to i32                  ; 2 uses
  %i.vp = lshr i64 %i.vk, 59
  %i.vq = trunc nuw nsw i64 %i.vp to i32
  %i.vr = call noundef i32 @llvm.fshr.i32(i32 %i.vo, i32 %i.vo, i32 range(i32 0, 32) %i.vq)
  %i.vs = mul i64 %i.vk, 6364136223846793005
  %i.vt = add i64 %i.vs, -6812164046247290893     ; 4 uses
  %i.vu = lshr i64 %i.vt, 45
  %i.vv = lshr i64 %i.vt, 27
  %i.vw = xor i64 %i.vu, %i.vv
  %i.vx = trunc i64 %i.vw to i32                  ; 2 uses
  %i.vy = lshr i64 %i.vt, 59
  %i.vz = trunc nuw nsw i64 %i.vy to i32
  %i.wa = call noundef i32 @llvm.fshr.i32(i32 %i.vx, i32 %i.vx, i32 range(i32 0, 32) %i.vz)
  %i.wb = mul i64 %i.vt, 6364136223846793005
  %i.wc = add i64 %i.wb, -6812164046247290893     ; 4 uses
  %i.wd = lshr i64 %i.wc, 45
  %i.we = lshr i64 %i.wc, 27
  %i.wf = xor i64 %i.wd, %i.we
  %i.wg = trunc i64 %i.wf to i32                  ; 2 uses
  %i.wh = lshr i64 %i.wc, 59
  %i.wi = trunc nuw nsw i64 %i.wh to i32
  %i.wj = call noundef i32 @llvm.fshr.i32(i32 %i.wg, i32 %i.wg, i32 range(i32 0, 32) %i.wi)
  %i.wk = mul i64 %i.wc, 6364136223846793005
  %i.wl = add i64 %i.wk, -6812164046247290893     ; 3 uses
  %i.wm = lshr i64 %i.wl, 45
  %i.wn = lshr i64 %i.wl, 27
  %i.wo = xor i64 %i.wm, %i.wn
  %i.wp = trunc i64 %i.wo to i32                  ; 2 uses
  %i.wq = lshr i64 %i.wl, 59
  %i.wr = trunc nuw nsw i64 %i.wq to i32
  %i.ws = call noundef i32 @llvm.fshr.i32(i32 %i.wp, i32 %i.wp, i32 range(i32 0, 32) %i.wr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !135393
  store i32 %i.uh, ptr %i.o, align 4, !noalias !135393
  %.sroa.5.0..sroa_idx.i114.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.uq, ptr %.sroa.5.0..sroa_idx.i114.i.i, align 4, !noalias !135393
  %.sroa.6.0..sroa_idx.i115.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.uz, ptr %.sroa.6.0..sroa_idx.i115.i.i, align 4, !noalias !135393
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.vi, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !135393
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %i.vr, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !135393
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 %i.wa, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !135393
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %i.wj, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !135393
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 %i.ws, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !135393
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.o)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !135290

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !135393
  %.pre570.i.i = load i128, ptr %i.af, align 16, !noalias !135289
  %.phi.trans.insert571.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.pre572.i.i = load i128, ptr %.phi.trans.insert571.i.i, align 16, !noalias !135289
  br label %bb.cp

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !135289
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.ae)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !135290

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !135394)
  call void @llvm.experimental.noalias.scope.decl(metadata !135395)
  %i.wt = load i32, ptr %i.ae, align 16, !range !67, !alias.scope !135395, !noalias !135289, !noundef !58
  %i.wu = trunc nuw i32 %i.wt to i1
  br i1 %i.wu, label %bb.cn, label %bb.co, !prof !62

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !135396
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ww = load i32, ptr %i.wv, align 4, !range !161, !alias.scope !135395, !noalias !135289, !noundef !58
  store i32 %i.ww, ptr %i.aa, align 4, !noalias !135396
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1549, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1601) #60
          to label %.noexc31.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !135397

.noexc31.i.i:                                     ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.wy = load i128, ptr %i.wx, align 16, !alias.scope !135395, !noalias !135289, !noundef !58 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.xa = load i128, ptr %i.wz, align 16, !alias.scope !135395, !noalias !135289, !noundef !58 ; 2 uses
  store i128 %i.wy, ptr %i.af, align 16, !alias.scope !135394, !noalias !135289
  %i.xb = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i128 %i.xa, ptr %i.xb, align 16, !alias.scope !135394, !noalias !135289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !135289
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.xc = phi i128 [ %.pre572.i.i, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.xa, %bb.co ] ; 2 uses
  %i.xd = phi i128 [ %.pre570.i.i, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.wy, %bb.co ]
  %i.xe = load i64, ptr %i.ez, align 8, !alias.scope !135285, !noalias !135267, !noundef !58 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !135398
  %i.xf = icmp eq i64 %i.xe, 0
  br i1 %i.xf, label %.thread375.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xg = add nsw i64 %i.xe, -1                   ; 2 uses
  %i.xh = mul i128 %i.xd, 47026247687942121848144207491837523525
  %i.xi = add i128 %i.xh, %i.xc                   ; 4 uses
  %i.xj = lshr i128 %i.xi, 122
  %i.xk = trunc nuw nsw i128 %i.xj to i64
  %i.xl = lshr i128 %i.xi, 64
  %i.xm = xor i128 %i.xl, %i.xi
  %i.xn = trunc i128 %i.xm to i64                 ; 2 uses
  %i.xo = call noundef i64 @llvm.fshr.i64(i64 %i.xn, i64 %i.xn, i64 %i.xk)
  %i.xp = call i64 @llvm.umax.i64(i64 %i.xe, i64 4) ; 4 uses
  %i.xq = shl i64 %i.xp, 3                        ; 3 uses
  %i.xr = icmp ugt i64 %i.xe, 2305843009213693951
  %.not.i.i117.i.i = icmp ugt i64 %i.xq, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.xr, %.not.i.i117.i.i
  br i1 %or.cond.i.i.i.i, label %9, label %bb.cr, !prof !64

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !135399
  %i.xs = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.xq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !135399 ; 5 uses
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %9, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i

9:                                                ; preds = %bb.cr, %bb.cq
  %.sroa.416.0.ph.i.i.i = phi i64 [ 8, %bb.cr ], [ 0, %bb.cq ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph.i.i.i, i64 %i.xq) #61
          to label %.noexc121.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !135400

.noexc121.i.i:                                    ; preds = %9
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.cr
  store i64 %i.xo, ptr %i.xs, align 8, !noalias !135400
  store i64 %i.xp, ptr %i.n, align 8, !noalias !135398
  %.sroa.4.0..sroa_idx.i118.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %i.xs, ptr %.sroa.4.0..sroa_idx.i118.i.i, align 8, !noalias !135398
  %.sroa.6.0..sroa_idx.i119.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i119.i.i, align 8, !noalias !135398
  call void @llvm.experimental.noalias.scope.decl(metadata !135401)
  call void @llvm.experimental.noalias.scope.decl(metadata !135402)
  %i.xu = icmp eq i64 %i.xg, 0
  br i1 %i.xu, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.cs
  %i.xv = phi ptr [ %i.yk, %bb.cs ], [ %i.xs, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %i.xw = phi i64 [ %i.yl, %bb.cs ], [ %i.xp, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 3 uses
  %i.xx = phi i64 [ %i.yn, %bb.cs ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 4 uses
  %.val68.i.i.i.i.i = phi i64 [ %i.xz, %bb.cs ], [ %i.xg, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.xy = phi i128 [ %i.yb, %bb.cs ], [ %i.xi, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %i.xz = add i64 %.val68.i.i.i.i.i, -1           ; 2 uses
  %i.ya = mul i128 %i.xy, 47026247687942121848144207491837523525
  %i.yb = add i128 %i.ya, %i.xc                   ; 4 uses
  %i.yc = lshr i128 %i.yb, 122
  %i.yd = trunc nuw nsw i128 %i.yc to i64
  %i.ye = lshr i128 %i.yb, 64
  %i.yf = xor i128 %i.ye, %i.yb
  %i.yg = trunc i128 %i.yf to i64                 ; 2 uses
  %i.yh = call noundef i64 @llvm.fshr.i64(i64 %i.yg, i64 %i.yg, i64 %i.yd)
  %i.yi = icmp samesign ult i64 %i.xx, 1152921504606846976
  call void @llvm.assume(i1 %i.yi)
  %i.yj = icmp eq i64 %i.xx, %i.xw
  br i1 %i.yj, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecyE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.cs

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecyE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i47
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.xw, i64 noundef %.val68.i.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i.i.i unwind label %bb.ct, !noalias !135403

.noexc.i.i.i:                                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecyE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.pre9.i.i.i.i.i = load i64, ptr %i.n, align 8, !range !61, !alias.scope !135404, !noalias !135398
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i118.i.i, align 8, !alias.scope !135404, !noalias !135398
  br label %bb.cs

bb.cs:                                            ; preds = %.noexc.i.i.i, %.lr.ph.i.i.i.i.i47
  %i.yk = phi ptr [ %i.xv, %.lr.ph.i.i.i.i.i47 ], [ %.pre.i.i.i, %.noexc.i.i.i ] ; 2 uses
  %i.yl = phi i64 [ %i.xw, %.lr.ph.i.i.i.i.i47 ], [ %.pre9.i.i.i.i.i, %.noexc.i.i.i ]
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %i.xx
  store i64 %i.yh, ptr %i.ym, align 8, !noalias !135405
  %i.yn = add nuw nsw i64 %i.xx, 1                ; 2 uses
  store i64 %i.yn, ptr %.sroa.6.0..sroa_idx.i119.i.i, align 8, !alias.scope !135404, !noalias !135398
  %i.yo = icmp eq i64 %i.xz, 0
  br i1 %i.yo, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i.i.i47

bb.ct:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecyE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.yp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.n, align 8, !noalias !135398 ; 2 uses
  %i.yq = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.yq, label %.body98.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i120.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i120.i.i: ; preds = %bb.ct
  %.val9.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i118.i.i, align 8, !noalias !135398, !nonnull !58, !noundef !58
  %i.yr = shl nuw i64 %.val8.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.yr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !135400
  br label %.body98.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.cs
  %.sroa.0213.0.copyload214.pre.i.i = load i64, ptr %i.n, align 8, !noalias !135406
  %.sroa.5215.0.copyload217.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i118.i.i, align 8, !noalias !135406
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.5215.0.copyload217.i.i = phi ptr [ %.sroa.5215.0.copyload217.pre.i.i, %.loopexit.loopexit.i.i ], [ %i.xs, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 4 uses
  %.sroa.0213.0.copyload214.i.i = phi i64 [ %.sroa.0213.0.copyload214.pre.i.i, %.loopexit.loopexit.i.i ], [ %i.xp, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !135398
  %i.ys = ptrtoint ptr %.sroa.5215.0.copyload217.i.i to i64
  %.val50.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !135285, !noalias !135267, !nonnull !58, !align !84, !noundef !58
  %i.yt = getelementptr i8, ptr %.val50.i.i, i64 48
  %.val.i124.i.i = load i64, ptr %i.yt, align 8, !noalias !135290, !noundef !58
  %i.yu = load i64, ptr %i.fb, align 8, !alias.scope !135285, !noalias !135267, !noundef !58
  %.not408.i.i = icmp ult i64 %.val.i124.i.i, %i.yu
  br i1 %.not408.i.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

.thread375.i.i:                                   ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !135398
  %.val50379.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !135285, !noalias !135267, !nonnull !58, !align !84, !noundef !58
  %i.yv = getelementptr i8, ptr %.val50379.i.i, i64 48
  %.val.i124380.i.i = load i64, ptr %i.yv, align 8, !noalias !135290, !noundef !58
  %i.yw = load i64, ptr %i.fb, align 8, !alias.scope !135285, !noalias !135267, !noundef !58
  %.not409.i.i = icmp ult i64 %.val.i124380.i.i, %i.yw
  br i1 %.not409.i.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread386.i.i, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %.thread375.i.i, %.loopexit.i.i
  %i.yx = phi i64 [ 8, %.thread375.i.i ], [ %i.ys, %.loopexit.i.i ]
  %.sroa.0213.0384.i.i = phi i64 [ 0, %.thread375.i.i ], [ %.sroa.0213.0.copyload214.i.i, %.loopexit.i.i ]
  %i.yy = inttoptr i64 %.sroa.0213.0384.i.i to ptr
  %i.yz = inttoptr i64 %i.xe to ptr
  br label %bb.db

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.loopexit.i.i
  %i.za = icmp samesign ult i64 %i.xe, 1152921504606846976
  call void @llvm.assume(i1 %i.za)
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5215.0.copyload217.i.i, i64 %i.xe ; 2 uses
  %.not.i128.i.i = icmp eq ptr %.sroa.5215.0.copyload217.i.i, null
  br i1 %.not.i128.i.i, label %bb.db, label %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread386.i.i

_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread386.i.i: ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i, %.thread375.i.i
  %i.zc = phi ptr [ %i.zb, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ inttoptr (i64 8 to ptr), %.thread375.i.i ] ; 2 uses
  %.sroa.5215.0383392.i.i = phi ptr [ %.sroa.5215.0.copyload217.i.i, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ inttoptr (i64 8 to ptr), %.thread375.i.i ] ; 7 uses
  %.val5.i.i.i.i.i = phi i64 [ %.sroa.0213.0.copyload214.i.i, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %.thread375.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !135407
  store ptr %.sroa.5215.0383392.i.i, ptr %i.m, align 8, !alias.scope !135408, !noalias !135409
  %.sroa.6236.0..sroa_idx237.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %.sroa.5215.0383392.i.i, ptr %.sroa.6236.0..sroa_idx237.i.i, align 8, !alias.scope !135408, !noalias !135409
  %.sroa.6236.sroa.9.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val5.i.i.i.i.i, ptr %.sroa.6236.sroa.9.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i, align 8, !alias.scope !135408, !noalias !135409
  %.sroa.6236.sroa.10.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.zc, ptr %.sroa.6236.sroa.10.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i, align 8, !alias.scope !135408, !noalias !135409
  %.sroa.6236.sroa.11.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.am, ptr %.sroa.6236.sroa.11.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i, align 8, !alias.scope !135408, !noalias !135409
  %.sroa.6236.sroa.12.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.aj, ptr %.sroa.6236.sroa.12.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i, align 8, !alias.scope !135408, !noalias !135409
  %.sroa.6236.sroa.13.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.ai, ptr %.sroa.6236.sroa.13.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i, align 8, !alias.scope !135408, !noalias !135409
  %.sroa.6236.sroa.14.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.ah, ptr %.sroa.6236.sroa.14.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i, align 8, !alias.scope !135408, !noalias !135409
  %.sroa.6236.sroa.15.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.ag, ptr %.sroa.6236.sroa.15.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i, align 8, !alias.scope !135408, !noalias !135409
  call void @llvm.experimental.noalias.scope.decl(metadata !135410)
  call void @llvm.experimental.noalias.scope.decl(metadata !135411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !135412
  call void @llvm.experimental.noalias.scope.decl(metadata !135413)
  call void @llvm.experimental.noalias.scope.decl(metadata !135414)
  %i.zd = icmp eq ptr %.sroa.5215.0383392.i.i, %i.zc
  br i1 %i.zd, label %.thread.i.i.i.i.i, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryENCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB1U_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB38_10UndirectedEE3maps0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryENCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB1U_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB38_10UndirectedEE3maps0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread386.i.i
  %i.ze = getelementptr inbounds nuw i8, ptr %.sroa.5215.0383392.i.i, i64 8
  store ptr %i.ze, ptr %.sroa.6236.0..sroa_idx237.i.i, align 8, !alias.scope !135415, !noalias !135407
  %i.zf = load i64, ptr %.sroa.5215.0383392.i.i, align 8, !noalias !135416, !noundef !58
  invoke fastcc void @_RNCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB7_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2p_5types3any5PyAnyEB2k_NtB1k_10UndirectedEE3maps0_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.6236.sroa.11.0..sroa.6236.0..sroa_idx237.sroa_idx.i.i, i64 noundef %i.zf) #64
          to label %.noexc.i.i.i.i.i unwind label %bb.cz, !noalias !135417

.noexc.i.i.i.i.i:                                 ; preds = %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryENCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB1U_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4d_5types3any5PyAnyEB48_NtB38_10UndirectedEE3maps0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !135412 ; 4 uses
  %.not.i.i.i.i131.i.i = icmp eq i64 %.pr.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i131.i.i, label %.thread.i.i.i.i.i, label %bb.cu

.thread.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i, %_RINvMCs7vnRxUTcH2t_10rayon_condINtB3_12CondIteratorINtNtCs1JJT1bG4y5L_5rayon3vec8IntoIteryEINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEE3newINtB1w_3VecyEECskcxRuJ53GpR_9rustworkx.exit.thread386.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !135412
  %i.zg = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.zg, label %_RINvMs0_Cs7vnRxUTcH2t_10rayon_condINtB6_12CondIteratorINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtBX_3vec8IntoIteryENCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB1Z_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4i_5types3any5PyAnyEB4d_NtB3d_10UndirectedEE3maps0_0EINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIteryEB1R_EE10min_by_keyINtNtB5U_6result6ResultjNtB1Z_14MapNotPossibleENCB1T_s1_0ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %.noexc.i.i.i.i.i
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.48.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !135412 ; 2 uses
  %.sroa.5.0..sroa_idx9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i.i, align 8, !noalias !135412 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !135412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !135418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !noalias !135419
  call void @llvm.experimental.noalias.scope.decl(metadata !135420)
  call void @llvm.experimental.noalias.scope.decl(metadata !135421)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !135422, !noalias !135418 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !135422, !noalias !135418 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.7.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !135422, !noalias !135418 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.9.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !135422, !noalias !135418, !nonnull !58, !noundef !58 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.not.not21.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.sroa.9.0.copyload.i.i.i.i.i.i.i
  br i1 %.not.not21.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cu
  %i.zi = icmp eq i64 %.pr.i.i.i.i.i.i, -1        ; 2 uses
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.zi, i64 undef, i64 %.sroa.5.0.copyload.i.i.i.i.i.i
  %.sroa.10.40..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.11.40..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cy, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.615.0.copyload.i.i.i.in.i.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.9.1.i.i.i.i.i.i.i.i, %bb.cy ] ; 3 uses
  %.sroa.11.125.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.11.1.i.i.i.i.i.i.i.i, %bb.cy ] ; 2 uses
  %.sroa.7.124.i.i.i.i.i.i.i.i = phi i64 [ %.pr.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.7.1.i.i.i.i.i.i.i.i, %bb.cy ] ; 6 uses
  %.sroa.5.123.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.5.1.i.i.i.i.i.i.i.i, %bb.cy ] ; 3 uses
  %i.zj = phi ptr [ %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.zl, %bb.cy ] ; 2 uses
  %.sroa.012.0.copyload2022.i.i.i.i.i.i.i.i = phi i1 [ %i.zi, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i.i.i, %bb.cy ] ; 3 uses
  %.sroa.615.0.copyload.i.i.i.i.i.i.i.i = inttoptr i64 %.sroa.615.0.copyload.i.i.i.in.i.i.i.i.i to ptr ; 3 uses
  %i.zk = load i64, ptr %i.zj, align 8, !noalias !135423, !noundef !58
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !135424
  invoke fastcc void @_RNCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB7_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2p_5types3any5PyAnyEB2k_NtB1k_10UndirectedEE3maps0_0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.zh, i64 noundef %i.zk)
          to label %bb.cw unwind label %bb.cx, !noalias !135425

bb.cw:                                            ; preds = %bb.cv
  %.sroa.8.40.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !135424 ; 5 uses
  %.sroa.10.40.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.40..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !135424 ; 3 uses
  %.sroa.11.40.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.11.40..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !135424 ; 5 uses
  %i.zm = icmp ne i64 %.sroa.8.40.copyload.i.i.i.i.i.i.i.i.i, -1
  %i.zn = icmp ult i64 %.sroa.11.40.copyload.i.i.i.i.i.i.i.i.i, %.sroa.5.123.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.sroa.012.0.copyload2022.i.i.i.i.i.i.i.i, i1 true, i1 %i.zn
  %or.cond28.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.zm, i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond28.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cw
  %i.zo = inttoptr i64 %.sroa.10.40.copyload.i.i.i.i.i.i.i.i.i to ptr
  %i.zp = icmp sgt i64 %.sroa.8.40.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.zp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValueINtNtB4_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB11_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB34_EEB1n_EEECskcxRuJ53GpR_9rustworkx.exit17.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cy

_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cw
  %i.zq = icmp sgt i64 %.sroa.7.124.i.i.i.i.i.i.i.i, 0
  br i1 %i.zq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValueINtNtB4_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB11_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB34_EEB1n_EEECskcxRuJ53GpR_9rustworkx.exit17.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cy

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValueINtNtB4_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIB11_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB34_EEB1n_EEECskcxRuJ53GpR_9rustworkx.exit17.sink.split.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.11.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.11.40.copyload.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.125.i.i.i.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.9.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.40.copyload.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.615.0.copyload.i.i.i.in.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.40.copyload.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.124.i.i.i.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.11.40.copyload.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.123.i.i.i.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i1 [ false, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.012.0.copyload2022.i.i.i.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.615.0.copyload.i.i.i.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.zo, %_RNvXs4_NtCslwFuT2d6ECx_4core3cmpINtB5_11KeyAndValueINtNtB7_6result6ResultjNtNtCsbNMRYq9Xj9a_14rustworkx_core13token_swapper14MapNotPossibleEIBO_INtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2Q_EEB1a_EENtB5_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ]
end_hunk_8
begin_hunk_9_@_RNvNtCskcxRuJ53GpR_9rustworkx9dominance20immediate_dominators:bb.a
  br i1 %i.my, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mz = ptrtoint ptr %i.mx to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh, %.loopexit161.i
  %.sroa.47.0.ph.i.i.i.i = phi i64 [ 8, %bb.bh ], [ 0, %.loopexit161.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.47.0.ph.i.i.i.i, i64 %i.mv) #61
          to label %.noexc.i43.i unwind label %bb.cl, !noalias !152276

.noexc.i43.i:                                     ; preds = %bb.bj
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bg
  %.sroa.10.0.i.i.i.i = phi i64 [ %i.mz, %bb.bi ], [ 8, %bb.bg ]
  %.sroa.47.0.i.i.i.i = phi i64 [ %.sroa.5118.0.copyload.i, %bb.bi ], [ 0, %bb.bg ] ; 5 uses
  %i.na = inttoptr i64 %.sroa.10.0.i.i.i.i to ptr ; 8 uses
  %i.nb = icmp samesign ule i64 %.sroa.5118.0.copyload.i, %.sroa.47.0.i.i.i.i
  call void @llvm.assume(i1 %i.nb)
  br i1 %i.mo, label %bb.cq, label %bb.bk

bb.bk:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.nd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ng = icmp eq i64 %.sroa.986.0.copyload.i, 0
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nc, align 8, !alias.scope !152277, !noalias !152278, !noundef !58
  %i.nh = load i64, ptr %i.nd, align 8, !alias.scope !152279, !noalias !152278, !noundef !58 ; 3 uses
  %i.ni = load ptr, ptr %i.r, align 8, !alias.scope !152279, !noalias !152278, !nonnull !58, !noundef !58 ; 4 uses
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %bb.bk
  %.sroa.6.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bk ], [ %i.uk, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.6.0.i.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i.i.i = load i32, ptr %i.nj, align 4, !alias.scope !152273, !noalias !152280, !noundef !58 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152281)
  %i.nk = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !152282, !noundef !58
  %i.nl = zext i32 %.val15.i.i.i.i.i.i.i.i.i to i64
  %i.nm = xor i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, %i.nl
  %i.nn = zext i64 %i.nm to i128
  %i.no = zext i64 %i.nk to i128
  %i.np = mul nuw i128 %i.no, %i.nn               ; 2 uses
  %i.nq = lshr i128 %i.np, 64
  %i.nr = xor i128 %i.nq, %i.np
  %i.ns = trunc i128 %i.nr to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152283)
  call void @llvm.experimental.noalias.scope.decl(metadata !152284)
  %i.nt = lshr i64 %i.ns, 57
  %i.nu = trunc nuw nsw i64 %i.nt to i8
  %i.nv = insertelement <16 x i8> poison, i8 %i.nu, i64 0
  %i.nw = shufflevector <16 x i8> %i.nv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %bb.bl
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bl ], [ %i.on, %bb.bo ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ns, %bb.bl ], [ %i.oo, %bb.bo ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.nh ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ni, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.nx, align 1, !noalias !152285 ; 2 uses
  %i.ny = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.nw
  %i.nz = bitcast <16 x i1> %i.ny to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.nz, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.bm, %bb.bn
  %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.om, %bb.bn ], [ %i.nz, %bb.bm ] ; 3 uses
  %i.oa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ob = zext nneg i16 %i.oa to i64
  %i.oc = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ob
  %i.od = and i64 %i.oc, %i.nh                    ; 2 uses
  %i.oe = sub nsw i64 0, %i.od
  %i.of = getelementptr inbounds [48 x i8], ptr %i.ni, i64 %i.oe ; 4 uses
  %i.og = getelementptr inbounds i8, ptr %i.of, i64 -48
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.og, align 4, !noalias !152286, !noundef !58
  %i.oh = icmp eq i32 %.val15.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.oh, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1D_E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bn, !prof !68

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.bn, %bb.bm
  %i.oi = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.oj = bitcast <16 x i1> %i.oi to i16
  %i.ok = icmp eq i16 %i.oj, 0
  br i1 %i.ok, label %bb.bo, label %.loopexit.i.i.i.i.i.i.i.i.i, !prof !62

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ol = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.om = and i16 %i.ol, %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.om, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.on = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.oo = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.on
  br label %bb.bm

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1D_E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !152287)
  call void @llvm.experimental.noalias.scope.decl(metadata !152288)
  %.idx.neg.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.od, 48
  %i.op = sdiv exact i64 %.idx.neg.i.i.i.i.i.i.i.i.i.i.i.i, 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152289)
  %i.oq = add nsw i64 %i.op, -16
  %i.or = and i64 %i.oq, %i.nh
  %i.os = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.or ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.os, align 1, !noalias !152290
  %i.ot = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ou = bitcast <16 x i1> %i.ot to i16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.op ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ov, align 1, !noalias !152291
  %i.ow = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ox = bitcast <16 x i1> %i.ow to i16
  %i.oy = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ou, i1 false)
  %i.oz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ox, i1 false)
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i16 %i.oz, %i.oy
  %i.pa = icmp samesign ugt i16 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.pa, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBO_EE12remove_entryBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1D_E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.pb = load i64, ptr %i.ne, align 8, !alias.scope !152292, !noalias !152278, !noundef !58
  %i.pc = add i64 %i.pb, 1
  store i64 %i.pc, ptr %i.ne, align 8, !alias.scope !152292, !noalias !152278
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBO_EE12remove_entryBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBO_EE12remove_entryBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bp, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1D_E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ -1, %bb.bp ], [ -128, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBQ_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1D_E0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ov, align 1, !noalias !152293
  %i.pd = getelementptr i8, ptr %i.os, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.pd, align 1, !noalias !152293
  %i.pe = load i64, ptr %i.nf, align 8, !alias.scope !152292, !noalias !152278, !noundef !58
  %i.pf = add i64 %i.pe, -1
  store i64 %i.pf, ptr %i.nf, align 8, !alias.scope !152292, !noalias !152278
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.of, i64 -40
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !152294 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.of, i64 -32
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !152294 ; 4 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.of, i64 -16
  %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !152294 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBO_EE12remove_entryBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  %.val24.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !152295
  %i.pg = icmp eq i64 %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0 ; 5 uses
  br i1 %i.pg, label %_RNvXsH_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bq
  %i.ph = icmp slt i64 %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.ph)
  %i.pi = shl i64 %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.pj = and i64 %i.pi, -16                      ; 2 uses
  %i.pk = add i64 %i.pj, 16                       ; 2 uses
  %i.pl = add nsw i64 %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 17
  %i.pm = add i64 %i.pl, %i.pk                    ; 3 uses
  %i.pn = icmp uge i64 %i.pm, %i.pk
  call void @llvm.assume(i1 %i.pn)
  %i.po = icmp ult i64 %i.pm, 9223372036854775793
  call void @llvm.assume(i1 %i.po)
  %i.pp = sub nuw nsw i64 -16, %i.pj
  %i.pq = getelementptr inbounds i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.pp
  br label %_RNvXsH_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXsH_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bq
  %.sroa.513.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %bb.bq ], [ %i.pq, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %.sroa.412.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.bq ], [ %i.pm, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bq ], [ 16, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !152296
  %i.pr = icmp eq i64 %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.pr, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %_RNvXsH_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ps = icmp sgt <16 x i8> %.val24.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.pt = bitcast <16 x i1> %i.ps to i16          ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.pt, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.br, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.pv = phi ptr [ %i.pz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pu, %bb.br ] ; 2 uses
  %i.pw = phi ptr [ %i.py, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.br ]
  %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.pv, align 16, !noalias !152297
  %i.px = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.py = getelementptr inbounds i8, ptr %i.pw, i64 -64 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.px to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.br
  %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.pu, %bb.br ], [ %i.pz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.9.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.br ], [ %i.py, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.pt, %bb.br ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.qa = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.qb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.qc = zext nneg i16 %i.qb to i64
  %i.qd = and i16 %i.qa, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qe = sub nsw i64 0, %i.qc
  %i.qf = getelementptr inbounds [4 x i8], ptr %.sroa.9.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.qe
  %i.qg = add i64 %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -1 ; 3 uses
  %i.qh = getelementptr inbounds i8, ptr %i.qf, i64 -4
  %i.qi = load i32, ptr %i.qh, align 4, !noalias !152298, !noundef !58 ; 2 uses
  br i1 %i.ng, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qj = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !152299, !noundef !58
  %i.qk = zext i32 %i.qi to i64
  %i.ql = xor i64 %.sroa.10.0.copyload.i, %i.qk
  %i.qm = zext i64 %i.ql to i128
  %i.qn = zext i64 %i.qj to i128
  %i.qo = mul nuw i128 %i.qn, %i.qm               ; 2 uses
  %i.qp = lshr i128 %i.qo, 64
  %i.qq = xor i128 %i.qp, %i.qo
  %i.qr = trunc i128 %i.qq to i64                 ; 2 uses
  %i.qs = lshr i64 %i.qr, 57
  %i.qt = trunc nuw nsw i64 %i.qs to i8
  %i.qu = insertelement <16 x i8> poison, i8 %i.qt, i64 0
  %i.qv = shufflevector <16 x i8> %i.qu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bs ], [ %i.rm, %bb.bv ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qr, %bb.bs ], [ %i.rn, %bb.bv ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.6.0.copyload.i ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.qw, align 1, !noalias !152300 ; 2 uses
  %i.qx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.qv
  %i.qy = bitcast <16 x i1> %i.qx to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.qy, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.bt, %bb.bu
  %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.rl, %bb.bu ], [ %i.qy, %bb.bt ] ; 3 uses
  %i.qz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ra = zext nneg i16 %i.qz to i64
  %i.rb = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ra
  %i.rc = and i64 %i.rb, %.sroa.6.0.copyload.i
  %i.rd = sub nsw i64 0, %i.rc
  %i.re = getelementptr inbounds [16 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.rd ; 2 uses
  %i.rf = getelementptr inbounds i8, ptr %i.re, i64 -16
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.rf, align 4, !noalias !152301, !noundef !58
  %i.rg = icmp eq i32 %i.qi, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.rg, label %bb.by, label %bb.bu, !prof !68

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.bu, %bb.bt
  %i.rh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ri = bitcast <16 x i1> %i.rh to i16
  %i.rj = icmp eq i16 %i.ri, 0
  br i1 %i.rj, label %bb.bv, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !62

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rk = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.rl = and i16 %i.rk, %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.rl, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rm = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.rn = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.rm
  br label %bb.bt

select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %._crit_edge17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1285) #60
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cj, !noalias !152302

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.bw:                                            ; preds = %_RNvXsH_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuENtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12IntoIterator9into_iterCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !152296
  %i.ro = icmp eq i64 %.sroa.412.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.pg, %i.ro
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.412.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !152303
  br label %.loopexit.i.i.i.i.i.i.i.i.i

bb.by:                                            ; preds = %.lr.ph.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rp = getelementptr inbounds i8, ptr %i.re, i64 -8
  %i.rq = load i64, ptr %i.rp, align 8, !noalias !152302, !noundef !58
  %i.rr = call i64 @llvm.uadd.sat.i64(i64 %i.qg, i64 1) ; 2 uses
  %i.rs = call i64 @llvm.umax.i64(i64 %i.rr, i64 4) ; 2 uses
  %i.rt = shl i64 %i.rs, 3                        ; 3 uses
  %i.ru = icmp ugt i64 %i.rr, 2305843009213693951
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.rt, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.ru, %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ca, label %bb.bz, !prof !64

bb.bz:                                            ; preds = %bb.by
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !152304
  %i.rv = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.rt, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !152304 ; 4 uses
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %bb.ca, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sroa.418.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.bz ], [ 0, %bb.by ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.418.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.rt) #61
          to label %bb.ci unwind label %bb.cj, !noalias !152305

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bz
  store i64 %i.rq, ptr %i.rv, align 8, !noalias !152305
  store i64 %i.rs, ptr %i.f, align 8, !noalias !152296
  store ptr %i.rv, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !152296
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !152296
  call void @llvm.experimental.noalias.scope.decl(metadata !152306)
  call void @llvm.experimental.noalias.scope.decl(metadata !152307)
  %i.rx = icmp eq i64 %i.qg, 0
  br i1 %i.rx, label %._crit_edge.i.i2.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i1.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i1.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ry = phi ptr [ %i.tz, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.rv, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.rz = phi i64 [ %i.ub, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.9.049.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.12.048.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.12.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.1415.047.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.si, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qd, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.1616.046.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sl, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qg, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.1415.047.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i42.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i1.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sa = phi ptr [ %i.se, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.048.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i1.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sb = phi ptr [ %i.sd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.049.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i1.i.i.i.i.i.i.i.i.i.i.i ]
  %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.sa, align 16, !noalias !152308
  %i.sc = icmp sgt <16 x i8> %.val68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.sd = getelementptr inbounds i8, ptr %i.sb, i64 -64 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.sc to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i42.i

.loopexit.i42.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i1.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.12.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.12.048.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i1.i.i.i.i.i.i.i.i.i.i.i ], [ %i.se, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.9.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.049.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i1.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.1415.047.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i1.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.sf = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.sg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.sh = zext nneg i16 %i.sg to i64
  %i.si = and i16 %i.sf, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sj = sub nsw i64 0, %i.sh
  %i.sk = getelementptr inbounds [4 x i8], ptr %.sroa.9.1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.sj
  %i.sl = add i64 %.sroa.1616.046.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 3 uses
  %i.sm = getelementptr inbounds i8, ptr %i.sk, i64 -4
  %i.sn = load i32, ptr %i.sm, align 4, !noalias !152309, !noundef !58 ; 2 uses
  %i.so = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !152310, !noundef !58
  %i.sp = zext i32 %i.sn to i64
  %i.sq = xor i64 %.sroa.10.0.copyload.i, %i.sp
  %i.sr = zext i64 %i.sq to i128
  %i.ss = zext i64 %i.so to i128
  %i.st = mul nuw i128 %i.sr, %i.ss               ; 2 uses
  %i.su = lshr i128 %i.st, 64
  %i.sv = xor i128 %i.su, %i.st
  %i.sw = trunc i128 %i.sv to i64                 ; 2 uses
  %i.sx = lshr i64 %i.sw, 57
  %i.sy = trunc nuw nsw i64 %i.sx to i8
  %i.sz = insertelement <16 x i8> poison, i8 %i.sy, i64 0
  %i.ta = shufflevector <16 x i8> %i.sz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cd, %.loopexit.i42.i
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit.i42.i ], [ %i.tr, %bb.cd ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sw, %.loopexit.i42.i ], [ %i.ts, %bb.cd ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.6.0.copyload.i ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.tb, align 1, !noalias !152311 ; 2 uses
  %i.tc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ta
  %i.td = bitcast <16 x i1> %i.tc to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.td, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.cb, %bb.cc
  %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.tq, %bb.cc ], [ %i.td, %bb.cb ] ; 3 uses
  %i.te = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.tf = zext nneg i16 %i.te to i64
  %i.tg = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.tf
  %i.th = and i64 %i.tg, %.sroa.6.0.copyload.i
  %i.ti = sub nsw i64 0, %i.th
  %i.tj = getelementptr inbounds [16 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds i8, ptr %i.tj, i64 -16
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.tk, align 4, !noalias !152312, !noundef !58
  %i.tl = icmp eq i32 %i.sn, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.tl, label %bb.ce, label %bb.cc, !prof !68

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.cc, %bb.cb
  %i.tm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.tn = bitcast <16 x i1> %i.tm to i16
  %i.to = icmp eq i16 %i.tn, 0
  br i1 %i.to, label %bb.cd, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !62

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tp = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.tq = and i16 %i.tp, %.sroa.05.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.tq, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tr = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.ts = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.tr
  br label %bb.cb

select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1285) #60
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !152313

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tt = getelementptr inbounds i8, ptr %i.tj, i64 -8
  %i.tu = load i64, ptr %i.tt, align 8, !noalias !152313, !noundef !58
  %i.tv = icmp samesign ult i64 %i.rz, 1152921504606846976
  call void @llvm.assume(i1 %i.tv)
  %i.tw = load i64, ptr %i.f, align 8, !range !61, !alias.scope !152314, !noalias !152296, !noundef !58
  %i.tx = icmp eq i64 %i.rz, %i.tw
  br i1 %i.tx, label %bb.ch, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i2.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ty = icmp eq i64 %.sroa.412.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.pg, %i.ty
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNCINvNtNtB2K_4algo10dominators28predecessor_sets_to_idx_vecsB2G_E000EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.i.i2.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.412.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !152315
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNCINvNtNtB2K_4algo10dominators28predecessor_sets_to_idx_vecsB2G_E000EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ce
  %i.tz = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ry, %bb.ce ] ; 2 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.rz
  store i64 %i.tu, ptr %i.ua, align 8, !noalias !152316
  %i.ub = add nuw nsw i64 %i.rz, 1                ; 2 uses
  store i64 %i.ub, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !152314, !noalias !152296
  %i.uc = icmp eq i64 %i.sl, 0
  br i1 %i.uc, label %._crit_edge.i.i2.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i1.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ch, %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp581 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ud = icmp eq i64 %.sroa.412.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond41.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.pg, %i.ud
  br i1 %or.cond41.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.412.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !152317
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.ce
  %i.ue = call i64 @llvm.uadd.sat.i64(i64 %i.sl, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.rz, i64 noundef %i.ue, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !152318

._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ch
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !152314, !noalias !152296
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.cg, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.experimental.noalias.scope.decl(metadata !152319)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !152319, !noalias !152296 ; 2 uses
  %i.uf = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.uf, label %.body.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !152319, !noalias !152296, !nonnull !58, !noundef !58
  %i.ug = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ug, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !152320
  br label %.body.i.i.i.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNCINvNtNtB2K_4algo10dominators28predecessor_sets_to_idx_vecsB2G_E000EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cf, %._crit_edge.i.i2.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !152321
  %.sroa.58.0.copyload10.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !152321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !152296
  br label %.loopexit.i.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.ca
  unreachable

bb.cj:                                            ; preds = %bb.ca, %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ui = icmp eq i64 %.sroa.412.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond44.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.pg, %i.ui
  br i1 %or.cond44.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.412.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !152322
  br label %.body.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNCINvNtNtB2K_4algo10dominators28predecessor_sets_to_idx_vecsB2G_E000EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bx, %bb.bw, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBO_EE12remove_entryBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sink98.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bx ], [ 0, %bb.bw ], [ %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNCINvNtNtB2K_4algo10dominators28predecessor_sets_to_idx_vecsB2G_E000EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBO_EE12remove_entryBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink96.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bx ], [ inttoptr (i64 8 to ptr), %bb.bw ], [ %.sroa.58.0.copyload10.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNCINvNtNtB2K_4algo10dominators28predecessor_sets_to_idx_vecsB2G_E000EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBO_EE12remove_entryBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bx ], [ 0, %bb.bw ], [ %.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtCs3sCKvcUjPpt_9hashbrown3set8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNCINvNtNtB2K_4algo10dominators28predecessor_sets_to_idx_vecsB2G_E000EE11spec_extendCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB8_3set7HashSetBO_EE12remove_entryBO_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.uj = getelementptr inbounds nuw [24 x i8], ptr %i.na, i64 %.sroa.6.0.i.i.i.i.i.i.i.i ; 3 uses
  store i64 %.sink98.i.i.i.i.i.i.i.i.i.i.i, ptr %i.uj, align 8, !noalias !152323
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  store ptr %.sink96.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !152323
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  store i64 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !152323
  %i.uk = add nuw nsw i64 %.sroa.6.0.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ul = icmp eq i64 %i.uk, %.sroa.5118.0.copyload.i
  br i1 %i.ul, label %bb.cn, label %bb.bl

.body.i.i.i.i:                                    ; preds = %bb.ck, %bb.cj, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.uh, %bb.ck ], [ %lpad.loopexit.split-lp581, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp581, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.uh, %bb.cj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !152324), !noalias !152325
  %i.um = icmp eq i64 %.sroa.6.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.um, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.body.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.uo, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i ] ; 2 uses
  %i.un = getelementptr inbounds nuw [24 x i8], ptr %i.na, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.uo = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152326), !noalias !152325
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.un, align 8, !alias.scope !152327, !noalias !152328 ; 2 uses
  %i.up = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.up, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.uq, align 8, !alias.scope !152327, !noalias !152328, !nonnull !58, !noundef !58
  %i.ur = shl nuw i64 %.val.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.ur, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !152329
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.us = icmp eq i64 %i.uo, %.sroa.6.0.i.i.i.i.i.i.i.i
  br i1 %i.us, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %.body.i.i.i.i
  %i.ut = mul nuw nsw i64 %.sroa.47.0.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.na, i64 noundef %i.ut, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !152328
  br label %.body.i41.i

bb.cl:                                            ; preds = %bb.bj
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i41.i

.body.i41.i:                                      ; preds = %bb.cl, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.uu, %bb.cl ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtBG_3set7HashSetB1g_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r) #63, !noalias !152330
end_hunk_9
