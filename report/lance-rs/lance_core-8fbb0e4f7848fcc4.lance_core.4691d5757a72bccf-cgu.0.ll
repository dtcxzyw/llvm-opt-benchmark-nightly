Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB4_10GroupRemap3new:bb.a

bb.ay:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val68 = load i64, ptr %1, align 8             ; 2 uses
  %i.kx = icmp eq i64 %.val68, 0
  br i1 %i.kx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val69 = load ptr, ptr %i.ev, align 8, !nonnull !24, !noundef !24
  %i.ky = shl nuw i64 %.val68, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val69, i64 noundef %i.ky, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit

.loopexit274:                                     ; preds = %.noexc109, %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19165
  %.val66 = load i64, ptr %1, align 8             ; 2 uses
  %i.kz = icmp eq i64 %.val66, 0
  br i1 %i.kz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110.sink.split: ; preds = %.loopexit274, %bb.cr
  %.val62.sink = phi i64 [ %.val62, %bb.cr ], [ %.val66, %.loopexit274 ]
  %.val63.sink.in = phi ptr [ %i.rf, %bb.cr ], [ %i.ev, %.loopexit274 ]
  %.val63.sink = load ptr, ptr %.val63.sink.in, align 8, !nonnull !24, !noundef !24
  %i.la = shl nuw i64 %.val62.sink, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val63.sink, i64 noundef %i.la, i64 noundef range(i64 1, -9223372036854775807) 4) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit110.sink.split, %.loopexit280, %.loopexit274
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.cx, %bb.cw, %bb.cq, %bb.cp, %bb.az, %bb.ay, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit213
  %.pn58.pn = phi { ptr, i32 } [ %lpad.phi279, %bb.cq ], [ %.pn58, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs63DIHKhvmTb_10lance_core.exit213 ], [ %lpad.phi, %bb.az ], [ %lpad.phi, %bb.ay ], [ %lpad.phi279, %bb.cp ], [ %.pn58, %bb.cw ], [ %.pn58, %bb.cx ]
  resume { ptr, i32 } %.pn58.pn

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !19167)
  %.sroa.06.0.copyload.i = load i64, ptr %i.n, align 8, !alias.scope !19168, !noalias !19169 ; 3 uses
  %.sroa.4.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i111, align 8, !alias.scope !19168, !noalias !19169 ; 3 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !19168, !noalias !19169
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !19170
  %i.lb = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19170 ; 5 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.ba, label %bb.bd, !prof !40

bb.ba:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc.i112 unwind label %bb.bb, !noalias !19171

.noexc.i112:                                      ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.le, label %.body113, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !19172
  br label %.body113

bb.bd:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit
  store i64 %.sroa.06.0.copyload.i, ptr %i.lb, align 8, !noalias !19171
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !19171
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !19171
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.lf, align 8
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lb, ptr %.sroa.4242.0..sroa_idx, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @61, ptr %.sroa.5243.0..sroa_idx, align 8
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @554, ptr %.sroa.6244.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.be

bb.be:                                            ; preds = %bb.bu, %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !19173)
  call void @llvm.experimental.noalias.scope.decl(metadata !19174)
  call void @llvm.experimental.noalias.scope.decl(metadata !19175)
  call void @llvm.experimental.noalias.scope.decl(metadata !19176)
  call void @llvm.experimental.noalias.scope.decl(metadata !19177)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !19178, !noundef !24 ; 4 uses
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !19179)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !19180, !noundef !24 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lm = load ptr, ptr %i.w, align 8, !alias.scope !19180, !nonnull !24, !noundef !24 ; 3 uses
  %.val3.i.i.i.i.i.i.i115 = load <16 x i8>, ptr %i.lm, align 16, !noalias !19181
  %i.ln = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i115, splat (i8 -1)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lp = bitcast <16 x i1> %i.ln to i16
  br label %bb.bh

