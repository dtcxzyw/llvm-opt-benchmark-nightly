Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvMs3_NtCsdftwklc2oBO_7similar4textNtB6_14TextDiffConfig4diffeECskXtk6F4WjxZ_4just:bb.a
  %.not.i141.i.i.i.i = icmp eq ptr %.sroa.08.0.copyload.i.i.i, null
  br label %bb.ob

bb.ny:                                            ; preds = %bb.nu
  %i.bxk = load i64, ptr %.sroa.512.0..sroa_idx.i59, align 8, !alias.scope !4177, !noalias !4178, !noundef !28 ; 4 uses
  %i.bxl = load i64, ptr %i.bbz, align 8, !range !43, !alias.scope !4177, !noalias !4178, !noundef !28
  %i.bxm = icmp eq i64 %i.bxk, %i.bxl
  br i1 %i.bxm, label %bb.nz, label %.noexc29.i143

bb.nz:                                            ; preds = %bb.ny
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bbz) #74
          to label %.noexc29.i143 unwind label %.loopexit.split-lp.loopexit.split-lp.i60, !noalias !4012

._crit_edge.i.i.i.i160:                           ; preds = %bb.ot, %bb.nx
  %.sroa.016.0.lcssa.i.i.i.i161 = phi i64 [ 0, %bb.nx ], [ %.sroa.016.2.i.i.i.i196, %bb.ot ]
  %.sroa.0.0.lcssa.i.i.i.i162 = phi i64 [ 0, %bb.nx ], [ %.sroa.0.2.i.i.i.i197, %bb.ot ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4179
  %.not.i.i137.i.i.i.i = icmp eq ptr %.sroa.08.0.copyload.i.i.i, null
  br i1 %.not.i.i137.i.i.i.i, label %.noexc139.i.i.i.i, label %bb.oa

bb.oa:                                            ; preds = %._crit_edge.i.i.i.i160
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i163 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i163, align 8, !noalias !4179
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i164 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.08.0.copyload.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i164, align 8, !noalias !4179
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i165 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i158, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i165, align 8, !noalias !4179
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i166 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i.i166, align 8, !noalias !4179
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %.sroa.08.0.copyload.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i167, align 8, !noalias !4179
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i168 = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i158, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i.i.i168, align 8, !noalias !4179
  br label %.noexc139.i.i.i.i

.noexc139.i.i.i.i:                                ; preds = %bb.oa, %._crit_edge.i.i.i.i160
  %.sink31.i.i.i.i.i.i169 = phi i64 [ 1, %bb.oa ], [ 0, %._crit_edge.i.i.i.i160 ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i.i.i170 = phi i64 [ %.sroa.6.0.copyload.i.i.i159, %bb.oa ], [ 0, %._crit_edge.i.i.i.i160 ]
  store i64 %.sink31.i.i.i.i.i.i169, ptr %i.i, align 8, !noalias !4179
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sink31.i.i.i.i.i.i169, ptr %i.bxn, align 8, !noalias !4179
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i.i.i170, ptr %i.bxo, align 8, !noalias !4179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4180
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTjjEmE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.split-lp.i60, !noalias !4012

.noexc30.i:                                       ; preds = %.noexc139.i.i.i.i
  %i.bxp = load ptr, ptr %i.h, align 8, !noalias !4180, !noundef !28
  %.not5.i.i.i.i.i.i.i.i171 = icmp eq ptr %i.bxp, null
  br i1 %.not5.i.i.i.i.i.i.i.i171, label %.loopexit.i.i.i.i175, label %.lr.ph.i.i.i.i138.i.i.i.i

.lr.ph.i.i.i.i138.i.i.i.i:                        ; preds = %.noexc30.i, %.noexc31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4180
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTjjEmE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc31.i unwind label %.loopexit.i172, !noalias !4012

.noexc31.i:                                       ; preds = %.lr.ph.i.i.i.i138.i.i.i.i
  %i.bxq = load ptr, ptr %i.h, align 8, !noalias !4180, !noundef !28
  %.not.i.i.i.i.i.i.i.i174 = icmp eq ptr %i.bxq, null
  br i1 %.not.i.i.i.i.i.i.i.i174, label %.loopexit.i.i.i.i175, label %.lr.ph.i.i.i.i138.i.i.i.i

bb.ob:                                            ; preds = %bb.ot, %.lr.ph.i.i.i.i176
  %.sroa.0.0317.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i176 ], [ %.sroa.0.2.i.i.i.i197, %bb.ot ] ; 5 uses
  %.sroa.016.0315.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i176 ], [ %.sroa.016.2.i.i.i.i196, %bb.ot ] ; 7 uses
  %i.bxr = add i64 %.sroa.0.0317.i.i.i.i, %i.brp  ; 4 uses
  %i.bxs = add i64 %.sroa.016.0315.i.i.i.i, %i.brq ; 4 uses
  %i.bxt = sub i64 %i.bxs, %i.bxc                 ; 3 uses
  %i.bxu = icmp ult i64 %i.bxt, %i.bxd
  br i1 %i.bxu, label %bb.oe, label %.invoke.i.i.i.i177

.loopexit.i.i.i.i175:                             ; preds = %.noexc31.i, %.noexc30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4179
  br label %bb.oc

bb.oc:                                            ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit105.i.i.i.i, %.loopexit.i.i.i.i175
  %.sroa.016.1.i.i.i.i147 = phi i64 [ %.sroa.016.0.lcssa.i.i.i.i161, %.loopexit.i.i.i.i175 ], [ 0, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit105.i.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i.i148 = phi i64 [ %.sroa.0.0.lcssa.i.i.i.i162, %.loopexit.i.i.i.i175 ], [ 0, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit105.i.i.i.i ] ; 4 uses
  %i.bxv = icmp ult i64 %.sroa.0.1.i.i.i.i148, %i.bws
  br i1 %i.bxv, label %bb.ox, label %bb.oz

.loopexit250.i.i.i.i:                             ; preds = %bb.os, %bb.oq, %bb.ol
  %lpad.loopexit.i.i.i.i199 = landingpad { ptr, i32 }
          cleanup
  br label %bb.od

.loopexit.split-lp.i.i.i.i178:                    ; preds = %.invoke.i.i.i.i177
  %lpad.loopexit.split-lp.i.i.i.i179 = landingpad { ptr, i32 }
          cleanup
  br label %bb.od

bb.od:                                            ; preds = %.loopexit.split-lp.i.i.i.i178, %.loopexit250.i.i.i.i
  %lpad.phi.i.i.i.i180 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i199, %.loopexit250.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i179, %.loopexit.split-lp.i.i.i.i178 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTjjEmEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bwz) #72
          to label %.body.i61 unwind label %bb.ov, !noalias !4124

bb.oe:                                            ; preds = %bb.ob
  %i.bxw = sub i64 %i.bxr, %i.bxe                 ; 3 uses
  %i.bxx = icmp ult i64 %i.bxw, %i.bxf
  br i1 %i.bxx, label %bb.of, label %.invoke.i.i.i.i177

.invoke.i.i.i.i177:                               ; preds = %bb.oe, %bb.ob
  %i.bxy = phi i64 [ %i.bxw, %bb.oe ], [ %i.bxt, %bb.ob ]
  %i.bxz = phi i64 [ %i.bxf, %bb.oe ], [ %i.bxd, %bb.ob ]
  %i.bya = phi ptr [ @208, %bb.oe ], [ @207, %bb.ob ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bxy, i64 noundef %i.bxz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bya) #75
          to label %.cont.i.i.i.i181 unwind label %.loopexit.split-lp.i.i.i.i178, !noalias !4124

