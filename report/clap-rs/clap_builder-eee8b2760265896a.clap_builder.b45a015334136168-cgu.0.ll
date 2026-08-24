Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB8_6parserNtB3o_6Parser18did_you_mean_errors_0EReINtB2f_7IterMutNtNtNtBa_7builder7command7CommandEE0Ba_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %i.v = load i32, ptr %i.s, align 8, !range !1176, !alias.scope !1177, !noalias !1178, !noundef !13
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1195
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1177, !noalias !1178, !nonnull !13, !noundef !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1177, !noalias !1178, !noundef !13
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa) #43, !noalias !1196
  %i.ab = load i64, ptr %i.a, align 8, !range !127, !noalias !1195, !noundef !13 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, -1
  %i.ac = load ptr, ptr %i.q, align 8, !noalias !1195 ; 2 uses
  %i.ad = load i64, ptr %i.r, align 8, !noalias !1195 ; 13 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %.loopexit136

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit137, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.thread.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1197
  %i.af = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 9) 1) #43, !noalias !1197 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.loopexit137, label %bb.g

.loopexit137:                                     ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %i.ad) #46, !noalias !1196
  unreachable

bb.g:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.ac, i64 %i.ad, i1 false), !noalias !1196
  br label %.loopexit136

.loopexit136:                                     ; preds = %bb.d, %bb.g
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.g ], [ %i.ac, %bb.d ] ; 6 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.ab, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1195
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i) ]
  %i.ah = tail call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.i.i.i.i.i.i.i.i.i, i64 noundef %i.ad) #43, !noalias !1200 ; 3 uses
  %i.ai = fcmp ogt double %i.ah, f0x3FE6666666666666
  br i1 %i.ai, label %bb.m, label %bb.k

.thread.i:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1195
  %i.aj = tail call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #43, !noalias !1200 ; 2 uses
  %i.ak = fcmp ogt double %i.aj, f0x3FE6666666666666
  br i1 %i.ak, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i

bb.h:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.o, align 8, !noalias !1160, !nonnull !13, !noundef !13 ; 11 uses
  %i.am = load i64, ptr %i.b, align 8, !range !14, !noalias !1160, !noundef !13 ; 2 uses
  %i.an = icmp ult i64 %.ph134, 288230376151711744
  tail call void @llvm.assume(i1 %i.an)
  %.idx.i = shl nuw nsw i64 %.ph134, 5            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  %i.ap = shl i64 %i.am, 5                        ; 6 uses
  %i.aq = udiv i64 %i.ap, 24                      ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %.ph134, 0
  br i1 %.not9.i.i.i.i.i.i, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.h
  %i.ar = add nsw i64 %.idx.i, -32                ; 2 uses
  %i.as = lshr exact i64 %i.ar, 5
  %i.at = add nuw nsw i64 %i.as, 1
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.010.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.al, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.au = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.al, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !1201
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1214

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.4.010.i.i.i.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ar, 224
  br i1 %i.ay, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.010.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.az = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !1201
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !1201
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !1201
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !1201
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !1201
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 168
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !1201
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 144
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 200
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !1201
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 168
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 256 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 232
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !noalias !1201
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.bo, %i.ao
  br i1 %.not.i.i.i.i.i.i.7, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.h
  %.sroa.4.0.lcssa.i.i.i.i.i77.i = phi ptr [ %i.al, %bb.h ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  %i.br = mul nuw i64 %i.aq, 24                   ; 6 uses
  %i.bs = icmp ne i64 %i.ap, %i.br
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.bs, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.i, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit

bb.i:                                             ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.bt = icmp eq i64 %i.ap, 0
  br i1 %i.bt, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i: ; preds = %bb.i
  %i.bu = icmp ule i64 %i.br, %i.ap
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %i.al, i64 noundef %i.ap, i64 noundef 8, i64 noundef range(i64 0, -15) %i.br) #43, !noalias !1216 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.j, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit, !prof !1217

bb.j:                                             ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.br) #46, !noalias !1216
  unreachable

bb.k:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i, %.loopexit136
  %.sroa.01.0.i.i.i.i.i.i.i.i84.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i8591101.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.01.0.i.i.i.i.i.i.i.i.i, %.loopexit136 ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i82.i = phi ptr [ %.sroa.5.0.i.i.i.i.i.i.i.i8392100.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %.loopexit136 ]
  %i.bx = phi ptr [ %i.cw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.ph, %.loopexit136 ]
  %i.by = phi i64 [ %i.dc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.ph134, %.loopexit136 ]
  %i.bz = phi ptr [ %i.cw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.ph135, %.loopexit136 ]
  %i.ca = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i84.i, 0
  br i1 %i.ca, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i.i.i.i.i.i.i82.i, i64 noundef %.sroa.01.0.i.i.i.i.i.i.i.i84.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1218
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer.backedge: ; preds = %bb.l, %bb.k
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer

bb.m:                                             ; preds = %.loopexit136
  %.not.i.i = icmp slt i64 %i.ad, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n, !prof !1221

bb.n:                                             ; preds = %bb.m
  %i.cb = icmp eq i64 %i.ad, 0
  br i1 %i.cb, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.n
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1222
  %i.cc = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 9) 1) #43, !noalias !1222 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.m
  %.sroa.432.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.m ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.432.0.ph.i, i64 %i.ad) #46, !noalias !1200
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i: ; preds = %.thread.i, %bb.t, %bb.n
  %i.ce = phi double [ %i.ah, %bb.t ], [ %i.ah, %bb.n ], [ %i.aj, %.thread.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i8591101.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.sroa.01.0.i.i.i.i.i.i.i.i.i, %bb.n ], [ 0, %.thread.i ]
  %.sroa.5.0.i.i.i.i.i.i.i.i8392100.i = phi ptr [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %bb.n ], [ inttoptr (i64 1 to ptr), %.thread.i ]
  %.sroa.65.0.i.i.i.i.i.i.i.i819399.i = phi i64 [ %i.ad, %bb.t ], [ 0, %bb.n ], [ 0, %.thread.i ] ; 2 uses
  %i.cf = phi ptr [ %i.cc, %bb.t ], [ inttoptr (i64 1 to ptr), %bb.n ], [ inttoptr (i64 1 to ptr), %.thread.i ]
  switch i64 %.ph134, label %.lr.ph.i.i [
    i64 0, label %bb.p
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.cm, %.lr.ph.i.i ], [ %.ph134, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.cl, %.lr.ph.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ] ; 2 uses
  %i.cg = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.ch = add nuw i64 %i.cg, %.sroa.05.016.i.i    ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %.ph134
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %.ph135, i64 %i.ch
  %.val12.i.i = load double, ptr %i.cj, align 8, !alias.scope !1225, !noalias !1228, !noundef !13
  %i.ck = fcmp ogt double %.val12.i.i, %i.ce
  %i.cl = select i1 %i.ck, i64 %.sroa.05.016.i.i, i64 %i.ch, !unpredictable !13 ; 2 uses
  %i.cm = sub i64 %.sroa.01.017.i.i, %i.cg        ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, 1
  br i1 %i.cn, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ], [ %i.cl, %.lr.ph.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %.ph135, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.co, align 8, !alias.scope !1225, !noalias !1228, !noundef !13
  %i.cp = fcmp ule double %.val14.i.i, %i.ce
  %i.cq = zext i1 %i.cp to i64
  %i.cr = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.cq ; 2 uses
  %i.cs = icmp ule i64 %i.cr, %.ph134
  tail call void @llvm.assume(i1 %i.cs)
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i
  %.sroa.4.0.i.i = phi i64 [ %.ph134, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i ], [ %i.cr, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %i.ct = icmp ult i64 %.ph134, 288230376151711744
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = load i64, ptr %i.b, align 8, !range !14, !alias.scope !1230, !noalias !1233, !noundef !13
  %i.cv = icmp eq i64 %.ph134, %i.cu
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !1235
  %.pre.i = load ptr, ptr %i.o, align 8, !alias.scope !1230, !noalias !1233
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cw = phi ptr [ %.pre.i, %bb.q ], [ %.ph, %bb.p ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %.sroa.4.0.i.i ; 6 uses
  %i.cy = icmp samesign ult i64 %.sroa.4.0.i.i, %.ph134
  br i1 %i.cy, label %bb.s, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.da = sub nuw nsw i64 %.ph134, %.sroa.4.0.i.i
  %i.db = shl nuw nsw i64 %i.da, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr nonnull align 8 %i.cx, i64 %i.db, i1 false), !noalias !1236
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.s, %bb.r
  store double %i.ce, ptr %i.cx, align 8, !noalias !1237
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %.sroa.65.0.i.i.i.i.i.i.i.i819399.i, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !1237
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.cf, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !1237
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 %.sroa.65.0.i.i.i.i.i.i.i.i819399.i, ptr %.sroa.6.0..sroa_idx26.i, align 8, !noalias !1237
  %i.dc = add nuw nsw i64 %.ph134, 1              ; 2 uses
  store i64 %i.dc, ptr %i.p, align 8, !alias.scope !1230, !noalias !1233
  br label %bb.k

bb.t:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %.sroa.5.0.i.i.i.i.i.i.i.i.i, i64 %i.ad, i1 false), !noalias !1200
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread44.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit: ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  %.sroa.04.0.i.i.i = phi ptr [ %i.al, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.bv, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1160
  %i.dd = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i77.i, %i.al
  br i1 %i.dd, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %bb.v

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1160
  %i.de = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i77.i, %i.al
  br i1 %i.de, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread, label %bb.v

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread: ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.df, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.dg, align 8
  %i.dh = icmp eq i64 %i.ap, 0
  br i1 %i.dh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1238
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

bb.v:                                             ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit
  %.sroa.04.0.i.i.i111 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit.thread ], [ %.sroa.04.0.i.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1Y_3map3MapINtNtNtB22_5slice4iter4IterNtNtB8_7mkeymap3KeyENCNvMs4_B3F_NtB3F_7MKeyMap4keys0ENCNCINvB2_17did_you_mean_flagIB2W_IB3d_B1h_ENCNvMs0_NtB6_6parserNtB5k_6Parser18did_you_mean_errors_0EReINtB3f_7IterMutNtNtNtB8_7builder7command7CommandEE00EEB8_.exit ] ; 3 uses
  %i.di = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i77.i to i64
  %i.dj = ptrtoint ptr %i.al to i64
  %i.dk = sub nuw i64 %i.di, %i.dj                ; 2 uses
  %i.dl = udiv exact i64 %i.dk, 24
  %i.dm = add nsw i64 %i.dl, -1                   ; 4 uses
  %i.dn = icmp samesign ult i64 %i.dm, %i.aq
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = icmp ult i64 %i.dk, -9223372036854775768
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i111, i64 %i.dm ; 3 uses
  %.sroa.053.0.copyload = load i64, ptr %i.dp, align 8 ; 3 uses
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.454.0..sroa_idx, align 8 ; 3 uses
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %.sroa.555.0.copyload = load i64, ptr %.sroa.555.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.dq = icmp eq i64 %i.dm, 0
  br i1 %i.dq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22
  %.sroa.0.03.i.i.i19 = phi i64 [ %i.ds, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22 ], [ 0, %bb.v ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i111, i64 %.sroa.0.03.i.i.i19 ; 2 uses
  %i.ds = add nuw nsw i64 %.sroa.0.03.i.i.i19, 1  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %.val.i.i.i.i20 = load i64, ptr %i.dr, align 8, !range !14, !alias.scope !1247, !noalias !1248, !noundef !13 ; 2 uses
  %i.dt = icmp eq i64 %.val.i.i.i.i20, 0
  br i1 %i.dt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i18
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.val1.i.i.i.i21 = load ptr, ptr %i.du, align 8, !alias.scope !1247, !noalias !1248, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i21, i64 noundef %.val.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1251
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22: ; preds = %bb.w, %.lr.ph.i.i.i18
  %i.dv = icmp eq i64 %i.ds, %i.dm
  br i1 %i.dv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25, label %.lr.ph.i.i.i18

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i22, %bb.v
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i111, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1248
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !13 ; 3 uses
  %.idx = shl nuw nsw i64 %i.dz, 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx
  %i.eb = icmp eq i64 %i.dz, 0
  br i1 %i.eb, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25, %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i
  %.sroa.02.010.i = phi i64 [ %i.eh, %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25 ] ; 3 uses
  %i.ec = phi ptr [ %i.ed, %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i ], [ %i.dx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 8
  %.val7.i = load i64, ptr %i.ee, align 8, !noalias !1252, !noundef !13
  %i.ef = icmp eq i64 %.val7.i, %i.k
  br i1 %i.ef, label %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i, label %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i

_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i: ; preds = %.lr.ph.i
  %.val6.i = load ptr, ptr %i.ec, align 8, !noalias !1252, !nonnull !13, !noundef !13
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val6.i, ptr nonnull %i.i, i64 %i.k), !noalias !1252
  %i.eg = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.eg, label %bb.x, label %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i

_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i: ; preds = %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i, %.lr.ph.i
  %i.eh = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.ei = icmp eq ptr %i.ed, %i.ea
  br i1 %i.ei, label %.loopexit, label %.lr.ph.i

bb.x:                                             ; preds = %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.i
  %i.ej = icmp ult i64 %.sroa.02.010.i, %i.dz
  tail call void @llvm.assume(i1 %i.ej)
  %.not.i = icmp slt i64 %i.k, 0
  br i1 %.not.i, label %bb.aa, label %bb.y, !prof !321

bb.y:                                             ; preds = %bb.x
  %i.ek = icmp eq i64 %i.k, 0
  br i1 %i.ek, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread66, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.y
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1256
  %i.el = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.k, i64 noundef range(i64 1, 9) 1) #43, !noalias !1256 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.aa, label %bb.ab

.loopexit:                                        ; preds = %_RNCNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtBa_6parserNtB3q_6Parser18did_you_mean_errors_0EReINtB2h_7IterMutNtNtNtBc_7builder7command7CommandEE0s_0Bc_.exit.thread.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit25
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.en, align 8
  %i.eo = icmp eq i64 %.sroa.053.0.copyload, 0
  br i1 %i.eo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.454.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.454.0.copyload, i64 noundef %.sroa.053.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1259
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread, %bb.z, %.loopexit, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.u, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread66
  ret void

bb.aa:                                            ; preds = %bb.x, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %.sroa.457.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.x ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.457.0.ph, i64 %i.k) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread66: ; preds = %bb.y, %bb.ab
  %i.ep = phi ptr [ %i.el, %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.y ]
  store i64 %.sroa.02.010.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.053.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.454.0.copyload, ptr %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.555.0.copyload, ptr %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.k, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_:bb.a
  %.sroa.4298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  store i8 -1, ptr %.sroa.4298.0..sroa_idx, align 2
  %.sroa.4399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 230
  store i16 0, ptr %.sroa.4399.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 11>, ptr %.sroa.45100.0..sroa_idx, align 2
  %i.d = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  %i.e = load i64, ptr %1, align 8, !range !127, !noundef !13
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 4, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.b, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  ret ptr %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error13invalid_valueB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.412 = alloca [31 x i8], align 1          ; 2 uses
  %.sroa.48 = alloca [31 x i8], align 1           ; 2 uses
  %i.d = alloca [120 x i8], align 8               ; 14 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !13, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !13
  %.idx = mul nuw nsw i64 %3, 24                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1334
  store i64 0, ptr %i.b, align 8, !noalias !1334
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !1334
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !1334
  %i.l = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.l, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread, label %.lr.ph.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1334
  br label %.thread

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %i.m = phi ptr [ %i.be, %bb.d ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.bf, %bb.d ], [ 0, %bb.a ]   ; 11 uses
  %i.o = phi ptr [ %i.bg, %bb.d ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 3 uses
  %.sroa.0.047.i = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.047.i, i64 24 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.047.i, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !noalias !1334, !nonnull !13, !noundef !13 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.047.i, i64 16
  %.val1.i.i = load i64, ptr %i.r, align 8, !noalias !1334, !noundef !13 ; 8 uses
  %i.s = tail call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #43, !noalias !1338 ; 4 uses
  %i.t = fcmp ogt double %i.s, f0x3FE6666666666666
  br i1 %i.t, label %bb.e, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d
  %.pre50.i = load ptr, ptr %i.j, align 8, !noalias !1334 ; 10 uses
  %.pre51.i = load i64, ptr %i.b, align 8, !range !14, !noalias !1334 ; 2 uses
  %i.u = icmp ult i64 %i.bf, 288230376151711744
  tail call void @llvm.assume(i1 %i.u)
  %.idx.i = shl nuw nsw i64 %i.bf, 5              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre50.i, i64 %.idx.i
  %i.w = shl i64 %.pre51.i, 5                     ; 5 uses
  %i.x = udiv i64 %i.w, 24                        ; 3 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not9.i.i.i.i.i.i, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %i.y = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.z = lshr exact i64 %i.y, 5
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.010.i.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ], [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !1339
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1352

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.4.010.i.i.i.i.i.i.unr = phi ptr [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.af = icmp ult i64 %i.y, 224
  br i1 %i.af, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.010.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ag = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !1339
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !1339
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !1339
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !1339
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !1339
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !1339
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !1339
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 256 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !1339
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.av, %i.v
  br i1 %.not.i.i.i.i.i.i.7, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.sroa.4.0.lcssa.i.i.i.i.i.i170 = phi ptr [ %.pre50.i, %._crit_edge.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ax, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %.pre51.i, 0
  %i.ay = mul nuw i64 %i.x, 24                    ; 4 uses
  %i.az = icmp ne i64 %i.w, %i.ay
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.az, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.b, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit

bb.b:                                             ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.ba = icmp eq i64 %i.w, 0
  br i1 %i.ba, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i: ; preds = %bb.b
  %i.bb = icmp ule i64 %i.ay, %i.w
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.pre50.i, i64 noundef %i.w, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ay) #43, !noalias !1353 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.c, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit, !prof !1217

bb.c:                                             ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ay) #46, !noalias !1353
  unreachable

bb.d:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i, %.lr.ph.i
  %i.be = phi ptr [ %i.cc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.m, %.lr.ph.i ]
  %i.bf = phi i64 [ %i.ci, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %i.bg = phi ptr [ %i.cc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.o, %.lr.ph.i ]
  %i.bh = icmp eq ptr %i.p, %i.i
  br i1 %i.bh, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp slt i64 %.val1.i.i, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !321

bb.f:                                             ; preds = %bb.e
  %i.bi = icmp eq i64 %.val1.i.i, 0
  br i1 %i.bi, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.f
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1354
  %i.bj = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !1354 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.e
  %.sroa.429.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.e ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.429.0.ph.i, i64 %.val1.i.i) #46, !noalias !1338
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i: ; preds = %bb.l, %bb.f
  %i.bl = phi ptr [ %i.bj, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.f ]
  switch i64 %i.n, label %.lr.ph.i.i [
    i64 0, label %bb.h
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.bs, %.lr.ph.i.i ], [ %i.n, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ] ; 2 uses
  %i.bm = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.bn = add nuw i64 %i.bm, %.sroa.05.016.i.i    ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %i.n
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.bn
  %.val12.i.i = load double, ptr %i.bp, align 8, !alias.scope !1357, !noalias !1360, !noundef !13
  %i.bq = fcmp ogt double %.val12.i.i, %i.s
  %i.br = select i1 %i.bq, i64 %.sroa.05.016.i.i, i64 %i.bn, !unpredictable !13 ; 2 uses
  %i.bs = sub i64 %.sroa.01.017.i.i, %i.bm        ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 1
  br i1 %i.bt, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ], [ %i.br, %.lr.ph.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.bu, align 8, !alias.scope !1357, !noalias !1360, !noundef !13
  %i.bv = fcmp ule double %.val14.i.i, %i.s
  %i.bw = zext i1 %i.bv to i64
  %i.bx = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.bw ; 2 uses
  %i.by = icmp ule i64 %i.bx, %i.n
  tail call void @llvm.assume(i1 %i.by)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i
  %.sroa.4.0.i.i = phi i64 [ %i.n, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ], [ %i.bx, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.bz = icmp ult i64 %i.n, 288230376151711744
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = load i64, ptr %i.b, align 8, !range !14, !alias.scope !1362, !noalias !1365, !noundef !13
  %i.cb = icmp eq i64 %i.n, %i.ca
  br i1 %i.cb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !1367
  %.pre.i = load ptr, ptr %i.j, align 8, !alias.scope !1362, !noalias !1365
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cc = phi ptr [ %.pre.i, %bb.i ], [ %i.m, %bb.h ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %.sroa.4.0.i.i ; 6 uses
  %i.ce = icmp samesign ult i64 %.sroa.4.0.i.i, %i.n
  br i1 %i.ce, label %bb.k, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cg = sub nuw nsw i64 %i.n, %.sroa.4.0.i.i
  %i.ch = shl nuw nsw i64 %i.cg, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr nonnull align 8 %i.cd, i64 %i.ch, i1 false), !noalias !1368
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.k, %bb.j
  store double %i.s, ptr %i.cd, align 8, !noalias !1369
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %.val1.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1369
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.bl, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !1369
  %.sroa.6.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 %.val1.i.i, ptr %.sroa.6.0..sroa_idx24.i, align 8, !noalias !1369
  %i.ci = add nuw nsw i64 %i.n, 1                 ; 2 uses
  store i64 %i.ci, ptr %i.k, align 8, !alias.scope !1362, !noalias !1365
  br label %bb.d

bb.l:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %.val.i.i, i64 %.val1.i.i, i1 false), !noalias !1338
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit: ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.b, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  %i.cj = phi i64 [ %i.x, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.x, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.04.0.i.i.i = phi ptr [ %.pre50.i, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.bc, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.b ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1334
  %i.ck = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i170, %.pre50.i
  br i1 %i.ck, label %.thread, label %bb.m

.thread:                                          ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit
  %.sroa.04.0.i.i.i175 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread ], [ %.sroa.04.0.i.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit ] ; 2 uses
  %i.cl = phi i64 [ 0, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread ], [ %i.cj, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i175) ]
  br label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i

bb.m:                                             ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit
  %i.cm = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i170 to i64
  %i.cn = ptrtoint ptr %.pre50.i to i64
  %i.co = sub nuw i64 %i.cm, %i.cn                ; 2 uses
  %i.cp = udiv exact i64 %i.co, 24
  %i.cq = add nsw i64 %i.cp, -1                   ; 4 uses
  %i.cr = icmp samesign ult i64 %i.cq, %i.cj
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp ult i64 %i.co, -9223372036854775768
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i, i64 %i.cq ; 2 uses
  %.sroa.025.0.copyload = load i64, ptr %i.ct, align 8 ; 2 uses
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.0..sroa_idx, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  %i.cu = icmp eq i64 %i.cq, 0
  br i1 %i.cu, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.cw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.04.0.i.i.i, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.cw = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %.val.i.i.i.i87 = load i64, ptr %i.cv, align 8, !range !14, !alias.scope !1376, !noalias !1377, !noundef !13 ; 2 uses
  %i.cx = icmp eq i64 %.val.i.i.i.i87, 0
  br i1 %i.cx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !1376, !noalias !1377, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i87, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1380
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i
  %i.cz = icmp eq i64 %i.cw, %i.cq
  br i1 %i.cz, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %.thread
  %.sroa.04.0.i.i.i173 = phi ptr [ %.sroa.04.0.i.i.i175, %.thread ], [ %.sroa.04.0.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.da = phi i64 [ %i.cl, %.thread ], [ %i.cj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %.sroa.03.0142 = phi i64 [ -1, %.thread ], [ %.sroa.025.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread: ; preds = %bb.m, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  %.sroa.04.0.i.i.i174 = phi ptr [ %.sroa.04.0.i.i.i173, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.04.0.i.i.i, %bb.m ]
  %i.dc = phi i64 [ %i.da, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.cj, %bb.m ]
  %.sroa.03.0142144 = phi i64 [ %.sroa.03.0142, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.025.0.copyload, %bb.m ]
  %i.dd = mul nuw i64 %i.dc, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i174, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1377
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread
  %.sroa.03.0142145 = phi i64 [ %.sroa.03.0142, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.03.0142144, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread ] ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1381
  %i.de = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1381 ; 47 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.o, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !1217

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1381
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
  store i64 2, ptr %i.de, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store i64 0, ptr %.sroa.497.0..sroa_idx, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.598.0..sroa_idx, align 8
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %.sroa.8101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.699.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8101.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx102, align 8
  %.sroa.10.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx103, align 8
  %.sroa.11105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  store ptr null, ptr %.sroa.11105.0..sroa_idx, align 8
  %.sroa.12107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  store i8 -1, ptr %.sroa.12107.0..sroa_idx, align 8
  %.sroa.13108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 124
  store i8 -1, ptr %.sroa.13108.0..sroa_idx, align 4
  %.sroa.14110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  store i8 -1, ptr %.sroa.14110.0..sroa_idx, align 8
  %.sroa.15112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 132
  store i16 0, ptr %.sroa.15112.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.de, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx113, align 2
  %.sroa.17115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 138
  store i8 -1, ptr %.sroa.17115.0..sroa_idx, align 2
  %.sroa.18117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 142
  store i8 -1, ptr %.sroa.18117.0..sroa_idx, align 2
  %.sroa.19119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 146
  store i16 0, ptr %.sroa.19119.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.21120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  store i8 -1, ptr %.sroa.21120.0..sroa_idx, align 8
  %.sroa.22121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 156
  store i8 -1, ptr %.sroa.22121.0..sroa_idx, align 4
  %.sroa.23122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 160
  store i16 0, ptr %.sroa.23122.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.25123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 166
  store i8 -1, ptr %.sroa.25123.0..sroa_idx, align 2
  %.sroa.26124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 170
  store i8 -1, ptr %.sroa.26124.0..sroa_idx, align 2
  %.sroa.27125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 174
  store i16 0, ptr %.sroa.27125.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 180
  store i8 -1, ptr %.sroa.29126.0..sroa_idx, align 4
  %.sroa.30127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 184
  store i8 -1, ptr %.sroa.30127.0..sroa_idx, align 8
  %.sroa.31128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 188
  store i16 0, ptr %.sroa.31128.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 194
  store i8 -1, ptr %.sroa.33129.0..sroa_idx, align 2
  %.sroa.34130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 198
  store i8 -1, ptr %.sroa.34130.0..sroa_idx, align 2
  %.sroa.35131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 202
  store i16 0, ptr %.sroa.35131.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args:bb.a
  store i64 %.val.i.i.i.i.i, ptr %i.dw, align 8, !alias.scope !3462, !noalias !3464
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %.sroa.5.0.copyload12.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !3462, !noalias !3464
  %.sroa.939.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %.val3.i.i.i.i.i, ptr %.sroa.939.0..sroa_idx.i, align 8, !alias.scope !3462, !noalias !3464
  %.sroa.1048.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i64 %.val4.i.i.i.i.i, ptr %.sroa.1048.0..sroa_idx.i, align 8, !alias.scope !3462, !noalias !3464
  br label %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit16.i.i.i.i

bb.u:                                             ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i
  %i.dx = add nuw nsw i64 %.sroa.510.0.i.i.i.i, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %spec.select39.i.i.i.i, i64 %i.dx
  %i.dz = sub nuw nsw i64 %i.dv, %.sroa.510.0.i.i.i.i ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dz, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dw, i64 %i.ea, i1 false), !alias.scope !3465, !noalias !3466
  store i64 %.val.i.i.i.i.i, ptr %i.dw, align 8, !alias.scope !3462, !noalias !3464
  %.sroa.8.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %.sroa.5.0.copyload12.i, ptr %.sroa.8.0..sroa_idx31.i, align 8, !alias.scope !3462, !noalias !3464
  %.sroa.939.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %.val3.i.i.i.i.i, ptr %.sroa.939.0..sroa_idx40.i, align 8, !alias.scope !3462, !noalias !3464
  %.sroa.1048.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i64 %.val4.i.i.i.i.i, ptr %.sroa.1048.0..sroa_idx49.i, align 8, !alias.scope !3462, !noalias !3464
  %i.eb = getelementptr inbounds nuw i8, ptr %spec.select39.i.i.i.i, i64 360 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.sroa.510.0.i.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dx
  %i.ee = shl nuw nsw i64 %i.dz, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.ec, i64 %i.ee, i1 false), !alias.scope !3467, !noalias !3470
  br label %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit16.i.i.i.i

_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit16.i.i.i.i: ; preds = %bb.u, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjNtNtB8_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit.i15.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %spec.select39.i.i.i.i, i64 360
  %i.eg = add i16 %i.du, 1
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.510.0.i.i.i.i
  store ptr %i.aw, ptr %i.eh, align 8, !alias.scope !3467, !noalias !3470
  store i16 %i.eg, ptr %i.dt, align 2, !noalias !3472
  store i64 %.sroa.020.i.sroa.4.0.copyload.i.i.i, ptr %.sroa.5.i.i.i, align 8, !noalias !3473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.020.i.sroa.5.i.i.i, i64 16, i1 false), !noalias !3473
  br label %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i

_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i: ; preds = %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit16.i.i.i.i, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit.i.i.i.i
  %.sroa.13.0.i.i.i = phi ptr [ undef, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit.i.i.i.i ], [ %i.cy, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit16.i.i.i.i ] ; 3 uses
  %.sroa.75.0.i.i.i = phi ptr [ undef, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit.i.i.i.i ], [ %i.dl, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit16.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ undef, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit.i.i.i.i ], [ %.sroa.020.i.sroa.0.0.copyload.i.i.i, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit16.i.i.i.i ] ; 2 uses
  %.sink51.i.sroa.phi.i.i.i = phi ptr [ %.sroa.5.i.i.i, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit.i.i.i.i ], [ %.sroa.15.i.i.i, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit16.i.i.i.i ]
  %.sink50.i.i.i.i = phi i64 [ -1, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit.i.i.i.i ], [ 0, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_4LeafENtB1m_4EdgeE10insert_fitB27_.exit16.i.i.i.i ]
  store i64 %.sink50.i.i.i.i, ptr %.sink51.i.sroa.phi.i.i.i, align 8, !alias.scope !3401, !noalias !3473
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.020.i.sroa.5.i.i.i)
  %.sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i.i = load i64, ptr %.sroa.5.i.i.i, align 8, !range !127, !noalias !3476, !noundef !13 ; 3 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i.i, -1
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !3476
  %.sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.64..i.i.i = load i64, ptr %.sroa.15.i.i.i, align 8, !noalias !3476, !noundef !13 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i)
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 352
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !3477, !noundef !13 ; 2 uses
  %.not.i85.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i85.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.w:                                             ; preds = %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i)
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Y_11VacantEntryB1D_B21_E12insert_entry0EB28_.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.at, %bb.v
  %.sroa.0.sroa.7.0.lcssa.i.i.i = phi i64 [ %.sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i.i, %bb.v ], [ %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i, %bb.at ]
  %.sroa.0.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.02.0.i.i.i, %bb.v ], [ %.sroa.019.0.i.i.i, %bb.at ]
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ %.sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.64..i.i.i, %bb.v ], [ %.sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.0..sroa.16.i.i.0..sroa.16.i.0..sroa.16.i.0..sroa.16.0..sroa.16.0..sroa.16.64..i.i.i, %bb.at ]
  %.sroa.10.0.lcssa.i.i.i = phi ptr [ %.sroa.13.0.i.i.i, %bb.v ], [ %.sroa.14.0.i.i.i, %bb.at ] ; 3 uses
  %.sroa.7.0.lcssa.i.i.i = phi ptr [ %.sroa.75.0.i.i.i, %bb.v ], [ %.sroa.823.0.i.i.i, %bb.at ] ; 2 uses
  %i.ek = load ptr, ptr %i.u, align 8, !alias.scope !3353, !noalias !3480, !noundef !13 ; 4 uses
  %.not.i38.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i38.i.i.i, label %bb.ab, label %bb.x, !prof !269