bb.bh:                                            ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i, %bb.bg
  %.sroa.05.016.i.i.i.i.i.i116 = phi ptr [ %i.lm, %bb.bg ], [ %.sroa.05.1.i.i.i.i.i.i122, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i117 = phi ptr [ %i.lo, %bb.bg ], [ %.sroa.6.1.i.i.i.i.i.i121, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i.i118 = phi i16 [ %i.lp, %bb.bg ], [ %i.ly, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i.i119 = phi i64 [ %i.lk, %bb.bg ], [ %i.mb, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i120 = icmp eq i16 %.sroa.86.014.i.i.i.i.i.i118, 0
  br i1 %.not12.i.i.i.i.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i124, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i124:                          ; preds = %bb.bh, %.lr.ph.i.i.i.i.i.i.i124
  %i.lq = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i.i124 ], [ %.sroa.6.015.i.i.i.i.i.i117, %bb.bh ] ; 2 uses
  %i.lr = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i.i124 ], [ %.sroa.05.016.i.i.i.i.i.i116, %bb.bh ]
  %.val10.i.i.i.i.i.i.i125 = load <16 x i8>, ptr %i.lq, align 16, !noalias !19182
  %i.ls = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i125, splat (i8 -1)
  %i.lt = getelementptr inbounds i8, ptr %i.lr, i64 -640 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i126 = bitcast <16 x i1> %i.ls to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i127 = icmp eq i16 %.cast.i.i.i.i.i.i.i126, 0
  br i1 %.not.i.i.i.i.i.i.i127, label %.lr.ph.i.i.i.i.i.i.i124, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i124, %bb.bh
  %.sroa.6.1.i.i.i.i.i.i121 = phi ptr [ %.sroa.6.015.i.i.i.i.i.i117, %bb.bh ], [ %i.lu, %.lr.ph.i.i.i.i.i.i.i124 ]
  %.sroa.05.1.i.i.i.i.i.i122 = phi ptr [ %.sroa.05.016.i.i.i.i.i.i116, %bb.bh ], [ %i.lt, %.lr.ph.i.i.i.i.i.i.i124 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i123 = phi i16 [ %.sroa.86.014.i.i.i.i.i.i118, %bb.bh ], [ %.cast.i.i.i.i.i.i.i126, %.lr.ph.i.i.i.i.i.i.i124 ] ; 3 uses
  %i.lv = add i16 %.lcssa.i.i.i.i.i.i.i123, -1
  %i.lw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i123, i1 true)
  %i.lx = zext nneg i16 %i.lw to i64
  %i.ly = and i16 %i.lv, %.lcssa.i.i.i.i.i.i.i123
  %i.lz = sub nsw i64 0, %i.lx
  %i.ma = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i.i.i.i.i122, i64 %i.lz
  %i.mb = add i64 %.sroa.107.013.i.i.i.i.i.i119, -1 ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %i.ma, i64 -32
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.mc), !noalias !19180
  %i.md = icmp eq i64 %i.mb, 0
  br i1 %i.md, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i, label %bb.bh

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i: ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEE9next_implKb0_ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i, %bb.bf
  %i.me = mul i64 %i.lh, 40
  %i.mf = icmp slt i64 %i.lh, 461168601842738790
  call void @llvm.assume(i1 %i.mf)
  %i.mg = and i64 %i.me, -16                      ; 2 uses
  %i.mh = add i64 %i.mg, 48                       ; 2 uses
  %i.mi = add nsw i64 %i.lh, 17
  %i.mj = add i64 %i.mi, %i.mh                    ; 4 uses
  %i.mk = icmp uge i64 %i.mj, %i.mh
  %i.ml = icmp ult i64 %i.mj, 9223372036854775793
  call void @llvm.assume(i1 %i.mk)
  call void @llvm.assume(i1 %i.ml)
  %i.mm = icmp eq i64 %i.mj, 0
  br i1 %i.mm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit, label %bb.bi

bb.bi:                                            ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i
  %i.mn = load ptr, ptr %i.w, align 8, !alias.scope !19178, !nonnull !24, !noundef !24
  %i.mo = sub i64 -48, %i.mg
  %i.mp = getelementptr inbounds i8, ptr %i.mn, i64 %i.mo
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mp, i64 noundef %i.mj, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !19178
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit

bb.bj:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !19183)
  %i.mq = load ptr, ptr %i.z, align 8, !alias.scope !19183, !noalias !19184, !nonnull !24, !noundef !24 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.mq, align 16, !noalias !19185
  %i.mr = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %i.mt = bitcast <16 x i1> %i.mr to i16          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19186
  %.not12.i.i.i.i = icmp eq i16 %i.mt, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i135, label %._crit_edge19.i.i.i.i

.lr.ph.i.i.i.i135:                                ; preds = %bb.bj, %.lr.ph.i.i.i.i135
  %i.mu = phi ptr [ %i.my, %.lr.ph.i.i.i.i135 ], [ %i.ms, %bb.bj ] ; 2 uses
  %i.mv = phi ptr [ %i.mx, %.lr.ph.i.i.i.i135 ], [ %i.mq, %bb.bj ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.mu, align 16, !noalias !19187
  %i.mw = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.mx = getelementptr inbounds i8, ptr %i.mv, i64 -512 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.mw to i16 ; 2 uses
  %.not.i.i.i.i136 = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i136, label %.lr.ph.i.i.i.i135, label %._crit_edge19.i.i.i.i

._crit_edge19.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i135, %bb.bj
  %.sroa.6236.0 = phi ptr [ %i.ms, %bb.bj ], [ %i.my, %.lr.ph.i.i.i.i135 ]
  %.sroa.09.0.copyload.i = phi ptr [ %i.mq, %bb.bj ], [ %i.mx, %.lr.ph.i.i.i.i135 ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.mt, %bb.bj ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i135 ] ; 3 uses
  %i.mz = add i16 %.lcssa.i.i.i.i, -1
  %i.na = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.nb = zext nneg i16 %i.na to i64
  %i.nc = and i16 %i.mz, %.lcssa.i.i.i.i
  %i.nd = sub nsw i64 0, %i.nb
  %i.ne = getelementptr inbounds [32 x i8], ptr %.sroa.09.0.copyload.i, i64 %i.nd
  %i.nf = add i64 %i.hb, -1                       ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %i.ne, i64 -32
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.hb, i64 4) ; 2 uses
  %i.nh = shl i64 %.sroa.0.0.i.i, 3               ; 3 uses
  %i.ni = icmp ugt i64 %i.hb, 2305843009213693951
  %.not.i.i.i129 = icmp ugt i64 %i.nh, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.ni, %.not.i.i.i129
  br i1 %or.cond.i.i.i, label %bb.bl, label %bb.bk, !prof !25

