Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeEB8_:bb.a
  %i.cak = load i64, ptr %i.bdq, align 8, !range !6, !alias.scope !1547, !noalias !1548, !noundef !5 ; 2 uses
  %i.cal = icmp eq i64 %i.caj, %i.cak
  br i1 %i.cal, label %bb.nx, label %bb.ou

bb.nx:                                            ; preds = %bb.nw
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bdq) #34
          to label %.noexc29.i161 unwind label %.loopexit.split-lp.loopexit.split-lp.i63, !noalias !1381

.noexc29.i161:                                    ; preds = %bb.nx
  %.pre.i.i.i.i162 = load i64, ptr %i.bdq, align 8, !range !6, !alias.scope !1549, !noalias !1550
  br label %bb.ou

._crit_edge.i.i.i.i165:                           ; preds = %bb.or, %bb.nv
  %.sroa.016.0.lcssa.i.i.i.i166 = phi i64 [ 0, %bb.nv ], [ %.sroa.016.2.i.i.i.i203, %bb.or ]
  %.sroa.0.0.lcssa.i.i.i.i167 = phi i64 [ 0, %bb.nv ], [ %.sroa.0.2.i.i.i.i204, %bb.or ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1551
  %.not.i.i137.i.i.i.i = icmp eq ptr %.sroa.08.0.copyload.i.i.i, null
  br i1 %.not.i.i137.i.i.i.i, label %.noexc139.i.i.i.i, label %bb.ny

bb.ny:                                            ; preds = %._crit_edge.i.i.i.i165
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i168 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i168, align 8, !noalias !1551
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i169 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.08.0.copyload.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i169, align 8, !noalias !1551
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i170 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i163, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i170, align 8, !noalias !1551
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i171 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i.i171, align 8, !noalias !1551
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i172 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %.sroa.08.0.copyload.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i172, align 8, !noalias !1551
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i173 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i163, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i173, align 8, !noalias !1551
  br label %.noexc139.i.i.i.i

.noexc139.i.i.i.i:                                ; preds = %bb.ny, %._crit_edge.i.i.i.i165
  %.sink31.i.i.i.i.i.i174 = phi i64 [ 1, %bb.ny ], [ 0, %._crit_edge.i.i.i.i165 ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i.i.i175 = phi i64 [ %.sroa.6.0.copyload.i.i.i164, %bb.ny ], [ 0, %._crit_edge.i.i.i.i165 ]
  store i64 %.sink31.i.i.i.i.i.i174, ptr %i.i, align 8, !noalias !1551
  %i.cam = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sink31.i.i.i.i.i.i174, ptr %i.cam, align 8, !noalias !1551
  %i.can = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i.i.i175, ptr %i.can, align 8, !noalias !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1552
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTjjEmE10dying_nextCsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc30.i176 unwind label %.loopexit.split-lp.loopexit.split-lp.i63, !noalias !1381

.noexc30.i176:                                    ; preds = %.noexc139.i.i.i.i
  %i.cao = load ptr, ptr %i.h, align 8, !noalias !1552, !noundef !5
  %.not5.i.i.i.i.i.i.i.i177 = icmp eq ptr %i.cao, null
  br i1 %.not5.i.i.i.i.i.i.i.i177, label %.loopexit.i.i.i.i181, label %.lr.ph.i.i.i.i138.i.i.i.i

.lr.ph.i.i.i.i138.i.i.i.i:                        ; preds = %.noexc30.i176, %.noexc31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1552
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTjjEmE10dying_nextCsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc31.i unwind label %.loopexit.i178, !noalias !1381

.noexc31.i:                                       ; preds = %.lr.ph.i.i.i.i138.i.i.i.i
  %i.cap = load ptr, ptr %i.h, align 8, !noalias !1552, !noundef !5
  %.not.i.i.i.i.i.i.i.i180 = icmp eq ptr %i.cap, null
  br i1 %.not.i.i.i.i.i.i.i.i180, label %.loopexit.i.i.i.i181, label %.lr.ph.i.i.i.i138.i.i.i.i

bb.nz:                                            ; preds = %bb.or, %.lr.ph.i.i.i.i182
  %.sroa.0.0316.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i182 ], [ %.sroa.0.2.i.i.i.i204, %bb.or ] ; 5 uses
  %.sroa.016.0314.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i182 ], [ %.sroa.016.2.i.i.i.i203, %bb.or ] ; 7 uses
  %i.caq = add i64 %.sroa.0.0316.i.i.i.i, %i.buc  ; 4 uses
  %i.car = add i64 %.sroa.016.0314.i.i.i.i, %i.bud ; 4 uses
  %i.cas = sub i64 %i.car, %i.cab                 ; 3 uses
  %i.cat = icmp ult i64 %i.cas, %i.cac
  br i1 %i.cat, label %bb.oc, label %.invoke.i.i.i.i183

