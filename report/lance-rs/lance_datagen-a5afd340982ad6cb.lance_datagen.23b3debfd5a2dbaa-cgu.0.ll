Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datagen-a5afd340982ad6cb.lance_datagen.23b3debfd5a2dbaa-cgu.0?download=true
inline.NumInlined: 5943
inline.NumDeleted: 2255
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs342JT7D9NXi_13lance_datagen:bb.a
.thread:                                          ; preds = %bb.r, %bb.d, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.thread
  %i.p = phi ptr [ %i.h, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.thread ], [ %i.l, %bb.d ], [ %i.l, %bb.r ]
  store i64 %2, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.loopexit52:                                      ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 136
  %i.r = add nuw nsw i64 %.sroa.7.066, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3633
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 48
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %.noexc unwind label %.loopexit52, !inline_history !3616

.noexc:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 72
  %i.u = load <2 x i64>, ptr %i.t, align 8, !alias.scope !3632, !noalias !3634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3633
  %i.v = getelementptr i8, ptr %.sroa.016.067, i64 8
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !3632, !noalias !3634, !nonnull !10, !noundef !10 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.016.067, i64 16
  %.val13.i = load i64, ptr %i.w, align 8, !alias.scope !3632, !noalias !3634, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3636), !noalias !3633
  %i.x = icmp eq i64 %.val13.i, 0
  br i1 %i.x, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.y = mul nuw nsw i64 %.val13.i, 24            ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3637
  %i.z = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.y, i64 noundef range(i64 1, 9) 8) #36, !noalias !3637 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %.lr.ph.preheader.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.y) #37
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %bb.g
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.val13.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.preheader.i.i
  %.sroa.012.034.i.i = phi ptr [ %i.ai, %bb.j ], [ %.val.i, %.lr.ph.preheader.i.i ] ; 5 uses
  %.sroa.7.033.i.i = phi i64 [ %i.ah, %bb.j ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.032.i.i = phi i64 [ %i.ac, %bb.j ], [ %.val13.i, %.lr.ph.preheader.i.i ]
  %i.ac = add nsw i64 %.sroa.10.032.i.i, -1       ; 2 uses
  %i.ad = icmp eq ptr %.sroa.012.034.i.i, %i.ab
  br i1 %i.ad, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3638), !noalias !3633
  %i.ae = load ptr, ptr %.sroa.012.034.i.i, align 8, !alias.scope !3639, !noalias !3640, !nonnull !10, !noundef !10 ; 2 uses
  %i.af = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8, !noalias !3641
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap(), !noalias !3633
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ah = add nuw nsw i64 %.sroa.7.033.i.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3639, !noalias !3640, !noundef !10
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !3639, !noalias !3640, !noundef !10
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.sroa.7.033.i.i ; 3 uses
  store ptr %i.ae, ptr %i.an, align 8, !noalias !3642
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ak, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !3642
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.am, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !3642
  %i.ao = icmp eq i64 %i.ac, 0
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.m, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.ap, %bb.l ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #38
          to label %bb.t unwind label %bb.q, !noalias !3634, !inline_history !3616

bb.l:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit:                                        ; preds = %bb.j, %.lr.ph.i.i, %.noexc
  %.sroa.5.0.i = phi ptr [ inttoptr (i64 8 to ptr), %.noexc ], [ %i.z, %.lr.ph.i.i ], [ %i.z, %bb.j ]
  store i64 %.val13.i, ptr %i.b, align 8, !alias.scope !3635, !noalias !3643
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i14, align 8, !alias.scope !3635, !noalias !3643
  store i64 %.val13.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3635, !noalias !3643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3633
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !3644, !noalias !3645, !nonnull !10, !noundef !10
  %i.at = load i64, ptr %i.aq, align 8, !alias.scope !3644, !noalias !3645, !noundef !10
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.as, i64 noundef %i.at)
          to label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit unwind label %bb.m, !inline_history !3630

bb.m:                                             ; preds = %.loopexit
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(24) %i.b) #38
          to label %bb.k unwind label %bb.q, !noalias !3634, !inline_history !3616

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit: ; preds = %.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !3632, !noalias !3634, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8, !noalias !3634
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !3632, !noalias !3634, !noundef !10
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 104
  %i.bc = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !3632, !noalias !3634
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.016.067, i64 120
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !3632, !noalias !3634
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.k
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !3634, !inline_history !3616
  unreachable

bb.r:                                             ; preds = %bb.o, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit
  %.sroa.5.sroa.0.sroa.0.sroa.0.0.i = phi ptr [ %i.ba, %bb.o ], [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit ]
  %i.bg = phi <2 x i64> [ %i.bc, %bb.o ], [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit ]
  %i.bh = phi <2 x i64> [ %i.be, %bb.o ], [ undef, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs342JT7D9NXi_13lance_datagen.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3633
  %i.bi = getelementptr inbounds nuw [136 x i8], ptr %i.i, i64 %.sroa.7.066 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.017, i64 72, i1 false)
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store <2 x i64> %i.u, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  store ptr %i.aw, ptr %.sroa.641.0..sroa_idx, align 8
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i, ptr %.sroa.742.0..sroa_idx, align 8
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  store <2 x i64> %i.bg, ptr %.sroa.843.0..sroa_idx, align 8
  %.sroa.1045.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  store <2 x i64> %i.bh, ptr %.sroa.1045.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017)
  %i.bj = icmp eq i64 %i.n, 0
  br i1 %i.bj, label %.thread, label %bb.d