bb.x:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3483)
  %i.el = load i64, ptr %i.v, align 8, !alias.scope !3486, !noalias !3480, !noundef !13 ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !3487
  %i.em = call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 552, i64 noundef range(i64 1, 9) 8) #43, !noalias !3487 ; 12 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.y, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i.i.i.i, !prof !269

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #46, !noalias !3487
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 352
  store ptr null, ptr %i.eo, align 8, !noalias !3487
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 450 ; 2 uses
  store i16 0, ptr %i.ep, align 2, !noalias !3487
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 456
  store ptr %i.ek, ptr %i.eq, align 8, !noalias !3487
  %i.er = add i64 %i.el, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.z, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB28_.exit.i.i.i.i, !prof !269

bb.z:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #44, !noalias !3487
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB28_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 352
  store ptr %i.em, ptr %i.es, align 8, !noalias !3488
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 448
  store i16 0, ptr %i.et, align 8, !noalias !3493
  store ptr %i.em, ptr %i.u, align 8, !alias.scope !3486, !noalias !3480
  store i64 %i.er, ptr %i.v, align 8, !alias.scope !3486, !noalias !3480
  %i.eu = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, %i.el
  br i1 %i.eu, label %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjNtNtBf_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entry0B1Q_.exit.i.i.i, label %bb.aa, !prof !159

bb.aa:                                            ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB28_.exit.i.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #44, !noalias !3494
  unreachable

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #44, !noalias !3498
  unreachable

_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjNtNtBf_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entry0B1Q_.exit.i.i.i: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB28_.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.lcssa.i.i.i) ]
  store i16 1, ptr %i.ep, align 2, !noalias !3494
  store i64 %.sroa.0.sroa.0.0.lcssa.i.i.i, ptr %i.em, align 8, !noalias !3499
  %.sroa.024.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 %.sroa.0.sroa.7.0.lcssa.i.i.i, ptr %.sroa.024.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !3499
  %.sroa.024.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !3500
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 360
  store ptr %.sroa.7.0.lcssa.i.i.i, ptr %i.ev, align 8, !noalias !3494
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 464
  store ptr %.sroa.10.0.lcssa.i.i.i, ptr %i.ew, align 8, !noalias !3494
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa.i.i.i, i64 352
  store ptr %i.em, ptr %i.ex, align 8, !noalias !3494
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa.i.i.i, i64 448
  store i16 1, ptr %i.ey, align 8, !noalias !3494
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Y_11VacantEntryB1D_B21_E12insert_entry0EB28_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v, %bb.at
  %i.ez = phi ptr [ %i.mj, %bb.at ], [ %i.ej, %bb.v ] ; 19 uses
  %.sroa.7.092.i.i.i = phi ptr [ %.sroa.823.0.i.i.i, %bb.at ], [ %.sroa.75.0.i.i.i, %bb.v ] ; 5 uses
  %.sroa.8.091.i.i.i = phi ptr [ %i.ez, %bb.at ], [ %.sroa.0.0.i.i.i, %bb.v ]
  %.sroa.9.090.i.i.i = phi i64 [ %i.fa, %bb.at ], [ 0, %bb.v ] ; 2 uses
  %.sroa.10.089.i.i.i = phi ptr [ %.sroa.14.0.i.i.i, %bb.at ], [ %.sroa.13.0.i.i.i, %bb.v ] ; 2 uses
  %.sroa.12.088.i.i.i = phi i64 [ %.sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.0..sroa.16.i.i.0..sroa.16.i.0..sroa.16.i.0..sroa.16.0..sroa.16.0..sroa.16.64..i.i.i, %bb.at ], [ %.sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.64..i.i.i, %bb.v ]
  %.sroa.0.sroa.0.087.i.i.i = phi i64 [ %.sroa.019.0.i.i.i, %bb.at ], [ %.sroa.02.0.i.i.i, %bb.v ] ; 4 uses
  %.sroa.0.sroa.7.086.i.i.i = phi i64 [ %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i, %bb.at ], [ %.sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i.i, %bb.v ] ; 4 uses
  %i.fa = add i64 %.sroa.9.090.i.i.i, 1           ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.8.091.i.i.i, i64 448
  %i.fc = load i16, ptr %i.fb, align 8, !noalias !3477 ; 4 uses
  %i.fd = zext i16 %i.fc to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.092.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3501)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016.i.sroa.5.i.i.i)
  %i.fe = icmp eq i64 %.sroa.12.088.i.i.i, %.sroa.9.090.i.i.i
  br i1 %i.fe, label %bb.ad, label %bb.ac, !prof !159

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #44, !noalias !3504
  unreachable

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 450 ; 4 uses
  %i.fg = load i16, ptr %i.ff, align 2, !noalias !3504, !noundef !13 ; 5 uses
  %i.fh = icmp ult i16 %i.fg, 11
  br i1 %i.fh, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fi = icmp ult i16 %i.fc, 5
  br i1 %i.fi, label %bb.ak, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.fj = zext nneg i16 %i.fg to i64              ; 4 uses
  %i.fk = add nuw nsw i16 %i.fg, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  %i.fl = add nuw nsw i64 %i.fd, 1                ; 7 uses
  %.not.i.i41.not.i.i.i = icmp ult i16 %i.fc, %i.fg
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %i.fd ; 7 uses
  br i1 %.not.i.i41.not.i.i.i, label %bb.ag, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEB1b_.exit.i.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEB1b_.exit.i.i.i.i.i: ; preds = %bb.af
  store i64 %.sroa.0.sroa.0.087.i.i.i, ptr %i.fm, align 8, !alias.scope !3511, !noalias !3513
  %.sroa.735.0..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.0.sroa.7.086.i.i.i, ptr %.sroa.735.0..sroa_idx40.i.i.i, align 8, !alias.scope !3511, !noalias !3513
  %.sroa.842.0..sroa_idx45.i.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.842.0..sroa_idx45.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !3500
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ez, i64 360
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fd
  store ptr %.sroa.7.092.i.i.i, ptr %i.fo, align 8, !alias.scope !3517, !noalias !3520
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %i.fl
  %i.fq = sub nsw i64 %i.fj, %i.fd                ; 2 uses
  %i.fr = shl nuw nsw i64 %i.fq, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull align 8 %i.fm, i64 %i.fr, i1 false), !alias.scope !3523, !noalias !3524
  store i64 %.sroa.0.sroa.0.087.i.i.i, ptr %i.fm, align 8, !alias.scope !3511, !noalias !3513
  %.sroa.735.0..sroa_idx38.i.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.0.sroa.7.086.i.i.i, ptr %.sroa.735.0..sroa_idx38.i.i.i, align 8, !alias.scope !3511, !noalias !3513
  %.sroa.842.0..sroa_idx44.i.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.842.0..sroa_idx44.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !3500
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 360 ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fd ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fl
  %i.fv = shl nuw nsw i64 %i.fq, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr nonnull align 8 %i.ft, i64 %i.fv, i1 false), !alias.scope !3517, !noalias !3520
  store ptr %.sroa.7.092.i.i.i, ptr %i.ft, align 8, !alias.scope !3517, !noalias !3520
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ez, i64 456 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fl
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fd
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fz, ptr nonnull align 8 %i.fx, i64 %i.fv, i1 false), !alias.scope !3525, !noalias !3528
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i: ; preds = %bb.ag, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEB1b_.exit.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ez, i64 456 ; 6 uses
  %i.gb = add nuw nsw i64 %i.fj, 2                ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fl
  store ptr %.sroa.10.089.i.i.i, ptr %i.gc, align 8, !alias.scope !3525, !noalias !3528
  store i16 %i.fk, ptr %i.ff, align 2, !noalias !3528
  %i.gd = icmp samesign ult i64 %i.fl, %i.gb
  br i1 %i.gd, label %.lr.ph.i.i.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i
  %i.ge = add nuw nsw i64 %i.fj, 1
  %i.gf = sub nsw i64 %i.ge, %i.fd
  %i.gg = sub nsw i64 %i.fj, %i.fd
  %xtraiter173 = and i64 %i.gf, 3                 ; 2 uses
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.fl, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter175 = phi i64 [ %prol.iter175.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.gh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.gi = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !3528, !nonnull !13, !noundef !13 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 352
  store ptr %i.ez, ptr %i.gl, align 8, !noalias !3528
  %i.gm = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 448
  store i16 %i.gm, ptr %i.gn, align 8, !noalias !3528
  %prol.iter175.next = add i64 %prol.iter175, 1   ; 2 uses
  %prol.iter175.cmp.not = icmp eq i64 %prol.iter175.next, %xtraiter173
  br i1 %prol.iter175.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3529

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gh, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.go = icmp ult i64 %i.gg, 3
  br i1 %i.go, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.hh, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !3528, !nonnull !13, !noundef !13 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 352
  store ptr %i.ez, ptr %i.gs, align 8, !noalias !3528
  %i.gt = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 448
  store i16 %i.gt, ptr %i.gu, align 8, !noalias !3528
  %i.gv = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gp
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !3528, !nonnull !13, !noundef !13 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 352
  store ptr %i.ez, ptr %i.gy, align 8, !noalias !3528
  %i.gz = trunc nuw nsw i64 %i.gp to i16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 448
  store i16 %i.gz, ptr %i.ha, align 8, !noalias !3528
  %i.hb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gv
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !3528, !nonnull !13, !noundef !13 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 352
  store ptr %i.ez, ptr %i.he, align 8, !noalias !3528
  %i.hf = trunc nuw nsw i64 %i.gv to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 448
  store i16 %i.hf, ptr %i.hg, align 8, !noalias !3528
  %i.hh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.hi = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.hb
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !3528, !nonnull !13, !noundef !13 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 352
  store ptr %i.ez, ptr %i.hl, align 8, !noalias !3528
  %i.hm = trunc nuw nsw i64 %i.hb to i16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 448
  store i16 %i.hm, ptr %i.hn, align 8, !noalias !3528
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.hh, %i.gb
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ae
  switch i16 %i.fc, label %bb.ai [
    i16 5, label %bb.ak
    i16 6, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ho = add nsw i64 %i.fd, -7
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ae
  %.sroa.06.0.i.i.i.i = phi i64 [ 5, %bb.aj ], [ 6, %bb.ai ], [ 4, %bb.ae ], [ 5, %bb.ah ] ; 7 uses
  %.sroa.5.0.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.ho, %bb.ai ], [ %i.fd, %bb.ae ], [ 5, %bb.ah ] ; 9 uses
  %.sroa.03.0.i.i.i.i = phi i1 [ true, %bb.aj ], [ true, %bb.ai ], [ false, %bb.ae ], [ false, %bb.ah ]
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !3530
  %i.hp = call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 552, i64 noundef range(i64 1, 9) 8) #43, !noalias !3530 ; 13 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.al, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i, !prof !269

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #46, !noalias !3530
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i: ; preds = %bb.ak
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 352
  store ptr null, ptr %i.hr, align 8, !noalias !3530
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 450 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3534)
  %i.ht = load i16, ptr %i.ff, align 2, !noalias !3537, !noundef !13
  %i.hu = zext i16 %i.ht to i64
  %i.hv = xor i64 %.sroa.06.0.i.i.i.i, -1
  %i.hw = add nsw i64 %i.hu, %i.hv                ; 5 uses
  %i.hx = trunc i64 %i.hw to i16
  store i16 %i.hx, ptr %i.hs, align 2, !alias.scope !3534, !noalias !3539
  %i.hy = icmp ult i64 %i.hw, 12
  br i1 %i.hy, label %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB27_.exit.i.i.i.i.i, label %bb.am, !prof !3443

bb.am:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hw, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #44, !noalias !3537
  unreachable

_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB27_.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtB6_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEE13new_uninit_inB1Z_.exit.i.i.i.i.i
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %.sroa.06.0.i.i.i.i ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ez, i64 360 ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.sroa.06.0.i.i.i.i
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !3537, !nonnull !13, !align !239, !noundef !13
  %i.id = add nuw nsw i64 %.sroa.06.0.i.i.i.i, 1  ; 2 uses
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %i.id
  %i.if = shl nuw nsw i64 %i.hw, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %i.hp, ptr nonnull readonly align 8 %i.ie, i64 %i.if, i1 false), !alias.scope !3540, !noalias !3539
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.id
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hp, i64 360
  %i.ii = shl nuw nsw i64 %i.hw, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr nonnull readonly align 8 %i.ig, i64 %i.ii, i1 false), !alias.scope !3544, !noalias !3539
  %i.ij = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i to i16
  store i16 %i.ij, ptr %i.ff, align 2, !noalias !3537
  %.sroa.0.i.i.sroa.0.0.copyload.i.i.i = load i64, ptr %i.hz, align 8, !noalias !3504
  %.sroa.0.i.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.sroa.0.i.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.0.i.i.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !3504
  %.sroa.0.i.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !3504
  %i.ik = load i16, ptr %i.hs, align 2, !noalias !3530, !noundef !13 ; 3 uses
  %i.il = zext i16 %i.ik to i64
  %i.im = add nuw nsw i64 %i.il, 1                ; 5 uses
  %i.in = icmp ult i16 %i.ik, 12
  br i1 %i.in, label %bb.an, label %bb.aq, !prof !3443

bb.an:                                            ; preds = %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB27_.exit.i.i.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.hp, i64 456 ; 6 uses
  %i.ip = zext i16 %i.fg to i64
  %i.iq = sub nuw nsw i64 %i.ip, %.sroa.06.0.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3548)
  call void @llvm.experimental.noalias.scope.decl(metadata !3551)
  %i.ir = icmp eq i64 %i.iq, %i.im
  br i1 %i.ir, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i, label %bb.ao, !prof !159

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #44, !noalias !3553
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i: ; preds = %bb.an
  %i.is = getelementptr i8, ptr %i.ez, i64 464
  %i.it = getelementptr [8 x i8], ptr %i.is, i64 %.sroa.06.0.i.i.i.i
  %i.iu = shl nuw nsw i64 %i.im, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.io, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.it, i64 %i.iu, i1 false), !alias.scope !3554, !noalias !3530
  %i.iv = icmp ne i64 %i.fa, 0
  call void @llvm.assume(i1 %i.iv)
  call void @llvm.experimental.noalias.scope.decl(metadata !3555)
  %xtraiter = and i64 %i.im, 3                    ; 3 uses
  %i.iw = icmp ult i16 %i.ik, 3
  br i1 %i.iw, label %.epil.preheader, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i.new

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i
  %unroll_iter = and i64 %i.im, 28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2A_.exit.i.i.i.i.i.new ], [ %i.jp, %bb.ap ] ; 6 uses