bb.bk:                                            ; preds = %._crit_edge19.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !19188
  %i.nj = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.nh, i64 noundef range(i64 1, 9) 8) #65, !noalias !19188 ; 4 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.bl, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i

bb.bl:                                            ; preds = %bb.bk, %._crit_edge19.i.i.i.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.bk ], [ 0, %._crit_edge19.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.nh) #68
          to label %.noexc138 unwind label %bb.ad

.noexc138:                                        ; preds = %bb.bl
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.bk
  store ptr %i.ng, ptr %i.nj, align 8, !noalias !19186
  store i64 %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !19186
  %.sroa.4.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.nj, ptr %.sroa.4.0..sroa_idx.i130, align 8, !noalias !19186
  %.sroa.6.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i131, align 8, !noalias !19186
  call void @llvm.experimental.noalias.scope.decl(metadata !19189)
  call void @llvm.experimental.noalias.scope.decl(metadata !19190)
  %i.nl = icmp eq i64 %i.nf, 0
  br i1 %i.nl, label %.loopexit281, label %.lr.ph.i.i.i132

.lr.ph.i.i.i132:                                  ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i, %.noexc.i133
  %i.nm = phi ptr [ %i.of, %.noexc.i133 ], [ %i.nj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ]
  %i.nn = phi i64 [ %i.oh, %.noexc.i133 ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ] ; 5 uses
  %.lcssa18.i.i.i = phi ptr [ %.lcssa17.i.i.i, %.noexc.i133 ], [ %.sroa.6236.0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ] ; 2 uses
  %i.no = phi i16 [ %i.nx, %.noexc.i133 ], [ %i.nc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ] ; 2 uses
  %.val914.i.i.i = phi i64 [ %i.oa, %.noexc.i133 ], [ %i.nf, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ] ; 2 uses
  %.lcssa81213.i.i.i = phi ptr [ %.lcssa811.i.i.i, %.noexc.i133 ], [ %.sroa.09.0.copyload.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i ] ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.no, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i132, %.lr.ph.i.i.i.i.i.i
  %i.np = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa18.i.i.i, %.lr.ph.i.i.i132 ] ; 2 uses
  %i.nq = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa81213.i.i.i, %.lr.ph.i.i.i132 ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.np, align 16, !noalias !19191
  %i.nr = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.ns = getelementptr inbounds i8, ptr %i.nq, i64 -512 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.nr to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i132
  %.lcssa17.i.i.i = phi ptr [ %.lcssa18.i.i.i, %.lr.ph.i.i.i132 ], [ %i.nt, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa811.i.i.i = phi ptr [ %.lcssa81213.i.i.i, %.lr.ph.i.i.i132 ], [ %i.ns, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.no, %.lr.ph.i.i.i132 ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.nu = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.nv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.nw = zext nneg i16 %i.nv to i64
  %i.nx = and i16 %i.nu, %.lcssa.i.i.i.i.i.i
  %i.ny = sub nsw i64 0, %i.nw
  %i.nz = getelementptr inbounds [32 x i8], ptr %.lcssa811.i.i.i, i64 %i.ny
  %i.oa = add i64 %.val914.i.i.i, -1              ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %i.nz, i64 -32
  %i.oc = icmp samesign ult i64 %i.nn, 1152921504606846976
  call void @llvm.assume(i1 %i.oc)
  %i.od = load i64, ptr %i.c, align 8, !range !39, !alias.scope !19192, !noalias !19193, !noundef !24
  %i.oe = icmp eq i64 %i.nn, %i.od
  br i1 %i.oe, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i.i, label %.noexc.i133

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i.i: ; preds = %._crit_edge19.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.nn, i64 noundef range(i64 1, 0) %.val914.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge.i unwind label %bb.bm, !noalias !19186

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i.i
  %.pre.i134 = load ptr, ptr %.sroa.4.0..sroa_idx.i130, align 8, !alias.scope !19192, !noalias !19193
  br label %.noexc.i133

.noexc.i133:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge.i, %._crit_edge19.i.i.i.i.i.i
  %i.of = phi ptr [ %.pre.i134, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i..noexc_crit_edge.i ], [ %i.nm, %._crit_edge19.i.i.i.i.i.i ] ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.nn
  store ptr %i.ob, ptr %i.og, align 8, !noalias !19194
  %i.oh = add nuw nsw i64 %i.nn, 1                ; 2 uses
  store i64 %i.oh, ptr %.sroa.6.0..sroa_idx.i131, align 8, !alias.scope !19192, !noalias !19193
  %i.oi = icmp eq i64 %i.oa, 0
  br i1 %i.oi, label %.loopexit281, label %.lr.ph.i.i.i132

bb.bm:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRmE7reserveCs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.oj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val7.i = load i64, ptr %i.c, align 8, !noalias !19186 ; 2 uses
  %i.ok = icmp eq i64 %.val7.i, 0
  br i1 %i.ok, label %.body113, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val8.i = load ptr, ptr %.sroa.4.0..sroa_idx.i130, align 8, !noalias !19186, !nonnull !24, !noundef !24
  %i.ol = shl nuw i64 %.val7.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.ol, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19186
  br label %.body113

.loopexit281:                                     ; preds = %.noexc.i133, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs63DIHKhvmTb_10lance_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !19195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.q, ptr %i.p, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRmENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.429.0..sroa_idx, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %1, ptr %i.om, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.433.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @555, ptr noundef nonnull %i.p)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit142 unwind label %bb.bo

bb.bo:                                            ; preds = %.loopexit281
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val84 = load i64, ptr %i.q, align 8           ; 2 uses
  %i.oo = icmp eq i64 %.val84, 0
  br i1 %i.oo, label %.body113, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.op = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val85 = load ptr, ptr %i.op, align 8, !nonnull !24, !noundef !24
  %i.oq = shl nuw i64 %.val84, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val85, i64 noundef %i.oq, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %.body113

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit142: ; preds = %.loopexit281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val82 = load i64, ptr %i.q, align 8           ; 2 uses
  %i.or = icmp eq i64 %.val82, 0
  br i1 %i.or, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRmEECs63DIHKhvmTb_10lance_core.exit143, label %bb.bq

bb.bq:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit142
  %i.os = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val83 = load ptr, ptr %i.os, align 8, !nonnull !24, !noundef !24
  %i.ot = shl nuw i64 %.val82, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val83, i64 noundef %i.ot, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRmEECs63DIHKhvmTb_10lance_core.exit143

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRmEECs63DIHKhvmTb_10lance_core.exit143: ; preds = %bb.bq, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !19196)
  %.sroa.06.0.copyload.i144 = load i64, ptr %i.r, align 8, !alias.scope !19197, !noalias !19198 ; 3 uses
  %.sroa.4.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i146 = load ptr, ptr %.sroa.4.0..sroa_idx.i145, align 8, !alias.scope !19197, !noalias !19198 ; 3 uses
  %.sroa.57.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.57.0.copyload.i148 = load i64, ptr %.sroa.57.0..sroa_idx.i147, align 8, !alias.scope !19197, !noalias !19198
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !19199
  %i.ou = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19199 ; 5 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.br, label %bb.bu, !prof !40