.cont.i.i.i.i181:                                 ; preds = %.invoke.i.i.i.i177
  unreachable

bb.of:                                            ; preds = %bb.oe
  %i.byb = getelementptr inbounds nuw [4 x i8], ptr %i.bxh, i64 %i.bxt
  %i.byc = getelementptr inbounds nuw [4 x i8], ptr %i.bxj, i64 %i.bxw
  %.val120.i.i.i.i = load i32, ptr %i.byb, align 4, !noalias !4124, !noundef !28
  %.val121.i.i.i.i = load i32, ptr %i.byc, align 4, !noalias !4124, !noundef !28
  %i.byd = icmp eq i32 %.val120.i.i.i.i, %.val121.i.i.i.i
  br i1 %i.byd, label %bb.ok, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.bye = add nuw i64 %.sroa.0.0317.i.i.i.i, 1   ; 2 uses
  br i1 %.not.i141.i.i.i.i, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i201, label %.preheader.i142.i.i.i.i

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i201: ; preds = %bb.og
  %i.byf = add nuw i64 %.sroa.016.0315.i.i.i.i, 1
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit160.i.i.i.i

.preheader.i142.i.i.i.i:                          ; preds = %bb.og, %bb.oj
  %.sroa.3.0.i.i.i.i.i.i182 = phi i64 [ %i.byx, %bb.oj ], [ %.sroa.4.0.copyload.i.i.i158, %bb.og ] ; 2 uses
  %.sroa.0.0.i.i143.i.i.i.i = phi ptr [ %i.byw, %bb.oj ], [ %.sroa.08.0.copyload.i.i.i, %bb.og ] ; 5 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i143.i.i.i.i, i64 230
  %i.byh = load i16, ptr %i.byg, align 2, !noalias !4181, !noundef !28 ; 2 uses
  %i.byi = zext i16 %i.byh to i64                 ; 3 uses
  %.idx211 = shl nuw nsw i64 %i.byi, 4
  %i.byj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i143.i.i.i.i, i64 %.idx211
  %i.byk = icmp eq i16 %i.byh, 0
  br i1 %i.byk, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185

bb.oh:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185
  %i.byl = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i184193, i64 16 ; 2 uses
  %i.bym = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i183192, 1
  %i.byn = icmp eq ptr %i.byl, %i.byj
  br i1 %i.byn, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185: ; preds = %.preheader.i142.i.i.i.i, %bb.oh
  %.sroa.0.03.i.i.i.i.i.i.i184193 = phi ptr [ %i.byl, %bb.oh ], [ %.sroa.0.0.i.i143.i.i.i.i, %.preheader.i142.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i.i.i.i.i183192 = phi i64 [ %i.bym, %bb.oh ], [ 0, %.preheader.i142.i.i.i.i ] ; 4 uses
  %.val7.i.i.i.i.i.i.i186 = load i64, ptr %.sroa.0.03.i.i.i.i.i.i.i184193, align 8, !noalias !4181, !noundef !28 ; 2 uses
  %i.byo = getelementptr i8, ptr %.sroa.0.03.i.i.i.i.i.i.i184193, i64 8
  %.val8.i.i.i.i.i.i.i187 = load i64, ptr %i.byo, align 8, !noalias !4181
  %i.byp = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.016.0315.i.i.i.i, i64 %.val7.i.i.i.i.i.i.i186)
  %i.byq = icmp eq i64 %.sroa.016.0315.i.i.i.i, %.val7.i.i.i.i.i.i.i186
  %i.byr = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.bye, i64 %.val8.i.i.i.i.i.i.i187)
  %.sroa.0.0.i9.i.i.i.i.i.i.i188 = select i1 %i.byq, i8 %i.byr, i8 %i.byp
  switch i8 %.sroa.0.0.i9.i.i.i.i.i.i.i188, label %bb.oi [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i189
    i8 1, label %bb.oh
  ]

bb.oi:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185._crit_edge: ; preds = %bb.oh, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185, %.preheader.i142.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i.i.i200 = phi i64 [ %i.byi, %.preheader.i142.i.i.i.i ], [ %i.byi, %bb.oh ], [ %.sroa.8.0.i.i.i.i.i.i.i183192, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185 ] ; 2 uses
  %i.bys = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i182, 0
  br i1 %i.bys, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i190, label %bb.oj

bb.oj:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185._crit_edge
  %i.byt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i143.i.i.i.i, i64 232
  %i.byu = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i200, 12
  call void @llvm.assume(i1 %i.byu)
  %i.byv = getelementptr inbounds nuw [8 x i8], ptr %i.byt, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i200
  %i.byw = load ptr, ptr %i.byv, align 8, !noalias !4181, !nonnull !28, !noundef !28
  %i.byx = add i64 %.sroa.3.0.i.i.i.i.i.i182, -1
  br label %.preheader.i142.i.i.i.i

_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i189: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185
  %i.byy = icmp samesign ult i64 %.sroa.8.0.i.i.i.i.i.i.i183192, 11
  call void @llvm.assume(i1 %i.byy)
  %i.byz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i143.i.i.i.i, i64 184
  %i.bza = getelementptr inbounds nuw [4 x i8], ptr %i.byz, i64 %.sroa.8.0.i.i.i.i.i.i.i183192
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i190

bb.ok:                                            ; preds = %bb.of
  %i.bzb = load i64, ptr %.sroa.512.0..sroa_idx.i59, align 8, !alias.scope !4182, !noalias !4183, !noundef !28 ; 3 uses
  %i.bzc = load i64, ptr %i.bbz, align 8, !range !43, !alias.scope !4182, !noalias !4183, !noundef !28
  %i.bzd = icmp eq i64 %i.bzb, %i.bzc
  br i1 %i.bzd, label %bb.ol, label %bb.ou

bb.ol:                                            ; preds = %bb.ok
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bbz) #74
          to label %bb.ou unwind label %.loopexit250.i.i.i.i, !noalias !4124

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i190: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185._crit_edge, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i189
  %.sroa.0.0.i144.i.i.i.i = phi ptr [ %i.bza, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i189 ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i185._crit_edge ] ; 2 uses
  %.not94.i.i.i.i191 = icmp eq ptr %.sroa.0.0.i144.i.i.i.i, null
  %..i.i.i.i = select i1 %.not94.i.i.i.i191, ptr @206, ptr %.sroa.0.0.i144.i.i.i.i ; 2 uses
  %i.bze = add i64 %.sroa.016.0315.i.i.i.i, 1     ; 4 uses
  br label %.preheader.i148.i.i.i.i

.preheader.i148.i.i.i.i:                          ; preds = %bb.oo, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i190
  %.sroa.3.0.i.i149.i.i.i.i = phi i64 [ %i.bzw, %bb.oo ], [ %.sroa.4.0.copyload.i.i.i158, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i190 ] ; 2 uses
  %.sroa.0.0.i.i150.i.i.i.i = phi ptr [ %i.bzv, %bb.oo ], [ %.sroa.08.0.copyload.i.i.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.i.i.i.i190 ] ; 5 uses
  %i.bzf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i150.i.i.i.i, i64 230
  %i.bzg = load i16, ptr %i.bzf, align 2, !noalias !4184, !noundef !28 ; 2 uses
  %i.bzh = zext i16 %i.bzg to i64                 ; 3 uses
  %.idx212 = shl nuw nsw i64 %i.bzh, 4
  %i.bzi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i150.i.i.i.i, i64 %.idx212
  %i.bzj = icmp eq i16 %i.bzg, 0
  br i1 %i.bzj, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i

