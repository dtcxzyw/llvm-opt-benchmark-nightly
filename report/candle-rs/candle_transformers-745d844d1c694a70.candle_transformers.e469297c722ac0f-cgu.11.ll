Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.11?download=true
inline.NumInlined: 3716
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils10binary_mapNtCshigRrDowciq_6float86F8E4M3B12_NvYNtNtB6_2op7MinimumNtB1F_9BinaryOpT6f8e4m3ECs1dZk1kIfPhr_19candle_transformers:bb.a
.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.nu, align 8, !alias.scope !4148, !noalias !4149
  %i.oh = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.oi = mul i64 %i.oh, %i.of
  %i.oj = load i64, ptr %i.aa, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.ok = sub i64 %i.oj, %i.oi
  store i64 %i.ok, ptr %i.aa, align 8, !alias.scope !4148, !noalias !4149
  %i.ol = load i64, ptr %i.oe, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.om = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.on = mul i64 %i.om, %i.ol
  %i.oo = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.op = sub i64 %i.oo, %i.on
  store i64 %i.op, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4148, !noalias !4149
  %.not.i.us.6 = icmp eq i64 %i.nt, 0
  br i1 %.not.i.us.6, label %.loopexit.loopexit, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.oq = add nsw i64 %i.ii, -8                   ; 3 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.oq ; 4 uses
  %i.os = load i64, ptr %i.or, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.ot = add i64 %i.os, 1
  store i64 %i.ot, ptr %i.or, align 8, !alias.scope !4148, !noalias !4149
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.b, i64 %i.oq ; 3 uses
  %i.ou = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.ov = load i64, ptr %i.aa, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.ow = add i64 %i.ov, %i.ou
  store i64 %i.ow, ptr %i.aa, align 8, !alias.scope !4148, !noalias !4149
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.ox = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.oy = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.oz = add i64 %i.oy, %i.ox
  store i64 %i.oz, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4148, !noalias !4149
  %i.pa = load i64, ptr %i.or, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.oq ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 8, !alias.scope !4148, !noalias !4149, !noundef !5 ; 2 uses
  %i.pd = icmp ult i64 %i.pa, %i.pc
  br i1 %i.pd, label %.loopexit.loopexit, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.or, align 8, !alias.scope !4148, !noalias !4149
  %i.pe = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.pf = mul i64 %i.pe, %i.pc
  %i.pg = load i64, ptr %i.aa, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.ph = sub i64 %i.pg, %i.pf
  store i64 %i.ph, ptr %i.aa, align 8, !alias.scope !4148, !noalias !4149
  %i.pi = load i64, ptr %i.pb, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.pj = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.pk = mul i64 %i.pj, %i.pi
  %i.pl = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4148, !noalias !4149, !noundef !5
  %i.pm = sub i64 %i.pl, %i.pk
  store i64 %i.pm, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4148, !noalias !4149
  br label %.loopexit.loopexit

.lr.ph.i.split:                                   ; preds = %.lr.ph.i.us, %.lr.ph.i
  %.us-phi = phi i64 [ %i.ii, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.us ]
  %i.pn = add i64 %.us-phi, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.pn, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit.loopexit:                               ; preds = %.loopexit.i.us.7, %.lr.ph.i.split.us.7, %.loopexit.i.us.6, %.lr.ph.i.split.us.6, %.loopexit.i.us.5, %.lr.ph.i.split.us.5, %.loopexit.i.us.4, %.lr.ph.i.split.us.4, %.loopexit.i.us.3, %.lr.ph.i.split.us.3, %.loopexit.i.us.2, %.lr.ph.i.split.us.2, %.loopexit.i.us.1, %.lr.ph.i.split.us.1, %.loopexit.i.us, %.lr.ph.i.split.us
  %.pre = load i64, ptr %i.x, align 8, !alias.scope !4148, !noalias !4149
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph31.split.split
  %i.po = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.ik, %.lr.ph31.split.split ] ; 2 uses
  %i.pp = icmp eq i64 %i.po, 0
  br i1 %i.pp, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph31.split.splitthread-pre-split, !llvm.loop !4147

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %..loopexit_crit_edge.us, %.loopexit, %.lr.ph31.split, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.split.us.invoke:                                 ; preds = %bb.g, %bb.f
  %i.pq = phi i64 [ %i.hl, %bb.f ], [ %i.ho, %bb.g ]
  %i.pr = phi i64 [ %4, %bb.f ], [ %6, %bb.g ]
  %i.ps = phi ptr [ @4, %bb.f ], [ @5, %bb.g ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.pq, i64 noundef %i.pr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ps) #26
          to label %.split.us.cont unwind label %.loopexit.split-lp

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

bb.n:                                             ; preds = %bb.d
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.o:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MaximumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 4611686018427387904) %4, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef range(i64 0, 4611686018427387904) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit93:                                      ; preds = %bb.n, %.noexc60, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke389, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit93
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit93 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.ak unwind label %bb.aj

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not173 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.082.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4208
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4208
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph172, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph172 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph172 ], [ %.sroa.4.0.copyload263, %.loopexit ] ; 12 uses
  %.sroa.082.0.copyload = phi i64 [ %.sroa.082.0.copyload.pre, %.lr.ph172 ], [ %.sroa.082.0.copyload260, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph172 ], [ %i.kq, %.loopexit ]
  %.sroa.0.0170 = phi i64 [ 0, %.lr.ph172 ], [ %i.kp, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4207, !noalias !4208
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit92.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4207, !noalias !4208
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit92.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4207, !noalias !4208
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit92.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4207, !noalias !4208
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit92.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4207, !noalias !4208
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit92.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4207, !noalias !4208
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit92.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4207, !noalias !4208
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit92.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4207, !noalias !4208
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit92.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4207, !noalias !4208
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit92.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4207, !noalias !4208
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit92.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4207, !noalias !4208
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4207, !noalias !4208
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit92.split.us, label %.lr.ph.i.split.us.5

end_hunk_0
begin_hunk_1_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MaximumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.ns, %.lr.ph.split.split.i.i.prol ]
  %i.ob = icmp eq i64 %i.nr, %.val.i.i62
  br i1 %i.ob, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check455:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check440 = icmp ult i64 %i.lf, 8
  %or.cond523 = or i1 %min.iters.check440, %diff.check418
  br i1 %or.cond523, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check455
  %min.iters.check442 = icmp ult i64 %i.lf, 16
  br i1 %min.iters.check442, label %vec.epilog.ph459, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %i.oc = and i64 %i.lf, 8
  %n.vec444 = and i64 %i.lf, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body445

vector.body445:                                   ; preds = %vector.ph443, %vector.body445
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %i.od = add i64 %index446, %.val.i.i62          ; 2 uses
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.od ; 2 uses
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.od ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %wide.load447 = load <8 x i16>, ptr %i.oe, align 2, !noalias !4218 ; 4 uses
  %wide.load448 = load <8 x i16>, ptr %i.og, align 2, !noalias !4218 ; 4 uses
  %i.oh = and <8 x i16> %wide.load447, splat (i16 32767) ; 2 uses
  %i.oi = and <8 x i16> %wide.load448, splat (i16 32767) ; 2 uses
  %i.oj = icmp samesign ugt <8 x i16> %i.oh, splat (i16 32640) ; 3 uses
  %i.ok = icmp samesign ugt <8 x i16> %i.oi, splat (i16 32640) ; 3 uses
  %i.ol = xor <8 x i1> %i.oj, splat (i1 true)
  %i.om = xor <8 x i1> %i.ok, splat (i1 true)
  %i.on = icmp sgt <8 x i16> %wide.load447, splat (i16 -1) ; 2 uses
  %i.oo = icmp sgt <8 x i16> %wide.load448, splat (i16 -1) ; 2 uses
  %i.op = or <8 x i1> %i.oj, %i.on
  %i.oq = xor <8 x i1> %i.op, splat (i1 true)
  %i.or = or <8 x i1> %i.ok, %i.oo
  %i.os = xor <8 x i1> %i.or, splat (i1 true)
  %i.ot = or <8 x i16> %i.oh, %broadcast.splat
  %i.ou = or <8 x i16> %i.oi, %broadcast.splat
  %i.ov = icmp eq <8 x i16> %i.ot, zeroinitializer
  %i.ow = icmp eq <8 x i16> %i.ou, zeroinitializer
  %i.ox = icmp uge <8 x i16> %wide.load447, %broadcast.splat
  %i.oy = icmp uge <8 x i16> %wide.load448, %broadcast.splat
  %i.oz = select <8 x i1> %i.oq, <8 x i1> %i.ov, <8 x i1> zeroinitializer
  %i.pa = select <8 x i1> %i.os, <8 x i1> %i.ow, <8 x i1> zeroinitializer
  %i.pb = and <8 x i1> %i.on, %i.ox
  %i.pc = select <8 x i1> %i.ol, <8 x i1> %i.pb, <8 x i1> zeroinitializer
  %i.pd = and <8 x i1> %i.oo, %i.oy
  %i.pe = select <8 x i1> %i.om, <8 x i1> %i.pd, <8 x i1> zeroinitializer
  %i.pf = or <8 x i1> %i.pc, %i.oz
  %i.pg = or <8 x i1> %i.pe, %i.pa
  %i.ph = or <8 x i1> %i.pf, %i.oj
  %i.pi = or <8 x i1> %i.pg, %i.ok
  %predphi449 = select <8 x i1> %i.ph, <8 x i16> %wide.load447, <8 x i16> %broadcast.splat
  %predphi450 = select <8 x i1> %i.pi, <8 x i16> %wide.load448, <8 x i16> %broadcast.splat
  %i.pj = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store <8 x i16> %predphi449, ptr %i.of, align 2, !alias.scope !4221, !noalias !4218
  store <8 x i16> %predphi450, ptr %i.pj, align 2, !alias.scope !4221, !noalias !4218
  %index.next451 = add nuw i64 %index446, 16      ; 2 uses
  %i.pk = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.pk, label %middle.block452, label %vector.body445, !llvm.loop !4201

middle.block452:                                  ; preds = %vector.body445
  %cmp.n453 = icmp eq i64 %i.lf, %n.vec444
  br i1 %cmp.n453, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check457

vec.epilog.iter.check457:                         ; preds = %middle.block452
  %min.epilog.iters.check458.not.not = icmp eq i64 %i.oc, 0
  br i1 %min.epilog.iters.check458.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph459, !prof !22

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check457
  %vec.epilog.resume.val454 = phi i64 [ %n.vec444, %vec.epilog.iter.check457 ], [ 0, %vector.main.loop.iter.check441 ]
  %n.vec460 = and i64 %i.lf, -8                   ; 3 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph459
  %index464 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph459 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pl = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pl
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pl
  %wide.load465 = load <8 x i16>, ptr %i.pm, align 2, !noalias !4218 ; 4 uses
  %i.po = and <8 x i16> %wide.load465, splat (i16 32767) ; 2 uses
  %i.pp = icmp samesign ugt <8 x i16> %i.po, splat (i16 32640) ; 3 uses
  %i.pq = xor <8 x i1> %i.pp, splat (i1 true)
  %i.pr = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.ps = or <8 x i1> %i.pp, %i.pr
  %i.pt = xor <8 x i1> %i.ps, splat (i1 true)
  %i.pu = or <8 x i16> %i.po, %broadcast.splat462
  %i.pv = icmp eq <8 x i16> %i.pu, zeroinitializer
  %i.pw = icmp uge <8 x i16> %wide.load465, %broadcast.splat462
  %i.px = select <8 x i1> %i.pt, <8 x i1> %i.pv, <8 x i1> zeroinitializer
  %i.py = and <8 x i1> %i.pr, %i.pw
  %i.pz = select <8 x i1> %i.pq, <8 x i1> %i.py, <8 x i1> zeroinitializer
  %i.qa = or <8 x i1> %i.pz, %i.px
  %i.qb = or <8 x i1> %i.qa, %i.pp
  %predphi466 = select <8 x i1> %i.qb, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat462
  store <8 x i16> %predphi466, ptr %i.pn, align 2, !alias.scope !4221, !noalias !4218
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qc = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.qc, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4202

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lf, %n.vec460
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check455, %vec.epilog.iter.check457, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check455 ], [ %n.vec444, %vec.epilog.iter.check457 ], [ %n.vec460, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qd, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qd = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.qe = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qe
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qe
  %.val8.us12.i.i = load i16, ptr %i.qf, align 2, !noalias !4218, !noundef !5 ; 6 uses
  %i.qh = and i16 %.val8.us12.i.i, 32767          ; 2 uses
  %i.qi = icmp samesign ugt i16 %i.qh, 32640
  br i1 %i.qi, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split.i.i.us.i.i, label %.split7.i.i.us.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.u
  %i.qj = or i16 %i.qh, %i.kt
  %.not.i.i.us.i.i = icmp eq i16 %i.qj, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

.split.i.i.us.i.i:                                ; preds = %bb.u
  %i.qk = icmp ult i16 %.val8.us12.i.i, %i.kt
  br i1 %i.qk, label %bb.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

bb.v:                                             ; preds = %.split.i.i.us.i.i, %.split7.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.v, %.split.i.i.us.i.i, %.split7.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.ql = phi i16 [ %i.kt, %bb.v ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.split.i.i.us.i.i ]
  store i16 %i.ql, ptr %i.qg, align 2, !alias.scope !4221, !noalias !4218
  %exitcond16.not.i.i = icmp eq i64 %i.qd, %i.lf
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4203

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qu, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qm = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qm
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qm
  %.val8.i.i = load i16, ptr %i.qn, align 2, !noalias !4218, !noundef !5 ; 4 uses
  %i.qp = and i16 %.val8.i.i, 32767
  %i.qq = icmp samesign ugt i16 %i.qp, 32640
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %i.qr = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.kt)
  %i.qs = or i1 %.not.i.i.i.i.i68, %i.qq
  %i.qt = select i1 %i.qs, i16 %.val8.i.i, i16 %i.qr
  store i16 %i.qt, ptr %i.qo, align 2, !alias.scope !4221, !noalias !4218
  %i.qu = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qv, align 2, !noalias !4218, !noundef !5 ; 4 uses
  %i.qx = and i16 %.val8.i.i.1, 32767
  %i.qy = icmp samesign ugt i16 %i.qx, 32640
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %i.qz = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.kt)
  %i.ra = or i1 %.not.i.i.i.i.i68.1, %i.qy
  %i.rb = select i1 %i.ra, i16 %.val8.i.i.1, i16 %i.qz
  store i16 %i.rb, ptr %i.qw, align 2, !alias.scope !4221, !noalias !4218
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qu, %i.lf
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i, !llvm.loop !4204

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block452, %vec.epilog.middle.block468, %middle.block429, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4217
  br label %.loopexit

bb.w:                                             ; preds = %bb.i
  %i.rc = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.rc, label %bb.x, label %.invoke389

bb.x:                                             ; preds = %bb.w
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.re = load i16, ptr %i.rd, align 2, !noundef !5 ; 9 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.rf = and i16 %i.re, 32767                    ; 3 uses
  %i.rg = icmp samesign ugt i16 %i.rf, 32640      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.re, -1            ; 2 uses
  %i.rh = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ri = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0170)
  %7 = mul i64 %i.v, %indvar
  %i.rj = sub i64 %i.ri, %7
  %i.rk = call i64 @llvm.umin.i64(i64 %i.rj, i64 %i.rh)
  %i.rl = call i64 @llvm.umin.i64(i64 %i.rk, i64 %i.aq) ; 2 uses
  %min.iters.check505 = icmp samesign ult i64 %i.rl, 8
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %.lr.ph
  %i.rm = add nuw nsw i64 %i.rl, 1                ; 2 uses
  %i.rn = and i64 %i.rm, 7                        ; 2 uses
  %i.ro = icmp eq i64 %i.rn, 0
  %i.rp = select i1 %i.ro, i64 8, i64 %i.rn
  %n.vec507 = sub nsw i64 %i.rm, %i.rp            ; 2 uses
  %broadcast.splatinsert508 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat509 = shufflevector <8 x i1> %broadcast.splatinsert508, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rq = xor <8 x i1> %broadcast.splat509, splat (i1 true)
  %broadcast.splatinsert510 = insertelement <8 x i16> poison, i16 %i.rf, i64 0
  %broadcast.splat511 = shufflevector <8 x i16> %broadcast.splatinsert510, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert512 = insertelement <8 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat513 = shufflevector <8 x i16> %broadcast.splatinsert512, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep555 = getelementptr [2 x i8], ptr %i.p, i64 %.sroa.0.0170
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph506
  %index515 = phi i64 [ 0, %vector.ph506 ], [ %index.next518, %vector.body514 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index515
  %wide.load516 = load <8 x i16>, ptr %gep, align 2 ; 6 uses
  %i.rr = and <8 x i16> %wide.load516, splat (i16 32767)
  %i.rs = icmp samesign ugt <8 x i16> %i.rr, splat (i16 32640)
  %i.rt = select i1 %i.rg, <8 x i1> splat (i1 true), <8 x i1> %i.rs ; 2 uses
  %i.ru = xor <8 x i1> %i.rt, splat (i1 true)     ; 2 uses
  %i.rv = icmp slt <8 x i16> %wide.load516, zeroinitializer ; 2 uses
  %i.rw = and <8 x i1> %i.ru, %i.rq
  %i.rx = icmp ule <8 x i16> %broadcast.splat513, %wide.load516
  %i.ry = or <8 x i16> %wide.load516, %broadcast.splat511
  %i.rz = icmp eq <8 x i16> %i.ry, zeroinitializer
  %i.sa = and <8 x i1> %broadcast.splat509, %i.ru
  %i.sb = icmp uge <8 x i16> %broadcast.splat513, %wide.load516
  %.not526 = or <8 x i1> %i.rv, %i.sb
  %i.sc = select <8 x i1> %i.sa, <8 x i1> %.not526, <8 x i1> zeroinitializer
  %i.sd = select <8 x i1> %i.rv, <8 x i1> %i.rx, <8 x i1> %i.rz
  %i.se = select <8 x i1> %i.rw, <8 x i1> %i.sd, <8 x i1> zeroinitializer
  %i.sf = or <8 x i1> %i.se, %i.sc
  %i.sg = or <8 x i1> %i.sf, %i.rt
  %predphi517 = select <8 x i1> %i.sg, <8 x i16> %broadcast.splat513, <8 x i16> %wide.load516
  %gep556 = getelementptr [2 x i8], ptr %invariant.gep555, i64 %index515
  store <8 x i16> %predphi517, ptr %gep556, align 2
  %index.next518 = add nuw i64 %index515, 8       ; 2 uses
  %i.sh = icmp eq i64 %index.next518, %n.vec507
  br i1 %i.sh, label %scalar.ph504.preheader, label %vector.body514, !llvm.loop !4205

scalar.ph504.preheader:                           ; preds = %vector.body514, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec507, %vector.body514 ]
  br label %scalar.ph504

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %bb.ac
  %.sroa.020.0167 = phi i64 [ %i.si, %bb.ac ], [ %.sroa.020.0167.ph, %scalar.ph504.preheader ] ; 4 uses
  %i.si = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.sj = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.rh
  br i1 %exitcond.not, label %.invoke389, label %bb.y

bb.y:                                             ; preds = %scalar.ph504
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.sj
  %i.sl = load i16, ptr %i.sk, align 2, !noundef !5 ; 6 uses
  %i.sm = and i16 %i.sl, 32767
  %i.sn = icmp samesign ugt i16 %i.sm, 32640
  %or.cond.i.i = select i1 %i.rg, i1 true, i1 %i.sn
  br i1 %or.cond.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not1.i.i = icmp sgt i16 %i.sl, -1             ; 2 uses
  br i1 %.not.i.i71, label %.split.i, label %bb.aa

.split.i:                                         ; preds = %bb.z
  %i.so = icmp ult i16 %i.re, %i.sl
  %spec.select.i.i = and i1 %.not1.i.i, %i.so
  br i1 %spec.select.i.i, label %bb.ab, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

bb.aa:                                            ; preds = %bb.z
  br i1 %.not1.i.i, label %.split4.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i

.split4.i:                                        ; preds = %bb.aa
  %i.sp = or i16 %i.sl, %i.rf
  %.not.i72 = icmp eq i16 %i.sp, 0
  br i1 %.not.i72, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.ab

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i: ; preds = %bb.aa
  %i.sq = icmp samesign ugt i16 %i.re, %i.sl
  br i1 %i.sq, label %bb.ab, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

bb.ab:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.ab, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i, %bb.y
  %i.sr = phi i16 [ %i.sl, %bb.ab ], [ %i.re, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i ], [ %i.re, %.split4.i ], [ %i.re, %.split.i ], [ %i.re, %bb.y ]
  %i.ss = add nuw nsw i64 %.sroa.020.0167, %.sroa.0.0170 ; 3 uses
  %i.st = icmp ult i64 %i.ss, %i.m
  br i1 %i.st, label %bb.ac, label %.invoke389

bb.ac:                                            ; preds = %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.ss
  store i16 %i.sr, ptr %i.su, align 2
  %exitcond257.not = icmp eq i64 %i.si, %i.v
  br i1 %exitcond257.not, label %.loopexit, label %scalar.ph504, !llvm.loop !4206

.lr.ph169:                                        ; preds = %bb.g, %bb.ai
  %.sroa.022.0168 = phi i64 [ %i.sv, %bb.ai ], [ 0, %bb.g ] ; 4 uses
  %i.sv = add nuw i64 %.sroa.022.0168, 1          ; 2 uses
  %i.sw = mul i64 %.sroa.022.0168, %i.x
  %i.sx = add i64 %i.sw, %.sroa.082.0.copyload    ; 3 uses
  %i.sy = icmp ult i64 %i.sx, %4
  br i1 %i.sy, label %bb.ad, label %.invoke389

bb.ad:                                            ; preds = %.lr.ph169
  %i.sz = mul i64 %.sroa.022.0168, %i.z
  %i.ta = add i64 %i.sz, %.sroa.4.0.copyload      ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %6
  br i1 %i.tb, label %bb.ae, label %.invoke389

bb.ae:                                            ; preds = %bb.ad
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.sx
  %i.td = load i16, ptr %i.tc, align 2, !noundef !5 ; 8 uses
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ta
  %i.tf = load i16, ptr %i.te, align 2, !noundef !5 ; 6 uses
  %i.tg = and i16 %i.td, 32767                    ; 2 uses
  %i.th = icmp samesign ugt i16 %i.tg, 32640
  %i.ti = and i16 %i.tf, 32767
  %i.tj = icmp samesign ugt i16 %i.ti, 32640
  %or.cond.i.i73 = select i1 %i.th, i1 true, i1 %i.tj
  br i1 %or.cond.i.i73, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i74 = icmp sgt i16 %i.td, -1
  %.not1.i.i75 = icmp sgt i16 %i.tf, -1           ; 2 uses
  br i1 %.not.i.i74, label %.split.i79, label %bb.ag

.split.i79:                                       ; preds = %bb.af
  %i.tk = icmp ult i16 %i.td, %i.tf
  %spec.select.i.i80 = and i1 %.not1.i.i75, %i.tk
  br i1 %spec.select.i.i80, label %bb.ah, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

bb.ag:                                            ; preds = %bb.af
  br i1 %.not1.i.i75, label %.split4.i77, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i76

.split4.i77:                                      ; preds = %bb.ag
  %i.tl = or i16 %i.tg, %i.tf
  %.not.i78 = icmp eq i16 %i.tl, 0
  br i1 %.not.i78, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, label %bb.ah

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i76: ; preds = %bb.ag
  %i.tm = icmp samesign ugt i16 %i.td, %i.tf
  br i1 %i.tm, label %bb.ah, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

bb.ah:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i76, %.split4.i77, %.split.i79
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81: ; preds = %bb.ah, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i76, %.split4.i77, %.split.i79, %bb.ae
  %i.tn = phi i16 [ %i.tf, %bb.ah ], [ %i.td, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i76 ], [ %i.td, %.split4.i77 ], [ %i.td, %.split.i79 ], [ %i.td, %bb.ae ]
  %i.to = add nuw nsw i64 %.sroa.022.0168, %.sroa.0.0170 ; 3 uses
  %i.tp = icmp ult i64 %i.to, %i.m
  br i1 %i.tp, label %bb.ai, label %.invoke389

bb.ai:                                            ; preds = %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.to
  store i16 %i.tn, ptr %i.tq, align 2
  %exitcond259.not = icmp eq i64 %i.sv, %i.v
  br i1 %exitcond259.not, label %.loopexit, label %.lr.ph169

bb.aj:                                            ; preds = %bb.d
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ak:                                            ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MinimumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 4611686018427387904) %4, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef range(i64 0, 4611686018427387904) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit93:                                      ; preds = %bb.n, %.noexc60, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke385, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit93
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit93 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.an unwind label %bb.am

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4278, !noalias !4279, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not173 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.082.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4279
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4279
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph172, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph172 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph172 ], [ %.sroa.4.0.copyload263, %.loopexit ] ; 12 uses
  %.sroa.082.0.copyload = phi i64 [ %.sroa.082.0.copyload.pre, %.lr.ph172 ], [ %.sroa.082.0.copyload260, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph172 ], [ %i.ku, %.loopexit ]
  %.sroa.0.0170 = phi i64 [ 0, %.lr.ph172 ], [ %i.kt, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4278, !noalias !4279
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4278, !noalias !4279, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit92.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4278, !noalias !4279
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4278, !noalias !4279, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit92.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4278, !noalias !4279
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit92.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4278, !noalias !4279
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4278, !noalias !4279, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit92.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4278, !noalias !4279
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit92.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4278, !noalias !4279
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4278, !noalias !4279, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit92.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4278, !noalias !4279
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit92.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4278, !noalias !4279
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4278, !noalias !4279, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit92.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4278, !noalias !4279
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit92.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4278, !noalias !4279
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4278, !noalias !4279, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit92.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4278, !noalias !4279
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4278, !noalias !4279
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4278, !noalias !4279
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit92.split.us, label %.lr.ph.i.split.us.5

end_hunk_1
begin_hunk_2_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MinimumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  br i1 %i.od, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check453:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check436 = icmp ult i64 %i.lj, 8
  %or.cond523 = or i1 %min.iters.check436, %diff.check414
  br i1 %or.cond523, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check453
  %min.iters.check438 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check438, label %vec.epilog.ph457, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.oe = and i64 %i.lj, 8
  %n.vec440 = and i64 %i.lj, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert441 = insertelement <8 x i16> poison, i16 %i.lk, i64 0
  %broadcast.splat442 = shufflevector <8 x i16> %broadcast.splatinsert441, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph439, %vector.body443
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next449, %vector.body443 ] ; 2 uses
  %i.of = add i64 %index444, %.val.i.i62          ; 2 uses
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.of ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.of ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load445 = load <8 x i16>, ptr %i.og, align 2, !noalias !4289 ; 5 uses
  %wide.load446 = load <8 x i16>, ptr %i.oi, align 2, !noalias !4289 ; 5 uses
  %i.oj = and <8 x i16> %wide.load445, splat (i16 32767)
  %i.ok = and <8 x i16> %wide.load446, splat (i16 32767)
  %i.ol = icmp samesign ugt <8 x i16> %i.oj, splat (i16 32640) ; 3 uses
  %i.om = icmp samesign ugt <8 x i16> %i.ok, splat (i16 32640) ; 3 uses
  %i.on = xor <8 x i1> %i.ol, splat (i1 true)
  %i.oo = xor <8 x i1> %i.om, splat (i1 true)
  %i.op = icmp sgt <8 x i16> %wide.load445, splat (i16 -1) ; 2 uses
  %i.oq = icmp sgt <8 x i16> %wide.load446, splat (i16 -1) ; 2 uses
  %i.or = or <8 x i1> %i.ol, %i.op
  %i.os = xor <8 x i1> %i.or, splat (i1 true)
  %i.ot = or <8 x i1> %i.om, %i.oq
  %i.ou = xor <8 x i1> %i.ot, splat (i1 true)
  %i.ov = icmp uge <8 x i16> %wide.load445, %broadcast.splat
  %i.ow = icmp uge <8 x i16> %wide.load446, %broadcast.splat
  %i.ox = or <8 x i16> %wide.load445, %broadcast.splat442
  %i.oy = or <8 x i16> %wide.load446, %broadcast.splat442
  %i.oz = icmp eq <8 x i16> %i.ox, zeroinitializer
  %i.pa = icmp eq <8 x i16> %i.oy, zeroinitializer
  %i.pb = select <8 x i1> %i.os, <8 x i1> %i.ov, <8 x i1> zeroinitializer
  %i.pc = select <8 x i1> %i.ou, <8 x i1> %i.ow, <8 x i1> zeroinitializer
  %i.pd = and <8 x i1> %i.op, %i.oz
  %i.pe = select <8 x i1> %i.on, <8 x i1> %i.pd, <8 x i1> zeroinitializer
  %i.pf = and <8 x i1> %i.oq, %i.pa
  %i.pg = select <8 x i1> %i.oo, <8 x i1> %i.pf, <8 x i1> zeroinitializer
  %i.ph = or <8 x i1> %i.pe, %i.pb
  %i.pi = or <8 x i1> %i.pg, %i.pc
  %i.pj = or <8 x i1> %i.ph, %i.ol
  %i.pk = or <8 x i1> %i.pi, %i.om
  %predphi447 = select <8 x i1> %i.pj, <8 x i16> %wide.load445, <8 x i16> %broadcast.splat
  %predphi448 = select <8 x i1> %i.pk, <8 x i16> %wide.load446, <8 x i16> %broadcast.splat
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store <8 x i16> %predphi447, ptr %i.oh, align 2, !alias.scope !4292, !noalias !4289
  store <8 x i16> %predphi448, ptr %i.pl, align 2, !alias.scope !4292, !noalias !4289
  %index.next449 = add nuw i64 %index444, 16      ; 2 uses
  %i.pm = icmp eq i64 %index.next449, %n.vec440
  br i1 %i.pm, label %middle.block450, label %vector.body443, !llvm.loop !4272

middle.block450:                                  ; preds = %vector.body443
  %cmp.n451 = icmp eq i64 %i.lj, %n.vec440
  br i1 %cmp.n451, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block450
  %min.epilog.iters.check456.not.not = icmp eq i64 %i.oe, 0
  br i1 %min.epilog.iters.check456.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph457, !prof !22