bb.br:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRmEECs63DIHKhvmTb_10lance_core.exit143
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc.i152 unwind label %bb.bs, !noalias !19200

.noexc.i152:                                      ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = icmp eq i64 %.sroa.06.0.copyload.i144, 0
  br i1 %i.ox, label %.body113, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i146) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i146, i64 noundef %.sroa.06.0.copyload.i144, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !19201
  br label %.body113

bb.bu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRmEECs63DIHKhvmTb_10lance_core.exit143
  store i64 %.sroa.06.0.copyload.i144, ptr %i.ou, align 8, !noalias !19200
  %.sroa.5.0..sroa_idx2.i149 = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store ptr %.sroa.4.0.copyload.i146, ptr %.sroa.5.0..sroa_idx2.i149, align 8, !noalias !19200
  %.sroa.6.0..sroa_idx4.i150 = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  store i64 %.sroa.57.0.copyload.i148, ptr %.sroa.6.0..sroa_idx4.i150, align 8, !noalias !19200
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.oy, align 8
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ou, ptr %.sroa.4229.0..sroa_idx, align 8
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @61, ptr %.sroa.5230.0..sroa_idx, align 8
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @556, ptr %.sroa.6231.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.bi, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmTNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapyEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !19202)
  call void @llvm.experimental.noalias.scope.decl(metadata !19203)
  call void @llvm.experimental.noalias.scope.decl(metadata !19204)
  call void @llvm.experimental.noalias.scope.decl(metadata !19205)
  call void @llvm.experimental.noalias.scope.decl(metadata !19206)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.z, i64 8