bb.om:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i
  %i.bzk = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i152.i.i.i.i198, i64 16 ; 2 uses
  %i.bzl = add nuw nsw i64 %.sroa.8.0.i.i.i151.i.i.i.i197, 1
  %i.bzm = icmp eq ptr %i.bzk, %i.bzi
  br i1 %i.bzm, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i: ; preds = %.preheader.i148.i.i.i.i, %bb.om
  %.sroa.0.03.i.i.i152.i.i.i.i198 = phi ptr [ %i.bzk, %bb.om ], [ %.sroa.0.0.i.i150.i.i.i.i, %.preheader.i148.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i151.i.i.i.i197 = phi i64 [ %i.bzl, %bb.om ], [ 0, %.preheader.i148.i.i.i.i ] ; 4 uses
  %.val7.i.i.i154.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i152.i.i.i.i198, align 8, !noalias !4184, !noundef !28 ; 2 uses
  %i.bzn = getelementptr i8, ptr %.sroa.0.03.i.i.i152.i.i.i.i198, i64 8
  %.val8.i.i.i155.i.i.i.i = load i64, ptr %i.bzn, align 8, !noalias !4184
  %i.bzo = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.bze, i64 %.val7.i.i.i154.i.i.i.i)
  %i.bzp = icmp eq i64 %i.bze, %.val7.i.i.i154.i.i.i.i
  %i.bzq = call range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.0.0317.i.i.i.i, i64 %.val8.i.i.i155.i.i.i.i)
  %.sroa.0.0.i9.i.i.i156.i.i.i.i = select i1 %i.bzp, i8 %i.bzq, i8 %i.bzo
  switch i8 %.sroa.0.0.i9.i.i.i156.i.i.i.i, label %bb.on [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i157.i.i.i.i
    i8 1, label %bb.om
  ]

bb.on:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i._crit_edge: ; preds = %bb.om, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i, %.preheader.i148.i.i.i.i
  %.sroa.4.0.i.ph.i.i159.i.i.i.i = phi i64 [ %i.bzh, %.preheader.i148.i.i.i.i ], [ %i.bzh, %bb.om ], [ %.sroa.8.0.i.i.i151.i.i.i.i197, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i ] ; 2 uses
  %i.bzr = icmp eq i64 %.sroa.3.0.i.i149.i.i.i.i, 0
  br i1 %i.bzr, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit160.i.i.i.i, label %bb.oo

bb.oo:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i._crit_edge
  %i.bzs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i150.i.i.i.i, i64 232
  %i.bzt = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i159.i.i.i.i, 12
  call void @llvm.assume(i1 %i.bzt)
  %i.bzu = getelementptr inbounds nuw [8 x i8], ptr %i.bzs, i64 %.sroa.4.0.i.ph.i.i159.i.i.i.i
  %i.bzv = load ptr, ptr %i.bzu, align 8, !noalias !4184, !nonnull !28, !noundef !28
  %i.bzw = add i64 %.sroa.3.0.i.i149.i.i.i.i, -1
  br label %.preheader.i148.i.i.i.i

_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i157.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i
  %i.bzx = icmp samesign ult i64 %.sroa.8.0.i.i.i151.i.i.i.i197, 11
  call void @llvm.assume(i1 %i.bzx)
  %i.bzy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i150.i.i.i.i, i64 184
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %i.bzy, i64 %.sroa.8.0.i.i.i151.i.i.i.i197
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit160.i.i.i.i

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit160.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i._crit_edge, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i157.i.i.i.i, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i201
  %i.caa = phi i64 [ %i.byf, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i201 ], [ %i.bze, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i157.i.i.i.i ], [ %i.bze, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i._crit_edge ]
  %.249.i.i.i.i = phi ptr [ @206, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i201 ], [ %..i.i.i.i, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i157.i.i.i.i ], [ %..i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i._crit_edge ]
  %.sroa.0.0.i158.i.i.i.i = phi ptr [ null, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i201 ], [ %i.bzz, %_RINvMs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutTjjEmNtB1i_14LeafOrInternalE11search_treeB1A_ECskXtk6F4WjxZ_4just.exit.i157.i.i.i.i ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i153.i.i.i.i._crit_edge ] ; 2 uses
  %.not95.i.i.i.i192 = icmp eq ptr %.sroa.0.0.i158.i.i.i.i, null
  %.98.i.i.i.i = select i1 %.not95.i.i.i.i192, ptr @206, ptr %.sroa.0.0.i158.i.i.i.i
  %i.cab = load i32, ptr %.249.i.i.i.i, align 4, !noalias !4124, !noundef !28
  %i.cac = load i32, ptr %.98.i.i.i.i, align 4, !noalias !4124, !noundef !28
  %.not96.i.i.i.i193 = icmp ult i32 %i.cab, %i.cac
  %i.cad = load i64, ptr %.sroa.512.0..sroa_idx.i59, align 8, !alias.scope !4185, !noalias !4186, !noundef !28 ; 5 uses
  %i.cae = load i64, ptr %i.bbz, align 8, !range !43, !alias.scope !4185, !noalias !4186, !noundef !28
  %i.caf = icmp eq i64 %i.cad, %i.cae             ; 2 uses
  br i1 %.not96.i.i.i.i193, label %bb.op, label %bb.or

bb.op:                                            ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit160.i.i.i.i
  br i1 %i.caf, label %bb.oq, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit106.i.i.i.i

bb.oq:                                            ; preds = %bb.op
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bbz) #74
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit106.i.i.i.i unwind label %.loopexit250.i.i.i.i, !noalias !4124

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit106.i.i.i.i: ; preds = %bb.oq, %bb.op
  %i.cag = load ptr, ptr %.sroa.411.0..sroa_idx.i58, align 8, !alias.scope !4187, !noalias !4188, !nonnull !28, !noundef !28
  %i.cah = getelementptr inbounds nuw [40 x i8], ptr %i.cag, i64 %i.cad ; 4 uses
  store i64 2, ptr %i.cah, align 8, !noalias !4124
  %.sroa.4233.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cah, i64 8
  store i64 %i.bxr, ptr %.sroa.4233.0..sroa_idx.i.i.i.i, align 8, !noalias !4124
  %.sroa.5234.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cah, i64 16
  store i64 %i.bxs, ptr %.sroa.5234.0..sroa_idx.i.i.i.i, align 8, !noalias !4124
  %.sroa.6235.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cah, i64 24
  store i64 1, ptr %.sroa.6235.0..sroa_idx.i.i.i.i, align 8, !noalias !4124
  %i.cai = add i64 %i.cad, 1
  store i64 %i.cai, ptr %.sroa.512.0..sroa_idx.i59, align 8, !alias.scope !4187, !noalias !4188
  br label %bb.ot

bb.or:                                            ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB18_ECskXtk6F4WjxZ_4just.exit160.i.i.i.i
  br i1 %i.caf, label %bb.os, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit103.i.i.i.i

