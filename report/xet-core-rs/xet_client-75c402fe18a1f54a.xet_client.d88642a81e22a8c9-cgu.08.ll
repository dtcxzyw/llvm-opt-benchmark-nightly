Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.08?download=true
inline.NumInlined: 1296
inline.NumDeleted: 598
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation11random_xorbNtB2_10RandomXorb29generate_chunk_data_from_seed:bb.a
  store i64 %i.e, ptr %i.af, align 8, !alias.scope !1836
  %i.ag = and i64 %i.e, 7                         ; 3 uses
  %i.ah = and i64 %i.e, 4294967288                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %.not14.i = icmp eq i64 %i.ah, 0
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit
  %i.aj = add i64 %1, 4354685564936845354         ; 2 uses
  %i.ak = lshr i64 %i.aj, 30
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, -4658895280553007687     ; 2 uses
  %i.an = lshr i64 %i.am, 27
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = mul i64 %i.ao, -7723592293110705685     ; 2 uses
  %i.aq = lshr i64 %i.ap, 31
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = add i64 %1, -2691343689449507777        ; 2 uses
  %i.at = lshr i64 %i.as, 30
  %i.au = xor i64 %i.at, %i.as
  %i.av = mul i64 %i.au, -4658895280553007687     ; 2 uses
  %i.aw = lshr i64 %i.av, 27
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, -7723592293110705685     ; 2 uses
  %i.az = lshr i64 %i.ay, 31
  %i.ba = xor i64 %i.az, %i.ay
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit
  %.sroa.15.0 = phi i64 [ %i.t, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit ], [ %i.bk, %.noexc ]
  %.sroa.0.0 = phi i64 [ %i.ac, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsiAynQAjgDuT_10xet_client.exit ], [ %i.bo, %.noexc ] ; 2 uses
  %i.bb = icmp eq i64 %i.ag, 0
  br i1 %i.bb, label %_RINvNtCsenQHu2qVDfv_9rand_core5utils24fill_bytes_via_next_wordzyNCNvXs_NtNtCs4DkaUnCZMGd_4rand4rngs18xoshiro256plusplusNtB17_18Xoshiro256PlusPlusNtB4_6TryRng14try_fill_bytes0ECsiAynQAjgDuT_10xet_client.exit, label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc
  %i.bc = phi i64 [ %i.bn, %.noexc ], [ %i.ba, %.lr.ph.i.preheader ]
  %i.bd = phi i64 [ %i.bp, %.noexc ], [ %i.ar, %.lr.ph.i.preheader ] ; 3 uses
  %i.be = phi i64 [ %i.bk, %.noexc ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.6.016.i = phi ptr [ %i.br, %.noexc ], [ %i.ad, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.9.015.i = phi i64 [ %i.bq, %.noexc ], [ %i.ah, %.lr.ph.i.preheader ]
  %i.bf = phi i64 [ %i.bo, %.noexc ], [ %i.ac, %.lr.ph.i.preheader ] ; 4 uses
  %i.bg = add i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 23)
  %i.bi = add i64 %i.bh, %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1837
  store i64 %i.bi, ptr %i.b, align 8, !noalias !1837
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull %.sroa.6.016.i, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i
  %i.bj = xor i64 %i.be, %i.bd                    ; 3 uses
  %i.bk = call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 45) ; 2 uses
  %i.bl = xor i64 %i.bf, %i.bc                    ; 2 uses
  %i.bm = shl i64 %i.bd, 17
  %i.bn = xor i64 %i.bl, %i.bm
  %i.bo = xor i64 %i.bf, %i.bj                    ; 2 uses
  %i.bp = xor i64 %i.bl, %i.bd
  %i.bq = add i64 %.sroa.9.015.i, -8              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.6.016.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1837
  %.not.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1837
  %i.bs = add i64 %.sroa.0.0, %.sroa.15.0         ; 2 uses
  %i.bt = call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 23)
  %i.bu = add i64 %i.bt, %.sroa.0.0
  store i64 %i.bu, ptr %i.a, align 8, !noalias !1837
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull %i.ai, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32)
          to label %.noexc1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1837
  br label %_RINvNtCsenQHu2qVDfv_9rand_core5utils24fill_bytes_via_next_wordzyNCNvXs_NtNtCs4DkaUnCZMGd_4rand4rngs18xoshiro256plusplusNtB17_18Xoshiro256PlusPlusNtB4_6TryRng14try_fill_bytes0ECsiAynQAjgDuT_10xet_client.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.c
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #37
          to label %bb.e unwind label %bb.d