bb.s:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.t:                                             ; preds = %.loopexit52, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.k ], [ %lpad.loopexit, %.loopexit52 ]
  store i64 %.sroa.7.066, ptr %i.l, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYNtNtCs4ZS9Ze0J1Ll_12rand_xoshiro18xoshiro256plusplus18Xoshiro256PlusPlusNtNtCs4Jn2LUi8st0_4rand3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEECs342JT7D9NXi_13lance_datagen(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 4294967295
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i64 %1 to i32
  %i.d = load i64, ptr %0, align 8, !alias.scope !3676, !noalias !3677, !noundef !10 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3676, !noalias !3677, !noundef !10 ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 23)
  %i.i = add i64 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3676, !noalias !3677, !noundef !10 ; 3 uses
  %i.l = shl i64 %i.k, 17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !3676, !noalias !3677, !noundef !10
  %i.o = xor i64 %i.n, %i.d                       ; 2 uses
  %i.p = xor i64 %i.k, %i.f                       ; 3 uses
  %i.q = xor i64 %i.o, %i.k                       ; 4 uses
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !3676, !noalias !3677
  %i.r = xor i64 %i.p, %i.d                       ; 5 uses
  store i64 %i.r, ptr %0, align 8, !alias.scope !3676, !noalias !3677
  %i.s = xor i64 %i.o, %i.l                       ; 2 uses
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !3676, !noalias !3677
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 45) ; 3 uses
  store i64 %i.t, ptr %i.e, align 8, !alias.scope !3676, !noalias !3677
  %i.u = lshr i64 %i.i, 32
  %i.v = mul nuw i64 %i.u, %1                     ; 2 uses
  %i.w = lshr i64 %i.v, 32                        ; 2 uses
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  %i.y = sub i32 0, %i.c
  %i.z = icmp ult i32 %i.y, %i.x
  br i1 %i.z, label %bb.d, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCs342JT7D9NXi_13lance_datagen.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.t, %i.r                      ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 23)
  %i.ac = add i64 %i.ab, %i.r
  %i.ad = shl i64 %i.q, 17
  %i.ae = xor i64 %i.s, %i.r                      ; 2 uses
  %i.af = xor i64 %i.q, %i.t                      ; 3 uses
  %i.ag = xor i64 %i.ae, %i.q
  store i64 %i.ag, ptr %i.j, align 8, !alias.scope !3678, !noalias !3677
  %i.ah = xor i64 %i.af, %i.r
  store i64 %i.ah, ptr %0, align 8, !alias.scope !3678, !noalias !3677
  %i.ai = xor i64 %i.ae, %i.ad
  store i64 %i.ai, ptr %i.m, align 8, !alias.scope !3678, !noalias !3677
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 45)
  store i64 %i.aj, ptr %i.e, align 8, !alias.scope !3678, !noalias !3677
  %i.ak = lshr i64 %i.ac, 32
  %3 = mul nuw i64 %i.ak, %1
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  %i.al = xor i32 %i.x, -1
  %.not11.i.i.i.i = icmp ult i32 %i.al, %5
  %i.am = zext i1 %.not11.i.i.i.i to i64
  %i.an = add nuw nsw i64 %i.w, %i.am
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCs342JT7D9NXi_13lance_datagen.exit

bb.e:                                             ; preds = %bb.b
  %i.ao = load i64, ptr %0, align 8, !alias.scope !3679, !noalias !3680, !noundef !10 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !3679, !noalias !3680, !noundef !10 ; 2 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 23)
  %i.at = add i64 %i.as, %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !3679, !noalias !3680, !noundef !10 ; 3 uses
  %i.aw = shl i64 %i.av, 17
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !3679, !noalias !3680, !noundef !10
  %i.az = xor i64 %i.ay, %i.ao                    ; 2 uses
  %i.ba = xor i64 %i.av, %i.aq                    ; 3 uses
  %i.bb = xor i64 %i.az, %i.av                    ; 4 uses
  store i64 %i.bb, ptr %i.au, align 8, !alias.scope !3679, !noalias !3680
  %i.bc = xor i64 %i.ba, %i.ao                    ; 5 uses
  store i64 %i.bc, ptr %0, align 8, !alias.scope !3679, !noalias !3680
  %i.bd = xor i64 %i.az, %i.aw                    ; 2 uses
  store i64 %i.bd, ptr %i.ax, align 8, !alias.scope !3679, !noalias !3680
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 45) ; 3 uses
  store i64 %i.be, ptr %i.ap, align 8, !alias.scope !3679, !noalias !3680
  %i.bf = zext i64 %i.at to i128
  %i.bg = zext i64 %1 to i128                     ; 2 uses
  %i.bh = mul nuw i128 %i.bf, %i.bg               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = trunc nuw i128 %i.bi to i64             ; 2 uses
  %i.bk = trunc i128 %i.bh to i64                 ; 2 uses
  %i.bl = sub i64 0, %1
  %i.bm = icmp ult i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.f, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCs342JT7D9NXi_13lance_datagen.exit