end_hunk_0
begin_hunk_1_@_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri17parse_backend_uri:bb.a
  %i.cj = extractvalue { i64, i64 } %.merged.i.i.i.i217, 0
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.ab, label %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit

bb.ab:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i216
  %i.cl = extractvalue { i64, i64 } %.merged.i.i.i.i217, 1 ; 2 uses
  %i.cm = add nuw i64 %i.by, 1
  %i.cn = add i64 %i.cm, %i.cl                    ; 4 uses
  %.not13.i.i.i218 = icmp ugt i64 %i.cn, %i.bw
  %i.co = add i64 %i.cl, %i.by                    ; 3 uses
  %or.cond.i.not.i.i219 = icmp ult i64 %i.co, %i.bw
  br i1 %or.cond.i.not.i.i219, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  br i1 %.not13.i.i.i218, label %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit, label %bb.y

bb.ad:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.co
  %lhsc.i.i220 = load i8, ptr %i.cp, align 1, !alias.scope !21478, !noalias !21479
  %i.cq = icmp eq i8 %lhsc.i.i220, 63
  br i1 %i.cq, label %bb.ae, label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.cr = sub nuw i64 %i.bw, %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cn
  br label %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit

.body:                                            ; preds = %.loopexit606, %.loopexit.split-lp607, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit333, %bb.ah, %bb.ai
  %.pn209 = phi { ptr, i32 } [ %i.df, %bb.ah ], [ %.pn207, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit333 ], [ %i.df, %bb.ai ], [ %lpad.loopexit608, %.loopexit606 ], [ %lpad.loopexit.split-lp609, %.loopexit.split-lp607 ] ; 2 uses
  %i.ct = icmp eq i64 %.sroa.098.0.copyload.i, 0
  br i1 %i.ct, label %common.resume, label %bb.af

bb.af:                                            ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.499.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.499.0.copyload.i, i64 noundef %.sroa.098.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21480
  br label %common.resume

.loopexit606:                                     ; preds = %bb.z
  %lpad.loopexit608 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp607:                            ; preds = %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit
  %lpad.loopexit.split-lp609 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit: ; preds = %bb.ac, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i216, %bb.ae
  %.pre2.i.i = phi i64 [ %i.cr, %bb.ae ], [ undef, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i216 ], [ undef, %bb.ac ] ; 8 uses
  %.val.i235 = phi ptr [ %i.cs, %bb.ae ], [ null, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i216 ], [ null, %bb.ac ] ; 6 uses
  %.sroa.5.0 = phi i64 [ %i.co, %bb.ae ], [ %i.bw, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i.i216 ], [ %i.bw, %bb.ac ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.499.0.copyload.i) ]
  invoke void @_RNvNtNtCs63DIHKhvmTb_10lance_core5cache8registry22normalize_backend_kind(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.499.0.copyload.i, i64 noundef %.sroa.5100.0.copyload.i)
          to label %.noexc229 unwind label %.loopexit.split-lp607

.noexc229:                                        ; preds = %_RNvNtNtCs63DIHKhvmTb_10lance_core5cache11backend_uri16split_path_query.exit
  %i.cu = load i8, ptr %i.g, align 8, !range !104, !noalias !21481, !noundef !24 ; 2 uses
  %.not.i = icmp eq i8 %i.cu, -1
  br i1 %.not.i, label %bb.ag, label %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread

_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread: ; preds = %.noexc229
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.7343.1.copyload = load i56, ptr %.sroa.410.0..sroa_idx.i, align 1, !noalias !21482
  %.sroa.7343.1.insert.ext = zext i56 %.sroa.7343.1.copyload to i64
  %.sroa.7343.1.insert.shift = shl nuw i64 %.sroa.7343.1.insert.ext, 8
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.410.sroa.4.0.copyload.i = load i64, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !noalias !21481
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.410.sroa.5.0.copyload.i = load ptr, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !noalias !21481
  %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.410.sroa.6.0.copyload.i = load i64, ptr %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !noalias !21481
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17349, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.0..sroa_idx.i, i64 16, i1 false), !noalias !21482
  %.sroa.18.40..sroa.511.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.18.40.copyload = load i64, ptr %.sroa.18.40..sroa.511.0..sroa_idx.i.sroa_idx, align 8, !noalias !21482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21481
  %.sroa.7343.0.insert.ext = zext nneg i8 %i.cu to i64
  %.sroa.7343.0.insert.insert = or disjoint i64 %.sroa.7343.1.insert.shift, %.sroa.7343.0.insert.ext
  %i.cv = inttoptr i64 %.sroa.7343.0.insert.insert to ptr
  br label %bb.aj