end_hunk_2
begin_hunk_3_@_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args:bb.a
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i

bb.as:                                            ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i
  %i.kj = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i39.i.i.i, i64 %i.kf
  %i.kk = sub nuw nsw i64 %i.kd, %.sroa.5.0.i.i.i.i ; 2 uses
  %i.kl = shl nuw nsw i64 %i.kk, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kj, ptr nonnull align 8 %i.kg, i64 %i.kl, i1 false), !alias.scope !3580, !noalias !3581
  store i64 %.sroa.0.sroa.0.087.i.i.i, ptr %i.kg, align 8, !alias.scope !3572, !noalias !3574
  %.sroa.735.0..sroa_idx36.i.i.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %.sroa.0.sroa.7.086.i.i.i, ptr %.sroa.735.0..sroa_idx36.i.i.i, align 8, !alias.scope !3572, !noalias !3574
  %.sroa.842.0..sroa_idx43.i.i.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.842.0..sroa_idx43.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !3500
  %i.km = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 360 ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.sroa.5.0.i.i.i.i ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kf
  %i.kp = shl nuw nsw i64 %i.kk, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ko, ptr nonnull align 8 %i.kn, i64 %i.kp, i1 false), !alias.scope !3575, !noalias !3578
  store ptr %.sroa.7.092.i.i.i, ptr %i.kn, align 8, !alias.scope !3575, !noalias !3578
  %i.kq = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 456 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kf
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.sroa.5.0.i.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kt, ptr nonnull align 8 %i.kr, i64 %i.kp, i1 false), !alias.scope !3582, !noalias !3585
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i: ; preds = %bb.as, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEB1b_.exit.i9.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 456 ; 6 uses
  %i.kv = add nuw nsw i64 %i.kd, 2                ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kf
  store ptr %.sroa.10.089.i.i.i, ptr %i.kw, align 8, !alias.scope !3582, !noalias !3585
  store i16 %i.ke, ptr %i.kb, align 2, !noalias !3585
  %i.kx = icmp samesign ult i64 %i.kf, %i.kv
  br i1 %i.kx, label %.lr.ph.i.i11.i.i.i.i.preheader, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i

.lr.ph.i.i11.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i
  %i.ky = add nuw nsw i64 %i.kd, 1
  %i.kz = sub nsw i64 %i.ky, %.sroa.5.0.i.i.i.i
  %i.la = sub nsw i64 %i.kd, %.sroa.5.0.i.i.i.i
  %xtraiter171 = and i64 %i.kz, 3                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i11.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.prol = phi i64 [ %i.lb, %.lr.ph.i.i11.i.i.i.i.prol ], [ %i.kf, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.preheader ]
  %i.lb = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 1 ; 2 uses
  %i.lc = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.lc)
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.sroa.0.06.i.i12.i.i.i.i.prol
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !3585, !nonnull !13, !noundef !13 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.lf, align 8, !noalias !3585
  %i.lg = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol to i16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 448
  store i16 %i.lg, ptr %i.lh, align 8, !noalias !3585
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter171
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol, !llvm.loop !3586

.lr.ph.i.i11.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i11.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.unr = phi i64 [ %i.kf, %.lr.ph.i.i11.i.i.i.i.preheader ], [ %i.lb, %.lr.ph.i.i11.i.i.i.i.prol ]
  %i.li = icmp ult i64 %i.la, 3
  br i1 %i.li, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i = phi i64 [ %i.mb, %.lr.ph.i.i11.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.lj = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 1 ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.sroa.0.06.i.i12.i.i.i.i
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !3585, !nonnull !13, !noundef !13 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.lm, align 8, !noalias !3585
  %i.ln = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i to i16
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 448
  store i16 %i.ln, ptr %i.lo, align 8, !noalias !3585
  %i.lp = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 2 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lj
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !3585, !nonnull !13, !noundef !13 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.ls, align 8, !noalias !3585
  %i.lt = trunc nuw nsw i64 %i.lj to i16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 448
  store i16 %i.lt, ptr %i.lu, align 8, !noalias !3585
  %i.lv = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 3 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lp
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !3585, !nonnull !13, !noundef !13 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.ly, align 8, !noalias !3585
  %i.lz = trunc nuw nsw i64 %i.lp to i16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 448
  store i16 %i.lz, ptr %i.ma, align 8, !noalias !3585
  %i.mb = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 4 ; 2 uses
  %i.mc = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i, 9
  call void @llvm.assume(i1 %i.mc)
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lv
  %i.me = load ptr, ptr %i.md, align 8, !noalias !3585, !nonnull !13, !noundef !13 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.mf, align 8, !noalias !3585
  %i.mg = trunc nuw nsw i64 %i.lv to i16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 448
  store i16 %i.mg, ptr %i.mh, align 8, !noalias !3585
  %exitcond.not.i.i13.i.i.i.i.3 = icmp eq i64 %i.mb, %i.kv
  br i1 %exitcond.not.i.i13.i.i.i.i.3, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i

_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i
  store i64 %.sroa.0.i.i.sroa.4.0.copyload.i.i.i, ptr %.sroa.521.i.i.i, align 8, !noalias !3587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.i.sroa.5.i.i.i, i64 16, i1 false), !noalias !3587
  br label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i

_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i
  %.sroa.14.0.i.i.i = phi ptr [ %i.hp, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.823.0.i.i.i = phi ptr [ %i.ic, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.019.0.i.i.i = phi i64 [ %.sroa.0.i.i.sroa.0.0.copyload.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sink42.i.sroa.phi.i.i.i = phi ptr [ %.sroa.16.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ %.sroa.521.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ %.sroa.521.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.521.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sink.i40.i.i.i = phi i64 [ %i.fa, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ -1, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ -1, %.lr.ph.i.i.i.i.i.i ], [ -1, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store i64 %.sink.i40.i.i.i, ptr %.sink42.i.sroa.phi.i.i.i, align 8, !alias.scope !3501, !noalias !3587
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016.i.sroa.5.i.i.i)
  %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i = load i64, ptr %.sroa.521.i.i.i, align 8, !range !127, !noalias !3476, !noundef !13 ; 3 uses
  %.not37.i.i.i = icmp eq i64 %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i, -1
  br i1 %.not37.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, i64 16, i1 false), !noalias !3476
  %.sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.0..sroa.16.i.i.0..sroa.16.i.0..sroa.16.i.0..sroa.16.0..sroa.16.0..sroa.16.64..i.i.i = load i64, ptr %.sroa.16.i.i.i, align 8, !noalias !3476, !noundef !13 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ez, i64 352
  %i.mj = load ptr, ptr %i.mi, align 8, !noalias !3477, !noundef !13 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i44, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.au:                                            ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i)
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Y_11VacantEntryB1D_B21_E12insert_entry0EB28_.exit.i.i

_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Y_11VacantEntryB1D_B21_E12insert_entry0EB28_.exit.i.i: ; preds = %bb.au, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjNtNtBf_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entry0B1Q_.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.8.i.i.i)
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjNtNtBd_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entryB1O_.exit.i

bb.av:                                            ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE5entryB1C_.exit.thread72.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !3588
  %i.mk = call noalias noundef align 8 dereferenceable_or_null(456) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 456, i64 noundef range(i64 1, 9) 8) #43, !noalias !3588 ; 8 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %bb.aw, label %_RINvMs8_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1X_.exit.i.i, !prof !269

bb.aw:                                            ; preds = %bb.av
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 456) #46, !noalias !3588
  unreachable

_RINvMs8_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1X_.exit.i.i: ; preds = %bb.av
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 352
  store ptr null, ptr %i.mm, align 8, !noalias !3588
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 450
  store ptr %i.mk, ptr %i.u, align 8, !alias.scope !3353, !noalias !3589
  store i64 0, ptr %i.v, align 8, !alias.scope !3353, !noalias !3589
  store i16 1, ptr %i.mn, align 2, !noalias !3590
  store <2 x i64> %i.cf, ptr %i.mk, align 8, !noalias !3595
  %.sroa.939.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store ptr %.sroa.7.0.copyload18.i, ptr %.sroa.939.0..sroa_idx46.i, align 8, !noalias !3595
  %.sroa.1048.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store i64 %.sroa.9.0.copyload22.i, ptr %.sroa.1048.0..sroa_idx55.i, align 8, !noalias !3595
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 360
  store ptr %i.aw, ptr %i.mo, align 8, !noalias !3590
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjNtNtBd_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entryB1O_.exit.i

_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjNtNtBd_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entryB1O_.exit.i: ; preds = %_RINvMs8_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1X_.exit.i.i, %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Y_11VacantEntryB1D_B21_E12insert_entry0EB28_.exit.i.i
  %i.mp = load i64, ptr %i.w, align 8, !alias.scope !3353, !noalias !3589, !noundef !13
  %i.mq = add i64 %i.mp, 1
  store i64 %i.mq, ptr %i.w, align 8, !alias.scope !3353, !noalias !3589
  br label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit

_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit: ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE5entryB1C_.exit.thread.i, %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjNtNtBd_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entryB1O_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.mr = icmp eq ptr %.sroa.0.1, %i.x
  br i1 %i.mr, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.us.i
  %.sroa.0.090 = phi i64 [ %.sroa.0.092, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.i ], [ %.sroa.0.092, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.us.i ], [ %..i, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3596)
  call void @llvm.experimental.noalias.scope.decl(metadata !3599)
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mw = load i8, ptr %i.y, align 1, !range !1313, !alias.scope !3596, !noalias !3601, !noundef !13
  %i.mx = trunc nuw i8 %i.mw to i1                ; 2 uses
  %.val.i.i.i.i.i46 = load ptr, ptr %i.ms, align 8, !alias.scope !3596, !noalias !3599, !nonnull !13, !align !1660 ; 4 uses
  %i.my = load i8, ptr %i.mv, align 8, !range !1313, !alias.scope !3596, !noalias !3599
  %.fr25.i = freeze i8 %i.my
  %i.mz = trunc i8 %.fr25.i to i1
  %i.na = add i64 %.sroa.0.090, 4                 ; 3 uses
  %i.nb = load i64, ptr %0, align 8, !alias.scope !3596, !noalias !3599 ; 3 uses
  %.not9.i.i.i.i.i.i = icmp ult i64 %i.nb, %i.na
  %i.nc = uitofp i64 %i.na to float
  %i.nd = uitofp i64 %i.nb to float
  %i.ne = fdiv float %i.nc, %i.nd
  %i.nf = fcmp ule float %i.ne, 4.000000e-01
  %i.ng = sub i64 %i.nb, %i.na
  br i1 %i.mz, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.loopexit
  br i1 %i.mx, label %.lr.ph.i.split.us.split.us.i, label %.lr.ph.i.split.us.split.i

.lr.ph.i.split.us.split.us.i:                     ; preds = %.lr.ph.i.split.us.i, %.backedge.i.us.us.i
  %i.nh = phi ptr [ %i.no, %.backedge.i.us.us.i ], [ %1, %.lr.ph.i.split.us.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3608)
  %i.ni = load ptr, ptr %i.nh, align 8, !alias.scope !3609, !noalias !3610, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 592
  %.val.i.i.i.us.us.i = load i32, ptr %i.nj, align 8, !noalias !3611, !noundef !13 ; 2 uses
  %i.nk = and i32 %.val.i.i.i.us.us.i, 4
  %.not.i.i.i.i.us.us.i = icmp ne i32 %i.nk, 0
  %i.nl = and i32 %.val.i.i.i.us.us.i, 8200
  %or.cond.i48 = icmp eq i32 %i.nl, 8192
  %or.cond47.i = or i1 %.not.i.i.i.i.us.us.i, %or.cond.i48
  br i1 %or.cond47.i, label %.backedge.i.us.us.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.us.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.us.i: ; preds = %.lr.ph.i.split.us.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3611
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr nonnull %.val.i.i.i.i.i46, i8 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.ni) #43, !noalias !3611
  %i.nm = load ptr, ptr %i.mt, align 8, !noalias !3611, !nonnull !13, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !3612)
  call void @llvm.experimental.noalias.scope.decl(metadata !3615)
  %.val.i.i.i.i.i.us.us.i = load i64, ptr %i.q, align 8, !range !14, !alias.scope !3615, !noalias !3611, !noundef !13 ; 2 uses
  %i.nn = icmp eq i64 %.val.i.i.i.i.i.us.us.i, 0
  br i1 %i.nn, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i, label %bb.ax

bb.ax:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.us.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nm, i64 noundef %.val.i.i.i.i.i.us.us.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3618
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i

.backedge.i.us.us.i:                              ; preds = %.lr.ph.i.split.us.split.us.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  %.not12.i.us.us.i = icmp eq ptr %i.no, %i.x
  br i1 %.not12.i.us.us.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.lr.ph.i.split.us.split.us.i

.lr.ph.i.split.us.split.i:                        ; preds = %.lr.ph.i.split.us.i, %.backedge.i.us.i
  %i.np = phi ptr [ %i.nw, %.backedge.i.us.i ], [ %1, %.lr.ph.i.split.us.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3608)
  %i.nq = load ptr, ptr %i.np, align 8, !alias.scope !3609, !noalias !3610, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 592
  %.val.i.i.i.us.i = load i32, ptr %i.nr, align 8, !noalias !3611, !noundef !13 ; 2 uses
  %i.ns = and i32 %.val.i.i.i.us.i, 4
  %.not.i.i.i.i.us.i = icmp ne i32 %i.ns, 0
  %i.nt = and i32 %.val.i.i.i.us.i, 4104
  %or.cond48.i = icmp eq i32 %i.nt, 4096
  %or.cond15 = or i1 %.not.i.i.i.i.us.i, %or.cond48.i
  br i1 %or.cond15, label %.backedge.i.us.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.i: ; preds = %.lr.ph.i.split.us.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3611
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr nonnull %.val.i.i.i.i.i46, i8 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.nq) #43, !noalias !3611
  %i.nu = load ptr, ptr %i.mt, align 8, !noalias !3611, !nonnull !13, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !3612)
  call void @llvm.experimental.noalias.scope.decl(metadata !3615)
  %.val.i.i.i.i.i.us.i = load i64, ptr %i.q, align 8, !range !14, !alias.scope !3615, !noalias !3611, !noundef !13 ; 2 uses
  %i.nv = icmp eq i64 %.val.i.i.i.i.i.us.i, 0
  br i1 %i.nv, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nu, i64 noundef %.val.i.i.i.i.i.us.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3618
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i

.backedge.i.us.i:                                 ; preds = %.lr.ph.i.split.us.split.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  %.not12.i.us.i = icmp eq ptr %i.nw, %i.x
  br i1 %.not12.i.us.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.lr.ph.i.split.us.split.i

.lr.ph.i.split.i:                                 ; preds = %.loopexit
  br i1 %i.mx, label %.lr.ph.i.split.split.us.i, label %.lr.ph.i.split.split.preheader.i

.lr.ph.i.split.split.preheader.i:                 ; preds = %.lr.ph.i.split.i
  %brmerge.i = select i1 %.not9.i.i.i.i.i.i, i1 true, i1 %i.nf
  br label %.lr.ph.i.split.split.i

.lr.ph.i.split.split.us.i:                        ; preds = %.lr.ph.i.split.i, %.backedge.i.us17.i
  %i.nx = phi ptr [ %i.oe, %.backedge.i.us17.i ], [ %1, %.lr.ph.i.split.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3608)
  %i.ny = load ptr, ptr %i.nx, align 8, !alias.scope !3609, !noalias !3610, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.nz = getelementptr i8, ptr %i.ny, i64 592
  %.val.i.i.i.us4.i = load i32, ptr %i.nz, align 8, !noalias !3611, !noundef !13 ; 2 uses
  %i.oa = and i32 %.val.i.i.i.us4.i, 4
  %.not.i.i.i.i.us5.i = icmp ne i32 %i.oa, 0
  %i.ob = and i32 %.val.i.i.i.us4.i, 8200
  %or.cond24.i = icmp eq i32 %i.ob, 8192
  %or.cond49.i = or i1 %.not.i.i.i.i.us5.i, %or.cond24.i
  br i1 %or.cond49.i, label %.backedge.i.us17.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us12.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us12.i: ; preds = %.lr.ph.i.split.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3611
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr nonnull %.val.i.i.i.i.i46, i8 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.ny) #43, !noalias !3611
  %i.oc = load ptr, ptr %i.mt, align 8, !noalias !3611, !nonnull !13, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !3612)
  call void @llvm.experimental.noalias.scope.decl(metadata !3615)
  %.val.i.i.i.i.i.us15.i = load i64, ptr %i.q, align 8, !range !14, !alias.scope !3615, !noalias !3611, !noundef !13 ; 2 uses
  %i.od = icmp eq i64 %.val.i.i.i.i.i.us15.i, 0
  br i1 %i.od, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i, label %bb.az

bb.az:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us12.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oc, i64 noundef %.val.i.i.i.i.i.us15.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3618
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i

.backedge.i.us17.i:                               ; preds = %.lr.ph.i.split.split.us.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 2 uses
  %.not12.i.us18.i = icmp eq ptr %i.oe, %i.x
  br i1 %.not12.i.us18.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.lr.ph.i.split.split.us.i

.lr.ph.i.split.split.i:                           ; preds = %.backedge.i.i, %.lr.ph.i.split.split.preheader.i
  %i.of = phi ptr [ %i.og, %.backedge.i.i ], [ %1, %.lr.ph.i.split.split.preheader.i ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3608)
  %i.oh = load ptr, ptr %i.of, align 8, !alias.scope !3609, !noalias !3610, !nonnull !13, !align !239, !noundef !13 ; 4 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 592    ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.oi, align 8, !noalias !3611, !noundef !13 ; 2 uses
  %i.oj = and i32 %.val.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp ne i32 %i.oj, 0
  %i.ok = and i32 %.val.i.i.i.i, 4104
  %or.cond50.i = icmp eq i32 %i.ok, 4096
  %or.cond16 = or i1 %.not.i.i.i.i.i, %or.cond50.i
  br i1 %or.cond16, label %.backedge.i.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.i: ; preds = %.lr.ph.i.split.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3611
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr nonnull %.val.i.i.i.i.i46, i8 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.oh) #43, !noalias !3611
  %i.ol = load ptr, ptr %i.mt, align 8, !noalias !3611, !nonnull !13, !noundef !13 ; 2 uses
  %i.om = load i64, ptr %i.mu, align 8, !noalias !3611, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !3612)
  %i.on = load i32, ptr %i.oi, align 8, !alias.scope !3612, !noalias !3619, !noundef !13
  %i.oo = and i32 %i.on, 8
  %.not27.i = icmp eq i32 %i.oo, 0
  br i1 %.not27.i, label %bb.ba, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i

bb.ba:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 488 ; 2 uses
  %i.oq = load i64, ptr %i.op, align 8, !range !127, !alias.scope !3612, !noalias !3619, !noundef !13
  %.not.i.i.i.i.i.i = icmp eq i64 %i.oq, -1
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 512 ; 2 uses
  %i.os = load i64, ptr %i.or, align 8, !range !127, !alias.scope !3622, !noalias !3625
  %.not.i.i.i.i.i.i.i.i47 = icmp eq i64 %i.os, -1
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i47, ptr @_RNvNvXs_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strRNtB6_9StyledStrNtNtCsj6eKBz9Db1c_4core7default7Default7default7DEFAULT, ptr %i.or
  %.sroa.03.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.op ; 2 uses
  %i.ot = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 8
  %.sroa.03.0.val.i.i.i.i.i.i = load ptr, ptr %i.ot, align 8, !noalias !3619, !nonnull !13, !noundef !13
  %i.ou = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 16
  %.sroa.03.0.val10.i.i.i.i.i.i = load i64, ptr %i.ou, align 8, !noalias !3619, !noundef !13
  %i.ov = call fastcc noundef i64 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr13display_width(ptr nonnull %.sroa.03.0.val.i.i.i.i.i.i, i64 %.sroa.03.0.val10.i.i.i.i.i.i) #42, !noalias !3627
  %i.ow = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ol, i64 noundef %i.om) #42, !noalias !3628
  br i1 %brmerge.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ox = add i64 %i.ow, %i.ov
  %i.oy = icmp ugt i64 %i.ox, %i.ng
  br label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i

_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ba, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ false, %bb.ba ], [ %i.oy, %bb.bb ], [ true, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3615)
  %.val.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !14, !alias.scope !3615, !noalias !3611, !noundef !13 ; 2 uses
  %i.oz = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.oz, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ol, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3618
  br label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i: ; preds = %bb.bc, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3611
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i, %.lr.ph.i.split.split.i
  %.not12.i.i = icmp eq ptr %i.og, %i.x
  br i1 %.not12.i.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.lr.ph.i.split.split.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i: ; preds = %bb.az, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us12.i, %bb.ay, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.i, %bb.ax, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3611
  br label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit

_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i, %.backedge.i.i, %.backedge.i.us17.i, %.backedge.i.us.i, %.backedge.i.us.us.i, %bb.a, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i
  %.sroa.0.090216 = phi i64 [ %.sroa.0.090, %.backedge.i.us17.i ], [ 2, %bb.a ], [ %.sroa.0.090, %.backedge.i.us.us.i ], [ %.sroa.0.090, %.backedge.i.us.i ], [ %.sroa.0.090, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i ], [ %.sroa.0.090, %.backedge.i.i ], [ %.sroa.0.090, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i ] ; 3 uses
  %.lcssa.i.i = phi i1 [ false, %.backedge.i.us17.i ], [ false, %bb.a ], [ false, %.backedge.i.us.us.i ], [ false, %.backedge.i.us.i ], [ true, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i ], [ false, %.backedge.i.i ], [ true, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i ] ; 3 uses
  %i.pa = load ptr, ptr %i.u, align 8, !noundef !13 ; 2 uses
  %.not39 = icmp ne ptr %i.pa, null               ; 3 uses
  %i.pb = load i64, ptr %i.v, align 8
  %i.pc = load i64, ptr %i.w, align 8
  %i.pd = ptrtoint ptr %i.pa to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ph = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.47.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_3
begin_hunk_4_@_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate12sc_spec_vals:.split
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !4487
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !4498)
  %.val.i44 = load ptr, ptr %i.ac, align 8, !alias.scope !4498, !nonnull !13, !noundef !13 ; 2 uses
  %.val1.i45 = load i64, ptr %i.ad, align 8, !alias.scope !4498, !noundef !13 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4501)
  %i.ed = icmp eq i64 %.val1.i45, 0
  br i1 %i.ed, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i51, label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i50
  %.sroa.0.03.i.i.i47 = phi i64 [ %i.ef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i50 ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %.val.i44, i64 %.sroa.0.03.i.i.i47 ; 2 uses
  %i.ef = add nuw nsw i64 %.sroa.0.03.i.i.i47, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4504)
  %.val.i.i.i.i48 = load i64, ptr %i.ee, align 8, !range !14, !alias.scope !4507, !noalias !4498, !noundef !13 ; 2 uses
  %i.eg = icmp eq i64 %.val.i.i.i.i48, 0
  br i1 %i.eg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i50, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i46
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.val1.i.i.i.i49 = load ptr, ptr %i.eh, align 8, !alias.scope !4507, !noalias !4498, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i49, i64 noundef %.val.i.i.i.i48, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4508
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i50

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i50: ; preds = %bb.t, %.lr.ph.i.i.i46
  %i.ei = icmp eq i64 %i.ef, %.val1.i45
  br i1 %i.ei, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i51, label %.lr.ph.i.i.i46

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i51: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i50, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
  %.val2.i52 = load i64, ptr %i.s, align 8, !range !14, !alias.scope !4498, !noundef !13 ; 2 uses
  %i.ej = icmp eq i64 %.val2.i52, 0
  br i1 %i.ej, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit53, label %bb.u