.loopexit.i.i.i.i181:                             ; preds = %.noexc31.i, %.noexc30.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1551
  br label %bb.oa

bb.oa:                                            ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit105.i.i.i.i, %.loopexit.i.i.i.i181
  %.sroa.016.1.i.i.i.i150 = phi i64 [ %.sroa.016.0.lcssa.i.i.i.i166, %.loopexit.i.i.i.i181 ], [ 0, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit105.i.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i.i151 = phi i64 [ %.sroa.0.0.lcssa.i.i.i.i167, %.loopexit.i.i.i.i181 ], [ 0, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit105.i.i.i.i ] ; 4 uses
  %i.cau = icmp ult i64 %.sroa.0.1.i.i.i.i151, %i.bzr
  br i1 %i.cau, label %bb.ow, label %bb.oy

.loopexit249.i.i.i.i:                             ; preds = %bb.oq, %bb.oo, %bb.oj
  %lpad.loopexit.i.i.i.i206 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ob

.loopexit.split-lp.i.i.i.i184:                    ; preds = %.invoke.i.i.i.i183
  %lpad.loopexit.split-lp.i.i.i.i185 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ob

bb.ob:                                            ; preds = %.loopexit.split-lp.i.i.i.i184, %.loopexit249.i.i.i.i
  %lpad.phi.i.i.i.i186 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i206, %.loopexit249.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i185, %.loopexit.split-lp.i.i.i.i184 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTjjEmEECsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bzy) #35
          to label %.body.i64 unwind label %bb.ot, !noalias !1553

bb.oc:                                            ; preds = %bb.nz
  %i.cav = sub i64 %i.caq, %i.cad                 ; 3 uses
  %i.caw = icmp ult i64 %i.cav, %i.cae
  br i1 %i.caw, label %bb.od, label %.invoke.i.i.i.i183

.invoke.i.i.i.i183:                               ; preds = %bb.oc, %bb.nz
  %i.cax = phi i64 [ %i.cav, %bb.oc ], [ %i.cas, %bb.nz ]
  %i.cay = phi i64 [ %i.cae, %bb.oc ], [ %i.cac, %bb.nz ]
  %i.caz = phi ptr [ @15, %bb.oc ], [ @14, %bb.nz ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cax, i64 noundef %i.cay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.caz) #37
          to label %.cont.i.i.i.i187 unwind label %.loopexit.split-lp.i.i.i.i184, !noalias !1553

.cont.i.i.i.i187:                                 ; preds = %.invoke.i.i.i.i183
  unreachable