vec.epilog.ph457:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check455
  %vec.epilog.resume.val452 = phi i64 [ %n.vec440, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec458 = and i64 %i.lj, -8                   ; 3 uses
  %broadcast.splatinsert459 = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat460 = shufflevector <8 x i16> %broadcast.splatinsert459, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.lk, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph457
  %index464 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph457 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pn = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pn
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pn
  %wide.load465 = load <8 x i16>, ptr %i.po, align 2, !noalias !4289 ; 5 uses
  %i.pq = and <8 x i16> %wide.load465, splat (i16 32767)
  %i.pr = icmp samesign ugt <8 x i16> %i.pq, splat (i16 32640) ; 3 uses
  %i.ps = xor <8 x i1> %i.pr, splat (i1 true)
  %i.pt = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.pu = or <8 x i1> %i.pr, %i.pt
  %i.pv = xor <8 x i1> %i.pu, splat (i1 true)
  %i.pw = icmp uge <8 x i16> %wide.load465, %broadcast.splat460
  %i.px = or <8 x i16> %wide.load465, %broadcast.splat462
  %i.py = icmp eq <8 x i16> %i.px, zeroinitializer
  %i.pz = select <8 x i1> %i.pv, <8 x i1> %i.pw, <8 x i1> zeroinitializer
  %i.qa = and <8 x i1> %i.pt, %i.py
  %i.qb = select <8 x i1> %i.ps, <8 x i1> %i.qa, <8 x i1> zeroinitializer
  %i.qc = or <8 x i1> %i.qb, %i.pz
  %i.qd = or <8 x i1> %i.qc, %i.pr
  %predphi466 = select <8 x i1> %i.qd, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat460
  store <8 x i16> %predphi466, ptr %i.pp, align 2, !alias.scope !4292, !noalias !4289
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qe = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.qe, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4273

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lj, %n.vec458
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check453, %vec.epilog.iter.check455, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check453 ], [ %n.vec440, %vec.epilog.iter.check455 ], [ %n.vec458, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qf, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qf = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.qg = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qg
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qg
  %.val8.us12.i.i = load i16, ptr %i.qh, align 2, !noalias !4289, !noundef !5 ; 7 uses
  %i.qj = and i16 %.val8.us12.i.i, 32767
  %i.qk = icmp samesign ugt i16 %i.qj, 32640
  br i1 %i.qk, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split7.i.i.us.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i: ; preds = %bb.v
  %i.ql = icmp ult i16 %.val8.us12.i.i, %i.kx
  br i1 %i.ql, label %bb.w, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.v
  %i.qm = or i16 %.val8.us12.i.i, %i.lk
  %.not.i.i.us.i.i = icmp eq i16 %i.qm, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.w

bb.w:                                             ; preds = %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.w, %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qn = phi i16 [ %i.kx, %bb.w ], [ %.val8.us12.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ]
  store i16 %i.qn, ptr %i.qi, align 2, !alias.scope !4292, !noalias !4289
  %exitcond16.not.i.i = icmp eq i64 %i.qf, %i.lj
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4274

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qu, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qo = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qo
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qo
  %.val8.i.i = load i16, ptr %i.qp, align 2, !noalias !4289, !noundef !5 ; 4 uses
  %i.qr = and i16 %.val8.i.i, 32767
  %i.qs = icmp samesign ult i16 %i.qr, 32641
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %or.cond.i.i = and i1 %.not.i.i.i.i.i68, %i.qs
  %spec.select.i.i = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.kx)
  %i.qt = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %.val8.i.i
  store i16 %i.qt, ptr %i.qq, align 2, !alias.scope !4292, !noalias !4289
  %i.qu = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qv, align 2, !noalias !4289, !noundef !5 ; 4 uses
  %i.qx = and i16 %.val8.i.i.1, 32767
  %i.qy = icmp samesign ult i16 %i.qx, 32641
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %or.cond.i.i.1 = and i1 %.not.i.i.i.i.i68.1, %i.qy
  %spec.select.i.i.1 = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.kx)
  %i.qz = select i1 %or.cond.i.i.1, i16 %spec.select.i.i.1, i16 %.val8.i.i.1
  store i16 %i.qz, ptr %i.qw, align 2, !alias.scope !4292, !noalias !4289
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qu, %i.lj
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i, !llvm.loop !4275

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block450, %vec.epilog.middle.block468, %middle.block425, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4288
  br label %.loopexit

bb.x:                                             ; preds = %bb.i
  %i.ra = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.ra, label %bb.y, label %.invoke385

bb.y:                                             ; preds = %bb.x
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.rc = load i16, ptr %i.rb, align 2, !noundef !5 ; 11 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.rd = and i16 %i.rc, 32767
  %i.re = icmp samesign ugt i16 %i.rd, 32640      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.rc, -1            ; 2 uses
  %i.rf = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.rg = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0170)
  %7 = mul i64 %i.v, %indvar
  %i.rh = sub i64 %i.rg, %7
  %i.ri = call i64 @llvm.umin.i64(i64 %i.rh, i64 %i.rf)
  %i.rj = call i64 @llvm.umin.i64(i64 %i.ri, i64 %i.aq) ; 2 uses
  %min.iters.check505 = icmp samesign ult i64 %i.rj, 8
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %.lr.ph
  %i.rk = add nuw nsw i64 %i.rj, 1                ; 2 uses
  %i.rl = and i64 %i.rk, 7                        ; 2 uses
  %i.rm = icmp eq i64 %i.rl, 0
  %i.rn = select i1 %i.rm, i64 8, i64 %i.rl
  %n.vec507 = sub nsw i64 %i.rk, %i.rn            ; 2 uses
  %broadcast.splatinsert508 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat509 = shufflevector <8 x i1> %broadcast.splatinsert508, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i1> poison, i1 %i.re, i64 0
  %broadcast.splat511 = shufflevector <8 x i1> %broadcast.splatinsert510, <8 x i1> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ro = xor <8 x i1> %broadcast.splat511, splat (i1 true)
  %i.rp = xor <8 x i1> %broadcast.splat509, splat (i1 true)
  %broadcast.splatinsert512 = insertelement <8 x i16> poison, i16 %i.rc, i64 0
  %broadcast.splat513 = shufflevector <8 x i16> %broadcast.splatinsert512, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep552 = getelementptr [2 x i8], ptr %i.p, i64 %.sroa.0.0170
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph506
  %index515 = phi i64 [ 0, %vector.ph506 ], [ %index.next518, %vector.body514 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index515
  %wide.load516 = load <8 x i16>, ptr %gep, align 2 ; 5 uses
  %i.rq = and <8 x i16> %wide.load516, splat (i16 32767) ; 2 uses
  %i.rr = icmp samesign ugt <8 x i16> %i.rq, splat (i16 32640) ; 2 uses
  %i.rs = select <8 x i1> %broadcast.splat511, <8 x i1> splat (i1 true), <8 x i1> %i.rr
  %i.rt = xor <8 x i1> %i.rs, splat (i1 true)     ; 2 uses
  %i.ru = icmp slt <8 x i16> %wide.load516, zeroinitializer ; 3 uses
  %i.rv = and <8 x i1> %i.rt, %i.rp
  %i.rw = icmp ult <8 x i16> %broadcast.splat513, %wide.load516
  %i.rx = and <8 x i1> %i.ru, %i.rw
  %i.ry = and <8 x i1> %broadcast.splat509, %i.rt ; 2 uses
  %i.rz = xor <8 x i1> %i.ru, splat (i1 true)
  %i.sa = icmp ule <8 x i16> %broadcast.splat513, %wide.load516
  %i.sb = select <8 x i1> %i.ry, <8 x i1> %i.ru, <8 x i1> zeroinitializer
  %i.sc = or <8 x i16> %i.rq, %broadcast.splat513
  %i.sd = icmp eq <8 x i16> %i.sc, zeroinitializer
  %i.se = select <8 x i1> %i.ro, <8 x i1> %i.rr, <8 x i1> zeroinitializer
  %i.sf = and <8 x i1> %i.sa, %i.rz
  %i.sg = select <8 x i1> %i.ry, <8 x i1> %i.sf, <8 x i1> zeroinitializer
  %i.sh = select <8 x i1> %i.sb, <8 x i1> %i.sd, <8 x i1> zeroinitializer
  %i.si = xor <8 x i1> %i.rx, splat (i1 true)
  %i.sj = select <8 x i1> %i.rv, <8 x i1> %i.si, <8 x i1> zeroinitializer
  %i.sk = or <8 x i1> %i.sj, %i.sh
  %i.sl = or <8 x i1> %i.sk, %i.sg
  %i.sm = or <8 x i1> %i.sl, %i.se
  %i.sn = or <8 x i1> %i.sm, %broadcast.splat511
  %predphi517 = select <8 x i1> %i.sn, <8 x i16> %broadcast.splat513, <8 x i16> %wide.load516
  %gep553 = getelementptr [2 x i8], ptr %invariant.gep552, i64 %index515
  store <8 x i16> %predphi517, ptr %gep553, align 2
  %index.next518 = add nuw i64 %index515, 8       ; 2 uses
  %i.so = icmp eq i64 %index.next518, %n.vec507
  br i1 %i.so, label %scalar.ph504.preheader, label %vector.body514, !llvm.loop !4276

scalar.ph504.preheader:                           ; preds = %vector.body514, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec507, %vector.body514 ]
  br label %scalar.ph504

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %bb.ae
  %.sroa.020.0167 = phi i64 [ %i.sp, %bb.ae ], [ %.sroa.020.0167.ph, %scalar.ph504.preheader ] ; 4 uses
  %i.sp = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.sq = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.rf
  br i1 %exitcond.not, label %.invoke385, label %bb.z

bb.z:                                             ; preds = %scalar.ph504
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.sq
  %i.ss = load i16, ptr %i.sr, align 2, !noundef !5 ; 5 uses
  br i1 %i.re, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.st = and i16 %i.ss, 32767                    ; 2 uses
  %i.su = icmp samesign ugt i16 %i.st, 32640
  br i1 %i.su, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not1.i.i = icmp slt i16 %i.ss, 0              ; 2 uses
  br i1 %.not.i.i71, label %bb.ac, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not1.i.i, label %.split5.i, label %.split.i

.split.i:                                         ; preds = %bb.ac
  %i.sv = icmp samesign ugt i16 %i.rc, %i.ss
  br i1 %i.sv, label %bb.ad, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

.split5.i:                                        ; preds = %bb.ac
  %i.sw = or i16 %i.st, %i.rc
  %.not.i73 = icmp eq i16 %i.sw, 0
  br i1 %.not.i73, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.ad

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i: ; preds = %bb.ab
  %i.sx = icmp ult i16 %i.rc, %i.ss
  %spec.select.i.i72 = and i1 %.not1.i.i, %i.sx
  br i1 %spec.select.i.i72, label %bb.ad, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

bb.ad:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i, %.split5.i, %.split.i
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.ad, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i, %.split5.i, %.split.i, %bb.aa, %bb.z
  %i.sy = phi i16 [ %i.ss, %bb.ad ], [ %i.rc, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i ], [ %i.rc, %.split5.i ], [ %i.rc, %.split.i ], [ %i.rc, %bb.z ], [ %i.rc, %bb.aa ]
  %i.sz = add nuw nsw i64 %.sroa.020.0167, %.sroa.0.0170 ; 3 uses
  %i.ta = icmp ult i64 %i.sz, %i.m
  br i1 %i.ta, label %bb.ae, label %.invoke385

bb.ae:                                            ; preds = %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.sz
  store i16 %i.sy, ptr %i.tb, align 2
  %exitcond257.not = icmp eq i64 %i.sp, %i.v
  br i1 %exitcond257.not, label %.loopexit, label %scalar.ph504, !llvm.loop !4277

.lr.ph169:                                        ; preds = %bb.g, %bb.al
  %.sroa.022.0168 = phi i64 [ %i.tc, %bb.al ], [ 0, %bb.g ] ; 4 uses
  %i.tc = add nuw i64 %.sroa.022.0168, 1          ; 2 uses
  %i.td = mul i64 %.sroa.022.0168, %i.x
  %i.te = add i64 %i.td, %.sroa.082.0.copyload    ; 3 uses
  %i.tf = icmp ult i64 %i.te, %4
  br i1 %i.tf, label %bb.af, label %.invoke385

bb.af:                                            ; preds = %.lr.ph169
  %i.tg = mul i64 %.sroa.022.0168, %i.z
  %i.th = add i64 %i.tg, %.sroa.4.0.copyload      ; 3 uses
  %i.ti = icmp ult i64 %i.th, %6
  br i1 %i.ti, label %bb.ag, label %.invoke385

bb.ag:                                            ; preds = %bb.af
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.te
  %i.tk = load i16, ptr %i.tj, align 2, !noundef !5 ; 10 uses
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.th
  %i.tm = load i16, ptr %i.tl, align 2, !noundef !5 ; 5 uses
  %i.tn = and i16 %i.tk, 32767
  %i.to = icmp samesign ugt i16 %i.tn, 32640
  br i1 %i.to, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.tp = and i16 %i.tm, 32767                    ; 2 uses
  %i.tq = icmp samesign ugt i16 %i.tp, 32640
  br i1 %i.tq, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i74 = icmp sgt i16 %i.tk, -1
  %.not1.i.i75 = icmp slt i16 %i.tm, 0            ; 2 uses
  br i1 %.not.i.i74, label %bb.aj, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i76

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not1.i.i75, label %.split5.i79, label %.split.i78

.split.i78:                                       ; preds = %bb.aj
  %i.tr = icmp samesign ugt i16 %i.tk, %i.tm
  br i1 %i.tr, label %bb.ak, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

.split5.i79:                                      ; preds = %bb.aj
  %i.ts = or i16 %i.tp, %i.tk
  %.not.i80 = icmp eq i16 %i.ts, 0
  br i1 %.not.i80, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, label %bb.ak

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i76: ; preds = %bb.ai
  %i.tt = icmp ult i16 %i.tk, %i.tm
  %spec.select.i.i77 = and i1 %.not1.i.i75, %i.tt
  br i1 %spec.select.i.i77, label %bb.ak, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

bb.ak:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i76, %.split5.i79, %.split.i78
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81: ; preds = %bb.ak, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i76, %.split5.i79, %.split.i78, %bb.ah, %bb.ag
  %i.tu = phi i16 [ %i.tm, %bb.ak ], [ %i.tk, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i76 ], [ %i.tk, %.split5.i79 ], [ %i.tk, %.split.i78 ], [ %i.tk, %bb.ag ], [ %i.tk, %bb.ah ]
  %i.tv = add nuw nsw i64 %.sroa.022.0168, %.sroa.0.0170 ; 3 uses
  %i.tw = icmp ult i64 %i.tv, %i.m
  br i1 %i.tw, label %bb.al, label %.invoke385

bb.al:                                            ; preds = %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.tv
  store i16 %i.tu, ptr %i.tx, align 2
  %exitcond259.not = icmp eq i64 %i.tc, %i.v
  br i1 %exitcond259.not, label %.loopexit, label %.lr.ph169

bb.am:                                            ; preds = %bb.d
  %i.ty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.an:                                            ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MaximumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 4611686018427387904) %4, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef range(i64 0, 4611686018427387904) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit93:                                      ; preds = %bb.n, %.noexc60, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke389, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit93
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit93 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsdsILkMb8ZHY_4half8binary163f16EECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.ak unwind label %bb.aj

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not173 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.082.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4350
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4350
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph172, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph172 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph172 ], [ %.sroa.4.0.copyload263, %.loopexit ] ; 12 uses
  %.sroa.082.0.copyload = phi i64 [ %.sroa.082.0.copyload.pre, %.lr.ph172 ], [ %.sroa.082.0.copyload260, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph172 ], [ %i.kq, %.loopexit ]
  %.sroa.0.0170 = phi i64 [ 0, %.lr.ph172 ], [ %i.kp, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4349, !noalias !4350
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit92.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4349, !noalias !4350
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit92.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4349, !noalias !4350
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit92.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4349, !noalias !4350
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit92.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4349, !noalias !4350
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit92.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4349, !noalias !4350
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit92.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4349, !noalias !4350
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit92.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4349, !noalias !4350
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit92.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4349, !noalias !4350
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit92.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4349, !noalias !4350
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit92.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4349, !noalias !4350
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4349, !noalias !4350
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit92.split.us, label %.lr.ph.i.split.us.5

end_hunk_2
begin_hunk_3_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MaximumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.ns, %.lr.ph.split.split.i.i.prol ]
  %i.ob = icmp eq i64 %i.nr, %.val.i.i62
  br i1 %i.ob, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check455:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check440 = icmp ult i64 %i.lf, 8
  %or.cond523 = or i1 %min.iters.check440, %diff.check418
  br i1 %or.cond523, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check455
  %min.iters.check442 = icmp ult i64 %i.lf, 16
  br i1 %min.iters.check442, label %vec.epilog.ph459, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %i.oc = and i64 %i.lf, 8
  %n.vec444 = and i64 %i.lf, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body445

vector.body445:                                   ; preds = %vector.ph443, %vector.body445
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %i.od = add i64 %index446, %.val.i.i62          ; 2 uses
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.od ; 2 uses
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.od ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %wide.load447 = load <8 x i16>, ptr %i.oe, align 2, !noalias !4360 ; 4 uses
  %wide.load448 = load <8 x i16>, ptr %i.og, align 2, !noalias !4360 ; 4 uses
  %i.oh = and <8 x i16> %wide.load447, splat (i16 32767) ; 2 uses
  %i.oi = and <8 x i16> %wide.load448, splat (i16 32767) ; 2 uses
  %i.oj = icmp samesign ugt <8 x i16> %i.oh, splat (i16 31744) ; 3 uses
  %i.ok = icmp samesign ugt <8 x i16> %i.oi, splat (i16 31744) ; 3 uses
  %i.ol = xor <8 x i1> %i.oj, splat (i1 true)
  %i.om = xor <8 x i1> %i.ok, splat (i1 true)
  %i.on = icmp sgt <8 x i16> %wide.load447, splat (i16 -1) ; 2 uses
  %i.oo = icmp sgt <8 x i16> %wide.load448, splat (i16 -1) ; 2 uses
  %i.op = or <8 x i1> %i.oj, %i.on
  %i.oq = xor <8 x i1> %i.op, splat (i1 true)
  %i.or = or <8 x i1> %i.ok, %i.oo
  %i.os = xor <8 x i1> %i.or, splat (i1 true)
  %i.ot = or <8 x i16> %i.oh, %broadcast.splat
  %i.ou = or <8 x i16> %i.oi, %broadcast.splat
  %i.ov = icmp eq <8 x i16> %i.ot, zeroinitializer
  %i.ow = icmp eq <8 x i16> %i.ou, zeroinitializer
  %i.ox = icmp uge <8 x i16> %wide.load447, %broadcast.splat
  %i.oy = icmp uge <8 x i16> %wide.load448, %broadcast.splat
  %i.oz = select <8 x i1> %i.oq, <8 x i1> %i.ov, <8 x i1> zeroinitializer
  %i.pa = select <8 x i1> %i.os, <8 x i1> %i.ow, <8 x i1> zeroinitializer
  %i.pb = and <8 x i1> %i.on, %i.ox
  %i.pc = select <8 x i1> %i.ol, <8 x i1> %i.pb, <8 x i1> zeroinitializer
  %i.pd = and <8 x i1> %i.oo, %i.oy
  %i.pe = select <8 x i1> %i.om, <8 x i1> %i.pd, <8 x i1> zeroinitializer
  %i.pf = or <8 x i1> %i.pc, %i.oz
  %i.pg = or <8 x i1> %i.pe, %i.pa
  %i.ph = or <8 x i1> %i.pf, %i.oj
  %i.pi = or <8 x i1> %i.pg, %i.ok
  %predphi449 = select <8 x i1> %i.ph, <8 x i16> %wide.load447, <8 x i16> %broadcast.splat
  %predphi450 = select <8 x i1> %i.pi, <8 x i16> %wide.load448, <8 x i16> %broadcast.splat
  %i.pj = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store <8 x i16> %predphi449, ptr %i.of, align 2, !alias.scope !4363, !noalias !4360
  store <8 x i16> %predphi450, ptr %i.pj, align 2, !alias.scope !4363, !noalias !4360
  %index.next451 = add nuw i64 %index446, 16      ; 2 uses
  %i.pk = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.pk, label %middle.block452, label %vector.body445, !llvm.loop !4343

middle.block452:                                  ; preds = %vector.body445
  %cmp.n453 = icmp eq i64 %i.lf, %n.vec444
  br i1 %cmp.n453, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check457

vec.epilog.iter.check457:                         ; preds = %middle.block452
  %min.epilog.iters.check458.not.not = icmp eq i64 %i.oc, 0
  br i1 %min.epilog.iters.check458.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph459, !prof !22

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check457
  %vec.epilog.resume.val454 = phi i64 [ %n.vec444, %vec.epilog.iter.check457 ], [ 0, %vector.main.loop.iter.check441 ]
  %n.vec460 = and i64 %i.lf, -8                   ; 3 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph459
  %index464 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph459 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pl = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pl
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pl
  %wide.load465 = load <8 x i16>, ptr %i.pm, align 2, !noalias !4360 ; 4 uses
  %i.po = and <8 x i16> %wide.load465, splat (i16 32767) ; 2 uses
  %i.pp = icmp samesign ugt <8 x i16> %i.po, splat (i16 31744) ; 3 uses
  %i.pq = xor <8 x i1> %i.pp, splat (i1 true)
  %i.pr = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.ps = or <8 x i1> %i.pp, %i.pr
  %i.pt = xor <8 x i1> %i.ps, splat (i1 true)
  %i.pu = or <8 x i16> %i.po, %broadcast.splat462
  %i.pv = icmp eq <8 x i16> %i.pu, zeroinitializer
  %i.pw = icmp uge <8 x i16> %wide.load465, %broadcast.splat462
  %i.px = select <8 x i1> %i.pt, <8 x i1> %i.pv, <8 x i1> zeroinitializer
  %i.py = and <8 x i1> %i.pr, %i.pw
  %i.pz = select <8 x i1> %i.pq, <8 x i1> %i.py, <8 x i1> zeroinitializer
  %i.qa = or <8 x i1> %i.pz, %i.px
  %i.qb = or <8 x i1> %i.qa, %i.pp
  %predphi466 = select <8 x i1> %i.qb, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat462
  store <8 x i16> %predphi466, ptr %i.pn, align 2, !alias.scope !4363, !noalias !4360
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qc = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.qc, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4344

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lf, %n.vec460
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check455, %vec.epilog.iter.check457, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check455 ], [ %n.vec444, %vec.epilog.iter.check457 ], [ %n.vec460, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qd, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qd = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.qe = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qe
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qe
  %.val8.us12.i.i = load i16, ptr %i.qf, align 2, !noalias !4360, !noundef !5 ; 6 uses
  %i.qh = and i16 %.val8.us12.i.i, 32767          ; 2 uses
  %i.qi = icmp samesign ugt i16 %i.qh, 31744
  br i1 %i.qi, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split.i.i.us.i.i, label %.split7.i.i.us.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.u
  %i.qj = or i16 %i.qh, %i.kt
  %.not.i.i.us.i.i = icmp eq i16 %i.qj, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

.split.i.i.us.i.i:                                ; preds = %bb.u
  %i.qk = icmp ult i16 %.val8.us12.i.i, %i.kt
  br i1 %i.qk, label %bb.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

bb.v:                                             ; preds = %.split.i.i.us.i.i, %.split7.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.v, %.split.i.i.us.i.i, %.split7.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.ql = phi i16 [ %i.kt, %bb.v ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.split.i.i.us.i.i ]
  store i16 %i.ql, ptr %i.qg, align 2, !alias.scope !4363, !noalias !4360
  %exitcond16.not.i.i = icmp eq i64 %i.qd, %i.lf
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4345

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qu, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qm = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qm
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qm
  %.val8.i.i = load i16, ptr %i.qn, align 2, !noalias !4360, !noundef !5 ; 4 uses
  %i.qp = and i16 %.val8.i.i, 32767
  %i.qq = icmp samesign ugt i16 %i.qp, 31744
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %i.qr = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.kt)
  %i.qs = or i1 %.not.i.i.i.i.i68, %i.qq
  %i.qt = select i1 %i.qs, i16 %.val8.i.i, i16 %i.qr
  store i16 %i.qt, ptr %i.qo, align 2, !alias.scope !4363, !noalias !4360
  %i.qu = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qv, align 2, !noalias !4360, !noundef !5 ; 4 uses
  %i.qx = and i16 %.val8.i.i.1, 32767
  %i.qy = icmp samesign ugt i16 %i.qx, 31744
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %i.qz = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.kt)
  %i.ra = or i1 %.not.i.i.i.i.i68.1, %i.qy
  %i.rb = select i1 %i.ra, i16 %.val8.i.i.1, i16 %i.qz
  store i16 %i.rb, ptr %i.qw, align 2, !alias.scope !4363, !noalias !4360
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qu, %i.lf
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i, !llvm.loop !4346

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block452, %vec.epilog.middle.block468, %middle.block429, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4359
  br label %.loopexit

bb.w:                                             ; preds = %bb.i
  %i.rc = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.rc, label %bb.x, label %.invoke389

bb.x:                                             ; preds = %bb.w
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.re = load i16, ptr %i.rd, align 2, !noundef !5 ; 9 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.rf = and i16 %i.re, 32767                    ; 3 uses
  %i.rg = icmp samesign ugt i16 %i.rf, 31744      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.re, -1            ; 2 uses
  %i.rh = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ri = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0170)
  %7 = mul i64 %i.v, %indvar
  %i.rj = sub i64 %i.ri, %7
  %i.rk = call i64 @llvm.umin.i64(i64 %i.rj, i64 %i.rh)
  %i.rl = call i64 @llvm.umin.i64(i64 %i.rk, i64 %i.aq) ; 2 uses
  %min.iters.check505 = icmp samesign ult i64 %i.rl, 8
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %.lr.ph
  %i.rm = add nuw nsw i64 %i.rl, 1                ; 2 uses
  %i.rn = and i64 %i.rm, 7                        ; 2 uses
  %i.ro = icmp eq i64 %i.rn, 0
  %i.rp = select i1 %i.ro, i64 8, i64 %i.rn
  %n.vec507 = sub nsw i64 %i.rm, %i.rp            ; 2 uses
  %broadcast.splatinsert508 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat509 = shufflevector <8 x i1> %broadcast.splatinsert508, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rq = xor <8 x i1> %broadcast.splat509, splat (i1 true)
  %broadcast.splatinsert510 = insertelement <8 x i16> poison, i16 %i.rf, i64 0
  %broadcast.splat511 = shufflevector <8 x i16> %broadcast.splatinsert510, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert512 = insertelement <8 x i16> poison, i16 %i.re, i64 0
  %broadcast.splat513 = shufflevector <8 x i16> %broadcast.splatinsert512, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep555 = getelementptr [2 x i8], ptr %i.p, i64 %.sroa.0.0170
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph506
  %index515 = phi i64 [ 0, %vector.ph506 ], [ %index.next518, %vector.body514 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index515
  %wide.load516 = load <8 x i16>, ptr %gep, align 2 ; 6 uses
  %i.rr = and <8 x i16> %wide.load516, splat (i16 32767)
  %i.rs = icmp samesign ugt <8 x i16> %i.rr, splat (i16 31744)
  %i.rt = select i1 %i.rg, <8 x i1> splat (i1 true), <8 x i1> %i.rs ; 2 uses
  %i.ru = xor <8 x i1> %i.rt, splat (i1 true)     ; 2 uses
  %i.rv = icmp slt <8 x i16> %wide.load516, zeroinitializer ; 2 uses
  %i.rw = and <8 x i1> %i.ru, %i.rq
  %i.rx = icmp ule <8 x i16> %broadcast.splat513, %wide.load516
  %i.ry = or <8 x i16> %wide.load516, %broadcast.splat511
  %i.rz = icmp eq <8 x i16> %i.ry, zeroinitializer
  %i.sa = and <8 x i1> %broadcast.splat509, %i.ru
  %i.sb = icmp uge <8 x i16> %broadcast.splat513, %wide.load516
  %.not526 = or <8 x i1> %i.rv, %i.sb
  %i.sc = select <8 x i1> %i.sa, <8 x i1> %.not526, <8 x i1> zeroinitializer
  %i.sd = select <8 x i1> %i.rv, <8 x i1> %i.rx, <8 x i1> %i.rz
  %i.se = select <8 x i1> %i.rw, <8 x i1> %i.sd, <8 x i1> zeroinitializer
  %i.sf = or <8 x i1> %i.se, %i.sc
  %i.sg = or <8 x i1> %i.sf, %i.rt
  %predphi517 = select <8 x i1> %i.sg, <8 x i16> %broadcast.splat513, <8 x i16> %wide.load516
  %gep556 = getelementptr [2 x i8], ptr %invariant.gep555, i64 %index515
  store <8 x i16> %predphi517, ptr %gep556, align 2
  %index.next518 = add nuw i64 %index515, 8       ; 2 uses
  %i.sh = icmp eq i64 %index.next518, %n.vec507
  br i1 %i.sh, label %scalar.ph504.preheader, label %vector.body514, !llvm.loop !4347

scalar.ph504.preheader:                           ; preds = %vector.body514, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec507, %vector.body514 ]
  br label %scalar.ph504

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %bb.ac
  %.sroa.020.0167 = phi i64 [ %i.si, %bb.ac ], [ %.sroa.020.0167.ph, %scalar.ph504.preheader ] ; 4 uses
  %i.si = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.sj = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.rh
  br i1 %exitcond.not, label %.invoke389, label %bb.y

bb.y:                                             ; preds = %scalar.ph504
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.sj
  %i.sl = load i16, ptr %i.sk, align 2, !noundef !5 ; 6 uses
  %i.sm = and i16 %i.sl, 32767
  %i.sn = icmp samesign ugt i16 %i.sm, 31744
  %or.cond.i.i = select i1 %i.rg, i1 true, i1 %i.sn
  br i1 %or.cond.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not1.i.i = icmp sgt i16 %i.sl, -1             ; 2 uses
  br i1 %.not.i.i71, label %.split.i, label %bb.aa

.split.i:                                         ; preds = %bb.z
  %i.so = icmp ult i16 %i.re, %i.sl
  %spec.select.i.i = and i1 %.not1.i.i, %i.so
  br i1 %spec.select.i.i, label %bb.ab, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

bb.aa:                                            ; preds = %bb.z
  br i1 %.not1.i.i, label %.split4.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i

.split4.i:                                        ; preds = %bb.aa
  %i.sp = or i16 %i.sl, %i.rf
  %.not.i72 = icmp eq i16 %i.sp, 0
  br i1 %.not.i72, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.ab

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i: ; preds = %bb.aa
  %i.sq = icmp samesign ugt i16 %i.re, %i.sl
  br i1 %i.sq, label %bb.ab, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

bb.ab:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.ab, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i, %bb.y
  %i.sr = phi i16 [ %i.sl, %bb.ab ], [ %i.re, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i ], [ %i.re, %.split4.i ], [ %i.re, %.split.i ], [ %i.re, %bb.y ]
  %i.ss = add nuw nsw i64 %.sroa.020.0167, %.sroa.0.0170 ; 3 uses
  %i.st = icmp ult i64 %i.ss, %i.m
  br i1 %i.st, label %bb.ac, label %.invoke389

bb.ac:                                            ; preds = %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.ss
  store i16 %i.sr, ptr %i.su, align 2
  %exitcond257.not = icmp eq i64 %i.si, %i.v
  br i1 %exitcond257.not, label %.loopexit, label %scalar.ph504, !llvm.loop !4348

.lr.ph169:                                        ; preds = %bb.g, %bb.ai
  %.sroa.022.0168 = phi i64 [ %i.sv, %bb.ai ], [ 0, %bb.g ] ; 4 uses
  %i.sv = add nuw i64 %.sroa.022.0168, 1          ; 2 uses
  %i.sw = mul i64 %.sroa.022.0168, %i.x
  %i.sx = add i64 %i.sw, %.sroa.082.0.copyload    ; 3 uses
  %i.sy = icmp ult i64 %i.sx, %4
  br i1 %i.sy, label %bb.ad, label %.invoke389

bb.ad:                                            ; preds = %.lr.ph169
  %i.sz = mul i64 %.sroa.022.0168, %i.z
  %i.ta = add i64 %i.sz, %.sroa.4.0.copyload      ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %6
  br i1 %i.tb, label %bb.ae, label %.invoke389

bb.ae:                                            ; preds = %bb.ad
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.sx
  %i.td = load i16, ptr %i.tc, align 2, !noundef !5 ; 8 uses
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ta
  %i.tf = load i16, ptr %i.te, align 2, !noundef !5 ; 6 uses
  %i.tg = and i16 %i.td, 32767                    ; 2 uses
  %i.th = icmp samesign ugt i16 %i.tg, 31744
  %i.ti = and i16 %i.tf, 32767
  %i.tj = icmp samesign ugt i16 %i.ti, 31744
  %or.cond.i.i73 = select i1 %i.th, i1 true, i1 %i.tj
  br i1 %or.cond.i.i73, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i74 = icmp sgt i16 %i.td, -1
  %.not1.i.i75 = icmp sgt i16 %i.tf, -1           ; 2 uses
  br i1 %.not.i.i74, label %.split.i79, label %bb.ag

.split.i79:                                       ; preds = %bb.af
  %i.tk = icmp ult i16 %i.td, %i.tf
  %spec.select.i.i80 = and i1 %.not1.i.i75, %i.tk
  br i1 %spec.select.i.i80, label %bb.ah, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

bb.ag:                                            ; preds = %bb.af
  br i1 %.not1.i.i75, label %.split4.i77, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i76

.split4.i77:                                      ; preds = %bb.ag
  %i.tl = or i16 %i.tg, %i.tf
  %.not.i78 = icmp eq i16 %i.tl, 0
  br i1 %.not.i78, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, label %bb.ah

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i76: ; preds = %bb.ag
  %i.tm = icmp samesign ugt i16 %i.td, %i.tf
  br i1 %i.tm, label %bb.ah, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

bb.ah:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i76, %.split4.i77, %.split.i79
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81: ; preds = %bb.ah, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i76, %.split4.i77, %.split.i79, %bb.ae
  %i.tn = phi i16 [ %i.tf, %bb.ah ], [ %i.td, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i76 ], [ %i.td, %.split4.i77 ], [ %i.td, %.split.i79 ], [ %i.td, %bb.ae ]
  %i.to = add nuw nsw i64 %.sroa.022.0168, %.sroa.0.0170 ; 3 uses
  %i.tp = icmp ult i64 %i.to, %i.m
  br i1 %i.tp, label %bb.ai, label %.invoke389