bb.f:                                             ; preds = %bb.e
  %i.bn = add i64 %i.be, %i.bc                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 23)
  %i.bp = add i64 %i.bo, %i.bc
  %i.bq = shl i64 %i.bb, 17
  %i.br = xor i64 %i.bd, %i.bc                    ; 2 uses
  %i.bs = xor i64 %i.bb, %i.be                    ; 3 uses
  %i.bt = xor i64 %i.br, %i.bb
  store i64 %i.bt, ptr %i.au, align 8, !alias.scope !3681, !noalias !3680
  %i.bu = xor i64 %i.bs, %i.bc
  store i64 %i.bu, ptr %0, align 8, !alias.scope !3681, !noalias !3680
  %i.bv = xor i64 %i.br, %i.bq
  store i64 %i.bv, ptr %i.ax, align 8, !alias.scope !3681, !noalias !3680
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 45)
  store i64 %i.bw, ptr %i.ap, align 8, !alias.scope !3681, !noalias !3680
  %6 = zext i64 %i.bp to i128
  %7 = mul nuw i128 %6, %i.bg
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64
  %i.bx = xor i64 %i.bk, -1
  %.not7.i.i.i.i = icmp ult i64 %i.bx, %9
  %i.by = zext i1 %.not7.i.i.i.i to i64
  %i.bz = add nuw i64 %i.by, %i.bj
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCs342JT7D9NXi_13lance_datagen.exit

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.d, %bb.c, %bb.f, %bb.e
  %.sroa.64.0 = phi i64 [ %i.w, %bb.c ], [ %i.an, %bb.d ], [ %i.bz, %bb.f ], [ %i.bj, %bb.e ]
  ret i64 %.sroa.64.0

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @89, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs40k4W9msRzi_5alloc3vec3VecReEE5force0E0Cs342JT7D9NXi_13lance_datagen(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !18, !noundef !10 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !18, !noundef !10 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !15, !noundef !10
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsgczF5crJ4sT_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs40k4W9msRzi_5alloc3vec3VecReEE5force0Cs342JT7D9NXi_13lance_datagen.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std4sync9lazy_lock14panic_poisoned() #37
  unreachable

_RNCNvMNtNtCsgczF5crJ4sT_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs40k4W9msRzi_5alloc3vec3VecReEE5force0Cs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !inline_history !3682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Cs342JT7D9NXi_13lance_datagen(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [12 x i8], align 4                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [12 x i8], align 4                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 4               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [8 x i8], align 4                ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [4 x i8], align 4                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aj = load ptr, ptr %.0.val, align 8, !nonnull !10, !align !18, !noundef !10 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !24, !noundef !10
  switch i8 %i.ak, label %bb.b [
    i8 13, label %bb.h
    i8 14, label %bb.j
    i8 15, label %bb.j
    i8 16, label %bb.o
    i8 17, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %0, ptr %i.s, align 8
  %i.al = lshr i64 %.40.val, 2                    ; 2 uses
  %i.am = icmp ult i64 %0, %i.al
  br i1 %i.am, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10Date32TypeE5valueCs342JT7D9NXi_13lance_datagen.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.al, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.s, ptr %i.q, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.an, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @396, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #37
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10Date32TypeE5valueCs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.32.val, i64 %0
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i32 %i.ap, ptr %i.t, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !alias.scope !3706, !noalias !3707, !noundef !10 ; 2 uses
  %i.as = and i32 %i.ar, 33554432
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10Date32TypeE5valueCs342JT7D9NXi_13lance_datagen.exit
  %i.au = and i32 %i.ar, 67108864
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10Date32TypeE5valueCs342JT7D9NXi_13lance_datagen.exit
  %i.aw = call noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.f:                                             ; preds = %bb.d
  %i.ax = call noundef zeroext i1 @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.g:                                             ; preds = %bb.d
  %i.ay = call noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.ax, %bb.f ], [ %i.ay, %bb.g ], [ %i.aw, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.as

bb.h:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.az = getelementptr i8, ptr %.8.val, i64 32
  %.val182 = load ptr, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %.8.val, i64 40
  %.val183 = load i64, ptr %i.ba, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %0, ptr %i.p, align 8
  %i.bb = lshr i64 %.val183, 2                    ; 2 uses
  %i.bc = icmp ult i64 %0, %i.bb
  br i1 %i.bc, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10Date32TypeE5valueCs342JT7D9NXi_13lance_datagen.exit188, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %i.bb, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i186, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.bd, align 8
  %.sroa.46.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i187, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @396, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #37
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10Date32TypeE5valueCs342JT7D9NXi_13lance_datagen.exit188: ; preds = %bb.h
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val182, i64 %0
  %i.bf = load i32, ptr %i.be, align 4, !noundef !10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bg = sext i32 %i.bf to i64                   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noundef !10 ; 2 uses
  %.not173 = icmp eq ptr %i.bi, null
  br i1 %.not173, label %bb.r, label %bb.q

bb.j:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.bj = getelementptr i8, ptr %.8.val, i64 32
  %.val180 = load ptr, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %.8.val, i64 40
  %.val181 = load i64, ptr %i.bk, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %0, ptr %i.m, align 8
  %i.bl = lshr i64 %.val181, 2                    ; 2 uses
  %i.bm = icmp ult i64 %0, %i.bl
  br i1 %i.bm, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10Date32TypeE5valueCs342JT7D9NXi_13lance_datagen.exit191, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@_RNvXsv_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_32BinaryPrefixPlusCounterGeneratorNtB5_14ArrayGenerator8generate:bb.a
.noexc47.i:                                       ; preds = %bb.gh
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i103: ; preds = %.noexc46.i107, %bb.gd
  %i.uy = phi i64 [ %i.uo, %bb.gd ], [ %.pre.i.i.i.i108, %.noexc46.i107 ]
  %i.uz = load ptr, ptr %i.oc, align 8, !alias.scope !17455, !noalias !17451, !nonnull !10, !noundef !10
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.uy
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.va, i8 0, i64 %i.uq, i1 false), !noalias !17451
  store i64 %.sroa.0.0.i.i.i.i29, ptr %i.oa, align 8, !alias.scope !17455, !noalias !17451
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i30

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i30: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i103, %bb.gc
  store i64 %i.uk, ptr %i.nz, align 8, !alias.scope !17455, !noalias !17451
  %i.vb = load ptr, ptr %i.oc, align 8, !alias.scope !17454, !noalias !17451, !nonnull !10, !noundef !10
  %i.vc = trunc i64 %i.uj to i8
  %i.vd = and i8 %i.vc, 7
  %i.ve = shl nuw i8 1, %i.vd
  %i.vf = lshr i64 %i.uj, 3
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.vf ; 2 uses
  %i.vh = load i8, ptr %i.vg, align 1, !noalias !17451, !noundef !10
  %i.vi = or i8 %i.vh, %i.ve
  store i8 %i.vi, ptr %i.vg, align 1, !noalias !17451
  %.pre.i43.i31 = load i64, ptr %.sroa.5.0..sroa_idx.i.i9, align 8, !alias.scope !17446, !noalias !17451
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i32

bb.gi:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCs342JT7D9NXi_13lance_datagen.exit.i.i26
  %i.vj = load i64, ptr %.sroa.45.0..sroa_idx.i.i10, align 8, !alias.scope !17454, !noalias !17451, !noundef !10
  %i.vk = add i64 %i.vj, 1
  store i64 %i.vk, ptr %.sroa.45.0..sroa_idx.i.i10, align 8, !alias.scope !17454, !noalias !17451
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i32

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i32: ; preds = %bb.gi, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i30
  %i.vl = phi i64 [ %.pre.i43.i31, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i30 ], [ %i.uh, %bb.gi ] ; 2 uses
  %i.vm = icmp sgt i64 %i.vl, -1
  call void @llvm.assume(i1 %i.vm)
  %i.vn = load i64, ptr %i.od, align 8, !alias.scope !17457, !noalias !17451, !noundef !10 ; 3 uses
  %i.vo = load i64, ptr %i.mr, align 8, !range !12, !alias.scope !17457, !noalias !17451, !noundef !10
  %i.vp = icmp eq i64 %i.vn, %i.vo
  br i1 %i.vp, label %bb.gj, label %_RINvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB3_18GenericByteBuilderINtNtB7_5types17GenericBinaryTypexEE12append_valueRINtNtCs40k4W9msRzi_5alloc3vec3VechEECs342JT7D9NXi_13lance_datagen.exit.i

bb.gj:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i32
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs56ggtDZRYpd_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mr)
          to label %_RINvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB3_18GenericByteBuilderINtNtB7_5types17GenericBinaryTypexEE12append_valueRINtNtCs40k4W9msRzi_5alloc3vec3VechEECs342JT7D9NXi_13lance_datagen.exit.i unwind label %.loopexit.i101, !noalias !17383

_RINvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB3_18GenericByteBuilderINtNtB7_5types17GenericBinaryTypexEE12append_valueRINtNtCs40k4W9msRzi_5alloc3vec3VechEECs342JT7D9NXi_13lance_datagen.exit.i: ; preds = %bb.gj, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i32
  %i.vq = load ptr, ptr %i.oe, align 8, !alias.scope !17457, !noalias !17451, !nonnull !10, !noundef !10
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %i.vn
  store i64 %i.vl, ptr %i.vr, align 8, !noalias !17451
  %i.vs = add i64 %i.vn, 1
  store i64 %i.vs, ptr %i.od, align 8, !alias.scope !17457, !noalias !17451
  %exitcond.not.i33 = icmp eq i64 %i.ru, %2
  br i1 %exitcond.not.i33, label %._crit_edge.i34, label %bb.fi

bb.gk:                                            ; preds = %bb.dm
  %i.vt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !17383
  unreachable

bb.gl:                                            ; preds = %bb.do
  unreachable

_RINvMsu_NtCs342JT7D9NXi_13lance_datagen9generatorNtB6_32BinaryPrefixPlusCounterGenerator15generate_valuesxEB8_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECs342JT7D9NXi_13lance_datagen.exit5.i.i, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !17383
  br label %bb.gm

bb.gm:                                            ; preds = %_RINvMsu_NtCs342JT7D9NXi_13lance_datagen9generatorNtB6_32BinaryPrefixPlusCounterGenerator15generate_valuesxEB8_.exit, %_RINvMsu_NtCs342JT7D9NXi_13lance_datagen9generatorNtB6_32BinaryPrefixPlusCounterGenerator15generate_valueslEB8_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsv_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_32BinaryPrefixPlusCounterGeneratorNtB5_14ArrayGenerator9data_type(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsw_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_23RandomSentenceGeneratorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @883, i64 noundef 23)
  %i.e = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @884, i64 noundef 9, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @803)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @885, i64 noundef 9, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs342JT7D9NXi_13lance_datagen9generator14SENTENCE_WORDS, i64 24) acquire, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc3vec3VecReEE5force0ECs342JT7D9NXi_13lance_datagen.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs342JT7D9NXi_13lance_datagen9generator14SENTENCE_WORDS, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs342JT7D9NXi_13lance_datagen9generator14SENTENCE_WORDS, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc3vec3VecReEE5force0ECs342JT7D9NXi_13lance_datagen.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs40k4W9msRzi_5alloc3vec3VecReEE5force0ECs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs342JT7D9NXi_13lance_datagen9generator14SENTENCE_WORDS, i64 16), align 8, !noundef !10 ; 2 uses
  store i64 %i.j, ptr %i.c, align 8
  %i.k = icmp ult i64 %i.j, 576460752303423488
  call void @llvm.assume(i1 %i.k)
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 9, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @803)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @526, i64 noundef 8, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522)
  %i.o = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsy_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_23RandomSentenceGeneratorNtB5_14ArrayGenerator18element_size_bytes(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !10
  %i.d = add i64 %i.c, %i.a
  %i.e = lshr i64 %i.d, 1
  %i.f = mul i64 %i.e, 6
  %i.g = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.f, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsy_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_23RandomSentenceGeneratorNtB5_14ArrayGenerator8generate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [136 x i8], align 8               ; 6 uses
  %i.f = alloca [136 x i8], align 8               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [120 x i8], align 8               ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [120 x i8], align 8               ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = mul i64 %2, 24                           ; 3 uses
  %or.cond.i = icmp ugt i64 %2, 384307168202282325
  br i1 %or.cond.i, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !17556
  %i.n = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !17556 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.n to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.456.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.456.0.ph, i64 %i.l) #37
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.d, %bb.b
  %.sroa.10.0 = phi i64 [ %i.p, %bb.d ], [ 8, %bb.b ]
  %.sroa.456.0 = phi i64 [ %2, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.q = inttoptr i64 %.sroa.10.0 to ptr
  %i.r = icmp samesign ule i64 %2, %.sroa.456.0
  tail call void @llvm.assume(i1 %i.r)
  store i64 %.sroa.456.0, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8
  %.not148 = icmp eq i64 %2, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0..8.val.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ab = load i64, ptr %1, align 8, !noundef !10 ; 5 uses
  %i.ac = load i64, ptr %i.u, align 8, !noundef !10 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.ab, %i.ac
  %i.ad = icmp ugt i64 %i.ac, 4294967295
  %i.ae = trunc i64 %i.ab to i32                  ; 2 uses
  %i.af = trunc nuw i64 %i.ac to i32              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.ae, %i.af
  %i.ag = sub nuw i32 %i.af, %i.ae                ; 2 uses
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = zext i32 %i.ah to i64                   ; 2 uses
  %i.ak = xor i32 %i.ag, -1
  %i.al = sub nuw i64 %i.ac, %i.ab                ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = zext i64 %i.am to i128                  ; 2 uses
  %i.ap = xor i64 %i.al, -1
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.y, align 8 ; 5 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %.sroa.4.0..8.val.sroa_idx.i.i.i.i.i.i.i.i, align 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.aq = fneg double %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.ar = fcmp une double %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 1.000000e+00
  %i.as = fsub double 1.000000e+00, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br label %bb.f

._crit_edge:                                      ; preds = %bb.bc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load i8, ptr %i.at, align 8, !range !15, !noundef !10
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.t, label %bb.s

bb.f:                                             ; preds = %.lr.ph, %bb.bc
  %.sroa.06.0147 = phi i64 [ 0, %.lr.ph ], [ %i.aw, %bb.bc ]
  %i.aw = add nuw i64 %.sroa.06.0147, 1           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17557)
  br i1 %.not.i.i, label %bb.r, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  br i1 %i.ad, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %3, align 8, !alias.scope !17558, !noalias !17559, !noundef !10 ; 4 uses
  %i.ay = load i64, ptr %i.v, align 8, !alias.scope !17558, !noalias !17559, !noundef !10 ; 2 uses
  %i.az = add i64 %i.ay, %i.ax                    ; 2 uses
  %i.ba = call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 23)
  %i.bb = add i64 %i.ba, %i.ax
  %i.bc = load i64, ptr %i.w, align 8, !alias.scope !17558, !noalias !17559, !noundef !10 ; 3 uses
  %i.bd = shl i64 %i.bc, 17
  %i.be = load i64, ptr %i.x, align 8, !alias.scope !17558, !noalias !17559, !noundef !10
  %i.bf = xor i64 %i.be, %i.ax                    ; 2 uses
  %i.bg = xor i64 %i.bc, %i.ay                    ; 3 uses
  %i.bh = xor i64 %i.bf, %i.bc                    ; 6 uses
  store i64 %i.bh, ptr %i.w, align 8, !alias.scope !17558, !noalias !17559
  %i.bi = xor i64 %i.bg, %i.ax                    ; 7 uses
  store i64 %i.bi, ptr %3, align 8, !alias.scope !17558, !noalias !17559
  %i.bj = xor i64 %i.bf, %i.bd                    ; 4 uses
  store i64 %i.bj, ptr %i.x, align 8, !alias.scope !17558, !noalias !17559
  %i.bk = call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 45) ; 5 uses
  store i64 %i.bk, ptr %i.v, align 8, !alias.scope !17558, !noalias !17559
  %i.bl = lshr i64 %i.bb, 32                      ; 2 uses
  br i1 %i.ai, label %_RINvYNtNtCs4ZS9Ze0J1Ll_12rand_xoshiro18xoshiro256plusplus18Xoshiro256PlusPlusNtNtCs4Jn2LUi8st0_4rand3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivejEECs342JT7D9NXi_13lance_datagen.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = mul nuw i64 %i.bl, %i.aj                ; 2 uses
  %i.bn = lshr i64 %i.bm, 32                      ; 2 uses
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, %i.ak
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = add i64 %i.bk, %i.bi                    ; 2 uses
  %i.br = call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 23)
  %i.bs = add i64 %i.br, %i.bi
  %i.bt = shl i64 %i.bh, 17
  %i.bu = xor i64 %i.bj, %i.bi                    ; 2 uses
  %i.bv = xor i64 %i.bh, %i.bk                    ; 3 uses
  %i.bw = xor i64 %i.bu, %i.bh                    ; 2 uses
  store i64 %i.bw, ptr %i.w, align 8, !alias.scope !17560, !noalias !17559
  %i.bx = xor i64 %i.bv, %i.bi                    ; 2 uses
  store i64 %i.bx, ptr %3, align 8, !alias.scope !17560, !noalias !17559
  %i.by = xor i64 %i.bu, %i.bt                    ; 2 uses
  store i64 %i.by, ptr %i.x, align 8, !alias.scope !17560, !noalias !17559
  %i.bz = call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 45) ; 2 uses
  store i64 %i.bz, ptr %i.v, align 8, !alias.scope !17560, !noalias !17559
  %i.ca = lshr i64 %i.bs, 32
  %4 = mul nuw i64 %i.ca, %i.aj
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.cb = xor i32 %i.bo, -1
  %.not11.i.i.i.i = icmp ult i32 %i.cb, %6
  %i.cc = zext i1 %.not11.i.i.i.i to i64
  %i.cd = add nuw nsw i64 %i.bn, %i.cc
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.promoted145215 = phi i64 [ %i.by, %bb.k ], [ %i.bj, %bb.j ]
  %.promoted143212 = phi i64 [ %i.bw, %bb.k ], [ %i.bh, %bb.j ]
  %.promoted141209 = phi i64 [ %i.bz, %bb.k ], [ %i.bk, %bb.j ]
  %.promoted206 = phi i64 [ %i.bx, %bb.k ], [ %i.bi, %bb.j ]
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.cd, %bb.k ], [ %i.bn, %bb.j ]
  %i.ce = add i64 %.sroa.04.0.i.i.i.i, %i.ab
  %i.cf = and i64 %i.ce, 4294967295
  br label %_RINvYNtNtCs4ZS9Ze0J1Ll_12rand_xoshiro18xoshiro256plusplus18Xoshiro256PlusPlusNtNtCs4Jn2LUi8st0_4rand3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivejEECs342JT7D9NXi_13lance_datagen.exit