bb.os:                                            ; preds = %bb.or
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bbz) #74
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit103.i.i.i.i unwind label %.loopexit250.i.i.i.i, !noalias !4124

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit103.i.i.i.i: ; preds = %bb.os, %bb.or
  %i.caj = load ptr, ptr %.sroa.411.0..sroa_idx.i58, align 8, !alias.scope !4189, !noalias !4190, !nonnull !28, !noundef !28
  %i.cak = getelementptr inbounds nuw [40 x i8], ptr %i.caj, i64 %i.cad ; 4 uses
  store i64 1, ptr %i.cak, align 8, !noalias !4124
  %.sroa.4208.0..sroa_idx.i.i.i.i194 = getelementptr inbounds nuw i8, ptr %i.cak, i64 8
  store i64 %i.bxr, ptr %.sroa.4208.0..sroa_idx.i.i.i.i194, align 8, !noalias !4124
  %.sroa.5209.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cak, i64 16
  store i64 1, ptr %.sroa.5209.0..sroa_idx.i.i.i.i, align 8, !noalias !4124
  %.sroa.6210.0..sroa_idx.i.i.i.i195 = getelementptr inbounds nuw i8, ptr %i.cak, i64 24
  store i64 %i.bxs, ptr %.sroa.6210.0..sroa_idx.i.i.i.i195, align 8, !noalias !4124
  %i.cal = add i64 %i.cad, 1
  store i64 %i.cal, ptr %.sroa.512.0..sroa_idx.i59, align 8, !alias.scope !4189, !noalias !4190
  br label %bb.ot

bb.ot:                                            ; preds = %bb.ou, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit103.i.i.i.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit106.i.i.i.i
  %.sroa.016.2.i.i.i.i196 = phi i64 [ %i.cas, %bb.ou ], [ %i.caa, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit106.i.i.i.i ], [ %.sroa.016.0315.i.i.i.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit103.i.i.i.i ] ; 3 uses
  %.sroa.0.2.i.i.i.i197 = phi i64 [ %i.car, %bb.ou ], [ %.sroa.0.0317.i.i.i.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit106.i.i.i.i ], [ %i.bye, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit103.i.i.i.i ] ; 3 uses
  %i.cam = icmp ult i64 %.sroa.016.2.i.i.i.i196, %i.bwr
  %i.can = icmp ult i64 %.sroa.0.2.i.i.i.i197, %i.bws
  %or.cond3.i.i.i.i198 = select i1 %i.cam, i1 %i.can, i1 false
  br i1 %or.cond3.i.i.i.i198, label %bb.ob, label %._crit_edge.i.i.i.i160

bb.ou:                                            ; preds = %bb.ol, %bb.ok
  %i.cao = load ptr, ptr %.sroa.411.0..sroa_idx.i58, align 8, !alias.scope !4182, !noalias !4183, !nonnull !28, !noundef !28
  %i.cap = getelementptr inbounds nuw [40 x i8], ptr %i.cao, i64 %i.bzb ; 4 uses
  store i64 0, ptr %i.cap, align 8, !noalias !4124
  %.sroa.4188.0..sroa_idx.i.i.i.i202 = getelementptr inbounds nuw i8, ptr %i.cap, i64 8
  store i64 %i.bxr, ptr %.sroa.4188.0..sroa_idx.i.i.i.i202, align 8, !noalias !4124
  %.sroa.5189.0..sroa_idx.i.i.i.i203 = getelementptr inbounds nuw i8, ptr %i.cap, i64 16
  store i64 %i.bxs, ptr %.sroa.5189.0..sroa_idx.i.i.i.i203, align 8, !noalias !4124
  %.sroa.6190.0..sroa_idx.i.i.i.i204 = getelementptr inbounds nuw i8, ptr %i.cap, i64 24
  store i64 1, ptr %.sroa.6190.0..sroa_idx.i.i.i.i204, align 8, !noalias !4124
  %i.caq = add i64 %i.bzb, 1
  store i64 %i.caq, ptr %.sroa.512.0..sroa_idx.i59, align 8, !alias.scope !4182, !noalias !4183
  %i.car = add nuw i64 %.sroa.0.0317.i.i.i.i, 1
  %i.cas = add nuw i64 %.sroa.016.0315.i.i.i.i, 1
  br label %bb.ot

bb.ov:                                            ; preds = %bb.pg, %bb.od
  %i.cat = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !4124
  unreachable

.noexc29.i143:                                    ; preds = %bb.nz, %bb.ny
  %i.cau = load ptr, ptr %.sroa.411.0..sroa_idx.i58, align 8, !alias.scope !4177, !noalias !4178, !nonnull !28, !noundef !28
  %i.cav = getelementptr inbounds nuw [40 x i8], ptr %i.cau, i64 %i.bxk ; 4 uses
  store i64 1, ptr %i.cav, align 8, !noalias !4124
  %.sroa.4213.0..sroa_idx.i.i.i.i144 = getelementptr inbounds nuw i8, ptr %i.cav, i64 8
  store i64 %i.brp, ptr %.sroa.4213.0..sroa_idx.i.i.i.i144, align 8, !noalias !4124
  %.sroa.5214.0..sroa_idx.i.i.i.i145 = getelementptr inbounds nuw i8, ptr %i.cav, i64 16
  store i64 %i.bws, ptr %.sroa.5214.0..sroa_idx.i.i.i.i145, align 8, !noalias !4124
  %.sroa.6215.0..sroa_idx.i.i.i.i146 = getelementptr inbounds nuw i8, ptr %i.cav, i64 24
  store i64 %i.brq, ptr %.sroa.6215.0..sroa_idx.i.i.i.i146, align 8, !noalias !4124
  %i.caw = add i64 %i.bxk, 1                      ; 3 uses
  store i64 %i.caw, ptr %.sroa.512.0..sroa_idx.i59, align 8, !alias.scope !4177, !noalias !4178
  %i.cax = load i64, ptr %i.bbz, align 8, !range !43, !alias.scope !4191, !noalias !4192, !noundef !28
  %i.cay = icmp eq i64 %i.caw, %i.cax
  br i1 %i.cay, label %bb.ow, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit105.i.i.i.i

bb.ow:                                            ; preds = %.noexc29.i143
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bbz) #74
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit105.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i60, !noalias !4012

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit105.i.i.i.i: ; preds = %bb.ow, %.noexc29.i143
  %i.caz = load ptr, ptr %.sroa.411.0..sroa_idx.i58, align 8, !alias.scope !4191, !noalias !4192, !nonnull !28, !noundef !28
  %i.cba = getelementptr inbounds nuw [40 x i8], ptr %i.caz, i64 %i.caw ; 4 uses
  store i64 2, ptr %i.cba, align 8, !noalias !4124
  %.sroa.4228.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cba, i64 8
  store i64 %i.brp, ptr %.sroa.4228.0..sroa_idx.i.i.i.i, align 8, !noalias !4124
  %.sroa.5229.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cba, i64 16
  store i64 %i.brq, ptr %.sroa.5229.0..sroa_idx.i.i.i.i, align 8, !noalias !4124
  %.sroa.6230.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cba, i64 24
  store i64 %i.bwr, ptr %.sroa.6230.0..sroa_idx.i.i.i.i, align 8, !noalias !4124
  %i.cbb = add i64 %i.bxk, 2
  store i64 %i.cbb, ptr %.sroa.512.0..sroa_idx.i59, align 8, !alias.scope !4191, !noalias !4192
  br label %bb.oc