bb.ai:                                            ; preds = %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.to
  store i16 %i.tn, ptr %i.tq, align 2
  %exitcond259.not = icmp eq i64 %i.sv, %i.v
  br i1 %exitcond259.not, label %.loopexit, label %.lr.ph169

bb.aj:                                            ; preds = %bb.d
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ak:                                            ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MinimumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 4611686018427387904) %4, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef range(i64 0, 4611686018427387904) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit93:                                      ; preds = %bb.n, %.noexc60, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke385, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit93
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit93 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsdsILkMb8ZHY_4half8binary163f16EECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.an unwind label %bb.am

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4420, !noalias !4421, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not173 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.082.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4421
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4421
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph172, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph172 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph172 ], [ %.sroa.4.0.copyload263, %.loopexit ] ; 12 uses
  %.sroa.082.0.copyload = phi i64 [ %.sroa.082.0.copyload.pre, %.lr.ph172 ], [ %.sroa.082.0.copyload260, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph172 ], [ %i.ku, %.loopexit ]
  %.sroa.0.0170 = phi i64 [ 0, %.lr.ph172 ], [ %i.kt, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4420, !noalias !4421
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4420, !noalias !4421, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit92.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4420, !noalias !4421
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4420, !noalias !4421, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit92.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4420, !noalias !4421
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit92.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4420, !noalias !4421
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4420, !noalias !4421, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit92.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4420, !noalias !4421
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit92.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4420, !noalias !4421
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4420, !noalias !4421, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit92.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4420, !noalias !4421
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit92.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4420, !noalias !4421
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4420, !noalias !4421, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit92.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4420, !noalias !4421
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit92.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4420, !noalias !4421
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4420, !noalias !4421, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit92.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4420, !noalias !4421
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4420, !noalias !4421
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4420, !noalias !4421
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit92.split.us, label %.lr.ph.i.split.us.5

end_hunk_3
begin_hunk_4_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MinimumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  br i1 %i.od, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check453:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check436 = icmp ult i64 %i.lj, 8
  %or.cond523 = or i1 %min.iters.check436, %diff.check414
  br i1 %or.cond523, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check453
  %min.iters.check438 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check438, label %vec.epilog.ph457, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.oe = and i64 %i.lj, 8
  %n.vec440 = and i64 %i.lj, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert441 = insertelement <8 x i16> poison, i16 %i.lk, i64 0
  %broadcast.splat442 = shufflevector <8 x i16> %broadcast.splatinsert441, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph439, %vector.body443
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next449, %vector.body443 ] ; 2 uses
  %i.of = add i64 %index444, %.val.i.i62          ; 2 uses
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.of ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.of ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load445 = load <8 x i16>, ptr %i.og, align 2, !noalias !4431 ; 5 uses
  %wide.load446 = load <8 x i16>, ptr %i.oi, align 2, !noalias !4431 ; 5 uses
  %i.oj = and <8 x i16> %wide.load445, splat (i16 32767)
  %i.ok = and <8 x i16> %wide.load446, splat (i16 32767)
  %i.ol = icmp samesign ugt <8 x i16> %i.oj, splat (i16 31744) ; 3 uses
  %i.om = icmp samesign ugt <8 x i16> %i.ok, splat (i16 31744) ; 3 uses
  %i.on = xor <8 x i1> %i.ol, splat (i1 true)
  %i.oo = xor <8 x i1> %i.om, splat (i1 true)
  %i.op = icmp sgt <8 x i16> %wide.load445, splat (i16 -1) ; 2 uses
  %i.oq = icmp sgt <8 x i16> %wide.load446, splat (i16 -1) ; 2 uses
  %i.or = or <8 x i1> %i.ol, %i.op
  %i.os = xor <8 x i1> %i.or, splat (i1 true)
  %i.ot = or <8 x i1> %i.om, %i.oq
  %i.ou = xor <8 x i1> %i.ot, splat (i1 true)
  %i.ov = icmp uge <8 x i16> %wide.load445, %broadcast.splat
  %i.ow = icmp uge <8 x i16> %wide.load446, %broadcast.splat
  %i.ox = or <8 x i16> %wide.load445, %broadcast.splat442
  %i.oy = or <8 x i16> %wide.load446, %broadcast.splat442
  %i.oz = icmp eq <8 x i16> %i.ox, zeroinitializer
  %i.pa = icmp eq <8 x i16> %i.oy, zeroinitializer
  %i.pb = select <8 x i1> %i.os, <8 x i1> %i.ov, <8 x i1> zeroinitializer
  %i.pc = select <8 x i1> %i.ou, <8 x i1> %i.ow, <8 x i1> zeroinitializer
  %i.pd = and <8 x i1> %i.op, %i.oz
  %i.pe = select <8 x i1> %i.on, <8 x i1> %i.pd, <8 x i1> zeroinitializer
  %i.pf = and <8 x i1> %i.oq, %i.pa
  %i.pg = select <8 x i1> %i.oo, <8 x i1> %i.pf, <8 x i1> zeroinitializer
  %i.ph = or <8 x i1> %i.pe, %i.pb
  %i.pi = or <8 x i1> %i.pg, %i.pc
  %i.pj = or <8 x i1> %i.ph, %i.ol
  %i.pk = or <8 x i1> %i.pi, %i.om
  %predphi447 = select <8 x i1> %i.pj, <8 x i16> %wide.load445, <8 x i16> %broadcast.splat
  %predphi448 = select <8 x i1> %i.pk, <8 x i16> %wide.load446, <8 x i16> %broadcast.splat
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store <8 x i16> %predphi447, ptr %i.oh, align 2, !alias.scope !4434, !noalias !4431
  store <8 x i16> %predphi448, ptr %i.pl, align 2, !alias.scope !4434, !noalias !4431
  %index.next449 = add nuw i64 %index444, 16      ; 2 uses
  %i.pm = icmp eq i64 %index.next449, %n.vec440
  br i1 %i.pm, label %middle.block450, label %vector.body443, !llvm.loop !4414

middle.block450:                                  ; preds = %vector.body443
  %cmp.n451 = icmp eq i64 %i.lj, %n.vec440
  br i1 %cmp.n451, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block450
  %min.epilog.iters.check456.not.not = icmp eq i64 %i.oe, 0
  br i1 %min.epilog.iters.check456.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph457, !prof !22

vec.epilog.ph457:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check455
  %vec.epilog.resume.val452 = phi i64 [ %n.vec440, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec458 = and i64 %i.lj, -8                   ; 3 uses
  %broadcast.splatinsert459 = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat460 = shufflevector <8 x i16> %broadcast.splatinsert459, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.lk, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph457
  %index464 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph457 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pn = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pn
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pn
  %wide.load465 = load <8 x i16>, ptr %i.po, align 2, !noalias !4431 ; 5 uses
  %i.pq = and <8 x i16> %wide.load465, splat (i16 32767)
  %i.pr = icmp samesign ugt <8 x i16> %i.pq, splat (i16 31744) ; 3 uses
  %i.ps = xor <8 x i1> %i.pr, splat (i1 true)
  %i.pt = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.pu = or <8 x i1> %i.pr, %i.pt
  %i.pv = xor <8 x i1> %i.pu, splat (i1 true)
  %i.pw = icmp uge <8 x i16> %wide.load465, %broadcast.splat460
  %i.px = or <8 x i16> %wide.load465, %broadcast.splat462
  %i.py = icmp eq <8 x i16> %i.px, zeroinitializer
  %i.pz = select <8 x i1> %i.pv, <8 x i1> %i.pw, <8 x i1> zeroinitializer
  %i.qa = and <8 x i1> %i.pt, %i.py
  %i.qb = select <8 x i1> %i.ps, <8 x i1> %i.qa, <8 x i1> zeroinitializer
  %i.qc = or <8 x i1> %i.qb, %i.pz
  %i.qd = or <8 x i1> %i.qc, %i.pr
  %predphi466 = select <8 x i1> %i.qd, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat460
  store <8 x i16> %predphi466, ptr %i.pp, align 2, !alias.scope !4434, !noalias !4431
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qe = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.qe, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4415

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lj, %n.vec458
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check453, %vec.epilog.iter.check455, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check453 ], [ %n.vec440, %vec.epilog.iter.check455 ], [ %n.vec458, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qf, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qf = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.qg = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qg
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qg
  %.val8.us12.i.i = load i16, ptr %i.qh, align 2, !noalias !4431, !noundef !5 ; 7 uses
  %i.qj = and i16 %.val8.us12.i.i, 32767
  %i.qk = icmp samesign ugt i16 %i.qj, 31744
  br i1 %i.qk, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split7.i.i.us.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i: ; preds = %bb.v
  %i.ql = icmp ult i16 %.val8.us12.i.i, %i.kx
  br i1 %i.ql, label %bb.w, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.v
  %i.qm = or i16 %.val8.us12.i.i, %i.lk
  %.not.i.i.us.i.i = icmp eq i16 %i.qm, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.w

bb.w:                                             ; preds = %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.w, %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qn = phi i16 [ %i.kx, %bb.w ], [ %.val8.us12.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ]
  store i16 %i.qn, ptr %i.qi, align 2, !alias.scope !4434, !noalias !4431
  %exitcond16.not.i.i = icmp eq i64 %i.qf, %i.lj
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4416

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qu, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qo = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qo
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qo
  %.val8.i.i = load i16, ptr %i.qp, align 2, !noalias !4431, !noundef !5 ; 4 uses
  %i.qr = and i16 %.val8.i.i, 32767
  %i.qs = icmp samesign ult i16 %i.qr, 31745
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %or.cond.i.i = and i1 %.not.i.i.i.i.i68, %i.qs
  %spec.select.i.i = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.kx)
  %i.qt = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %.val8.i.i
  store i16 %i.qt, ptr %i.qq, align 2, !alias.scope !4434, !noalias !4431
  %i.qu = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qv, align 2, !noalias !4431, !noundef !5 ; 4 uses
  %i.qx = and i16 %.val8.i.i.1, 32767
  %i.qy = icmp samesign ult i16 %i.qx, 31745
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %or.cond.i.i.1 = and i1 %.not.i.i.i.i.i68.1, %i.qy
  %spec.select.i.i.1 = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.kx)
  %i.qz = select i1 %or.cond.i.i.1, i16 %spec.select.i.i.1, i16 %.val8.i.i.1
  store i16 %i.qz, ptr %i.qw, align 2, !alias.scope !4434, !noalias !4431
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qu, %i.lj
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i, !llvm.loop !4417

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block450, %vec.epilog.middle.block468, %middle.block425, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4430
  br label %.loopexit

bb.x:                                             ; preds = %bb.i
  %i.ra = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.ra, label %bb.y, label %.invoke385

bb.y:                                             ; preds = %bb.x
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.rc = load i16, ptr %i.rb, align 2, !noundef !5 ; 11 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.rd = and i16 %i.rc, 32767
  %i.re = icmp samesign ugt i16 %i.rd, 31744      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.rc, -1            ; 2 uses
  %i.rf = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.rg = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0170)
  %7 = mul i64 %i.v, %indvar
  %i.rh = sub i64 %i.rg, %7
  %i.ri = call i64 @llvm.umin.i64(i64 %i.rh, i64 %i.rf)
  %i.rj = call i64 @llvm.umin.i64(i64 %i.ri, i64 %i.aq) ; 2 uses
  %min.iters.check505 = icmp samesign ult i64 %i.rj, 8
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %.lr.ph
  %i.rk = add nuw nsw i64 %i.rj, 1                ; 2 uses
  %i.rl = and i64 %i.rk, 7                        ; 2 uses
  %i.rm = icmp eq i64 %i.rl, 0
  %i.rn = select i1 %i.rm, i64 8, i64 %i.rl
  %n.vec507 = sub nsw i64 %i.rk, %i.rn            ; 2 uses
  %broadcast.splatinsert508 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat509 = shufflevector <8 x i1> %broadcast.splatinsert508, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i1> poison, i1 %i.re, i64 0
  %broadcast.splat511 = shufflevector <8 x i1> %broadcast.splatinsert510, <8 x i1> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ro = xor <8 x i1> %broadcast.splat511, splat (i1 true)
  %i.rp = xor <8 x i1> %broadcast.splat509, splat (i1 true)
  %broadcast.splatinsert512 = insertelement <8 x i16> poison, i16 %i.rc, i64 0
  %broadcast.splat513 = shufflevector <8 x i16> %broadcast.splatinsert512, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep552 = getelementptr [2 x i8], ptr %i.p, i64 %.sroa.0.0170
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph506
  %index515 = phi i64 [ 0, %vector.ph506 ], [ %index.next518, %vector.body514 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index515
  %wide.load516 = load <8 x i16>, ptr %gep, align 2 ; 5 uses
  %i.rq = and <8 x i16> %wide.load516, splat (i16 32767) ; 2 uses
  %i.rr = icmp samesign ugt <8 x i16> %i.rq, splat (i16 31744) ; 2 uses
  %i.rs = select <8 x i1> %broadcast.splat511, <8 x i1> splat (i1 true), <8 x i1> %i.rr
  %i.rt = xor <8 x i1> %i.rs, splat (i1 true)     ; 2 uses
  %i.ru = icmp slt <8 x i16> %wide.load516, zeroinitializer ; 3 uses
  %i.rv = and <8 x i1> %i.rt, %i.rp
  %i.rw = icmp ult <8 x i16> %broadcast.splat513, %wide.load516
  %i.rx = and <8 x i1> %i.ru, %i.rw
  %i.ry = and <8 x i1> %broadcast.splat509, %i.rt ; 2 uses
  %i.rz = xor <8 x i1> %i.ru, splat (i1 true)
  %i.sa = icmp ule <8 x i16> %broadcast.splat513, %wide.load516
  %i.sb = select <8 x i1> %i.ry, <8 x i1> %i.ru, <8 x i1> zeroinitializer
  %i.sc = or <8 x i16> %i.rq, %broadcast.splat513
  %i.sd = icmp eq <8 x i16> %i.sc, zeroinitializer
  %i.se = select <8 x i1> %i.ro, <8 x i1> %i.rr, <8 x i1> zeroinitializer
  %i.sf = and <8 x i1> %i.sa, %i.rz
  %i.sg = select <8 x i1> %i.ry, <8 x i1> %i.sf, <8 x i1> zeroinitializer
  %i.sh = select <8 x i1> %i.sb, <8 x i1> %i.sd, <8 x i1> zeroinitializer
  %i.si = xor <8 x i1> %i.rx, splat (i1 true)
  %i.sj = select <8 x i1> %i.rv, <8 x i1> %i.si, <8 x i1> zeroinitializer
  %i.sk = or <8 x i1> %i.sj, %i.sh
  %i.sl = or <8 x i1> %i.sk, %i.sg
  %i.sm = or <8 x i1> %i.sl, %i.se
  %i.sn = or <8 x i1> %i.sm, %broadcast.splat511
  %predphi517 = select <8 x i1> %i.sn, <8 x i16> %broadcast.splat513, <8 x i16> %wide.load516
  %gep553 = getelementptr [2 x i8], ptr %invariant.gep552, i64 %index515
  store <8 x i16> %predphi517, ptr %gep553, align 2
  %index.next518 = add nuw i64 %index515, 8       ; 2 uses
  %i.so = icmp eq i64 %index.next518, %n.vec507
  br i1 %i.so, label %scalar.ph504.preheader, label %vector.body514, !llvm.loop !4418

scalar.ph504.preheader:                           ; preds = %vector.body514, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec507, %vector.body514 ]
  br label %scalar.ph504

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %bb.ae
  %.sroa.020.0167 = phi i64 [ %i.sp, %bb.ae ], [ %.sroa.020.0167.ph, %scalar.ph504.preheader ] ; 4 uses
  %i.sp = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.sq = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.rf
  br i1 %exitcond.not, label %.invoke385, label %bb.z

bb.z:                                             ; preds = %scalar.ph504
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.sq
  %i.ss = load i16, ptr %i.sr, align 2, !noundef !5 ; 5 uses
  br i1 %i.re, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.st = and i16 %i.ss, 32767                    ; 2 uses
  %i.su = icmp samesign ugt i16 %i.st, 31744
  br i1 %i.su, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not1.i.i = icmp slt i16 %i.ss, 0              ; 2 uses
  br i1 %.not.i.i71, label %bb.ac, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not1.i.i, label %.split5.i, label %.split.i

.split.i:                                         ; preds = %bb.ac
  %i.sv = icmp samesign ugt i16 %i.rc, %i.ss
  br i1 %i.sv, label %bb.ad, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

.split5.i:                                        ; preds = %bb.ac
  %i.sw = or i16 %i.st, %i.rc
  %.not.i73 = icmp eq i16 %i.sw, 0
  br i1 %.not.i73, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.ad

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i: ; preds = %bb.ab
  %i.sx = icmp ult i16 %i.rc, %i.ss
  %spec.select.i.i72 = and i1 %.not1.i.i, %i.sx
  br i1 %spec.select.i.i72, label %bb.ad, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

bb.ad:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i, %.split5.i, %.split.i
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.ad, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i, %.split5.i, %.split.i, %bb.aa, %bb.z
  %i.sy = phi i16 [ %i.ss, %bb.ad ], [ %i.rc, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i ], [ %i.rc, %.split5.i ], [ %i.rc, %.split.i ], [ %i.rc, %bb.z ], [ %i.rc, %bb.aa ]
  %i.sz = add nuw nsw i64 %.sroa.020.0167, %.sroa.0.0170 ; 3 uses
  %i.ta = icmp ult i64 %i.sz, %i.m
  br i1 %i.ta, label %bb.ae, label %.invoke385

bb.ae:                                            ; preds = %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.sz
  store i16 %i.sy, ptr %i.tb, align 2
  %exitcond257.not = icmp eq i64 %i.sp, %i.v
  br i1 %exitcond257.not, label %.loopexit, label %scalar.ph504, !llvm.loop !4419

.lr.ph169:                                        ; preds = %bb.g, %bb.al
  %.sroa.022.0168 = phi i64 [ %i.tc, %bb.al ], [ 0, %bb.g ] ; 4 uses
  %i.tc = add nuw i64 %.sroa.022.0168, 1          ; 2 uses
  %i.td = mul i64 %.sroa.022.0168, %i.x
  %i.te = add i64 %i.td, %.sroa.082.0.copyload    ; 3 uses
  %i.tf = icmp ult i64 %i.te, %4
  br i1 %i.tf, label %bb.af, label %.invoke385

bb.af:                                            ; preds = %.lr.ph169
  %i.tg = mul i64 %.sroa.022.0168, %i.z
  %i.th = add i64 %i.tg, %.sroa.4.0.copyload      ; 3 uses
  %i.ti = icmp ult i64 %i.th, %6
  br i1 %i.ti, label %bb.ag, label %.invoke385

bb.ag:                                            ; preds = %bb.af
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.te
  %i.tk = load i16, ptr %i.tj, align 2, !noundef !5 ; 10 uses
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.th
  %i.tm = load i16, ptr %i.tl, align 2, !noundef !5 ; 5 uses
  %i.tn = and i16 %i.tk, 32767
  %i.to = icmp samesign ugt i16 %i.tn, 31744
  br i1 %i.to, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.tp = and i16 %i.tm, 32767                    ; 2 uses
  %i.tq = icmp samesign ugt i16 %i.tp, 31744
  br i1 %i.tq, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i74 = icmp sgt i16 %i.tk, -1
  %.not1.i.i75 = icmp slt i16 %i.tm, 0            ; 2 uses
  br i1 %.not.i.i74, label %bb.aj, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i76

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not1.i.i75, label %.split5.i79, label %.split.i78

.split.i78:                                       ; preds = %bb.aj
  %i.tr = icmp samesign ugt i16 %i.tk, %i.tm
  br i1 %i.tr, label %bb.ak, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

.split5.i79:                                      ; preds = %bb.aj
  %i.ts = or i16 %i.tp, %i.tk
  %.not.i80 = icmp eq i16 %i.ts, 0
  br i1 %.not.i80, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, label %bb.ak

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i76: ; preds = %bb.ai
  %i.tt = icmp ult i16 %i.tk, %i.tm
  %spec.select.i.i77 = and i1 %.not1.i.i75, %i.tt
  br i1 %spec.select.i.i77, label %bb.ak, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

bb.ak:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i76, %.split5.i79, %.split.i78
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81: ; preds = %bb.ak, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i76, %.split5.i79, %.split.i78, %bb.ah, %bb.ag
  %i.tu = phi i16 [ %i.tm, %bb.ak ], [ %i.tk, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i76 ], [ %i.tk, %.split5.i79 ], [ %i.tk, %.split.i78 ], [ %i.tk, %bb.ag ], [ %i.tk, %bb.ah ]
  %i.tv = add nuw nsw i64 %.sroa.022.0168, %.sroa.0.0170 ; 3 uses
  %i.tw = icmp ult i64 %i.tv, %i.m
  br i1 %i.tw, label %bb.al, label %.invoke385

bb.al:                                            ; preds = %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.tv
  store i16 %i.tu, ptr %i.tx, align 2
  %exitcond259.not = icmp eq i64 %i.tc, %i.v
  br i1 %exitcond259.not, label %.loopexit, label %.lr.ph169

bb.am:                                            ; preds = %bb.d
  %i.ty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.an:                                            ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecdNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3f64NvYB1a_B1s_7f64_vecNvYB1a_B1s_14f64_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit79:                                      ; preds = %bb.n, %.noexc59, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke350, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit79
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit79 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not159 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.070.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4484
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4484
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph158, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph158 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph158 ], [ %.sroa.4.0.copyload246, %.loopexit ] ; 12 uses
  %.sroa.070.0.copyload = phi i64 [ %.sroa.070.0.copyload.pre, %.lr.ph158 ], [ %.sroa.070.0.copyload243, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph158 ], [ %i.km, %.loopexit ]
  %.sroa.0.0156 = phi i64 [ 0, %.lr.ph158 ], [ %i.kl, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4483, !noalias !4484
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit78.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4483, !noalias !4484
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit78.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4483, !noalias !4484
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit78.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4483, !noalias !4484
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit78.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4483, !noalias !4484
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit78.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4483, !noalias !4484
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit78.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4483, !noalias !4484
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit78.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4483, !noalias !4484
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit78.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4483, !noalias !4484
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit78.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4483, !noalias !4484
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit78.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4483, !noalias !4484
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4483, !noalias !4484
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4483, !noalias !4484
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit78.split.us, label %.lr.ph.i.split.us.5

end_hunk_4
begin_hunk_5_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecdNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3f64NvYB1a_B1s_7f64_vecNvYB1a_B1s_14f64_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.js = load double, ptr %i.jp, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.jt = fcmp olt double %i.jr, %i.js
  %..i.i.i.i.i.prol = select i1 %i.jt, double %i.js, double %i.jr
  store double %..i.i.i.i.i.prol, ptr %i.jq, align 8, !noalias !4492
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jl, %scalar.ph.prol ]
  %i.ju = icmp eq i64 %i.jk, %.val.i.i
  br i1 %i.ju, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op434 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kd, %scalar.ph ] ; 3 uses
  %i.jv = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jw = add i64 %i.jv, %i.ip                    ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jw
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jv
  %i.ka = load double, ptr %i.jx, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.kb = load double, ptr %i.jy, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.kc = fcmp olt double %i.ka, %i.kb
  %..i.i.i.i.i = select i1 %i.kc, double %i.kb, double %i.ka
  store double %..i.i.i.i.i, ptr %i.jz, align 8, !noalias !4492
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass435 = add i64 %.sroa.0.012.i.i, %invariant.op434 ; 2 uses
  %i.ke = add i64 %.reass435, %i.ip               ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.reass435
  %i.ki = load double, ptr %i.kf, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.kj = load double, ptr %i.kg, align 8, !noalias !4492, !noundef !5 ; 2 uses
  %i.kk = fcmp olt double %i.ki, %i.kj
  %..i.i.i.i.i.1 = select i1 %i.kk, double %i.kj, double %i.ki
  store double %..i.i.i.i.i.1, ptr %i.kh, align 8, !noalias !4492
  %exitcond.not.i.i.1 = icmp eq i64 %i.kd, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4464

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4485
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kl = add i64 %.sroa.0.0156, %i.v
  %i.km = load i64, ptr %i.aa, align 8, !alias.scope !4483, !noalias !4484, !noundef !5 ; 2 uses
  %i.kn = icmp eq i64 %i.km, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kn, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kp = load double, ptr %i.ko, align 8, !noundef !5 ; 7 uses
  %i.kq = add i64 %.sroa.070.0.copyload, %i.v     ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.070.0.copyload
  %.not = icmp ugt i64 %i.kq, %4
  %or.cond57 = or i1 %i.kr, %.not
  br i1 %or.cond57, label %.invoke, label %bb.p, !prof !17

.invoke350:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph155
  %i.ks = phi i64 [ %i.nk, %bb.v ], [ %i.mz, %bb.t ], [ %i.nh, %.lr.ph155 ], [ %i.nm, %bb.w ], [ %i.my, %.lr.ph ], [ %.sroa.070.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kt = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph155 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.ku = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph155 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ks, i64 noundef %i.kt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ku) #26
          to label %.cont351 unwind label %.loopexit.split-lp

.cont351:                                         ; preds = %.invoke350
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kv = add i64 %.sroa.0.0156, %i.v             ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %.sroa.0.0156
  %.not51 = icmp ugt i64 %i.kv, %i.m
  %or.cond58 = or i1 %i.kw, %.not51
  br i1 %or.cond58, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.0156 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4493
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.v
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtBZ_7IterMutdEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 %i.kx, ptr noundef nonnull readonly %i.kz, ptr noundef nonnull align 8 %i.ky, ptr noundef nonnull %i.la)
          to label %.noexc68 unwind label %.loopexit79

.noexc68:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4494)
  %.val.i.i61 = load i64, ptr %i.ai, align 8, !alias.scope !4494, !noalias !4495, !noundef !5 ; 8 uses
  %.val6.i.i62 = load i64, ptr %i.aj, align 8, !alias.scope !4494, !noalias !4495, !noundef !5 ; 4 uses
  %i.lb = sub i64 %.val6.i.i62, %.val.i.i61       ; 4 uses
  %.not.i.i63 = icmp eq i64 %.val6.i.i62, %.val.i.i61
  br i1 %.not.i.i63, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.noexc68
  %.val.i.i.i65 = load ptr, ptr %i.a, align 8, !alias.scope !4496, !noalias !4495, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !4496, !noalias !4495, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check381 = icmp ult i64 %i.lb, 4
  %.val1.i.i.i377 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i65378 = ptrtoaddr ptr %.val.i.i.i65 to i64
  %i.lc = sub i64 %.val.i.i.i65378, %.val1.i.i.i377
  %diff.check379 = icmp ugt i64 %i.lc, -32
  %or.cond405 = or i1 %min.iters.check381, %diff.check379
  br i1 %or.cond405, label %scalar.ph380.preheader, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.i.i64
  %n.vec383 = and i64 %i.lb, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next388, %vector.body384 ] ; 2 uses
  %i.ld = add i64 %index385, %.val.i.i61          ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.ld ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %wide.load386 = load <2 x double>, ptr %i.le, align 8, !noalias !4494 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.lg, align 8, !noalias !4494 ; 2 uses
  %i.lh = fcmp olt <2 x double> %wide.load386, %broadcast.splat
  %i.li = fcmp olt <2 x double> %wide.load387, %broadcast.splat
  %i.lj = select <2 x i1> %i.lh, <2 x double> %broadcast.splat, <2 x double> %wide.load386
  %i.lk = select <2 x i1> %i.li, <2 x double> %broadcast.splat, <2 x double> %wide.load387
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store <2 x double> %i.lj, ptr %i.lf, align 8, !alias.scope !4497, !noalias !4494
  store <2 x double> %i.lk, ptr %i.ll, align 8, !alias.scope !4497, !noalias !4494
  %index.next388 = add nuw i64 %index385, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.lm, label %middle.block389, label %vector.body384, !llvm.loop !4479

middle.block389:                                  ; preds = %vector.body384
  %cmp.n390 = icmp eq i64 %i.lb, %n.vec383
  br i1 %cmp.n390, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader

scalar.ph380.preheader:                           ; preds = %.lr.ph.i.i64, %middle.block389
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i64 ], [ %n.vec383, %middle.block389 ] ; 4 uses
  %i.ln = sub i64 %.val6.i.i62, %.val.i.i61
  %i.lo = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lp = add i64 %.val6.i.i62, %i.lo
  %xtraiter = and i64 %i.ln, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph380.prol.loopexit, label %scalar.ph380.prol

scalar.ph380.prol:                                ; preds = %scalar.ph380.preheader
  %i.lq = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lr = add i64 %.sroa.0.010.i.i.ph, %.val.i.i61 ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lr
  %.val8.i.i.prol = load double, ptr %i.ls, align 8, !noalias !4494, !noundef !5 ; 2 uses
  %i.lu = fcmp olt double %.val8.i.i.prol, %i.kp
  %..i.i.i.i.i66.prol = select i1 %i.lu, double %i.kp, double %.val8.i.i.prol
  store double %..i.i.i.i.i66.prol, ptr %i.lt, align 8, !alias.scope !4497, !noalias !4494
  br label %scalar.ph380.prol.loopexit

scalar.ph380.prol.loopexit:                       ; preds = %scalar.ph380.prol, %scalar.ph380.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph380.preheader ], [ %i.lq, %scalar.ph380.prol ]
  %i.lv = icmp eq i64 %i.lp, %.val.i.i61
  br i1 %i.lv, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader.new

scalar.ph380.preheader.new:                       ; preds = %scalar.ph380.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i61
  br label %scalar.ph380

scalar.ph380:                                     ; preds = %scalar.ph380, %scalar.ph380.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph380.preheader.new ], [ %i.ma, %scalar.ph380 ] ; 3 uses
  %i.lw = add i64 %.sroa.0.010.i.i, %.val.i.i61   ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lw
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lw
  %.val8.i.i = load double, ptr %i.lx, align 8, !noalias !4494, !noundef !5 ; 2 uses
  %i.lz = fcmp olt double %.val8.i.i, %i.kp
  %..i.i.i.i.i66 = select i1 %i.lz, double %i.kp, double %.val8.i.i
  store double %..i.i.i.i.i66, ptr %i.ly, align 8, !alias.scope !4497, !noalias !4494
  %i.ma = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %.reass
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load double, ptr %i.mb, align 8, !noalias !4494, !noundef !5 ; 2 uses
  %i.md = fcmp olt double %.val8.i.i.1, %i.kp
  %..i.i.i.i.i66.1 = select i1 %i.md, double %i.kp, double %.val8.i.i.1
  store double %..i.i.i.i.i66.1, ptr %i.mc, align 8, !alias.scope !4497, !noalias !4494
  %exitcond.not.i.i67.1 = icmp eq i64 %i.ma, %i.lb
  br i1 %exitcond.not.i.i67.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380, !llvm.loop !4480

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph380.prol.loopexit, %scalar.ph380, %middle.block389, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4493
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.me = icmp ult i64 %.sroa.070.0.copyload, %4
  br i1 %i.me, label %bb.s, label %.invoke350