bb.u:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i51
  %i.ek = mul nuw i64 %.val2.i52, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i44, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !4498
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit53

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit53: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i51, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.el = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.el, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit56, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit53
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4509
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit56

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit56: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit53, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

bb.w:                                             ; preds = %.split21
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsaKJjC64KgbL_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #42, !noalias !4482
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %.split21, %bb.w
  %i.em = load ptr, ptr %i.ac, align 8, !alias.scope !4479, !noalias !4482, !nonnull !13, !noundef !13
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.eo = add i64 %i.do, 1                        ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4479, !noalias !4482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.p
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate17write_subcommands(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr %.184.val, i64 %.192.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.sroa.5.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.016.i.sroa.5.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.020.i.sroa.5.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.sroa.8.i.i.i = alloca [16 x i8], align 8 ; 9 uses
  %.sroa.521.i.i.i = alloca i64, align 8          ; 8 uses
  %.sroa.8.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.16.i.i.i = alloca i64, align 8           ; 5 uses
  %.sroa.5.i.i.i = alloca i64, align 8            ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.15.i.i.i = alloca i64, align 8           ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 18 uses
  %i.f = alloca [80 x i8], align 8                ; 16 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !13, !align !1660, !noundef !13 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 42
  store ptr %i.s, ptr %i.o, align 8
  store ptr %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr null, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.184.val) ]
  %.idx = mul nuw nsw i64 %.192.val, 712
  %i.v = getelementptr inbounds nuw i8, ptr %.184.val, i64 %.idx ; 6 uses
  %i.w = icmp eq i64 %.192.val, 0
  br i1 %i.w, label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB6_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBa_7builder7command7CommandEEBa_.exit, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.a
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ac = ptrtoint ptr %i.n to i64                ; 2 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1d_7command7CommandE6insertB1f_.exit
  %.sroa.0.072 = phi i64 [ 2, %.lr.ph.i.preheader.lr.ph ], [ %..i, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1d_7command7CommandE6insertB1f_.exit ] ; 2 uses
  %.sroa.0.01371 = phi ptr [ %.184.val, %.lr.ph.i.preheader.lr.ph ], [ %i.ae, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1d_7command7CommandE6insertB1f_.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.thread.i
  %i.ad = phi ptr [ %i.ae, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.thread.i ], [ %.sroa.0.01371, %.lr.ph.i.preheader ] ; 14 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 712 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 700
  %i.ag = load i32, ptr %i.af, align 4, !noalias !4512, !noundef !13
  %i.ah = and i32 %i.ag, 8388608
  %.not.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.thread.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.i: ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 704
  %i.aj = load i32, ptr %i.ai, align 8, !noalias !4512, !noundef !13
  %i.ak = and i32 %i.aj, 8388608
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs2_NtNtBW_6output13help_templateNtB2G_12HelpTemplate17write_subcommands0EBW_.exit, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.thread.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.thread.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.i, %.lr.ph.i
  %i.am = icmp eq ptr %i.ae, %i.v
  br i1 %i.am, label %.loopexit26, label %.lr.ph.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs2_NtNtBW_6output13help_templateNtB2G_12HelpTemplate17write_subcommands0EBW_.exit: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 560
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !13, !noundef !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 568
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !13
  store ptr %i.ao, ptr %i.l, align 8
  store i64 %i.aq, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.p, ptr %i.k, align 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.420.0..sroa_idx, align 8
  store ptr %i.l, ptr %i.y, align 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ar = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @75, ptr noundef nonnull %i.k) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 696
  %i.at = load i32, ptr %i.as, align 8, !range !2440, !noundef !13 ; 2 uses
  %.not114 = icmp eq i32 %i.at, -1
  br i1 %.not114, label %bb.r, label %bb.q

.loopexit26:                                      ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1d_7command7CommandE6insertB1f_.exit, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.thread.i
  %.sroa.0.070 = phi i64 [ %.sroa.0.072, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate17write_subcommands0INtB7_5FnMutTRRNtNtNtB10_7builder7command7CommandEE8call_mutB10_.exit.thread.i ], [ %..i, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1d_7command7CommandE6insertB1f_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4515)
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !4515
  %.val1.i.i.i.i.fr.i = freeze i64 %.val1.i.i.i.i.i ; 3 uses
  %.val2.i.i.i.i.i = load i8, ptr %i.aw, align 8, !range !1313, !alias.scope !4515
  %.val2.i.i.i.i.fr.i = freeze i8 %.val2.i.i.i.i.i
  %i.ax = trunc i8 %.val2.i.i.i.i.fr.i to i1
  %i.ay = add i64 %.sroa.0.070, 4                 ; 3 uses
  %i.az = uitofp i64 %i.ay to float
  %i.ba = uitofp i64 %.val1.i.i.i.i.fr.i to float
  %i.bb = fdiv float %i.az, %i.ba
  %i.bc = fcmp ogt float %i.bb, 4.000000e-01
  %i.bd = sub i64 %.val1.i.i.i.i.fr.i, %i.ay
  br i1 %i.ax, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.loopexit26, %.backedge.i.us.i
  %i.be = phi ptr [ %i.bf, %.backedge.i.us.i ], [ %.184.val, %.loopexit26 ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4518)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 700
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !4518, !noalias !4521, !noundef !13
  %i.bi = and i32 %i.bh, 8388608
  %.not.i.i.i.us.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.us.i, label %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us.i, label %.backedge.i.us.i

_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  %i.bk = load i32, ptr %i.bj, align 8, !alias.scope !4518, !noalias !4521, !noundef !13
  %i.bl = and i32 %i.bk, 8388608
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us.i, label %.backedge.i.us.i

_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us.i: ; preds = %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4524)
  call void @llvm.experimental.noalias.scope.decl(metadata !4527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4530
  call fastcc void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate12sc_spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.be) #43, !noalias !4521
  %i.bn = load ptr, ptr %i.au, align 8, !noalias !4530, !nonnull !13, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !4531)
  call void @llvm.experimental.noalias.scope.decl(metadata !4534)
  %.val.i.i.i.i.i.us.i = load i64, ptr %i.e, align 8, !range !14, !alias.scope !4534, !noalias !4530, !noundef !13 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i.i.i.i.us.i, 0
  br i1 %i.bo, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us.i, label %bb.b

bb.b:                                             ; preds = %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %.val.i.i.i.i.i.us.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4537
  br label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us.i: ; preds = %bb.b, %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4530
  br label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB6_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBa_7builder7command7CommandEEBa_.exit

.backedge.i.us.i:                                 ; preds = %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us.i, %.lr.ph.i.split.us.i
  %.not7.i.us.i = icmp eq ptr %i.bf, %i.v
  br i1 %.not7.i.us.i, label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB6_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBa_7builder7command7CommandEEBa_.exit, label %.lr.ph.i.split.us.i

.lr.ph.i.split.i:                                 ; preds = %.loopexit26
  %.not7.i.i.i.i.i.i = icmp ult i64 %.val1.i.i.i.i.fr.i, %i.ay
  br i1 %.not7.i.i.i.i.i.i, label %.lr.ph.i.split.split.us.i, label %.lr.ph.i.split.split.i

.lr.ph.i.split.split.us.i:                        ; preds = %.lr.ph.i.split.i, %.backedge.i.us12.i
  %i.bp = phi ptr [ %i.bq, %.backedge.i.us12.i ], [ %.184.val, %.lr.ph.i.split.i ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4518)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 700
  %i.bs = load i32, ptr %i.br, align 4, !alias.scope !4518, !noalias !4521, !noundef !13
  %i.bt = and i32 %i.bs, 8388608
  %.not.i.i.i.us6.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i.us6.i, label %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us7.i, label %.backedge.i.us12.i

_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us7.i: ; preds = %.lr.ph.i.split.split.us.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 704
  %i.bv = load i32, ptr %i.bu, align 8, !alias.scope !4518, !noalias !4521, !noundef !13
  %i.bw = and i32 %i.bv, 8388608
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us8.i, label %.backedge.i.us12.i

_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us8.i: ; preds = %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us7.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4524)
  call void @llvm.experimental.noalias.scope.decl(metadata !4527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4530
  call fastcc void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate12sc_spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.bp) #43, !noalias !4521
  %i.by = load ptr, ptr %i.au, align 8, !noalias !4530, !nonnull !13, !noundef !13 ; 2 uses
  %i.bz = load i64, ptr %i.av, align 8, !noalias !4530, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !4531)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 320 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !127, !alias.scope !4538, !noalias !4539, !noundef !13
  %.not.i.i.i.i.i.us.i = icmp eq i64 %i.cb, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 344 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !range !127, !alias.scope !4541, !noalias !4544
  %.not.i.i.i.i.i.i.i.us.i = icmp eq i64 %i.cd, -1
  %.sroa.0.0.i.i.i.i.i.i.us.i = select i1 %.not.i.i.i.i.i.i.i.us.i, ptr @_RNvNvXs_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strRNtB6_9StyledStrNtNtCsj6eKBz9Db1c_4core7default7Default7default7DEFAULT, ptr %i.cc
  %.sroa.01.0.i.i.i.i.i.us.i = select i1 %.not.i.i.i.i.i.us.i, ptr %.sroa.0.0.i.i.i.i.i.i.us.i, ptr %i.ca ; 2 uses
  %i.ce = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.us.i, i64 8
  %.sroa.01.0.val.i.i.i.i.i.us.i = load ptr, ptr %i.ce, align 8, !noalias !4539, !nonnull !13, !noundef !13
  %i.cf = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.us.i, i64 16
  %.sroa.01.0.val8.i.i.i.i.i.us.i = load i64, ptr %i.cf, align 8, !noalias !4539, !noundef !13
  %i.cg = call fastcc noundef i64 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr13display_width(ptr nonnull %.sroa.01.0.val.i.i.i.i.i.us.i, i64 %.sroa.01.0.val8.i.i.i.i.i.us.i) #42, !noalias !4546 ; 0 uses
  %i.ch = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.bz) #42, !noalias !4547 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4534)
  %.val.i.i.i.i.i.us10.i = load i64, ptr %i.e, align 8, !range !14, !alias.scope !4534, !noalias !4530, !noundef !13 ; 2 uses
  %i.ci = icmp eq i64 %.val.i.i.i.i.i.us10.i, 0
  br i1 %i.ci, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us11.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us8.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %.val.i.i.i.i.i.us10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4537
  br label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us11.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us11.i: ; preds = %bb.c, %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4530
  br label %.backedge.i.us12.i

.backedge.i.us12.i:                               ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us11.i, %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us7.i, %.lr.ph.i.split.split.us.i
  %.not7.i.us13.i = icmp eq ptr %i.bq, %i.v
  br i1 %.not7.i.us13.i, label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB6_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBa_7builder7command7CommandEEBa_.exit, label %.lr.ph.i.split.split.us.i

.lr.ph.i.split.split.i:                           ; preds = %.lr.ph.i.split.i
  br i1 %i.bc, label %.lr.ph.i.split.split.split.us.i, label %.lr.ph.i.split.split.split.i

.lr.ph.i.split.split.split.us.i:                  ; preds = %.lr.ph.i.split.split.i, %.backedge.i.us28.i
  %i.cj = phi ptr [ %i.ck, %.backedge.i.us28.i ], [ %.184.val, %.lr.ph.i.split.split.i ] ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4518)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 700
  %i.cm = load i32, ptr %i.cl, align 4, !alias.scope !4518, !noalias !4521, !noundef !13
  %i.cn = and i32 %i.cm, 8388608
  %.not.i.i.i.us16.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i.us16.i, label %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us17.i, label %.backedge.i.us28.i

_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us17.i: ; preds = %.lr.ph.i.split.split.split.us.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 704
  %i.cp = load i32, ptr %i.co, align 8, !alias.scope !4518, !noalias !4521, !noundef !13
  %i.cq = and i32 %i.cp, 8388608
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us24.i, label %.backedge.i.us28.i

_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us24.i: ; preds = %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us17.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4524)
  call void @llvm.experimental.noalias.scope.decl(metadata !4527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4530
  call fastcc void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate12sc_spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cj) #43, !noalias !4521
  %i.cs = load ptr, ptr %i.au, align 8, !noalias !4530, !nonnull !13, !noundef !13 ; 2 uses
  %i.ct = load i64, ptr %i.av, align 8, !noalias !4530, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !4531)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 320 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !range !127, !alias.scope !4538, !noalias !4539, !noundef !13
  %.not.i.i.i.i.i.us18.i = icmp eq i64 %i.cv, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 344 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !range !127, !alias.scope !4541, !noalias !4544
  %.not.i.i.i.i.i.i.i.us19.i = icmp eq i64 %i.cx, -1
  %.sroa.0.0.i.i.i.i.i.i.us20.i = select i1 %.not.i.i.i.i.i.i.i.us19.i, ptr @_RNvNvXs_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strRNtB6_9StyledStrNtNtCsj6eKBz9Db1c_4core7default7Default7default7DEFAULT, ptr %i.cw
  %.sroa.01.0.i.i.i.i.i.us21.i = select i1 %.not.i.i.i.i.i.us18.i, ptr %.sroa.0.0.i.i.i.i.i.i.us20.i, ptr %i.cu ; 2 uses
  %i.cy = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.us21.i, i64 8
  %.sroa.01.0.val.i.i.i.i.i.us22.i = load ptr, ptr %i.cy, align 8, !noalias !4539, !nonnull !13, !noundef !13
  %i.cz = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.us21.i, i64 16
  %.sroa.01.0.val8.i.i.i.i.i.us23.i = load i64, ptr %i.cz, align 8, !noalias !4539, !noundef !13
  %i.da = call fastcc noundef i64 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr13display_width(ptr nonnull %.sroa.01.0.val.i.i.i.i.i.us22.i, i64 %.sroa.01.0.val8.i.i.i.i.i.us23.i) #42, !noalias !4546
  %i.db = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.ct) #42, !noalias !4547
  %i.dc = add i64 %i.db, %i.da
  %i.dd = icmp ugt i64 %i.dc, %i.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !4534)
  %.val.i.i.i.i.i.us26.i = load i64, ptr %i.e, align 8, !range !14, !alias.scope !4534, !noalias !4530, !noundef !13 ; 2 uses
  %i.de = icmp eq i64 %.val.i.i.i.i.i.us26.i, 0
  br i1 %i.de, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us27.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us24.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef %.val.i.i.i.i.i.us26.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4537
  br label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us27.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us27.i: ; preds = %bb.d, %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.us24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4530
  br i1 %i.dd, label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB6_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBa_7builder7command7CommandEEBa_.exit, label %.backedge.i.us28.i

.backedge.i.us28.i:                               ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNCINvMs2_NtNtB1i_6output13help_templateNtB2h_12HelpTemplate21will_subcommands_wrapINtNtNtBe_5slice4iter4IterB1c_EEs_0E0B1i_.exit.i.i.us27.i, %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.us17.i, %.lr.ph.i.split.split.split.us.i
  %.not7.i.us29.i = icmp eq ptr %i.ck, %i.v
  br i1 %.not7.i.us29.i, label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB6_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBa_7builder7command7CommandEEBa_.exit, label %.lr.ph.i.split.split.split.us.i

.lr.ph.i.split.split.split.i:                     ; preds = %.lr.ph.i.split.split.i, %.backedge.i.i
  %i.df = phi ptr [ %i.dg, %.backedge.i.i ], [ %.184.val, %.lr.ph.i.split.split.i ] ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4518)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 700
  %i.di = load i32, ptr %i.dh, align 4, !alias.scope !4518, !noalias !4521, !noundef !13
  %i.dj = and i32 %i.di, 8388608
  %.not.i.i.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i.i.i, label %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.i, label %.backedge.i.i

_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.i: ; preds = %.lr.ph.i.split.split.split.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 704
  %i.dl = load i32, ptr %i.dk, align 8, !alias.scope !4518, !noalias !4521, !noundef !13
  %i.dm = and i32 %i.dl, 8388608
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.i, label %.backedge.i.i

_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate25subcommand_next_line_help.exit.i.i.i.i.i: ; preds = %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB8_12HelpTemplate21will_subcommands_wrapINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtBc_7builder7command7CommandEE0Bc_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4524)
  call void @llvm.experimental.noalias.scope.decl(metadata !4527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4530
  call fastcc void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate12sc_spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.df) #43, !noalias !4521
  %i.do = load ptr, ptr %i.au, align 8, !noalias !4530, !nonnull !13, !noundef !13 ; 2 uses
  %i.dp = load i64, ptr %i.av, align 8, !noalias !4530, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !4531)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 320 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !range !127, !alias.scope !4538, !noalias !4539, !noundef !13
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dr, -1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 344 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !range !127, !alias.scope !4541, !noalias !4544
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dt, -1
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, ptr @_RNvNvXs_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strRNtB6_9StyledStrNtNtCsj6eKBz9Db1c_4core7default7Default7default7DEFAULT, ptr %i.ds
  %.sroa.01.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.dq ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 8
  %.sroa.01.0.val.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !noalias !4539, !nonnull !13, !noundef !13
  %i.dv = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 16
end_hunk_4
begin_hunk_5_@_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate17write_subcommands:bb.a
  store i64 %.sroa.08.0, ptr %i.js, align 8, !alias.scope !4741, !noalias !4743
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store i64 %.sroa.05.0.copyload, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !4741, !noalias !4743
  %.sroa.939.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.939.0..sroa_idx.i, align 8, !alias.scope !4741, !noalias !4743
  %.sroa.1048.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  store i64 %.sroa.56.0.copyload, ptr %.sroa.1048.0..sroa_idx.i, align 8, !alias.scope !4741, !noalias !4743
  br label %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit16.i.i.i.i

bb.an:                                            ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i.i
  %i.jt = add nuw nsw i64 %.sroa.510.0.i.i.i.i, 1 ; 2 uses
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %spec.select39.i.i.i.i, i64 %i.jt
  %i.jv = sub nuw nsw i64 %i.jr, %.sroa.510.0.i.i.i.i ; 2 uses
  %i.jw = shl nuw nsw i64 %i.jv, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ju, ptr nonnull align 8 %i.js, i64 %i.jw, i1 false), !alias.scope !4744, !noalias !4745
  store i64 %.sroa.08.0, ptr %i.js, align 8, !alias.scope !4741, !noalias !4743
  %.sroa.8.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store i64 %.sroa.05.0.copyload, ptr %.sroa.8.0..sroa_idx31.i, align 8, !alias.scope !4741, !noalias !4743
  %.sroa.939.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.939.0..sroa_idx40.i, align 8, !alias.scope !4741, !noalias !4743
  %.sroa.1048.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  store i64 %.sroa.56.0.copyload, ptr %.sroa.1048.0..sroa_idx49.i, align 8, !alias.scope !4741, !noalias !4743
  %i.jx = getelementptr inbounds nuw i8, ptr %spec.select39.i.i.i.i, i64 360 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.sroa.510.0.i.i.i.i
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jt
  %i.ka = shl nuw nsw i64 %i.jv, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jz, ptr nonnull align 8 %i.jy, i64 %i.ka, i1 false), !alias.scope !4746, !noalias !4749
  br label %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit16.i.i.i.i

_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit16.i.i.i.i: ; preds = %bb.an, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB1c_.exit.i15.i.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %spec.select39.i.i.i.i, i64 360
  %i.kc = add i16 %i.jq, 1
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.sroa.510.0.i.i.i.i
  store ptr %i.ad, ptr %i.kd, align 8, !alias.scope !4746, !noalias !4749
  store i16 %i.kc, ptr %i.jp, align 2, !noalias !4751
  store i64 %.sroa.020.i.sroa.4.0.copyload.i.i.i, ptr %.sroa.5.i.i.i, align 8, !noalias !4752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.020.i.sroa.5.i.i.i, i64 16, i1 false), !noalias !4752
  br label %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i

_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i: ; preds = %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit16.i.i.i.i, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit.i.i.i.i
  %.sroa.13.0.i.i.i = phi ptr [ undef, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit.i.i.i.i ], [ %i.iu, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit16.i.i.i.i ] ; 3 uses
  %.sroa.75.0.i.i.i = phi ptr [ undef, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit.i.i.i.i ], [ %i.jh, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit16.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ undef, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit.i.i.i.i ], [ %.sroa.020.i.sroa.0.0.copyload.i.i.i, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit16.i.i.i.i ] ; 2 uses
  %.sink51.i.sroa.phi.i.i.i = phi ptr [ %.sroa.5.i.i.i, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit.i.i.i.i ], [ %.sroa.15.i.i.i, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit16.i.i.i.i ]
  %.sink50.i.i.i.i = phi i64 [ -1, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit.i.i.i.i ], [ 0, %_RNvMsJ_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1K_.exit16.i.i.i.i ]
  store i64 %.sink50.i.i.i.i, ptr %.sink51.i.sroa.phi.i.i.i, align 8, !alias.scope !4681, !noalias !4752
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.020.i.sroa.5.i.i.i)
  %.sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i.i = load i64, ptr %.sroa.5.i.i.i, align 8, !range !127, !noalias !4755, !noundef !13 ; 3 uses
  %.not.i.i.i130 = icmp eq i64 %.sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i.i, -1
  br i1 %.not.i.i.i130, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !4755
  %.sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.64..i.i.i = load i64, ptr %.sroa.15.i.i.i, align 8, !noalias !4755, !noundef !13 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i)
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 352
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !4756, !noundef !13 ; 2 uses
  %.not.i85.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i85.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i131