bb.od:                                            ; preds = %bb.oc
  %i.cba = getelementptr inbounds nuw [4 x i8], ptr %i.cag, i64 %i.cas
  %i.cbb = getelementptr inbounds nuw [4 x i8], ptr %i.cai, i64 %i.cav
  %.val120.i.i.i.i = load i32, ptr %i.cba, align 4, !noalias !1553, !noundef !5
  %.val121.i.i.i.i = load i32, ptr %i.cbb, align 4, !noalias !1553, !noundef !5
  %i.cbc = icmp eq i32 %.val120.i.i.i.i, %.val121.i.i.i.i
  br i1 %i.cbc, label %bb.oi, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.cbd = add nuw i64 %.sroa.0.0316.i.i.i.i, 1   ; 2 uses
  br i1 %.not.i141.i.i.i.i, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.thread.i.i.i.i208, label %.preheader.i.i.i.i.i188

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.thread.i.i.i.i208: ; preds = %bb.oe
  %i.cbe = add nuw i64 %.sroa.016.0314.i.i.i.i, 1
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit159.i.i.i.i

.preheader.i.i.i.i.i188:                          ; preds = %bb.oe, %bb.oh
  %.sroa.3.0.i.i.i.i.i.i189 = phi i64 [ %i.cbw, %bb.oh ], [ %.sroa.4.0.copyload.i.i.i163, %bb.oe ] ; 2 uses
  %.sroa.0.0.i.i142.i.i.i.i = phi ptr [ %i.cbv, %bb.oh ], [ %.sroa.08.0.copyload.i.i.i, %bb.oe ] ; 5 uses
  %i.cbf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i142.i.i.i.i, i64 230
  %i.cbg = load i16, ptr %i.cbf, align 2, !noalias !1554, !noundef !5 ; 2 uses
  %i.cbh = zext i16 %i.cbg to i64                 ; 3 uses
  %.idx211 = shl nuw nsw i64 %i.cbh, 4
  %i.cbi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i142.i.i.i.i, i64 %.idx211
  %i.cbj = icmp eq i16 %i.cbg, 0
  br i1 %i.cbj, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192

bb.of:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192
  %i.cbk = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i191193, i64 16 ; 2 uses
  %i.cbl = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i190192, 1
  %i.cbm = icmp eq ptr %i.cbk, %i.cbi
  br i1 %i.cbm, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192: ; preds = %.preheader.i.i.i.i.i188, %bb.of
  %.sroa.0.03.i.i.i.i.i.i.i191193 = phi ptr [ %i.cbk, %bb.of ], [ %.sroa.0.0.i.i142.i.i.i.i, %.preheader.i.i.i.i.i188 ] ; 3 uses
  %.sroa.8.0.i.i.i.i.i.i.i190192 = phi i64 [ %i.cbl, %bb.of ], [ 0, %.preheader.i.i.i.i.i188 ] ; 4 uses
  %.val7.i.i.i.i.i.i.i193 = load i64, ptr %.sroa.0.03.i.i.i.i.i.i.i191193, align 8, !noalias !1554, !noundef !5 ; 2 uses
  %i.cbn = getelementptr i8, ptr %.sroa.0.03.i.i.i.i.i.i.i191193, i64 8
  %.val8.i.i.i.i.i.i.i194 = load i64, ptr %i.cbn, align 8, !noalias !1554
  %i.cbo = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.016.0314.i.i.i.i, i64 %.val7.i.i.i.i.i.i.i193)
  %i.cbp = icmp eq i64 %.sroa.016.0314.i.i.i.i, %.val7.i.i.i.i.i.i.i193
  %i.cbq = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.cbd, i64 %.val8.i.i.i.i.i.i.i194)
  %.sroa.0.0.i9.i.i.i.i.i.i.i195 = select i1 %i.cbp, i8 %i.cbq, i8 %i.cbo
  switch i8 %.sroa.0.0.i9.i.i.i.i.i.i.i195, label %bb.og [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i196
    i8 1, label %bb.of
  ]

bb.og:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192._crit_edge: ; preds = %bb.of, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192, %.preheader.i.i.i.i.i188
  %.sroa.4.0.i.ph.i.i.i.i.i.i207 = phi i64 [ %i.cbh, %.preheader.i.i.i.i.i188 ], [ %i.cbh, %bb.of ], [ %.sroa.8.0.i.i.i.i.i.i.i190192, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192 ] ; 2 uses
  %i.cbr = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i189, 0
  br i1 %i.cbr, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i197, label %bb.oh