bb.m:                                             ; preds = %bb.g
  %i.cg = load i64, ptr %3, align 8, !alias.scope !17561, !noalias !17562, !noundef !10 ; 4 uses
  %i.ch = load i64, ptr %i.v, align 8, !alias.scope !17561, !noalias !17562, !noundef !10 ; 2 uses
  %i.ci = add i64 %i.ch, %i.cg                    ; 2 uses
  %i.cj = call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 23)
  %i.ck = add i64 %i.cj, %i.cg                    ; 2 uses
  %i.cl = load i64, ptr %i.w, align 8, !alias.scope !17561, !noalias !17562, !noundef !10 ; 3 uses
  %i.cm = shl i64 %i.cl, 17
  %i.cn = load i64, ptr %i.x, align 8, !alias.scope !17561, !noalias !17562, !noundef !10
  %i.co = xor i64 %i.cn, %i.cg                    ; 2 uses
  %i.cp = xor i64 %i.cl, %i.ch                    ; 3 uses
  %i.cq = xor i64 %i.co, %i.cl                    ; 6 uses
  store i64 %i.cq, ptr %i.w, align 8, !alias.scope !17561, !noalias !17562
  %i.cr = xor i64 %i.cp, %i.cg                    ; 7 uses
  store i64 %i.cr, ptr %3, align 8, !alias.scope !17561, !noalias !17562
  %i.cs = xor i64 %i.co, %i.cm                    ; 4 uses
  store i64 %i.cs, ptr %i.x, align 8, !alias.scope !17561, !noalias !17562
  %i.ct = call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 45) ; 5 uses
  store i64 %i.ct, ptr %i.v, align 8, !alias.scope !17561, !noalias !17562
  br i1 %i.an, label %_RINvYNtNtCs4ZS9Ze0J1Ll_12rand_xoshiro18xoshiro256plusplus18Xoshiro256PlusPlusNtNtCs4Jn2LUi8st0_4rand3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivejEECs342JT7D9NXi_13lance_datagen.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = zext i64 %i.ck to i128
  %i.cv = mul nuw i128 %i.cu, %i.ao               ; 2 uses
  %i.cw = lshr i128 %i.cv, 64
  %i.cx = trunc nuw i128 %i.cw to i64             ; 2 uses
  %i.cy = trunc i128 %i.cv to i64                 ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, %i.ap
  br i1 %i.cz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.da = add i64 %i.ct, %i.cr                    ; 2 uses
  %i.db = call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 23)
  %i.dc = add i64 %i.db, %i.cr
  %i.dd = shl i64 %i.cq, 17
  %i.de = xor i64 %i.cs, %i.cr                    ; 2 uses
  %i.df = xor i64 %i.cq, %i.ct                    ; 3 uses
  %i.dg = xor i64 %i.de, %i.cq                    ; 2 uses
  store i64 %i.dg, ptr %i.w, align 8, !alias.scope !17563, !noalias !17562
  %i.dh = xor i64 %i.df, %i.cr                    ; 2 uses
  store i64 %i.dh, ptr %3, align 8, !alias.scope !17563, !noalias !17562
  %i.di = xor i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.di, ptr %i.x, align 8, !alias.scope !17563, !noalias !17562
  %i.dj = call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 45) ; 2 uses
  store i64 %i.dj, ptr %i.v, align 8, !alias.scope !17563, !noalias !17562
  %7 = zext i64 %i.dc to i128
  %8 = mul nuw i128 %7, %i.ao
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64
  %i.dk = xor i64 %i.cy, -1
  %.not7.i.i.i.i = icmp ult i64 %i.dk, %10
  %i.dl = zext i1 %.not7.i.i.i.i to i64
  %i.dm = add nuw i64 %i.dl, %i.cx
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.promoted145213 = phi i64 [ %i.di, %bb.o ], [ %i.cs, %bb.n ]
  %.promoted143210 = phi i64 [ %i.dg, %bb.o ], [ %i.cq, %bb.n ]
  %.promoted141207 = phi i64 [ %i.dj, %bb.o ], [ %i.ct, %bb.n ]
  %.promoted204 = phi i64 [ %i.dh, %bb.o ], [ %i.cr, %bb.n ]
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.dm, %bb.o ], [ %i.cx, %bb.n ]
  %i.dn = add i64 %.sroa.01.0.i.i.i.i, %i.ab
  br label %_RINvYNtNtCs4ZS9Ze0J1Ll_12rand_xoshiro18xoshiro256plusplus18Xoshiro256PlusPlusNtNtCs4Jn2LUi8st0_4rand3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivejEECs342JT7D9NXi_13lance_datagen.exit