bb.ap:                                            ; preds = %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i)
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4f_11VacantEntryB1D_B2I_E12insert_entry0EB1L_.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bm, %bb.ao
  %.sroa.0.sroa.7.0.lcssa.i.i.i = phi i64 [ %.sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i.i, %bb.ao ], [ %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i, %bb.bm ]
  %.sroa.0.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.02.0.i.i.i, %bb.ao ], [ %.sroa.019.0.i.i.i, %bb.bm ]
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ %.sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.64..i.i.i, %bb.ao ], [ %.sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.0..sroa.16.i.i.0..sroa.16.i.0..sroa.16.i.0..sroa.16.0..sroa.16.0..sroa.16.64..i.i.i, %bb.bm ]
  %.sroa.10.0.lcssa.i.i.i = phi ptr [ %.sroa.13.0.i.i.i, %bb.ao ], [ %.sroa.14.0.i.i.i, %bb.bm ] ; 3 uses
  %.sroa.7.0.lcssa.i.i.i = phi ptr [ %.sroa.75.0.i.i.i, %bb.ao ], [ %.sroa.823.0.i.i.i, %bb.bm ] ; 2 uses
  %i.kg = load ptr, ptr %i.n, align 8, !alias.scope !4644, !noalias !4759, !noundef !13 ; 4 uses
  %.not.i38.i.i.i = icmp eq ptr %i.kg, null
  br i1 %.not.i38.i.i.i, label %bb.au, label %bb.aq, !prof !269

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4762)
  %i.kh = load i64, ptr %i.t, align 8, !alias.scope !4765, !noalias !4759, !noundef !13 ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !4766
  %i.ki = call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 552, i64 noundef range(i64 1, 9) 8) #43, !noalias !4766 ; 12 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.ar, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i.i.i.i, !prof !269

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #46, !noalias !4766
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 352
  store ptr null, ptr %i.kk, align 8, !noalias !4766
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 450 ; 2 uses
  store i16 0, ptr %i.kl, align 2, !noalias !4766
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 456
  store ptr %i.kg, ptr %i.km, align 8, !noalias !4766
  %i.kn = add i64 %i.kh, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i133 = icmp eq i64 %i.kn, 0
  br i1 %.not.i.i.i.i.i.i.i.i133, label %bb.as, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1L_.exit.i.i.i.i, !prof !269

bb.as:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #44, !noalias !4766
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1L_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kg, i64 352
  store ptr %i.ki, ptr %i.ko, align 8, !noalias !4767
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kg, i64 448
  store i16 0, ptr %i.kp, align 8, !noalias !4772
  store ptr %i.ki, ptr %i.n, align 8, !alias.scope !4765, !noalias !4759
  store i64 %i.kn, ptr %i.t, align 8, !alias.scope !4765, !noalias !4759
  %i.kq = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, %i.kh
  br i1 %i.kq, label %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1r_7command7CommandE12insert_entry0B1t_.exit.i.i.i, label %bb.at, !prof !159

bb.at:                                            ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1L_.exit.i.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #44, !noalias !4773
  unreachable

bb.au:                                            ; preds = %._crit_edge.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #44, !noalias !4777
  unreachable

_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1r_7command7CommandE12insert_entry0B1t_.exit.i.i.i: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1L_.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.lcssa.i.i.i) ]
  store i16 1, ptr %i.kl, align 2, !noalias !4773
  store i64 %.sroa.0.sroa.0.0.lcssa.i.i.i, ptr %i.ki, align 8, !noalias !4778
  %.sroa.024.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i64 %.sroa.0.sroa.7.0.lcssa.i.i.i, ptr %.sroa.024.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4778
  %.sroa.024.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !4779
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 360
  store ptr %.sroa.7.0.lcssa.i.i.i, ptr %i.kr, align 8, !noalias !4773
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ki, i64 464
  store ptr %.sroa.10.0.lcssa.i.i.i, ptr %i.ks, align 8, !noalias !4773
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa.i.i.i, i64 352
  store ptr %i.ki, ptr %i.kt, align 8, !noalias !4773
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.10.0.lcssa.i.i.i, i64 448
  store i16 1, ptr %i.ku, align 8, !noalias !4773
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4f_11VacantEntryB1D_B2I_E12insert_entry0EB1L_.exit.i.i

.lr.ph.i.i.i131:                                  ; preds = %bb.ao, %bb.bm
  %i.kv = phi ptr [ %i.sf, %bb.bm ], [ %i.kf, %bb.ao ] ; 19 uses
  %.sroa.7.092.i.i.i = phi ptr [ %.sroa.823.0.i.i.i, %bb.bm ], [ %.sroa.75.0.i.i.i, %bb.ao ] ; 5 uses
  %.sroa.8.091.i.i.i = phi ptr [ %i.kv, %bb.bm ], [ %.sroa.0.0.i.i.i, %bb.ao ]
  %.sroa.9.090.i.i.i = phi i64 [ %i.kw, %bb.bm ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.10.089.i.i.i = phi ptr [ %.sroa.14.0.i.i.i, %bb.bm ], [ %.sroa.13.0.i.i.i, %bb.ao ] ; 2 uses
  %.sroa.12.088.i.i.i = phi i64 [ %.sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.0..sroa.16.i.i.0..sroa.16.i.0..sroa.16.i.0..sroa.16.0..sroa.16.0..sroa.16.64..i.i.i, %bb.bm ], [ %.sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.i.0..sroa.15.i.i.0..sroa.15.i.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.0..sroa.15.64..i.i.i, %bb.ao ]
  %.sroa.0.sroa.0.087.i.i.i = phi i64 [ %.sroa.019.0.i.i.i, %bb.bm ], [ %.sroa.02.0.i.i.i, %bb.ao ] ; 4 uses
  %.sroa.0.sroa.7.086.i.i.i = phi i64 [ %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i, %bb.bm ], [ %.sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i.i.i, %bb.ao ] ; 4 uses
  %i.kw = add i64 %.sroa.9.090.i.i.i, 1           ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.8.091.i.i.i, i64 448
  %i.ky = load i16, ptr %i.kx, align 8, !noalias !4756 ; 4 uses
  %i.kz = zext i16 %i.ky to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.092.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4780)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016.i.sroa.5.i.i.i)
  %i.la = icmp eq i64 %.sroa.12.088.i.i.i, %.sroa.9.090.i.i.i
  br i1 %i.la, label %bb.aw, label %bb.av, !prof !159

bb.av:                                            ; preds = %.lr.ph.i.i.i131
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #44, !noalias !4783
  unreachable

bb.aw:                                            ; preds = %.lr.ph.i.i.i131
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 450 ; 4 uses
  %i.lc = load i16, ptr %i.lb, align 2, !noalias !4783, !noundef !13 ; 5 uses
  %i.ld = icmp ult i16 %i.lc, 11
  br i1 %i.ld, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.le = icmp ult i16 %i.ky, 5
  br i1 %i.le, label %bb.bd, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.lf = zext nneg i16 %i.lc to i64              ; 4 uses
  %i.lg = add nuw nsw i16 %i.lc, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !4787)
  %i.lh = add nuw nsw i64 %i.kz, 1                ; 7 uses
  %.not.i.i41.not.i.i.i = icmp ult i16 %i.ky, %i.lc
  %i.li = getelementptr inbounds nuw [32 x i8], ptr %i.kv, i64 %i.kz ; 7 uses
  br i1 %.not.i.i41.not.i.i.i, label %bb.az, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i.i.i.i.i: ; preds = %bb.ay
  store i64 %.sroa.0.sroa.0.087.i.i.i, ptr %i.li, align 8, !alias.scope !4790, !noalias !4792
  %.sroa.735.0..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i64 %.sroa.0.sroa.7.086.i.i.i, ptr %.sroa.735.0..sroa_idx40.i.i.i, align 8, !alias.scope !4790, !noalias !4792
  %.sroa.842.0..sroa_idx45.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.842.0..sroa_idx45.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !4779
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 360
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.kz
  store ptr %.sroa.7.092.i.i.i, ptr %i.lk, align 8, !alias.scope !4796, !noalias !4799
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ll = getelementptr inbounds nuw [32 x i8], ptr %i.kv, i64 %i.lh
  %i.lm = sub nsw i64 %i.lf, %i.kz                ; 2 uses
  %i.ln = shl nuw nsw i64 %i.lm, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ll, ptr nonnull align 8 %i.li, i64 %i.ln, i1 false), !alias.scope !4802, !noalias !4803
  store i64 %.sroa.0.sroa.0.087.i.i.i, ptr %i.li, align 8, !alias.scope !4790, !noalias !4792
  %.sroa.735.0..sroa_idx38.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i64 %.sroa.0.sroa.7.086.i.i.i, ptr %.sroa.735.0..sroa_idx38.i.i.i, align 8, !alias.scope !4790, !noalias !4792
  %.sroa.842.0..sroa_idx44.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.842.0..sroa_idx44.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !4779
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kv, i64 360 ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.kz ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lh
  %i.lr = shl nuw nsw i64 %i.lm, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lq, ptr nonnull align 8 %i.lp, i64 %i.lr, i1 false), !alias.scope !4796, !noalias !4799
  store ptr %.sroa.7.092.i.i.i, ptr %i.lp, align 8, !alias.scope !4796, !noalias !4799
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kv, i64 456 ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lh
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.kz
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lv, ptr nonnull align 8 %i.lt, i64 %i.lr, i1 false), !alias.scope !4804, !noalias !4807
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i.i.i.i.i: ; preds = %bb.az, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i.i.i.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kv, i64 456 ; 6 uses
  %i.lx = add nuw nsw i64 %i.lf, 2                ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lh
  store ptr %.sroa.10.089.i.i.i, ptr %i.ly, align 8, !alias.scope !4804, !noalias !4807
  store i16 %i.lg, ptr %i.lb, align 2, !noalias !4807
  %i.lz = icmp samesign ult i64 %i.lh, %i.lx
  br i1 %i.lz, label %.lr.ph.i.i.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2a_7command7CommandEEEB2c_.exit.i.i.i.i.i
  %i.ma = add nuw nsw i64 %i.lf, 1
  %i.mb = sub nsw i64 %i.ma, %i.kz
  %i.mc = sub nsw i64 %i.lf, %i.kz
  %xtraiter349 = and i64 %i.mb, 3                 ; 2 uses
  %lcmp.mod350.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.md, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.lh, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter351 = phi i64 [ %prol.iter351.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.md = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.me = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.me)
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !4807, !nonnull !13, !noundef !13 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 352
  store ptr %i.kv, ptr %i.mh, align 8, !noalias !4807
  %i.mi = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 448
  store i16 %i.mi, ptr %i.mj, align 8, !noalias !4807
  %prol.iter351.next = add i64 %prol.iter351, 1   ; 2 uses
  %prol.iter351.cmp.not = icmp eq i64 %prol.iter351.next, %xtraiter349
  br i1 %prol.iter351.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !4808

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.lh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.md, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.mk = icmp ult i64 %i.mc, 3
  br i1 %i.mk, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.nd, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ml = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !4807, !nonnull !13, !noundef !13 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 352
  store ptr %i.kv, ptr %i.mo, align 8, !noalias !4807
  %i.mp = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 448
  store i16 %i.mp, ptr %i.mq, align 8, !noalias !4807
  %i.mr = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.ml
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !4807, !nonnull !13, !noundef !13 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 352
  store ptr %i.kv, ptr %i.mu, align 8, !noalias !4807
  %i.mv = trunc nuw nsw i64 %i.ml to i16
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 448
  store i16 %i.mv, ptr %i.mw, align 8, !noalias !4807
  %i.mx = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.mr
  %i.mz = load ptr, ptr %i.my, align 8, !noalias !4807, !nonnull !13, !noundef !13 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 352
  store ptr %i.kv, ptr %i.na, align 8, !noalias !4807
  %i.nb = trunc nuw nsw i64 %i.mr to i16
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 448
  store i16 %i.nb, ptr %i.nc, align 8, !noalias !4807
  %i.nd = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.ne = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ne)
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.mx
  %i.ng = load ptr, ptr %i.nf, align 8, !noalias !4807, !nonnull !13, !noundef !13 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 352
  store ptr %i.kv, ptr %i.nh, align 8, !noalias !4807
  %i.ni = trunc nuw nsw i64 %i.mx to i16
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 448
  store i16 %i.ni, ptr %i.nj, align 8, !noalias !4807
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.nd, %i.lx
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1J_7command7CommandNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1L_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ax
  switch i16 %i.ky, label %bb.bb [
    i16 5, label %bb.bd
    i16 6, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.nk = add nsw i64 %i.kz, -7
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ax
  %.sroa.06.0.i.i.i.i = phi i64 [ 5, %bb.bc ], [ 6, %bb.bb ], [ 4, %bb.ax ], [ 5, %bb.ba ] ; 7 uses
  %.sroa.5.0.i.i.i.i = phi i64 [ 0, %bb.bc ], [ %i.nk, %bb.bb ], [ %i.kz, %bb.ax ], [ 5, %bb.ba ] ; 9 uses
  %.sroa.03.0.i.i.i.i = phi i1 [ true, %bb.bc ], [ true, %bb.bb ], [ false, %bb.ax ], [ false, %bb.ba ]
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !4809
  %i.nl = call noalias noundef align 8 dereferenceable_or_null(552) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 552, i64 noundef range(i64 1, 9) 8) #43, !noalias !4809 ; 13 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %bb.be, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i, !prof !269

bb.be:                                            ; preds = %bb.bd
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 552) #46, !noalias !4809
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i: ; preds = %bb.bd
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 352
  store ptr null, ptr %i.nn, align 8, !noalias !4809
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 450 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4813)
  %i.np = load i16, ptr %i.lb, align 2, !noalias !4816, !noundef !13
  %i.nq = zext i16 %i.np to i64
  %i.nr = xor i64 %.sroa.06.0.i.i.i.i, -1
  %i.ns = add nsw i64 %i.nq, %i.nr                ; 5 uses
  %i.nt = trunc i64 %i.ns to i16
  store i16 %i.nt, ptr %i.no, align 2, !alias.scope !4813, !noalias !4818
  %i.nu = icmp ult i64 %i.ns, 12
  br i1 %i.nu, label %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1K_.exit.i.i.i.i.i, label %bb.bf, !prof !3443

bb.bf:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ns, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #44, !noalias !4816
  unreachable

_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1K_.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1A_7command7CommandEE13new_uninit_inB1C_.exit.i.i.i.i.i
  %i.nv = getelementptr inbounds nuw [32 x i8], ptr %i.kv, i64 %.sroa.06.0.i.i.i.i ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kv, i64 360 ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %.sroa.06.0.i.i.i.i
  %i.ny = load ptr, ptr %i.nx, align 8, !noalias !4816, !nonnull !13, !align !239, !noundef !13
  %i.nz = add nuw nsw i64 %.sroa.06.0.i.i.i.i, 1  ; 2 uses
  %i.oa = getelementptr inbounds nuw [32 x i8], ptr %i.kv, i64 %i.nz
  %i.ob = shl nuw nsw i64 %i.ns, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(456) %i.nl, ptr nonnull readonly align 8 %i.oa, i64 %i.ob, i1 false), !alias.scope !4819, !noalias !4818
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.nz
  %i.od = getelementptr inbounds nuw i8, ptr %i.nl, i64 360
  %i.oe = shl nuw nsw i64 %i.ns, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.od, ptr nonnull readonly align 8 %i.oc, i64 %i.oe, i1 false), !alias.scope !4823, !noalias !4818
  %i.of = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i to i16
  store i16 %i.of, ptr %i.lb, align 2, !noalias !4816
  %.sroa.0.i.i.sroa.0.0.copyload.i.i.i = load i64, ptr %i.nv, align 8, !noalias !4783
  %.sroa.0.i.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %.sroa.0.i.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.0.i.i.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4783
  %.sroa.0.i.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !4783
  %i.og = load i16, ptr %i.no, align 2, !noalias !4809, !noundef !13 ; 3 uses
  %i.oh = zext i16 %i.og to i64
  %i.oi = add nuw nsw i64 %i.oh, 1                ; 5 uses
  %i.oj = icmp ult i16 %i.og, 12
  br i1 %i.oj, label %bb.bg, label %bb.bj, !prof !3443

bb.bg:                                            ; preds = %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1I_7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1K_.exit.i.i.i.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nl, i64 456 ; 6 uses
  %i.ol = zext i16 %i.lc to i64
  %i.om = sub nuw nsw i64 %i.ol, %.sroa.06.0.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4827)
  call void @llvm.experimental.noalias.scope.decl(metadata !4830)
  %i.on = icmp eq i64 %i.om, %i.oi
  br i1 %i.on, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i, label %bb.bh, !prof !159

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #44, !noalias !4832
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i: ; preds = %bb.bg
  %i.oo = getelementptr i8, ptr %i.kv, i64 464
  %i.op = getelementptr [8 x i8], ptr %i.oo, i64 %.sroa.06.0.i.i.i.i
  %i.oq = shl nuw nsw i64 %i.oi, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ok, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.op, i64 %i.oq, i1 false), !alias.scope !4833, !noalias !4809
  %i.or = icmp ne i64 %i.kw, 0
  call void @llvm.assume(i1 %i.or)
  call void @llvm.experimental.noalias.scope.decl(metadata !4834)
  %xtraiter = and i64 %i.oi, 3                    ; 3 uses
  %i.os = icmp ult i16 %i.og, 3
  br i1 %i.os, label %.epil.preheader, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i.new

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i
  %unroll_iter = and i64 %i.oi, 28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB2b_7command7CommandEEEB2d_.exit.i.i.i.i.i.new ], [ %i.pl, %bb.bi ] ; 6 uses
end_hunk_5
begin_hunk_6_@_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate22write_flat_subcommands:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.gz = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -7
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ad
  %.sroa.09.0.i.i.i.i = phi i1 [ true, %bb.ai ], [ true, %bb.ah ], [ false, %bb.ad ], [ false, %bb.ag ]
  %.sroa.510.0.i.i.i.i = phi i64 [ 0, %bb.ai ], [ %i.gz, %bb.ah ], [ %.sroa.4.0.i.ph.i.i.i, %bb.ad ], [ %.sroa.4.0.i.ph.i.i.i, %bb.ag ] ; 6 uses
  %.sroa.013.0.i.i.i.i = phi i64 [ 5, %bb.ai ], [ 6, %bb.ah ], [ 4, %bb.ad ], [ %.sroa.4.0.i.ph.i.i.i, %bb.ag ] ; 5 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5008
  %i.ha = call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 368, i64 noundef range(i64 1, 9) 8) #43, !noalias !5008 ; 8 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.ak, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1B_.exit.i.i.i.i.i, !prof !269

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 368) #46, !noalias !5008
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1B_.exit.i.i.i.i.i: ; preds = %bb.aj
  store ptr null, ptr %i.ha, align 8, !noalias !5008
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 362
  call void @llvm.experimental.noalias.scope.decl(metadata !5012)
  %i.hd = load i16, ptr %i.gn, align 2, !noalias !5015, !noundef !13
  %i.he = zext i16 %i.hd to i64
  %i.hf = xor i64 %.sroa.013.0.i.i.i.i, -1
  %i.hg = add nsw i64 %i.he, %i.hf                ; 5 uses
  %i.hh = trunc i64 %i.hg to i16
  store i16 %i.hh, ptr %i.hc, align 2, !alias.scope !5012, !noalias !5017
  %i.hi = icmp ult i64 %i.hg, 12
  br i1 %i.hi, label %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i, label %bb.al, !prof !3443

bb.al:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1B_.exit.i.i.i.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hg, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #44, !noalias !5015
  unreachable

_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1B_.exit.i.i.i.i.i
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %.sroa.013.0.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 272 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.sroa.013.0.i.i.i.i
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !5015, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.hn = add nuw nsw i64 %.sroa.013.0.i.i.i.i, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hq = mul nuw nsw i64 %i.hg, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull readonly align 8 %i.ho, i64 %i.hq, i1 false), !alias.scope !5018, !noalias !5017
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hn
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ha, i64 272
  %i.ht = shl nuw nsw i64 %i.hg, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hs, ptr nonnull readonly align 8 %i.hr, i64 %i.ht, i1 false), !alias.scope !5022, !noalias !5017
  %i.hu = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i to i16
  store i16 %i.hu, ptr %i.gn, align 2, !noalias !5015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hj, i64 24, i1 false), !noalias !5026
  %spec.select38.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i, ptr %i.ha, ptr %.sroa.0.0.i.i.i ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i, i64 362 ; 2 uses
  %i.hw = load i16, ptr %i.hv, align 2, !noalias !5027, !noundef !13 ; 2 uses
  %i.hx = zext i16 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i, i64 8 ; 2 uses
  %.not.i14.not.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i, %i.hx
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %i.hy, i64 %.sroa.510.0.i.i.i.i ; 7 uses
  br i1 %.not.i14.not.i.i.i.i, label %bb.am, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjReEECsfu0rQaTkGUu_12clap_builder.exit.i15.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjReEECsfu0rQaTkGUu_12clap_builder.exit.i15.i.i.i.i: ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i
  store ptr %i.fk, ptr %i.hz, align 8, !noalias !4983
  %.sroa.1126.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %i.fj, ptr %.sroa.1126.8..sroa_idx.i, align 8, !noalias !4983
  %.sroa.1235.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i64 %i.fi, ptr %.sroa.1235.8..sroa_idx.i, align 8, !noalias !4983
  br label %bb.an

bb.am:                                            ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1P_.exit.i.i.i.i
  %i.ia = add nuw nsw i64 %.sroa.510.0.i.i.i.i, 1 ; 2 uses
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.hy, i64 %i.ia
  %i.ic = sub nuw nsw i64 %i.hx, %.sroa.510.0.i.i.i.i ; 2 uses
  %i.id = mul nuw nsw i64 %i.ic, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull align 8 %i.hz, i64 %i.id, i1 false), !alias.scope !5033, !noalias !5036
  store ptr %i.fk, ptr %i.hz, align 8, !noalias !4983
  %.sroa.1126.8..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %i.fj, ptr %.sroa.1126.8..sroa_idx27.i, align 8, !noalias !4983
  %.sroa.1235.8..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i64 %i.fi, ptr %.sroa.1235.8..sroa_idx36.i, align 8, !noalias !4983
  %i.ie = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i, i64 272 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.sroa.510.0.i.i.i.i
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ia
  %i.ih = shl nuw nsw i64 %i.ic, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ig, ptr nonnull align 8 %i.if, i64 %i.ih, i1 false), !alias.scope !5038, !noalias !5041
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjReEECsfu0rQaTkGUu_12clap_builder.exit.i15.i.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i, i64 272
  %i.ij = add i16 %i.hw, 1
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.sroa.510.0.i.i.i.i
  store ptr %i.t, ptr %i.ik, align 8, !alias.scope !5038, !noalias !5043
  store i16 %i.ij, ptr %i.hv, align 2, !noalias !5047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i.i.i, i64 24, i1 false), !noalias !5048
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i)
  %i.il = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !noalias !5049, !noundef !13 ; 2 uses
  %.not.i95.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i95.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

bb.ao:                                            ; preds = %bb.af, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjReEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 272
  %i.in = add nuw nsw i16 %i.fn, 1
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.sroa.4.0.i.ph.i.i.i
  store ptr %i.t, ptr %i.io, align 8, !alias.scope !5003, !noalias !5006
  store i16 %i.in, ptr %i.gn, align 2, !noalias !5052
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i)
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3N_11VacantEntryB1D_B1I_E12insert_entry0EB1P_.exit.i.i

._crit_edge.i.i.i:                                ; preds = %.loopexit43.i.i.i, %bb.an
  %.sroa.13.0.lcssa.i.i.i = phi ptr [ %i.hm, %bb.an ], [ %i.ly, %.loopexit43.i.i.i ]
  %.sroa.9.0.lcssa.i.i.i = phi i64 [ 0, %bb.an ], [ %i.jb, %.loopexit43.i.i.i ]
  %.sroa.7.0.lcssa.i.i.i = phi ptr [ %i.ha, %bb.an ], [ %i.ll, %.loopexit43.i.i.i ] ; 3 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5053
  %i.ip = call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 464, i64 noundef range(i64 1, 9) 8) #43, !noalias !5053 ; 10 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.ap, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i.i.i.i, !prof !269