bb.oh:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192._crit_edge
  %i.cbs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i142.i.i.i.i, i64 232
  %i.cbt = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i207, 12
  call void @llvm.assume(i1 %i.cbt)
  %i.cbu = getelementptr inbounds nuw [8 x i8], ptr %i.cbs, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i207
  %i.cbv = load ptr, ptr %i.cbu, align 8, !noalias !1554, !nonnull !5, !noundef !5
  %i.cbw = add i64 %.sroa.3.0.i.i.i.i.i.i189, -1
  br label %.preheader.i.i.i.i.i188

_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i196: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192
  %i.cbx = icmp samesign ult i64 %.sroa.8.0.i.i.i.i.i.i.i190192, 11
  call void @llvm.assume(i1 %i.cbx)
  %i.cby = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i142.i.i.i.i, i64 184
  %i.cbz = getelementptr inbounds nuw [4 x i8], ptr %i.cby, i64 %.sroa.8.0.i.i.i.i.i.i.i190192
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i197

bb.oi:                                            ; preds = %bb.od
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.cca = load i64, ptr %.sroa.512.0..sroa_idx.i62, align 8, !alias.scope !1556, !noalias !1557, !noundef !5 ; 3 uses
  %i.ccb = load i64, ptr %i.bdq, align 8, !range !6, !alias.scope !1556, !noalias !1557, !noundef !5
  %i.ccc = icmp eq i64 %i.cca, %i.ccb
  br i1 %i.ccc, label %bb.oj, label %bb.os

bb.oj:                                            ; preds = %bb.oi
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bdq) #34
          to label %bb.os unwind label %.loopexit249.i.i.i.i, !noalias !1538

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i197: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192._crit_edge, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i196
  %.sroa.0.0.i143.i.i.i.i = phi ptr [ %i.cbz, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i196 ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i192._crit_edge ] ; 2 uses
  %.not94.i.i.i.i198 = icmp eq ptr %.sroa.0.0.i143.i.i.i.i, null
  %..i.i.i.i = select i1 %.not94.i.i.i.i198, ptr @13, ptr %.sroa.0.0.i143.i.i.i.i ; 2 uses
  %i.ccd = add i64 %.sroa.016.0314.i.i.i.i, 1     ; 4 uses
  br label %.preheader.i147.i.i.i.i

.preheader.i147.i.i.i.i:                          ; preds = %bb.om, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i197
  %.sroa.3.0.i.i148.i.i.i.i = phi i64 [ %i.ccv, %bb.om ], [ %.sroa.4.0.copyload.i.i.i163, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i197 ] ; 2 uses
  %.sroa.0.0.i.i149.i.i.i.i = phi ptr [ %i.ccu, %bb.om ], [ %.sroa.08.0.copyload.i.i.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.i.i.i.i197 ] ; 5 uses
  %i.cce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i149.i.i.i.i, i64 230
  %i.ccf = load i16, ptr %i.cce, align 2, !noalias !1558, !noundef !5 ; 2 uses
  %i.ccg = zext i16 %i.ccf to i64                 ; 3 uses
  %.idx212 = shl nuw nsw i64 %i.ccg, 4
  %i.cch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i149.i.i.i.i, i64 %.idx212
  %i.cci = icmp eq i16 %i.ccf, 0
  br i1 %i.cci, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i