bb.s:                                             ; preds = %bb.r
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload
  %i.mg = load double, ptr %i.mf, align 8, !noundef !5 ; 3 uses
  br i1 %.not159, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mh = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mi = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0156)
  %7 = mul i64 %i.v, %indvar
  %i.mj = sub i64 %i.mi, %7
  %i.mk = call i64 @llvm.umin.i64(i64 %i.mj, i64 %i.mh)
  %i.ml = call i64 @llvm.umin.i64(i64 %i.mk, i64 %i.aq) ; 2 uses
  %min.iters.check393 = icmp samesign ult i64 %i.ml, 4
  br i1 %min.iters.check393, label %.lr.ph.preheader408, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph.preheader
  %i.mm = add nuw nsw i64 %i.ml, 1                ; 2 uses
  %i.mn = and i64 %i.mm, 3                        ; 2 uses
  %i.mo = icmp eq i64 %i.mn, 0
  %i.mp = select i1 %i.mo, i64 4, i64 %i.mn
  %n.vec395 = sub nsw i64 %i.mm, %i.mp            ; 2 uses
  %broadcast.splatinsert396 = insertelement <2 x double> poison, double %i.mg, i64 0
  %broadcast.splat397 = shufflevector <2 x double> %broadcast.splatinsert396, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep432 = getelementptr [8 x i8], ptr %i.p, i64 %.sroa.0.0156
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph394
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next402, %vector.body398 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index399 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load400 = load <2 x double>, ptr %gep, align 8 ; 2 uses
  %wide.load401 = load <2 x double>, ptr %i.mq, align 8 ; 2 uses
  %i.mr = fcmp olt <2 x double> %broadcast.splat397, %wide.load400
  %i.ms = fcmp olt <2 x double> %broadcast.splat397, %wide.load401
  %i.mt = select <2 x i1> %i.mr, <2 x double> %wide.load400, <2 x double> %broadcast.splat397
  %i.mu = select <2 x i1> %i.ms, <2 x double> %wide.load401, <2 x double> %broadcast.splat397
  %gep433 = getelementptr [8 x i8], ptr %invariant.gep432, i64 %index399 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %gep433, i64 16
  store <2 x double> %i.mt, ptr %gep433, align 8
  store <2 x double> %i.mu, ptr %i.mv, align 8
  %index.next402 = add nuw i64 %index399, 4       ; 2 uses
  %i.mw = icmp eq i64 %index.next402, %n.vec395
  br i1 %i.mw, label %.lr.ph.preheader408, label %vector.body398, !llvm.loop !4481

.lr.ph.preheader408:                              ; preds = %vector.body398, %.lr.ph.preheader
  %.sroa.019.0153.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec395, %vector.body398 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader408, %bb.u
  %.sroa.019.0153 = phi i64 [ %i.mx, %bb.u ], [ %.sroa.019.0153.ph, %.lr.ph.preheader408 ] ; 4 uses
  %i.mx = add nuw nsw i64 %.sroa.019.0153, 1      ; 2 uses
  %i.my = add nuw nsw i64 %.sroa.019.0153, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.0153, %i.mh
  br i1 %exitcond.not, label %.invoke350, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mz = add nuw nsw i64 %.sroa.019.0153, %.sroa.0.0156 ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.m
  br i1 %i.na, label %bb.u, label %.invoke350

bb.u:                                             ; preds = %bb.t
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.my
  %i.nc = load double, ptr %i.nb, align 8, !noundef !5 ; 2 uses
  %i.nd = fcmp olt double %i.mg, %i.nc
  %..i.i = select i1 %i.nd, double %i.nc, double %i.mg
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mz
  store double %..i.i, ptr %i.ne, align 8
  %exitcond241.not = icmp eq i64 %i.mx, %i.v
  br i1 %exitcond241.not, label %.loopexit, label %.lr.ph, !llvm.loop !4482

.lr.ph155:                                        ; preds = %bb.g, %bb.x
  %.sroa.021.0154 = phi i64 [ %i.nf, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nf = add nuw i64 %.sroa.021.0154, 1          ; 2 uses
  %i.ng = mul i64 %.sroa.021.0154, %i.x
  %i.nh = add i64 %i.ng, %.sroa.070.0.copyload    ; 3 uses
  %i.ni = icmp ult i64 %i.nh, %4
  br i1 %i.ni, label %bb.v, label %.invoke350

bb.v:                                             ; preds = %.lr.ph155
  %i.nj = mul i64 %.sroa.021.0154, %i.z
  %i.nk = add i64 %i.nj, %.sroa.4.0.copyload      ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %6
  br i1 %i.nl, label %bb.w, label %.invoke350

bb.w:                                             ; preds = %bb.v
  %i.nm = add nuw nsw i64 %.sroa.021.0154, %.sroa.0.0156 ; 3 uses
  %i.nn = icmp ult i64 %i.nm, %i.m
  br i1 %i.nn, label %bb.x, label %.invoke350

bb.x:                                             ; preds = %bb.w
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.nh
  %i.np = load double, ptr %i.no, align 8, !noundef !5 ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.nk
  %i.nr = load double, ptr %i.nq, align 8, !noundef !5 ; 2 uses
  %i.ns = fcmp olt double %i.np, %i.nr
  %..i.i69 = select i1 %i.ns, double %i.nr, double %i.np
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nm
  store double %..i.i69, ptr %i.nt, align 8
  %exitcond242.not = icmp eq i64 %i.nf, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph155

bb.y:                                             ; preds = %bb.d
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecdNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3f64NvYB1a_B1s_7f64_vecNvYB1a_B1s_14f64_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit79:                                      ; preds = %bb.n, %.noexc59, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke350, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit79
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit79 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecdEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not159 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.070.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4547
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4547
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph158, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph158 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph158 ], [ %.sroa.4.0.copyload246, %.loopexit ] ; 12 uses
  %.sroa.070.0.copyload = phi i64 [ %.sroa.070.0.copyload.pre, %.lr.ph158 ], [ %.sroa.070.0.copyload243, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph158 ], [ %i.km, %.loopexit ]
  %.sroa.0.0156 = phi i64 [ 0, %.lr.ph158 ], [ %i.kl, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4546, !noalias !4547
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit78.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4546, !noalias !4547
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit78.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4546, !noalias !4547
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit78.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4546, !noalias !4547
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit78.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4546, !noalias !4547
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit78.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4546, !noalias !4547
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit78.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4546, !noalias !4547
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit78.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4546, !noalias !4547
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit78.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4546, !noalias !4547
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit78.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4546, !noalias !4547
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit78.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4546, !noalias !4547
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4546, !noalias !4547
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4546, !noalias !4547
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit78.split.us, label %.lr.ph.i.split.us.5

end_hunk_5
begin_hunk_6_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecdNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3f64NvYB1a_B1s_7f64_vecNvYB1a_B1s_14f64_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.js = load double, ptr %i.jp, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.jt = fcmp ogt double %i.jr, %i.js
  %..i.i.i.i.i.prol = select i1 %i.jt, double %i.js, double %i.jr
  store double %..i.i.i.i.i.prol, ptr %i.jq, align 8, !noalias !4555
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jl, %scalar.ph.prol ]
  %i.ju = icmp eq i64 %i.jk, %.val.i.i
  br i1 %i.ju, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op434 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kd, %scalar.ph ] ; 3 uses
  %i.jv = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jw = add i64 %i.jv, %i.ip                    ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jw
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jv
  %i.ka = load double, ptr %i.jx, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.kb = load double, ptr %i.jy, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.kc = fcmp ogt double %i.ka, %i.kb
  %..i.i.i.i.i = select i1 %i.kc, double %i.kb, double %i.ka
  store double %..i.i.i.i.i, ptr %i.jz, align 8, !noalias !4555
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass435 = add i64 %.sroa.0.012.i.i, %invariant.op434 ; 2 uses
  %i.ke = add i64 %.reass435, %i.ip               ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.reass435
  %i.ki = load double, ptr %i.kf, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.kj = load double, ptr %i.kg, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.kk = fcmp ogt double %i.ki, %i.kj
  %..i.i.i.i.i.1 = select i1 %i.kk, double %i.kj, double %i.ki
  store double %..i.i.i.i.i.1, ptr %i.kh, align 8, !noalias !4555
  %exitcond.not.i.i.1 = icmp eq i64 %i.kd, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4527

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4548
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSdB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kl = add i64 %.sroa.0.0156, %i.v
  %i.km = load i64, ptr %i.aa, align 8, !alias.scope !4546, !noalias !4547, !noundef !5 ; 2 uses
  %i.kn = icmp eq i64 %i.km, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kn, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kp = load double, ptr %i.ko, align 8, !noundef !5 ; 7 uses
  %i.kq = add i64 %.sroa.070.0.copyload, %i.v     ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.070.0.copyload
  %.not = icmp ugt i64 %i.kq, %4
  %or.cond57 = or i1 %i.kr, %.not
  br i1 %or.cond57, label %.invoke, label %bb.p, !prof !17

.invoke350:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph155
  %i.ks = phi i64 [ %i.nk, %bb.v ], [ %i.mz, %bb.t ], [ %i.nh, %.lr.ph155 ], [ %i.nm, %bb.w ], [ %i.my, %.lr.ph ], [ %.sroa.070.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kt = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph155 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.ku = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph155 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ks, i64 noundef %i.kt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ku) #26
          to label %.cont351 unwind label %.loopexit.split-lp

.cont351:                                         ; preds = %.invoke350
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kv = add i64 %.sroa.0.0156, %i.v             ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %.sroa.0.0156
  %.not51 = icmp ugt i64 %i.kv, %i.m
  %or.cond58 = or i1 %i.kw, %.not51
  br i1 %or.cond58, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.0156 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4556
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.v
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtBZ_7IterMutdEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 %i.kx, ptr noundef nonnull readonly %i.kz, ptr noundef nonnull align 8 %i.ky, ptr noundef nonnull %i.la)
          to label %.noexc68 unwind label %.loopexit79

.noexc68:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4557)
  %.val.i.i61 = load i64, ptr %i.ai, align 8, !alias.scope !4557, !noalias !4558, !noundef !5 ; 8 uses
  %.val6.i.i62 = load i64, ptr %i.aj, align 8, !alias.scope !4557, !noalias !4558, !noundef !5 ; 4 uses
  %i.lb = sub i64 %.val6.i.i62, %.val.i.i61       ; 4 uses
  %.not.i.i63 = icmp eq i64 %.val6.i.i62, %.val.i.i61
  br i1 %.not.i.i63, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.noexc68
  %.val.i.i.i65 = load ptr, ptr %i.a, align 8, !alias.scope !4559, !noalias !4558, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !4559, !noalias !4558, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check381 = icmp ult i64 %i.lb, 4
  %.val1.i.i.i377 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i65378 = ptrtoaddr ptr %.val.i.i.i65 to i64
  %i.lc = sub i64 %.val.i.i.i65378, %.val1.i.i.i377
  %diff.check379 = icmp ugt i64 %i.lc, -32
  %or.cond405 = or i1 %min.iters.check381, %diff.check379
  br i1 %or.cond405, label %scalar.ph380.preheader, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.i.i64
  %n.vec383 = and i64 %i.lb, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next388, %vector.body384 ] ; 2 uses
  %i.ld = add i64 %index385, %.val.i.i61          ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.ld ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %wide.load386 = load <2 x double>, ptr %i.le, align 8, !noalias !4557 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.lg, align 8, !noalias !4557 ; 2 uses
  %i.lh = fcmp ogt <2 x double> %wide.load386, %broadcast.splat
  %i.li = fcmp ogt <2 x double> %wide.load387, %broadcast.splat
  %i.lj = select <2 x i1> %i.lh, <2 x double> %broadcast.splat, <2 x double> %wide.load386
  %i.lk = select <2 x i1> %i.li, <2 x double> %broadcast.splat, <2 x double> %wide.load387
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store <2 x double> %i.lj, ptr %i.lf, align 8, !alias.scope !4560, !noalias !4557
  store <2 x double> %i.lk, ptr %i.ll, align 8, !alias.scope !4560, !noalias !4557
  %index.next388 = add nuw i64 %index385, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.lm, label %middle.block389, label %vector.body384, !llvm.loop !4542

middle.block389:                                  ; preds = %vector.body384
  %cmp.n390 = icmp eq i64 %i.lb, %n.vec383
  br i1 %cmp.n390, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader

scalar.ph380.preheader:                           ; preds = %.lr.ph.i.i64, %middle.block389
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i64 ], [ %n.vec383, %middle.block389 ] ; 4 uses
  %i.ln = sub i64 %.val6.i.i62, %.val.i.i61
  %i.lo = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lp = add i64 %.val6.i.i62, %i.lo
  %xtraiter = and i64 %i.ln, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph380.prol.loopexit, label %scalar.ph380.prol

scalar.ph380.prol:                                ; preds = %scalar.ph380.preheader
  %i.lq = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lr = add i64 %.sroa.0.010.i.i.ph, %.val.i.i61 ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lr
  %.val8.i.i.prol = load double, ptr %i.ls, align 8, !noalias !4557, !noundef !5 ; 2 uses
  %i.lu = fcmp ogt double %.val8.i.i.prol, %i.kp
  %..i.i.i.i.i66.prol = select i1 %i.lu, double %i.kp, double %.val8.i.i.prol
  store double %..i.i.i.i.i66.prol, ptr %i.lt, align 8, !alias.scope !4560, !noalias !4557
  br label %scalar.ph380.prol.loopexit

scalar.ph380.prol.loopexit:                       ; preds = %scalar.ph380.prol, %scalar.ph380.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph380.preheader ], [ %i.lq, %scalar.ph380.prol ]
  %i.lv = icmp eq i64 %i.lp, %.val.i.i61
  br i1 %i.lv, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader.new

scalar.ph380.preheader.new:                       ; preds = %scalar.ph380.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i61
  br label %scalar.ph380

scalar.ph380:                                     ; preds = %scalar.ph380, %scalar.ph380.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph380.preheader.new ], [ %i.ma, %scalar.ph380 ] ; 3 uses
  %i.lw = add i64 %.sroa.0.010.i.i, %.val.i.i61   ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lw
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lw
  %.val8.i.i = load double, ptr %i.lx, align 8, !noalias !4557, !noundef !5 ; 2 uses
  %i.lz = fcmp ogt double %.val8.i.i, %i.kp
  %..i.i.i.i.i66 = select i1 %i.lz, double %i.kp, double %.val8.i.i
  store double %..i.i.i.i.i66, ptr %i.ly, align 8, !alias.scope !4560, !noalias !4557
  %i.ma = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %.reass
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load double, ptr %i.mb, align 8, !noalias !4557, !noundef !5 ; 2 uses
  %i.md = fcmp ogt double %.val8.i.i.1, %i.kp
  %..i.i.i.i.i66.1 = select i1 %i.md, double %i.kp, double %.val8.i.i.1
  store double %..i.i.i.i.i66.1, ptr %i.mc, align 8, !alias.scope !4560, !noalias !4557
  %exitcond.not.i.i67.1 = icmp eq i64 %i.ma, %i.lb
  br i1 %exitcond.not.i.i67.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380, !llvm.loop !4543

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTdRSdQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph380.prol.loopexit, %scalar.ph380, %middle.block389, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4556
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.me = icmp ult i64 %.sroa.070.0.copyload, %4
  br i1 %i.me, label %bb.s, label %.invoke350

bb.s:                                             ; preds = %bb.r
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload
  %i.mg = load double, ptr %i.mf, align 8, !noundef !5 ; 3 uses
  br i1 %.not159, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mh = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mi = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0156)
  %7 = mul i64 %i.v, %indvar
  %i.mj = sub i64 %i.mi, %7
  %i.mk = call i64 @llvm.umin.i64(i64 %i.mj, i64 %i.mh)
  %i.ml = call i64 @llvm.umin.i64(i64 %i.mk, i64 %i.aq) ; 2 uses
  %min.iters.check393 = icmp samesign ult i64 %i.ml, 4
  br i1 %min.iters.check393, label %.lr.ph.preheader408, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph.preheader
  %i.mm = add nuw nsw i64 %i.ml, 1                ; 2 uses
  %i.mn = and i64 %i.mm, 3                        ; 2 uses
  %i.mo = icmp eq i64 %i.mn, 0
  %i.mp = select i1 %i.mo, i64 4, i64 %i.mn
  %n.vec395 = sub nsw i64 %i.mm, %i.mp            ; 2 uses
  %broadcast.splatinsert396 = insertelement <2 x double> poison, double %i.mg, i64 0
  %broadcast.splat397 = shufflevector <2 x double> %broadcast.splatinsert396, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep432 = getelementptr [8 x i8], ptr %i.p, i64 %.sroa.0.0156
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph394
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next402, %vector.body398 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index399 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load400 = load <2 x double>, ptr %gep, align 8 ; 2 uses
  %wide.load401 = load <2 x double>, ptr %i.mq, align 8 ; 2 uses
  %i.mr = fcmp ogt <2 x double> %broadcast.splat397, %wide.load400
  %i.ms = fcmp ogt <2 x double> %broadcast.splat397, %wide.load401
  %i.mt = select <2 x i1> %i.mr, <2 x double> %wide.load400, <2 x double> %broadcast.splat397
  %i.mu = select <2 x i1> %i.ms, <2 x double> %wide.load401, <2 x double> %broadcast.splat397
  %gep433 = getelementptr [8 x i8], ptr %invariant.gep432, i64 %index399 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %gep433, i64 16
  store <2 x double> %i.mt, ptr %gep433, align 8
  store <2 x double> %i.mu, ptr %i.mv, align 8
  %index.next402 = add nuw i64 %index399, 4       ; 2 uses
  %i.mw = icmp eq i64 %index.next402, %n.vec395
  br i1 %i.mw, label %.lr.ph.preheader408, label %vector.body398, !llvm.loop !4544

.lr.ph.preheader408:                              ; preds = %vector.body398, %.lr.ph.preheader
  %.sroa.019.0153.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec395, %vector.body398 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader408, %bb.u
  %.sroa.019.0153 = phi i64 [ %i.mx, %bb.u ], [ %.sroa.019.0153.ph, %.lr.ph.preheader408 ] ; 4 uses
  %i.mx = add nuw nsw i64 %.sroa.019.0153, 1      ; 2 uses
  %i.my = add nuw nsw i64 %.sroa.019.0153, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.0153, %i.mh
  br i1 %exitcond.not, label %.invoke350, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mz = add nuw nsw i64 %.sroa.019.0153, %.sroa.0.0156 ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.m
  br i1 %i.na, label %bb.u, label %.invoke350

bb.u:                                             ; preds = %bb.t
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.my
  %i.nc = load double, ptr %i.nb, align 8, !noundef !5 ; 2 uses
  %i.nd = fcmp ogt double %i.mg, %i.nc
  %..i.i = select i1 %i.nd, double %i.nc, double %i.mg
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mz
  store double %..i.i, ptr %i.ne, align 8
  %exitcond241.not = icmp eq i64 %i.mx, %i.v
  br i1 %exitcond241.not, label %.loopexit, label %.lr.ph, !llvm.loop !4545

.lr.ph155:                                        ; preds = %bb.g, %bb.x
  %.sroa.021.0154 = phi i64 [ %i.nf, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nf = add nuw i64 %.sroa.021.0154, 1          ; 2 uses
  %i.ng = mul i64 %.sroa.021.0154, %i.x
  %i.nh = add i64 %i.ng, %.sroa.070.0.copyload    ; 3 uses
  %i.ni = icmp ult i64 %i.nh, %4
  br i1 %i.ni, label %bb.v, label %.invoke350

bb.v:                                             ; preds = %.lr.ph155
  %i.nj = mul i64 %.sroa.021.0154, %i.z
  %i.nk = add i64 %i.nj, %.sroa.4.0.copyload      ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %6
  br i1 %i.nl, label %bb.w, label %.invoke350

bb.w:                                             ; preds = %bb.v
  %i.nm = add nuw nsw i64 %.sroa.021.0154, %.sroa.0.0156 ; 3 uses
  %i.nn = icmp ult i64 %i.nm, %i.m
  br i1 %i.nn, label %bb.x, label %.invoke350

bb.x:                                             ; preds = %bb.w
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.nh
  %i.np = load double, ptr %i.no, align 8, !noundef !5 ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.nk
  %i.nr = load double, ptr %i.nq, align 8, !noundef !5 ; 2 uses
  %i.ns = fcmp ogt double %i.np, %i.nr
  %..i.i69 = select i1 %i.ns, double %i.nr, double %i.np
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nm
  store double %..i.i69, ptr %i.nt, align 8
  %exitcond242.not = icmp eq i64 %i.nf, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph155

bb.y:                                             ; preds = %bb.d
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecfNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3f32NvYB1a_B1s_7f32_vecNvYB1a_B1s_14f32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit80:                                      ; preds = %bb.n, %.noexc60, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke351, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit80
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not160 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.071.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4610
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4610
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph159, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph159 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph159 ], [ %.sroa.4.0.copyload247, %.loopexit ] ; 12 uses
  %.sroa.071.0.copyload = phi i64 [ %.sroa.071.0.copyload.pre, %.lr.ph159 ], [ %.sroa.071.0.copyload244, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph159 ], [ %i.km, %.loopexit ]
  %.sroa.0.0157 = phi i64 [ 0, %.lr.ph159 ], [ %i.kl, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4609, !noalias !4610
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit79.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4609, !noalias !4610
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit79.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4609, !noalias !4610
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit79.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4609, !noalias !4610
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit79.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4609, !noalias !4610
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit79.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4609, !noalias !4610
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit79.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4609, !noalias !4610
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit79.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4609, !noalias !4610
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit79.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4609, !noalias !4610
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit79.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4609, !noalias !4610
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit79.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4609, !noalias !4610
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4609, !noalias !4610
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4609, !noalias !4610
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit79.split.us, label %.lr.ph.i.split.us.5

end_hunk_6
begin_hunk_7_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecfNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3f32NvYB1a_B1s_7f32_vecNvYB1a_B1s_14f32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.js = load float, ptr %i.jp, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.jt = fcmp olt float %i.jr, %i.js
  %..i.i.i.i.i.prol = select i1 %i.jt, float %i.js, float %i.jr
  store float %..i.i.i.i.i.prol, ptr %i.jq, align 4, !noalias !4618
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jl, %scalar.ph.prol ]
  %i.ju = icmp eq i64 %i.jk, %.val.i.i
  br i1 %i.ju, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op435 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kd, %scalar.ph ] ; 3 uses
  %i.jv = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jw = add i64 %i.jv, %i.ip                    ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jw
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jv
  %i.ka = load float, ptr %i.jx, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.kb = load float, ptr %i.jy, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.kc = fcmp olt float %i.ka, %i.kb
  %..i.i.i.i.i = select i1 %i.kc, float %i.kb, float %i.ka
  store float %..i.i.i.i.i, ptr %i.jz, align 4, !noalias !4618
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass436 = add i64 %.sroa.0.012.i.i, %invariant.op435 ; 2 uses
  %i.ke = add i64 %.reass436, %i.ip               ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass436
  %i.ki = load float, ptr %i.kf, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.kj = load float, ptr %i.kg, align 4, !noalias !4618, !noundef !5 ; 2 uses
  %i.kk = fcmp olt float %i.ki, %i.kj
  %..i.i.i.i.i.1 = select i1 %i.kk, float %i.kj, float %i.ki
  store float %..i.i.i.i.i.1, ptr %i.kh, align 4, !noalias !4618
  %exitcond.not.i.i.1 = icmp eq i64 %i.kd, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4590

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4611
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kl = add i64 %.sroa.0.0157, %i.v
  %i.km = load i64, ptr %i.aa, align 8, !alias.scope !4609, !noalias !4610, !noundef !5 ; 2 uses
  %i.kn = icmp eq i64 %i.km, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kn, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kp = load float, ptr %i.ko, align 4, !noundef !5 ; 7 uses
  %i.kq = add i64 %.sroa.071.0.copyload, %i.v     ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kq, %4
  %or.cond58 = or i1 %i.kr, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.ks = phi i64 [ %i.nk, %bb.v ], [ %i.mz, %bb.t ], [ %i.nh, %.lr.ph156 ], [ %i.nm, %bb.w ], [ %i.my, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kt = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph156 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.ku = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ks, i64 noundef %i.kt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ku) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kv = add i64 %.sroa.0.0157, %i.v             ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.kv, %i.m
  %or.cond59 = or i1 %i.kw, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4619
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.v
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.kx, ptr noundef nonnull readonly %i.kz, ptr noundef nonnull align 4 %i.ky, ptr noundef nonnull %i.la)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4620)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !4620, !noalias !4621, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !4620, !noalias !4621, !noundef !5 ; 4 uses
  %i.lb = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !4622, !noalias !4621, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !4622, !noalias !4621, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.lb, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lc = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.lc, -32
  %or.cond406 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond406, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.lb, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.kp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.ld = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.ld ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %wide.load387 = load <4 x float>, ptr %i.le, align 4, !noalias !4620 ; 2 uses
  %wide.load388 = load <4 x float>, ptr %i.lg, align 4, !noalias !4620 ; 2 uses
  %i.lh = fcmp olt <4 x float> %wide.load387, %broadcast.splat
  %i.li = fcmp olt <4 x float> %wide.load388, %broadcast.splat
  %i.lj = select <4 x i1> %i.lh, <4 x float> %broadcast.splat, <4 x float> %wide.load387
  %i.lk = select <4 x i1> %i.li, <4 x float> %broadcast.splat, <4 x float> %wide.load388
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store <4 x float> %i.lj, ptr %i.lf, align 4, !alias.scope !4623, !noalias !4620
  store <4 x float> %i.lk, ptr %i.ll, align 4, !alias.scope !4623, !noalias !4620
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lm = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lm, label %middle.block390, label %vector.body385, !llvm.loop !4605

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.lb, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %i.ln = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lo = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lp = add i64 %.val6.i.i63, %i.lo
  %xtraiter = and i64 %i.ln, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lq = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lr = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lr
  %.val8.i.i.prol = load float, ptr %i.ls, align 4, !noalias !4620, !noundef !5 ; 2 uses
  %i.lu = fcmp olt float %.val8.i.i.prol, %i.kp
  %..i.i.i.i.i67.prol = select i1 %i.lu, float %i.kp, float %.val8.i.i.prol
  store float %..i.i.i.i.i67.prol, ptr %i.lt, align 4, !alias.scope !4623, !noalias !4620
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lq, %scalar.ph381.prol ]
  %i.lv = icmp eq i64 %i.lp, %.val.i.i62
  br i1 %i.lv, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.ma, %scalar.ph381 ] ; 3 uses
  %i.lw = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lw
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lw
  %.val8.i.i = load float, ptr %i.lx, align 4, !noalias !4620, !noundef !5 ; 2 uses
  %i.lz = fcmp olt float %.val8.i.i, %i.kp
  %..i.i.i.i.i67 = select i1 %i.lz, float %i.kp, float %.val8.i.i
  store float %..i.i.i.i.i67, ptr %i.ly, align 4, !alias.scope !4623, !noalias !4620
  %i.ma = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load float, ptr %i.mb, align 4, !noalias !4620, !noundef !5 ; 2 uses
  %i.md = fcmp olt float %.val8.i.i.1, %i.kp
  %..i.i.i.i.i67.1 = select i1 %i.md, float %i.kp, float %.val8.i.i.1
  store float %..i.i.i.i.i67.1, ptr %i.mc, align 4, !alias.scope !4623, !noalias !4620
  %exitcond.not.i.i68.1 = icmp eq i64 %i.ma, %i.lb
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !4606

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4619
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.me = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.me, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.mg = load float, ptr %i.mf, align 4, !noundef !5 ; 3 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mh = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mi = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0157)
  %7 = mul i64 %i.v, %indvar
  %i.mj = sub i64 %i.mi, %7
  %i.mk = call i64 @llvm.umin.i64(i64 %i.mj, i64 %i.mh)
  %i.ml = call i64 @llvm.umin.i64(i64 %i.mk, i64 %i.aq) ; 2 uses
  %min.iters.check394 = icmp samesign ult i64 %i.ml, 8
  br i1 %min.iters.check394, label %.lr.ph.preheader409, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph.preheader
  %i.mm = add nuw nsw i64 %i.ml, 1                ; 2 uses
  %i.mn = and i64 %i.mm, 7                        ; 2 uses
  %i.mo = icmp eq i64 %i.mn, 0
  %i.mp = select i1 %i.mo, i64 8, i64 %i.mn
  %n.vec396 = sub nsw i64 %i.mm, %i.mp            ; 2 uses
  %broadcast.splatinsert397 = insertelement <4 x float> poison, float %i.mg, i64 0
  %broadcast.splat398 = shufflevector <4 x float> %broadcast.splatinsert397, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep433 = getelementptr [4 x i8], ptr %i.p, i64 %.sroa.0.0157
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph395
  %index400 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body399 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index400 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load401 = load <4 x float>, ptr %gep, align 4 ; 2 uses
  %wide.load402 = load <4 x float>, ptr %i.mq, align 4 ; 2 uses
  %i.mr = fcmp olt <4 x float> %broadcast.splat398, %wide.load401
  %i.ms = fcmp olt <4 x float> %broadcast.splat398, %wide.load402
  %i.mt = select <4 x i1> %i.mr, <4 x float> %wide.load401, <4 x float> %broadcast.splat398
  %i.mu = select <4 x i1> %i.ms, <4 x float> %wide.load402, <4 x float> %broadcast.splat398
  %gep434 = getelementptr [4 x i8], ptr %invariant.gep433, i64 %index400 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %gep434, i64 16
  store <4 x float> %i.mt, ptr %gep434, align 4
  store <4 x float> %i.mu, ptr %i.mv, align 4
  %index.next403 = add nuw i64 %index400, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.mw, label %.lr.ph.preheader409, label %vector.body399, !llvm.loop !4607

