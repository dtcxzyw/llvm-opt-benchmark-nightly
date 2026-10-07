Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.08?download=true
inline.NumInlined: 497
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes13write_hex_u64:bb.a
  %i.y = add nuw nsw i64 %i.a, 4                  ; 2 uses
  %i.z = icmp samesign ult i64 %i.a, 788
  br i1 %i.z, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #29
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = lshr i64 %2, 44
  %i.ab = and i64 %i.aa, 15
  %i.ac = getelementptr inbounds nuw i8, ptr @19, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = add nuw nsw i64 %i.a, 5                 ; 2 uses
  %.not33 = icmp eq i64 %i.a, 787
  br i1 %.not33, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = lshr i64 %2, 40
  %i.ah = and i64 %i.ag, 15
  %i.ai = getelementptr inbounds nuw i8, ptr @19, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = add nuw nsw i64 %i.a, 6                 ; 2 uses
  %i.am = icmp samesign ult i64 %i.a, 786
  br i1 %i.am, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.an = lshr i64 %2, 36
  %i.ao = and i64 %i.an, 15
  %i.ap = getelementptr inbounds nuw i8, ptr @19, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = add nuw nsw i64 %i.a, 7                 ; 2 uses
  %.not34 = icmp eq i64 %i.a, 785
  br i1 %.not34, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #29
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.at = lshr i64 %2, 32
  %i.au = and i64 %i.at, 15
  %i.av = getelementptr inbounds nuw i8, ptr @19, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = add nuw nsw i64 %i.a, 8                 ; 2 uses
  %i.az = icmp samesign ult i64 %i.a, 784
  br i1 %i.az, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #29
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ba = lshr i64 %2, 28
  %i.bb = and i64 %i.ba, 15
  %i.bc = getelementptr inbounds nuw i8, ptr @19, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  store i8 %i.bd, ptr %i.be, align 1
  %i.bf = add nuw nsw i64 %i.a, 9                 ; 2 uses
  %.not35 = icmp eq i64 %i.a, 783
  br i1 %.not35, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ay, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #29
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bg = lshr i64 %2, 24
  %i.bh = and i64 %i.bg, 15
  %i.bi = getelementptr inbounds nuw i8, ptr @19, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = add nuw nsw i64 %i.a, 10                ; 2 uses
  %i.bm = icmp samesign ult i64 %i.a, 782
  br i1 %i.bm, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #29
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bn = lshr i64 %2, 20
  %i.bo = and i64 %i.bn, 15
  %i.bp = getelementptr inbounds nuw i8, ptr @19, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = add nuw nsw i64 %i.a, 11                ; 2 uses
  %.not36 = icmp eq i64 %i.a, 781
  br i1 %.not36, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #29
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bt = lshr i64 %2, 16
  %i.bu = and i64 %i.bt, 15
  %i.bv = getelementptr inbounds nuw i8, ptr @19, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = add nuw nsw i64 %i.a, 12                ; 2 uses
  %i.bz = icmp samesign ult i64 %i.a, 780
  br i1 %i.bz, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #29
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ca = lshr i64 %2, 12
  %i.cb = and i64 %i.ca, 15
  %i.cc = getelementptr inbounds nuw i8, ptr @19, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = add nuw nsw i64 %i.a, 13                ; 2 uses
  %.not37 = icmp eq i64 %i.a, 779
  br i1 %.not37, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.by, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #29
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cg = lshr i64 %2, 8
  %i.ch = and i64 %i.cg, 15
  %i.ci = getelementptr inbounds nuw i8, ptr @19, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = add nuw nsw i64 %i.a, 14                ; 2 uses
  %i.cm = icmp samesign ult i64 %i.a, 778
  br i1 %i.cm, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.z
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #29
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cn = lshr i64 %2, 4
  %i.co = and i64 %i.cn, 15
  %i.cp = getelementptr inbounds nuw i8, ptr @19, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !5
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = add nuw nsw i64 %i.a, 15                ; 2 uses
  %.not38 = icmp eq i64 %i.a, 777
  br i1 %.not38, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ab
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #29
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ct = and i64 %2, 15
  %i.cu = getelementptr inbounds nuw i8, ptr @19, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !5
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  store i8 %i.cv, ptr %i.cw, align 1
  %i.cx = add nuw nsw i64 %i.a, 16
  store i64 %i.cx, ptr %1, align 8
  ret void