bb.q:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17564
  store i8 0, ptr %i.d, align 1, !noalias !17564
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @345, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @887) #37
          to label %.noexc unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECs342JT7D9NXi_13lance_datagen.exit.i.thread248

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.f
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @89, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @887) #37
          to label %.noexc15 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECs342JT7D9NXi_13lance_datagen.exit.i.thread248

.noexc15:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call fastcc void @_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEE16from_iter_valuesNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB2c_3vec3VecB28_EECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dp, ptr noundef nonnull align 8 dereferenceable(120) %i.h, i64 120, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !17565
  %i.dq = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !17565 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.u, label %bb.x, !prof !11

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call fastcc void @_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypexEE16from_iter_valuesNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB2c_3vec3VecB28_EECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dt, ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 120, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !17566
  %i.du = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !17566 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.z, label %bb.ac, !prof !11

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECs342JT7D9NXi_13lance_datagen.exit.i.thread248: ; preds = %bb.af, %bb.r, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #37
          to label %.noexc16 unwind label %bb.v

.noexc16:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtBI_5types17GenericStringTypelEEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.dp)
          to label %.thread70 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.x:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dq, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %bb.x
  %.sink305 = phi ptr [ %i.du, %bb.ac ], [ %i.dq, %bb.x ]
  %.sink = phi ptr [ @27, %bb.ac ], [ @25, %bb.x ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink305, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.dz, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.z:                                             ; preds = %bb.t
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #37
          to label %.noexc18 unwind label %bb.aa

.noexc18:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtBI_5types17GenericStringTypexEEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.dt)
          to label %.thread70 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ac:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.du, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