.lr.ph.preheader409:                              ; preds = %vector.body399, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec396, %vector.body399 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader409, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.mx, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader409 ] ; 4 uses
  %i.mx = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.my = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mh
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mz = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.m
  br i1 %i.na, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.my
  %i.nc = load float, ptr %i.nb, align 4, !noundef !5 ; 2 uses
  %i.nd = fcmp olt float %i.mg, %i.nc
  %..i.i = select i1 %i.nd, float %i.nc, float %i.mg
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mz
  store float %..i.i, ptr %i.ne, align 4
  %exitcond242.not = icmp eq i64 %i.mx, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4608

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nf, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nf = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.ng = mul i64 %.sroa.022.0155, %i.x
  %i.nh = add i64 %i.ng, %.sroa.071.0.copyload    ; 3 uses
  %i.ni = icmp ult i64 %i.nh, %4
  br i1 %i.ni, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nj = mul i64 %.sroa.022.0155, %i.z
  %i.nk = add i64 %i.nj, %.sroa.4.0.copyload      ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %6
  br i1 %i.nl, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nm = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nn = icmp ult i64 %i.nm, %i.m
  br i1 %i.nn, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nh
  %i.np = load float, ptr %i.no, align 4, !noundef !5 ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.nk
  %i.nr = load float, ptr %i.nq, align 4, !noundef !5 ; 2 uses
  %i.ns = fcmp olt float %i.np, %i.nr
  %..i.i70 = select i1 %i.ns, float %i.nr, float %i.np
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.nm
  store float %..i.i70, ptr %i.nt, align 4
  %exitcond243.not = icmp eq i64 %i.nf, %i.v
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecfNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3f32NvYB1a_B1s_7f32_vecNvYB1a_B1s_14f32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit80:                                      ; preds = %bb.n, %.noexc60, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke351, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit80
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not160 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.071.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4673
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4673
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph159, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph159 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph159 ], [ %.sroa.4.0.copyload247, %.loopexit ] ; 12 uses
  %.sroa.071.0.copyload = phi i64 [ %.sroa.071.0.copyload.pre, %.lr.ph159 ], [ %.sroa.071.0.copyload244, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph159 ], [ %i.km, %.loopexit ]
  %.sroa.0.0157 = phi i64 [ 0, %.lr.ph159 ], [ %i.kl, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4672, !noalias !4673
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit79.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4672, !noalias !4673
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit79.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4672, !noalias !4673
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit79.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4672, !noalias !4673
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit79.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4672, !noalias !4673
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit79.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4672, !noalias !4673
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit79.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4672, !noalias !4673
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit79.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4672, !noalias !4673
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit79.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4672, !noalias !4673
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit79.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4672, !noalias !4673
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit79.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4672, !noalias !4673
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4672, !noalias !4673
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4672, !noalias !4673
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit79.split.us, label %.lr.ph.i.split.us.5

end_hunk_7
begin_hunk_8_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecfNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3f32NvYB1a_B1s_7f32_vecNvYB1a_B1s_14f32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.js = load float, ptr %i.jp, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.jt = fcmp ogt float %i.jr, %i.js
  %..i.i.i.i.i.prol = select i1 %i.jt, float %i.js, float %i.jr
  store float %..i.i.i.i.i.prol, ptr %i.jq, align 4, !noalias !4681
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jl, %scalar.ph.prol ]
  %i.ju = icmp eq i64 %i.jk, %.val.i.i
  br i1 %i.ju, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op435 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.kd, %scalar.ph ] ; 3 uses
  %i.jv = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jw = add i64 %i.jv, %i.ip                    ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jw
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jv
  %i.ka = load float, ptr %i.jx, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.kb = load float, ptr %i.jy, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.kc = fcmp ogt float %i.ka, %i.kb
  %..i.i.i.i.i = select i1 %i.kc, float %i.kb, float %i.ka
  store float %..i.i.i.i.i, ptr %i.jz, align 4, !noalias !4681
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass436 = add i64 %.sroa.0.012.i.i, %invariant.op435 ; 2 uses
  %i.ke = add i64 %.reass436, %i.ip               ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass436
  %i.ki = load float, ptr %i.kf, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.kj = load float, ptr %i.kg, align 4, !noalias !4681, !noundef !5 ; 2 uses
  %i.kk = fcmp ogt float %i.ki, %i.kj
  %..i.i.i.i.i.1 = select i1 %i.kk, float %i.kj, float %i.ki
  store float %..i.i.i.i.i.1, ptr %i.kh, align 4, !noalias !4681
  %exitcond.not.i.i.1 = icmp eq i64 %i.kd, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4653

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4674
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSfB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kl = add i64 %.sroa.0.0157, %i.v
  %i.km = load i64, ptr %i.aa, align 8, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.kn = icmp eq i64 %i.km, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kn, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kp = load float, ptr %i.ko, align 4, !noundef !5 ; 7 uses
  %i.kq = add i64 %.sroa.071.0.copyload, %i.v     ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kq, %4
  %or.cond58 = or i1 %i.kr, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.ks = phi i64 [ %i.nk, %bb.v ], [ %i.mz, %bb.t ], [ %i.nh, %.lr.ph156 ], [ %i.nm, %bb.w ], [ %i.my, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kt = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph156 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.ku = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ks, i64 noundef %i.kt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ku) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kv = add i64 %.sroa.0.0157, %i.v             ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.kv, %i.m
  %or.cond59 = or i1 %i.kw, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4682
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.v
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.kx, ptr noundef nonnull readonly %i.kz, ptr noundef nonnull align 4 %i.ky, ptr noundef nonnull %i.la)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4683)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !4683, !noalias !4684, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !4683, !noalias !4684, !noundef !5 ; 4 uses
  %i.lb = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !4685, !noalias !4684, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !4685, !noalias !4684, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.lb, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lc = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.lc, -32
  %or.cond406 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond406, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.lb, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.kp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.ld = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.ld ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %wide.load387 = load <4 x float>, ptr %i.le, align 4, !noalias !4683 ; 2 uses
  %wide.load388 = load <4 x float>, ptr %i.lg, align 4, !noalias !4683 ; 2 uses
  %i.lh = fcmp ogt <4 x float> %wide.load387, %broadcast.splat
  %i.li = fcmp ogt <4 x float> %wide.load388, %broadcast.splat
  %i.lj = select <4 x i1> %i.lh, <4 x float> %broadcast.splat, <4 x float> %wide.load387
  %i.lk = select <4 x i1> %i.li, <4 x float> %broadcast.splat, <4 x float> %wide.load388
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store <4 x float> %i.lj, ptr %i.lf, align 4, !alias.scope !4686, !noalias !4683
  store <4 x float> %i.lk, ptr %i.ll, align 4, !alias.scope !4686, !noalias !4683
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lm = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lm, label %middle.block390, label %vector.body385, !llvm.loop !4668

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.lb, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %i.ln = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lo = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lp = add i64 %.val6.i.i63, %i.lo
  %xtraiter = and i64 %i.ln, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lq = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lr = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lr
  %.val8.i.i.prol = load float, ptr %i.ls, align 4, !noalias !4683, !noundef !5 ; 2 uses
  %i.lu = fcmp ogt float %.val8.i.i.prol, %i.kp
  %..i.i.i.i.i67.prol = select i1 %i.lu, float %i.kp, float %.val8.i.i.prol
  store float %..i.i.i.i.i67.prol, ptr %i.lt, align 4, !alias.scope !4686, !noalias !4683
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lq, %scalar.ph381.prol ]
  %i.lv = icmp eq i64 %i.lp, %.val.i.i62
  br i1 %i.lv, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.ma, %scalar.ph381 ] ; 3 uses
  %i.lw = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lw
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lw
  %.val8.i.i = load float, ptr %i.lx, align 4, !noalias !4683, !noundef !5 ; 2 uses
  %i.lz = fcmp ogt float %.val8.i.i, %i.kp
  %..i.i.i.i.i67 = select i1 %i.lz, float %i.kp, float %.val8.i.i
  store float %..i.i.i.i.i67, ptr %i.ly, align 4, !alias.scope !4686, !noalias !4683
  %i.ma = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load float, ptr %i.mb, align 4, !noalias !4683, !noundef !5 ; 2 uses
  %i.md = fcmp ogt float %.val8.i.i.1, %i.kp
  %..i.i.i.i.i67.1 = select i1 %i.md, float %i.kp, float %.val8.i.i.1
  store float %..i.i.i.i.i67.1, ptr %i.mc, align 4, !alias.scope !4686, !noalias !4683
  %exitcond.not.i.i68.1 = icmp eq i64 %i.ma, %i.lb
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !4669

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTfRSfQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4682
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.me = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.me, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.mg = load float, ptr %i.mf, align 4, !noundef !5 ; 3 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mh = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mi = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0157)
  %7 = mul i64 %i.v, %indvar
  %i.mj = sub i64 %i.mi, %7
  %i.mk = call i64 @llvm.umin.i64(i64 %i.mj, i64 %i.mh)
  %i.ml = call i64 @llvm.umin.i64(i64 %i.mk, i64 %i.aq) ; 2 uses
  %min.iters.check394 = icmp samesign ult i64 %i.ml, 8
  br i1 %min.iters.check394, label %.lr.ph.preheader409, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph.preheader
  %i.mm = add nuw nsw i64 %i.ml, 1                ; 2 uses
  %i.mn = and i64 %i.mm, 7                        ; 2 uses
  %i.mo = icmp eq i64 %i.mn, 0
  %i.mp = select i1 %i.mo, i64 8, i64 %i.mn
  %n.vec396 = sub nsw i64 %i.mm, %i.mp            ; 2 uses
  %broadcast.splatinsert397 = insertelement <4 x float> poison, float %i.mg, i64 0
  %broadcast.splat398 = shufflevector <4 x float> %broadcast.splatinsert397, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep433 = getelementptr [4 x i8], ptr %i.p, i64 %.sroa.0.0157
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph395
  %index400 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body399 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index400 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load401 = load <4 x float>, ptr %gep, align 4 ; 2 uses
  %wide.load402 = load <4 x float>, ptr %i.mq, align 4 ; 2 uses
  %i.mr = fcmp ogt <4 x float> %broadcast.splat398, %wide.load401
  %i.ms = fcmp ogt <4 x float> %broadcast.splat398, %wide.load402
  %i.mt = select <4 x i1> %i.mr, <4 x float> %wide.load401, <4 x float> %broadcast.splat398
  %i.mu = select <4 x i1> %i.ms, <4 x float> %wide.load402, <4 x float> %broadcast.splat398
  %gep434 = getelementptr [4 x i8], ptr %invariant.gep433, i64 %index400 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %gep434, i64 16
  store <4 x float> %i.mt, ptr %gep434, align 4
  store <4 x float> %i.mu, ptr %i.mv, align 4
  %index.next403 = add nuw i64 %index400, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.mw, label %.lr.ph.preheader409, label %vector.body399, !llvm.loop !4670

.lr.ph.preheader409:                              ; preds = %vector.body399, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec396, %vector.body399 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader409, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.mx, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader409 ] ; 4 uses
  %i.mx = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.my = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mh
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mz = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.m
  br i1 %i.na, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.my
  %i.nc = load float, ptr %i.nb, align 4, !noundef !5 ; 2 uses
  %i.nd = fcmp ogt float %i.mg, %i.nc
  %..i.i = select i1 %i.nd, float %i.nc, float %i.mg
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mz
  store float %..i.i, ptr %i.ne, align 4
  %exitcond242.not = icmp eq i64 %i.mx, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4671

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nf, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nf = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.ng = mul i64 %.sroa.022.0155, %i.x
  %i.nh = add i64 %i.ng, %.sroa.071.0.copyload    ; 3 uses
  %i.ni = icmp ult i64 %i.nh, %4
  br i1 %i.ni, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nj = mul i64 %.sroa.022.0155, %i.z
  %i.nk = add i64 %i.nj, %.sroa.4.0.copyload      ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %6
  br i1 %i.nl, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nm = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nn = icmp ult i64 %i.nm, %i.m
  br i1 %i.nn, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nh
  %i.np = load float, ptr %i.no, align 4, !noundef !5 ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.nk
  %i.nr = load float, ptr %i.nq, align 4, !noundef !5 ; 2 uses
  %i.ns = fcmp ogt float %i.np, %i.nr
  %..i.i70 = select i1 %i.ns, float %i.nr, float %i.np
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.nm
  store float %..i.i70, ptr %i.nt, align 4
  %exitcond243.not = icmp eq i64 %i.nf, %i.v
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vechNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT2u8NvYB1a_B1s_6u8_vecNvYB1a_B1s_13u8_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit80:                                      ; preds = %bb.n, %.noexc60, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke351, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit80
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not160 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.071.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4738
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4738
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph159, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph159 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph159 ], [ %.sroa.4.0.copyload247, %.loopexit ] ; 12 uses
  %.sroa.071.0.copyload = phi i64 [ %.sroa.071.0.copyload.pre, %.lr.ph159 ], [ %.sroa.071.0.copyload244, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph159 ], [ %i.ko, %.loopexit ]
  %.sroa.0.0157 = phi i64 [ 0, %.lr.ph159 ], [ %i.kn, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4737, !noalias !4738
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit79.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4737, !noalias !4738
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit79.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4737, !noalias !4738
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit79.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4737, !noalias !4738
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit79.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4737, !noalias !4738
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit79.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4737, !noalias !4738
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit79.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4737, !noalias !4738
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit79.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4737, !noalias !4738
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit79.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4737, !noalias !4738
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit79.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4737, !noalias !4738
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit79.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4737, !noalias !4738
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4737, !noalias !4738
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit79.split.us, label %.lr.ph.i.split.us.5

end_hunk_8
begin_hunk_9_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vechNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT2u8NvYB1a_B1s_6u8_vecNvYB1a_B1s_13u8_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  store i8 %..i.i.i.i.i, ptr %i.kd, align 1, !noalias !4746
  %i.kg = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass457 = add i64 %.sroa.0.012.i.i, %invariant.op456 ; 2 uses
  %i.kh = add i64 %.reass457, %i.ip               ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.kh
  %i.kk = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass457
  %i.kl = load i8, ptr %i.ki, align 1, !noalias !4746, !noundef !5
  %i.km = load i8, ptr %i.kj, align 1, !noalias !4746, !noundef !5
  %..i.i.i.i.i.1 = call i8 @llvm.umax.i8(i8 %i.kl, i8 %i.km)
  store i8 %..i.i.i.i.i.1, ptr %i.kk, align 1, !noalias !4746
  %exitcond.not.i.i.1 = icmp eq i64 %i.kg, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !4717

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4739
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kn = add i64 %.sroa.0.0157, %i.v
  %i.ko = load i64, ptr %i.aa, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.kp = icmp eq i64 %i.ko, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kp, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.4.0.copyload
  %i.kr = load i8, ptr %i.kq, align 1, !noundef !5 ; 5 uses
  %i.ks = add i64 %.sroa.071.0.copyload, %i.v     ; 3 uses
  %i.kt = icmp ult i64 %i.ks, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.ks, %4
  %or.cond58 = or i1 %i.kt, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.ku = phi i64 [ %i.nh, %bb.v ], [ %i.mx, %bb.t ], [ %i.ne, %.lr.ph156 ], [ %i.nj, %bb.w ], [ %i.mw, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kv = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph156 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kw = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ku, i64 noundef %i.kv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kw) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kx = add i64 %.sroa.0.0157, %i.v             ; 3 uses
  %i.ky = icmp ult i64 %i.kx, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.kx, %i.m
  %or.cond59 = or i1 %i.ky, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4747
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.v
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.kz, ptr noundef nonnull readonly %i.lb, ptr noundef nonnull %i.la, ptr noundef nonnull %i.lc)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !4748, !noalias !4749, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !4748, !noalias !4749, !noundef !5 ; 4 uses
  %i.ld = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !4750, !noalias !4749, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !4750, !noalias !4749, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.ld, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.le = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.le, -32
  %or.cond427 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond427, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.ld, 32
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.lf = and i64 %i.ld, 28
  %n.vec392 = and i64 %i.ld, -32                  ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.kr, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.lg = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lg ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load395 = load <16 x i8>, ptr %i.lh, align 1, !noalias !4748
  %wide.load396 = load <16 x i8>, ptr %i.lj, align 1, !noalias !4748
  %i.lk = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load395, <16 x i8> %broadcast.splat)
  %i.ll = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load396, <16 x i8> %broadcast.splat)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store <16 x i8> %i.lk, ptr %i.li, align 1, !alias.scope !4751, !noalias !4748
  store <16 x i8> %i.ll, ptr %i.lm, align 1, !alias.scope !4751, !noalias !4748
  %index.next397 = add nuw i64 %index394, 32      ; 2 uses
  %i.ln = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.ln, label %middle.block398, label %vector.body393, !llvm.loop !4732

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.ld, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.lf, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !23

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.ld, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i8> poison, i8 %i.kr, i64 0
  %broadcast.splat408 = shufflevector <4 x i8> %broadcast.splatinsert407, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.lo = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lo
  %wide.load411 = load <4 x i8>, ptr %i.lp, align 1, !noalias !4748
  %i.lr = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load411, <4 x i8> %broadcast.splat408)
  store <4 x i8> %i.lr, ptr %i.lq, align 1, !alias.scope !4751, !noalias !4748
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.ls, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !4733

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.ld, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %i.lt = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lu = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lv = add i64 %.val6.i.i63, %i.lu
  %xtraiter = and i64 %i.lt, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.lw = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lx = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lx
  %.val8.i.i.prol = load i8, ptr %i.ly, align 1, !noalias !4748, !noundef !5
  %..i.i.i.i.i67.prol = call i8 @llvm.umax.i8(i8 %.val8.i.i.prol, i8 %i.kr)
  store i8 %..i.i.i.i.i67.prol, ptr %i.lz, align 1, !alias.scope !4751, !noalias !4748
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.lw, %vec.epilog.scalar.ph402.prol ]
  %i.ma = icmp eq i64 %i.lv, %.val.i.i62
  br i1 %i.ma, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.me, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.mb = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.mb
  %.val8.i.i = load i8, ptr %i.mc, align 1, !noalias !4748, !noundef !5
  %..i.i.i.i.i67 = call i8 @llvm.umax.i8(i8 %.val8.i.i, i8 %i.kr)
  store i8 %..i.i.i.i.i67, ptr %i.md, align 1, !alias.scope !4751, !noalias !4748
  %i.me = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %.reass
  %i.mg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i8, ptr %i.mf, align 1, !noalias !4748, !noundef !5
  %..i.i.i.i.i67.1 = call i8 @llvm.umax.i8(i8 %.val8.i.i.1, i8 %i.kr)
  store i8 %..i.i.i.i.i67.1, ptr %i.mg, align 1, !alias.scope !4751, !noalias !4748
  %exitcond.not.i.i68.1 = icmp eq i64 %i.me, %i.ld
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !4734

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4747
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mh = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.mh, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload
  %i.mj = load i8, ptr %i.mi, align 1, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mk = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ml = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0157)
  %7 = mul i64 %i.v, %indvar
  %i.mm = sub i64 %i.ml, %7
  %i.mn = call i64 @llvm.umin.i64(i64 %i.mm, i64 %i.mk)
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.aq) ; 2 uses
  %min.iters.check416 = icmp samesign ult i64 %i.mo, 16
  br i1 %min.iters.check416, label %.lr.ph.preheader430, label %vector.ph417

vector.ph417:                                     ; preds = %.lr.ph.preheader
  %i.mp = add nuw i64 %i.mo, 1                    ; 2 uses
  %i.mq = and i64 %i.mp, 15                       ; 2 uses
  %i.mr = icmp eq i64 %i.mq, 0
  %i.ms = select i1 %i.mr, i64 16, i64 %i.mq
  %n.vec418 = sub i64 %i.mp, %i.ms                ; 2 uses
  %broadcast.splatinsert419 = insertelement <16 x i8> poison, i8 %i.mj, i64 0
  %broadcast.splat420 = shufflevector <16 x i8> %broadcast.splatinsert419, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep454 = getelementptr i8, ptr %i.p, i64 %.sroa.0.0157
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph417
  %index422 = phi i64 [ 0, %vector.ph417 ], [ %index.next424, %vector.body421 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index422
  %wide.load423 = load <16 x i8>, ptr %gep, align 1
  %i.mt = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %broadcast.splat420, <16 x i8> %wide.load423)
  %gep455 = getelementptr i8, ptr %invariant.gep454, i64 %index422
  store <16 x i8> %i.mt, ptr %gep455, align 1
  %index.next424 = add nuw i64 %index422, 16      ; 2 uses
  %i.mu = icmp eq i64 %index.next424, %n.vec418
  br i1 %i.mu, label %.lr.ph.preheader430, label %vector.body421, !llvm.loop !4735

.lr.ph.preheader430:                              ; preds = %vector.body421, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec418, %vector.body421 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader430, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.mv, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader430 ] ; 4 uses
  %i.mv = add nuw i64 %.sroa.020.0154, 1          ; 2 uses
  %i.mw = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mk
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mx = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.my = icmp ult i64 %i.mx, %i.m
  br i1 %i.my, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.mz = getelementptr inbounds nuw i8, ptr %5, i64 %i.mw
  %i.na = load i8, ptr %i.mz, align 1, !noundef !5
  %..i.i = call noundef i8 @llvm.umax.i8(i8 %i.mj, i8 %i.na)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.mx
  store i8 %..i.i, ptr %i.nb, align 1
  %exitcond242.not = icmp eq i64 %i.mv, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4736

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nc, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nc = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nd = mul i64 %.sroa.022.0155, %i.x
  %i.ne = add i64 %i.nd, %.sroa.071.0.copyload    ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %4
  br i1 %i.nf, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.ng = mul i64 %.sroa.022.0155, %i.z
  %i.nh = add i64 %i.ng, %.sroa.4.0.copyload      ; 3 uses
  %i.ni = icmp ult i64 %i.nh, %6
  br i1 %i.ni, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nj = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nk = icmp ult i64 %i.nj, %i.m
  br i1 %i.nk, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 %i.ne
  %i.nm = load i8, ptr %i.nl, align 1, !noundef !5
  %i.nn = getelementptr inbounds nuw i8, ptr %5, i64 %i.nh
  %i.no = load i8, ptr %i.nn, align 1, !noundef !5
  %..i.i70 = call noundef i8 @llvm.umax.i8(i8 %i.nm, i8 %i.no)
  %i.np = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.nj
  store i8 %..i.i70, ptr %i.np, align 1
  %exitcond243.not = icmp eq i64 %i.nc, %i.v
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vechNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT2u8NvYB1a_B1s_6u8_vecNvYB1a_B1s_13u8_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit80:                                      ; preds = %bb.n, %.noexc60, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke351, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit80
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not160 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.071.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4803
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4803
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph159, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph159 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph159 ], [ %.sroa.4.0.copyload247, %.loopexit ] ; 12 uses
  %.sroa.071.0.copyload = phi i64 [ %.sroa.071.0.copyload.pre, %.lr.ph159 ], [ %.sroa.071.0.copyload244, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph159 ], [ %i.ko, %.loopexit ]
  %.sroa.0.0157 = phi i64 [ 0, %.lr.ph159 ], [ %i.kn, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4802, !noalias !4803
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit79.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4802, !noalias !4803
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit79.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4802, !noalias !4803
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit79.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4802, !noalias !4803
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit79.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4802, !noalias !4803
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit79.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4802, !noalias !4803
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit79.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4802, !noalias !4803
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit79.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4802, !noalias !4803
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit79.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4802, !noalias !4803
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit79.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4802, !noalias !4803
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit79.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4802, !noalias !4803
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4802, !noalias !4803
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit79.split.us, label %.lr.ph.i.split.us.5

end_hunk_9
begin_hunk_10_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vechNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT2u8NvYB1a_B1s_6u8_vecNvYB1a_B1s_13u8_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  store i8 %..i.i.i.i.i, ptr %i.kd, align 1, !noalias !4811
  %i.kg = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass457 = add i64 %.sroa.0.012.i.i, %invariant.op456 ; 2 uses
  %i.kh = add i64 %.reass457, %i.ip               ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.kh
  %i.kk = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass457
  %i.kl = load i8, ptr %i.ki, align 1, !noalias !4811, !noundef !5
  %i.km = load i8, ptr %i.kj, align 1, !noalias !4811, !noundef !5
  %..i.i.i.i.i.1 = call i8 @llvm.umin.i8(i8 %i.kl, i8 %i.km)
  store i8 %..i.i.i.i.i.1, ptr %i.kk, align 1, !noalias !4811
  %exitcond.not.i.i.1 = icmp eq i64 %i.kg, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !4782

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4804
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kn = add i64 %.sroa.0.0157, %i.v
  %i.ko = load i64, ptr %i.aa, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.kp = icmp eq i64 %i.ko, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kp, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.4.0.copyload
  %i.kr = load i8, ptr %i.kq, align 1, !noundef !5 ; 5 uses
  %i.ks = add i64 %.sroa.071.0.copyload, %i.v     ; 3 uses
  %i.kt = icmp ult i64 %i.ks, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.ks, %4
  %or.cond58 = or i1 %i.kt, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.ku = phi i64 [ %i.nh, %bb.v ], [ %i.mx, %bb.t ], [ %i.ne, %.lr.ph156 ], [ %i.nj, %bb.w ], [ %i.mw, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kv = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph156 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kw = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ku, i64 noundef %i.kv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kw) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kx = add i64 %.sroa.0.0157, %i.v             ; 3 uses
  %i.ky = icmp ult i64 %i.kx, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.kx, %i.m
  %or.cond59 = or i1 %i.ky, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4812
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.v
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.kz, ptr noundef nonnull readonly %i.lb, ptr noundef nonnull %i.la, ptr noundef nonnull %i.lc)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4813)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !4813, !noalias !4814, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !4813, !noalias !4814, !noundef !5 ; 4 uses
  %i.ld = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !4815, !noalias !4814, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !4815, !noalias !4814, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.ld, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.le = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.le, -32
  %or.cond427 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond427, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.ld, 32
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.lf = and i64 %i.ld, 28
  %n.vec392 = and i64 %i.ld, -32                  ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.kr, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.lg = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lg ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load395 = load <16 x i8>, ptr %i.lh, align 1, !noalias !4813
  %wide.load396 = load <16 x i8>, ptr %i.lj, align 1, !noalias !4813
  %i.lk = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load395, <16 x i8> %broadcast.splat)
  %i.ll = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load396, <16 x i8> %broadcast.splat)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store <16 x i8> %i.lk, ptr %i.li, align 1, !alias.scope !4816, !noalias !4813
  store <16 x i8> %i.ll, ptr %i.lm, align 1, !alias.scope !4816, !noalias !4813
  %index.next397 = add nuw i64 %index394, 32      ; 2 uses
  %i.ln = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.ln, label %middle.block398, label %vector.body393, !llvm.loop !4797

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.ld, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.lf, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !23

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.ld, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i8> poison, i8 %i.kr, i64 0
  %broadcast.splat408 = shufflevector <4 x i8> %broadcast.splatinsert407, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.lo = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lo
  %wide.load411 = load <4 x i8>, ptr %i.lp, align 1, !noalias !4813
  %i.lr = call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load411, <4 x i8> %broadcast.splat408)
  store <4 x i8> %i.lr, ptr %i.lq, align 1, !alias.scope !4816, !noalias !4813
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.ls, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !4798

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.ld, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %i.lt = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lu = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lv = add i64 %.val6.i.i63, %i.lu
  %xtraiter = and i64 %i.lt, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.lw = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lx = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lx
  %.val8.i.i.prol = load i8, ptr %i.ly, align 1, !noalias !4813, !noundef !5
  %..i.i.i.i.i67.prol = call i8 @llvm.umin.i8(i8 %.val8.i.i.prol, i8 %i.kr)
  store i8 %..i.i.i.i.i67.prol, ptr %i.lz, align 1, !alias.scope !4816, !noalias !4813
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.lw, %vec.epilog.scalar.ph402.prol ]
  %i.ma = icmp eq i64 %i.lv, %.val.i.i62
  br i1 %i.ma, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.me, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.mb = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.mb
  %.val8.i.i = load i8, ptr %i.mc, align 1, !noalias !4813, !noundef !5
  %..i.i.i.i.i67 = call i8 @llvm.umin.i8(i8 %.val8.i.i, i8 %i.kr)
  store i8 %..i.i.i.i.i67, ptr %i.md, align 1, !alias.scope !4816, !noalias !4813
  %i.me = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %.reass
  %i.mg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i8, ptr %i.mf, align 1, !noalias !4813, !noundef !5
  %..i.i.i.i.i67.1 = call i8 @llvm.umin.i8(i8 %.val8.i.i.1, i8 %i.kr)
  store i8 %..i.i.i.i.i67.1, ptr %i.mg, align 1, !alias.scope !4816, !noalias !4813
  %exitcond.not.i.i68.1 = icmp eq i64 %i.me, %i.ld
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !4799

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4812
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mh = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.mh, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload
  %i.mj = load i8, ptr %i.mi, align 1, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mk = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ml = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0157)
  %7 = mul i64 %i.v, %indvar
  %i.mm = sub i64 %i.ml, %7
  %i.mn = call i64 @llvm.umin.i64(i64 %i.mm, i64 %i.mk)
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.aq) ; 2 uses
  %min.iters.check416 = icmp samesign ult i64 %i.mo, 16
  br i1 %min.iters.check416, label %.lr.ph.preheader430, label %vector.ph417

vector.ph417:                                     ; preds = %.lr.ph.preheader
  %i.mp = add nuw i64 %i.mo, 1                    ; 2 uses
  %i.mq = and i64 %i.mp, 15                       ; 2 uses
  %i.mr = icmp eq i64 %i.mq, 0
  %i.ms = select i1 %i.mr, i64 16, i64 %i.mq
  %n.vec418 = sub i64 %i.mp, %i.ms                ; 2 uses
  %broadcast.splatinsert419 = insertelement <16 x i8> poison, i8 %i.mj, i64 0
  %broadcast.splat420 = shufflevector <16 x i8> %broadcast.splatinsert419, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep454 = getelementptr i8, ptr %i.p, i64 %.sroa.0.0157
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph417
  %index422 = phi i64 [ 0, %vector.ph417 ], [ %index.next424, %vector.body421 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index422
  %wide.load423 = load <16 x i8>, ptr %gep, align 1
  %i.mt = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %broadcast.splat420, <16 x i8> %wide.load423)
  %gep455 = getelementptr i8, ptr %invariant.gep454, i64 %index422
  store <16 x i8> %i.mt, ptr %gep455, align 1
  %index.next424 = add nuw i64 %index422, 16      ; 2 uses
  %i.mu = icmp eq i64 %index.next424, %n.vec418
  br i1 %i.mu, label %.lr.ph.preheader430, label %vector.body421, !llvm.loop !4800

.lr.ph.preheader430:                              ; preds = %vector.body421, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec418, %vector.body421 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader430, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.mv, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader430 ] ; 4 uses
  %i.mv = add nuw i64 %.sroa.020.0154, 1          ; 2 uses
  %i.mw = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mk
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mx = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.my = icmp ult i64 %i.mx, %i.m
  br i1 %i.my, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.mz = getelementptr inbounds nuw i8, ptr %5, i64 %i.mw
  %i.na = load i8, ptr %i.mz, align 1, !noundef !5
  %..i.i = call noundef i8 @llvm.umin.i8(i8 %i.mj, i8 %i.na)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.mx
  store i8 %..i.i, ptr %i.nb, align 1
  %exitcond242.not = icmp eq i64 %i.mv, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4801

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nc, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nc = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nd = mul i64 %.sroa.022.0155, %i.x
  %i.ne = add i64 %i.nd, %.sroa.071.0.copyload    ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %4
  br i1 %i.nf, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.ng = mul i64 %.sroa.022.0155, %i.z
  %i.nh = add i64 %i.ng, %.sroa.4.0.copyload      ; 3 uses
  %i.ni = icmp ult i64 %i.nh, %6
  br i1 %i.ni, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nj = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nk = icmp ult i64 %i.nj, %i.m
  br i1 %i.nk, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 %i.ne
  %i.nm = load i8, ptr %i.nl, align 1, !noundef !5
  %i.nn = getelementptr inbounds nuw i8, ptr %5, i64 %i.nh
  %i.no = load i8, ptr %i.nn, align 1, !noundef !5
  %..i.i70 = call noundef i8 @llvm.umin.i8(i8 %i.nm, i8 %i.no)
  %i.np = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.nj
  store i8 %..i.i70, ptr %i.np, align 1
  %exitcond243.not = icmp eq i64 %i.nc, %i.v
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_veclNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i32NvYB1a_B1s_7i32_vecNvYB1a_B1s_14i32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit80:                                      ; preds = %bb.n, %.noexc60, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke351, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit80
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VeclEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not160 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.071.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4866
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4866
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph159, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph159 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph159 ], [ %.sroa.4.0.copyload247, %.loopexit ] ; 12 uses
  %.sroa.071.0.copyload = phi i64 [ %.sroa.071.0.copyload.pre, %.lr.ph159 ], [ %.sroa.071.0.copyload244, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph159 ], [ %i.kh, %.loopexit ]
  %.sroa.0.0157 = phi i64 [ 0, %.lr.ph159 ], [ %i.kg, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4865, !noalias !4866
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit79.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4865, !noalias !4866
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit79.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4865, !noalias !4866
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit79.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4865, !noalias !4866
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit79.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4865, !noalias !4866
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit79.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4865, !noalias !4866
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit79.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4865, !noalias !4866
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit79.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4865, !noalias !4866
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit79.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4865, !noalias !4866
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit79.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4865, !noalias !4866
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit79.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4865, !noalias !4866
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4865, !noalias !4866
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4865, !noalias !4866
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit79.split.us, label %.lr.ph.i.split.us.5

end_hunk_10
begin_hunk_11_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_veclNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i32NvYB1a_B1s_7i32_vecNvYB1a_B1s_14i32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jj = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jk = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jl = add i64 %i.jk, %i.ip                    ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jk
  %i.jp = load i32, ptr %i.jm, align 4, !noalias !4874, !noundef !5
  %i.jq = load i32, ptr %i.jn, align 4, !noalias !4874, !noundef !5
  %..i.i.i.i.i.prol = call i32 @llvm.smax.i32(i32 %i.jp, i32 %i.jq)
  store i32 %..i.i.i.i.i.prol, ptr %i.jo, align 4, !noalias !4874
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jj, %scalar.ph.prol ]
  %i.jr = icmp eq i64 %i.ji, %.val.i.i
  br i1 %i.jr, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op435 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.jz, %scalar.ph ] ; 3 uses
  %i.js = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jt = add i64 %i.js, %i.ip                    ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jt
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jt
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.js
  %i.jx = load i32, ptr %i.ju, align 4, !noalias !4874, !noundef !5
  %i.jy = load i32, ptr %i.jv, align 4, !noalias !4874, !noundef !5
  %..i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.jx, i32 %i.jy)
  store i32 %..i.i.i.i.i, ptr %i.jw, align 4, !noalias !4874
  %i.jz = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass436 = add i64 %.sroa.0.012.i.i, %invariant.op435 ; 2 uses
  %i.ka = add i64 %.reass436, %i.ip               ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass436
  %i.ke = load i32, ptr %i.kb, align 4, !noalias !4874, !noundef !5
  %i.kf = load i32, ptr %i.kc, align 4, !noalias !4874, !noundef !5
  %..i.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %i.ke, i32 %i.kf)
  store i32 %..i.i.i.i.i.1, ptr %i.kd, align 4, !noalias !4874
  %exitcond.not.i.i.1 = icmp eq i64 %i.jz, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4846

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4867
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kg = add i64 %.sroa.0.0157, %i.v
  %i.kh = load i64, ptr %i.aa, align 8, !alias.scope !4865, !noalias !4866, !noundef !5 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ki, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kk = load i32, ptr %i.kj, align 4, !noundef !5 ; 4 uses
  %i.kl = add i64 %.sroa.071.0.copyload, %i.v     ; 3 uses
  %i.km = icmp ult i64 %i.kl, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kl, %4
  %or.cond58 = or i1 %i.km, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kn = phi i64 [ %i.mx, %bb.v ], [ %i.mn, %bb.t ], [ %i.mu, %.lr.ph156 ], [ %i.mz, %bb.w ], [ %i.mm, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ko = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph156 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kp = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kn, i64 noundef %i.ko, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kp) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kq = add i64 %.sroa.0.0157, %i.v             ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.kq, %i.m
  %or.cond59 = or i1 %i.kr, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4875
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.v
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtBZ_7IterMutlEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.ks, ptr noundef nonnull readonly %i.ku, ptr noundef nonnull align 4 %i.kt, ptr noundef nonnull %i.kv)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4876)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !4876, !noalias !4877, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !4876, !noalias !4877, !noundef !5 ; 4 uses
  %i.kw = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !4878, !noalias !4877, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !4878, !noalias !4877, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.kw, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.kx = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.kx, -32
  %or.cond406 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond406, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.kw, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.ky = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.ky ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load387 = load <4 x i32>, ptr %i.kz, align 4, !noalias !4876
  %wide.load388 = load <4 x i32>, ptr %i.lb, align 4, !noalias !4876
  %i.lc = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load387, <4 x i32> %broadcast.splat)
  %i.ld = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load388, <4 x i32> %broadcast.splat)
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <4 x i32> %i.lc, ptr %i.la, align 4, !alias.scope !4879, !noalias !4876
  store <4 x i32> %i.ld, ptr %i.le, align 4, !alias.scope !4879, !noalias !4876
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lf, label %middle.block390, label %vector.body385, !llvm.loop !4861

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.kw, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %i.lg = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lh = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.li = add i64 %.val6.i.i63, %i.lh
  %xtraiter = and i64 %i.lg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lj = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lk = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lk
  %.val8.i.i.prol = load i32, ptr %i.ll, align 4, !noalias !4876, !noundef !5
  %..i.i.i.i.i67.prol = call i32 @llvm.smax.i32(i32 %.val8.i.i.prol, i32 %i.kk)
  store i32 %..i.i.i.i.i67.prol, ptr %i.lm, align 4, !alias.scope !4879, !noalias !4876
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lj, %scalar.ph381.prol ]
  %i.ln = icmp eq i64 %i.li, %.val.i.i62
  br i1 %i.ln, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.lr, %scalar.ph381 ] ; 3 uses
  %i.lo = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lo
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lo
  %.val8.i.i = load i32, ptr %i.lp, align 4, !noalias !4876, !noundef !5
  %..i.i.i.i.i67 = call i32 @llvm.smax.i32(i32 %.val8.i.i, i32 %i.kk)
  store i32 %..i.i.i.i.i67, ptr %i.lq, align 4, !alias.scope !4879, !noalias !4876
  %i.lr = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i32, ptr %i.ls, align 4, !noalias !4876, !noundef !5
  %..i.i.i.i.i67.1 = call i32 @llvm.smax.i32(i32 %.val8.i.i.1, i32 %i.kk)
  store i32 %..i.i.i.i.i67.1, ptr %i.lt, align 4, !alias.scope !4879, !noalias !4876
  %exitcond.not.i.i68.1 = icmp eq i64 %i.lr, %i.kw
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !4862

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4875
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lu = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.lu, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.lw = load i32, ptr %i.lv, align 4, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.lx = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ly = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0157)
  %7 = mul i64 %i.v, %indvar
  %i.lz = sub i64 %i.ly, %7
  %i.ma = call i64 @llvm.umin.i64(i64 %i.lz, i64 %i.lx)
  %i.mb = call i64 @llvm.umin.i64(i64 %i.ma, i64 %i.aq) ; 2 uses
  %min.iters.check394 = icmp samesign ult i64 %i.mb, 8
  br i1 %min.iters.check394, label %.lr.ph.preheader409, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph.preheader
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %i.md = and i64 %i.mc, 7                        ; 2 uses
  %i.me = icmp eq i64 %i.md, 0
  %i.mf = select i1 %i.me, i64 8, i64 %i.md
  %n.vec396 = sub nsw i64 %i.mc, %i.mf            ; 2 uses
  %broadcast.splatinsert397 = insertelement <4 x i32> poison, i32 %i.lw, i64 0
  %broadcast.splat398 = shufflevector <4 x i32> %broadcast.splatinsert397, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep433 = getelementptr [4 x i8], ptr %i.p, i64 %.sroa.0.0157
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph395
  %index400 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body399 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index400 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load401 = load <4 x i32>, ptr %gep, align 4
  %wide.load402 = load <4 x i32>, ptr %i.mg, align 4
  %i.mh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %broadcast.splat398, <4 x i32> %wide.load401)
  %i.mi = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %broadcast.splat398, <4 x i32> %wide.load402)
  %gep434 = getelementptr [4 x i8], ptr %invariant.gep433, i64 %index400 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %gep434, i64 16
  store <4 x i32> %i.mh, ptr %gep434, align 4
  store <4 x i32> %i.mi, ptr %i.mj, align 4
  %index.next403 = add nuw i64 %index400, 8       ; 2 uses
  %i.mk = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.mk, label %.lr.ph.preheader409, label %vector.body399, !llvm.loop !4863