bb.ox:                                            ; preds = %bb.oc
  %i.cbc = add i64 %.sroa.0.1.i.i.i.i148, %i.brp
  %i.cbd = sub nuw i64 %i.bws, %.sroa.0.1.i.i.i.i148
  %i.cbe = add i64 %.sroa.016.1.i.i.i.i147, %i.brq
  %i.cbf = load i64, ptr %.sroa.512.0..sroa_idx.i59, align 8, !alias.scope !4193, !noalias !4194, !noundef !28 ; 3 uses
  %i.cbg = load i64, ptr %i.bbz, align 8, !range !43, !alias.scope !4193, !noalias !4194, !noundef !28
  %i.cbh = icmp eq i64 %i.cbf, %i.cbg
  br i1 %i.cbh, label %bb.oy, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.oy:                                            ; preds = %bb.ox
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bbz) #74
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i60, !noalias !4012

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.oy, %bb.ox
  %i.cbi = load ptr, ptr %.sroa.411.0..sroa_idx.i58, align 8, !alias.scope !4193, !noalias !4194, !nonnull !28, !noundef !28
  %i.cbj = getelementptr inbounds nuw [40 x i8], ptr %i.cbi, i64 %i.cbf ; 4 uses
  store i64 1, ptr %i.cbj, align 8, !noalias !4124
  %.sroa.4203.0..sroa_idx.i.i.i.i155 = getelementptr inbounds nuw i8, ptr %i.cbj, i64 8
  store i64 %i.cbc, ptr %.sroa.4203.0..sroa_idx.i.i.i.i155, align 8, !noalias !4124
  %.sroa.5204.0..sroa_idx.i.i.i.i156 = getelementptr inbounds nuw i8, ptr %i.cbj, i64 16
  store i64 %i.cbd, ptr %.sroa.5204.0..sroa_idx.i.i.i.i156, align 8, !noalias !4124
end_hunk_0
begin_hunk_1_@_RNvMNtCskXtk6F4WjxZ_4just6searchNtB2_6Search13with_justfile:bb.a
  %lpad.loopexit259.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.loopexit.split-lp246.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke1445.i, %.invoke.i
  %lpad.loopexit.split-lp260.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.cf:                                            ; preds = %bb.cb, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE8push_mutCskXtk6F4WjxZ_4just.exit.i42.i.i
  %.sink576.i.i = phi i64 [ %.sroa.021.0.i.i, %bb.cb ], [ %i.jt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE8push_mutCskXtk6F4WjxZ_4just.exit.i42.i.i ]
  %.sink574.i.i = phi i64 [ 40, %bb.cb ], [ 32, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE8push_mutCskXtk6F4WjxZ_4just.exit.i42.i.i ]
  %i.ke = load ptr, ptr %i.bb, align 8, !alias.scope !48733, !noalias !48734, !nonnull !28, !noundef !28
  %i.kf = getelementptr inbounds nuw [48 x i8], ptr %i.ke, i64 %.sink576.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.sink574.i.i
  %storemerge.i.i = load i64, ptr %i.kg, align 8, !noalias !48738, !noundef !28
  store i64 %storemerge.i.i, ptr %i.ax, align 8, !alias.scope !48733, !noalias !48734
  %.sroa.8.0.copyload152.i = load i8, ptr %.sroa.8.0..sroa_idx151.i, align 1, !noalias !48748 ; 2 uses
  %.sroa.9.0.copyload154.i = load i8, ptr %.sroa.9.0..sroa_idx153.i, align 2, !noalias !48748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !48732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(77) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(77) %.sroa.10.0..sroa_idx155.i, i64 77, i1 false), !noalias !48732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48745
  store i8 %i.jr, ptr %i.i, align 8, !noalias !48732
  store i8 %.sroa.8.0.copyload152.i, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !48732
  store i8 %.sroa.9.0.copyload154.i, ptr %.sroa.9.0..sroa_idx.i, align 2, !noalias !48732
  %i.kh = icmp samesign ugt i8 %i.jr, 22
  br i1 %i.kh, label %bb.cg, label %.thread202.i

bb.cg:                                            ; preds = %bb.cf
  switch i8 %i.jr, label %bb.dr [
    i8 24, label %bb.db
    i8 23, label %bb.da
  ]

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.n
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCse6cJcrsIENc_14pulldown_cmark5parse10OffsetIterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(576) %i.j), !noalias !48739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !48732
  %i.ki = load ptr, ptr %i.av, align 8, !noalias !48732, !nonnull !28, !noundef !28 ; 4 uses
  %i.kj = load i64, ptr %i.l, align 8, !range !43, !noalias !48732, !noundef !28 ; 4 uses
  %i.kk = icmp ult i64 %i.bw, 576460752303423488
  call void @llvm.assume(i1 %i.kk)
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.ki, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !48732
  store i64 0, ptr %i.f, align 8, !noalias !48732
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 8 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !48732
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !48732
  br label %.lr.ph.split.preheader.i.i.i

.loopexit.i:                                      ; preds = %bb.cj
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i.split:              ; preds = %bb.cu
  %lpad.loopexit1041.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i, %bb.cv
  %lpad.loopexit1044.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.i.split.us.loopexit, %.loopexit.split-lp.loopexit.i.split.us.loopexit.split-lp, %.loopexit.split-lp.loopexit.i.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit1044.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit1041.i, %.loopexit.split-lp.loopexit.i.split ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit.i.split.us.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.i.split.us.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48749)
  call void @llvm.experimental.noalias.scope.decl(metadata !48750)
  %.val.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !48751, !noalias !48732 ; 2 uses
  %i.km = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.km, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, label %bb.ch

bb.ch:                                            ; preds = %.loopexit.split-lp.i
  %.val1.i.i.i = load ptr, ptr %.sroa.445.0..sroa_idx.i, align 8, !alias.scope !48751, !noalias !48732, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !48752
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i

bb.ci:                                            ; preds = %bb.cz
  br i1 %i.md, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.jt1.i, label %.lr.ph.split.preheader.i.i.i.backedge

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.split.preheader.i.i.i.backedge, %.lr.ph.i
  %i.kn = phi ptr [ inttoptr (i64 1 to ptr), %.lr.ph.i ], [ %.be, %.lr.ph.split.preheader.i.i.i.backedge ] ; 3 uses
  %.lcssa5875881003.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa586.i, %.lr.ph.split.preheader.i.i.i.backedge ] ; 4 uses
  %.sroa.0167.0589999.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0167.0589999.i.be, %.lr.ph.split.preheader.i.i.i.backedge ] ; 2 uses
  %.sroa.20.0590996.i = phi ptr [ %i.ki, %.lr.ph.i ], [ %.sroa.20.0590996.i.be, %.lr.ph.split.preheader.i.i.i.backedge ] ; 8 uses
  %.sroa.13162.0591993.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.13162.0591993.i.be, %.lr.ph.split.preheader.i.i.i.backedge ] ; 2 uses
  %.sroa.9160.0592990.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.9160.0592990.i.be, %.lr.ph.split.preheader.i.i.i.backedge ] ; 2 uses
  %.sroa.0157.0593987.i = phi i64 [ 2, %.lr.ph.i ], [ %.sroa.0157.0593987.i.be, %.lr.ph.split.preheader.i.i.i.backedge ]
  %.lcssa584597986.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa584595.i.fr, %.lr.ph.split.preheader.i.i.i.backedge ]
  %i.ko = phi i64 [ 0, %.lr.ph.i ], [ %.be690, %.lr.ph.split.preheader.i.i.i.backedge ] ; 4 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.cl, %.lr.ph.split.preheader.i.i.i
  %i.kp = phi i64 [ %i.ld, %bb.cl ], [ %.lcssa584597986.i, %.lr.ph.split.preheader.i.i.i ] ; 5 uses
  %i.kq = sub nuw i64 %i.as, %i.kp                ; 4 uses
  %i.kr = getelementptr i8, ptr %i.at, i64 %i.kp  ; 3 uses
  %i.ks = icmp samesign ult i64 %i.kq, 16
  br i1 %i.ks, label %.preheader.i.i.i.i, label %bb.cj

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.kp, %i.as
  br i1 %.not.i.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i, label %.lr.ph.i.i.i.i