bb.ok:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i
  %i.ccj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i151.i.i.i.i198, i64 16 ; 2 uses
  %i.cck = add nuw nsw i64 %.sroa.8.0.i.i.i150.i.i.i.i197, 1
  %i.ccl = icmp eq ptr %i.ccj, %i.cch
  br i1 %i.ccl, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i: ; preds = %.preheader.i147.i.i.i.i, %bb.ok
  %.sroa.0.03.i.i.i151.i.i.i.i198 = phi ptr [ %i.ccj, %bb.ok ], [ %.sroa.0.0.i.i149.i.i.i.i, %.preheader.i147.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i150.i.i.i.i197 = phi i64 [ %i.cck, %bb.ok ], [ 0, %.preheader.i147.i.i.i.i ] ; 4 uses
  %.val7.i.i.i153.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i151.i.i.i.i198, align 8, !noalias !1558, !noundef !5 ; 2 uses
  %i.ccm = getelementptr i8, ptr %.sroa.0.03.i.i.i151.i.i.i.i198, i64 8
  %.val8.i.i.i154.i.i.i.i = load i64, ptr %i.ccm, align 8, !noalias !1558
  %i.ccn = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.ccd, i64 %.val7.i.i.i153.i.i.i.i)
  %i.cco = icmp eq i64 %i.ccd, %.val7.i.i.i153.i.i.i.i
  %i.ccp = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.0.0316.i.i.i.i, i64 %.val8.i.i.i154.i.i.i.i)
  %.sroa.0.0.i9.i.i.i155.i.i.i.i = select i1 %i.cco, i8 %i.ccp, i8 %i.ccn
  switch i8 %.sroa.0.0.i9.i.i.i155.i.i.i.i, label %bb.ol [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i156.i.i.i.i
    i8 1, label %bb.ok
  ]

bb.ol:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i._crit_edge: ; preds = %bb.ok, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i, %.preheader.i147.i.i.i.i
  %.sroa.4.0.i.ph.i.i158.i.i.i.i = phi i64 [ %i.ccg, %.preheader.i147.i.i.i.i ], [ %i.ccg, %bb.ok ], [ %.sroa.8.0.i.i.i150.i.i.i.i197, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i ] ; 2 uses
  %i.ccq = icmp eq i64 %.sroa.3.0.i.i148.i.i.i.i, 0
  br i1 %i.ccq, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit159.i.i.i.i, label %bb.om

bb.om:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i._crit_edge
  %i.ccr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i149.i.i.i.i, i64 232
  %i.ccs = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i158.i.i.i.i, 12
  call void @llvm.assume(i1 %i.ccs)
  %i.cct = getelementptr inbounds nuw [8 x i8], ptr %i.ccr, i64 %.sroa.4.0.i.ph.i.i158.i.i.i.i
  %i.ccu = load ptr, ptr %i.cct, align 8, !noalias !1558, !nonnull !5, !noundef !5
  %i.ccv = add i64 %.sroa.3.0.i.i148.i.i.i.i, -1
  br label %.preheader.i147.i.i.i.i

_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i156.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i
  %i.ccw = icmp samesign ult i64 %.sroa.8.0.i.i.i150.i.i.i.i197, 11
  call void @llvm.assume(i1 %i.ccw)
  %i.ccx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i149.i.i.i.i, i64 184
  %i.ccy = getelementptr inbounds nuw [4 x i8], ptr %i.ccx, i64 %.sroa.8.0.i.i.i150.i.i.i.i197
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit159.i.i.i.i

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit159.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i._crit_edge, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i156.i.i.i.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.thread.i.i.i.i208
  %i.ccz = phi i64 [ %i.cbe, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.thread.i.i.i.i208 ], [ %i.ccd, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i156.i.i.i.i ], [ %i.ccd, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i._crit_edge ]
  %.248.i.i.i.i = phi ptr [ @13, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.thread.i.i.i.i208 ], [ %..i.i.i.i, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i156.i.i.i.i ], [ %..i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i._crit_edge ]
  %.sroa.0.0.i157.i.i.i.i = phi ptr [ null, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit.thread.i.i.i.i208 ], [ %i.ccy, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECsdftwklc2oBO_7similar.exit.i156.i.i.i.i ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i152.i.i.i.i._crit_edge ] ; 2 uses
  %.not95.i.i.i.i199 = icmp eq ptr %.sroa.0.0.i157.i.i.i.i, null
  %.98.i.i.i.i = select i1 %.not95.i.i.i.i199, ptr @13, ptr %.sroa.0.0.i157.i.i.i.i
  %i.cda = load i32, ptr %.248.i.i.i.i, align 4, !noalias !1553, !noundef !5
  %i.cdb = load i32, ptr %.98.i.i.i.i, align 4, !noalias !1553, !noundef !5
  %.not96.i.i.i.i200 = icmp ult i32 %i.cda, %i.cdb
  br i1 %.not96.i.i.i.i200, label %bb.on, label %bb.op