bb.ag:                                            ; preds = %.noexc229
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.040.0.copyload.i = load i64, ptr %i.cw, align 8, !noalias !21481 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21481 ; 4 uses
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.541.0.copyload.i = load i64, ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !21481 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21481
  %i.cx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 8, !range !30, !noalias !21483, !noundef !24
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i: ; preds = %bb.ag
  %.pre.i.i.i = load i64, ptr %i.cx, align 8, !noalias !21484
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !21484
  br label %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i: ; preds = %bb.ag
  %i.db = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i unwind label %bb.ah, !noalias !21481 ; 2 uses

.noexc.i:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.dc = extractvalue { i64, i64 } %i.db, 0
  %i.dd = extractvalue { i64, i64 } %i.db, 1      ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !noalias !21485
  store i8 1, ptr %i.cy, align 8, !noalias !21485
  br label %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit

bb.ah:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = icmp eq i64 %.sroa.040.0.copyload.i, 0
  br i1 %i.dg, label %.body, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.040.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21486
  br label %.body

_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i, %.noexc.i
  %.pre-phi43.i = phi i64 [ %i.dd, %.noexc.i ], [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i ]
  %.pre-phi.i = phi i64 [ %i.dc, %.noexc.i ], [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i ] ; 3 uses
  %i.dh = add i64 %.pre-phi.i, 1
  store i64 %i.dh, ptr %i.cx, align 8, !noalias !21484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17349, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @20, i64 16), i64 16, i1 false), !noalias !21482
  %i.di = icmp eq i64 %.sroa.040.0.copyload.i, -1
  br i1 %i.di, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit
  %.sroa.12.0529 = phi i64 [ %.sroa.410.sroa.4.0.copyload.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread ], [ %.sroa.541.0.copyload.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit ]
  %.sroa.14346.0528 = phi ptr [ %.sroa.410.sroa.5.0.copyload.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread ], [ @19, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit ]
  %.sroa.16.0527 = phi i64 [ %.sroa.410.sroa.6.0.copyload.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread ], [ 0, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit ]
  %.sroa.18.0526 = phi i64 [ %.sroa.18.40.copyload, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread ], [ %.pre-phi.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit ]
  %.sroa.7343.0525 = phi ptr [ %i.cv, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit.thread ], [ %.sroa.4.0.copyload.i, %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17349, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17349)
  %.sroa.7417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.sroa.10, i64 16, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7343.0525, ptr %i.dj, align 8
  %.sroa.4414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0529, ptr %.sroa.4414.0..sroa_idx, align 8
  %.sroa.5415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.14346.0528, ptr %.sroa.5415.0..sroa_idx, align 8
  %.sroa.6416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.16.0527, ptr %.sroa.6416.0..sroa_idx, align 8
  %.sroa.8418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.18.0526, ptr %.sroa.8418.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.sroa.10)
  br label %bb.dg

bb.ak:                                            ; preds = %_RINvMNtNtCs63DIHKhvmTb_10lance_core5cache8registryNtB3_13BackendConfig3newRNtNtCs40k4W9msRzi_5alloc6string6StringEB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17349)
  %.sroa.426.sroa.7.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.sroa.7.0..sroa.426.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @20, i64 16), i64 16, i1 false)
  store i64 %.sroa.040.0.copyload.i, ptr %i.ad, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.541.0.copyload.i, ptr %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 5 uses
  store ptr @19, ptr %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.6.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.426.sroa.6.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.8.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.426.sroa.8.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  store i64 %.pre-phi43.i, ptr %.sroa.527.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.sroa.10)
  %.not.i.i = icmp samesign ult i64 %.sroa.5.0, 2
  br i1 %.not.i.i, label %bb.al, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.ak
  %i.dk = load i16, ptr %i.bx, align 1
  %i.dl = icmp ne i16 12079, %i.dk
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.am, label %.thread20.i

bb.al:                                            ; preds = %bb.ak
  %i.do = icmp eq i64 %.sroa.5.0, 0
  br i1 %i.do, label %bb.ar, label %.thread20.i

.thread20.i:                                      ; preds = %bb.al, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !21487
  %i.dp = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.5.0, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21487 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %.invoke, label %bb.an

bb.am:                                            ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit.i
  %i.dr = add i64 %.sroa.5.0, -2                  ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %bb.ar, label %3

bb.an:                                            ; preds = %.thread20.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr nonnull readonly align 1 %i.bx, i64 %.sroa.5.0, i1 false), !noalias !21488
  br label %bb.as

3:                                                ; preds = %bb.am
  %.not.i10.i = icmp slt i64 %i.dr, 0
  br i1 %.not.i10.i, label %.invoke, label %bb.ao, !prof !25

bb.ao:                                            ; preds = %3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !21489
  %i.du = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21489 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.invoke, label %bb.ap