.lr.ph.preheader409:                              ; preds = %vector.body399, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec396, %vector.body399 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader409, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.ml, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader409 ] ; 4 uses
  %i.ml = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.mm = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.lx
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mn = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %i.m
  br i1 %i.mo, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mm
  %i.mq = load i32, ptr %i.mp, align 4, !noundef !5
  %..i.i = call noundef i32 @llvm.smax.i32(i32 %i.lw, i32 %i.mq)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mn
  store i32 %..i.i, ptr %i.mr, align 4
  %exitcond242.not = icmp eq i64 %i.ml, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4864

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.ms, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.ms = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.mt = mul i64 %.sroa.022.0155, %i.x
  %i.mu = add i64 %i.mt, %.sroa.071.0.copyload    ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %4
  br i1 %i.mv, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.mw = mul i64 %.sroa.022.0155, %i.z
  %i.mx = add i64 %i.mw, %.sroa.4.0.copyload      ; 3 uses
  %i.my = icmp ult i64 %i.mx, %6
  br i1 %i.my, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.mz = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.m
  br i1 %i.na, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mu
  %i.nc = load i32, ptr %i.nb, align 4, !noundef !5
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mx
  %i.ne = load i32, ptr %i.nd, align 4, !noundef !5
  %..i.i70 = call noundef i32 @llvm.smax.i32(i32 %i.nc, i32 %i.ne)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mz
  store i32 %..i.i70, ptr %i.nf, align 4
  %exitcond243.not = icmp eq i64 %i.ms, %i.v
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_veclNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i32NvYB1a_B1s_7i32_vecNvYB1a_B1s_14i32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit80:                                      ; preds = %bb.n, %.noexc60, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke351, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit80
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VeclEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not160 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.071.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4929
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4929
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph159, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph159 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph159 ], [ %.sroa.4.0.copyload247, %.loopexit ] ; 12 uses
  %.sroa.071.0.copyload = phi i64 [ %.sroa.071.0.copyload.pre, %.lr.ph159 ], [ %.sroa.071.0.copyload244, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph159 ], [ %i.kh, %.loopexit ]
  %.sroa.0.0157 = phi i64 [ 0, %.lr.ph159 ], [ %i.kg, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4928, !noalias !4929
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit79.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4928, !noalias !4929
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit79.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4928, !noalias !4929
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit79.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4928, !noalias !4929
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit79.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4928, !noalias !4929
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit79.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4928, !noalias !4929
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit79.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4928, !noalias !4929
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit79.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4928, !noalias !4929
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit79.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4928, !noalias !4929
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit79.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4928, !noalias !4929
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit79.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4928, !noalias !4929
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4928, !noalias !4929
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4928, !noalias !4929
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit79.split.us, label %.lr.ph.i.split.us.5

end_hunk_11
begin_hunk_12_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_veclNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i32NvYB1a_B1s_7i32_vecNvYB1a_B1s_14i32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jj = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jk = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jl = add i64 %i.jk, %i.ip                    ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jk
  %i.jp = load i32, ptr %i.jm, align 4, !noalias !4937, !noundef !5
  %i.jq = load i32, ptr %i.jn, align 4, !noalias !4937, !noundef !5
  %..i.i.i.i.i.prol = call i32 @llvm.smin.i32(i32 %i.jp, i32 %i.jq)
  store i32 %..i.i.i.i.i.prol, ptr %i.jo, align 4, !noalias !4937
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jj, %scalar.ph.prol ]
  %i.jr = icmp eq i64 %i.ji, %.val.i.i
  br i1 %i.jr, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op435 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.jz, %scalar.ph ] ; 3 uses
  %i.js = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jt = add i64 %i.js, %i.ip                    ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jt
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jt
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.js
  %i.jx = load i32, ptr %i.ju, align 4, !noalias !4937, !noundef !5
  %i.jy = load i32, ptr %i.jv, align 4, !noalias !4937, !noundef !5
  %..i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.jx, i32 %i.jy)
  store i32 %..i.i.i.i.i, ptr %i.jw, align 4, !noalias !4937
  %i.jz = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass436 = add i64 %.sroa.0.012.i.i, %invariant.op435 ; 2 uses
  %i.ka = add i64 %.reass436, %i.ip               ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass436
  %i.ke = load i32, ptr %i.kb, align 4, !noalias !4937, !noundef !5
  %i.kf = load i32, ptr %i.kc, align 4, !noalias !4937, !noundef !5
  %..i.i.i.i.i.1 = call i32 @llvm.smin.i32(i32 %i.ke, i32 %i.kf)
  store i32 %..i.i.i.i.i.1, ptr %i.kd, align 4, !noalias !4937
  %exitcond.not.i.i.1 = icmp eq i64 %i.jz, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4909

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4930
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSlB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kg = add i64 %.sroa.0.0157, %i.v
  %i.kh = load i64, ptr %i.aa, align 8, !alias.scope !4928, !noalias !4929, !noundef !5 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ki, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kk = load i32, ptr %i.kj, align 4, !noundef !5 ; 4 uses
  %i.kl = add i64 %.sroa.071.0.copyload, %i.v     ; 3 uses
  %i.km = icmp ult i64 %i.kl, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kl, %4
  %or.cond58 = or i1 %i.km, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kn = phi i64 [ %i.mx, %bb.v ], [ %i.mn, %bb.t ], [ %i.mu, %.lr.ph156 ], [ %i.mz, %bb.w ], [ %i.mm, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ko = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph156 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kp = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kn, i64 noundef %i.ko, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kp) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kq = add i64 %.sroa.0.0157, %i.v             ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.kq, %i.m
  %or.cond59 = or i1 %i.kr, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4938
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.v
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtBZ_7IterMutlEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.ks, ptr noundef nonnull readonly %i.ku, ptr noundef nonnull align 4 %i.kt, ptr noundef nonnull %i.kv)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4939)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !4939, !noalias !4940, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !4939, !noalias !4940, !noundef !5 ; 4 uses
  %i.kw = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !4941, !noalias !4940, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !4941, !noalias !4940, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.kw, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.kx = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.kx, -32
  %or.cond406 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond406, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.kw, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.ky = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.ky ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load387 = load <4 x i32>, ptr %i.kz, align 4, !noalias !4939
  %wide.load388 = load <4 x i32>, ptr %i.lb, align 4, !noalias !4939
  %i.lc = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load387, <4 x i32> %broadcast.splat)
  %i.ld = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load388, <4 x i32> %broadcast.splat)
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <4 x i32> %i.lc, ptr %i.la, align 4, !alias.scope !4942, !noalias !4939
  store <4 x i32> %i.ld, ptr %i.le, align 4, !alias.scope !4942, !noalias !4939
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lf, label %middle.block390, label %vector.body385, !llvm.loop !4924

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.kw, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %i.lg = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lh = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.li = add i64 %.val6.i.i63, %i.lh
  %xtraiter = and i64 %i.lg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lj = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lk = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lk
  %.val8.i.i.prol = load i32, ptr %i.ll, align 4, !noalias !4939, !noundef !5
  %..i.i.i.i.i67.prol = call i32 @llvm.smin.i32(i32 %.val8.i.i.prol, i32 %i.kk)
  store i32 %..i.i.i.i.i67.prol, ptr %i.lm, align 4, !alias.scope !4942, !noalias !4939
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lj, %scalar.ph381.prol ]
  %i.ln = icmp eq i64 %i.li, %.val.i.i62
  br i1 %i.ln, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.lr, %scalar.ph381 ] ; 3 uses
  %i.lo = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lo
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lo
  %.val8.i.i = load i32, ptr %i.lp, align 4, !noalias !4939, !noundef !5
  %..i.i.i.i.i67 = call i32 @llvm.smin.i32(i32 %.val8.i.i, i32 %i.kk)
  store i32 %..i.i.i.i.i67, ptr %i.lq, align 4, !alias.scope !4942, !noalias !4939
  %i.lr = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i32, ptr %i.ls, align 4, !noalias !4939, !noundef !5
  %..i.i.i.i.i67.1 = call i32 @llvm.smin.i32(i32 %.val8.i.i.1, i32 %i.kk)
  store i32 %..i.i.i.i.i67.1, ptr %i.lt, align 4, !alias.scope !4942, !noalias !4939
  %exitcond.not.i.i68.1 = icmp eq i64 %i.lr, %i.kw
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !4925

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTlRSlQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4938
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lu = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.lu, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.lw = load i32, ptr %i.lv, align 4, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.lx = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ly = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0157)
  %7 = mul i64 %i.v, %indvar
  %i.lz = sub i64 %i.ly, %7
  %i.ma = call i64 @llvm.umin.i64(i64 %i.lz, i64 %i.lx)
  %i.mb = call i64 @llvm.umin.i64(i64 %i.ma, i64 %i.aq) ; 2 uses
  %min.iters.check394 = icmp samesign ult i64 %i.mb, 8
  br i1 %min.iters.check394, label %.lr.ph.preheader409, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph.preheader
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %i.md = and i64 %i.mc, 7                        ; 2 uses
  %i.me = icmp eq i64 %i.md, 0
  %i.mf = select i1 %i.me, i64 8, i64 %i.md
  %n.vec396 = sub nsw i64 %i.mc, %i.mf            ; 2 uses
  %broadcast.splatinsert397 = insertelement <4 x i32> poison, i32 %i.lw, i64 0
  %broadcast.splat398 = shufflevector <4 x i32> %broadcast.splatinsert397, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep433 = getelementptr [4 x i8], ptr %i.p, i64 %.sroa.0.0157
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph395
  %index400 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body399 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index400 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load401 = load <4 x i32>, ptr %gep, align 4
  %wide.load402 = load <4 x i32>, ptr %i.mg, align 4
  %i.mh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat398, <4 x i32> %wide.load401)
  %i.mi = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %broadcast.splat398, <4 x i32> %wide.load402)
  %gep434 = getelementptr [4 x i8], ptr %invariant.gep433, i64 %index400 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %gep434, i64 16
  store <4 x i32> %i.mh, ptr %gep434, align 4
  store <4 x i32> %i.mi, ptr %i.mj, align 4
  %index.next403 = add nuw i64 %index400, 8       ; 2 uses
  %i.mk = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.mk, label %.lr.ph.preheader409, label %vector.body399, !llvm.loop !4926

.lr.ph.preheader409:                              ; preds = %vector.body399, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec396, %vector.body399 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader409, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.ml, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader409 ] ; 4 uses
  %i.ml = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.mm = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.lx
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mn = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %i.m
  br i1 %i.mo, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mm
  %i.mq = load i32, ptr %i.mp, align 4, !noundef !5
  %..i.i = call noundef i32 @llvm.smin.i32(i32 %i.lw, i32 %i.mq)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mn
  store i32 %..i.i, ptr %i.mr, align 4
  %exitcond242.not = icmp eq i64 %i.ml, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4927

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.ms, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.ms = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.mt = mul i64 %.sroa.022.0155, %i.x
  %i.mu = add i64 %i.mt, %.sroa.071.0.copyload    ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %4
  br i1 %i.mv, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.mw = mul i64 %.sroa.022.0155, %i.z
  %i.mx = add i64 %i.mw, %.sroa.4.0.copyload      ; 3 uses
  %i.my = icmp ult i64 %i.mx, %6
  br i1 %i.my, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.mz = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.m
  br i1 %i.na, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mu
  %i.nc = load i32, ptr %i.nb, align 4, !noundef !5
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mx
  %i.ne = load i32, ptr %i.nd, align 4, !noundef !5
  %..i.i70 = call noundef i32 @llvm.smin.i32(i32 %i.nc, i32 %i.ne)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mz
  store i32 %..i.i70, ptr %i.nf, align 4
  %exitcond243.not = icmp eq i64 %i.ms, %i.v
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecmNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3u32NvYB1a_B1s_7u32_vecNvYB1a_B1s_14u32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit80:                                      ; preds = %bb.n, %.noexc60, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke351, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit80
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not160 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.071.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !4992
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4992
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph159, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph159 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph159 ], [ %.sroa.4.0.copyload247, %.loopexit ] ; 12 uses
  %.sroa.071.0.copyload = phi i64 [ %.sroa.071.0.copyload.pre, %.lr.ph159 ], [ %.sroa.071.0.copyload244, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph159 ], [ %i.kh, %.loopexit ]
  %.sroa.0.0157 = phi i64 [ 0, %.lr.ph159 ], [ %i.kg, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !4991, !noalias !4992
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit79.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !4991, !noalias !4992
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit79.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !4991, !noalias !4992
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit79.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !4991, !noalias !4992
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit79.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !4991, !noalias !4992
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit79.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !4991, !noalias !4992
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit79.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !4991, !noalias !4992
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit79.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !4991, !noalias !4992
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit79.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !4991, !noalias !4992
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit79.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !4991, !noalias !4992
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit79.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !4991, !noalias !4992
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !4991, !noalias !4992
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4991, !noalias !4992
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit79.split.us, label %.lr.ph.i.split.us.5

end_hunk_12
begin_hunk_13_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecmNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3u32NvYB1a_B1s_7u32_vecNvYB1a_B1s_14u32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jj = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jk = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jl = add i64 %i.jk, %i.ip                    ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jk
  %i.jp = load i32, ptr %i.jm, align 4, !noalias !5000, !noundef !5
  %i.jq = load i32, ptr %i.jn, align 4, !noalias !5000, !noundef !5
  %..i.i.i.i.i.prol = call i32 @llvm.umax.i32(i32 %i.jp, i32 %i.jq)
  store i32 %..i.i.i.i.i.prol, ptr %i.jo, align 4, !noalias !5000
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jj, %scalar.ph.prol ]
  %i.jr = icmp eq i64 %i.ji, %.val.i.i
  br i1 %i.jr, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op435 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.jz, %scalar.ph ] ; 3 uses
  %i.js = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jt = add i64 %i.js, %i.ip                    ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jt
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jt
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.js
  %i.jx = load i32, ptr %i.ju, align 4, !noalias !5000, !noundef !5
  %i.jy = load i32, ptr %i.jv, align 4, !noalias !5000, !noundef !5
  %..i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.jx, i32 %i.jy)
  store i32 %..i.i.i.i.i, ptr %i.jw, align 4, !noalias !5000
  %i.jz = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass436 = add i64 %.sroa.0.012.i.i, %invariant.op435 ; 2 uses
  %i.ka = add i64 %.reass436, %i.ip               ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass436
  %i.ke = load i32, ptr %i.kb, align 4, !noalias !5000, !noundef !5
  %i.kf = load i32, ptr %i.kc, align 4, !noalias !5000, !noundef !5
  %..i.i.i.i.i.1 = call i32 @llvm.umax.i32(i32 %i.ke, i32 %i.kf)
  store i32 %..i.i.i.i.i.1, ptr %i.kd, align 4, !noalias !5000
  %exitcond.not.i.i.1 = icmp eq i64 %i.jz, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4972

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4993
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kg = add i64 %.sroa.0.0157, %i.v
  %i.kh = load i64, ptr %i.aa, align 8, !alias.scope !4991, !noalias !4992, !noundef !5 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ki, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kk = load i32, ptr %i.kj, align 4, !noundef !5 ; 4 uses
  %i.kl = add i64 %.sroa.071.0.copyload, %i.v     ; 3 uses
  %i.km = icmp ult i64 %i.kl, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kl, %4
  %or.cond58 = or i1 %i.km, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kn = phi i64 [ %i.mx, %bb.v ], [ %i.mn, %bb.t ], [ %i.mu, %.lr.ph156 ], [ %i.mz, %bb.w ], [ %i.mm, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ko = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph156 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kp = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kn, i64 noundef %i.ko, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kp) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kq = add i64 %.sroa.0.0157, %i.v             ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.kq, %i.m
  %or.cond59 = or i1 %i.kr, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5001
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.v
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.ks, ptr noundef nonnull readonly %i.ku, ptr noundef nonnull align 4 %i.kt, ptr noundef nonnull %i.kv)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5002)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !5002, !noalias !5003, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !5002, !noalias !5003, !noundef !5 ; 4 uses
  %i.kw = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !5004, !noalias !5003, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !5004, !noalias !5003, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.kw, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.kx = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.kx, -32
  %or.cond406 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond406, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.kw, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.ky = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.ky ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load387 = load <4 x i32>, ptr %i.kz, align 4, !noalias !5002
  %wide.load388 = load <4 x i32>, ptr %i.lb, align 4, !noalias !5002
  %i.lc = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load387, <4 x i32> %broadcast.splat)
  %i.ld = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load388, <4 x i32> %broadcast.splat)
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <4 x i32> %i.lc, ptr %i.la, align 4, !alias.scope !5005, !noalias !5002
  store <4 x i32> %i.ld, ptr %i.le, align 4, !alias.scope !5005, !noalias !5002
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lf, label %middle.block390, label %vector.body385, !llvm.loop !4987

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.kw, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %i.lg = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lh = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.li = add i64 %.val6.i.i63, %i.lh
  %xtraiter = and i64 %i.lg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lj = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lk = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lk
  %.val8.i.i.prol = load i32, ptr %i.ll, align 4, !noalias !5002, !noundef !5
  %..i.i.i.i.i67.prol = call i32 @llvm.umax.i32(i32 %.val8.i.i.prol, i32 %i.kk)
  store i32 %..i.i.i.i.i67.prol, ptr %i.lm, align 4, !alias.scope !5005, !noalias !5002
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lj, %scalar.ph381.prol ]
  %i.ln = icmp eq i64 %i.li, %.val.i.i62
  br i1 %i.ln, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.lr, %scalar.ph381 ] ; 3 uses
  %i.lo = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lo
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lo
  %.val8.i.i = load i32, ptr %i.lp, align 4, !noalias !5002, !noundef !5
  %..i.i.i.i.i67 = call i32 @llvm.umax.i32(i32 %.val8.i.i, i32 %i.kk)
  store i32 %..i.i.i.i.i67, ptr %i.lq, align 4, !alias.scope !5005, !noalias !5002
  %i.lr = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i32, ptr %i.ls, align 4, !noalias !5002, !noundef !5
  %..i.i.i.i.i67.1 = call i32 @llvm.umax.i32(i32 %.val8.i.i.1, i32 %i.kk)
  store i32 %..i.i.i.i.i67.1, ptr %i.lt, align 4, !alias.scope !5005, !noalias !5002
  %exitcond.not.i.i68.1 = icmp eq i64 %i.lr, %i.kw
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !4988

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5001
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lu = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.lu, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.lw = load i32, ptr %i.lv, align 4, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.lx = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ly = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0157)
  %7 = mul i64 %i.v, %indvar
  %i.lz = sub i64 %i.ly, %7
  %i.ma = call i64 @llvm.umin.i64(i64 %i.lz, i64 %i.lx)
  %i.mb = call i64 @llvm.umin.i64(i64 %i.ma, i64 %i.aq) ; 2 uses
  %min.iters.check394 = icmp samesign ult i64 %i.mb, 8
  br i1 %min.iters.check394, label %.lr.ph.preheader409, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph.preheader
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %i.md = and i64 %i.mc, 7                        ; 2 uses
  %i.me = icmp eq i64 %i.md, 0
  %i.mf = select i1 %i.me, i64 8, i64 %i.md
  %n.vec396 = sub nsw i64 %i.mc, %i.mf            ; 2 uses
  %broadcast.splatinsert397 = insertelement <4 x i32> poison, i32 %i.lw, i64 0
  %broadcast.splat398 = shufflevector <4 x i32> %broadcast.splatinsert397, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep433 = getelementptr [4 x i8], ptr %i.p, i64 %.sroa.0.0157
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph395
  %index400 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body399 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index400 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load401 = load <4 x i32>, ptr %gep, align 4
  %wide.load402 = load <4 x i32>, ptr %i.mg, align 4
  %i.mh = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat398, <4 x i32> %wide.load401)
  %i.mi = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat398, <4 x i32> %wide.load402)
  %gep434 = getelementptr [4 x i8], ptr %invariant.gep433, i64 %index400 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %gep434, i64 16
  store <4 x i32> %i.mh, ptr %gep434, align 4
  store <4 x i32> %i.mi, ptr %i.mj, align 4
  %index.next403 = add nuw i64 %index400, 8       ; 2 uses
  %i.mk = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.mk, label %.lr.ph.preheader409, label %vector.body399, !llvm.loop !4989

.lr.ph.preheader409:                              ; preds = %vector.body399, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec396, %vector.body399 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader409, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.ml, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader409 ] ; 4 uses
  %i.ml = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.mm = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.lx
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mn = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %i.m
  br i1 %i.mo, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mm
  %i.mq = load i32, ptr %i.mp, align 4, !noundef !5
  %..i.i = call noundef i32 @llvm.umax.i32(i32 %i.lw, i32 %i.mq)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mn
  store i32 %..i.i, ptr %i.mr, align 4
  %exitcond242.not = icmp eq i64 %i.ml, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4990

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.ms, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.ms = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.mt = mul i64 %.sroa.022.0155, %i.x
  %i.mu = add i64 %i.mt, %.sroa.071.0.copyload    ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %4
  br i1 %i.mv, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.mw = mul i64 %.sroa.022.0155, %i.z
  %i.mx = add i64 %i.mw, %.sroa.4.0.copyload      ; 3 uses
  %i.my = icmp ult i64 %i.mx, %6
  br i1 %i.my, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.mz = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.m
  br i1 %i.na, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mu
  %i.nc = load i32, ptr %i.nb, align 4, !noundef !5
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mx
  %i.ne = load i32, ptr %i.nd, align 4, !noundef !5
  %..i.i70 = call noundef i32 @llvm.umax.i32(i32 %i.nc, i32 %i.ne)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mz
  store i32 %..i.i70, ptr %i.nf, align 4
  %exitcond243.not = icmp eq i64 %i.ms, %i.v
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecmNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3u32NvYB1a_B1s_7u32_vecNvYB1a_B1s_14u32_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit80:                                      ; preds = %bb.n, %.noexc60, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke351, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit80
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not160 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.071.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !5055
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5055
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph159, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph159 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph159 ], [ %.sroa.4.0.copyload247, %.loopexit ] ; 12 uses
  %.sroa.071.0.copyload = phi i64 [ %.sroa.071.0.copyload.pre, %.lr.ph159 ], [ %.sroa.071.0.copyload244, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph159 ], [ %i.kh, %.loopexit ]
  %.sroa.0.0157 = phi i64 [ 0, %.lr.ph159 ], [ %i.kg, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !5054, !noalias !5055
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit79.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !5054, !noalias !5055
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit79.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !5054, !noalias !5055
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit79.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !5054, !noalias !5055
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit79.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !5054, !noalias !5055
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit79.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !5054, !noalias !5055
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit79.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !5054, !noalias !5055
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit79.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !5054, !noalias !5055
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit79.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !5054, !noalias !5055
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit79.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !5054, !noalias !5055
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit79.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !5054, !noalias !5055
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !5054, !noalias !5055
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5054, !noalias !5055
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit79.split.us, label %.lr.ph.i.split.us.5

end_hunk_13
begin_hunk_14_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecmNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3u32NvYB1a_B1s_7u32_vecNvYB1a_B1s_14u32_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jj = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jk = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jl = add i64 %i.jk, %i.ip                    ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.jk
  %i.jp = load i32, ptr %i.jm, align 4, !noalias !5063, !noundef !5
  %i.jq = load i32, ptr %i.jn, align 4, !noalias !5063, !noundef !5
  %..i.i.i.i.i.prol = call i32 @llvm.umin.i32(i32 %i.jp, i32 %i.jq)
  store i32 %..i.i.i.i.i.prol, ptr %i.jo, align 4, !noalias !5063
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jj, %scalar.ph.prol ]
  %i.jr = icmp eq i64 %i.ji, %.val.i.i
  br i1 %i.jr, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op435 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.jz, %scalar.ph ] ; 3 uses
  %i.js = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jt = add i64 %i.js, %i.ip                    ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jt
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.jt
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.js
  %i.jx = load i32, ptr %i.ju, align 4, !noalias !5063, !noundef !5
  %i.jy = load i32, ptr %i.jv, align 4, !noalias !5063, !noundef !5
  %..i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.jx, i32 %i.jy)
  store i32 %..i.i.i.i.i, ptr %i.jw, align 4, !noalias !5063
  %i.jz = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass436 = add i64 %.sroa.0.012.i.i, %invariant.op435 ; 2 uses
  %i.ka = add i64 %.reass436, %i.ip               ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %.reass436
  %i.ke = load i32, ptr %i.kb, align 4, !noalias !5063, !noundef !5
  %i.kf = load i32, ptr %i.kc, align 4, !noalias !5063, !noundef !5
  %..i.i.i.i.i.1 = call i32 @llvm.umin.i32(i32 %i.ke, i32 %i.kf)
  store i32 %..i.i.i.i.i.1, ptr %i.kd, align 4, !noalias !5063
  %exitcond.not.i.i.1 = icmp eq i64 %i.jz, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !5035

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5056
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7u32_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSmB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kg = add i64 %.sroa.0.0157, %i.v
  %i.kh = load i64, ptr %i.aa, align 8, !alias.scope !5054, !noalias !5055, !noundef !5 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ki, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kk = load i32, ptr %i.kj, align 4, !noundef !5 ; 4 uses
  %i.kl = add i64 %.sroa.071.0.copyload, %i.v     ; 3 uses
  %i.km = icmp ult i64 %i.kl, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kl, %4
  %or.cond58 = or i1 %i.km, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kn = phi i64 [ %i.mx, %bb.v ], [ %i.mn, %bb.t ], [ %i.mu, %.lr.ph156 ], [ %i.mz, %bb.w ], [ %i.mm, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ko = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph156 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kp = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kn, i64 noundef %i.ko, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kp) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kq = add i64 %.sroa.0.0157, %i.v             ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.kq, %i.m
  %or.cond59 = or i1 %i.kr, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5064
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.v
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.ks, ptr noundef nonnull readonly %i.ku, ptr noundef nonnull align 4 %i.kt, ptr noundef nonnull %i.kv)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5065)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !5065, !noalias !5066, !noundef !5 ; 8 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !5065, !noalias !5066, !noundef !5 ; 4 uses
  %i.kw = sub i64 %.val6.i.i63, %.val.i.i62       ; 4 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !5067, !noalias !5066, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !5067, !noalias !5066, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.kw, 8
  %.val1.i.i.i378 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66379 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.kx = sub i64 %.val.i.i.i66379, %.val1.i.i.i378
  %diff.check380 = icmp ugt i64 %i.kx, -32
  %or.cond406 = or i1 %min.iters.check382, %diff.check380
  br i1 %or.cond406, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %.lr.ph.i.i65
  %n.vec384 = and i64 %i.kw, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 2 uses
  %i.ky = add i64 %index386, %.val.i.i62          ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.ky ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load387 = load <4 x i32>, ptr %i.kz, align 4, !noalias !5065
  %wide.load388 = load <4 x i32>, ptr %i.lb, align 4, !noalias !5065
  %i.lc = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load387, <4 x i32> %broadcast.splat)
  %i.ld = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load388, <4 x i32> %broadcast.splat)
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <4 x i32> %i.lc, ptr %i.la, align 4, !alias.scope !5068, !noalias !5065
  store <4 x i32> %i.ld, ptr %i.le, align 4, !alias.scope !5068, !noalias !5065
  %index.next389 = add nuw i64 %index386, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.lf, label %middle.block390, label %vector.body385, !llvm.loop !5050

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %i.kw, %n.vec384
  br i1 %cmp.n391, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %.lr.ph.i.i65, %middle.block390
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i65 ], [ %n.vec384, %middle.block390 ] ; 4 uses
  %i.lg = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lh = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.li = add i64 %.val6.i.i63, %i.lh
  %xtraiter = and i64 %i.lg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader
  %i.lj = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lk = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lk
  %.val8.i.i.prol = load i32, ptr %i.ll, align 4, !noalias !5065, !noundef !5
  %..i.i.i.i.i67.prol = call i32 @llvm.umin.i32(i32 %.val8.i.i.prol, i32 %i.kk)
  store i32 %..i.i.i.i.i67.prol, ptr %i.lm, align 4, !alias.scope !5068, !noalias !5065
  br label %scalar.ph381.prol.loopexit

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph381.preheader ], [ %i.lj, %scalar.ph381.prol ]
  %i.ln = icmp eq i64 %i.li, %.val.i.i62
  br i1 %i.ln, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381.preheader.new