bb.ap:                                            ; preds = %._crit_edge.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #46, !noalias !5053
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i
  store ptr null, ptr %i.ip, align 8, !noalias !5053
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 362 ; 2 uses
  store i16 0, ptr %i.ir, align 2, !noalias !5053
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 368
  store ptr %.sroa.0.0288, ptr %i.is, align 8, !noalias !5053
  %i.it = add i64 %.sroa.7.0287, 1                ; 2 uses
  %.not.i.i.i.i.i.i.i.i97 = icmp eq i64 %i.it, 0
  br i1 %.not.i.i.i.i.i.i.i.i97, label %bb.aq, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1P_.exit.i.i.i.i, !prof !269

bb.aq:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #44, !noalias !5053
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1P_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i.i.i.i
  store ptr %i.ip, ptr %.sroa.0.0288, align 8, !noalias !5058
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.0288, i64 360
  store i16 0, ptr %i.iu, align 8, !noalias !5063
  %i.iv = icmp eq i64 %.sroa.9.0.lcssa.i.i.i, %.sroa.7.0287
  br i1 %i.iv, label %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entry0B1x_.exit.i.i.i, label %bb.ar, !prof !159

bb.ar:                                            ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1P_.exit.i.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #44, !noalias !5064
  unreachable

_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE12insert_entry0B1x_.exit.i.i.i: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1P_.exit.i.i.i.i
  store i16 1, ptr %i.ir, align 2, !noalias !5064
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i.i, i64 24, i1 false), !noalias !5068
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 272
  store ptr %.sroa.13.0.lcssa.i.i.i, ptr %i.ix, align 8, !noalias !5064
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ip, i64 376
  store ptr %.sroa.7.0.lcssa.i.i.i, ptr %i.iy, align 8, !noalias !5064
  store ptr %i.ip, ptr %.sroa.7.0.lcssa.i.i.i, align 8, !noalias !5064
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i.i, i64 360
  store i16 1, ptr %i.iz, align 8, !noalias !5064
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3N_11VacantEntryB1D_B1I_E12insert_entry0EB1P_.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.an, %.loopexit43.i.i.i
  %i.ja = phi ptr [ %i.pw, %.loopexit43.i.i.i ], [ %i.il, %bb.an ] ; 17 uses
  %.sroa.0.0100.i.i.i = phi ptr [ %i.ja, %.loopexit43.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.an ]
  %.sroa.6.099.i.i.i = phi i64 [ %i.jb, %.loopexit43.i.i.i ], [ 0, %bb.an ]
  %.sroa.7.098.i.i.i = phi ptr [ %i.ll, %.loopexit43.i.i.i ], [ %i.ha, %bb.an ] ; 2 uses
  %.sroa.13.096.i.i.i = phi ptr [ %i.ly, %.loopexit43.i.i.i ], [ %i.hm, %bb.an ] ; 4 uses
  %i.jb = add i64 %.sroa.6.099.i.i.i, 1           ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.0100.i.i.i, i64 360
  %i.jd = load i16, ptr %i.jc, align 8, !noalias !5049 ; 4 uses
  %i.je = zext i16 %i.jd to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i37.i.i.i)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 362 ; 4 uses
  %i.jg = load i16, ptr %i.jf, align 2, !noalias !5069, !noundef !13 ; 5 uses
  %i.jh = icmp ult i16 %i.jg, 11
  br i1 %i.jh, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.preheader.i.i.i
  %i.ji = icmp ult i16 %i.jd, 5
  br i1 %i.ji, label %bb.ay, label %bb.av

bb.at:                                            ; preds = %.lr.ph.preheader.i.i.i
  %i.jj = zext nneg i16 %i.jg to i64              ; 4 uses
  %i.jk = add nuw nsw i16 %i.jg, 1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.jm = add nuw nsw i64 %i.je, 1                ; 7 uses
  %.not.i.i39.not.i.i.i = icmp ult i16 %i.jd, %i.jg
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.jl, i64 %i.je ; 3 uses
  br i1 %.not.i.i39.not.i.i.i, label %bb.au, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i.i.i.i.i: ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i.i, i64 24, i1 false), !noalias !5068
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ja, i64 272
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.je
  store ptr %.sroa.13.096.i.i.i, ptr %i.jp, align 8, !alias.scope !5075, !noalias !5078
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.jl, i64 %i.jm
  %i.jr = sub nsw i64 %i.jj, %i.je                ; 2 uses
  %i.js = mul nuw nsw i64 %i.jr, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jq, ptr nonnull align 8 %i.jn, i64 %i.js, i1 false), !alias.scope !5084, !noalias !5087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.i.i.i, i64 24, i1 false), !noalias !5068
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ja, i64 272 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.je ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jm
  %i.jw = shl nuw nsw i64 %i.jr, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr nonnull align 8 %i.ju, i64 %i.jw, i1 false), !alias.scope !5075, !noalias !5078
  store ptr %.sroa.13.096.i.i.i, ptr %i.ju, align 8, !alias.scope !5075, !noalias !5078
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ja, i64 368 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jm
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.je
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ka, ptr nonnull align 8 %i.jy, i64 %i.jw, i1 false), !alias.scope !5089, !noalias !5092
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i.i.i.i.i: ; preds = %bb.au, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEB1b_.exit.i.i.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ja, i64 368 ; 6 uses
  %i.kc = add nuw nsw i64 %i.jj, 2                ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.jm
  store ptr %.sroa.7.098.i.i.i, ptr %i.kd, align 8, !alias.scope !5089, !noalias !5092
  store i16 %i.jk, ptr %i.jf, align 2, !noalias !5092
  %i.ke = icmp samesign ult i64 %i.jm, %i.kc
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i98

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2g_.exit.i.i.i.i.i
  %i.kf = add nuw nsw i64 %i.jj, 1
  %i.kg = sub nsw i64 %i.kf, %i.je
  %i.kh = sub nsw i64 %i.jj, %i.je
  %xtraiter931 = and i64 %i.kg, 3                 ; 2 uses
  %lcmp.mod932.not = icmp eq i64 %xtraiter931, 0
  br i1 %lcmp.mod932.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.ki, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.jm, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter933 = phi i64 [ %prol.iter933.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ki = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.kj = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.kj)
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !5092, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ja, ptr %i.kl, align 8, !noalias !5092
  %i.km = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 360
  store i16 %i.km, ptr %i.kn, align 8, !noalias !5092
  %prol.iter933.next = add i64 %prol.iter933, 1   ; 2 uses
  %prol.iter933.cmp.not = icmp eq i64 %prol.iter933.next, %xtraiter931
  br i1 %prol.iter933.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !5093

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.jm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ki, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ko = icmp ult i64 %i.kh, 3
  br i1 %i.ko, label %.loopexit.i.i.i98, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.le, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.kp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !5092, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ja, ptr %i.kr, align 8, !noalias !5092
  %i.ks = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 360
  store i16 %i.ks, ptr %i.kt, align 8, !noalias !5092
  %i.ku = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.kp
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !5092, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ja, ptr %i.kw, align 8, !noalias !5092
  %i.kx = trunc nuw nsw i64 %i.kp to i16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 360
  store i16 %i.kx, ptr %i.ky, align 8, !noalias !5092
  %i.kz = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.ku
  %i.lb = load ptr, ptr %i.la, align 8, !noalias !5092, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ja, ptr %i.lb, align 8, !noalias !5092
  %i.lc = trunc nuw nsw i64 %i.ku to i16
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 360
  store i16 %i.lc, ptr %i.ld, align 8, !noalias !5092
  %i.le = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.lf = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.lf)
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.kz
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !5092, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ja, ptr %i.lh, align 8, !noalias !5092
  %i.li = trunc nuw nsw i64 %i.kz to i16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 360
  store i16 %i.li, ptr %i.lj, align 8, !noalias !5092
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.le, %i.kc
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %.loopexit.i.i.i98, label %.lr.ph.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.as
  switch i16 %i.jd, label %bb.aw [
    i16 5, label %bb.ay
    i16 6, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.lk = add nsw i64 %i.je, -7
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.as
  %.sroa.06.0.i.i.i.i = phi i64 [ 5, %bb.ax ], [ 6, %bb.aw ], [ 4, %bb.as ], [ 5, %bb.av ] ; 7 uses
  %.sroa.5.0.i.i.i.i = phi i64 [ 0, %bb.ax ], [ %i.lk, %bb.aw ], [ %i.je, %bb.as ], [ 5, %bb.av ] ; 9 uses
  %.sroa.03.0.i.i.i.i = phi i1 [ true, %bb.ax ], [ true, %bb.aw ], [ false, %bb.as ], [ false, %bb.av ]
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5094
  %i.ll = call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 464, i64 noundef range(i64 1, 9) 8) #43, !noalias !5094 ; 14 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %bb.az, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i, !prof !269

bb.az:                                            ; preds = %bb.ay
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #46, !noalias !5094
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i: ; preds = %bb.ay
  store ptr null, ptr %i.ll, align 8, !noalias !5094
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 362 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5098)
  %i.lo = load i16, ptr %i.jf, align 2, !noalias !5101, !noundef !13
  %i.lp = zext i16 %i.lo to i64
  %i.lq = xor i64 %.sroa.06.0.i.i.i.i, -1
  %i.lr = add nsw i64 %i.lp, %i.lq                ; 5 uses
  %i.ls = trunc i64 %i.lr to i16
  store i16 %i.ls, ptr %i.ln, align 2, !alias.scope !5098, !noalias !5103
  %i.lt = icmp ult i64 %i.lr, 12
  br i1 %i.lt, label %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1O_.exit.i.i.i.i.i, label %bb.ba, !prof !3443

bb.ba:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lr, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #44, !noalias !5101
  unreachable

_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1O_.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEE13new_uninit_inB1G_.exit.i.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %i.lu, i64 %.sroa.06.0.i.i.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ja, i64 272 ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.sroa.06.0.i.i.i.i
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !5101, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.lz = add nuw nsw i64 %.sroa.06.0.i.i.i.i, 1  ; 2 uses
  %i.ma = getelementptr inbounds nuw [24 x i8], ptr %i.lu, i64 %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.mc = mul nuw nsw i64 %i.lr, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mb, ptr nonnull readonly align 8 %i.ma, i64 %i.mc, i1 false), !alias.scope !5104, !noalias !5103
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lz
  %i.me = getelementptr inbounds nuw i8, ptr %i.ll, i64 272
  %i.mf = shl nuw nsw i64 %i.lr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.me, ptr nonnull readonly align 8 %i.md, i64 %i.mf, i1 false), !alias.scope !5108, !noalias !5103
  %i.mg = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i to i16
  store i16 %i.mg, ptr %i.jf, align 2, !noalias !5101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 24, i1 false), !noalias !5069
  %i.mh = load i16, ptr %i.ln, align 2, !noalias !5094, !noundef !13 ; 3 uses
  %i.mi = zext i16 %i.mh to i64
  %i.mj = add nuw nsw i64 %i.mi, 1                ; 5 uses
  %i.mk = icmp ult i16 %i.mh, 12
  br i1 %i.mk, label %bb.bb, label %bb.be, !prof !3443

bb.bb:                                            ; preds = %_RNvMsU_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1O_.exit.i.i.i.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ll, i64 368 ; 6 uses
  %i.mm = zext i16 %i.jg to i64
  %i.mn = sub nuw nsw i64 %i.mm, %.sroa.06.0.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5112)
  call void @llvm.experimental.noalias.scope.decl(metadata !5115)
  %i.mo = icmp eq i64 %i.mn, %i.mj
  br i1 %i.mo, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i, label %bb.bc, !prof !159

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #44, !noalias !5117
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i: ; preds = %bb.bb
  %i.mp = getelementptr i8, ptr %i.ja, i64 376
  %i.mq = getelementptr [8 x i8], ptr %i.mp, i64 %.sroa.06.0.i.i.i.i
  %i.mr = shl nuw nsw i64 %i.mj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ml, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.mq, i64 %i.mr, i1 false), !alias.scope !5118, !noalias !5094
  %i.ms = icmp ne i64 %i.jb, 0
  call void @llvm.assume(i1 %i.ms)
  call void @llvm.experimental.noalias.scope.decl(metadata !5119)
  %xtraiter = and i64 %i.mj, 3                    ; 3 uses
  %i.mt = icmp ult i16 %i.mh, 3
  br i1 %i.mt, label %.epil.preheader, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i.new

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i
  %unroll_iter = and i64 %i.mj, 28
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i.new ], [ %i.nj, %bb.bd ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjReERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEEB2h_.exit.i.i.i.i.i.new ], [ %niter.next.3, %bb.bd ]
  %i.mu = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %.sroa.0.09.i.i.i.i.i.i.i
  %i.mw = load ptr, ptr %i.mv, align 8, !alias.scope !5119, !noalias !5122, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ll, ptr %i.mw, align 8, !noalias !5125
  %i.mx = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i to i16
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 360
  store i16 %i.mx, ptr %i.my, align 8, !noalias !5122
  %i.mz = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mu
  %i.nb = load ptr, ptr %i.na, align 8, !alias.scope !5119, !noalias !5122, !nonnull !13, !noundef !13 ; 2 uses
  store ptr %i.ll, ptr %i.nb, align 8, !noalias !5125
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15match_arg_error:bb.a
  %i.ex = getelementptr i8, ptr %.sroa.12.0.i.ph, i64 8
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel

bb.q:                                             ; preds = %bb.o, %.sink.split
  %i.ey = icmp eq ptr %.sroa.26.0.i.ph, %i.es
  br i1 %i.ey, label %.loopexit, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel: ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 712
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 560
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 568
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 64
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !8082, !noalias !8085, !nonnull !13, !noundef !13 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 72
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !8082, !noalias !8085, !noundef !13
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.ff
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel, %bb.p
  %.sroa.26.2.ph.i.peel = phi ptr [ %.sroa.26.0.i.ph, %bb.p ], [ %i.ez, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ] ; 2 uses
  %.sroa.15.2.ph.i.peel = phi ptr [ %.sroa.15.0.i.ph, %bb.p ], [ %i.fg, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ] ; 2 uses
  %.sroa.12.2.ph.i.peel = phi ptr [ %i.ew, %bb.p ], [ %i.fd, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ] ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i.in.peel = phi ptr [ %i.ex, %bb.p ], [ %i.fb, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ]
  %.sroa.0.0.i.i.ph.i.in.peel = phi ptr [ %.sroa.12.0.i.ph, %bb.p ], [ %i.fa, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ]
  %.sroa.0.0.i.i.ph.i.peel = load ptr, ptr %.sroa.0.0.i.i.ph.i.in.peel, align 8, !noalias !8097, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i.peel = load i64, ptr %.sroa.3.0.i7.pn.i.i.ph.i.in.peel, align 8, !noalias !8097, !noundef !13 ; 2 uses
  %i.fh = call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.ed, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.ph.i.peel, i64 noundef %.sroa.3.0.i7.pn.i.i.ph.i.peel) #43, !noalias !8098 ; 2 uses
  %i.fi = fcmp ogt double %i.fh, f0x3FE6666666666666
  br i1 %i.fi, label %.loopexit430, label %.sink.split.peel.newph

.sink.split.peel.newph:                           ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i
  %.sroa.26.0.i = phi ptr [ %.sroa.26.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ %.sroa.26.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ] ; 7 uses
  %.sroa.15.0.i = phi ptr [ %.sroa.15.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ %.sroa.15.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ] ; 2 uses
  %.sroa.12.0.i = phi ptr [ %.sroa.12.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ %.sroa.12.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ] ; 4 uses
  %i.fj = icmp eq ptr %.sroa.12.0.i, %.sroa.15.0.i
  br i1 %i.fj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.sink.split.peel.newph
  %i.fk = icmp eq ptr %.sroa.26.0.i, %i.es
  br i1 %i.fk, label %.loopexit, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i: ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 712
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 560
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 568
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !8082, !noalias !8085, !nonnull !13, !noundef !13 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 72
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !8082, !noalias !8085, !noundef !13
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fp, i64 %i.fr
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %.sink.split.peel.newph
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i, i64 24
  %i.fu = getelementptr i8, ptr %.sroa.12.0.i, i64 8
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i: ; preds = %bb.s, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i
  %.sroa.26.2.ph.i = phi ptr [ %.sroa.26.0.i, %bb.s ], [ %i.fl, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ] ; 2 uses
  %.sroa.15.2.ph.i = phi ptr [ %.sroa.15.0.i, %bb.s ], [ %i.fs, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ] ; 2 uses
  %.sroa.12.2.ph.i = phi ptr [ %i.ft, %bb.s ], [ %i.fp, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ] ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i.in = phi ptr [ %i.fu, %bb.s ], [ %i.fn, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ]
  %.sroa.0.0.i.i.ph.i.in = phi ptr [ %.sroa.12.0.i, %bb.s ], [ %i.fm, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ]
  %.sroa.0.0.i.i.ph.i = load ptr, ptr %.sroa.0.0.i.i.ph.i.in, align 8, !noalias !8097, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i = load i64, ptr %.sroa.3.0.i7.pn.i.i.ph.i.in, align 8, !noalias !8097, !noundef !13 ; 2 uses
  %i.fv = call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.ed, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.ph.i, i64 noundef %.sroa.3.0.i7.pn.i.i.ph.i) #43, !noalias !8098 ; 2 uses
  %i.fw = fcmp ogt double %i.fv, f0x3FE6666666666666
  br i1 %i.fw, label %.loopexit430, label %.sink.split.peel.newph, !llvm.loop !8099

.loopexit:                                        ; preds = %bb.q, %bb.r
  %i.fx = load ptr, ptr %i.et, align 8, !noalias !8079, !nonnull !13, !noundef !13 ; 10 uses
  %i.fy = load i64, ptr %i.bh, align 8, !range !14, !noalias !8079, !noundef !13 ; 2 uses
  %i.fz = icmp samesign ult i64 %.sink, 288230376151711744
  call void @llvm.assume(i1 %i.fz)
  %.idx.i87 = shl nuw nsw i64 %.sink, 5           ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.idx.i87
  call void @llvm.experimental.noalias.scope.decl(metadata !8100)
  call void @llvm.experimental.noalias.scope.decl(metadata !8103)
  %i.gb = shl i64 %i.fy, 5                        ; 6 uses
  %i.gc = udiv i64 %i.gb, 24                      ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %.sink, 0
  br i1 %.not9.i.i.i.i.i.i, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.loopexit
  %i.gd = add nsw i64 %.idx.i87, -32              ; 2 uses
  %i.ge = lshr exact i64 %i.gd, 5
  %i.gf = add nuw nsw i64 %i.ge, 1
  %xtraiter = and i64 %i.gf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.010.i.i.i.i.i.i.prol = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.fx, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gg = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.fx, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i64 24, i1 false), !noalias !8106
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !8115

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa423.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.4.010.i.i.i.i.i.i.unr = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gh, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.gk = icmp ult i64 %i.gd, 224
  br i1 %i.gk, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.010.i.i.i.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.gl = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i64 24, i1 false), !noalias !8106
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 24, i1 false), !noalias !8106
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 72
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i64 24, i1 false), !noalias !8106
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 72
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 104
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i64 24, i1 false), !noalias !8106
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 96
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 136
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.gu, i64 24, i1 false), !noalias !8106
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 120
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 168
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i64 24, i1 false), !noalias !8106
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 144
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !noalias !8106
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 168
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gl, i64 256 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gl, i64 232
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %i.hb, i64 24, i1 false), !noalias !8106
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.ha, %i.ga
  br i1 %.not.i.i.i.i.i.i.7, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i90.i = phi ptr [ %i.fx, %.loopexit ], [ %.lcssa423.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.hc, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.fy, 0
  %i.hd = mul nuw i64 %i.gc, 24                   ; 5 uses
  %i.he = icmp ne i64 %i.gb, %i.hd
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i88, i1 %i.he, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.t, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit

bb.t:                                             ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.hf = icmp eq i64 %i.gb, 0
  br i1 %i.hf, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i: ; preds = %bb.t
  %i.hg = icmp ule i64 %i.hd, %i.gb
  call void @llvm.assume(i1 %i.hg)
  %i.hh = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %i.fx, i64 noundef %i.gb, i64 noundef 8, i64 noundef range(i64 0, -15) %i.hd) #43, !noalias !8116 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.u, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit, !prof !1217

bb.u:                                             ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.hd) #46, !noalias !8116
  unreachable