_RINvYNtNtCs4ZS9Ze0J1Ll_12rand_xoshiro18xoshiro256plusplus18Xoshiro256PlusPlusNtNtCs4Jn2LUi8st0_4rand3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivejEECs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.p, %bb.m, %bb.l, %bb.i
  %.promoted145 = phi i64 [ %i.cs, %bb.m ], [ %.promoted145213, %bb.p ], [ %i.bj, %bb.i ], [ %.promoted145215, %bb.l ]
  %.promoted143 = phi i64 [ %i.cq, %bb.m ], [ %.promoted143210, %bb.p ], [ %i.bh, %bb.i ], [ %.promoted143212, %bb.l ]
  %.promoted141 = phi i64 [ %i.ct, %bb.m ], [ %.promoted141207, %bb.p ], [ %i.bk, %bb.i ], [ %.promoted141209, %bb.l ]
  %.promoted = phi i64 [ %i.cr, %bb.m ], [ %.promoted204, %bb.p ], [ %i.bi, %bb.i ], [ %.promoted206, %bb.l ]
  %.sroa.71.0.ph.i = phi i64 [ %i.ck, %bb.m ], [ %i.dn, %bb.p ], [ %i.bl, %bb.i ], [ %i.cf, %bb.l ] ; 6 uses
  %i.ec = shl i64 %.sroa.71.0.ph.i, 4             ; 7 uses
  %i.ed = icmp ugt i64 %.sroa.71.0.ph.i, 1152921504606846975
  %.not.i.i.i = icmp ugt i64 %i.ec, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.ed, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.af, label %bb.ad, !prof !7

bb.ad:                                            ; preds = %_RINvYNtNtCs4ZS9Ze0J1Ll_12rand_xoshiro18xoshiro256plusplus18Xoshiro256PlusPlusNtNtCs4Jn2LUi8st0_4rand3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivejEECs342JT7D9NXi_13lance_datagen.exit
  %i.ee = icmp eq i64 %i.ec, 0
  br i1 %i.ee, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !17567
  %i.ef = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ec, i64 noundef range(i64 1, 9) 8) #36, !noalias !17567 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.af, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i

bb.af:                                            ; preds = %bb.ae, %_RINvYNtNtCs4ZS9Ze0J1Ll_12rand_xoshiro18xoshiro256plusplus18Xoshiro256PlusPlusNtNtCs4Jn2LUi8st0_4rand3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivejEECs342JT7D9NXi_13lance_datagen.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.ae ], [ 0, %_RINvYNtNtCs4ZS9Ze0J1Ll_12rand_xoshiro18xoshiro256plusplus18Xoshiro256PlusPlusNtNtCs4Jn2LUi8st0_4rand3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivejEECs342JT7D9NXi_13lance_datagen.exit ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ec) #37
          to label %.noexc21 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECs342JT7D9NXi_13lance_datagen.exit.i.thread248