bb.on:                                            ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit159.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.cdc = load i64, ptr %.sroa.512.0..sroa_idx.i62, align 8, !alias.scope !1560, !noalias !1561, !noundef !5 ; 3 uses
  %i.cdd = load i64, ptr %i.bdq, align 8, !range !6, !alias.scope !1560, !noalias !1561, !noundef !5
  %i.cde = icmp eq i64 %i.cdc, %i.cdd
  br i1 %i.cde, label %bb.oo, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit106.i.i.i.i

bb.oo:                                            ; preds = %bb.on
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bdq) #34
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit106.i.i.i.i unwind label %.loopexit249.i.i.i.i, !noalias !1538

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit106.i.i.i.i: ; preds = %bb.oo, %bb.on
  %i.cdf = load ptr, ptr %.sroa.411.0..sroa_idx.i61, align 8, !alias.scope !1560, !noalias !1561, !nonnull !5, !noundef !5
  %i.cdg = getelementptr inbounds nuw [40 x i8], ptr %i.cdf, i64 %i.cdc ; 4 uses
  store i64 2, ptr %i.cdg, align 8, !noalias !1562
  %.sroa.4232.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cdg, i64 8
  store i64 %i.caq, ptr %.sroa.4232.0..sroa_idx.i.i.i.i, align 8, !noalias !1562
  %.sroa.5233.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cdg, i64 16
  store i64 %i.car, ptr %.sroa.5233.0..sroa_idx.i.i.i.i, align 8, !noalias !1562
  %.sroa.6234.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cdg, i64 24
  store i64 1, ptr %.sroa.6234.0..sroa_idx.i.i.i.i, align 8, !noalias !1562
  %i.cdh = add i64 %i.cdc, 1
  store i64 %i.cdh, ptr %.sroa.512.0..sroa_idx.i62, align 8, !alias.scope !1560, !noalias !1561
  br label %bb.or

bb.op:                                            ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECsdftwklc2oBO_7similar.exit159.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  %i.cdi = load i64, ptr %.sroa.512.0..sroa_idx.i62, align 8, !alias.scope !1564, !noalias !1565, !noundef !5 ; 3 uses
  %i.cdj = load i64, ptr %i.bdq, align 8, !range !6, !alias.scope !1564, !noalias !1565, !noundef !5
  %i.cdk = icmp eq i64 %i.cdi, %i.cdj
  br i1 %i.cdk, label %bb.oq, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit103.i.i.i.i