.loopexit430:                                     ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel
  %.sroa.26.2.ph.i.lcssa = phi ptr [ %.sroa.26.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %.sroa.26.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ]
  %.sroa.15.2.ph.i.lcssa = phi ptr [ %.sroa.15.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %.sroa.15.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ]
  %.sroa.12.2.ph.i.lcssa = phi ptr [ %.sroa.12.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %.sroa.12.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.ph.i.lcssa = phi ptr [ %.sroa.0.0.i.i.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %.sroa.0.0.i.i.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ]
  %.sroa.3.0.i7.pn.i.i.ph.i.lcssa = phi i64 [ %.sroa.3.0.i7.pn.i.i.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %.sroa.3.0.i7.pn.i.i.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ] ; 7 uses
  %.lcssa424 = phi double [ %i.fh, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ], [ %i.fv, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i = icmp slt i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, 0
  br i1 %.not.i.i, label %bb.w, label %bb.v, !prof !8117

bb.v:                                             ; preds = %.loopexit430
  %i.hj = icmp eq i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, 0
  br i1 %i.hj, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.v
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8118
  %i.hk = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, i64 noundef range(i64 1, 9) 1) #43, !noalias !8118 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %.loopexit430
  %.sroa.440.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %.loopexit430 ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.440.0.ph.i, i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa) #46, !noalias !8098
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i: ; preds = %bb.ab, %bb.v
  %i.hm = phi ptr [ %i.hk, %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.v ]
  switch i64 %.sink, label %.lr.ph.i.i86 [
    i64 0, label %bb.x
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i86:                                     ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i, %.lr.ph.i.i86
  %.sroa.01.017.i.i = phi i64 [ %i.ht, %.lr.ph.i.i86 ], [ %.sink, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.hs, %.lr.ph.i.i86 ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i ] ; 2 uses
  %i.hn = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.ho = add nuw i64 %i.hn, %.sroa.05.016.i.i    ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %.sink
  call void @llvm.assume(i1 %i.hp)
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %.ph, i64 %i.ho
  %.val12.i.i = load double, ptr %i.hq, align 8, !alias.scope !8121, !noalias !8124, !noundef !13
  %i.hr = fcmp ogt double %.val12.i.i, %.lcssa424
  %i.hs = select i1 %i.hr, i64 %.sroa.05.016.i.i, i64 %i.ho, !unpredictable !13 ; 2 uses
  %i.ht = sub i64 %.sroa.01.017.i.i, %i.hn        ; 2 uses
  %i.hu = icmp ugt i64 %i.ht, 1
  br i1 %i.hu, label %.lr.ph.i.i86, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i86, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i ], [ %i.hs, %.lr.ph.i.i86 ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %.ph, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.hv, align 8, !alias.scope !8121, !noalias !8124, !noundef !13
  %i.hw = fcmp ule double %.val14.i.i, %.lcssa424
  %i.hx = zext i1 %i.hw to i64
  %i.hy = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.hx ; 2 uses
  %i.hz = icmp ule i64 %i.hy, %.sink
  call void @llvm.assume(i1 %i.hz)
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i
  %.sroa.4.0.i.i = phi i64 [ %.sink, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i ], [ %i.hy, %._crit_edge.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8126)
  %i.ia = icmp samesign ult i64 %.sink, 288230376151711744
  call void @llvm.assume(i1 %i.ia)
  %i.ib = load i64, ptr %i.bh, align 8, !range !14, !alias.scope !8126, !noalias !8129, !noundef !13
  %i.ic = icmp eq i64 %.sink, %i.ib
  br i1 %i.ic, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #42, !noalias !8131
  %.pre.i = load ptr, ptr %i.et, align 8, !alias.scope !8126, !noalias !8129
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.id = phi ptr [ %.pre.i, %bb.y ], [ %.ph, %bb.x ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.id, i64 %.sroa.4.0.i.i ; 6 uses
  %i.if = icmp samesign ult i64 %.sroa.4.0.i.i, %.sink
  br i1 %i.if, label %bb.aa, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ih = sub nuw nsw i64 %.sink, %.sroa.4.0.i.i
  %i.ii = shl nuw nsw i64 %i.ih, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ig, ptr nonnull align 8 %i.ie, i64 %i.ii, i1 false), !noalias !8132
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.aa, %bb.z
  store double %.lcssa424, ptr %i.ie, align 8, !noalias !8133
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !8133
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store ptr %i.hm, ptr %.sroa.533.0..sroa_idx.i, align 8, !noalias !8133
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, ptr %.sroa.634.0..sroa_idx.i, align 8, !noalias !8133
  %i.ij = add nuw nsw i64 %.sink, 1
  br label %.sink.split

bb.ab:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hk, ptr nonnull align 1 %.sroa.0.0.i.i.ph.i.lcssa, i64 %.sroa.3.0.i7.pn.i.i.ph.i.lcssa, i1 false), !noalias !8098
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread71.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit: ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.t, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  %.sroa.04.0.i.i.i = phi ptr [ %i.fx, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.hh, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.t ] ; 2 uses
  %i.ik = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i90.i to i64
  %i.il = ptrtoint ptr %i.fx to i64
  %i.im = sub nuw i64 %i.ik, %i.il                ; 2 uses
  %i.in = udiv exact i64 %i.im, 24
  store i64 %i.gc, ptr %i.bx, align 8, !alias.scope !8134, !noalias !8135
  %i.io = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %.sroa.04.0.i.i.i, ptr %i.io, align 8, !alias.scope !8134, !noalias !8135
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.in, ptr %i.ip, align 8, !alias.scope !8134, !noalias !8135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !8079
  br i1 %i.ee, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !8136
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_.exit, %bb.ac
  %.val58 = load i64, ptr %i.bw, align 8, !range !127, !noundef !13 ; 2 uses
  %i.iq = icmp sgt i64 %.val58, 0
  br i1 %i.iq, label %bb.ad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
  %.val59 = load ptr, ptr %i.ea, align 8, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val59, i64 noundef %.val58, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !8139
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.ir = icmp ult i64 %i.im, -9223372036854775792
  call void @llvm.assume(i1 %i.ir)
  %i.is = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i90.i, %i.fx
  %i.it = load ptr, ptr %i.cy, align 8, !nonnull !13, !align !239, !noundef !13 ; 9 uses
  br i1 %i.is, label %bb.ah, label %bb.af

bb.ae:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i77
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull align 1 %i.eb, i64 %i.ed, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !nonnull !13 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ix = load i64, ptr %i.iw, align 8            ; 7 uses
  %.not.i89 = icmp slt i64 %i.ix, 0
  br i1 %.not.i89, label %bb.ai, label %bb.ag, !prof !321

bb.ag:                                            ; preds = %bb.af
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i91

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i91: ; preds = %bb.ag
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8142
  %i.iz = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ix, i64 noundef range(i64 1, 9) 1) #43, !noalias !8142 ; 3 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.ai, label %bb.ak

bb.ah:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit
  %i.jb = getelementptr i8, ptr %i.it, i64 136
  %.val62 = load ptr, ptr %i.jb, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.jc = getelementptr i8, ptr %i.it, i64 144
  %.val63 = load i64, ptr %i.jc, align 8, !noundef !13 ; 2 uses
  %.idx.i94 = mul nuw nsw i64 %.val63, 600
  %i.jd = getelementptr inbounds nuw i8, ptr %.val62, i64 %.idx.i94
  %i.je = icmp eq i64 %.val63, 0
  br i1 %i.je, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101.thread, label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %bb.ah, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97
  %i.jf = phi ptr [ %i.jg, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97 ], [ %.val62, %bb.ah ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 600 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 552
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !8145, !noundef !13
  %.not.i.i.i.i96 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i96, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i99, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i99: ; preds = %.lr.ph.i.i95
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 584
  %i.jk = load i32, ptr %i.jj, align 8, !range !2440, !noalias !8145, !noundef !13
  %.not1.i.i.i.i100 = icmp eq i32 %i.jk, -1
  br i1 %.not1.i.i.i.i100, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i99, %.lr.ph.i.i95
  %i.jl = icmp eq ptr %i.jg, %i.jd
  br i1 %i.jl, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101.thread, label %.lr.ph.i.i95

bb.ai:                                            ; preds = %bb.af, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i91
  %.sroa.428.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i91 ], [ 0, %bb.af ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.428.0.ph, i64 %i.ix) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164: ; preds = %bb.ag, %bb.ak
  %i.jm = phi ptr [ %i.iz, %bb.ak ], [ inttoptr (i64 1 to ptr), %bb.ag ]
  store i64 %i.ix, ptr %i.bv, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.jm, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %i.ix, ptr %.sroa.620.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.jn = load ptr, ptr %i.cy, align 8, !nonnull !13, !align !239, !noundef !13 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 296
  %i.jp = load i64, ptr %i.jo, align 8, !range !127, !alias.scope !8148, !noundef !13
  %.not.i102 = icmp eq i64 %i.jp, -1              ; 2 uses
  %.sroa.3.0.in.v.i = select i1 %.not.i102, i64 568, i64 312
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.sroa.3.0.in.v.i
  %.sroa.0.0.in.v.i = select i1 %.not.i102, i64 560, i64 304
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i103 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !8148, !nonnull !13, !noundef !13
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !8148, !noundef !13 ; 7 uses
  %.not.i104 = icmp slt i64 %.sroa.3.0.i, 0
  br i1 %.not.i104, label %bb.al, label %bb.aj, !prof !321

bb.aj:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164
  %i.jq = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.jq, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit108.thread175, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i106

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i106: ; preds = %bb.aj
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8151
  %i.jr = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !8151 ; 3 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %bb.al, label %bb.bc

bb.ak:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i91
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr nonnull align 1 %i.iv, i64 %i.ix, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164

bb.al:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i106
  %.sroa.432.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i106 ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit93.thread164 ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.432.0.ph, i64 %.sroa.3.0.i) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit108.thread175: ; preds = %bb.aj, %bb.bc
  %i.jt = phi ptr [ %.pre, %bb.bc ], [ %i.jn, %bb.aj ] ; 5 uses
  %i.ju = phi ptr [ %i.jr, %bb.bc ], [ inttoptr (i64 1 to ptr), %bb.aj ]
  store i64 %.sroa.3.0.i, ptr %i.bs, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  store ptr %i.ju, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %.sroa.3.0.i, ptr %.sroa.623.0..sroa_idx, align 8
end_hunk_7
begin_hunk_8_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %i.acr = load i64, ptr %i.ak, align 8, !range !14, !alias.scope !9060, !noalias !8977, !noundef !13
  %i.acs = icmp eq i64 %.sroa.8.0.copyload.i, %i.acr
  br i1 %i.acs, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.dh

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.dg
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %.sroa.8.0.copyload.i, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43, !noalias !9018
  %.pre.i.i424 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i421, align 8, !alias.scope !9060, !noalias !8977
  br label %bb.dh

bb.dh:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %bb.dg
  %i.act = phi ptr [ %.pre.i.i424, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.aca, %bb.dg ] ; 2 uses
  %i.acu = getelementptr inbounds nuw [24 x i8], ptr %i.act, i64 %.sroa.8.0.copyload.i ; 3 uses
  store i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.acu, align 8, !noalias !9061
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !9061
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  store i64 %.sroa.65.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !noalias !9061
  %i.acv = add nuw nsw i64 %.sroa.8.0.copyload.i, 1 ; 2 uses
  store i64 %i.acv, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !9060, !noalias !8977
  br label %bb.cy

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i: ; preds = %bb.cz
  %.sroa.0.0.copyload.i425 = load i64, ptr %i.ak, align 8, !noalias !8972
  %.sroa.5.0.copyload.i426 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i421, align 8, !noalias !8972
  %.pre.i427 = load ptr, ptr %i.as, align 8, !noalias !8972
  %.pre201.i = load i64, ptr %i.aaz, align 8, !noalias !8972
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i: ; preds = %bb.cr, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i
  %i.acw = phi i64 [ %.pre201.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i ], [ %.sroa.8.sroa.0.0.copyload.i, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ], [ %.sroa.8.sroa.0.0.copyload.i, %bb.cr ] ; 2 uses
  %i.acx = phi ptr [ %.pre.i427, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i ], [ %i.aay, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ], [ %i.aay, %bb.cr ] ; 2 uses
  %.sroa.8.0.i428 = phi i64 [ %.sroa.8.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i ], [ 0, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ], [ 0, %bb.cr ] ; 3 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i426, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ], [ inttoptr (i64 8 to ptr), %bb.cr ] ; 4 uses
  %.sroa.0.0.i429 = phi i64 [ %.sroa.0.0.copyload.i425, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i ], [ 0, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ], [ 0, %bb.cr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !8977
  %.idx.i430 = mul nuw nsw i64 %.sroa.8.0.i428, 24
  %i.acy = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %.idx.i430
  %i.acz = getelementptr i8, ptr %i.aba, i64 184
  %.val28.i431 = load ptr, ptr %i.acz, align 8, !noalias !8967, !nonnull !13, !noundef !13 ; 3 uses
  %i.ada = getelementptr i8, ptr %i.aba, i64 192
  %.val29.i432 = load i64, ptr %i.ada, align 8, !noalias !8967, !noundef !13 ; 2 uses
  %.idx116.i = mul nuw nsw i64 %.val29.i432, 712
  %i.adb = getelementptr inbounds nuw i8, ptr %.val28.i431, i64 %.idx116.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9062
  store i64 0, ptr %i.ah, align 8, !noalias !9062
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.adc, align 8, !noalias !9062
  %i.add = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store i64 0, ptr %i.add, align 8, !noalias !9062
  %i.ade = icmp eq i64 %.sroa.8.0.i428, 0         ; 2 uses
  br i1 %i.ade, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i, label %.lr.ph.i.i.i433

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9062
  br label %bb.dt

.lr.ph.i.i.i433:                                  ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i, %bb.dk
  %i.adf = phi ptr [ %i.aex, %bb.dk ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 2 uses
  %i.adg = phi i64 [ %i.aey, %bb.dk ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 11 uses
  %i.adh = phi ptr [ %i.aez, %bb.dk ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 3 uses
  %.sroa.0.051.i.i.i = phi ptr [ %i.adi, %bb.dk ], [ %.sroa.5.0.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i ] ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.0.051.i.i.i, i64 24 ; 2 uses
  %i.adj = getelementptr i8, ptr %.sroa.0.051.i.i.i, i64 8
  %.val.i.i.i.i434 = load ptr, ptr %i.adj, align 8, !noalias !9070, !nonnull !13, !noundef !13 ; 2 uses
  %i.adk = getelementptr i8, ptr %.sroa.0.051.i.i.i, i64 16
  %.val3.i.i.i.i435 = load i64, ptr %i.adk, align 8, !noalias !9070, !noundef !13 ; 8 uses
  %i.adl = call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.acx, i64 noundef %i.acw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i434, i64 noundef %.val3.i.i.i.i435) #43, !noalias !9073 ; 4 uses
  %i.adm = fcmp ogt double %i.adl, f0x3FE6666666666666
  br i1 %i.adm, label %bb.dl, label %bb.dk

._crit_edge.i.i.i436:                             ; preds = %bb.dk
  %.pre55.i.i.i = load ptr, ptr %i.adc, align 8, !noalias !9062 ; 10 uses
  %.pre56.i.i.i = load i64, ptr %i.ah, align 8, !range !14, !noalias !9062 ; 2 uses
  %i.adn = icmp ult i64 %i.aey, 288230376151711744
  call void @llvm.assume(i1 %i.adn)
  %.idx.i.i.i437 = shl nuw nsw i64 %i.aey, 5      ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.pre55.i.i.i, i64 %.idx.i.i.i437
  %i.adp = shl i64 %.pre56.i.i.i, 5               ; 5 uses
  %i.adq = udiv i64 %i.adp, 24                    ; 3 uses
  %.not9.i.i.i.i.i.i.i.i = icmp eq i64 %i.aey, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i438.preheader

.lr.ph.i.i.i.i.i.i.i.i438.preheader:              ; preds = %._crit_edge.i.i.i436
  %i.adr = add nsw i64 %.idx.i.i.i437, -32        ; 2 uses
  %i.ads = lshr exact i64 %i.adr, 5
  %i.adt = add nuw nsw i64 %i.ads, 1
  %xtraiter5369 = and i64 %i.adt, 7               ; 2 uses
  %lcmp.mod5370.not = icmp eq i64 %xtraiter5369, 0
  br i1 %lcmp.mod5370.not, label %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i438.prol

.lr.ph.i.i.i.i.i.i.i.i438.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i438.preheader, %.lr.ph.i.i.i.i.i.i.i.i438.prol
  %.sroa.4.010.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.adx, %.lr.ph.i.i.i.i.i.i.i.i438.prol ], [ %.pre55.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ] ; 2 uses
  %i.adu = phi ptr [ %i.adv, %.lr.ph.i.i.i.i.i.i.i.i438.prol ], [ %.pre55.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i438.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ]
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 32 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.adw, i64 24, i1 false), !noalias !9074
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter5369
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i438.prol, !llvm.loop !9087

.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i438.prol, %.lr.ph.i.i.i.i.i.i.i.i438.preheader
  %.lcssa4862.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ], [ %i.adx, %.lr.ph.i.i.i.i.i.i.i.i438.prol ]
  %.sroa.4.010.i.i.i.i.i.i.i.i.unr = phi ptr [ %.pre55.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ], [ %i.adx, %.lr.ph.i.i.i.i.i.i.i.i438.prol ]
  %.unr5371 = phi ptr [ %.pre55.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i438.preheader ], [ %i.adv, %.lr.ph.i.i.i.i.i.i.i.i438.prol ]
  %i.ady = icmp ult i64 %i.adr, 224
  br i1 %i.ady, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i438

.lr.ph.i.i.i.i.i.i.i.i438:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i438
  %.sroa.4.010.i.i.i.i.i.i.i.i = phi ptr [ %i.aeq, %.lr.ph.i.i.i.i.i.i.i.i438 ], [ %.sroa.4.010.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit ] ; 9 uses
  %i.adz = phi ptr [ %i.aeo, %.lr.ph.i.i.i.i.i.i.i.i438 ], [ %.unr5371, %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit ] ; 9 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aea, i64 24, i1 false), !noalias !9074
  %i.aeb = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 24
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adz, i64 40
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeb, ptr noundef nonnull align 8 dereferenceable(24) %i.aec, i64 24, i1 false), !noalias !9074
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 48
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adz, i64 72
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aed, ptr noundef nonnull align 8 dereferenceable(24) %i.aee, i64 24, i1 false), !noalias !9074
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 72
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adz, i64 104
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aef, ptr noundef nonnull align 8 dereferenceable(24) %i.aeg, i64 24, i1 false), !noalias !9074
  %i.aeh = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 96
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adz, i64 136
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeh, ptr noundef nonnull align 8 dereferenceable(24) %i.aei, i64 24, i1 false), !noalias !9074
  %i.aej = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 120
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adz, i64 168
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aej, ptr noundef nonnull align 8 dereferenceable(24) %i.aek, i64 24, i1 false), !noalias !9074
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 144
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adz, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ael, ptr noundef nonnull align 8 dereferenceable(24) %i.aem, i64 24, i1 false), !noalias !9074
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 168
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adz, i64 256 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adz, i64 232
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aen, ptr noundef nonnull align 8 dereferenceable(24) %i.aep, i64 24, i1 false), !noalias !9074
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.i.i439.7 = icmp eq ptr %i.aeo, %i.ado
  br i1 %.not.i.i.i.i.i.i.i.i439.7, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i438

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i438, %._crit_edge.i.i.i436
  %.sroa.4.0.lcssa.i.i.i.i.i.i75.i.i = phi ptr [ %.pre55.i.i.i, %._crit_edge.i.i.i436 ], [ %.lcssa4862.unr, %.lr.ph.i.i.i.i.i.i.i.i438.prol.loopexit ], [ %i.aeq, %.lr.ph.i.i.i.i.i.i.i.i438 ] ; 2 uses
  %.not.i.i.i.i.i.i440 = icmp ne i64 %.pre56.i.i.i, 0
  %i.aer = mul nuw i64 %i.adq, 24                 ; 4 uses
  %i.aes = icmp ne i64 %i.adp, %i.aer
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i440, i1 %i.aes, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.di, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i

bb.di:                                            ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.aet = icmp eq i64 %i.adp, 0
  br i1 %i.aet, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i: ; preds = %bb.di
  %i.aeu = icmp ule i64 %i.aer, %i.adp
  call void @llvm.assume(i1 %i.aeu)
  %i.aev = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.pre55.i.i.i, i64 noundef %i.adp, i64 noundef 8, i64 noundef range(i64 0, -15) %i.aer) #43, !noalias !9088 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, null
  br i1 %i.aew, label %bb.dj, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i, !prof !1217

bb.dj:                                            ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aer) #46, !noalias !9088
  unreachable

bb.dk:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %.lr.ph.i.i.i433
  %i.aex = phi ptr [ %i.afv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.adf, %.lr.ph.i.i.i433 ]
  %i.aey = phi i64 [ %i.agb, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.adg, %.lr.ph.i.i.i433 ] ; 4 uses
  %i.aez = phi ptr [ %i.afv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.adh, %.lr.ph.i.i.i433 ]
  %i.afa = icmp eq ptr %i.adi, %i.acy
  br i1 %i.afa, label %._crit_edge.i.i.i436, label %.lr.ph.i.i.i433

bb.dl:                                            ; preds = %.lr.ph.i.i.i433
  %.not.i.i.i.i508 = icmp slt i64 %.val3.i.i.i.i435, 0
  br i1 %.not.i.i.i.i508, label %bb.dn, label %bb.dm, !prof !321

bb.dm:                                            ; preds = %bb.dl
  %i.afb = icmp eq i64 %.val3.i.i.i.i435, 0
  br i1 %i.afb, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i: ; preds = %bb.dm
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !9089
  %i.afc = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val3.i.i.i.i435, i64 noundef range(i64 1, 9) 1) #43, !noalias !9089 ; 3 uses
  %i.afd = icmp eq ptr %i.afc, null
  br i1 %i.afd, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i, %bb.dl
  %.sroa.432.0.ph.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i ], [ 0, %bb.dl ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.432.0.ph.i.i.i, i64 %.val3.i.i.i.i435) #46, !noalias !9073
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i: ; preds = %bb.ds, %bb.dm
  %i.afe = phi ptr [ %i.afc, %bb.ds ], [ inttoptr (i64 1 to ptr), %bb.dm ]
  switch i64 %i.adg, label %.lr.ph.i.i.i.i511 [
    i64 0, label %bb.do
    i64 1, label %._crit_edge.i.i.i.i
  ]

.lr.ph.i.i.i.i511:                                ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i, %.lr.ph.i.i.i.i511
  %.sroa.01.017.i.i.i.i = phi i64 [ %i.afl, %.lr.ph.i.i.i.i511 ], [ %i.adg, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ] ; 2 uses
  %.sroa.05.016.i.i.i.i = phi i64 [ %i.afk, %.lr.ph.i.i.i.i511 ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ] ; 2 uses
  %i.aff = lshr i64 %.sroa.01.017.i.i.i.i, 1      ; 2 uses
  %i.afg = add nuw i64 %i.aff, %.sroa.05.016.i.i.i.i ; 3 uses
  %i.afh = icmp ult i64 %i.afg, %i.adg
  call void @llvm.assume(i1 %i.afh)
  %i.afi = getelementptr inbounds nuw [32 x i8], ptr %i.adh, i64 %i.afg
  %.val12.i.i.i.i512 = load double, ptr %i.afi, align 8, !alias.scope !9092, !noalias !9095, !noundef !13
  %i.afj = fcmp ogt double %.val12.i.i.i.i512, %i.adl
  %i.afk = select i1 %i.afj, i64 %.sroa.05.016.i.i.i.i, i64 %i.afg, !unpredictable !13 ; 2 uses
  %i.afl = sub i64 %.sroa.01.017.i.i.i.i, %i.aff  ; 2 uses
  %i.afm = icmp ugt i64 %i.afl, 1
  br i1 %i.afm, label %.lr.ph.i.i.i.i511, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i511, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ], [ %i.afk, %.lr.ph.i.i.i.i511 ] ; 2 uses
  %i.afn = getelementptr inbounds nuw [32 x i8], ptr %i.adh, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val14.i.i.i.i = load double, ptr %i.afn, align 8, !alias.scope !9092, !noalias !9095, !noundef !13
  %i.afo = fcmp ule double %.val14.i.i.i.i, %i.adl
  %i.afp = zext i1 %i.afo to i64
  %i.afq = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.afp ; 2 uses
  %i.afr = icmp ule i64 %i.afq, %i.adg
  call void @llvm.assume(i1 %i.afr)
  br label %bb.do