scalar.ph381.preheader.new:                       ; preds = %scalar.ph381.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %scalar.ph381

scalar.ph381:                                     ; preds = %scalar.ph381, %scalar.ph381.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph381.preheader.new ], [ %i.lr, %scalar.ph381 ] ; 3 uses
  %i.lo = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %i.lo
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.lo
  %.val8.i.i = load i32, ptr %i.lp, align 4, !noalias !5065, !noundef !5
  %..i.i.i.i.i67 = call i32 @llvm.umin.i32(i32 %.val8.i.i, i32 %i.kk)
  store i32 %..i.i.i.i.i67, ptr %i.lq, align 4, !alias.scope !5068, !noalias !5065
  %i.lr = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i32, ptr %i.ls, align 4, !noalias !5065, !noundef !5
  %..i.i.i.i.i67.1 = call i32 @llvm.umin.i32(i32 %.val8.i.i.1, i32 %i.kk)
  store i32 %..i.i.i.i.i67.1, ptr %i.lt, align 4, !alias.scope !5068, !noalias !5065
  %exitcond.not.i.i68.1 = icmp eq i64 %i.lr, %i.kw
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph381, !llvm.loop !5051

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14u32_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTmRSmQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5064
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lu = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.lu, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.lw = load i32, ptr %i.lv, align 4, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.lx = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ly = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0157)
  %7 = mul i64 %i.v, %indvar
  %i.lz = sub i64 %i.ly, %7
  %i.ma = call i64 @llvm.umin.i64(i64 %i.lz, i64 %i.lx)
  %i.mb = call i64 @llvm.umin.i64(i64 %i.ma, i64 %i.aq) ; 2 uses
  %min.iters.check394 = icmp samesign ult i64 %i.mb, 8
  br i1 %min.iters.check394, label %.lr.ph.preheader409, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph.preheader
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %i.md = and i64 %i.mc, 7                        ; 2 uses
  %i.me = icmp eq i64 %i.md, 0
  %i.mf = select i1 %i.me, i64 8, i64 %i.md
  %n.vec396 = sub nsw i64 %i.mc, %i.mf            ; 2 uses
  %broadcast.splatinsert397 = insertelement <4 x i32> poison, i32 %i.lw, i64 0
  %broadcast.splat398 = shufflevector <4 x i32> %broadcast.splatinsert397, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep433 = getelementptr [4 x i8], ptr %i.p, i64 %.sroa.0.0157
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph395
  %index400 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body399 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index400 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load401 = load <4 x i32>, ptr %gep, align 4
  %wide.load402 = load <4 x i32>, ptr %i.mg, align 4
  %i.mh = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat398, <4 x i32> %wide.load401)
  %i.mi = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat398, <4 x i32> %wide.load402)
  %gep434 = getelementptr [4 x i8], ptr %invariant.gep433, i64 %index400 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %gep434, i64 16
  store <4 x i32> %i.mh, ptr %gep434, align 4
  store <4 x i32> %i.mi, ptr %i.mj, align 4
  %index.next403 = add nuw i64 %index400, 8       ; 2 uses
  %i.mk = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.mk, label %.lr.ph.preheader409, label %vector.body399, !llvm.loop !5052

.lr.ph.preheader409:                              ; preds = %vector.body399, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec396, %vector.body399 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader409, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.ml, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader409 ] ; 4 uses
  %i.ml = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.mm = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.lx
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mn = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %i.m
  br i1 %i.mo, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mm
  %i.mq = load i32, ptr %i.mp, align 4, !noundef !5
  %..i.i = call noundef i32 @llvm.umin.i32(i32 %i.lw, i32 %i.mq)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mn
  store i32 %..i.i, ptr %i.mr, align 4
  %exitcond242.not = icmp eq i64 %i.ml, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !5053

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.ms, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.ms = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.mt = mul i64 %.sroa.022.0155, %i.x
  %i.mu = add i64 %i.mt, %.sroa.071.0.copyload    ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %4
  br i1 %i.mv, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.mw = mul i64 %.sroa.022.0155, %i.z
  %i.mx = add i64 %i.mw, %.sroa.4.0.copyload      ; 3 uses
  %i.my = icmp ult i64 %i.mx, %6
  br i1 %i.my, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.mz = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.m
  br i1 %i.na, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mu
  %i.nc = load i32, ptr %i.nb, align 4, !noundef !5
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mx
  %i.ne = load i32, ptr %i.nd, align 4, !noundef !5
  %..i.i70 = call noundef i32 @llvm.umin.i32(i32 %i.nc, i32 %i.ne)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.mz
  store i32 %..i.i70, ptr %i.nf, align 4
  %exitcond243.not = icmp eq i64 %i.ms, %i.v
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecsNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i16NvYB1a_B1s_7i16_vecNvYB1a_B1s_14i16_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 4611686018427387904) %4, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef range(i64 0, 4611686018427387904) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit80:                                      ; preds = %bb.n, %.noexc60, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke351, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit80
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecsEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not160 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.071.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !5120
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5120
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph159, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph159 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph159 ], [ %.sroa.4.0.copyload247, %.loopexit ] ; 12 uses
  %.sroa.071.0.copyload = phi i64 [ %.sroa.071.0.copyload.pre, %.lr.ph159 ], [ %.sroa.071.0.copyload244, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph159 ], [ %i.kp, %.loopexit ]
  %.sroa.0.0157 = phi i64 [ 0, %.lr.ph159 ], [ %i.ko, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !5119, !noalias !5120
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit79.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !5119, !noalias !5120
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit79.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !5119, !noalias !5120
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit79.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !5119, !noalias !5120
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit79.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !5119, !noalias !5120
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit79.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !5119, !noalias !5120
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit79.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !5119, !noalias !5120
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit79.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !5119, !noalias !5120
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit79.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !5119, !noalias !5120
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit79.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !5119, !noalias !5120
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit79.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !5119, !noalias !5120
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !5119, !noalias !5120
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit79.split.us, label %.lr.ph.i.split.us.5

end_hunk_14
begin_hunk_15_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecsNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i16NvYB1a_B1s_7i16_vecNvYB1a_B1s_14i16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  store i16 %..i.i.i.i.i, ptr %i.ke, align 2, !noalias !5128
  %i.kh = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass457 = add i64 %.sroa.0.012.i.i, %invariant.op456 ; 2 uses
  %i.ki = add i64 %.reass457, %i.ip               ; 2 uses
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.ki
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %.reass457
  %i.km = load i16, ptr %i.kj, align 2, !noalias !5128, !noundef !5
  %i.kn = load i16, ptr %i.kk, align 2, !noalias !5128, !noundef !5
  %..i.i.i.i.i.1 = call i16 @llvm.smax.i16(i16 %i.km, i16 %i.kn)
  store i16 %..i.i.i.i.i.1, ptr %i.kl, align 2, !noalias !5128
  %exitcond.not.i.i.1 = icmp eq i64 %i.kh, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !5099

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5121
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ko = add i64 %.sroa.0.0157, %i.v
  %i.kp = load i64, ptr %i.aa, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.kq = icmp eq i64 %i.kp, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kq, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ks = load i16, ptr %i.kr, align 2, !noundef !5 ; 5 uses
  %i.kt = add i64 %.sroa.071.0.copyload, %i.v     ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kt, %4
  %or.cond58 = or i1 %i.ku, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kv = phi i64 [ %i.ni, %bb.v ], [ %i.my, %bb.t ], [ %i.nf, %.lr.ph156 ], [ %i.nk, %bb.w ], [ %i.mx, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kw = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph156 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kx = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kv, i64 noundef %i.kw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kx) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ky = add i64 %.sroa.0.0157, %i.v             ; 3 uses
  %i.kz = icmp ult i64 %i.ky, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.ky, %i.m
  %or.cond59 = or i1 %i.kz, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5129
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.la, i64 %i.v
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEINtBZ_7IterMutsEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %i.la, ptr noundef nonnull readonly %i.lc, ptr noundef nonnull align 2 %i.lb, ptr noundef nonnull %i.ld)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5130)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !5130, !noalias !5131, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !5130, !noalias !5131, !noundef !5 ; 4 uses
  %i.le = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !5132, !noalias !5131, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !5132, !noalias !5131, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.le, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lf = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.lf, -32
  %or.cond427 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond427, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.le, 16
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.lg = and i64 %i.le, 12
  %n.vec392 = and i64 %i.le, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ks, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.lh = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lh ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load395 = load <8 x i16>, ptr %i.li, align 2, !noalias !5130
  %wide.load396 = load <8 x i16>, ptr %i.lk, align 2, !noalias !5130
  %i.ll = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load395, <8 x i16> %broadcast.splat)
  %i.lm = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load396, <8 x i16> %broadcast.splat)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store <8 x i16> %i.ll, ptr %i.lj, align 2, !alias.scope !5133, !noalias !5130
  store <8 x i16> %i.lm, ptr %i.ln, align 2, !alias.scope !5133, !noalias !5130
  %index.next397 = add nuw i64 %index394, 16      ; 2 uses
  %i.lo = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.lo, label %middle.block398, label %vector.body393, !llvm.loop !5114

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.le, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.lg, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !20

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.le, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i16> poison, i16 %i.ks, i64 0
  %broadcast.splat408 = shufflevector <4 x i16> %broadcast.splatinsert407, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.lp = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lp
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lp
  %wide.load411 = load <4 x i16>, ptr %i.lq, align 2, !noalias !5130
  %i.ls = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load411, <4 x i16> %broadcast.splat408)
  store <4 x i16> %i.ls, ptr %i.lr, align 2, !alias.scope !5133, !noalias !5130
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.lt, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !5115

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.le, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %i.lu = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lv = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lw = add i64 %.val6.i.i63, %i.lv
  %xtraiter = and i64 %i.lu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.lx = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.ly = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ly
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ly
  %.val8.i.i.prol = load i16, ptr %i.lz, align 2, !noalias !5130, !noundef !5
  %..i.i.i.i.i67.prol = call i16 @llvm.smax.i16(i16 %.val8.i.i.prol, i16 %i.ks)
  store i16 %..i.i.i.i.i67.prol, ptr %i.ma, align 2, !alias.scope !5133, !noalias !5130
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.lx, %vec.epilog.scalar.ph402.prol ]
  %i.mb = icmp eq i64 %i.lw, %.val.i.i62
  br i1 %i.mb, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.mf, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.mc = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mc
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mc
  %.val8.i.i = load i16, ptr %i.md, align 2, !noalias !5130, !noundef !5
  %..i.i.i.i.i67 = call i16 @llvm.smax.i16(i16 %.val8.i.i, i16 %i.ks)
  store i16 %..i.i.i.i.i67, ptr %i.me, align 2, !alias.scope !5133, !noalias !5130
  %i.mf = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.mg, align 2, !noalias !5130, !noundef !5
  %..i.i.i.i.i67.1 = call i16 @llvm.smax.i16(i16 %.val8.i.i.1, i16 %i.ks)
  store i16 %..i.i.i.i.i67.1, ptr %i.mh, align 2, !alias.scope !5133, !noalias !5130
  %exitcond.not.i.i68.1 = icmp eq i64 %i.mf, %i.le
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !5116

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5129
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mi = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.mi, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.mk = load i16, ptr %i.mj, align 2, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ml = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mm = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0157)
  %7 = mul i64 %i.v, %indvar
  %i.mn = sub i64 %i.mm, %7
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.ml)
  %i.mp = call i64 @llvm.umin.i64(i64 %i.mo, i64 %i.aq) ; 2 uses
  %min.iters.check416 = icmp samesign ult i64 %i.mp, 8
  br i1 %min.iters.check416, label %.lr.ph.preheader430, label %vector.ph417

vector.ph417:                                     ; preds = %.lr.ph.preheader
  %i.mq = add nuw nsw i64 %i.mp, 1                ; 2 uses
  %i.mr = and i64 %i.mq, 7                        ; 2 uses
  %i.ms = icmp eq i64 %i.mr, 0
  %i.mt = select i1 %i.ms, i64 8, i64 %i.mr
  %n.vec418 = sub nsw i64 %i.mq, %i.mt            ; 2 uses
  %broadcast.splatinsert419 = insertelement <8 x i16> poison, i16 %i.mk, i64 0
  %broadcast.splat420 = shufflevector <8 x i16> %broadcast.splatinsert419, <8 x i16> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep454 = getelementptr [2 x i8], ptr %i.p, i64 %.sroa.0.0157
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph417
  %index422 = phi i64 [ 0, %vector.ph417 ], [ %index.next424, %vector.body421 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index422
  %wide.load423 = load <8 x i16>, ptr %gep, align 2
  %i.mu = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %broadcast.splat420, <8 x i16> %wide.load423)
  %gep455 = getelementptr [2 x i8], ptr %invariant.gep454, i64 %index422
  store <8 x i16> %i.mu, ptr %gep455, align 2
  %index.next424 = add nuw i64 %index422, 8       ; 2 uses
  %i.mv = icmp eq i64 %index.next424, %n.vec418
  br i1 %i.mv, label %.lr.ph.preheader430, label %vector.body421, !llvm.loop !5117

.lr.ph.preheader430:                              ; preds = %vector.body421, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec418, %vector.body421 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader430, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.mw, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader430 ] ; 4 uses
  %i.mw = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.mx = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.ml
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.my = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.mz = icmp ult i64 %i.my, %i.m
  br i1 %i.mz, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.mx
  %i.nb = load i16, ptr %i.na, align 2, !noundef !5
  %..i.i = call noundef i16 @llvm.smax.i16(i16 %i.mk, i16 %i.nb)
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.my
  store i16 %..i.i, ptr %i.nc, align 2
  %exitcond242.not = icmp eq i64 %i.mw, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !5118

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nd, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nd = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.ne = mul i64 %.sroa.022.0155, %i.x
  %i.nf = add i64 %i.ne, %.sroa.071.0.copyload    ; 3 uses
  %i.ng = icmp ult i64 %i.nf, %4
  br i1 %i.ng, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nh = mul i64 %.sroa.022.0155, %i.z
  %i.ni = add i64 %i.nh, %.sroa.4.0.copyload      ; 3 uses
  %i.nj = icmp ult i64 %i.ni, %6
  br i1 %i.nj, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nk = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %i.m
  br i1 %i.nl, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.nf
  %i.nn = load i16, ptr %i.nm, align 2, !noundef !5
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ni
  %i.np = load i16, ptr %i.no, align 2, !noundef !5
  %..i.i70 = call noundef i16 @llvm.smax.i16(i16 %i.nn, i16 %i.np)
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.nk
  store i16 %..i.i70, ptr %i.nq, align 2
  %exitcond243.not = icmp eq i64 %i.nd, %i.v
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecsNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i16NvYB1a_B1s_7i16_vecNvYB1a_B1s_14i16_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 4611686018427387904) %4, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef range(i64 0, 4611686018427387904) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit80:                                      ; preds = %bb.n, %.noexc60, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke351, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit80
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit80 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecsEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not160 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.071.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !5185
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5185
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph159, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph159 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph159 ], [ %.sroa.4.0.copyload247, %.loopexit ] ; 12 uses
  %.sroa.071.0.copyload = phi i64 [ %.sroa.071.0.copyload.pre, %.lr.ph159 ], [ %.sroa.071.0.copyload244, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph159 ], [ %i.kp, %.loopexit ]
  %.sroa.0.0157 = phi i64 [ 0, %.lr.ph159 ], [ %i.ko, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !5184, !noalias !5185
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit79.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !5184, !noalias !5185
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit79.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !5184, !noalias !5185
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit79.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !5184, !noalias !5185
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit79.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !5184, !noalias !5185
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit79.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !5184, !noalias !5185
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit79.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !5184, !noalias !5185
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit79.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !5184, !noalias !5185
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit79.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !5184, !noalias !5185
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit79.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !5184, !noalias !5185
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit79.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !5184, !noalias !5185
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !5184, !noalias !5185
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit79.split.us, label %.lr.ph.i.split.us.5

end_hunk_15
begin_hunk_16_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecsNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i16NvYB1a_B1s_7i16_vecNvYB1a_B1s_14i16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  store i16 %..i.i.i.i.i, ptr %i.ke, align 2, !noalias !5193
  %i.kh = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass457 = add i64 %.sroa.0.012.i.i, %invariant.op456 ; 2 uses
  %i.ki = add i64 %.reass457, %i.ip               ; 2 uses
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.ki
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %.reass457
  %i.km = load i16, ptr %i.kj, align 2, !noalias !5193, !noundef !5
  %i.kn = load i16, ptr %i.kk, align 2, !noalias !5193, !noundef !5
  %..i.i.i.i.i.1 = call i16 @llvm.smin.i16(i16 %i.km, i16 %i.kn)
  store i16 %..i.i.i.i.i.1, ptr %i.kl, align 2, !noalias !5193
  %exitcond.not.i.i.1 = icmp eq i64 %i.kh, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !5164

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5186
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ko = add i64 %.sroa.0.0157, %i.v
  %i.kp = load i64, ptr %i.aa, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.kq = icmp eq i64 %i.kp, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kq, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ks = load i16, ptr %i.kr, align 2, !noundef !5 ; 5 uses
  %i.kt = add i64 %.sroa.071.0.copyload, %i.v     ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kt, %4
  %or.cond58 = or i1 %i.ku, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.kv = phi i64 [ %i.ni, %bb.v ], [ %i.my, %bb.t ], [ %i.nf, %.lr.ph156 ], [ %i.nk, %bb.w ], [ %i.mx, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kw = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph156 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kx = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kv, i64 noundef %i.kw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kx) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ky = add i64 %.sroa.0.0157, %i.v             ; 3 uses
  %i.kz = icmp ult i64 %i.ky, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.ky, %i.m
  %or.cond59 = or i1 %i.kz, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5194
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.la, i64 %i.v
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEINtBZ_7IterMutsEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %i.la, ptr noundef nonnull readonly %i.lc, ptr noundef nonnull align 2 %i.lb, ptr noundef nonnull %i.ld)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5195)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !5195, !noalias !5196, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !5195, !noalias !5196, !noundef !5 ; 4 uses
  %i.le = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !5197, !noalias !5196, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !5197, !noalias !5196, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.le, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lf = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.lf, -32
  %or.cond427 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond427, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.le, 16
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.lg = and i64 %i.le, 12
  %n.vec392 = and i64 %i.le, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ks, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.lh = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lh ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load395 = load <8 x i16>, ptr %i.li, align 2, !noalias !5195
  %wide.load396 = load <8 x i16>, ptr %i.lk, align 2, !noalias !5195
  %i.ll = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load395, <8 x i16> %broadcast.splat)
  %i.lm = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load396, <8 x i16> %broadcast.splat)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store <8 x i16> %i.ll, ptr %i.lj, align 2, !alias.scope !5198, !noalias !5195
  store <8 x i16> %i.lm, ptr %i.ln, align 2, !alias.scope !5198, !noalias !5195
  %index.next397 = add nuw i64 %index394, 16      ; 2 uses
  %i.lo = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.lo, label %middle.block398, label %vector.body393, !llvm.loop !5179

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.le, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.lg, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !20

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.le, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i16> poison, i16 %i.ks, i64 0
  %broadcast.splat408 = shufflevector <4 x i16> %broadcast.splatinsert407, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.lp = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lp
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lp
  %wide.load411 = load <4 x i16>, ptr %i.lq, align 2, !noalias !5195
  %i.ls = call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load411, <4 x i16> %broadcast.splat408)
  store <4 x i16> %i.ls, ptr %i.lr, align 2, !alias.scope !5198, !noalias !5195
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.lt, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !5180

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.le, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %i.lu = sub i64 %.val6.i.i63, %.val.i.i62
  %i.lv = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lw = add i64 %.val6.i.i63, %i.lv
  %xtraiter = and i64 %i.lu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.lx = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.ly = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ly
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ly
  %.val8.i.i.prol = load i16, ptr %i.lz, align 2, !noalias !5195, !noundef !5
  %..i.i.i.i.i67.prol = call i16 @llvm.smin.i16(i16 %.val8.i.i.prol, i16 %i.ks)
  store i16 %..i.i.i.i.i67.prol, ptr %i.ma, align 2, !alias.scope !5198, !noalias !5195
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.lx, %vec.epilog.scalar.ph402.prol ]
  %i.mb = icmp eq i64 %i.lw, %.val.i.i62
  br i1 %i.mb, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.mf, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.mc = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mc
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mc
  %.val8.i.i = load i16, ptr %i.md, align 2, !noalias !5195, !noundef !5
  %..i.i.i.i.i67 = call i16 @llvm.smin.i16(i16 %.val8.i.i, i16 %i.ks)
  store i16 %..i.i.i.i.i67, ptr %i.me, align 2, !alias.scope !5198, !noalias !5195
  %i.mf = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.mg, align 2, !noalias !5195, !noundef !5
  %..i.i.i.i.i67.1 = call i16 @llvm.smin.i16(i16 %.val8.i.i.1, i16 %i.ks)
  store i16 %..i.i.i.i.i67.1, ptr %i.mh, align 2, !alias.scope !5198, !noalias !5195
  %exitcond.not.i.i68.1 = icmp eq i64 %i.mf, %i.le
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !5181

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5194
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mi = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.mi, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.mk = load i16, ptr %i.mj, align 2, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ml = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mm = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0157)
  %7 = mul i64 %i.v, %indvar
  %i.mn = sub i64 %i.mm, %7
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.ml)
  %i.mp = call i64 @llvm.umin.i64(i64 %i.mo, i64 %i.aq) ; 2 uses
  %min.iters.check416 = icmp samesign ult i64 %i.mp, 8
  br i1 %min.iters.check416, label %.lr.ph.preheader430, label %vector.ph417

vector.ph417:                                     ; preds = %.lr.ph.preheader
  %i.mq = add nuw nsw i64 %i.mp, 1                ; 2 uses
  %i.mr = and i64 %i.mq, 7                        ; 2 uses
  %i.ms = icmp eq i64 %i.mr, 0
  %i.mt = select i1 %i.ms, i64 8, i64 %i.mr
  %n.vec418 = sub nsw i64 %i.mq, %i.mt            ; 2 uses
  %broadcast.splatinsert419 = insertelement <8 x i16> poison, i16 %i.mk, i64 0
  %broadcast.splat420 = shufflevector <8 x i16> %broadcast.splatinsert419, <8 x i16> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep454 = getelementptr [2 x i8], ptr %i.p, i64 %.sroa.0.0157
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph417
  %index422 = phi i64 [ 0, %vector.ph417 ], [ %index.next424, %vector.body421 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index422
  %wide.load423 = load <8 x i16>, ptr %gep, align 2
  %i.mu = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %broadcast.splat420, <8 x i16> %wide.load423)
  %gep455 = getelementptr [2 x i8], ptr %invariant.gep454, i64 %index422
  store <8 x i16> %i.mu, ptr %gep455, align 2
  %index.next424 = add nuw i64 %index422, 8       ; 2 uses
  %i.mv = icmp eq i64 %index.next424, %n.vec418
  br i1 %i.mv, label %.lr.ph.preheader430, label %vector.body421, !llvm.loop !5182

.lr.ph.preheader430:                              ; preds = %vector.body421, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec418, %vector.body421 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader430, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.mw, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader430 ] ; 4 uses
  %i.mw = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.mx = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.ml
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.my = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.mz = icmp ult i64 %i.my, %i.m
  br i1 %i.mz, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.mx
  %i.nb = load i16, ptr %i.na, align 2, !noundef !5
  %..i.i = call noundef i16 @llvm.smin.i16(i16 %i.mk, i16 %i.nb)
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.my
  store i16 %..i.i, ptr %i.nc, align 2
  %exitcond242.not = icmp eq i64 %i.mw, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !5183

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nd, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nd = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.ne = mul i64 %.sroa.022.0155, %i.x
  %i.nf = add i64 %i.ne, %.sroa.071.0.copyload    ; 3 uses
  %i.ng = icmp ult i64 %i.nf, %4
  br i1 %i.ng, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nh = mul i64 %.sroa.022.0155, %i.z
  %i.ni = add i64 %i.nh, %.sroa.4.0.copyload      ; 3 uses
  %i.nj = icmp ult i64 %i.ni, %6
  br i1 %i.nj, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nk = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %i.m
  br i1 %i.nl, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.nf
  %i.nn = load i16, ptr %i.nm, align 2, !noundef !5
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ni
  %i.np = load i16, ptr %i.no, align 2, !noundef !5
  %..i.i70 = call noundef i16 @llvm.smin.i16(i16 %i.nn, i16 %i.np)
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.nk
  store i16 %..i.i70, ptr %i.nq, align 2
  %exitcond243.not = icmp eq i64 %i.nd, %i.v
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecxNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i64NvYB1a_B1s_7i64_vecNvYB1a_B1s_14i64_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit79:                                      ; preds = %bb.n, %.noexc59, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke350, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit79
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit79 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecxEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not159 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.070.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !5248
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5248
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph158, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph158 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph158 ], [ %.sroa.4.0.copyload246, %.loopexit ] ; 12 uses
  %.sroa.070.0.copyload = phi i64 [ %.sroa.070.0.copyload.pre, %.lr.ph158 ], [ %.sroa.070.0.copyload243, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph158 ], [ %i.kh, %.loopexit ]
  %.sroa.0.0156 = phi i64 [ 0, %.lr.ph158 ], [ %i.kg, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !5247, !noalias !5248
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit78.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !5247, !noalias !5248
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit78.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !5247, !noalias !5248
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit78.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !5247, !noalias !5248
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit78.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !5247, !noalias !5248
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit78.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !5247, !noalias !5248
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit78.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !5247, !noalias !5248
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit78.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !5247, !noalias !5248
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit78.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !5247, !noalias !5248
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit78.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !5247, !noalias !5248
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit78.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !5247, !noalias !5248
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !5247, !noalias !5248
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5247, !noalias !5248
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit78.split.us, label %.lr.ph.i.split.us.5

end_hunk_16
begin_hunk_17_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecxNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i64NvYB1a_B1s_7i64_vecNvYB1a_B1s_14i64_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jj = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jk = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jl = add i64 %i.jk, %i.ip                    ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jk
  %i.jp = load i64, ptr %i.jm, align 8, !noalias !5256, !noundef !5
  %i.jq = load i64, ptr %i.jn, align 8, !noalias !5256, !noundef !5
  %..i.i.i.i.i.prol = call i64 @llvm.smax.i64(i64 %i.jp, i64 %i.jq)
  store i64 %..i.i.i.i.i.prol, ptr %i.jo, align 8, !noalias !5256
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jj, %scalar.ph.prol ]
  %i.jr = icmp eq i64 %i.ji, %.val.i.i
  br i1 %i.jr, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op434 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.jz, %scalar.ph ] ; 3 uses
  %i.js = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jt = add i64 %i.js, %i.ip                    ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jt
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jt
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.js
  %i.jx = load i64, ptr %i.ju, align 8, !noalias !5256, !noundef !5
  %i.jy = load i64, ptr %i.jv, align 8, !noalias !5256, !noundef !5
  %..i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.jx, i64 %i.jy)
  store i64 %..i.i.i.i.i, ptr %i.jw, align 8, !noalias !5256
  %i.jz = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass435 = add i64 %.sroa.0.012.i.i, %invariant.op434 ; 2 uses
  %i.ka = add i64 %.reass435, %i.ip               ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.reass435
  %i.ke = load i64, ptr %i.kb, align 8, !noalias !5256, !noundef !5
  %i.kf = load i64, ptr %i.kc, align 8, !noalias !5256, !noundef !5
  %..i.i.i.i.i.1 = call i64 @llvm.smax.i64(i64 %i.ke, i64 %i.kf)
  store i64 %..i.i.i.i.i.1, ptr %i.kd, align 8, !noalias !5256
  %exitcond.not.i.i.1 = icmp eq i64 %i.jz, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !5228

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5249
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kg = add i64 %.sroa.0.0156, %i.v
  %i.kh = load i64, ptr %i.aa, align 8, !alias.scope !5247, !noalias !5248, !noundef !5 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ki, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kk = load i64, ptr %i.kj, align 8, !noundef !5 ; 4 uses
  %i.kl = add i64 %.sroa.070.0.copyload, %i.v     ; 3 uses
  %i.km = icmp ult i64 %i.kl, %.sroa.070.0.copyload
  %.not = icmp ugt i64 %i.kl, %4
  %or.cond57 = or i1 %i.km, %.not
  br i1 %or.cond57, label %.invoke, label %bb.p, !prof !17

.invoke350:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph155
  %i.kn = phi i64 [ %i.mx, %bb.v ], [ %i.mn, %bb.t ], [ %i.mu, %.lr.ph155 ], [ %i.mz, %bb.w ], [ %i.mm, %.lr.ph ], [ %.sroa.070.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ko = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph155 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kp = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph155 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kn, i64 noundef %i.ko, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kp) #26
          to label %.cont351 unwind label %.loopexit.split-lp

.cont351:                                         ; preds = %.invoke350
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kq = add i64 %.sroa.0.0156, %i.v             ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.0.0156
  %.not51 = icmp ugt i64 %i.kq, %i.m
  %or.cond58 = or i1 %i.kr, %.not51
  br i1 %or.cond58, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.0156 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5257
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.v
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutxEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 %i.ks, ptr noundef nonnull readonly %i.ku, ptr noundef nonnull align 8 %i.kt, ptr noundef nonnull %i.kv)
          to label %.noexc68 unwind label %.loopexit79

.noexc68:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5258)
  %.val.i.i61 = load i64, ptr %i.ai, align 8, !alias.scope !5258, !noalias !5259, !noundef !5 ; 8 uses
  %.val6.i.i62 = load i64, ptr %i.aj, align 8, !alias.scope !5258, !noalias !5259, !noundef !5 ; 4 uses
  %i.kw = sub i64 %.val6.i.i62, %.val.i.i61       ; 4 uses
  %.not.i.i63 = icmp eq i64 %.val6.i.i62, %.val.i.i61
  br i1 %.not.i.i63, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.noexc68
  %.val.i.i.i65 = load ptr, ptr %i.a, align 8, !alias.scope !5260, !noalias !5259, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !5260, !noalias !5259, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check381 = icmp ult i64 %i.kw, 4
  %.val1.i.i.i377 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i65378 = ptrtoaddr ptr %.val.i.i.i65 to i64
  %i.kx = sub i64 %.val.i.i.i65378, %.val1.i.i.i377
  %diff.check379 = icmp ugt i64 %i.kx, -32
  %or.cond405 = or i1 %min.iters.check381, %diff.check379
  br i1 %or.cond405, label %scalar.ph380.preheader, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.i.i64
  %n.vec383 = and i64 %i.kw, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.kk, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next388, %vector.body384 ] ; 2 uses
  %i.ky = add i64 %index385, %.val.i.i61          ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.ky ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load386 = load <2 x i64>, ptr %i.kz, align 8, !noalias !5258
  %wide.load387 = load <2 x i64>, ptr %i.lb, align 8, !noalias !5258
  %i.lc = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load386, <2 x i64> %broadcast.splat)
  %i.ld = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load387, <2 x i64> %broadcast.splat)
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <2 x i64> %i.lc, ptr %i.la, align 8, !alias.scope !5261, !noalias !5258
  store <2 x i64> %i.ld, ptr %i.le, align 8, !alias.scope !5261, !noalias !5258
  %index.next388 = add nuw i64 %index385, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.lf, label %middle.block389, label %vector.body384, !llvm.loop !5243