bb.cj:                                            ; preds = %.lr.ph.split.i.i.i
  %i.kt = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kr, i64 noundef range(i64 0, -9223372036854775808) %i.kq)
          to label %.noexc130.i unwind label %.loopexit.i, !noalias !48739 ; 2 uses

.noexc130.i:                                      ; preds = %bb.cj
  %i.ku = extractvalue { i64, i64 } %i.kt, 0
  %i.kv = extractvalue { i64, i64 } %i.kt, 1
  %i.kw = trunc nuw i64 %i.ku to i1
  br i1 %i.kw, label %.loopexit.i.i128.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.ck
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.la, %bb.ck ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.sroa.04.011.i.i.i.i
  %i.ky = load i8, ptr %i.kx, align 1, !alias.scope !48753, !noalias !48754, !noundef !28
  %i.kz = icmp eq i8 %i.ky, 10
  br i1 %i.kz, label %.loopexit.i.i128.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i
  %i.la = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.la, %i.kq
  br i1 %exitcond.not.i.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i128.i:                               ; preds = %.lr.ph.i.i.i.i, %.noexc130.i
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.kv, %.noexc130.i ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.lb = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.kq
  call void @llvm.assume(i1 %i.lb)
  %i.lc = add i64 %i.kp, 1
  %i.ld = add i64 %i.lc, %.sroa.5.0.i.i.i.i       ; 6 uses
  %.not12.i.i.i = icmp ugt i64 %i.ld, %i.as
  %i.le = add i64 %.sroa.5.0.i.i.i.i, %i.kp
  %or.cond.i.i129.not.i = icmp ult i64 %i.le, %i.as
  br i1 %or.cond.i.i129.not.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.cm, %.loopexit.i.i128.i
  br i1 %.not12.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i, label %.lr.ph.split.i.i.i

bb.cm:                                            ; preds = %.loopexit.i.i128.i
  %i.lf = getelementptr i8, ptr %i.kr, i64 %.sroa.5.0.i.i.i.i
  %lhsc.i = load i8, ptr %i.lf, align 1, !alias.scope !48731, !noalias !48739
  %i.lg = icmp eq i8 %lhsc.i, 10
  br i1 %i.lg, label %select.unfold.i, label %bb.cl

_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.cl, %.preheader.i.i.i.i, %.noexc130.i, %bb.ck
  %.lcssa584596.i = phi i64 [ %i.as, %bb.ck ], [ %i.as, %.noexc130.i ], [ %i.ld, %bb.cl ], [ %i.as, %.preheader.i.i.i.i ]
  %.not.i3.i.not.i = icmp eq i64 %.lcssa5875881003.i, %i.as
  br i1 %.not.i3.i.not.i, label %._crit_edge.i, label %select.unfold.i

_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.jt1.i: ; preds = %bb.ci
  br i1 %.not.i3.i.not.jt1.i, label %._crit_edge.i, label %select.unfold.jt1.i

select.unfold.i:                                  ; preds = %bb.cm, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i
  %.lcssa584595.i = phi i64 [ %.lcssa584596.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.ld, %bb.cm ]
  %.lcssa586.i = phi i64 [ %.lcssa5875881003.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.ld, %bb.cm ] ; 5 uses
  %i.lh = phi i1 [ true, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i ], [ false, %bb.cm ] ; 3 uses
  %.pn598.i = phi i64 [ %i.as, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.ld, %bb.cm ] ; 2 uses
  %.lcssa584595.i.fr = freeze i64 %.lcssa584595.i ; 3 uses
  %.sroa.4.1.i.i = sub nuw i64 %.pn598.i, %.lcssa5875881003.i ; 2 uses
  %i.li = add i64 %.sroa.4.1.i.i, %.sroa.0167.0589999.i ; 4 uses
  switch i64 %.sroa.0157.0593987.i, label %.preheader.i [
    i64 2, label %bb.cq
    i64 0, label %.thread219.jt0.preheader.i
  ]

.thread219.jt0.preheader.i:                       ; preds = %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i, %bb.cq, %select.unfold.i
  %i.lj = phi ptr [ %i.kn, %select.unfold.i ], [ %i.kn, %bb.cq ], [ %i.me, %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i ] ; 2 uses
  %.ph1038.i = phi i64 [ %i.li, %select.unfold.i ], [ %i.li, %bb.cq ], [ %i.mf, %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i ]
  %.ph1039.i = phi i1 [ %i.lh, %select.unfold.i ], [ %i.lh, %bb.cq ], [ %i.mg, %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i ] ; 2 uses
  %.ph1040.i = phi i64 [ %i.ko, %select.unfold.i ], [ %i.ko, %bb.cq ], [ %i.mh, %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i ] ; 11 uses
  %.sroa.20.1.lcssa.ph.i = phi ptr [ %.sroa.20.0590996.i, %select.unfold.i ], [ %.sroa.20.0590996.i, %bb.cq ], [ %.sroa.20.1.i, %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i ]
  %.sroa.9160.2.ph226.ph.ph.i = phi i64 [ %.sroa.9160.0592990.i, %select.unfold.i ], [ undef, %bb.cq ], [ undef, %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i ]
  %.sroa.13162.2.ph225.ph.ph.i = phi i64 [ %.sroa.13162.0591993.i, %select.unfold.i ], [ undef, %bb.cq ], [ undef, %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i ]
  %i.lk = icmp ugt i64 %.lcssa584595.i.fr, %i.as
  br i1 %i.lk, label %.thread219.jt0.preheader.i.split.us, label %.thread219.jt0.preheader.i.split

.thread219.jt0.preheader.i.split.us:              ; preds = %.thread219.jt0.preheader.i
  %.not.i3.i.not.jt0.i.le = icmp eq i64 %.lcssa586.i, %i.as
  %i.ll = icmp sgt i64 %.ph1040.i, -1
  call void @llvm.assume(i1 %i.ll)
  %i.lm = load i64, ptr %i.f, align 8, !range !43, !alias.scope !48755, !noalias !48732, !noundef !28
  %i.ln = icmp eq i64 %i.lm, %.ph1040.i
  br i1 %i.ln, label %bb.cn, label %bb.co, !prof !44

bb.cn:                                            ; preds = %.thread219.jt0.preheader.i.split.us
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.ph1040.i, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge358 unwind label %.loopexit.split-lp.loopexit.i.split.us.loopexit.split-lp, !noalias !48739