.noexc21:                                         ; preds = %bb.af
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ad ], [ %i.ef, %bb.ae ] ; 8 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.ad ], [ %.sroa.71.0.ph.i, %bb.ae ] ; 5 uses
  %i.eh = icmp samesign ule i64 %.sroa.71.0.ph.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.eh)
  %.not = icmp eq i64 %.sroa.71.0.ph.i, 0
  br i1 %.not, label %_RINvNtCs40k4W9msRzi_5alloc3str17join_generic_copyehReECs342JT7D9NXi_13lance_datagen.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjReuNCNvXsy_NtCs342JT7D9NXi_13lance_datagen9generatorNtB16_23RandomSentenceGeneratorNtB16_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EE0E0E0B18_.exit.i.i.i.i.i.i
  %.lcssa78146 = phi i64 [ %i.fu, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjReuNCNvXsy_NtCs342JT7D9NXi_13lance_datagen9generatorNtB16_23RandomSentenceGeneratorNtB16_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EE0E0E0B18_.exit.i.i.i.i.i.i ], [ %.promoted145, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i ]
  %.lcssa80144 = phi i64 [ %i.fs, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjReuNCNvXsy_NtCs342JT7D9NXi_13lance_datagen9generatorNtB16_23RandomSentenceGeneratorNtB16_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EE0E0E0B18_.exit.i.i.i.i.i.i ], [ %.promoted143, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i ]
  %.lcssa77142 = phi i64 [ %i.fv, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjReuNCNvXsy_NtCs342JT7D9NXi_13lance_datagen9generatorNtB16_23RandomSentenceGeneratorNtB16_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EE0E0E0B18_.exit.i.i.i.i.i.i ], [ %.promoted141, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i ]
  %.lcssa79140 = phi i64 [ %i.ft, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjReuNCNvXsy_NtCs342JT7D9NXi_13lance_datagen9generatorNtB16_23RandomSentenceGeneratorNtB16_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EE0E0E0B18_.exit.i.i.i.i.i.i ], [ %.promoted, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i ]
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.ga, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjReuNCNvXsy_NtCs342JT7D9NXi_13lance_datagen9generatorNtB16_23RandomSentenceGeneratorNtB16_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EE0E0E0B18_.exit.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i ] ; 3 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i
  %i.ei = phi i64 [ %i.fu, %bb.al ], [ %.lcssa78146, %.lr.ph.i.i.i.i.i.i ]
  %i.ej = phi i64 [ %i.fs, %bb.al ], [ %.lcssa80144, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.ek = phi i64 [ %i.fv, %bb.al ], [ %.lcssa77142, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.el = phi i64 [ %i.ft, %bb.al ], [ %.lcssa79140, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.em = add i64 %i.el, %i.ek                    ; 2 uses
  %i.en = call noundef i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 23)
  %i.eo = add i64 %i.en, %i.el
  %i.ep = shl i64 %i.ej, 17
  %i.eq = xor i64 %i.el, %i.ei                    ; 2 uses
  %i.er = xor i64 %i.ek, %i.ej                    ; 3 uses
  %i.es = xor i64 %i.eq, %i.ej                    ; 3 uses
  %i.et = xor i64 %i.er, %i.el                    ; 4 uses
  %i.eu = xor i64 %i.eq, %i.ep
  %i.ev = call noundef i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 45) ; 2 uses
  %i.ew = lshr i64 %i.eo, 11
  %i.ex = uitofp nneg i64 %i.ew to double
  %i.ey = fmul nnan double %i.ex, f0x3CA0000000000000
  %i.ez = fmul double %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %i.ey ; 4 uses
  %i.fa = fcmp ugt double %i.ez, 1.000000e+00
  br i1 %i.fa, label %bb.ah, label %_RNvMs0_NtCsTKsSsJy59w_10rand_distr4zipfINtB5_4ZipfdE7inv_cdfCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ar, label %bb.aj, label %bb.ai

end_hunk_1
begin_hunk_2_@_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray7try_new
declare void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray7try_new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noundef nonnull, i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtB7_5Array7to_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtB7_5Array5slice(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtB7_5Array13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtB7_5Array22get_buffer_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtB7_5Array21get_array_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema5fieldNtB2_5FieldNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #25

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray16new_empty_fields(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array7to_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array5slice(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array22get_buffer_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array21get_array_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsu_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecaEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder9data_type(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(184)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecbEE4from(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_arrayNtB2_12BooleanArrayNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayNtB7_5Array7to_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayNtB7_5Array5slice(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayNtB7_5Array13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsC_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9UInt8TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsY_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10Date32TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs12_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types16Time32SecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs14_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types21Time32MillisecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsy_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsw_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecsEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VectEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs10_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types10Date64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1g_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types18DurationSecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1o_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types19TimestampSecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs18_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types20Time64NanosecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs16_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types21Time64MicrosecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1m_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types22DurationNanosecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1k_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types23DurationMicrosecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1i_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types23DurationMillisecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1u_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types23TimestampNanosecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1s_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types24TimestampMicrosecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1q_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types24TimestampMillisecondTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsA_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecxEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCscI6d9CVNmLh_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCs4ytUTZt2Gw9_11arrow_array5array23fixed_size_binary_arrayNtB5_20FixedSizeBinaryArrayNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array23fixed_size_binary_arrayNtB5_20FixedSizeBinaryArrayNtB7_5Array7to_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array23fixed_size_binary_arrayNtB5_20FixedSizeBinaryArrayNtB7_5Array5slice(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array23fixed_size_binary_arrayNtB5_20FixedSizeBinaryArrayNtB7_5Array13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_arrayNtB4_12BooleanArray3new(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array23fixed_size_binary_arrayNtB2_20FixedSizeBinaryArray3new(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), i32 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1a_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types21IntervalYearMonthTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1c_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types19IntervalDayTimeTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4YAKbnGhBJc_12arrow_buffer8interval15IntervalDayTimeEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1e_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types24IntervalMonthDayNanoTypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4YAKbnGhBJc_12arrow_buffer8interval20IntervalMonthDayNanoEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #25

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #28 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #33 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { nounwind }
attributes #37 = { noreturn }
attributes #38 = { cold }
attributes #39 = { cold noreturn nounwind }
attributes #40 = { "function-inline-cost-multiplier"="2" }
attributes #41 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs342JT7D9NXi_13lance_datagen9generator14ArrayGeneratorEL_EEB1f_"}
!1 = distinct !{!1, !0, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs342JT7D9NXi_13lance_datagen9generator14ArrayGeneratorEL_EEB1f_: argument 0"}
!2 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs342JT7D9NXi_13lance_datagen, null, null}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 2, !"RtLibUseGOT", i32 1}
!6 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!7 = !{!"branch_weights", i32 2002, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", !"expected", i32 2145756208, i32 1727440}
!10 = !{}
!11 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!12 = !{i64 0, i64 -9223372036854775808}
!13 = !{!"branch_weights", i32 2146410443, i32 1073205}
!14 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i64 -1, i64 -9223372036854775808}
!18 = !{i64 8}
!19 = !{i64 1, i64 536870913}
!20 = !{i64 1, i64 -9223372036854775807}
!21 = !{i64 0, i64 -9223372036854775807}
!22 = !{!1}
!23 = !{i64 0, i64 -9223372036854775788}
!24 = !{i8 0, i8 41}
!25 = !{i64 0, i64 2}
!26 = !{i64 -1, i64 -9223372036854775788}
!27 = !{i32 1, i32 0}
!28 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs342JT7D9NXi_13lance_datagen}
!29 = !{i64 -2, i64 -9223372036854775808}
!30 = !{i8 0, i8 4}
!31 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!32 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{i8 0, i8 3}
!36 = !{!"branch_weights", i32 1718845484, i32 428638164}
!37 = !{i64 4}
!38 = !{i8 -1, i8 41}
!39 = !{!"llvm.loop.peeled.count", i32 1}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!"branch_weights", i32 1718845483, i32 428638165}
!42 = distinct !{!42, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCs342JT7D9NXi_13lance_datagen"}
!43 = distinct !{!43, !42, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCs342JT7D9NXi_13lance_datagen: argument 0"}
!44 = distinct !{!44, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen"}
!45 = distinct !{!45, !44, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen: argument 0"}
!46 = distinct !{!46, !"_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCs342JT7D9NXi_13lance_datagen"}
!47 = distinct !{!47, !46, !"_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCs342JT7D9NXi_13lance_datagen: argument 1"}
!48 = distinct !{!48, !46, !"_RNvXs5_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VeclEE4fromCs342JT7D9NXi_13lance_datagen: argument 0"}
!49 = distinct !{!49, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs342JT7D9NXi_13lance_datagen"}
!50 = distinct !{!50, !49, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs342JT7D9NXi_13lance_datagen: argument 0"}
!51 = distinct !{!51, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCs342JT7D9NXi_13lance_datagen"}
!52 = distinct !{!52, !51, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCs342JT7D9NXi_13lance_datagen: argument 0"}
!53 = !{!43}
!54 = !{!45}
!55 = !{!48, !47}
!56 = !{!50, !48, !47}
!57 = !{!52}
!58 = distinct !{!58, !"_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECs342JT7D9NXi_13lance_datagen"}
!59 = distinct !{!59, !58, !"_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECs342JT7D9NXi_13lance_datagen: argument 0"}
!60 = distinct !{!60, !"_RNvXs_NtNtCsgczF5crJ4sT_3std4hash6randomNtB4_11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher12build_hasher"}
!61 = distinct !{!61, !60, !"_RNvXs_NtNtCsgczF5crJ4sT_3std4hash6randomNtB4_11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher12build_hasher: argument 0"}
!62 = distinct !{!62, !"_RINvXs3_NtNtCscI6d9CVNmLh_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECs342JT7D9NXi_13lance_datagen"}
!63 = distinct !{!63, !62, !"_RINvXs3_NtNtCscI6d9CVNmLh_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECs342JT7D9NXi_13lance_datagen: argument 0"}
!64 = distinct !{!64, !"_RINvXs0_NtNtCscI6d9CVNmLh_4core4hash5implseNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECs342JT7D9NXi_13lance_datagen"}
!65 = distinct !{!65, !64, !"_RINvXs0_NtNtCscI6d9CVNmLh_4core4hash5implseNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECs342JT7D9NXi_13lance_datagen: argument 1"}
!66 = distinct !{!66, !64, !"_RINvXs0_NtNtCscI6d9CVNmLh_4core4hash5implseNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECs342JT7D9NXi_13lance_datagen: argument 0"}
!67 = distinct !{!67, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_str"}
!68 = distinct !{!68, !67, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_str: argument 1"}
!69 = distinct !{!69, !67, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_str: argument 0"}
!70 = distinct !{!70, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs342JT7D9NXi_13lance_datagen"}
!71 = distinct !{!71, !70, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs342JT7D9NXi_13lance_datagen: argument 1"}
!72 = distinct !{!72, !70, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs342JT7D9NXi_13lance_datagen: argument 0"}
!73 = distinct !{!73, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher6finish"}
!74 = distinct !{!74, !73, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher6finish: argument 0"}
!75 = distinct !{!75, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs342JT7D9NXi_13lance_datagen"}
!76 = distinct !{!76, !75, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs342JT7D9NXi_13lance_datagen: argument 0"}
!77 = distinct !{!77, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs342JT7D9NXi_13lance_datagen"}
!78 = distinct !{!78, !77, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs342JT7D9NXi_13lance_datagen: argument 0"}
!79 = distinct !{!79, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!80 = distinct !{!80, !79, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!81 = distinct !{!81, !77, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs342JT7D9NXi_13lance_datagen: argument 1"}
!82 = distinct !{!82, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!83 = distinct !{!83, !82, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!84 = distinct !{!84, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs342JT7D9NXi_13lance_datagen"}
!85 = distinct !{!85, !84, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs342JT7D9NXi_13lance_datagen: argument 0"}
!86 = distinct !{!86, !"_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!87 = distinct !{!87, !86, !"_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!88 = distinct !{!88, !86, !"_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!89 = !{!59}
!90 = !{!61}
!91 = !{!72, !71, !69, !68, !66, !65, !63, !59}
!92 = !{!71, !68, !66, !59}
!93 = !{!76, !74}
!94 = !{!78}
!95 = !{!80}
!96 = !{!80, !78}
!97 = !{!81}
!98 = !{!83, !80, !78, !81}
!99 = !{!85, !80, !78, !81}
!100 = !{!88, !87}
!101 = !{!85, !80, !78}
!102 = distinct !{!102, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCs342JT7D9NXi_13lance_datagen"}
!103 = distinct !{!103, !102, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCs342JT7D9NXi_13lance_datagen: argument 1"}
!104 = distinct !{!104, !102, !"_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCs342JT7D9NXi_13lance_datagen: argument 0"}
!105 = distinct !{!105, !"_RNvXsK_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringINtNtCscI6d9CVNmLh_4core7convert4FromReE4from"}
!106 = distinct !{!106, !105, !"_RNvXsK_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringINtNtCscI6d9CVNmLh_4core7convert4FromReE4from: argument 1"}
!107 = distinct !{!107, !105, !"_RNvXsK_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringINtNtCscI6d9CVNmLh_4core7convert4FromReE4from: argument 0"}
!108 = distinct !{!108, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs342JT7D9NXi_13lance_datagen"}
!109 = distinct !{!109, !108, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs342JT7D9NXi_13lance_datagen: argument 1"}
!110 = distinct !{!110, !108, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs342JT7D9NXi_13lance_datagen: argument 0"}
!111 = distinct !{!111, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen"}
!112 = distinct !{!112, !111, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen: argument 0"}
!113 = distinct !{!113, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs342JT7D9NXi_13lance_datagen"}
!114 = distinct !{!114, !113, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs342JT7D9NXi_13lance_datagen: argument 0"}
!115 = distinct !{!115, !"_RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs342JT7D9NXi_13lance_datagen"}
!116 = distinct !{!116, !115, !"_RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs342JT7D9NXi_13lance_datagen: argument 0"}
!117 = distinct !{!117, !"_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs342JT7D9NXi_13lance_datagen"}
!118 = distinct !{!118, !117, !"_RNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs342JT7D9NXi_13lance_datagen: argument 0"}
!119 = distinct !{!119, !"_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs342JT7D9NXi_13lance_datagen"}
!120 = distinct !{!120, !119, !"_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs342JT7D9NXi_13lance_datagen: argument 0"}
!121 = distinct !{!121, !"_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs342JT7D9NXi_13lance_datagen"}
!122 = distinct !{!122, !121, !"_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs342JT7D9NXi_13lance_datagen: argument 0"}
!123 = distinct !{!123, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs342JT7D9NXi_13lance_datagen"}
!124 = distinct !{!124, !123, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs342JT7D9NXi_13lance_datagen: argument 0"}
!125 = distinct !{!125, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs342JT7D9NXi_13lance_datagen"}
!126 = distinct !{!126, !125, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs342JT7D9NXi_13lance_datagen: argument 0"}
!127 = !{!112, !110, !109, !107, !106, !104, !103}
!128 = !{!110, !107, !104}
!129 = !{!120, !118, !116, !114}
end_hunk_2