middle.block389:                                  ; preds = %vector.body384
  %cmp.n390 = icmp eq i64 %i.kw, %n.vec383
  br i1 %cmp.n390, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader

scalar.ph380.preheader:                           ; preds = %.lr.ph.i.i64, %middle.block389
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i64 ], [ %n.vec383, %middle.block389 ] ; 4 uses
  %i.lg = sub i64 %.val6.i.i62, %.val.i.i61
  %i.lh = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.li = add i64 %.val6.i.i62, %i.lh
  %xtraiter = and i64 %i.lg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph380.prol.loopexit, label %scalar.ph380.prol

scalar.ph380.prol:                                ; preds = %scalar.ph380.preheader
  %i.lj = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lk = add i64 %.sroa.0.010.i.i.ph, %.val.i.i61 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lk
  %.val8.i.i.prol = load i64, ptr %i.ll, align 8, !noalias !5258, !noundef !5
  %..i.i.i.i.i66.prol = call i64 @llvm.smax.i64(i64 %.val8.i.i.prol, i64 %i.kk)
  store i64 %..i.i.i.i.i66.prol, ptr %i.lm, align 8, !alias.scope !5261, !noalias !5258
  br label %scalar.ph380.prol.loopexit

scalar.ph380.prol.loopexit:                       ; preds = %scalar.ph380.prol, %scalar.ph380.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph380.preheader ], [ %i.lj, %scalar.ph380.prol ]
  %i.ln = icmp eq i64 %i.li, %.val.i.i61
  br i1 %i.ln, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader.new

scalar.ph380.preheader.new:                       ; preds = %scalar.ph380.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i61
  br label %scalar.ph380

scalar.ph380:                                     ; preds = %scalar.ph380, %scalar.ph380.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph380.preheader.new ], [ %i.lr, %scalar.ph380 ] ; 3 uses
  %i.lo = add i64 %.sroa.0.010.i.i, %.val.i.i61   ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lo
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lo
  %.val8.i.i = load i64, ptr %i.lp, align 8, !noalias !5258, !noundef !5
  %..i.i.i.i.i66 = call i64 @llvm.smax.i64(i64 %.val8.i.i, i64 %i.kk)
  store i64 %..i.i.i.i.i66, ptr %i.lq, align 8, !alias.scope !5261, !noalias !5258
  %i.lr = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %.reass
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i64, ptr %i.ls, align 8, !noalias !5258, !noundef !5
  %..i.i.i.i.i66.1 = call i64 @llvm.smax.i64(i64 %.val8.i.i.1, i64 %i.kk)
  store i64 %..i.i.i.i.i66.1, ptr %i.lt, align 8, !alias.scope !5261, !noalias !5258
  %exitcond.not.i.i67.1 = icmp eq i64 %i.lr, %i.kw
  br i1 %exitcond.not.i.i67.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380, !llvm.loop !5244

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph380.prol.loopexit, %scalar.ph380, %middle.block389, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5257
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lu = icmp ult i64 %.sroa.070.0.copyload, %4
  br i1 %i.lu, label %bb.s, label %.invoke350

bb.s:                                             ; preds = %bb.r
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload
  %i.lw = load i64, ptr %i.lv, align 8, !noundef !5 ; 2 uses
  br i1 %.not159, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.lx = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ly = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0156)
  %7 = mul i64 %i.v, %indvar
  %i.lz = sub i64 %i.ly, %7
  %i.ma = call i64 @llvm.umin.i64(i64 %i.lz, i64 %i.lx)
  %i.mb = call i64 @llvm.umin.i64(i64 %i.ma, i64 %i.aq) ; 2 uses
  %min.iters.check393 = icmp samesign ult i64 %i.mb, 4
  br i1 %min.iters.check393, label %.lr.ph.preheader408, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph.preheader
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %i.md = and i64 %i.mc, 3                        ; 2 uses
  %i.me = icmp eq i64 %i.md, 0
  %i.mf = select i1 %i.me, i64 4, i64 %i.md
  %n.vec395 = sub nsw i64 %i.mc, %i.mf            ; 2 uses
  %broadcast.splatinsert396 = insertelement <2 x i64> poison, i64 %i.lw, i64 0
  %broadcast.splat397 = shufflevector <2 x i64> %broadcast.splatinsert396, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep432 = getelementptr [8 x i8], ptr %i.p, i64 %.sroa.0.0156
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph394
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next402, %vector.body398 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index399 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load400 = load <2 x i64>, ptr %gep, align 8
  %wide.load401 = load <2 x i64>, ptr %i.mg, align 8
  %i.mh = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %broadcast.splat397, <2 x i64> %wide.load400)
  %i.mi = call <2 x i64> @llvm.smax.v2i64(<2 x i64> %broadcast.splat397, <2 x i64> %wide.load401)
  %gep433 = getelementptr [8 x i8], ptr %invariant.gep432, i64 %index399 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %gep433, i64 16
  store <2 x i64> %i.mh, ptr %gep433, align 8
  store <2 x i64> %i.mi, ptr %i.mj, align 8
  %index.next402 = add nuw i64 %index399, 4       ; 2 uses
  %i.mk = icmp eq i64 %index.next402, %n.vec395
  br i1 %i.mk, label %.lr.ph.preheader408, label %vector.body398, !llvm.loop !5245

.lr.ph.preheader408:                              ; preds = %vector.body398, %.lr.ph.preheader
  %.sroa.019.0153.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec395, %vector.body398 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader408, %bb.u
  %.sroa.019.0153 = phi i64 [ %i.ml, %bb.u ], [ %.sroa.019.0153.ph, %.lr.ph.preheader408 ] ; 4 uses
  %i.ml = add nuw nsw i64 %.sroa.019.0153, 1      ; 2 uses
  %i.mm = add nuw nsw i64 %.sroa.019.0153, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.0153, %i.lx
  br i1 %exitcond.not, label %.invoke350, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mn = add nuw nsw i64 %.sroa.019.0153, %.sroa.0.0156 ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %i.m
  br i1 %i.mo, label %bb.u, label %.invoke350

bb.u:                                             ; preds = %bb.t
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.mm
  %i.mq = load i64, ptr %i.mp, align 8, !noundef !5
  %..i.i = call noundef i64 @llvm.smax.i64(i64 %i.lw, i64 %i.mq)
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mn
  store i64 %..i.i, ptr %i.mr, align 8
  %exitcond241.not = icmp eq i64 %i.ml, %i.v
  br i1 %exitcond241.not, label %.loopexit, label %.lr.ph, !llvm.loop !5246

.lr.ph155:                                        ; preds = %bb.g, %bb.x
  %.sroa.021.0154 = phi i64 [ %i.ms, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.ms = add nuw i64 %.sroa.021.0154, 1          ; 2 uses
  %i.mt = mul i64 %.sroa.021.0154, %i.x
  %i.mu = add i64 %i.mt, %.sroa.070.0.copyload    ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %4
  br i1 %i.mv, label %bb.v, label %.invoke350

bb.v:                                             ; preds = %.lr.ph155
  %i.mw = mul i64 %.sroa.021.0154, %i.z
  %i.mx = add i64 %i.mw, %.sroa.4.0.copyload      ; 3 uses
  %i.my = icmp ult i64 %i.mx, %6
  br i1 %i.my, label %bb.w, label %.invoke350

bb.w:                                             ; preds = %bb.v
  %i.mz = add nuw nsw i64 %.sroa.021.0154, %.sroa.0.0156 ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.m
  br i1 %i.na, label %bb.x, label %.invoke350

bb.x:                                             ; preds = %bb.w
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.mu
  %i.nc = load i64, ptr %i.nb, align 8, !noundef !5
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.mx
  %i.ne = load i64, ptr %i.nd, align 8, !noundef !5
  %..i.i69 = call noundef i64 @llvm.smax.i64(i64 %i.nc, i64 %i.ne)
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mz
  store i64 %..i.i69, ptr %i.nf, align 8
  %exitcond242.not = icmp eq i64 %i.ms, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph155

bb.y:                                             ; preds = %bb.d
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecxNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i64NvYB1a_B1s_7i64_vecNvYB1a_B1s_14i64_scalar_vecECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [312 x i8], align 8               ; 17 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [312 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.j = load i64, ptr %i.d, align 8, !range !4, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !5 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.m, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.t, align 8
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6nditerINtB2_6NdIterKj2_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([312 x i8]) align 8 captures(none) dereferenceable(312) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %.loopexit.split-lp

.loopexit79:                                      ; preds = %bb.n, %.noexc59, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke350, %.invoke, %bb.c, %.lr.ph.i.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit79
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit79 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecxEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.z unwind label %bb.y

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.x = load i64, ptr %i.w, align 8, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.e, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 33 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 33 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 8 uses
  %i.ah = icmp eq i64 %i.z, 1
  %.not159 = icmp eq i64 %i.v, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.070.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !5311
  %.sroa.4.0.copyload.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5311
  %i.aq = add i64 %i.v, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph158, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph158 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.sroa.4.0.copyload = phi i64 [ %.sroa.4.0.copyload.pre, %.lr.ph158 ], [ %.sroa.4.0.copyload246, %.loopexit ] ; 12 uses
  %.sroa.070.0.copyload = phi i64 [ %.sroa.070.0.copyload.pre, %.lr.ph158 ], [ %.sroa.070.0.copyload243, %.loopexit ] ; 13 uses
  %i.ar = phi i64 [ %i.ab, %.lr.ph158 ], [ %i.kh, %.loopexit ]
  %.sroa.0.0156 = phi i64 [ 0, %.lr.ph158 ], [ %i.kg, %.loopexit ] ; 13 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aa, align 8, !alias.scope !5310, !noalias !5311
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 11 uses
  %.not16.i = icmp eq i64 %i.at, 0
  br i1 %.not16.i, label %.loopexit78.split.us, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.first_iter.i = icmp ult i64 %i.at, 9
  br i1 %.first_iter.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.au = add nsw i64 %i.at, -1                   ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.au ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !5310, !noalias !5311
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %i.e, i64 %i.au ; 3 uses
  %i.ay = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311
  %gep.1.i.us = getelementptr i8, ptr %invariant.gep.i.us, i64 64 ; 2 uses
  %i.bb = load i64, ptr %gep.1.i.us, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %i.be = load i64, ptr %i.av, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit78.split.us, label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.split.us
  store i64 0, ptr %i.av, align 8, !alias.scope !5310, !noalias !5311
  %i.bi = load i64, ptr %invariant.gep.i.us, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bj = mul i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bl = sub i64 %i.bk, %i.bj                    ; 2 uses
  store i64 %i.bl, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311
  %i.bm = load i64, ptr %i.bf, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bn = load i64, ptr %gep.1.i.us, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bq = sub i64 %i.bp, %i.bo                    ; 2 uses
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %.loopexit78.split.us, label %.lr.ph.i.split.us.1

.lr.ph.i.split.us.1:                              ; preds = %.loopexit.i.us
  %i.br = add nsw i64 %i.at, -2                   ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !5310, !noalias !5311
  %invariant.gep.i.us.1 = getelementptr [8 x i8], ptr %i.e, i64 %i.br ; 3 uses
  %i.bv = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bw = load i64, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bx = add i64 %i.bw, %i.bv                    ; 2 uses
  store i64 %i.bx, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311
  %gep.1.i.us.1 = getelementptr i8, ptr %invariant.gep.i.us.1, i64 64 ; 2 uses
  %i.by = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.bz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %i.cb = load i64, ptr %i.bs, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %.loopexit78.split.us, label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.lr.ph.i.split.us.1
  store i64 0, ptr %i.bs, align 8, !alias.scope !5310, !noalias !5311
  %i.cf = load i64, ptr %invariant.gep.i.us.1, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.cg = mul i64 %i.cf, %i.cd
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ci = sub i64 %i.ch, %i.cg                    ; 2 uses
  store i64 %i.ci, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ck = load i64, ptr %gep.1.i.us.1, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %.not.i.us.1 = icmp eq i64 %i.br, 0
  br i1 %.not.i.us.1, label %.loopexit78.split.us, label %.lr.ph.i.split.us.2

.lr.ph.i.split.us.2:                              ; preds = %.loopexit.i.us.1
  %i.co = add nsw i64 %i.at, -3                   ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.co ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !5310, !noalias !5311
  %invariant.gep.i.us.2 = getelementptr [8 x i8], ptr %i.e, i64 %i.co ; 3 uses
  %i.cs = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ct = load i64, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.cu = add i64 %i.ct, %i.cs                    ; 2 uses
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311
  %gep.1.i.us.2 = getelementptr i8, ptr %invariant.gep.i.us.2, i64 64 ; 2 uses
  %i.cv = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.cw = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.co ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %.loopexit78.split.us, label %.loopexit.i.us.2

.loopexit.i.us.2:                                 ; preds = %.lr.ph.i.split.us.2
  store i64 0, ptr %i.cp, align 8, !alias.scope !5310, !noalias !5311
  %i.dc = load i64, ptr %invariant.gep.i.us.2, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.dd = mul i64 %i.dc, %i.da
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.df = sub i64 %i.de, %i.dd                    ; 2 uses
  store i64 %i.df, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311
  %i.dg = load i64, ptr %i.cz, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.dh = load i64, ptr %gep.1.i.us.2, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.di = mul i64 %i.dh, %i.dg
  %i.dj = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %.not.i.us.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i.us.2, label %.loopexit78.split.us, label %.lr.ph.i.split.us.3

.lr.ph.i.split.us.3:                              ; preds = %.loopexit.i.us.2
  %i.dl = add nsw i64 %i.at, -4                   ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !5310, !noalias !5311
  %invariant.gep.i.us.3 = getelementptr [8 x i8], ptr %i.e, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.dq = load i64, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.dr = add i64 %i.dq, %i.dp                    ; 2 uses
  store i64 %i.dr, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311
  %gep.1.i.us.3 = getelementptr i8, ptr %invariant.gep.i.us.3, i64 64 ; 2 uses
  %i.ds = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.dt = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  store i64 %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %i.dv = load i64, ptr %i.dm, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.loopexit78.split.us, label %.loopexit.i.us.3

.loopexit.i.us.3:                                 ; preds = %.lr.ph.i.split.us.3
  store i64 0, ptr %i.dm, align 8, !alias.scope !5310, !noalias !5311
  %i.dz = load i64, ptr %invariant.gep.i.us.3, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = load i64, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ec = sub i64 %i.eb, %i.ea                    ; 2 uses
  store i64 %i.ec, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311
  %i.ed = load i64, ptr %i.dw, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ee = load i64, ptr %gep.1.i.us.3, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.eh = sub i64 %i.eg, %i.ef                    ; 2 uses
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %.not.i.us.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.us.3, label %.loopexit78.split.us, label %.lr.ph.i.split.us.4

.lr.ph.i.split.us.4:                              ; preds = %.loopexit.i.us.3
  %i.ei = add nsw i64 %i.at, -5                   ; 4 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ei ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !5310, !noalias !5311
  %invariant.gep.i.us.4 = getelementptr [8 x i8], ptr %i.e, i64 %i.ei ; 3 uses
  %i.em = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.en = load i64, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.eo = add i64 %i.en, %i.em                    ; 2 uses
  store i64 %i.eo, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311
  %gep.1.i.us.4 = getelementptr i8, ptr %invariant.gep.i.us.4, i64 64 ; 2 uses
  %i.ep = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.eq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.er = add i64 %i.eq, %i.ep                    ; 2 uses
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %i.es = load i64, ptr %i.ej, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %.loopexit78.split.us, label %.loopexit.i.us.4

.loopexit.i.us.4:                                 ; preds = %.lr.ph.i.split.us.4
  store i64 0, ptr %i.ej, align 8, !alias.scope !5310, !noalias !5311
  %i.ew = load i64, ptr %invariant.gep.i.us.4, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ex = mul i64 %i.ew, %i.eu
  %i.ey = load i64, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.ez = sub i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.ad, align 8, !alias.scope !5310, !noalias !5311
  %i.fa = load i64, ptr %i.et, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.fb = load i64, ptr %gep.1.i.us.4, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.fc = mul i64 %i.fb, %i.fa
  %i.fd = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311, !noundef !5
  %i.fe = sub i64 %i.fd, %i.fc                    ; 2 uses
  store i64 %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5310, !noalias !5311
  %.not.i.us.4 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.4, label %.loopexit78.split.us, label %.lr.ph.i.split.us.5

end_hunk_17
begin_hunk_18_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecxNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i64NvYB1a_B1s_7i64_vecNvYB1a_B1s_14i64_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jj = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jk = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jl = add i64 %i.jk, %i.ip                    ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.jk
  %i.jp = load i64, ptr %i.jm, align 8, !noalias !5319, !noundef !5
  %i.jq = load i64, ptr %i.jn, align 8, !noalias !5319, !noundef !5
  %..i.i.i.i.i.prol = call i64 @llvm.smin.i64(i64 %i.jp, i64 %i.jq)
  store i64 %..i.i.i.i.i.prol, ptr %i.jo, align 8, !noalias !5319
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ], [ %i.jj, %scalar.ph.prol ]
  %i.jr = icmp eq i64 %i.ji, %.val.i.i
  br i1 %i.jr, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op434 = add i64 1, %.val.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %scalar.ph.preheader.new ], [ %i.jz, %scalar.ph ] ; 3 uses
  %i.js = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jt = add i64 %i.js, %i.ip                    ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jt
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.jt
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.js
  %i.jx = load i64, ptr %i.ju, align 8, !noalias !5319, !noundef !5
  %i.jy = load i64, ptr %i.jv, align 8, !noalias !5319, !noundef !5
  %..i.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.jx, i64 %i.jy)
  store i64 %..i.i.i.i.i, ptr %i.jw, align 8, !noalias !5319
  %i.jz = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass435 = add i64 %.sroa.0.012.i.i, %invariant.op434 ; 2 uses
  %i.ka = add i64 %.reass435, %i.ip               ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.reass435
  %i.ke = load i64, ptr %i.kb, align 8, !noalias !5319, !noundef !5
  %i.kf = load i64, ptr %i.kc, align 8, !noalias !5319, !noundef !5
  %..i.i.i.i.i.1 = call i64 @llvm.smin.i64(i64 %i.ke, i64 %i.kf)
  store i64 %..i.i.i.i.i.1, ptr %i.kd, align 8, !noalias !5319
  %exitcond.not.i.i.1 = icmp eq i64 %i.jz, %i.io
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !5291

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5312
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i64_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSxB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kg = add i64 %.sroa.0.0156, %i.v
  %i.kh = load i64, ptr %i.aa, align 8, !alias.scope !5310, !noalias !5311, !noundef !5 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ki, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kk = load i64, ptr %i.kj, align 8, !noundef !5 ; 4 uses
  %i.kl = add i64 %.sroa.070.0.copyload, %i.v     ; 3 uses
  %i.km = icmp ult i64 %i.kl, %.sroa.070.0.copyload
  %.not = icmp ugt i64 %i.kl, %4
  %or.cond57 = or i1 %i.km, %.not
  br i1 %or.cond57, label %.invoke, label %bb.p, !prof !17

.invoke350:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph155
  %i.kn = phi i64 [ %i.mx, %bb.v ], [ %i.mn, %bb.t ], [ %i.mu, %.lr.ph155 ], [ %i.mz, %bb.w ], [ %i.mm, %.lr.ph ], [ %.sroa.070.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ko = phi i64 [ %6, %bb.v ], [ %i.m, %bb.t ], [ %4, %.lr.ph155 ], [ %i.m, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.kp = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph155 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kn, i64 noundef %i.ko, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kp) #26
          to label %.cont351 unwind label %.loopexit.split-lp

.cont351:                                         ; preds = %.invoke350
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.kq = add i64 %.sroa.0.0156, %i.v             ; 3 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.0.0156
  %.not51 = icmp ugt i64 %i.kq, %i.m
  %or.cond58 = or i1 %i.kr, %.not51
  br i1 %or.cond58, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.0156 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5320
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.v
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterxEINtBZ_7IterMutxEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 %i.ks, ptr noundef nonnull readonly %i.ku, ptr noundef nonnull align 8 %i.kt, ptr noundef nonnull %i.kv)
          to label %.noexc68 unwind label %.loopexit79

.noexc68:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5321)
  %.val.i.i61 = load i64, ptr %i.ai, align 8, !alias.scope !5321, !noalias !5322, !noundef !5 ; 8 uses
  %.val6.i.i62 = load i64, ptr %i.aj, align 8, !alias.scope !5321, !noalias !5322, !noundef !5 ; 4 uses
  %i.kw = sub i64 %.val6.i.i62, %.val.i.i61       ; 4 uses
  %.not.i.i63 = icmp eq i64 %.val6.i.i62, %.val.i.i61
  br i1 %.not.i.i63, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.noexc68
  %.val.i.i.i65 = load ptr, ptr %i.a, align 8, !alias.scope !5323, !noalias !5322, !nonnull !5, !noundef !5 ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !5323, !noalias !5322, !nonnull !5, !noundef !5 ; 5 uses
  %min.iters.check381 = icmp ult i64 %i.kw, 4
  %.val1.i.i.i377 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i65378 = ptrtoaddr ptr %.val.i.i.i65 to i64
  %i.kx = sub i64 %.val.i.i.i65378, %.val1.i.i.i377
  %diff.check379 = icmp ugt i64 %i.kx, -32
  %or.cond405 = or i1 %min.iters.check381, %diff.check379
  br i1 %or.cond405, label %scalar.ph380.preheader, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph.i.i64
  %n.vec383 = and i64 %i.kw, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.kk, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next388, %vector.body384 ] ; 2 uses
  %i.ky = add i64 %index385, %.val.i.i61          ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.ky ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %wide.load386 = load <2 x i64>, ptr %i.kz, align 8, !noalias !5321
  %wide.load387 = load <2 x i64>, ptr %i.lb, align 8, !noalias !5321
  %i.lc = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load386, <2 x i64> %broadcast.splat)
  %i.ld = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load387, <2 x i64> %broadcast.splat)
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <2 x i64> %i.lc, ptr %i.la, align 8, !alias.scope !5324, !noalias !5321
  store <2 x i64> %i.ld, ptr %i.le, align 8, !alias.scope !5324, !noalias !5321
  %index.next388 = add nuw i64 %index385, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.lf, label %middle.block389, label %vector.body384, !llvm.loop !5306

middle.block389:                                  ; preds = %vector.body384
  %cmp.n390 = icmp eq i64 %i.kw, %n.vec383
  br i1 %cmp.n390, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader

scalar.ph380.preheader:                           ; preds = %.lr.ph.i.i64, %middle.block389
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i64 ], [ %n.vec383, %middle.block389 ] ; 4 uses
  %i.lg = sub i64 %.val6.i.i62, %.val.i.i61
  %i.lh = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.li = add i64 %.val6.i.i62, %i.lh
  %xtraiter = and i64 %i.lg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph380.prol.loopexit, label %scalar.ph380.prol

scalar.ph380.prol:                                ; preds = %scalar.ph380.preheader
  %i.lj = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.lk = add i64 %.sroa.0.010.i.i.ph, %.val.i.i61 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lk
  %.val8.i.i.prol = load i64, ptr %i.ll, align 8, !noalias !5321, !noundef !5
  %..i.i.i.i.i66.prol = call i64 @llvm.smin.i64(i64 %.val8.i.i.prol, i64 %i.kk)
  store i64 %..i.i.i.i.i66.prol, ptr %i.lm, align 8, !alias.scope !5324, !noalias !5321
  br label %scalar.ph380.prol.loopexit

scalar.ph380.prol.loopexit:                       ; preds = %scalar.ph380.prol, %scalar.ph380.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %scalar.ph380.preheader ], [ %i.lj, %scalar.ph380.prol ]
  %i.ln = icmp eq i64 %i.li, %.val.i.i61
  br i1 %i.ln, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380.preheader.new

scalar.ph380.preheader.new:                       ; preds = %scalar.ph380.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i61
  br label %scalar.ph380

scalar.ph380:                                     ; preds = %scalar.ph380, %scalar.ph380.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %scalar.ph380.preheader.new ], [ %i.lr, %scalar.ph380 ] ; 3 uses
  %i.lo = add i64 %.sroa.0.010.i.i, %.val.i.i61   ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %i.lo
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %i.lo
  %.val8.i.i = load i64, ptr %i.lp, align 8, !noalias !5321, !noundef !5
  %..i.i.i.i.i66 = call i64 @llvm.smin.i64(i64 %.val8.i.i, i64 %i.kk)
  store i64 %..i.i.i.i.i66, ptr %i.lq, align 8, !alias.scope !5324, !noalias !5321
  %i.lr = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i65, i64 %.reass
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i64, ptr %i.ls, align 8, !noalias !5321, !noundef !5
  %..i.i.i.i.i66.1 = call i64 @llvm.smin.i64(i64 %.val8.i.i.1, i64 %i.kk)
  store i64 %..i.i.i.i.i66.1, ptr %i.lt, align 8, !alias.scope !5324, !noalias !5321
  %exitcond.not.i.i67.1 = icmp eq i64 %i.lr, %i.kw
  br i1 %exitcond.not.i.i67.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph380, !llvm.loop !5307

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i64_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTxRSxQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %scalar.ph380.prol.loopexit, %scalar.ph380, %middle.block389, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5320
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.lu = icmp ult i64 %.sroa.070.0.copyload, %4
  br i1 %i.lu, label %bb.s, label %.invoke350

bb.s:                                             ; preds = %bb.r
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.070.0.copyload
  %i.lw = load i64, ptr %i.lv, align 8, !noundef !5 ; 2 uses
  br i1 %.not159, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.lx = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.ly = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0156)
  %7 = mul i64 %i.v, %indvar
  %i.lz = sub i64 %i.ly, %7
  %i.ma = call i64 @llvm.umin.i64(i64 %i.lz, i64 %i.lx)
  %i.mb = call i64 @llvm.umin.i64(i64 %i.ma, i64 %i.aq) ; 2 uses
  %min.iters.check393 = icmp samesign ult i64 %i.mb, 4
  br i1 %min.iters.check393, label %.lr.ph.preheader408, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph.preheader
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %i.md = and i64 %i.mc, 3                        ; 2 uses
  %i.me = icmp eq i64 %i.md, 0
  %i.mf = select i1 %i.me, i64 4, i64 %i.md
  %n.vec395 = sub nsw i64 %i.mc, %i.mf            ; 2 uses
  %broadcast.splatinsert396 = insertelement <2 x i64> poison, i64 %i.lw, i64 0
  %broadcast.splat397 = shufflevector <2 x i64> %broadcast.splatinsert396, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep432 = getelementptr [8 x i8], ptr %i.p, i64 %.sroa.0.0156
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph394
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next402, %vector.body398 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index399 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load400 = load <2 x i64>, ptr %gep, align 8
  %wide.load401 = load <2 x i64>, ptr %i.mg, align 8
  %i.mh = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %broadcast.splat397, <2 x i64> %wide.load400)
  %i.mi = call <2 x i64> @llvm.smin.v2i64(<2 x i64> %broadcast.splat397, <2 x i64> %wide.load401)
  %gep433 = getelementptr [8 x i8], ptr %invariant.gep432, i64 %index399 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %gep433, i64 16
  store <2 x i64> %i.mh, ptr %gep433, align 8
  store <2 x i64> %i.mi, ptr %i.mj, align 8
  %index.next402 = add nuw i64 %index399, 4       ; 2 uses
  %i.mk = icmp eq i64 %index.next402, %n.vec395
  br i1 %i.mk, label %.lr.ph.preheader408, label %vector.body398, !llvm.loop !5308

.lr.ph.preheader408:                              ; preds = %vector.body398, %.lr.ph.preheader
  %.sroa.019.0153.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec395, %vector.body398 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader408, %bb.u
  %.sroa.019.0153 = phi i64 [ %i.ml, %bb.u ], [ %.sroa.019.0153.ph, %.lr.ph.preheader408 ] ; 4 uses
  %i.ml = add nuw nsw i64 %.sroa.019.0153, 1      ; 2 uses
  %i.mm = add nuw nsw i64 %.sroa.019.0153, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.0153, %i.lx
  br i1 %exitcond.not, label %.invoke350, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.mn = add nuw nsw i64 %.sroa.019.0153, %.sroa.0.0156 ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %i.m
  br i1 %i.mo, label %bb.u, label %.invoke350

bb.u:                                             ; preds = %bb.t
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.mm
  %i.mq = load i64, ptr %i.mp, align 8, !noundef !5
  %..i.i = call noundef i64 @llvm.smin.i64(i64 %i.lw, i64 %i.mq)
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mn
  store i64 %..i.i, ptr %i.mr, align 8
  %exitcond241.not = icmp eq i64 %i.ml, %i.v
  br i1 %exitcond241.not, label %.loopexit, label %.lr.ph, !llvm.loop !5309

.lr.ph155:                                        ; preds = %bb.g, %bb.x
  %.sroa.021.0154 = phi i64 [ %i.ms, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.ms = add nuw i64 %.sroa.021.0154, 1          ; 2 uses
  %i.mt = mul i64 %.sroa.021.0154, %i.x
  %i.mu = add i64 %i.mt, %.sroa.070.0.copyload    ; 3 uses
  %i.mv = icmp ult i64 %i.mu, %4
  br i1 %i.mv, label %bb.v, label %.invoke350

bb.v:                                             ; preds = %.lr.ph155
  %i.mw = mul i64 %.sroa.021.0154, %i.z
  %i.mx = add i64 %i.mw, %.sroa.4.0.copyload      ; 3 uses
  %i.my = icmp ult i64 %i.mx, %6
  br i1 %i.my, label %bb.w, label %.invoke350

bb.w:                                             ; preds = %bb.v
  %i.mz = add nuw nsw i64 %.sroa.021.0154, %.sroa.0.0156 ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.m
  br i1 %i.na, label %bb.x, label %.invoke350

bb.x:                                             ; preds = %bb.w
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.mu
  %i.nc = load i64, ptr %i.nb, align 8, !noundef !5
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.mx
  %i.ne = load i64, ptr %i.nd, align 8, !noundef !5
  %..i.i69 = call noundef i64 @llvm.smin.i64(i64 %i.nc, i64 %i.ne)
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mz
  store i64 %..i.i69, ptr %i.nf, align 8
  %exitcond242.not = icmp eq i64 %i.ms, %i.v
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph155

bb.y:                                             ; preds = %bb.d
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.z:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7whisper5audio20log_mel_spectrogram_fEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i1 noundef zeroext %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [72 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [8 x i8], align 8                 ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 8 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 4 uses
  %i.u = alloca [1 x i8], align 1                 ; 2 uses
  %i.v = alloca [8 x i8], align 8                 ; 2 uses
  %i.w = alloca [8 x i8], align 8                 ; 3 uses
  %i.x = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %5, ptr %i.x, align 8
  store i64 %6, ptr %i.w, align 8
  store i64 %7, ptr %i.v, align 8
  %i.y = zext i1 %8 to i8
  store i8 %i.y, ptr %i.u, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store float f0x40C90FDB, ptr %i.t, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store float 5.000000e-01, ptr %i.s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store float 1.000000e+00, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.z = uitofp i64 %5 to float
  store float %i.z, ptr %i.q, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %5, ptr %i.ab, align 8
  store ptr %i.s, ptr %i.o, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.t, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7whisper5audio20log_mel_spectrogram_fE0EE9from_iterB2J_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ac = icmp eq i64 %6, 0
  br i1 %i.ac, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = udiv i64 %2, %6                         ; 3 uses
  %i.ae = urem i64 %i.ad, 1500                    ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = add nuw nsw i64 %i.ad, 1500
  %i.ah = sub nuw nsw i64 %i.ag, %i.ae
  %.sroa.016.0 = select i1 %i.af, i64 %i.ad, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ai = add nuw nsw i64 %.sroa.016.0, 1500
  store i64 %i.ai, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !5379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5380
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #26
          to label %bb.e unwind label %bb.d

.thread111:                                       ; preds = %.thread115
  br i1 %.sroa.034.2.lpad-body119, label %.thread, label %.thread111.thread

bb.d:                                             ; preds = %bb.f, %bb.b, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.bd, %bb.ae, %bb.c
  unreachable

.noexc:                                           ; preds = %bb.b
  %i.ak = load i64, ptr %i.b, align 8, !range !4, !noalias !5380, !noundef !5
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !6, !noalias !5380, !noundef !5 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.al, label %bb.f, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1dZk1kIfPhr_19candle_transformers.exit.i, !prof !7

bb.f:                                             ; preds = %.noexc
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !5380
end_hunk_18