_RINvNtCsenQHu2qVDfv_9rand_core5utils24fill_bytes_via_next_wordzyNCNvXs_NtNtCs4DkaUnCZMGd_4rand4rngs18xoshiro256plusplusNtB17_18Xoshiro256PlusPlusNtB4_6TryRng14try_fill_bytes0ECsiAynQAjgDuT_10xet_client.exit: ; preds = %.noexc1, %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp11
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation11random_xorbNtB2_10RandomXorb3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [160 x i8], align 8               ; 19 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation11random_xorb15RandomChunkInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB37_5slice4iter4IterTymEENCNvMB15_NtB15_10RandomXorb3new0EE9from_iterB1b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull %1, ptr noundef nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !10, !noundef !10 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !10 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = icmp eq i64 %i.q, 0                      ; 3 uses
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false), !noalias !1848
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1848
  %i.s = shl nuw nsw i64 %i.q, 5                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1848
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.s, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.c
  %i.t = load i64, ptr %i.c, align 8, !range !13, !noalias !1848, !noundef !10
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !14, !noalias !1848, !noundef !10 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.u, label %bb.e, label %.lr.ph.preheader.i, !prof !11

bb.d:                                             ; preds = %.noexc3, %bb.b
  %.idx70.pre-phi.i = phi i64 [ %.idx.i, %.noexc3 ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1848
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx70.pre-phi.i ; 3 uses
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation11random_xorb15RandomChunkInfoENCNvMB3Z_NtB3Z_10RandomXorb17build_xorb_object0EE9from_iterB45_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 %i.o, ptr noundef nonnull readonly %i.y)
          to label %.noexc1 unwind label %bb.an

.noexc1:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1848
  %i.z = and i64 %i.q, 4294967295                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1848
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.k unwind label %.thread.i, !noalias !1849

bb.e:                                             ; preds = %.noexc
  %i.aa = load i64, ptr %i.x, align 8, !noalias !1848
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.aa) #36
          to label %.noexc2 unwind label %bb.an

.noexc2:                                          ; preds = %bb.e
  unreachable

.lr.ph.preheader.i:                               ; preds = %.noexc
  %i.ab = load ptr, ptr %i.x, align 8, !noalias !1848, !nonnull !10, !noundef !10
  %i.ac = icmp samesign ule i64 %i.s, %i.w
  tail call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1848
  store i64 %i.w, ptr %i.j, align 8, !noalias !1848
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !1848
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !noalias !1848
  %.idx.i = mul nuw nsw i64 %i.q, 48              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.sroa.0.059.i = phi ptr [ %i.al, %bb.f ], [ %i.o, %.lr.ph.preheader.i ] ; 2 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 32)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1849

._crit_edge.i:                                    ; preds = %bb.f
  invoke void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash17compute_data_hash(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1849

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %._crit_edge.i
  %lpad.loopexit.split-lp34 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #37
          to label %.body unwind label %bb.ak, !noalias !1849

bb.f:                                             ; preds = %.lr.ph.i
  %i.ag = load i64, ptr %i.ae, align 8, !alias.scope !1850, !noalias !1848, !noundef !10 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load ptr, ptr %i.ad, align 8, !alias.scope !1850, !noalias !1848, !nonnull !10, !noundef !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.0.059.i, i64 32, i1 false), !noalias !1849
  %i.ak = add nuw i64 %i.ag, 32                   ; 2 uses
  store i64 %i.ak, ptr %i.ae, align 8, !alias.scope !1850, !noalias !1848
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.059.i, i64 48 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.af
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %._crit_edge.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.h, !noalias !1849

bb.h:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.i, !noalias !1849

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1849
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc3 unwind label %bb.an

.noexc3:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1848
  br label %bb.d

bb.j:                                             ; preds = %.thread39.loopexit.split-lp.i, %bb.o
  %.sroa.014.0.i = phi i1 [ %.sroa.014.1.i, %bb.o ], [ %.sroa.014.143.i, %.thread39.loopexit.split-lp.i ]
  %.pn22.i = phi { ptr, i32 } [ %.pn20.i, %bb.o ], [ %.pn2044.i, %.thread39.loopexit.split-lp.i ] ; 2 uses
  br i1 %.sroa.014.0.i, label %bb.am, label %.body

.thread.i:                                        ; preds = %bb.l, %.noexc1
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.k:                                             ; preds = %.noexc1
  %i.aq = load i64, ptr %i.b, align 8, !range !13, !noalias !1848, !noundef !10
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !14, !noalias !1848, !noundef !10 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.av = load i64, ptr %i.au, align 8, !noalias !1848
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.at, i64 %i.av) #36
          to label %bb.al unwind label %.thread.i, !noalias !1849