._crit_edge358:                                   ; preds = %bb.cn
  %.pre359 = load ptr, ptr %.sroa.445.0..sroa_idx.i, align 8, !alias.scope !48756, !noalias !48732
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge358, %.thread219.jt0.preheader.i.split.us
  %i.lo = phi ptr [ %.pre359, %._crit_edge358 ], [ %i.lj, %.thread219.jt0.preheader.i.split.us ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.ph1040.i
  store i8 10, ptr %i.lp, align 1, !noalias !48757
  %i.lq = add nuw i64 %.ph1040.i, 1               ; 6 uses
  store i64 %i.lq, ptr %.sroa.546.0..sroa_idx.i, align 8, !alias.scope !48756, !noalias !48732
  %brmerge = select i1 %.ph1039.i, i1 true, i1 %.not.i3.i.not.jt0.i.le
  br i1 %brmerge, label %._crit_edge.i, label %.thread219.jt0.i.us

.thread219.jt0.i.us:                              ; preds = %bb.co
  %i.lr = icmp sgt i64 %i.lq, -1
  call void @llvm.assume(i1 %i.lr)
  %i.ls = load i64, ptr %i.f, align 8, !range !43, !alias.scope !48755, !noalias !48732, !noundef !28
  %i.lt = icmp eq i64 %i.ls, %i.lq
  br i1 %i.lt, label %bb.cp, label %._crit_edge.i.loopexit.loopexit, !prof !44

bb.cp:                                            ; preds = %.thread219.jt0.i.us
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.lq, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge360 unwind label %.loopexit.split-lp.loopexit.i.split.us.loopexit, !noalias !48739

._crit_edge360:                                   ; preds = %bb.cp
  %.pre361 = load ptr, ptr %.sroa.445.0..sroa_idx.i, align 8, !alias.scope !48756, !noalias !48732
  br label %._crit_edge.i.loopexit.loopexit

.loopexit.split-lp.loopexit.i.split.us.loopexit:  ; preds = %bb.cp
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i.split.us.loopexit.split-lp: ; preds = %bb.cn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.thread219.jt0.preheader.i.split:                 ; preds = %.thread219.jt0.preheader.i
  %i.lu = icmp sgt i64 %.ph1040.i, -1
  call void @llvm.assume(i1 %i.lu)
  %i.lv = load i64, ptr %i.f, align 8, !range !43, !alias.scope !48755, !noalias !48732, !noundef !28
  %i.lw = icmp eq i64 %i.lv, %.ph1040.i
  br i1 %i.lw, label %bb.cu, label %bb.cy, !prof !44

select.unfold.jt1.i:                              ; preds = %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.jt1.i
  %i.lx = add i64 %i.mf, %.sroa.4.1.i.jt1.i
  br label %bb.cr

bb.cq:                                            ; preds = %select.unfold.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.0590996.i) ]
  %i.ly = icmp eq ptr %.sroa.20.0590996.i, %i.kl
  br i1 %i.ly, label %.thread219.jt0.preheader.i, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.peel.i

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.peel.i: ; preds = %bb.cq
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.20.0590996.i, i64 16
  %i.ma = load i64, ptr %.sroa.20.0590996.i, align 8, !noalias !48758, !noundef !28
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.20.0590996.i, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !noalias !48758, !noundef !28
  br label %.preheader.i

.preheader.i:                                     ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.peel.i, %select.unfold.i
  %.sroa.20.3.peel.ph.i = phi ptr [ %i.lz, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.peel.i ], [ %.sroa.20.0590996.i, %select.unfold.i ]
  %.sroa.7.116.i.peel.ph.i = phi i64 [ %i.ma, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.peel.i ], [ %.sroa.9160.0592990.i, %select.unfold.i ]
  %.sroa.10.114.i.peel.ph.i = phi i64 [ %i.mc, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread.i.peel.i ], [ %.sroa.13162.0591993.i, %select.unfold.i ]
  %i.md = icmp ugt i64 %.lcssa584595.i.fr, %i.as
  %.not.i3.i.not.jt1.i = icmp eq i64 %.lcssa586.i, %i.as
  %.sroa.4.1.i.jt1.i = sub nuw i64 %i.as, %.lcssa586.i ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %.preheader.i, %select.unfold.jt1.i
  %i.me = phi ptr [ %i.np, %select.unfold.jt1.i ], [ %i.kn, %.preheader.i ] ; 2 uses
  %i.mf = phi i64 [ %i.lx, %select.unfold.jt1.i ], [ %i.li, %.preheader.i ] ; 4 uses
  %.lcssa586.pn.i = phi i64 [ %.lcssa586.i, %select.unfold.jt1.i ], [ %.lcssa5875881003.i, %.preheader.i ]
  %.sroa.4.1.i1011.i = phi i64 [ %.sroa.4.1.i.jt1.i, %select.unfold.jt1.i ], [ %.sroa.4.1.i.i, %.preheader.i ] ; 2 uses
  %.pn5981010.i = phi i64 [ %i.as, %select.unfold.jt1.i ], [ %.pn598.i, %.preheader.i ]
  %i.mg = phi i1 [ true, %select.unfold.jt1.i ], [ %i.lh, %.preheader.i ] ; 2 uses
  %.sroa.0167.05891000.i = phi i64 [ %i.mf, %select.unfold.jt1.i ], [ %.sroa.0167.0589999.i, %.preheader.i ] ; 3 uses
  %i.mh = phi i64 [ %i.nr, %select.unfold.jt1.i ], [ %i.ko, %.preheader.i ] ; 9 uses
  %.sroa.20.3.peel.i = phi ptr [ %.sroa.20.3.lcssa.i, %select.unfold.jt1.i ], [ %.sroa.20.3.peel.ph.i, %.preheader.i ] ; 2 uses
  %.sroa.7.116.i.peel.i = phi i64 [ %.sroa.7.116.i.lcssa.i, %select.unfold.jt1.i ], [ %.sroa.7.116.i.peel.ph.i, %.preheader.i ]
  %.sroa.10.114.i.peel.i = phi i64 [ %.sroa.10.114.i.lcssa.i, %select.unfold.jt1.i ], [ %.sroa.10.114.i.peel.ph.i, %.preheader.i ] ; 2 uses
  %.sroa.0.1.i1012.i = getelementptr inbounds nuw i8, ptr %i.at, i64 %.lcssa586.pn.i
  %.not.i133.peel.i = icmp ugt i64 %.sroa.10.114.i.peel.i, %.sroa.0167.05891000.i
  br i1 %.not.i133.peel.i, label %.loopexit912.i, label %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i

._crit_edge.i.loopexit.loopexit:                  ; preds = %._crit_edge360, %.thread219.jt0.i.us
  %i.mi = phi ptr [ %.pre361, %._crit_edge360 ], [ %i.lo, %.thread219.jt0.i.us ]
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.lq
  store i8 10, ptr %i.mj, align 1, !noalias !48757
  %i.mk = add nuw i64 %.ph1040.i, 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i, %bb.cy, %bb.cz, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.jt1.i, %bb.co, %._crit_edge.i.loopexit.loopexit
  %.sroa.1184.0.copyload = phi i64 [ %i.nr, %bb.cz ], [ %i.lq, %bb.co ], [ %i.mk, %._crit_edge.i.loopexit.loopexit ], [ %i.nr, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.jt1.i ], [ %i.ko, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.no, %bb.cy ]
  %.sroa.082.0.copyload = load i64, ptr %i.f, align 8, !noalias !48731 ; 6 uses
  %.sroa.783.0.copyload = load ptr, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !48731 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !48732
  %i.ml = icmp eq i64 %i.kj, 0
  br i1 %i.ml, label %bb.dx, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge.i
  %i.mm = shl nuw i64 %i.kj, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ki, i64 noundef %i.mm, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !48759
  br label %bb.dx