.invoke:                                          ; preds = %3, %bb.ao, %.thread20.i
  %4 = phi i64 [ 1, %.thread20.i ], [ 1, %bb.ao ], [ 0, %3 ]
  %5 = phi i64 [ %.sroa.5.0, %.thread20.i ], [ %i.dr, %bb.ao ], [ %i.dr, %3 ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %4, i64 %5) #68
          to label %.cont unwind label %bb.aq

.cont:                                            ; preds = %.invoke
  unreachable

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull readonly align 1 %i.ds, i64 %i.dr, i1 false), !noalias !21488
  br label %bb.as

bb.aq:                                            ; preds = %.invoke
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit333

bb.ar:                                            ; preds = %bb.am, %bb.al
  %.not201 = icmp eq ptr %.val.i235, null
  br i1 %.not201, label %.split, label %.lr.ph

bb.as:                                            ; preds = %bb.an, %bb.ap
  %.sink40.i = phi i64 [ %i.dr, %bb.ap ], [ %.sroa.5.0, %bb.an ] ; 6 uses
  %.sink39.i = phi ptr [ %i.du, %bb.ap ], [ %i.dp, %bb.an ] ; 4 uses
  %i.dx = icmp sgt i64 %.sink40.i, -1
  tail call void @llvm.assume(i1 %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !21490
  %i.dy = tail call noundef dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21490 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.au, label %bb.av

.split:                                           ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit234

bb.at:                                            ; preds = %bb.bf
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink39.i544, i64 noundef %.sink40.i533, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21491
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit234

.body259:                                         ; preds = %.loopexit600, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.dc, %bb.db, %.body308, %.body.i, %bb.bw, %bb.bp, %bb.bq
  %i.ea = phi i1 [ %i.ee, %.body.i ], [ %i.ee, %.body308 ], [ %i.ee, %bb.bp ], [ %i.ee, %bb.dc ], [ %i.ee, %bb.bq ], [ %i.ee, %bb.bw ], [ %i.ee, %bb.db ], [ %i.ee, %.loopexit600 ], [ %i.ee, %.loopexit.split-lp.loopexit ], [ %i.ee, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sink39.i546 = phi ptr [ %.sink39.i544, %.body.i ], [ %.sink39.i544, %.body308 ], [ %.sink39.i544, %bb.bp ], [ %.sink39.i544, %bb.dc ], [ %.sink39.i544, %bb.bq ], [ %.sink39.i544, %bb.bw ], [ %.sink39.i544, %bb.db ], [ %.sink39.i544, %.loopexit600 ], [ %.sink39.i544, %.loopexit.split-lp.loopexit ], [ %.sink39.i544, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sink39.i551.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sink40.i535 = phi i64 [ %.sink40.i533, %.body.i ], [ %.sink40.i533, %.body308 ], [ %.sink40.i533, %bb.bp ], [ %.sink40.i533, %bb.dc ], [ %.sink40.i533, %bb.bq ], [ %.sink40.i533, %bb.bw ], [ %.sink40.i533, %bb.db ], [ %.sink40.i533, %.loopexit600 ], [ %.sink40.i533, %.loopexit.split-lp.loopexit ], [ %.sink40.i533, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sink40.i540.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.099.1 = phi i8 [ %.sroa.099.0, %.body.i ], [ %.sroa.099.0, %.body308 ], [ %.sroa.099.0, %bb.bp ], [ %.sroa.099.0, %bb.dc ], [ %.sroa.099.0, %bb.bq ], [ %.sroa.099.0, %bb.bw ], [ %.sroa.099.0, %bb.db ], [ %.sroa.099.0, %.loopexit600 ], [ %.sroa.099.0, %.loopexit.split-lp.loopexit ], [ %.sroa.099.0, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.099.2.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn205 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.iv, %.body308 ], [ %i.gj, %bb.bp ], [ %.pn.ph, %bb.dc ], [ %i.gj, %bb.bq ], [ %eh.lpad-body.i, %bb.bw ], [ %.pn.ph, %bb.db ], [ %lpad.loopexit, %.loopexit600 ], [ %lpad.loopexit601, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit604, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.eb = trunc nuw i8 %.sroa.099.1 to i1
  %.not598 = xor i1 %i.eb, true
  %brmerge599 = or i1 %i.ea, %.not598
  br i1 %brmerge599, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit333, label %bb.dj

.loopexit600:                                     ; preds = %bb.bh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body259

.loopexit.split-lp.loopexit:                      ; preds = %bb.ba
  %lpad.loopexit601 = landingpad { ptr, i32 }
          cleanup
  br label %.body259

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.bm
  %lpad.loopexit604 = landingpad { ptr, i32 }
          cleanup
  br label %.body259

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.av, %bb.bn
  %.ph.ph.ph = phi i1 [ %i.ee, %bb.bn ], [ false, %bb.au ], [ false, %bb.av ]
  %.sink39.i551.ph.ph.ph = phi ptr [ %.sink39.i544, %bb.bn ], [ %.sink39.i, %bb.au ], [ %.sink39.i, %bb.av ]
  %.sink40.i540.ph.ph.ph = phi i64 [ %.sink40.i533, %bb.bn ], [ %.sink40.i, %bb.au ], [ %.sink40.i, %bb.av ]
  %.sroa.099.2.ph.ph.ph = phi i8 [ %.sroa.099.0, %bb.bn ], [ 1, %bb.au ], [ 0, %bb.av ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body259

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #68
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.as
  store i32 1752457584, ptr %i.dy, align 1
  store i64 4, ptr %i.ab, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.dy, ptr %.sroa.4127.0..sroa_idx, align 8
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 4, ptr %.sroa.6128.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sink40.i, ptr %i.aa, align 8
  %.sroa.8352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sink39.i, ptr %.sroa.8352.0..sroa_idx, align 8
  %.sroa.12353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sink40.i, ptr %.sroa.12353.0..sroa_idx, align 8
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBN_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef align 8 dereferenceable(48) %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.val212 = load i64, ptr %i.ac, align 8, !range !26, !noundef !24 ; 2 uses
  %i.ec = icmp sgt i64 %.val212, 0
  br i1 %i.ec, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val213 = load ptr, ptr %i.ed, align 8, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val213, i64 noundef %.val212, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !21492
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.not200 = icmp eq ptr %.val.i235, null
  br i1 %.not200, label %bb.ay, label %.lr.ph

bb.ay:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit234

.lr.ph:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit, %bb.ar
  %i.ee = phi i1 [ true, %bb.ar ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit ] ; 13 uses
  %.sink39.i544 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ar ], [ %.sink39.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit ] ; 13 uses
  %.sink40.i533 = phi i64 [ 0, %bb.ar ], [ %.sink40.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit ] ; 13 uses
  %.sroa.099.0 = phi i8 [ 1, %bb.ar ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit ] ; 13 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i235) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.4450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.4459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.5460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.4473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.7360.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9.0..sroa_idx363 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph, %.backedge
  %.lcssa632649 = phi i64 [ 0, %.lr.ph ], [ %.lcssa632647, %.backedge ] ; 3 uses
  %.lcssa611635644 = phi i64 [ 0, %.lr.ph ], [ %.lcssa611634, %.backedge ] ; 6 uses
  %i.em = icmp ult i64 %.pre2.i.i, %.lcssa632649
  br i1 %i.em, label %select.unfold, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.az, %bb.bd
  %i.en = phi i64 [ %i.fc, %bb.bd ], [ %.lcssa632649, %bb.az ] ; 5 uses
  %i.eo = sub nuw i64 %.pre2.i.i, %i.en           ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i235, i64 %i.en ; 2 uses
  %i.eq = icmp samesign ult i64 %i.eo, 16
  br i1 %i.eq, label %.preheader.i.i.i, label %bb.ba

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ba:                                            ; preds = %.lr.ph.split.i.i
  %i.er = invoke { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr14memchr_aligned(i8 noundef 38, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef range(i64 0, -9223372036854775808) %i.eo)
          to label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.bb, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.eo, %bb.bb ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.bb ], [ 1, %.lr.ph.i.i.i ]
  %i.es = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.et = insertvalue { i64, i64 } %i.es, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.bb
  %.sroa.01.05.i.i.i = phi i64 [ %i.ex, %bb.bb ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.01.05.i.i.i
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !21493, !noalias !21494, !noundef !24
  %i.ew = icmp eq i8 %i.ev, 38
  br i1 %i.ew, label %._crit_edge.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i
  %i.ex = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ex, %i.eo
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.ba, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.et, %._crit_edge.i.i.i ], [ %i.er, %bb.ba ] ; 2 uses
  %i.ey = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ez = trunc nuw i64 %i.ey to i1
  br i1 %i.ez, label %bb.bc, label %select.unfold

bb.bc:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i
  %i.fa = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.fb = add nuw i64 %i.en, 1
  %i.fc = add i64 %i.fb, %i.fa                    ; 5 uses
  %.not13.i.i = icmp ugt i64 %i.fc, %.pre2.i.i
  %i.fd = add i64 %i.en, %i.fa
  %or.cond.i.i.not = icmp ult i64 %i.fd, %.pre2.i.i
  br i1 %or.cond.i.i.not, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  br i1 %.not13.i.i, label %select.unfold, label %.lr.ph.split.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fe = add i64 %i.en, %i.fa                    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.i235, i64 %i.fe
  %lhsc = load i8, ptr %i.ff, align 1
end_hunk_1