bb.ag:                                            ; preds = %bb.ad
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10test_utils14build_raw_xorb(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 13 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [12 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = zext i32 %1 to i64                       ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 6                  ; 2 uses
  %i.k = icmp eq i32 %1, 0
  br i1 %i.k, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.m, align 8
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1294
  %i.n = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1294 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.j) #28
  unreachable

.lr.ph:                                           ; preds = %bb.b
  store i64 %i.i, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 0, ptr %i.q, align 8
  %i.r = load i32, ptr %2, align 4, !range !26, !noundef !5
  %i.s = trunc nuw i32 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.u = load <2 x i32>, ptr %i.t, align 4
  %i.v = load i32, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br i1 %i.s, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.sroa.03.020.us = phi i32 [ %i.aa, %bb.h ], [ 0, %.lr.ph ]
  %i.aa = add nuw i32 %.sroa.03.020.us, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10test_utils16gen_random_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i32 noundef %i.v)
          to label %bb.d unwind label %.loopexit.split.us

bb.d:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5
  %i.ac = load i64, ptr %i.y, align 8, !noundef !5
  invoke void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash17compute_data_hash(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %bb.e unwind label %.split.us

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsE_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.f unwind label %.body.split.us

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  %i.ad = load i64, ptr %i.q, align 8, !alias.scope !1295, !noalias !1296, !noundef !5 ; 3 uses
  %i.ae = load i64, ptr %i.h, align 8, !range !6, !alias.scope !1295, !noalias !1296, !noundef !5
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %.split24.us, !noalias !1296

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = load ptr, ptr %i.p, align 8, !alias.scope !1295, !noalias !1296, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !1295
  %i.ai = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ai, ptr %i.q, align 8, !alias.scope !1295, !noalias !1296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond27.not = icmp eq i32 %i.aa, %1
  br i1 %exitcond27.not, label %._crit_edge, label %.lr.ph.split.us

.loopexit.split.us:                               ; preds = %.lr.ph.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngECs31YAwBA1AlL_19xet_core_structures.exit

.split.us:                                        ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.body.split.us:                                   ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngECs31YAwBA1AlL_19xet_core_structures.exit

.split24.us:                                      ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

._crit_edge:                                      ; preds = %bb.aa, %bb.h, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread
  %i.am = phi ptr [ %i.p, %bb.h ], [ %i.l, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread ], [ %i.p, %bb.aa ] ; 2 uses
  %i.an = phi i64 [ %i.ai, %bb.h ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread ], [ %i.cd, %bb.aa ]
  %i.ao = phi ptr [ %i.ag, %bb.h ], [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread ], [ %i.cb, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.ap = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #24 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.i, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !16

bb.i:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.aa
  %.sroa.03.020 = phi i32 [ %i.ar, %bb.aa ], [ 0, %.lr.ph ]
  %i.ar = add nuw i32 %.sroa.03.020, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.as = invoke noundef nonnull ptr @_RNvNtNtCs4DkaUnCZMGd_4rand4rngs6thread3rng()
          to label %bb.o unwind label %.loopexit.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.body.split, %.body.split.us, %.loopexit.split-lp, %.loopexit.split.us, %.loopexit.split, %bb.y, %bb.p, %bb.q, %bb.ab
  %.pn = phi { ptr, i32 } [ %.us-phi21, %bb.ab ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %.us-phi25, %bb.y ], [ %i.bb, %bb.q ], [ %i.bb, %bb.p ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %i.bn, %.body.split ], [ %i.ak, %.body.split.us ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #26
          to label %common.resume unwind label %bb.t

.loopexit.split:                                  ; preds = %.lr.ph.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngECs31YAwBA1AlL_19xet_core_structures.exit9, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngECs31YAwBA1AlL_19xet_core_structures.exit

.loopexit.split-lp:                               ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngECs31YAwBA1AlL_19xet_core_structures.exit

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %._crit_edge
  store i64 0, ptr %i.ap, align 8
  store i64 1, ptr %i.a, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ap, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.au, align 8
  invoke void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13raw_xorb_dataNtB2_11RawXorbData11from_chunks(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %i.ao, i64 noundef %i.an, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.h, align 8, !alias.scope !1297 ; 2 uses
  %i.aw = icmp eq i64 %.val2.i, 0
  br i1 %i.aw, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val3.i = load ptr, ptr %i.am, align 8, !alias.scope !1297, !nonnull !5, !noundef !5
  %i.ax = shl nuw i64 %.val2.i, 6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !1297 ; 2 uses
  %i.ay = icmp eq i64 %.val.i, 0
  br i1 %i.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkEEB1e_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i = load ptr, ptr %i.am, align 8, !alias.scope !1297, !nonnull !5, !noundef !5
  %i.az = shl nuw i64 %.val.i, 6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkEEB1e_.exit

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngECs31YAwBA1AlL_19xet_core_structures.exit, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.av, %bb.l ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngECs31YAwBA1AlL_19xet_core_structures.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkEEB1e_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.o:                                             ; preds = %.lr.ph.split
  store ptr %i.as, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x i32> %i.u, ptr %i.f, align 8
  store i8 0, ptr %i.w, align 8
  %i.ba = invoke noundef i32 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangemINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivemEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  call void @llvm.experimental.noalias.scope.decl(metadata !1300)
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures:bb.a
_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyTmmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTymEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockStateNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB2u_5error9CoreErrorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2u_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !23, !noundef !5
  tail call void @_RNvMNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB2_9Semaphore7release(ptr noundef nonnull align 8 %i.a, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memory16MDBInMemoryShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !23, !noundef !5
  tail call void @_RNvMNtNtCsUrhh0HcRih_5tokio4sync15batch_semaphoreNtB2_9Semaphore7release(ptr noundef nonnull align 8 %i.a, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB1M_5error9CoreErrorEENtNtNtB19_6future6future6Future4pollB1M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [112 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !24, !noalias !1931, !noundef !5
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit.thread.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit.i, !prof !20

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCs31YAwBA1AlL_19xet_core_structures(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread25 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread28, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit.thread.i

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !18, !noalias !1932, !noundef !5 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !1932 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsUrhh0HcRih_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread25

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !1932
  br label %bb.f

.thread25:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i7.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread25

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i7.i, label %bb.h, label %.thread28

bb.h:                                             ; preds = %bb.g
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB1x_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEEB1x_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.c)
  br label %bb.l

.thread28:                                        ; preds = %.noexc, %bb.g
  %.sroa.03.011.i30.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i30.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i30.off8, ptr %i.b, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i30.off16, ptr %i.q, align 1
  %i.r = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !nonnull !5, !align !23, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !align !23, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  invoke void %i.w(ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.thread28
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.j:                                             ; preds = %.thread28
  %i.y = load i64, ptr %i.c, align 8, !range !9, !noundef !5
  %.not = icmp eq i64 %i.y, -3
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs31YAwBA1AlL_19xet_core_structures.exit20, label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs31YAwBA1AlL_19xet_core_structures.exit20: ; preds = %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @_RNvXs4_NtNtCsUrhh0HcRih_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs31YAwBA1AlL_19xet_core_structures.exit20

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4task4coop16RestoreOnPendingECs31YAwBA1AlL_19xet_core_structures.exit20, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.i, %.thread
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn24

.thread:                                          ; preds = %bb.i, %.thread25
  %.pn24 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread25 ], [ %i.x, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_NtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB1x_5error9CoreErrorENtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorEEEB1x_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.c) #26
          to label %bb.n unwind label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCskKLDkoKarTP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB1M_5error9CoreErrorEENtNtNtB19_3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCs31YAwBA1AlL_19xet_core_structures5errorNtB5_9CoreErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = load i64, ptr %0, align 8, !range !11, !noundef !5
  switch i64 %i.r, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.q, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.p, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 13, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.o, align 8
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 5, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.n, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 22, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.m, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 12, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.l, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 11, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.k, align 8
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 13, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.j, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 12, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.i, align 8
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 11, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
end_hunk_1