bb.m:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.au, align 8, !noalias !1848, !nonnull !10, !noundef !10
  %i.ax = icmp samesign ule i64 %i.z, %i.at
  call void @llvm.assume(i1 %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1848
  store i64 %i.at, ptr %i.h, align 8, !noalias !1848
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.ay, align 8, !noalias !1848
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.az, align 8, !noalias !1848
  br i1 %i.r, label %._crit_edge64.i, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %bb.m, %bb.p
  %i.ba = phi i64 [ %i.bj, %bb.p ], [ 0, %bb.m ]  ; 3 uses
  %.sroa.02.061.i = phi i32 [ %i.be, %bb.p ], [ 0, %bb.m ]
  %.sroa.04.060.i = phi ptr [ %i.bk, %bb.p ], [ %i.o, %bb.m ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.060.i, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !alias.scope !1847, !noundef !10
  %i.bd = add i32 %.sroa.02.061.i, 8
  %i.be = add i32 %i.bd, %i.bc                    ; 2 uses
  %i.bf = load i64, ptr %i.h, align 8, !range !15, !alias.scope !1851, !noalias !1848, !noundef !10
  %i.bg = icmp eq i64 %i.ba, %i.bf
  br i1 %i.bg, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph63.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsbc8Eb5TzBdy_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #40
          to label %bb.p unwind label %.thread39.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1849

._crit_edge64.i:                                  ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1848
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.q unwind label %.thread39.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1849

bb.o:                                             ; preds = %.thread45.loopexit.split-lp.i, %bb.u
  %.sroa.013.0.i = phi i1 [ %.sroa.013.2.i, %bb.u ], [ %.sroa.013.150.i, %.thread45.loopexit.split-lp.i ]
  %.sroa.014.1.i = phi i1 [ false, %bb.u ], [ %.sroa.014.251.i, %.thread45.loopexit.split-lp.i ] ; 2 uses
  %.pn20.i = phi { ptr, i32 } [ %.pn.i, %bb.u ], [ %.pn.pn52.i, %.thread45.loopexit.split-lp.i ] ; 2 uses
  br i1 %.sroa.013.0.i, label %.thread39.loopexit.split-lp.i, label %bb.j

.thread39.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.r, %._crit_edge64.i
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  br label %.thread39.loopexit.split-lp.i

bb.p:                                             ; preds = %bb.n, %.lr.ph63.i
  %i.bh = load ptr, ptr %i.ay, align 8, !alias.scope !1851, !noalias !1848, !nonnull !10, !noundef !10
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ba
  store i32 %i.be, ptr %i.bi, align 4, !noalias !1849
  %i.bj = add nuw nsw i64 %i.ba, 1                ; 2 uses
  store i64 %i.bj, ptr %i.az, align 8, !alias.scope !1851, !noalias !1848
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.060.i, i64 48 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.y
  br i1 %i.bl, label %._crit_edge64.i, label %.lr.ph63.i

bb.q:                                             ; preds = %._crit_edge64.i
  %i.bm = load i64, ptr %i.a, align 8, !range !13, !noalias !1848, !noundef !10
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !14, !noalias !1848, !noundef !10 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bn, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.br = load i64, ptr %i.bq, align 8, !noalias !1848
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bp, i64 %i.br) #36
          to label %bb.al unwind label %.thread39.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1849

bb.s:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.bq, align 8, !noalias !1848, !nonnull !10, !noundef !10
  %i.bt = icmp samesign ule i64 %i.z, %i.bp
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1848
  store i64 %i.bp, ptr %i.g, align 8, !noalias !1848
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !1848
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !noalias !1848
  br i1 %i.r, label %._crit_edge69.i, label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %bb.s, %bb.v
  %i.bw = phi i64 [ %i.ce, %bb.v ], [ 0, %bb.s ]  ; 3 uses
  %.sroa.07.066.i = phi i32 [ %i.bz, %bb.v ], [ 0, %bb.s ]
  %.sroa.09.065.i = phi ptr [ %i.cf, %bb.v ], [ %i.o, %bb.s ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.09.065.i, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !alias.scope !1847, !noundef !10
  %i.bz = add i32 %i.by, %.sroa.07.066.i          ; 2 uses
  %i.ca = load i64, ptr %i.g, align 8, !range !15, !alias.scope !1852, !noalias !1848, !noundef !10
  %i.cb = icmp eq i64 %i.bw, %i.ca
  br i1 %i.cb, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.lr.ph68.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsbc8Eb5TzBdy_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #40
          to label %bb.v unwind label %.thread45.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1849

._crit_edge69.i:                                  ; preds = %bb.v, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1848
  invoke void @_RNvXs0_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_16XorbObjectInfoV1NtNtCskKLDkoKarTP_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.f)
          to label %bb.w unwind label %.thread45.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1849

bb.u:                                             ; preds = %bb.aj
  br i1 %.sroa.012.1.i, label %.thread45.loopexit.split-lp.i, label %bb.o

.thread45.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %._crit_edge69.i
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.loopexit.split-lp.i

bb.v:                                             ; preds = %bb.t, %.lr.ph68.i
  %i.cc = load ptr, ptr %i.bu, align 8, !alias.scope !1852, !noalias !1848, !nonnull !10, !noundef !10
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bw
  store i32 %i.bz, ptr %i.cd, align 4, !noalias !1849
  %i.ce = add nuw nsw i64 %i.bw, 1                ; 2 uses
  store i64 %i.ce, ptr %i.bv, align 8, !alias.scope !1852, !noalias !1848
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.09.065.i, i64 48 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.y
  br i1 %i.cg, label %._crit_edge69.i, label %.lr.ph68.i

bb.w:                                             ; preds = %._crit_edge69.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !1848
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.y unwind label %bb.x, !noalias !1849

bb.x:                                             ; preds = %bb.w
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.z, !noalias !1849

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.aa, !noalias !1849

bb.z:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1849
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %bb.x
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ck, %bb.aa ], [ %i.ci, %bb.x ]
end_hunk_0