_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i: ; preds = %bb.cr, %bb.ct
  %.sroa.20.1.i = phi ptr [ %i.mo, %bb.ct ], [ %.sroa.20.3.peel.i, %bb.cr ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.1.i) ]
  %i.mn = icmp eq ptr %.sroa.20.1.i, %i.kl
  br i1 %i.mn, label %.thread219.jt0.preheader.i, label %bb.ct

bb.ct:                                            ; preds = %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.20.1.i, i64 16 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.20.1.i, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !noalias !48758, !noundef !28 ; 2 uses
  %.not.i133.i = icmp ugt i64 %i.mq, %.sroa.0167.05891000.i
  br i1 %.not.i133.i, label %.loopexit912.loopexit.i, label %_RINvMs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtNtBc_3ops5range5RangejEEE7next_ifNCNvNtCskXtk6F4WjxZ_4just6tangle6tangle0EB2D_.exit.peel.next.i, !llvm.loop !48650

.loopexit912.loopexit.i:                          ; preds = %bb.ct
  %i.mr = load i64, ptr %.sroa.20.1.i, align 8, !noalias !48758, !noundef !28
  br label %.loopexit912.i

.loopexit912.i:                                   ; preds = %.loopexit912.loopexit.i, %bb.cr
  %.sroa.20.3.lcssa.i = phi ptr [ %.sroa.20.3.peel.i, %bb.cr ], [ %i.mo, %.loopexit912.loopexit.i ] ; 2 uses
  %.sroa.7.116.i.lcssa.i = phi i64 [ %.sroa.7.116.i.peel.i, %bb.cr ], [ %i.mr, %.loopexit912.loopexit.i ] ; 3 uses
  %.sroa.10.114.i.lcssa.i = phi i64 [ %.sroa.10.114.i.peel.i, %bb.cr ], [ %i.mq, %.loopexit912.loopexit.i ] ; 3 uses
  %.not63.i = icmp ugt i64 %.sroa.7.116.i.lcssa.i, %.sroa.0167.05891000.i
  %.not64.i = icmp ugt i64 %i.mf, %.sroa.10.114.i.lcssa.i
  %or.cond243.i = select i1 %.not63.i, i1 true, i1 %.not64.i
  br i1 %or.cond243.i, label %.thread219.jt1.i, label %bb.cw

.thread219.jt1.i:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i, %.loopexit912.i
  %i.ms = phi i64 [ %i.mh, %.loopexit912.i ], [ %i.nl, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i ] ; 5 uses
  %i.mt = icmp sgt i64 %i.ms, -1
  call void @llvm.assume(i1 %i.mt)
  %i.mu = load i64, ptr %i.f, align 8, !range !43, !alias.scope !48760, !noalias !48732, !noundef !28
  %i.mv = icmp eq i64 %i.mu, %i.ms
  br i1 %i.mv, label %bb.cv, label %bb.cz, !prof !44

bb.cu:                                            ; preds = %.thread219.jt0.preheader.i.split
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.ph1040.i, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge unwind label %.loopexit.split-lp.loopexit.i.split, !noalias !48739

._crit_edge:                                      ; preds = %bb.cu
  %.pre = load ptr, ptr %.sroa.445.0..sroa_idx.i, align 8, !alias.scope !48756, !noalias !48732
  br label %bb.cy

bb.cv:                                            ; preds = %.thread219.jt1.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ms, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !48739

bb.cw:                                            ; preds = %.loopexit912.i
  %.not.i136.i = icmp eq i64 %.sroa.4.1.i1011.i, 0
  br i1 %.not.i136.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.thread: ; preds = %bb.cw
  %i.mw = icmp sgt i64 %i.mh, -1
  call void @llvm.assume(i1 %i.mw)
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %bb.cw
  %i.mx = getelementptr i8, ptr %i.at, i64 %.pn5981010.i
  %i.my = getelementptr i8, ptr %i.mx, i64 -1
  %rhsc.i = load i8, ptr %i.my, align 1, !alias.scope !48731, !noalias !48739
  %i.mz = icmp eq i8 %rhsc.i, 10
  %i.na = sext i1 %i.mz to i64
  %spec.select1447.i = add i64 %.sroa.4.1.i1011.i, %i.na ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48761)
  %i.nb = load i64, ptr %i.f, align 8, !range !43, !alias.scope !48762, !noalias !48732, !noundef !28
  %i.nc = sub i64 %i.nb, %i.mh
  %i.nd = icmp ugt i64 %spec.select1447.i, %i.nc
  br i1 %i.nd, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i, !prof !26

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.mh, i64 noundef %spec.select1447.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc139.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !48739

.noexc139.i:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i
  %i.ne = load i64, ptr %.sroa.546.0..sroa_idx.i, align 8, !alias.scope !48761, !noalias !48732, !noundef !28 ; 2 uses
  %i.nf = icmp sgt i64 %i.ne, -1
  call void @llvm.assume(i1 %i.nf)
  %.pre914.i = load ptr, ptr %.sroa.445.0..sroa_idx.i, align 8, !alias.scope !48761, !noalias !48732
  br label %bb.cx

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread.i
  %i.ng = icmp sgt i64 %i.mh, -1
  call void @llvm.assume(i1 %i.ng)
  %.not.i138.i = icmp eq i64 %spec.select1447.i, 0
  br i1 %.not.i138.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i, label %bb.cx

bb.cx:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i, %.noexc139.i
  %i.nh = phi ptr [ %.pre914.i, %.noexc139.i ], [ %i.me, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i ]
  %i.ni = phi i64 [ %i.ne, %.noexc139.i ], [ %i.mh, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ni
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nj, ptr nonnull readonly align 1 %.sroa.0.1.i1012.i, i64 %spec.select1447.i, i1 false), !noalias !48763
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.thread, %bb.cx, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.512.0.i112 = phi i64 [ %spec.select1447.i, %bb.cx ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.thread ]
  %i.nk = phi i64 [ %i.ni, %bb.cx ], [ %i.mh, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.mh, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.thread ]
  %i.nl = add i64 %i.nk, %.sroa.512.0.i112        ; 2 uses
  store i64 %i.nl, ptr %.sroa.546.0..sroa_idx.i, align 8, !alias.scope !48761, !noalias !48732
  br label %.thread219.jt1.i

bb.cy:                                            ; preds = %._crit_edge, %.thread219.jt0.preheader.i.split
  %i.nm = phi ptr [ %.pre, %._crit_edge ], [ %i.lj, %.thread219.jt0.preheader.i.split ] ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.ph1040.i
  store i8 10, ptr %i.nn, align 1, !noalias !48757
  %i.no = add nuw i64 %.ph1040.i, 1               ; 3 uses
  store i64 %i.no, ptr %.sroa.546.0..sroa_idx.i, align 8, !alias.scope !48756, !noalias !48732
end_hunk_1