bb.do:                                            ; preds = %._crit_edge.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.adg, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i ], [ %i.afq, %._crit_edge.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9097)
  %i.afs = icmp ult i64 %i.adg, 288230376151711744
  call void @llvm.assume(i1 %i.afs)
  %i.aft = load i64, ptr %i.ah, align 8, !range !14, !alias.scope !9097, !noalias !9100, !noundef !13
  %i.afu = icmp eq i64 %i.adg, %i.aft
  br i1 %i.afu, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #42, !noalias !9102
  %.pre.i.i.i510 = load ptr, ptr %i.adc, align 8, !alias.scope !9097, !noalias !9100
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.afv = phi ptr [ %.pre.i.i.i510, %bb.dp ], [ %i.adf, %bb.do ] ; 3 uses
  %i.afw = getelementptr inbounds nuw [32 x i8], ptr %i.afv, i64 %.sroa.4.0.i.i.i.i ; 6 uses
  %i.afx = icmp samesign ult i64 %.sroa.4.0.i.i.i.i, %i.adg
  br i1 %i.afx, label %bb.dr, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afw, i64 32
  %i.afz = sub nuw nsw i64 %i.adg, %.sroa.4.0.i.i.i.i
  %i.aga = shl nuw nsw i64 %i.afz, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afy, ptr nonnull align 8 %i.afw, i64 %i.aga, i1 false), !noalias !9103
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.dr, %bb.dq
  store double %i.adl, ptr %i.afw, align 8, !noalias !9104
  %.sroa.4.0..sroa_idx.i.i.i509 = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  store i64 %.val3.i.i.i.i435, ptr %.sroa.4.0..sroa_idx.i.i.i509, align 8, !noalias !9104
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.afw, i64 16
  store ptr %i.afe, ptr %.sroa.527.0..sroa_idx.i.i.i, align 8, !noalias !9104
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.afw, i64 24
  store i64 %.val3.i.i.i.i435, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !9104
  %i.agb = add nuw nsw i64 %i.adg, 1              ; 2 uses
  store i64 %i.agb, ptr %i.add, align 8, !alias.scope !9097, !noalias !9100
  br label %bb.dk

bb.ds:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i33.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afc, ptr nonnull align 1 %.val.i.i.i.i434, i64 %.val3.i.i.i.i435, i1 false), !noalias !9073
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread43.i.i.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i: ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i, %bb.di, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.agc = phi i64 [ %i.adq, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ %i.adq, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i ], [ 0, %bb.di ] ; 4 uses
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %.pre55.i.i.i, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ %i.aev, %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.di ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9062
  %i.agd = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i75.i.i, %.pre55.i.i.i
  br i1 %i.agd, label %bb.dt, label %bb.ee

bb.dt:                                            ; preds = %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i
  %.sroa.04.0.i.i.i78.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i ], [ %.sroa.04.0.i.i.i.i.i, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i ] ; 2 uses
  %i.age = phi i64 [ 0, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.thread.i.i ], [ %i.agc, %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB6_6parserNtB3j_6Parser18did_you_mean_errors_0EEB8_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !9105
  store ptr %.val28.i431, ptr %i.ag, align 8, !alias.scope !9109, !noalias !9113
  %.sroa.4.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.adb, ptr %.sroa.4.0..sroa_idx.i32.i, align 8, !alias.scope !9109, !noalias !9113
  %.sroa.5.0..sroa_idx.i.i503 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store ptr %i.acx, ptr %.sroa.5.0..sroa_idx.i.i503, align 8, !alias.scope !9109, !noalias !9113
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %i.acw, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !9109, !noalias !9113
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %.sroa.10.0.i7.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !9109, !noalias !9113
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %.sroa.4.0.i8.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !9109, !noalias !9113
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9114
  %i.agf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.agg = icmp eq i64 %.val29.i432, 0
  br i1 %i.agg, label %.loopexit.i.i507, label %.lr.ph.i3.i.i

bb.du:                                            ; preds = %.lr.ph.i3.i.i
  %i.agh = icmp eq ptr %i.agj, %i.adb
  br i1 %i.agh, label %.loopexit.i.i507, label %.lr.ph.i3.i.i

.lr.ph.i3.i.i:                                    ; preds = %bb.dt, %bb.du
  %i.agi = phi ptr [ %i.agj, %bb.du ], [ %.val28.i431, %bb.dt ] ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 712 ; 3 uses
  call fastcc void @_RNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB8_6parserNtB3o_6Parser18did_you_mean_errors_0EReINtB2f_7IterMutNtNtNtBa_7builder7command7CommandEE0Ba_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i503, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.agi) #45, !noalias !9121
  %i.agk = load i64, ptr %i.agf, align 8, !range !127, !noalias !9114, !noundef !13 ; 3 uses
  %.not.i.i.i.i.i.i.i504 = icmp eq i64 %i.agk, -1
  br i1 %.not.i.i.i.i.i.i.i504, label %bb.du, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i3.i.i
  store ptr %i.agj, ptr %i.ag, align 8, !noalias !9105
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !9114
  %.sroa.8.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.8.8..sroa_idx.i.i.i.i, align 8, !noalias !9124 ; 2 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !9124 ; 2 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !9124 ; 2 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.0..sroa.8.8..sroa_idx.i.i.i.sroa_idx.i, i64 16, i1 false), !noalias !9124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false), !noalias !9125
  call void @llvm.experimental.noalias.scope.decl(metadata !9126)
  call void @llvm.experimental.noalias.scope.decl(metadata !9129)
  %i.agl = load ptr, ptr %i.af, align 8, !alias.scope !9132, !noalias !9133, !nonnull !13, !noundef !13 ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.agn = load ptr, ptr %i.agm, align 8, !alias.scope !9132, !noalias !9133, !nonnull !13, !noundef !13 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.agp = icmp eq ptr %i.agl, %i.agn
  br i1 %i.agp, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENCINvNtNtNtB1E_6parser8features11suggestions17did_you_mean_flagINtNtB8_3map3MapINtB18_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB2E_6parserNtB4J_6Parser18did_you_mean_errors_0EReB15_E0ENtNtNtBa_6traits8iterator8Iterator10min_by_keyjNCB2x_s_0EB1E_.exit.thread31.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.agq = ptrtoint ptr %i.agn to i64
  %i.agr = ptrtoint ptr %i.agl to i64
  %i.ags = sub nuw i64 %i.agq, %i.agr
  %i.agt = udiv exact i64 %i.ags, 712
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx31.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 2 uses
  %.sroa.01.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.agx = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.agy = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.agz = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  br label %bb.dx

bb.dx:                                            ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i, %bb.dw
  %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.10.0.copyload.i, %bb.dw ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i = phi i64 [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.copyload.i, %bb.dw ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i = phi ptr [ %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.copyload.i, %bb.dw ], [ %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.1.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.619.i.i.i.sroa.0.0.i.i.i.i = phi i64 [ %i.agk, %bb.dw ], [ %.sroa.6.i.i.i.sroa.0.1.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.722.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.dw ], [ %.sroa.7.2.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dw ], [ %i.ahi, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map15filter_map_foldQNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionB2a_EEEINtNtBa_3cmp11KeyAndValuejB27_ENCINvNtNtNtB1h_6parser8features11suggestions17did_you_mean_flagINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterB2a_ENCNvMs0_NtB3T_6parserNtB5E_6Parser18did_you_mean_errors_0EReINtB54_7IterMutB1b_EE0NCINvB4O_8map_foldB27_B3f_B3f_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB27_jNCB3M_s_0E0NvYB3f_NtB3i_3Ord3minE0E0B1h_.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i)
  %i.aha = getelementptr inbounds nuw [712 x i8], ptr %i.agl, i64 %.sroa.01.0.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9138
  call fastcc void @_RNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB8_6parserNtB3o_6Parser18did_you_mean_errors_0EReINtB2f_7IterMutNtNtNtBa_7builder7command7CommandEE0Ba_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.ago, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.aha) #45, !noalias !9143
  %i.ahb = load i64, ptr %i.agu, align 8, !range !127, !noalias !9144, !noundef !13 ; 3 uses
  %.not.i.i.i.i.i.i4.i.i = icmp eq i64 %i.ahb, -1
  br i1 %.not.i.i.i.i.i.i4.i.i, label %bb.ed, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !9144 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9150
  store ptr %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.0.0.i, ptr %i.agy, align 8, !noalias !9124
  store i64 %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0.i, ptr %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.9.0..sroa_idx.i, align 8, !noalias !9124
  store i64 %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, ptr %i.agz, align 8, !noalias !9124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, i64 16, i1 false), !noalias !9124
  store i64 %.sroa.722.0.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx31.i.i.i.i.i.i.i, align 8, !noalias !9155
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %i.agv, align 8, !noalias !9159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.agu, i64 48, i1 false), !noalias !9144
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !9159
  call void @llvm.experimental.noalias.scope.decl(metadata !9161)
  call void @llvm.experimental.noalias.scope.decl(metadata !9164)
  %i.ahc = icmp ult i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.722.0.i.i.i.i.i.i.i
  br i1 %i.ahc, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.i.i.sroa.8.i.i.i.sroa.11.i, i64 16, i1 false), !noalias !9124
  call void @llvm.experimental.noalias.scope.decl(metadata !9166)
  call void @llvm.experimental.noalias.scope.decl(metadata !9169)
  call void @llvm.experimental.noalias.scope.decl(metadata !9172)
  call void @llvm.experimental.noalias.scope.decl(metadata !9175)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.sroa.8.64..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !range !14, !alias.scope !9178, !noalias !9179, !noundef !13 ; 2 uses
  %i.ahd = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.agw, align 8, !alias.scope !9178, !noalias !9179, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !9181
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ea, %bb.dz
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agx, align 8, !range !127, !alias.scope !9182, !noalias !9179, !noundef !13 ; 2 uses
  %i.ahe = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3cmp11KeyAndValuejTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtB4_6option6OptionB14_EEEEECsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBa_6option6OptionBX_EEEINtNtBa_3cmp11KeyAndValuejBU_EB21_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyBU_jNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtB4_3MapINtNtNtBa_5slice4iter4IterBX_ENCNvMs0_NtB3H_6parserNtB5J_6Parser18did_you_mean_errors_0EReINtB5a_7IterMutNtNtNtB3J_7builder7command7CommandEEs_0E0NvYB21_NtB24_3Ord3minE0B3J_.exit.i.i.i.i.i.i.i.i

bb.eb:                                            ; preds = %bb.dy
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !9183 ; 2 uses
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.6.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !9183 ; 2 uses
  %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.9.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !9183 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.sroa.6.i.i.i.sroa.12.0..sroa.6.i.i.i.sroa.6.0..sroa_idx.i.i.i.sroa_idx.i, i64 16, i1 false), !noalias !9183
  %i.ahf = icmp eq i64 %.sroa.619.i.i.i.sroa.0.0.i.i.i.i, 0
  br i1 %i.ahf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, label %bb.ec
end_hunk_8
begin_hunk_9_@_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output13help_template15option_sort_key:bb.a
  unreachable

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i44
  store i8 123, ptr %i.ar, align 1
  store i64 1, ptr %i.a, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ar, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.626.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !13, !noundef !13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.aw = load i64, ptr %i.av, align 8, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12122)
  %.not75 = icmp eq i64 %i.aw, 0
  br i1 %.not75, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit, label %bb.p, !prof !159

bb.p:                                             ; preds = %bb.o
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1, i64 noundef %i.aw, i64 noundef 1, i64 noundef 1) #43
  %i.ax = load i64, ptr %.sroa.626.0..sroa_idx, align 8, !alias.scope !12122, !noundef !13 ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !12122, !nonnull !13, !noundef !13 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull readonly align 1 %i.au, i64 %i.aw, i1 false), !noalias !12122
  %.sroa.011.0.copyload12.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.o, %bb.p
  %.sroa.414.0.copyload16 = phi ptr [ %i.az, %bb.p ], [ %i.ar, %bb.o ]
  %.sroa.011.0.copyload12 = phi i64 [ %.sroa.011.0.copyload12.pre, %bb.p ], [ 1, %bb.o ]
  %i.bb = phi i64 [ %i.ax, %bb.p ], [ 1, %bb.o ]
  %i.bc = add i64 %i.bb, %i.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit41.thread70

bb.q:                                             ; preds = %bb.l, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i39
  %.sroa.450.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i39 ], [ 0, %bb.l ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.450.0.ph, i64 %i.an) #46
  unreachable

bb.r:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i39
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 1 %i.ad, i64 %i.an, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit41.thread70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output13help_template19positional_sort_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(600) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !range !142, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.0.0 = select i1 %i.c, i64 %i.e, i64 0
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output4help10write_help(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.d = load i64, ptr %i.c, align 8, !range !127, !alias.scope !12125, !noundef !13
  %.not.i = icmp eq i64 %i.d, -1
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.val = load ptr, ptr %i.e, align 8, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 528
  %.val5 = load i64, ptr %i.f, align 8, !noundef !13 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12131)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !12134, !noundef !13 ; 5 uses
  %i.i = load i64, ptr %0, align 8, !range !14, !alias.scope !12134, !noundef !13
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %.val5, %i.j
  br i1 %i.k, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %.val5, i64 noundef 1, i64 noundef 1) #43
  %i.l = load i64, ptr %i.g, align 8, !alias.scope !12137, !noundef !13 ; 2 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  br label %bb.c

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %bb.b
  %i.n = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.n)
  %.not.i.i = icmp eq i64 %.val5, 0
  br i1 %.not.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i
  %i.o = phi i64 [ %i.l, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.h, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !12137, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %.val, i64 %.val5, i1 false), !noalias !12137
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %bb.c
  %i.s = phi i64 [ %i.o, %bb.c ], [ %i.h, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.t = add i64 %i.s, %.val5
  store i64 %i.t, ptr %i.g, align 8, !alias.scope !12137
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.v = load i64, ptr %i.u, align 8, !range !127, !alias.scope !12138, !noundef !13
  %.not.i8 = icmp eq i64 %i.v, -1
  br i1 %.not.i8, label %bb.al, label %bb.ak

bb.e:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB2_8AutoHelp10write_help.exit, %bb.ak, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12141)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !12141, !nonnull !13, !noundef !13 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !12141, !noundef !13 ; 8 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.backedge, %bb.e
  %i.aa = phi i64 [ 0, %bb.e ], [ %i.ao, %.lr.ph.split.i.i.i.backedge ] ; 5 uses
  %i.ab = sub nuw i64 %i.z, %i.aa                 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ab, 16
  br i1 %i.ad, label %.preheader.i.i.i.i, label %bb.f

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr16trim_start_lines.exit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ae = tail call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.ab) #43, !noalias !12144 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  %i.ah = trunc nuw i64 %i.af to i1
  br i1 %i.ah, label %.loopexit.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr16trim_start_lines.exit

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.g
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.al, %bb.g ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.04.011.i.i.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !12148, !noalias !12144, !noundef !13
  %i.ak = icmp eq i8 %i.aj, 10
  br i1 %i.ak, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.al, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr16trim_start_lines.exit, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.ag, %bb.f ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.ab
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add i64 %i.aa, 1
  %i.ao = add i64 %i.an, %.sroa.5.0.i.i.i.i       ; 2 uses
  %.not12.i.i.i = icmp ugt i64 %i.ao, %i.z        ; 2 uses
  %i.ap = add i64 %.sroa.5.0.i.i.i.i, %i.aa       ; 3 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.ap, %i.z
  br i1 %or.cond.i.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i.i
  br i1 %.not12.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr16trim_start_lines.exit, label %.lr.ph.split.i.i.i.backedge

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ap
  %lhsc.i.i = load i8, ptr %i.aq, align 1, !alias.scope !12153, !noalias !12141
  %i.ar = icmp eq i8 %lhsc.i.i, 10                ; 2 uses
  %brmerge.i.i = or i1 %.not12.i.i.i, %i.ar
  br i1 %brmerge.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findcECsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.split.i.i.i.backedge

.lr.ph.split.i.i.i.backedge:                      ; preds = %bb.i, %bb.h
  br label %.lr.ph.split.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core3stre4findcECsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.i
  br i1 %i.ar, label %bb.j, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr16trim_start_lines.exit

bb.j:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core3stre4findcECsfu0rQaTkGUu_12clap_builder.exit.i
  %i.as = add nuw i64 %i.ap, 1                    ; 6 uses
  %.not.i.i10 = icmp ult i64 %i.as, %i.z
  br i1 %.not.i.i10, label %bb.k, label %.split3.i.i

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !12154, !noalias !12157, !noundef !13
  %i.av = icmp sgt i8 %i.au, -65
  br i1 %i.av, label %.split3.i.i, label %bb.af

.split3.i.i:                                      ; preds = %bb.k, %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.as ; 7 uses
  %i.ax = sub i64 %i.z, %i.as                     ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12159)
  br label %.lr.ph.i.i.i7.i

.lr.ph.i.i.i7.i:                                  ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %.split3.i.i
  %i.ay = phi i64 [ %i.cn, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ 0, %.split3.i.i ] ; 2 uses
  %i.az = phi ptr [ %i.cj, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.x, %.split3.i.i ] ; 6 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 3 uses
  %i.bc = load i8, ptr %i.az, align 1, !alias.scope !12159, !noalias !12162, !noundef !13 ; 5 uses
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %bb.l, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i7.i
  %i.be = and i8 %i.bc, 31
  %i.bf = zext nneg i8 %i.be to i32               ; 3 uses
  %i.bg = icmp ne ptr %i.bb, %i.aw
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 3 uses
  %i.bi = load i8, ptr %i.bb, align 1, !alias.scope !12159, !noalias !12162, !noundef !13
  %i.bj = shl nuw nsw i32 %i.bf, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32               ; 2 uses
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %i.bn = icmp samesign ugt i8 %i.bc, -33
  br i1 %i.bn, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.i.i.i.i, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i7.i
  %i.bo = zext nneg i8 %i.bc to i32
  br label %bb.m

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.i.i.i.i
  %i.bp = icmp ne ptr %i.bh, %i.aw
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 3 ; 3 uses
  %i.br = load i8, ptr %i.bh, align 1, !alias.scope !12159, !noalias !12162, !noundef !13
  %i.bs = shl nuw nsw i32 %i.bl, 6
  %i.bt = and i8 %i.br, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu            ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bf, 12
  %i.bx = or disjoint i32 %i.bv, %i.bw
  %i.by = icmp samesign ugt i8 %i.bc, -17
  br i1 %i.by, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.i.i.i.i, label %bb.m

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.i.i.i.i
  %i.bz = icmp ne ptr %i.bq, %i.aw
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.cb = load i8, ptr %i.bq, align 1, !alias.scope !12159, !noalias !12162, !noundef !13
  %i.cc = shl nuw nsw i32 %i.bf, 18
  %i.cd = and i32 %i.cc, 1835008
  %i.ce = shl nuw nsw i32 %i.bv, 6
  %i.cf = and i8 %i.cb, 63
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %i.ci = or disjoint i32 %i.ch, %i.cd
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.i.i.i.i, %bb.l, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.i.i.i.i
  %i.cj = phi ptr [ %i.bq, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.i.i.i.i ], [ %i.ca, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.i.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.i.i.i.i ], [ %i.bb, %bb.l ] ; 8 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.bx, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.i.i.i.i ], [ %i.ci, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.i.i.i.i ], [ %i.bm, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.i.i.i.i ], [ %i.bo, %bb.l ] ; 8 uses
  %i.ck = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.cl, %i.ba
  %i.cn = add i64 %i.cm, %i.ay                    ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.n [
    i32 32, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
    i32 13, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
    i32 12, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
    i32 11, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
    i32 10, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
    i32 9, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  ]

bb.n:                                             ; preds = %bb.m
  %i.co = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 133
  br i1 %i.co, label %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfu0rQaTkGUu_12clap_builder.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 8
  switch i32 %i.cp, label %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfu0rQaTkGUu_12clap_builder.exit.i.i [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cq = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5760
  %i.cr = zext i1 %i.cq to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cs = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12288
  %i.ct = zext i1 %i.cs to i8
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.o
  %i.cu = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !12176, !noundef !13
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.cy = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !noalias !12176, !noundef !13
  %i.dc = lshr i8 %i.db, 1
  br label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ct, %bb.q ], [ %i.cx, %bb.r ], [ %i.cr, %bb.p ], [ %i.dc, %bb.s ]
  %i.dd = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.dd, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfu0rQaTkGUu_12clap_builder.exit.i.i

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.de = icmp eq ptr %i.cj, %i.aw
  br i1 %i.de, label %_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsfu0rQaTkGUu_12clap_builder.exit.thread.i, label %.lr.ph.i.i.i7.i

_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, %bb.o, %bb.n
  %i.df = icmp eq ptr %i.cj, %i.aw
  br i1 %i.df, label %_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i4.i.i

.lr.ph.i.i4.i.i:                                  ; preds = %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfu0rQaTkGUu_12clap_builder.exit.i.i, %bb.ad
  %i.dg = phi ptr [ %i.eq, %bb.ad ], [ %i.aw, %_RNvXso_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 5 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -1 ; 3 uses
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !12159, !noalias !12177, !noundef !13 ; 3 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %bb.t, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit17.i.i.i.i.i.i.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit17.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i4.i.i
  %i.dk = icmp ne ptr %i.cj, %i.dh
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds i8, ptr %i.dg, i64 -2 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !12159, !noalias !12177, !noundef !13 ; 3 uses
  %i.dn = and i8 %i.dm, 31
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = icmp slt i8 %i.dm, -64
  br i1 %i.dp, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit19.i.i.i.i.i.i.i, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i4.i.i
  %i.dq = zext nneg i8 %i.di to i32
  br label %bb.w

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit19.i.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit17.i.i.i.i.i.i.i
  %i.dr = icmp ne ptr %i.cj, %i.dl
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds i8, ptr %i.dg, i64 -3 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !12159, !noalias !12177, !noundef !13 ; 3 uses
  %i.du = and i8 %i.dt, 15
  %i.dv = zext nneg i8 %i.du to i32
  %i.dw = icmp slt i8 %i.dt, -64
  br i1 %i.dw, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit21.i.i.i.i.i.i.i, label %bb.v

bb.u:                                             ; preds = %bb.v, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit17.i.i.i.i.i.i.i
  %i.dx = phi ptr [ %i.el, %bb.v ], [ %i.dl, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit17.i.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.v ], [ %i.do, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit17.i.i.i.i.i.i.i ]
  %i.dy = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i.i, 6
  %i.dz = and i8 %i.di, 63
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = or disjoint i32 %i.dy, %i.ea
  br label %bb.w

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit21.i.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit19.i.i.i.i.i.i.i
  %i.ec = icmp ne ptr %i.cj, %i.ds
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds i8, ptr %i.dg, i64 -4 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !12159, !noalias !12177, !noundef !13
  %i.ef = and i8 %i.ee, 7
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 6
  %i.ei = and i8 %i.dt, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eh, %i.ej
  br label %bb.v

bb.v:                                             ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit21.i.i.i.i.i.i.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit19.i.i.i.i.i.i.i
  %i.el = phi ptr [ %i.ed, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit21.i.i.i.i.i.i.i ], [ %i.ds, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit19.i.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i.i = phi i32 [ %i.ek, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit21.i.i.i.i.i.i.i ], [ %i.dv, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit19.i.i.i.i.i.i.i ]
  %i.em = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i.i, 6
  %i.en = and i8 %i.dm, 63
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = or disjoint i32 %i.em, %i.eo
  br label %bb.u

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.eq = phi ptr [ %i.dh, %bb.t ], [ %i.dx, %bb.u ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i.i = phi i32 [ %i.dq, %bb.t ], [ %i.eb, %bb.u ] ; 8 uses
  %i.er = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.er)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, label %bb.x [
    i32 32, label %bb.ad
    i32 13, label %bb.ad
    i32 12, label %bb.ad
    i32 11, label %bb.ad
    i32 10, label %bb.ad
    i32 9, label %bb.ad
end_hunk_9