bb.oq:                                            ; preds = %bb.op
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bdq) #34
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit103.i.i.i.i unwind label %.loopexit249.i.i.i.i, !noalias !1538

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit103.i.i.i.i: ; preds = %bb.oq, %bb.op
  %i.cdl = load ptr, ptr %.sroa.411.0..sroa_idx.i61, align 8, !alias.scope !1564, !noalias !1565, !nonnull !5, !noundef !5
  %i.cdm = getelementptr inbounds nuw [40 x i8], ptr %i.cdl, i64 %i.cdi ; 4 uses
  store i64 1, ptr %i.cdm, align 8, !noalias !1566
  %.sroa.4207.0..sroa_idx.i.i.i.i201 = getelementptr inbounds nuw i8, ptr %i.cdm, i64 8
  store i64 %i.caq, ptr %.sroa.4207.0..sroa_idx.i.i.i.i201, align 8, !noalias !1566
  %.sroa.5208.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cdm, i64 16
  store i64 1, ptr %.sroa.5208.0..sroa_idx.i.i.i.i, align 8, !noalias !1566
  %.sroa.6209.0..sroa_idx.i.i.i.i202 = getelementptr inbounds nuw i8, ptr %i.cdm, i64 24
  store i64 %i.car, ptr %.sroa.6209.0..sroa_idx.i.i.i.i202, align 8, !noalias !1566
  %i.cdn = add i64 %i.cdi, 1
  store i64 %i.cdn, ptr %.sroa.512.0..sroa_idx.i62, align 8, !alias.scope !1564, !noalias !1565
  br label %bb.or

bb.or:                                            ; preds = %bb.os, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit103.i.i.i.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit106.i.i.i.i
  %.sroa.016.2.i.i.i.i203 = phi i64 [ %i.cdu, %bb.os ], [ %i.ccz, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit106.i.i.i.i ], [ %.sroa.016.0314.i.i.i.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit103.i.i.i.i ] ; 3 uses
  %.sroa.0.2.i.i.i.i204 = phi i64 [ %i.cdt, %bb.os ], [ %.sroa.0.0316.i.i.i.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit106.i.i.i.i ], [ %i.cbd, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit103.i.i.i.i ] ; 3 uses
  %i.cdo = icmp ult i64 %.sroa.016.2.i.i.i.i203, %i.bzq
  %i.cdp = icmp ult i64 %.sroa.0.2.i.i.i.i204, %i.bzr
  %or.cond3.i.i.i.i205 = select i1 %i.cdo, i1 %i.cdp, i1 false
  br i1 %or.cond3.i.i.i.i205, label %bb.nz, label %._crit_edge.i.i.i.i165

bb.os:                                            ; preds = %bb.oj, %bb.oi
  %i.cdq = load ptr, ptr %.sroa.411.0..sroa_idx.i61, align 8, !alias.scope !1556, !noalias !1557, !nonnull !5, !noundef !5
  %i.cdr = getelementptr inbounds nuw [40 x i8], ptr %i.cdq, i64 %i.cca ; 4 uses
  store i64 0, ptr %i.cdr, align 8, !noalias !1567
  %.sroa.4187.0..sroa_idx.i.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.cdr, i64 8
  store i64 %i.caq, ptr %.sroa.4187.0..sroa_idx.i.i.i.i209, align 8, !noalias !1567
  %.sroa.5188.0..sroa_idx.i.i.i.i210 = getelementptr inbounds nuw i8, ptr %i.cdr, i64 16
  store i64 %i.car, ptr %.sroa.5188.0..sroa_idx.i.i.i.i210, align 8, !noalias !1567
  %.sroa.6189.0..sroa_idx.i.i.i.i211 = getelementptr inbounds nuw i8, ptr %i.cdr, i64 24
  store i64 1, ptr %.sroa.6189.0..sroa_idx.i.i.i.i211, align 8, !noalias !1567
  %i.cds = add i64 %i.cca, 1
  store i64 %i.cds, ptr %.sroa.512.0..sroa_idx.i62, align 8, !alias.scope !1556, !noalias !1557
  %i.cdt = add nuw i64 %.sroa.0.0316.i.i.i.i, 1
  %i.cdu = add nuw i64 %.sroa.016.0314.i.i.i.i, 1
  br label %bb.or

bb.ot:                                            ; preds = %bb.pf, %bb.ob
  %i.cdv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !1553
  unreachable

bb.ou:                                            ; preds = %.noexc29.i161, %bb.nw
  %i.cdw = phi i64 [ %.pre.i.i.i.i162, %.noexc29.i161 ], [ %i.cak, %bb.nw ]
  %i.cdx = load ptr, ptr %.sroa.411.0..sroa_idx.i61, align 8, !alias.scope !1547, !noalias !1548, !nonnull !5, !noundef !5 ; 2 uses
  %i.cdy = getelementptr inbounds nuw [40 x i8], ptr %i.cdx, i64 %i.caj ; 4 uses
  store i64 1, ptr %i.cdy, align 8, !noalias !1568
  %.sroa.4212.0..sroa_idx.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %i.cdy, i64 8
  store i64 %i.buc, ptr %.sroa.4212.0..sroa_idx.i.i.i.i147, align 8, !noalias !1568
  %.sroa.5213.0..sroa_idx.i.i.i.i148 = getelementptr inbounds nuw i8, ptr %i.cdy, i64 16
  store i64 %i.bzr, ptr %.sroa.5213.0..sroa_idx.i.i.i.i148, align 8, !noalias !1568
  %.sroa.6214.0..sroa_idx.i.i.i.i149 = getelementptr inbounds nuw i8, ptr %i.cdy, i64 24
  store i64 %i.bud, ptr %.sroa.6214.0..sroa_idx.i.i.i.i149, align 8, !noalias !1568
  %i.cdz = add i64 %i.caj, 1                      ; 3 uses
  store i64 %i.cdz, ptr %.sroa.512.0..sroa_idx.i62, align 8, !alias.scope !1547, !noalias !1548
  call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  %i.cea = icmp eq i64 %i.cdz, %i.cdw
  br i1 %i.cea, label %bb.ov, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit105.i.i.i.i

bb.ov:                                            ; preds = %bb.ou
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bdq) #34
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.split-lp.i63, !noalias !1381

.noexc32.i:                                       ; preds = %bb.ov
  %.pre364.i.i.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i61, align 8, !alias.scope !1549, !noalias !1550
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit105.i.i.i.i

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit105.i.i.i.i: ; preds = %.noexc32.i, %bb.ou
  %i.ceb = phi ptr [ %.pre364.i.i.i.i, %.noexc32.i ], [ %i.cdx, %bb.ou ]
  %i.cec = getelementptr inbounds nuw [40 x i8], ptr %i.ceb, i64 %i.cdz ; 4 uses
  store i64 2, ptr %i.cec, align 8, !noalias !1570
  %.sroa.4227.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cec, i64 8
  store i64 %i.buc, ptr %.sroa.4227.0..sroa_idx.i.i.i.i, align 8, !noalias !1570
  %.sroa.5228.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cec, i64 16
  store i64 %i.bud, ptr %.sroa.5228.0..sroa_idx.i.i.i.i, align 8, !noalias !1570
  %.sroa.6229.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cec, i64 24
  store i64 %i.bzq, ptr %.sroa.6229.0..sroa_idx.i.i.i.i, align 8, !noalias !1570
  %i.ced = add i64 %i.caj, 2
  store i64 %i.ced, ptr %.sroa.512.0..sroa_idx.i62, align 8, !alias.scope !1549, !noalias !1550
  br label %bb.oa

bb.ow:                                            ; preds = %bb.oa
  %i.cee = add i64 %.sroa.0.1.i.i.i.i151, %i.buc
  %i.cef = sub nuw i64 %i.bzr, %.sroa.0.1.i.i.i.i151
  %i.ceg = add i64 %.sroa.016.1.i.i.i.i150, %i.bud
  call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  %i.ceh = load i64, ptr %.sroa.512.0..sroa_idx.i62, align 8, !alias.scope !1572, !noalias !1573, !noundef !5 ; 3 uses
  %i.cei = load i64, ptr %i.bdq, align 8, !range !6, !alias.scope !1572, !noalias !1573, !noundef !5
  %i.cej = icmp eq i64 %i.ceh, %i.cei
  br i1 %i.cej, label %bb.ox, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit.i.i.i.i

bb.ox:                                            ; preds = %bb.ow
end_hunk_0
