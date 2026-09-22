Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.11?download=true
inline.NumInlined: 3717
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MaximumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit92.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !4207, !noalias !4208
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !4207, !noalias !4208
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit92.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !4207, !noalias !4208
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !4207, !noalias !4208
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit92.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !4207, !noalias !4208
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !4207, !noalias !4208
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4207, !noalias !4208
  br label %.loopexit92.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit92.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload263 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.082.0.copyload260 = phi i64 [ %.sroa.082.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit92.split.us
  br i1 %.not173, label %.loopexit, label %.lr.ph169

bb.h:                                             ; preds = %.loopexit92.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit92.split.us
  br i1 %i.aj, label %bb.w, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.082.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.r, label %.invoke389

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.082.0.copyload, %bb.r ], [ %.sroa.082.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0170, %bb.m ], [ %.sroa.0.0170, %bb.s ]
  %i.ij = phi i64 [ %i.kz, %bb.r ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.le, %bb.s ]
  %i.ik = phi i64 [ %4, %bb.r ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.s ]
  %i.il = phi ptr [ @11, %bb.r ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.s ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0170
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4209
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4210
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit93

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B25_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit93

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4210
  call void @llvm.experimental.noalias.scope.decl(metadata !4211)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4211, !noalias !4212, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4211, !noalias !4212, !noundef !5 ; 2 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4213, !noalias !4214, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4213, !noalias !4214, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4213, !noalias !4214, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4215, !noalias !4214, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i410 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i412 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i411 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i411
  %i.ix = sub i64 %i.iw, %.val.i.i.i410
  %diff.check = icmp ugt i64 %i.ix, -16
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i412
  %i.iz = sub i64 %i.iy, %.val.i.i.i410
  %diff.check413 = icmp ugt i64 %i.iz, -16
  %conflict.rdx = or i1 %diff.check, %diff.check413
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ja
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !4216 ; 5 uses
  %wide.load414 = load <8 x i16>, ptr %i.jd, align 2, !noalias !4216 ; 6 uses
  %i.jf = and <8 x i16> %wide.load, splat (i16 32767) ; 2 uses
  %i.jg = icmp samesign ugt <8 x i16> %i.jf, splat (i16 32640)
  %i.jh = and <8 x i16> %wide.load414, splat (i16 32767)
  %i.ji = icmp samesign ugt <8 x i16> %i.jh, splat (i16 32640)
  %i.jj = select <8 x i1> %i.jg, <8 x i1> splat (i1 true), <8 x i1> %i.ji ; 3 uses
  %i.jk = xor <8 x i1> %i.jj, splat (i1 true)
  %i.jl = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.jm = icmp sgt <8 x i16> %wide.load414, splat (i16 -1) ; 3 uses
  %i.jn = select <8 x i1> %i.jj, <8 x i1> splat (i1 true), <8 x i1> %i.jl ; 2 uses
  %i.jo = xor <8 x i1> %i.jn, splat (i1 true)
  %i.jp = select <8 x i1> %i.jn, <8 x i1> splat (i1 true), <8 x i1> %i.jm
  %i.jq = icmp ule <8 x i16> %wide.load, %wide.load414
  %i.jr = select <8 x i1> %i.jo, <8 x i1> %i.jm, <8 x i1> zeroinitializer
  %i.js = or <8 x i16> %wide.load414, %i.jf
  %i.jt = icmp eq <8 x i16> %i.js, zeroinitializer
  %i.ju = select <8 x i1> %i.jk, <8 x i1> %i.jl, <8 x i1> zeroinitializer
  %i.jv = icmp ult <8 x i16> %wide.load, %wide.load414
  %i.jw = and <8 x i1> %i.jm, %i.jv
  %i.jx = xor <8 x i1> %i.jw, splat (i1 true)
  %i.jy = select <8 x i1> %i.ju, <8 x i1> %i.jx, <8 x i1> zeroinitializer
  %i.jz = select <8 x i1> %i.jr, <8 x i1> %i.jt, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jp, <8 x i1> %i.jz, <8 x i1> %i.jq
  %i.kb = or <8 x i1> %i.ka, %i.jy
  %i.kc = or <8 x i1> %i.kb, %i.jj
  %predphi = select <8 x i1> %i.kc, <8 x i16> %wide.load, <8 x i16> %wide.load414
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !4216
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !4179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ke, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kf = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kg = add i64 %i.kf, %i.iu                    ; 2 uses
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kg
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kf
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !4216, !noundef !5 ; 8 uses
  %i.kl = load i16, ptr %i.ki, align 2, !noalias !4216, !noundef !5 ; 6 uses
  %i.km = and i16 %i.kk, 32767                    ; 2 uses
  %i.kn = icmp samesign ugt i16 %i.km, 32640
  %i.ko = and i16 %i.kl, 32767
  %i.kp = icmp samesign ugt i16 %i.ko, 32640
  %or.cond.i.i.i.i.i = select i1 %i.kn, i1 true, i1 %i.kp
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp sgt i16 %i.kk, -1
  %.not1.i.i.i.i.i = icmp sgt i16 %i.kl, -1       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i, label %bb.p

.split.i.i.i.i:                                   ; preds = %bb.o
  %i.kq = icmp ult i16 %i.kk, %i.kl
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kq
  br i1 %spec.select.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not1.i.i.i.i.i, label %.split4.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.p
  %i.kr = or i16 %i.kl, %i.km
  %.not.i.i.i.i = icmp eq i16 %i.kr, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.q

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i: ; preds = %bb.p
  %i.ks = icmp samesign ugt i16 %i.kk, %i.kl
  br i1 %i.ks, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.q, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i, %scalar.ph
  %i.kt = phi i16 [ %i.kl, %bb.q ], [ %i.kk, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i ], [ %i.kk, %.split4.i.i.i.i ], [ %i.kk, %.split.i.i.i.i ], [ %i.kk, %scalar.ph ]
  store i16 %i.kt, ptr %i.kj, align 2, !noalias !4216
  %exitcond.not.i.i = icmp eq i64 %i.ke, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4180

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4209
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ai, %bb.x, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ku = add i64 %.sroa.0.0170, %i.x
  %i.kv = load i64, ptr %i.ac, align 8, !alias.scope !4207, !noalias !4208, !noundef !5 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kw, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.r:                                             ; preds = %bb.k
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ky = load i16, ptr %i.kx, align 2, !noundef !5 ; 12 uses
  %i.kz = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.kz, %4
  %or.cond58 = or i1 %i.la, %.not
  br i1 %or.cond58, label %.invoke, label %bb.s, !prof !17

.invoke389:                                       ; preds = %bb.w, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, %bb.ad, %.lr.ph169
  %i.lb = phi i64 [ %i.tj, %bb.ad ], [ %i.tb, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %i.tg, %.lr.ph169 ], [ %i.tx, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %i.ss, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.w ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lc = phi i64 [ %6, %bb.ad ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.w ], [ %6, %bb.k ]
  %i.ld = phi ptr [ @16, %bb.ad ], [ @14, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ @15, %.lr.ph169 ], [ @17, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ @13, %scalar.ph506 ], [ @12, %bb.w ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lb, i64 noundef %i.lc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ld) #26
          to label %.cont390 unwind label %.loopexit.split-lp

.cont390:                                         ; preds = %.invoke389
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.le = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lf = icmp ult i64 %i.le, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.le, %i.n
  %or.cond59 = or i1 %i.lf, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.t, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4217
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.x
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lg, ptr noundef nonnull readonly %i.li, ptr noundef nonnull align 2 %i.lh, ptr noundef nonnull %i.lj)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !4218)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4218, !noalias !4219, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4218, !noalias !4219, !noundef !5 ; 6 uses
  %i.lk = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4220, !noalias !4219, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66417 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4220, !noalias !4219, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i416 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.ll = and i16 %i.ky, 32767
  %i.lm = icmp samesign ugt i16 %i.ll, 32640
  %i.ln = sub i64 %.val.i.i.i66417, %.val1.i.i.i416
  %diff.check418 = icmp ugt i64 %i.ln, -32        ; 3 uses
  br i1 %i.lm, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check420 = icmp ult i64 %i.lk, 4
  %or.cond523 = or i1 %min.iters.check420, %diff.check418
  br i1 %or.cond523, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check421 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph422

vector.ph422:                                     ; preds = %vector.main.loop.iter.check
  %i.lo = and i64 %i.lk, 12
  %n.vec423 = and i64 %i.lk, -16                  ; 4 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.ph422, %vector.body424
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 2 uses
  %i.lp = add i64 %index425, %.val.i.i62          ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lp ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load426 = load <8 x i16>, ptr %i.lq, align 2, !noalias !4218
  %wide.load427 = load <8 x i16>, ptr %i.ls, align 2, !noalias !4218
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <8 x i16> %wide.load426, ptr %i.lr, align 2, !alias.scope !4221, !noalias !4218
  store <8 x i16> %wide.load427, ptr %i.lt, align 2, !alias.scope !4221, !noalias !4218
  %index.next428 = add nuw i64 %index425, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.lu, label %middle.block429, label %vector.body424, !llvm.loop !4195

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %i.lk, %n.vec423
  br i1 %cmp.n430, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block429
  %min.epilog.iters.check = icmp eq i64 %i.lo, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec423, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %i.lk, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 2 uses
  %i.lv = add i64 %index432, %.val.i.i62          ; 2 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lv
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lv
  %wide.load433 = load <4 x i16>, ptr %i.lw, align 2, !noalias !4218
  store <4 x i16> %wide.load433, ptr %i.lx, align 2, !alias.scope !4221, !noalias !4218
  %index.next434 = add nuw i64 %index432, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next434, %n.vec431
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4196

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.lk, %n.vec431
  br i1 %cmp.n435, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec423, %vec.epilog.iter.check ], [ %n.vec431, %vec.epilog.middle.block ] ; 3 uses
  %i.lz = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter548 = and i64 %i.lz, 3                 ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.ma, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ]
  %i.ma = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.mb = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mb
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mb
  %.val8.us.i.i.prol = load i16, ptr %i.mc, align 2, !noalias !4218, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.md, align 2, !alias.scope !4221, !noalias !4218
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter548
  br i1 %prol.iter.cmp.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol, !llvm.loop !4197

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ], [ %i.ma, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ]
  %i.me = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.mf = add i64 %i.me, %.val.i.i62
  %i.mg = icmp ugt i64 %i.mf, -4
  br i1 %i.mg, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit
  %invariant.op559 = add i64 1, %.val.i.i62
  %invariant.op561 = add i64 2, %.val.i.i62
  %invariant.op563 = add i64 3, %.val.i.i62
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new ], [ %i.mo, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i ] ; 5 uses
  %i.mh = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mh
  %.val8.us.i.i = load i16, ptr %i.mi, align 2, !noalias !4218, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mj, align 2, !alias.scope !4221, !noalias !4218
  %.reass560 = add i64 %.sroa.0.010.us.i.i, %invariant.op559 ; 2 uses
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass560
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass560
  %.val8.us.i.i.1 = load i16, ptr %i.mk, align 2, !noalias !4218, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.ml, align 2, !alias.scope !4221, !noalias !4218
  %.reass562 = add i64 %.sroa.0.010.us.i.i, %invariant.op561 ; 2 uses
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass562
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass562
  %.val8.us.i.i.2 = load i16, ptr %i.mm, align 2, !noalias !4218, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mn, align 2, !alias.scope !4221, !noalias !4218
  %i.mo = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass564 = add i64 %.sroa.0.010.us.i.i, %invariant.op563 ; 2 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass564
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass564
  %.val8.us.i.i.3 = load i16, ptr %i.mp, align 2, !noalias !4218, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mq, align 2, !alias.scope !4221, !noalias !4218
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mo, %i.lk
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, !llvm.loop !4198

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp sgt i16 %i.ky, -1
  br i1 %.not1.i.i.i.i.i67, label %iter.check455, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.lk, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check418
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.mr = and i64 %i.lk, 12
  %n.vec478 = and i64 %i.lk, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.ms = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ms ; 2 uses
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ms ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.mt, align 2, !noalias !4218 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.mv, align 2, !noalias !4218 ; 4 uses
  %i.mw = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.mx = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.my = icmp samesign ugt <8 x i16> %i.mw, splat (i16 32640)
  %i.mz = icmp samesign ugt <8 x i16> %i.mx, splat (i16 32640)
  %i.na = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.nb = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.nc = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.nd = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.ne = or <8 x i1> %i.na, %i.my
  %i.nf = or <8 x i1> %i.nb, %i.mz
  %i.ng = select <8 x i1> %i.ne, <8 x i16> %wide.load483, <8 x i16> %i.nc
  %i.nh = select <8 x i1> %i.nf, <8 x i16> %wide.load484, <8 x i16> %i.nd
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store <8 x i16> %i.ng, ptr %i.mu, align 2, !alias.scope !4221, !noalias !4218
  store <8 x i16> %i.nh, ptr %i.ni, align 2, !alias.scope !4221, !noalias !4218
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.nj = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.nj, label %middle.block486, label %vector.body481, !llvm.loop !4199

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.lk, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.mr, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !20

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.lk, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.nk = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nk
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nk
  %wide.load499 = load <4 x i16>, ptr %i.nl, align 2, !noalias !4218 ; 4 uses
  %i.nn = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.no = icmp samesign ugt <4 x i16> %i.nn, splat (i16 32640)
  %i.np = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.nq = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nr = or <4 x i1> %i.np, %i.no
  %i.ns = select <4 x i1> %i.nr, <4 x i16> %wide.load499, <4 x i16> %i.nq
  store <4 x i16> %i.ns, ptr %i.nm, align 2, !alias.scope !4221, !noalias !4218
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.nt = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.nt, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !4200

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.lk, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %i.nu = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nv = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.nw = add i64 %.val6.i.i63, %i.nv
  %xtraiter = and i64 %i.nu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.nx = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.ny = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ny
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ny
  %.val8.i.i.prol = load i16, ptr %i.nz, align 2, !noalias !4218, !noundef !5 ; 4 uses
  %i.ob = and i16 %.val8.i.i.prol, 32767
  %i.oc = icmp samesign ugt i16 %i.ob, 32640
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %i.od = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.ky)
  %i.oe = or i1 %.not.i.i.i.i.i68.prol, %i.oc
  %i.of = select i1 %i.oe, i16 %.val8.i.i.prol, i16 %i.od
  store i16 %i.of, ptr %i.oa, align 2, !alias.scope !4221, !noalias !4218
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.nx, %.lr.ph.split.split.i.i.prol ]
  %i.og = icmp eq i64 %i.nw, %.val.i.i62
  br i1 %i.og, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check455:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check440 = icmp ult i64 %i.lk, 8
  %or.cond525 = or i1 %min.iters.check440, %diff.check418
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check455
  %min.iters.check442 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check442, label %vec.epilog.ph459, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %i.oh = and i64 %i.lk, 8
  %n.vec444 = and i64 %i.lk, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body445

vector.body445:                                   ; preds = %vector.ph443, %vector.body445
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %i.oi = add i64 %index446, %.val.i.i62          ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oi ; 2 uses
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oi ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %wide.load447 = load <8 x i16>, ptr %i.oj, align 2, !noalias !4218 ; 4 uses
  %wide.load448 = load <8 x i16>, ptr %i.ol, align 2, !noalias !4218 ; 4 uses
  %i.om = and <8 x i16> %wide.load447, splat (i16 32767) ; 2 uses
  %i.on = and <8 x i16> %wide.load448, splat (i16 32767) ; 2 uses
  %i.oo = icmp samesign ugt <8 x i16> %i.om, splat (i16 32640) ; 3 uses
  %i.op = icmp samesign ugt <8 x i16> %i.on, splat (i16 32640) ; 3 uses
  %i.oq = xor <8 x i1> %i.oo, splat (i1 true)
  %i.or = xor <8 x i1> %i.op, splat (i1 true)
  %i.os = icmp sgt <8 x i16> %wide.load447, splat (i16 -1) ; 2 uses
  %i.ot = icmp sgt <8 x i16> %wide.load448, splat (i16 -1) ; 2 uses
  %i.ou = or <8 x i1> %i.oo, %i.os
  %i.ov = xor <8 x i1> %i.ou, splat (i1 true)
  %i.ow = or <8 x i1> %i.op, %i.ot
  %i.ox = xor <8 x i1> %i.ow, splat (i1 true)
  %i.oy = or <8 x i16> %i.om, %broadcast.splat
  %i.oz = or <8 x i16> %i.on, %broadcast.splat
  %i.pa = icmp eq <8 x i16> %i.oy, zeroinitializer
  %i.pb = icmp eq <8 x i16> %i.oz, zeroinitializer
  %i.pc = icmp uge <8 x i16> %wide.load447, %broadcast.splat
  %i.pd = icmp uge <8 x i16> %wide.load448, %broadcast.splat
  %i.pe = select <8 x i1> %i.ov, <8 x i1> %i.pa, <8 x i1> zeroinitializer
  %i.pf = select <8 x i1> %i.ox, <8 x i1> %i.pb, <8 x i1> zeroinitializer
  %i.pg = and <8 x i1> %i.os, %i.pc
  %i.ph = select <8 x i1> %i.oq, <8 x i1> %i.pg, <8 x i1> zeroinitializer
  %i.pi = and <8 x i1> %i.ot, %i.pd
  %i.pj = select <8 x i1> %i.or, <8 x i1> %i.pi, <8 x i1> zeroinitializer
  %i.pk = or <8 x i1> %i.ph, %i.pe
  %i.pl = or <8 x i1> %i.pj, %i.pf
  %i.pm = or <8 x i1> %i.pk, %i.oo
  %i.pn = or <8 x i1> %i.pl, %i.op
  %predphi449 = select <8 x i1> %i.pm, <8 x i16> %wide.load447, <8 x i16> %broadcast.splat
  %predphi450 = select <8 x i1> %i.pn, <8 x i16> %wide.load448, <8 x i16> %broadcast.splat
  %i.po = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store <8 x i16> %predphi449, ptr %i.ok, align 2, !alias.scope !4221, !noalias !4218
  store <8 x i16> %predphi450, ptr %i.po, align 2, !alias.scope !4221, !noalias !4218
  %index.next451 = add nuw i64 %index446, 16      ; 2 uses
  %i.pp = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.pp, label %middle.block452, label %vector.body445, !llvm.loop !4201

middle.block452:                                  ; preds = %vector.body445
  %cmp.n453 = icmp eq i64 %i.lk, %n.vec444
  br i1 %cmp.n453, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check457

vec.epilog.iter.check457:                         ; preds = %middle.block452
  %min.epilog.iters.check458.not.not = icmp eq i64 %i.oh, 0
  br i1 %min.epilog.iters.check458.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph459, !prof !22

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check457
  %vec.epilog.resume.val454 = phi i64 [ %n.vec444, %vec.epilog.iter.check457 ], [ 0, %vector.main.loop.iter.check441 ]
  %n.vec460 = and i64 %i.lk, -8                   ; 3 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph459
  %index464 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph459 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pq = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pq
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pq
  %wide.load465 = load <8 x i16>, ptr %i.pr, align 2, !noalias !4218 ; 4 uses
  %i.pt = and <8 x i16> %wide.load465, splat (i16 32767) ; 2 uses
  %i.pu = icmp samesign ugt <8 x i16> %i.pt, splat (i16 32640) ; 3 uses
  %i.pv = xor <8 x i1> %i.pu, splat (i1 true)
  %i.pw = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.px = or <8 x i1> %i.pu, %i.pw
  %i.py = xor <8 x i1> %i.px, splat (i1 true)
  %i.pz = or <8 x i16> %i.pt, %broadcast.splat462
  %i.qa = icmp eq <8 x i16> %i.pz, zeroinitializer
  %i.qb = icmp uge <8 x i16> %wide.load465, %broadcast.splat462
  %i.qc = select <8 x i1> %i.py, <8 x i1> %i.qa, <8 x i1> zeroinitializer
  %i.qd = and <8 x i1> %i.pw, %i.qb
  %i.qe = select <8 x i1> %i.pv, <8 x i1> %i.qd, <8 x i1> zeroinitializer
  %i.qf = or <8 x i1> %i.qe, %i.qc
  %i.qg = or <8 x i1> %i.qf, %i.pu
  %predphi466 = select <8 x i1> %i.qg, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat462
  store <8 x i16> %predphi466, ptr %i.ps, align 2, !alias.scope !4221, !noalias !4218
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qh = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.qh, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4202

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lk, %n.vec460
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check455, %vec.epilog.iter.check457, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check455 ], [ %n.vec444, %vec.epilog.iter.check457 ], [ %n.vec460, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qi, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qi = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.qj = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qj
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qj
  %.val8.us12.i.i = load i16, ptr %i.qk, align 2, !noalias !4218, !noundef !5 ; 6 uses
  %i.qm = and i16 %.val8.us12.i.i, 32767          ; 2 uses
  %i.qn = icmp samesign ugt i16 %i.qm, 32640
  br i1 %i.qn, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split.i.i.us.i.i, label %.split7.i.i.us.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.u
  %i.qo = or i16 %i.qm, %i.ky
  %.not.i.i.us.i.i = icmp eq i16 %i.qo, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

.split.i.i.us.i.i:                                ; preds = %bb.u
  %i.qp = icmp ult i16 %.val8.us12.i.i, %i.ky
  br i1 %i.qp, label %bb.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

bb.v:                                             ; preds = %.split.i.i.us.i.i, %.split7.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.v, %.split.i.i.us.i.i, %.split7.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qq = phi i16 [ %i.ky, %bb.v ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.split.i.i.us.i.i ]
  store i16 %i.qq, ptr %i.ql, align 2, !alias.scope !4221, !noalias !4218
  %exitcond16.not.i.i = icmp eq i64 %i.qi, %i.lk
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4203

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qz, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qr = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qr
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qr
  %.val8.i.i = load i16, ptr %i.qs, align 2, !noalias !4218, !noundef !5 ; 4 uses
  %i.qu = and i16 %.val8.i.i, 32767
  %i.qv = icmp samesign ugt i16 %i.qu, 32640
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %i.qw = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.ky)
  %i.qx = or i1 %.not.i.i.i.i.i68, %i.qv
  %i.qy = select i1 %i.qx, i16 %.val8.i.i, i16 %i.qw
  store i16 %i.qy, ptr %i.qt, align 2, !alias.scope !4221, !noalias !4218
  %i.qz = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.ra, align 2, !noalias !4218, !noundef !5 ; 4 uses
  %i.rc = and i16 %.val8.i.i.1, 32767
  %i.rd = icmp samesign ugt i16 %i.rc, 32640
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %i.re = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.ky)
  %i.rf = or i1 %.not.i.i.i.i.i68.1, %i.rd
  %i.rg = select i1 %i.rf, i16 %.val8.i.i.1, i16 %i.re
  store i16 %i.rg, ptr %i.rb, align 2, !alias.scope !4221, !noalias !4218
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qz, %i.lk
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i, !llvm.loop !4204

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block452, %vec.epilog.middle.block468, %middle.block429, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4217
  br label %.loopexit

bb.w:                                             ; preds = %bb.i
  %i.rh = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.rh, label %bb.x, label %.invoke389

bb.x:                                             ; preds = %bb.w
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.rj = load i16, ptr %i.ri, align 2, !noundef !5 ; 9 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.rk = and i16 %i.rj, 32767                    ; 3 uses
  %i.rl = icmp samesign ugt i16 %i.rk, 32640      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.rj, -1            ; 2 uses
  %i.rm = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.rn = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0170)
  %i.ro = sub i64 %i.rn, %i.av
  %i.rp = call i64 @llvm.umin.i64(i64 %i.ro, i64 %i.rm)
  %i.rq = call i64 @llvm.umin.i64(i64 %i.rp, i64 %i.at) ; 2 uses
  %i.rr = add nuw nsw i64 %i.rq, 1                ; 2 uses
  %min.iters.check507 = icmp samesign ult i64 %i.rq, 8
  br i1 %min.iters.check507, label %scalar.ph506.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph
  %i.rs = shl i64 %.sroa.4.0.copyload, 1
  %i.rt = add i64 %i.aw, %i.r
  %i.ru = add i64 %i.rs, %i.a
  %i.rv = sub i64 %i.ru, %i.rt
  %diff.check505 = icmp ugt i64 %i.rv, -16
  br i1 %diff.check505, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %vector.memcheck504
  %i.rw = and i64 %i.rr, 7                        ; 2 uses
  %i.rx = icmp eq i64 %i.rw, 0
  %i.ry = select i1 %i.rx, i64 8, i64 %i.rw
  %n.vec509 = sub nsw i64 %i.rr, %i.ry            ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat511 = shufflevector <8 x i1> %broadcast.splatinsert510, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rz = xor <8 x i1> %broadcast.splat511, splat (i1 true)
  %broadcast.splatinsert512 = insertelement <8 x i16> poison, i16 %i.rk, i64 0
  %broadcast.splat513 = shufflevector <8 x i16> %broadcast.splatinsert512, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert514 = insertelement <8 x i16> poison, i16 %i.rj, i64 0
  %broadcast.splat515 = shufflevector <8 x i16> %broadcast.splatinsert514, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MinimumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i406 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i408 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i407 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i407
  %i.ix = sub i64 %i.iw, %.val.i.i.i406
  %diff.check = icmp ugt i64 %i.ix, -16
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i408
  %i.iz = sub i64 %i.iy, %.val.i.i.i406
  %diff.check409 = icmp ugt i64 %i.iz, -16
  %conflict.rdx = or i1 %diff.check, %diff.check409
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ja
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !4287 ; 6 uses
  %wide.load410 = load <8 x i16>, ptr %i.jd, align 2, !noalias !4287 ; 5 uses
  %i.jf = and <8 x i16> %wide.load, splat (i16 32767)
  %i.jg = icmp samesign ugt <8 x i16> %i.jf, splat (i16 32640) ; 3 uses
  %i.jh = xor <8 x i1> %i.jg, splat (i1 true)
  %i.ji = and <8 x i16> %wide.load410, splat (i16 32767) ; 2 uses
  %i.jj = icmp samesign ugt <8 x i16> %i.ji, splat (i16 32640) ; 2 uses
  %i.jk = select <8 x i1> %i.jg, <8 x i1> splat (i1 true), <8 x i1> %i.jj ; 2 uses
  %i.jl = xor <8 x i1> %i.jk, splat (i1 true)
  %i.jm = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.jn = icmp slt <8 x i16> %wide.load410, zeroinitializer ; 3 uses
  %i.jo = select <8 x i1> %i.jk, <8 x i1> splat (i1 true), <8 x i1> %i.jm
  %i.jp = icmp ult <8 x i16> %wide.load, %wide.load410
  %i.jq = and <8 x i1> %i.jn, %i.jp
  %i.jr = select <8 x i1> %i.jl, <8 x i1> %i.jm, <8 x i1> zeroinitializer ; 2 uses
  %i.js = xor <8 x i1> %i.jn, splat (i1 true)
  %i.jt = select <8 x i1> %i.jr, <8 x i1> %i.js, <8 x i1> zeroinitializer
  %i.ju = icmp ule <8 x i16> %wide.load, %wide.load410
  %i.jv = select <8 x i1> %i.jr, <8 x i1> %i.jn, <8 x i1> zeroinitializer
  %i.jw = or <8 x i16> %i.ji, %wide.load
  %i.jx = icmp eq <8 x i16> %i.jw, zeroinitializer
  %i.jy = select <8 x i1> %i.jh, <8 x i1> %i.jj, <8 x i1> zeroinitializer
  %i.jz = select <8 x i1> %i.jt, <8 x i1> %i.ju, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jv, <8 x i1> %i.jx, <8 x i1> zeroinitializer
  %i.kb = select <8 x i1> %i.jo, <8 x i1> splat (i1 true), <8 x i1> %i.jq
  %i.kc = xor <8 x i1> %i.kb, splat (i1 true)
  %i.kd = or <8 x i1> %i.ka, %i.kc
  %i.ke = or <8 x i1> %i.kd, %i.jz
  %i.kf = or <8 x i1> %i.ke, %i.jy
  %i.kg = or <8 x i1> %i.kf, %i.jg
  %predphi = select <8 x i1> %i.kg, <8 x i16> %wide.load, <8 x i16> %wide.load410
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !4287
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !4250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ki, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ki = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kj = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kk = add i64 %i.kj, %i.iu                    ; 2 uses
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kk
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kk
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kj
  %i.ko = load i16, ptr %i.kl, align 2, !noalias !4287, !noundef !5 ; 10 uses
  %i.kp = load i16, ptr %i.km, align 2, !noalias !4287, !noundef !5 ; 5 uses
  %i.kq = and i16 %i.ko, 32767
  %i.kr = icmp samesign ugt i16 %i.kq, 32640
  br i1 %i.kr, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %i.ks = and i16 %i.kp, 32767                    ; 2 uses
  %i.kt = icmp samesign ugt i16 %i.ks, 32640
  br i1 %i.kt, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i.i = icmp sgt i16 %i.ko, -1
  %.not1.i.i.i.i.i = icmp slt i16 %i.kp, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  br i1 %.not1.i.i.i.i.i, label %.split5.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.q
  %i.ku = icmp samesign ugt i16 %i.ko, %i.kp
  br i1 %i.ku, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

.split5.i.i.i.i:                                  ; preds = %bb.q
  %i.kv = or i16 %i.ks, %i.ko
  %.not.i.i.i.i = icmp eq i16 %i.kv, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.r

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i: ; preds = %bb.p
  %i.kw = icmp ult i16 %i.ko, %i.kp
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kw
  br i1 %spec.select.i.i.i.i.i, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.r:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.r, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i, %bb.o, %scalar.ph
  %i.kx = phi i16 [ %i.kp, %bb.r ], [ %i.ko, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i ], [ %i.ko, %.split5.i.i.i.i ], [ %i.ko, %.split.i.i.i.i ], [ %i.ko, %scalar.ph ], [ %i.ko, %bb.o ]
  store i16 %i.kx, ptr %i.kn, align 2, !noalias !4287
  %exitcond.not.i.i = icmp eq i64 %i.ki, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4251

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4280
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.al, %bb.y, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ky = add i64 %.sroa.0.0170, %i.x
  %i.kz = load i64, ptr %i.ac, align 8, !alias.scope !4278, !noalias !4279, !noundef !5 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.la, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.s:                                             ; preds = %bb.k
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.lc = load i16, ptr %i.lb, align 2, !noundef !5 ; 11 uses
  %i.ld = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.le = icmp ult i64 %i.ld, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.ld, %4
  %or.cond58 = or i1 %i.le, %.not
  br i1 %or.cond58, label %.invoke, label %bb.t, !prof !17

.invoke385:                                       ; preds = %bb.x, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, %bb.af, %.lr.ph169
  %i.lf = phi i64 [ %i.tq, %bb.af ], [ %i.ti, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %i.tn, %.lr.ph169 ], [ %i.ue, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %i.sz, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.x ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lg = phi i64 [ %6, %bb.af ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.x ], [ %6, %bb.k ]
  %i.lh = phi ptr [ @16, %bb.af ], [ @14, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ @15, %.lr.ph169 ], [ @17, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ @13, %scalar.ph506 ], [ @12, %bb.x ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lf, i64 noundef %i.lg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lh) #26
          to label %.cont386 unwind label %.loopexit.split-lp

.cont386:                                         ; preds = %.invoke385
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.li = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lj = icmp ult i64 %i.li, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.li, %i.n
  %or.cond59 = or i1 %i.lj, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.u, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4288
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %i.x
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lk, ptr noundef nonnull readonly %i.lm, ptr noundef nonnull align 2 %i.ll, ptr noundef nonnull %i.ln)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !4289)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4289, !noalias !4290, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4289, !noalias !4290, !noundef !5 ; 6 uses
  %i.lo = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4291, !noalias !4290, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66413 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4291, !noalias !4290, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i412 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.lp = and i16 %i.lc, 32767                    ; 4 uses
  %i.lq = icmp samesign ugt i16 %i.lp, 32640
  %i.lr = sub i64 %.val.i.i.i66413, %.val1.i.i.i412
  %diff.check414 = icmp ugt i64 %i.lr, -32        ; 3 uses
  br i1 %i.lq, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check416 = icmp ult i64 %i.lo, 4
  %or.cond523 = or i1 %min.iters.check416, %diff.check414
  br i1 %or.cond523, label %.lr.ph.split.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check417 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check417, label %vec.epilog.ph, label %vector.ph418

vector.ph418:                                     ; preds = %vector.main.loop.iter.check
  %i.ls = and i64 %i.lo, 12
  %n.vec419 = and i64 %i.lo, -16                  ; 4 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.ph418, %vector.body420
  %index421 = phi i64 [ 0, %vector.ph418 ], [ %index.next424, %vector.body420 ] ; 2 uses
  %i.lt = add i64 %index421, %.val.i.i62          ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lt ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load422 = load <8 x i16>, ptr %i.lu, align 2, !noalias !4289
  %wide.load423 = load <8 x i16>, ptr %i.lw, align 2, !noalias !4289
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <8 x i16> %wide.load422, ptr %i.lv, align 2, !alias.scope !4292, !noalias !4289
  store <8 x i16> %wide.load423, ptr %i.lx, align 2, !alias.scope !4292, !noalias !4289
  %index.next424 = add nuw i64 %index421, 16      ; 2 uses
  %i.ly = icmp eq i64 %index.next424, %n.vec419
  br i1 %i.ly, label %middle.block425, label %vector.body420, !llvm.loop !4266

middle.block425:                                  ; preds = %vector.body420
  %cmp.n426 = icmp eq i64 %i.lo, %n.vec419
  br i1 %cmp.n426, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block425
  %min.epilog.iters.check = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec419, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec427 = and i64 %i.lo, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index428 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 2 uses
  %i.lz = add i64 %index428, %.val.i.i62          ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lz
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lz
  %wide.load429 = load <4 x i16>, ptr %i.ma, align 2, !noalias !4289
  store <4 x i16> %wide.load429, ptr %i.mb, align 2, !alias.scope !4292, !noalias !4289
  %index.next430 = add nuw i64 %index428, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next430, %n.vec427
  br i1 %i.mc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4267

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n431 = icmp eq i64 %i.lo, %n.vec427
  br i1 %cmp.n431, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec419, %vec.epilog.iter.check ], [ %n.vec427, %vec.epilog.middle.block ] ; 3 uses
  %i.md = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter545 = and i64 %i.md, 3                 ; 2 uses
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.me, %.lr.ph.split.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.me = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.mf = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mf
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mf
  %.val8.us.i.i.prol = load i16, ptr %i.mg, align 2, !noalias !4289, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.mh, align 2, !alias.scope !4292, !noalias !4289
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter545
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !4268

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.me, %.lr.ph.split.us.i.i.prol ]
  %i.mi = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.mj = add i64 %i.mi, %.val.i.i62
  %i.mk = icmp ugt i64 %i.mj, -4
  br i1 %i.mk, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.prol.loopexit
  %invariant.op556 = add i64 1, %.val.i.i62
  %invariant.op558 = add i64 2, %.val.i.i62
  %invariant.op560 = add i64 3, %.val.i.i62
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %.lr.ph.split.us.i.i.preheader.new ], [ %i.ms, %.lr.ph.split.us.i.i ] ; 5 uses
  %i.ml = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ml
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ml
  %.val8.us.i.i = load i16, ptr %i.mm, align 2, !noalias !4289, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mn, align 2, !alias.scope !4292, !noalias !4289
  %.reass557 = add i64 %.sroa.0.010.us.i.i, %invariant.op556 ; 2 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass557
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass557
  %.val8.us.i.i.1 = load i16, ptr %i.mo, align 2, !noalias !4289, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.mp, align 2, !alias.scope !4292, !noalias !4289
  %.reass559 = add i64 %.sroa.0.010.us.i.i, %invariant.op558 ; 2 uses
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass559
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass559
  %.val8.us.i.i.2 = load i16, ptr %i.mq, align 2, !noalias !4289, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mr, align 2, !alias.scope !4292, !noalias !4289
  %i.ms = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass561 = add i64 %.sroa.0.010.us.i.i, %invariant.op560 ; 2 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass561
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass561
  %.val8.us.i.i.3 = load i16, ptr %i.mt, align 2, !noalias !4289, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mu, align 2, !alias.scope !4292, !noalias !4289
  %exitcond18.not.i.i.3 = icmp eq i64 %i.ms, %i.lo
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i, !llvm.loop !4269

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp slt i16 %i.lc, 0
  br i1 %.not1.i.i.i.i.i67, label %iter.check453, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.lo, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check414
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.mv = and i64 %i.lo, 12
  %n.vec478 = and i64 %i.lo, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.mw = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mw ; 2 uses
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mw ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.mx, align 2, !noalias !4289 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.mz, align 2, !noalias !4289 ; 4 uses
  %i.na = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.nb = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.nc = icmp samesign ult <8 x i16> %i.na, splat (i16 32641)
  %i.nd = icmp samesign ult <8 x i16> %i.nb, splat (i16 32641)
  %i.ne = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.nf = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.ng = and <8 x i1> %i.ne, %i.nc
  %i.nh = and <8 x i1> %i.nf, %i.nd
  %i.ni = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.nj = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.nk = select <8 x i1> %i.ng, <8 x i16> %i.ni, <8 x i16> %wide.load483
  %i.nl = select <8 x i1> %i.nh, <8 x i16> %i.nj, <8 x i16> %wide.load484
  %i.nm = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  store <8 x i16> %i.nk, ptr %i.my, align 2, !alias.scope !4292, !noalias !4289
  store <8 x i16> %i.nl, ptr %i.nm, align 2, !alias.scope !4292, !noalias !4289
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.nn = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.nn, label %middle.block486, label %vector.body481, !llvm.loop !4270

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.lo, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.mv, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !20

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.lo, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.no = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.no
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.no
  %wide.load499 = load <4 x i16>, ptr %i.np, align 2, !noalias !4289 ; 4 uses
  %i.nr = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.ns = icmp samesign ult <4 x i16> %i.nr, splat (i16 32641)
  %i.nt = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.nu = and <4 x i1> %i.nt, %i.ns
  %i.nv = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nw = select <4 x i1> %i.nu, <4 x i16> %i.nv, <4 x i16> %wide.load499
  store <4 x i16> %i.nw, ptr %i.nq, align 2, !alias.scope !4292, !noalias !4289
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.nx = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.nx, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !4271

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.lo, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %i.ny = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nz = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.oa = add i64 %.val6.i.i63, %i.nz
  %xtraiter = and i64 %i.ny, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.ob = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.oc = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oc
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oc
  %.val8.i.i.prol = load i16, ptr %i.od, align 2, !noalias !4289, !noundef !5 ; 4 uses
  %i.of = and i16 %.val8.i.i.prol, 32767
  %i.og = icmp samesign ult i16 %i.of, 32641
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %or.cond.i.i.prol = and i1 %.not.i.i.i.i.i68.prol, %i.og
  %spec.select.i.i.prol = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.lc)
  %i.oh = select i1 %or.cond.i.i.prol, i16 %spec.select.i.i.prol, i16 %.val8.i.i.prol
  store i16 %i.oh, ptr %i.oe, align 2, !alias.scope !4292, !noalias !4289
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.ob, %.lr.ph.split.split.i.i.prol ]
  %i.oi = icmp eq i64 %i.oa, %.val.i.i62
  br i1 %i.oi, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check453:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check436 = icmp ult i64 %i.lo, 8
  %or.cond525 = or i1 %min.iters.check436, %diff.check414
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check453
  %min.iters.check438 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check438, label %vec.epilog.ph457, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.oj = and i64 %i.lo, 8
  %n.vec440 = and i64 %i.lo, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert441 = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat442 = shufflevector <8 x i16> %broadcast.splatinsert441, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph439, %vector.body443
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next449, %vector.body443 ] ; 2 uses
  %i.ok = add i64 %index444, %.val.i.i62          ; 2 uses
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ok ; 2 uses
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ok ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %wide.load445 = load <8 x i16>, ptr %i.ol, align 2, !noalias !4289 ; 5 uses
  %wide.load446 = load <8 x i16>, ptr %i.on, align 2, !noalias !4289 ; 5 uses
  %i.oo = and <8 x i16> %wide.load445, splat (i16 32767)
  %i.op = and <8 x i16> %wide.load446, splat (i16 32767)
  %i.oq = icmp samesign ugt <8 x i16> %i.oo, splat (i16 32640) ; 3 uses
  %i.or = icmp samesign ugt <8 x i16> %i.op, splat (i16 32640) ; 3 uses
  %i.os = xor <8 x i1> %i.oq, splat (i1 true)
  %i.ot = xor <8 x i1> %i.or, splat (i1 true)
  %i.ou = icmp sgt <8 x i16> %wide.load445, splat (i16 -1) ; 2 uses
  %i.ov = icmp sgt <8 x i16> %wide.load446, splat (i16 -1) ; 2 uses
  %i.ow = or <8 x i1> %i.oq, %i.ou
  %i.ox = xor <8 x i1> %i.ow, splat (i1 true)
  %i.oy = or <8 x i1> %i.or, %i.ov
  %i.oz = xor <8 x i1> %i.oy, splat (i1 true)
  %i.pa = icmp uge <8 x i16> %wide.load445, %broadcast.splat
  %i.pb = icmp uge <8 x i16> %wide.load446, %broadcast.splat
  %i.pc = or <8 x i16> %wide.load445, %broadcast.splat442
  %i.pd = or <8 x i16> %wide.load446, %broadcast.splat442
  %i.pe = icmp eq <8 x i16> %i.pc, zeroinitializer
  %i.pf = icmp eq <8 x i16> %i.pd, zeroinitializer
  %i.pg = select <8 x i1> %i.ox, <8 x i1> %i.pa, <8 x i1> zeroinitializer
  %i.ph = select <8 x i1> %i.oz, <8 x i1> %i.pb, <8 x i1> zeroinitializer
  %i.pi = and <8 x i1> %i.ou, %i.pe
  %i.pj = select <8 x i1> %i.os, <8 x i1> %i.pi, <8 x i1> zeroinitializer
  %i.pk = and <8 x i1> %i.ov, %i.pf
  %i.pl = select <8 x i1> %i.ot, <8 x i1> %i.pk, <8 x i1> zeroinitializer
  %i.pm = or <8 x i1> %i.pj, %i.pg
  %i.pn = or <8 x i1> %i.pl, %i.ph
  %i.po = or <8 x i1> %i.pm, %i.oq
  %i.pp = or <8 x i1> %i.pn, %i.or
  %predphi447 = select <8 x i1> %i.po, <8 x i16> %wide.load445, <8 x i16> %broadcast.splat
  %predphi448 = select <8 x i1> %i.pp, <8 x i16> %wide.load446, <8 x i16> %broadcast.splat
  %i.pq = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  store <8 x i16> %predphi447, ptr %i.om, align 2, !alias.scope !4292, !noalias !4289
  store <8 x i16> %predphi448, ptr %i.pq, align 2, !alias.scope !4292, !noalias !4289
  %index.next449 = add nuw i64 %index444, 16      ; 2 uses
  %i.pr = icmp eq i64 %index.next449, %n.vec440
  br i1 %i.pr, label %middle.block450, label %vector.body443, !llvm.loop !4272

middle.block450:                                  ; preds = %vector.body443
  %cmp.n451 = icmp eq i64 %i.lo, %n.vec440
  br i1 %cmp.n451, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block450
  %min.epilog.iters.check456.not.not = icmp eq i64 %i.oj, 0
  br i1 %min.epilog.iters.check456.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph457, !prof !22

vec.epilog.ph457:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check455
  %vec.epilog.resume.val452 = phi i64 [ %n.vec440, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec458 = and i64 %i.lo, -8                   ; 3 uses
  %broadcast.splatinsert459 = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat460 = shufflevector <8 x i16> %broadcast.splatinsert459, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph457
  %index464 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph457 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.ps = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ps
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ps
  %wide.load465 = load <8 x i16>, ptr %i.pt, align 2, !noalias !4289 ; 5 uses
  %i.pv = and <8 x i16> %wide.load465, splat (i16 32767)
  %i.pw = icmp samesign ugt <8 x i16> %i.pv, splat (i16 32640) ; 3 uses
  %i.px = xor <8 x i1> %i.pw, splat (i1 true)
  %i.py = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.pz = or <8 x i1> %i.pw, %i.py
  %i.qa = xor <8 x i1> %i.pz, splat (i1 true)
  %i.qb = icmp uge <8 x i16> %wide.load465, %broadcast.splat460
  %i.qc = or <8 x i16> %wide.load465, %broadcast.splat462
  %i.qd = icmp eq <8 x i16> %i.qc, zeroinitializer
  %i.qe = select <8 x i1> %i.qa, <8 x i1> %i.qb, <8 x i1> zeroinitializer
  %i.qf = and <8 x i1> %i.py, %i.qd
  %i.qg = select <8 x i1> %i.px, <8 x i1> %i.qf, <8 x i1> zeroinitializer
  %i.qh = or <8 x i1> %i.qg, %i.qe
  %i.qi = or <8 x i1> %i.qh, %i.pw
  %predphi466 = select <8 x i1> %i.qi, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat460
  store <8 x i16> %predphi466, ptr %i.pu, align 2, !alias.scope !4292, !noalias !4289
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qj = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.qj, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4273

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lo, %n.vec458
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check453, %vec.epilog.iter.check455, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check453 ], [ %n.vec440, %vec.epilog.iter.check455 ], [ %n.vec458, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qk, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qk = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.ql = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ql
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ql
  %.val8.us12.i.i = load i16, ptr %i.qm, align 2, !noalias !4289, !noundef !5 ; 7 uses
  %i.qo = and i16 %.val8.us12.i.i, 32767
  %i.qp = icmp samesign ugt i16 %i.qo, 32640
  br i1 %i.qp, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split7.i.i.us.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i: ; preds = %bb.v
  %i.qq = icmp ult i16 %.val8.us12.i.i, %i.lc
  br i1 %i.qq, label %bb.w, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.v
  %i.qr = or i16 %.val8.us12.i.i, %i.lp
  %.not.i.i.us.i.i = icmp eq i16 %i.qr, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.w

bb.w:                                             ; preds = %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.w, %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qs = phi i16 [ %i.lc, %bb.w ], [ %.val8.us12.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ]
  store i16 %i.qs, ptr %i.qn, align 2, !alias.scope !4292, !noalias !4289
  %exitcond16.not.i.i = icmp eq i64 %i.qk, %i.lo
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4274

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qz, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qt = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qt
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qt
  %.val8.i.i = load i16, ptr %i.qu, align 2, !noalias !4289, !noundef !5 ; 4 uses
  %i.qw = and i16 %.val8.i.i, 32767
  %i.qx = icmp samesign ult i16 %i.qw, 32641
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %or.cond.i.i = and i1 %.not.i.i.i.i.i68, %i.qx
  %spec.select.i.i = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.lc)
  %i.qy = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %.val8.i.i
  store i16 %i.qy, ptr %i.qv, align 2, !alias.scope !4292, !noalias !4289
  %i.qz = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.ra, align 2, !noalias !4289, !noundef !5 ; 4 uses
  %i.rc = and i16 %.val8.i.i.1, 32767
  %i.rd = icmp samesign ult i16 %i.rc, 32641
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %or.cond.i.i.1 = and i1 %.not.i.i.i.i.i68.1, %i.rd
  %spec.select.i.i.1 = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.lc)
  %i.re = select i1 %or.cond.i.i.1, i16 %spec.select.i.i.1, i16 %.val8.i.i.1
  store i16 %i.re, ptr %i.rb, align 2, !alias.scope !4292, !noalias !4289
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qz, %i.lo
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i, !llvm.loop !4275

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block450, %vec.epilog.middle.block468, %middle.block425, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4288
  br label %.loopexit

bb.x:                                             ; preds = %bb.i
  %i.rf = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.rf, label %bb.y, label %.invoke385

bb.y:                                             ; preds = %bb.x
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.rh = load i16, ptr %i.rg, align 2, !noundef !5 ; 11 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.ri = and i16 %i.rh, 32767
  %i.rj = icmp samesign ugt i16 %i.ri, 32640      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.rh, -1            ; 2 uses
  %i.rk = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.rl = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0170)
  %i.rm = sub i64 %i.rl, %i.av
  %i.rn = call i64 @llvm.umin.i64(i64 %i.rm, i64 %i.rk)
  %i.ro = call i64 @llvm.umin.i64(i64 %i.rn, i64 %i.at) ; 2 uses
  %i.rp = add nuw nsw i64 %i.ro, 1                ; 2 uses
  %min.iters.check507 = icmp samesign ult i64 %i.ro, 8
  br i1 %min.iters.check507, label %scalar.ph506.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph
  %i.rq = shl i64 %.sroa.4.0.copyload, 1
  %i.rr = add i64 %i.aw, %i.r
  %i.rs = add i64 %i.rq, %i.a
  %i.rt = sub i64 %i.rs, %i.rr
  %diff.check505 = icmp ugt i64 %i.rt, -16
  br i1 %diff.check505, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %vector.memcheck504
  %i.ru = and i64 %i.rp, 7                        ; 2 uses
  %i.rv = icmp eq i64 %i.ru, 0
  %i.rw = select i1 %i.rv, i64 8, i64 %i.ru
  %n.vec509 = sub nsw i64 %i.rp, %i.rw            ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat511 = shufflevector <8 x i1> %broadcast.splatinsert510, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert512 = insertelement <8 x i1> poison, i1 %i.rj, i64 0
  %broadcast.splat513 = shufflevector <8 x i1> %broadcast.splatinsert512, <8 x i1> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.rx = xor <8 x i1> %broadcast.splat513, splat (i1 true)
end_hunk_1
begin_hunk_2_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MaximumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit92.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !4349, !noalias !4350
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !4349, !noalias !4350
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit92.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !4349, !noalias !4350
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !4349, !noalias !4350
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit92.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !4349, !noalias !4350
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !4349, !noalias !4350
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4349, !noalias !4350
  br label %.loopexit92.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit92.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload263 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.082.0.copyload260 = phi i64 [ %.sroa.082.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit92.split.us
  br i1 %.not173, label %.loopexit, label %.lr.ph169

bb.h:                                             ; preds = %.loopexit92.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit92.split.us
  br i1 %i.aj, label %bb.w, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.082.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.r, label %.invoke389

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.082.0.copyload, %bb.r ], [ %.sroa.082.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0170, %bb.m ], [ %.sroa.0.0170, %bb.s ]
  %i.ij = phi i64 [ %i.kz, %bb.r ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.le, %bb.s ]
  %i.ik = phi i64 [ %4, %bb.r ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.s ]
  %i.il = phi ptr [ @11, %bb.r ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.s ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0170
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4351
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4352
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit93

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B26_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit93

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4352
  call void @llvm.experimental.noalias.scope.decl(metadata !4353)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4353, !noalias !4354, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4353, !noalias !4354, !noundef !5 ; 2 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !4355, !noalias !4356, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4355, !noalias !4356, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4355, !noalias !4356, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4357, !noalias !4356, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i410 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i412 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i411 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i411
  %i.ix = sub i64 %i.iw, %.val.i.i.i410
  %diff.check = icmp ugt i64 %i.ix, -16
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i412
  %i.iz = sub i64 %i.iy, %.val.i.i.i410
  %diff.check413 = icmp ugt i64 %i.iz, -16
  %conflict.rdx = or i1 %diff.check, %diff.check413
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ja
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !4358 ; 5 uses
  %wide.load414 = load <8 x i16>, ptr %i.jd, align 2, !noalias !4358 ; 6 uses
  %i.jf = and <8 x i16> %wide.load, splat (i16 32767) ; 2 uses
  %i.jg = icmp samesign ugt <8 x i16> %i.jf, splat (i16 31744)
  %i.jh = and <8 x i16> %wide.load414, splat (i16 32767)
  %i.ji = icmp samesign ugt <8 x i16> %i.jh, splat (i16 31744)
  %i.jj = select <8 x i1> %i.jg, <8 x i1> splat (i1 true), <8 x i1> %i.ji ; 3 uses
  %i.jk = xor <8 x i1> %i.jj, splat (i1 true)
  %i.jl = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.jm = icmp sgt <8 x i16> %wide.load414, splat (i16 -1) ; 3 uses
  %i.jn = select <8 x i1> %i.jj, <8 x i1> splat (i1 true), <8 x i1> %i.jl ; 2 uses
  %i.jo = xor <8 x i1> %i.jn, splat (i1 true)
  %i.jp = select <8 x i1> %i.jn, <8 x i1> splat (i1 true), <8 x i1> %i.jm
  %i.jq = icmp ule <8 x i16> %wide.load, %wide.load414
  %i.jr = select <8 x i1> %i.jo, <8 x i1> %i.jm, <8 x i1> zeroinitializer
  %i.js = or <8 x i16> %wide.load414, %i.jf
  %i.jt = icmp eq <8 x i16> %i.js, zeroinitializer
  %i.ju = select <8 x i1> %i.jk, <8 x i1> %i.jl, <8 x i1> zeroinitializer
  %i.jv = icmp ult <8 x i16> %wide.load, %wide.load414
  %i.jw = and <8 x i1> %i.jm, %i.jv
  %i.jx = xor <8 x i1> %i.jw, splat (i1 true)
  %i.jy = select <8 x i1> %i.ju, <8 x i1> %i.jx, <8 x i1> zeroinitializer
  %i.jz = select <8 x i1> %i.jr, <8 x i1> %i.jt, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jp, <8 x i1> %i.jz, <8 x i1> %i.jq
  %i.kb = or <8 x i1> %i.ka, %i.jy
  %i.kc = or <8 x i1> %i.kb, %i.jj
  %predphi = select <8 x i1> %i.kc, <8 x i16> %wide.load, <8 x i16> %wide.load414
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !4358
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !4321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ke, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kf = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kg = add i64 %i.kf, %i.iu                    ; 2 uses
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kg
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kf
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !4358, !noundef !5 ; 8 uses
  %i.kl = load i16, ptr %i.ki, align 2, !noalias !4358, !noundef !5 ; 6 uses
  %i.km = and i16 %i.kk, 32767                    ; 2 uses
  %i.kn = icmp samesign ugt i16 %i.km, 31744
  %i.ko = and i16 %i.kl, 32767
  %i.kp = icmp samesign ugt i16 %i.ko, 31744
  %or.cond.i.i.i.i.i = select i1 %i.kn, i1 true, i1 %i.kp
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp sgt i16 %i.kk, -1
  %.not1.i.i.i.i.i = icmp sgt i16 %i.kl, -1       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i, label %bb.p

.split.i.i.i.i:                                   ; preds = %bb.o
  %i.kq = icmp ult i16 %i.kk, %i.kl
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kq
  br i1 %spec.select.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not1.i.i.i.i.i, label %.split4.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.p
  %i.kr = or i16 %i.kl, %i.km
  %.not.i.i.i.i = icmp eq i16 %i.kr, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.q

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i: ; preds = %bb.p
  %i.ks = icmp samesign ugt i16 %i.kk, %i.kl
  br i1 %i.ks, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.q, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i, %scalar.ph
  %i.kt = phi i16 [ %i.kl, %bb.q ], [ %i.kk, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i ], [ %i.kk, %.split4.i.i.i.i ], [ %i.kk, %.split.i.i.i.i ], [ %i.kk, %scalar.ph ]
  store i16 %i.kt, ptr %i.kj, align 2, !noalias !4358
  %exitcond.not.i.i = icmp eq i64 %i.ke, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4322

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4351
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ai, %bb.x, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ku = add i64 %.sroa.0.0170, %i.x
  %i.kv = load i64, ptr %i.ac, align 8, !alias.scope !4349, !noalias !4350, !noundef !5 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kw, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.r:                                             ; preds = %bb.k
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ky = load i16, ptr %i.kx, align 2, !noundef !5 ; 12 uses
  %i.kz = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.kz, %4
  %or.cond58 = or i1 %i.la, %.not
  br i1 %or.cond58, label %.invoke, label %bb.s, !prof !17

.invoke389:                                       ; preds = %bb.w, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, %bb.ad, %.lr.ph169
  %i.lb = phi i64 [ %i.tj, %bb.ad ], [ %i.tb, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %i.tg, %.lr.ph169 ], [ %i.tx, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %i.ss, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.w ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lc = phi i64 [ %6, %bb.ad ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.w ], [ %6, %bb.k ]
  %i.ld = phi ptr [ @16, %bb.ad ], [ @14, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ @15, %.lr.ph169 ], [ @17, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ @13, %scalar.ph506 ], [ @12, %bb.w ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lb, i64 noundef %i.lc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ld) #26
          to label %.cont390 unwind label %.loopexit.split-lp

.cont390:                                         ; preds = %.invoke389
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.le = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lf = icmp ult i64 %i.le, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.le, %i.n
  %or.cond59 = or i1 %i.lf, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.t, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4359
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.x
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1X_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lg, ptr noundef nonnull readonly %i.li, ptr noundef nonnull align 2 %i.lh, ptr noundef nonnull %i.lj)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !4360)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4360, !noalias !4361, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4360, !noalias !4361, !noundef !5 ; 6 uses
  %i.lk = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4362, !noalias !4361, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66417 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4362, !noalias !4361, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i416 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.ll = and i16 %i.ky, 32767
  %i.lm = icmp samesign ugt i16 %i.ll, 31744
  %i.ln = sub i64 %.val.i.i.i66417, %.val1.i.i.i416
  %diff.check418 = icmp ugt i64 %i.ln, -32        ; 3 uses
  br i1 %i.lm, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check420 = icmp ult i64 %i.lk, 4
  %or.cond523 = or i1 %min.iters.check420, %diff.check418
  br i1 %or.cond523, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check421 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph422

vector.ph422:                                     ; preds = %vector.main.loop.iter.check
  %i.lo = and i64 %i.lk, 12
  %n.vec423 = and i64 %i.lk, -16                  ; 4 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.ph422, %vector.body424
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 2 uses
  %i.lp = add i64 %index425, %.val.i.i62          ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lp ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load426 = load <8 x i16>, ptr %i.lq, align 2, !noalias !4360
  %wide.load427 = load <8 x i16>, ptr %i.ls, align 2, !noalias !4360
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <8 x i16> %wide.load426, ptr %i.lr, align 2, !alias.scope !4363, !noalias !4360
  store <8 x i16> %wide.load427, ptr %i.lt, align 2, !alias.scope !4363, !noalias !4360
  %index.next428 = add nuw i64 %index425, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.lu, label %middle.block429, label %vector.body424, !llvm.loop !4337

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %i.lk, %n.vec423
  br i1 %cmp.n430, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block429
  %min.epilog.iters.check = icmp eq i64 %i.lo, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec423, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %i.lk, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 2 uses
  %i.lv = add i64 %index432, %.val.i.i62          ; 2 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lv
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lv
  %wide.load433 = load <4 x i16>, ptr %i.lw, align 2, !noalias !4360
  store <4 x i16> %wide.load433, ptr %i.lx, align 2, !alias.scope !4363, !noalias !4360
  %index.next434 = add nuw i64 %index432, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next434, %n.vec431
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4338

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.lk, %n.vec431
  br i1 %cmp.n435, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec423, %vec.epilog.iter.check ], [ %n.vec431, %vec.epilog.middle.block ] ; 3 uses
  %i.lz = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter548 = and i64 %i.lz, 3                 ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.ma, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ]
  %i.ma = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.mb = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mb
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mb
  %.val8.us.i.i.prol = load i16, ptr %i.mc, align 2, !noalias !4360, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.md, align 2, !alias.scope !4363, !noalias !4360
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter548
  br i1 %prol.iter.cmp.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol, !llvm.loop !4339

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader ], [ %i.ma, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol ]
  %i.me = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.mf = add i64 %i.me, %.val.i.i62
  %i.mg = icmp ugt i64 %i.mf, -4
  br i1 %i.mg, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit
  %invariant.op559 = add i64 1, %.val.i.i62
  %invariant.op561 = add i64 2, %.val.i.i62
  %invariant.op563 = add i64 3, %.val.i.i62
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.preheader.new ], [ %i.mo, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i ] ; 5 uses
  %i.mh = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mh
  %.val8.us.i.i = load i16, ptr %i.mi, align 2, !noalias !4360, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mj, align 2, !alias.scope !4363, !noalias !4360
  %.reass560 = add i64 %.sroa.0.010.us.i.i, %invariant.op559 ; 2 uses
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass560
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass560
  %.val8.us.i.i.1 = load i16, ptr %i.mk, align 2, !noalias !4360, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.ml, align 2, !alias.scope !4363, !noalias !4360
  %.reass562 = add i64 %.sroa.0.010.us.i.i, %invariant.op561 ; 2 uses
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass562
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass562
  %.val8.us.i.i.2 = load i16, ptr %i.mm, align 2, !noalias !4360, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mn, align 2, !alias.scope !4363, !noalias !4360
  %i.mo = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass564 = add i64 %.sroa.0.010.us.i.i, %invariant.op563 ; 2 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass564
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass564
  %.val8.us.i.i.3 = load i16, ptr %i.mp, align 2, !noalias !4360, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mq, align 2, !alias.scope !4363, !noalias !4360
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mo, %i.lk
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, !llvm.loop !4340

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp sgt i16 %i.ky, -1
  br i1 %.not1.i.i.i.i.i67, label %iter.check455, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.lk, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check418
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.mr = and i64 %i.lk, 12
  %n.vec478 = and i64 %i.lk, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.ms = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ms ; 2 uses
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ms ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.mt, align 2, !noalias !4360 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.mv, align 2, !noalias !4360 ; 4 uses
  %i.mw = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.mx = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.my = icmp samesign ugt <8 x i16> %i.mw, splat (i16 31744)
  %i.mz = icmp samesign ugt <8 x i16> %i.mx, splat (i16 31744)
  %i.na = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.nb = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.nc = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.nd = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.ne = or <8 x i1> %i.na, %i.my
  %i.nf = or <8 x i1> %i.nb, %i.mz
  %i.ng = select <8 x i1> %i.ne, <8 x i16> %wide.load483, <8 x i16> %i.nc
  %i.nh = select <8 x i1> %i.nf, <8 x i16> %wide.load484, <8 x i16> %i.nd
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store <8 x i16> %i.ng, ptr %i.mu, align 2, !alias.scope !4363, !noalias !4360
  store <8 x i16> %i.nh, ptr %i.ni, align 2, !alias.scope !4363, !noalias !4360
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.nj = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.nj, label %middle.block486, label %vector.body481, !llvm.loop !4341

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.lk, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.mr, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !20

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.lk, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.nk = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nk
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nk
  %wide.load499 = load <4 x i16>, ptr %i.nl, align 2, !noalias !4360 ; 4 uses
  %i.nn = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.no = icmp samesign ugt <4 x i16> %i.nn, splat (i16 31744)
  %i.np = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.nq = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nr = or <4 x i1> %i.np, %i.no
  %i.ns = select <4 x i1> %i.nr, <4 x i16> %wide.load499, <4 x i16> %i.nq
  store <4 x i16> %i.ns, ptr %i.nm, align 2, !alias.scope !4363, !noalias !4360
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.nt = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.nt, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !4342

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.lk, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %i.nu = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nv = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.nw = add i64 %.val6.i.i63, %i.nv
  %xtraiter = and i64 %i.nu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.nx = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.ny = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ny
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ny
  %.val8.i.i.prol = load i16, ptr %i.nz, align 2, !noalias !4360, !noundef !5 ; 4 uses
  %i.ob = and i16 %.val8.i.i.prol, 32767
  %i.oc = icmp samesign ugt i16 %i.ob, 31744
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %i.od = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.ky)
  %i.oe = or i1 %.not.i.i.i.i.i68.prol, %i.oc
  %i.of = select i1 %i.oe, i16 %.val8.i.i.prol, i16 %i.od
  store i16 %i.of, ptr %i.oa, align 2, !alias.scope !4363, !noalias !4360
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.nx, %.lr.ph.split.split.i.i.prol ]
  %i.og = icmp eq i64 %i.nw, %.val.i.i62
  br i1 %i.og, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check455:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check440 = icmp ult i64 %i.lk, 8
  %or.cond525 = or i1 %min.iters.check440, %diff.check418
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check455
  %min.iters.check442 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check442, label %vec.epilog.ph459, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %i.oh = and i64 %i.lk, 8
  %n.vec444 = and i64 %i.lk, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body445

vector.body445:                                   ; preds = %vector.ph443, %vector.body445
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %i.oi = add i64 %index446, %.val.i.i62          ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oi ; 2 uses
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oi ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %wide.load447 = load <8 x i16>, ptr %i.oj, align 2, !noalias !4360 ; 4 uses
  %wide.load448 = load <8 x i16>, ptr %i.ol, align 2, !noalias !4360 ; 4 uses
  %i.om = and <8 x i16> %wide.load447, splat (i16 32767) ; 2 uses
  %i.on = and <8 x i16> %wide.load448, splat (i16 32767) ; 2 uses
  %i.oo = icmp samesign ugt <8 x i16> %i.om, splat (i16 31744) ; 3 uses
  %i.op = icmp samesign ugt <8 x i16> %i.on, splat (i16 31744) ; 3 uses
  %i.oq = xor <8 x i1> %i.oo, splat (i1 true)
  %i.or = xor <8 x i1> %i.op, splat (i1 true)
  %i.os = icmp sgt <8 x i16> %wide.load447, splat (i16 -1) ; 2 uses
  %i.ot = icmp sgt <8 x i16> %wide.load448, splat (i16 -1) ; 2 uses
  %i.ou = or <8 x i1> %i.oo, %i.os
  %i.ov = xor <8 x i1> %i.ou, splat (i1 true)
  %i.ow = or <8 x i1> %i.op, %i.ot
  %i.ox = xor <8 x i1> %i.ow, splat (i1 true)
  %i.oy = or <8 x i16> %i.om, %broadcast.splat
  %i.oz = or <8 x i16> %i.on, %broadcast.splat
  %i.pa = icmp eq <8 x i16> %i.oy, zeroinitializer
  %i.pb = icmp eq <8 x i16> %i.oz, zeroinitializer
  %i.pc = icmp uge <8 x i16> %wide.load447, %broadcast.splat
  %i.pd = icmp uge <8 x i16> %wide.load448, %broadcast.splat
  %i.pe = select <8 x i1> %i.ov, <8 x i1> %i.pa, <8 x i1> zeroinitializer
  %i.pf = select <8 x i1> %i.ox, <8 x i1> %i.pb, <8 x i1> zeroinitializer
  %i.pg = and <8 x i1> %i.os, %i.pc
  %i.ph = select <8 x i1> %i.oq, <8 x i1> %i.pg, <8 x i1> zeroinitializer
  %i.pi = and <8 x i1> %i.ot, %i.pd
  %i.pj = select <8 x i1> %i.or, <8 x i1> %i.pi, <8 x i1> zeroinitializer
  %i.pk = or <8 x i1> %i.ph, %i.pe
  %i.pl = or <8 x i1> %i.pj, %i.pf
  %i.pm = or <8 x i1> %i.pk, %i.oo
  %i.pn = or <8 x i1> %i.pl, %i.op
  %predphi449 = select <8 x i1> %i.pm, <8 x i16> %wide.load447, <8 x i16> %broadcast.splat
  %predphi450 = select <8 x i1> %i.pn, <8 x i16> %wide.load448, <8 x i16> %broadcast.splat
  %i.po = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store <8 x i16> %predphi449, ptr %i.ok, align 2, !alias.scope !4363, !noalias !4360
  store <8 x i16> %predphi450, ptr %i.po, align 2, !alias.scope !4363, !noalias !4360
  %index.next451 = add nuw i64 %index446, 16      ; 2 uses
  %i.pp = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.pp, label %middle.block452, label %vector.body445, !llvm.loop !4343

middle.block452:                                  ; preds = %vector.body445
  %cmp.n453 = icmp eq i64 %i.lk, %n.vec444
  br i1 %cmp.n453, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check457

vec.epilog.iter.check457:                         ; preds = %middle.block452
  %min.epilog.iters.check458.not.not = icmp eq i64 %i.oh, 0
  br i1 %min.epilog.iters.check458.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph459, !prof !22

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check457
  %vec.epilog.resume.val454 = phi i64 [ %n.vec444, %vec.epilog.iter.check457 ], [ 0, %vector.main.loop.iter.check441 ]
  %n.vec460 = and i64 %i.lk, -8                   ; 3 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.ky, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph459
  %index464 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph459 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pq = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pq
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pq
  %wide.load465 = load <8 x i16>, ptr %i.pr, align 2, !noalias !4360 ; 4 uses
  %i.pt = and <8 x i16> %wide.load465, splat (i16 32767) ; 2 uses
  %i.pu = icmp samesign ugt <8 x i16> %i.pt, splat (i16 31744) ; 3 uses
  %i.pv = xor <8 x i1> %i.pu, splat (i1 true)
  %i.pw = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.px = or <8 x i1> %i.pu, %i.pw
  %i.py = xor <8 x i1> %i.px, splat (i1 true)
  %i.pz = or <8 x i16> %i.pt, %broadcast.splat462
  %i.qa = icmp eq <8 x i16> %i.pz, zeroinitializer
  %i.qb = icmp uge <8 x i16> %wide.load465, %broadcast.splat462
  %i.qc = select <8 x i1> %i.py, <8 x i1> %i.qa, <8 x i1> zeroinitializer
  %i.qd = and <8 x i1> %i.pw, %i.qb
  %i.qe = select <8 x i1> %i.pv, <8 x i1> %i.qd, <8 x i1> zeroinitializer
  %i.qf = or <8 x i1> %i.qe, %i.qc
  %i.qg = or <8 x i1> %i.qf, %i.pu
  %predphi466 = select <8 x i1> %i.qg, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat462
  store <8 x i16> %predphi466, ptr %i.ps, align 2, !alias.scope !4363, !noalias !4360
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qh = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.qh, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4344

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lk, %n.vec460
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check455, %vec.epilog.iter.check457, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check455 ], [ %n.vec444, %vec.epilog.iter.check457 ], [ %n.vec460, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qi, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qi = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.qj = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qj
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qj
  %.val8.us12.i.i = load i16, ptr %i.qk, align 2, !noalias !4360, !noundef !5 ; 6 uses
  %i.qm = and i16 %.val8.us12.i.i, 32767          ; 2 uses
  %i.qn = icmp samesign ugt i16 %i.qm, 31744
  br i1 %i.qn, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split.i.i.us.i.i, label %.split7.i.i.us.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.u
  %i.qo = or i16 %i.qm, %i.ky
  %.not.i.i.us.i.i = icmp eq i16 %i.qo, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

.split.i.i.us.i.i:                                ; preds = %bb.u
  %i.qp = icmp ult i16 %.val8.us12.i.i, %i.ky
  br i1 %i.qp, label %bb.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

bb.v:                                             ; preds = %.split.i.i.us.i.i, %.split7.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.v, %.split.i.i.us.i.i, %.split7.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qq = phi i16 [ %i.ky, %bb.v ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.split.i.i.us.i.i ]
  store i16 %i.qq, ptr %i.ql, align 2, !alias.scope !4363, !noalias !4360
  %exitcond16.not.i.i = icmp eq i64 %i.qi, %i.lk
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4345

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qz, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qr = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qr
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qr
  %.val8.i.i = load i16, ptr %i.qs, align 2, !noalias !4360, !noundef !5 ; 4 uses
  %i.qu = and i16 %.val8.i.i, 32767
  %i.qv = icmp samesign ugt i16 %i.qu, 31744
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %i.qw = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.ky)
  %i.qx = or i1 %.not.i.i.i.i.i68, %i.qv
  %i.qy = select i1 %i.qx, i16 %.val8.i.i, i16 %i.qw
  store i16 %i.qy, ptr %i.qt, align 2, !alias.scope !4363, !noalias !4360
  %i.qz = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.ra, align 2, !noalias !4360, !noundef !5 ; 4 uses
  %i.rc = and i16 %.val8.i.i.1, 32767
  %i.rd = icmp samesign ugt i16 %i.rc, 31744
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %i.re = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.ky)
  %i.rf = or i1 %.not.i.i.i.i.i68.1, %i.rd
  %i.rg = select i1 %i.rf, i16 %.val8.i.i.1, i16 %i.re
  store i16 %i.rg, ptr %i.rb, align 2, !alias.scope !4363, !noalias !4360
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qz, %i.lk
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i, !llvm.loop !4346

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i.prol.loopexit, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block452, %vec.epilog.middle.block468, %middle.block429, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4359
  br label %.loopexit

bb.w:                                             ; preds = %bb.i
  %i.rh = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.rh, label %bb.x, label %.invoke389

bb.x:                                             ; preds = %bb.w
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.rj = load i16, ptr %i.ri, align 2, !noundef !5 ; 9 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.rk = and i16 %i.rj, 32767                    ; 3 uses
  %i.rl = icmp samesign ugt i16 %i.rk, 31744      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.rj, -1            ; 2 uses
  %i.rm = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.rn = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0170)
  %i.ro = sub i64 %i.rn, %i.av
  %i.rp = call i64 @llvm.umin.i64(i64 %i.ro, i64 %i.rm)
  %i.rq = call i64 @llvm.umin.i64(i64 %i.rp, i64 %i.at) ; 2 uses
  %i.rr = add nuw nsw i64 %i.rq, 1                ; 2 uses
  %min.iters.check507 = icmp samesign ult i64 %i.rq, 8
  br i1 %min.iters.check507, label %scalar.ph506.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph
  %i.rs = shl i64 %.sroa.4.0.copyload, 1
  %i.rt = add i64 %i.aw, %i.r
  %i.ru = add i64 %i.rs, %i.a
  %i.rv = sub i64 %i.ru, %i.rt
  %diff.check505 = icmp ugt i64 %i.rv, -16
  br i1 %diff.check505, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %vector.memcheck504
  %i.rw = and i64 %i.rr, 7                        ; 2 uses
  %i.rx = icmp eq i64 %i.rw, 0
  %i.ry = select i1 %i.rx, i64 8, i64 %i.rw
  %n.vec509 = sub nsw i64 %i.rr, %i.ry            ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat511 = shufflevector <8 x i1> %broadcast.splatinsert510, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rz = xor <8 x i1> %broadcast.splat511, splat (i1 true)
  %broadcast.splatinsert512 = insertelement <8 x i16> poison, i16 %i.rk, i64 0
  %broadcast.splat513 = shufflevector <8 x i16> %broadcast.splatinsert512, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert514 = insertelement <8 x i16> poison, i16 %i.rj, i64 0
  %broadcast.splat515 = shufflevector <8 x i16> %broadcast.splatinsert514, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
end_hunk_2
begin_hunk_3_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MinimumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i406 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i408 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i407 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i407
  %i.ix = sub i64 %i.iw, %.val.i.i.i406
  %diff.check = icmp ugt i64 %i.ix, -16
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i408
  %i.iz = sub i64 %i.iy, %.val.i.i.i406
  %diff.check409 = icmp ugt i64 %i.iz, -16
  %conflict.rdx = or i1 %diff.check, %diff.check409
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = add i64 %index, %.val.i.i               ; 2 uses
  %i.jb = add i64 %i.ja, %i.iu                    ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jb
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ja
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !4429 ; 6 uses
  %wide.load410 = load <8 x i16>, ptr %i.jd, align 2, !noalias !4429 ; 5 uses
  %i.jf = and <8 x i16> %wide.load, splat (i16 32767)
  %i.jg = icmp samesign ugt <8 x i16> %i.jf, splat (i16 31744) ; 3 uses
  %i.jh = xor <8 x i1> %i.jg, splat (i1 true)
  %i.ji = and <8 x i16> %wide.load410, splat (i16 32767) ; 2 uses
  %i.jj = icmp samesign ugt <8 x i16> %i.ji, splat (i16 31744) ; 2 uses
  %i.jk = select <8 x i1> %i.jg, <8 x i1> splat (i1 true), <8 x i1> %i.jj ; 2 uses
  %i.jl = xor <8 x i1> %i.jk, splat (i1 true)
  %i.jm = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.jn = icmp slt <8 x i16> %wide.load410, zeroinitializer ; 3 uses
  %i.jo = select <8 x i1> %i.jk, <8 x i1> splat (i1 true), <8 x i1> %i.jm
  %i.jp = icmp ult <8 x i16> %wide.load, %wide.load410
  %i.jq = and <8 x i1> %i.jn, %i.jp
  %i.jr = select <8 x i1> %i.jl, <8 x i1> %i.jm, <8 x i1> zeroinitializer ; 2 uses
  %i.js = xor <8 x i1> %i.jn, splat (i1 true)
  %i.jt = select <8 x i1> %i.jr, <8 x i1> %i.js, <8 x i1> zeroinitializer
  %i.ju = icmp ule <8 x i16> %wide.load, %wide.load410
  %i.jv = select <8 x i1> %i.jr, <8 x i1> %i.jn, <8 x i1> zeroinitializer
  %i.jw = or <8 x i16> %i.ji, %wide.load
  %i.jx = icmp eq <8 x i16> %i.jw, zeroinitializer
  %i.jy = select <8 x i1> %i.jh, <8 x i1> %i.jj, <8 x i1> zeroinitializer
  %i.jz = select <8 x i1> %i.jt, <8 x i1> %i.ju, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jv, <8 x i1> %i.jx, <8 x i1> zeroinitializer
  %i.kb = select <8 x i1> %i.jo, <8 x i1> splat (i1 true), <8 x i1> %i.jq
  %i.kc = xor <8 x i1> %i.kb, splat (i1 true)
  %i.kd = or <8 x i1> %i.ka, %i.kc
  %i.ke = or <8 x i1> %i.kd, %i.jz
  %i.kf = or <8 x i1> %i.ke, %i.jy
  %i.kg = or <8 x i1> %i.kf, %i.jg
  %predphi = select <8 x i1> %i.kg, <8 x i16> %wide.load, <8 x i16> %wide.load410
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !4429
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !4392

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ki, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ki = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kj = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kk = add i64 %i.kj, %i.iu                    ; 2 uses
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kk
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kk
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kj
  %i.ko = load i16, ptr %i.kl, align 2, !noalias !4429, !noundef !5 ; 10 uses
  %i.kp = load i16, ptr %i.km, align 2, !noalias !4429, !noundef !5 ; 5 uses
  %i.kq = and i16 %i.ko, 32767
  %i.kr = icmp samesign ugt i16 %i.kq, 31744
  br i1 %i.kr, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %i.ks = and i16 %i.kp, 32767                    ; 2 uses
  %i.kt = icmp samesign ugt i16 %i.ks, 31744
  br i1 %i.kt, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i.i = icmp sgt i16 %i.ko, -1
  %.not1.i.i.i.i.i = icmp slt i16 %i.kp, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  br i1 %.not1.i.i.i.i.i, label %.split5.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.q
  %i.ku = icmp samesign ugt i16 %i.ko, %i.kp
  br i1 %i.ku, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

.split5.i.i.i.i:                                  ; preds = %bb.q
  %i.kv = or i16 %i.ks, %i.ko
  %.not.i.i.i.i = icmp eq i16 %i.kv, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.r

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i: ; preds = %bb.p
  %i.kw = icmp ult i16 %i.ko, %i.kp
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kw
  br i1 %spec.select.i.i.i.i.i, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

bb.r:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i: ; preds = %bb.r, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i, %bb.o, %scalar.ph
  %i.kx = phi i16 [ %i.kp, %bb.r ], [ %i.ko, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i ], [ %i.ko, %.split5.i.i.i.i ], [ %i.ko, %.split.i.i.i.i ], [ %i.ko, %scalar.ph ], [ %i.ko, %bb.o ]
  store i16 %i.kx, ptr %i.kn, align 2, !noalias !4429
  %exitcond.not.i.i = icmp eq i64 %i.ki, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %scalar.ph, !llvm.loop !4393

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4422
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.al, %bb.y, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.ky = add i64 %.sroa.0.0170, %i.x
  %i.kz = load i64, ptr %i.ac, align 8, !alias.scope !4420, !noalias !4421, !noundef !5 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.la, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.s:                                             ; preds = %bb.k
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.lc = load i16, ptr %i.lb, align 2, !noundef !5 ; 11 uses
  %i.ld = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.le = icmp ult i64 %i.ld, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.ld, %4
  %or.cond58 = or i1 %i.le, %.not
  br i1 %or.cond58, label %.invoke, label %bb.t, !prof !17

.invoke385:                                       ; preds = %bb.x, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81, %bb.af, %.lr.ph169
  %i.lf = phi i64 [ %i.tq, %bb.af ], [ %i.ti, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %i.tn, %.lr.ph169 ], [ %i.ue, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %i.sz, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.x ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lg = phi i64 [ %6, %bb.af ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.x ], [ %6, %bb.k ]
  %i.lh = phi ptr [ @16, %bb.af ], [ @14, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit ], [ @15, %.lr.ph169 ], [ @17, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit81 ], [ @13, %scalar.ph506 ], [ @12, %bb.x ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lf, i64 noundef %i.lg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lh) #26
          to label %.cont386 unwind label %.loopexit.split-lp

.cont386:                                         ; preds = %.invoke385
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.li = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lj = icmp ult i64 %i.li, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.li, %i.n
  %or.cond59 = or i1 %i.lj, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.u, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4430
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.lk, i64 %i.x
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1X_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lk, ptr noundef nonnull readonly %i.lm, ptr noundef nonnull align 2 %i.ll, ptr noundef nonnull %i.ln)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !4431)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4431, !noalias !4432, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4431, !noalias !4432, !noundef !5 ; 6 uses
  %i.lo = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4433, !noalias !4432, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66413 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4433, !noalias !4432, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i412 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.lp = and i16 %i.lc, 32767                    ; 4 uses
  %i.lq = icmp samesign ugt i16 %i.lp, 31744
  %i.lr = sub i64 %.val.i.i.i66413, %.val1.i.i.i412
  %diff.check414 = icmp ugt i64 %i.lr, -32        ; 3 uses
  br i1 %i.lq, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check416 = icmp ult i64 %i.lo, 4
  %or.cond523 = or i1 %min.iters.check416, %diff.check414
  br i1 %or.cond523, label %.lr.ph.split.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check417 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check417, label %vec.epilog.ph, label %vector.ph418

vector.ph418:                                     ; preds = %vector.main.loop.iter.check
  %i.ls = and i64 %i.lo, 12
  %n.vec419 = and i64 %i.lo, -16                  ; 4 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.ph418, %vector.body420
  %index421 = phi i64 [ 0, %vector.ph418 ], [ %index.next424, %vector.body420 ] ; 2 uses
  %i.lt = add i64 %index421, %.val.i.i62          ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lt ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load422 = load <8 x i16>, ptr %i.lu, align 2, !noalias !4431
  %wide.load423 = load <8 x i16>, ptr %i.lw, align 2, !noalias !4431
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <8 x i16> %wide.load422, ptr %i.lv, align 2, !alias.scope !4434, !noalias !4431
  store <8 x i16> %wide.load423, ptr %i.lx, align 2, !alias.scope !4434, !noalias !4431
  %index.next424 = add nuw i64 %index421, 16      ; 2 uses
  %i.ly = icmp eq i64 %index.next424, %n.vec419
  br i1 %i.ly, label %middle.block425, label %vector.body420, !llvm.loop !4408

middle.block425:                                  ; preds = %vector.body420
  %cmp.n426 = icmp eq i64 %i.lo, %n.vec419
  br i1 %cmp.n426, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block425
  %min.epilog.iters.check = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec419, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec427 = and i64 %i.lo, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index428 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 2 uses
  %i.lz = add i64 %index428, %.val.i.i62          ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lz
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lz
  %wide.load429 = load <4 x i16>, ptr %i.ma, align 2, !noalias !4431
  store <4 x i16> %wide.load429, ptr %i.mb, align 2, !alias.scope !4434, !noalias !4431
  %index.next430 = add nuw i64 %index428, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next430, %n.vec427
  br i1 %i.mc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4409

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n431 = icmp eq i64 %i.lo, %n.vec427
  br i1 %cmp.n431, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec419, %vec.epilog.iter.check ], [ %n.vec427, %vec.epilog.middle.block ] ; 3 uses
  %i.md = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter545 = and i64 %i.md, 3                 ; 2 uses
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.me, %.lr.ph.split.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.me = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.mf = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mf
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mf
  %.val8.us.i.i.prol = load i16, ptr %i.mg, align 2, !noalias !4431, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.mh, align 2, !alias.scope !4434, !noalias !4431
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter545
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !4410

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.me, %.lr.ph.split.us.i.i.prol ]
  %i.mi = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.mj = add i64 %i.mi, %.val.i.i62
  %i.mk = icmp ugt i64 %i.mj, -4
  br i1 %i.mk, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.prol.loopexit
  %invariant.op556 = add i64 1, %.val.i.i62
  %invariant.op558 = add i64 2, %.val.i.i62
  %invariant.op560 = add i64 3, %.val.i.i62
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %.lr.ph.split.us.i.i.preheader.new ], [ %i.ms, %.lr.ph.split.us.i.i ] ; 5 uses
  %i.ml = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ml
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ml
  %.val8.us.i.i = load i16, ptr %i.mm, align 2, !noalias !4431, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mn, align 2, !alias.scope !4434, !noalias !4431
  %.reass557 = add i64 %.sroa.0.010.us.i.i, %invariant.op556 ; 2 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass557
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass557
  %.val8.us.i.i.1 = load i16, ptr %i.mo, align 2, !noalias !4431, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.mp, align 2, !alias.scope !4434, !noalias !4431
  %.reass559 = add i64 %.sroa.0.010.us.i.i, %invariant.op558 ; 2 uses
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass559
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass559
  %.val8.us.i.i.2 = load i16, ptr %i.mq, align 2, !noalias !4431, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mr, align 2, !alias.scope !4434, !noalias !4431
  %i.ms = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass561 = add i64 %.sroa.0.010.us.i.i, %invariant.op560 ; 2 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass561
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass561
  %.val8.us.i.i.3 = load i16, ptr %i.mt, align 2, !noalias !4431, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mu, align 2, !alias.scope !4434, !noalias !4431
  %exitcond18.not.i.i.3 = icmp eq i64 %i.ms, %i.lo
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.us.i.i, !llvm.loop !4411

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp slt i16 %i.lc, 0
  br i1 %.not1.i.i.i.i.i67, label %iter.check453, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.lo, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check414
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.mv = and i64 %i.lo, 12
  %n.vec478 = and i64 %i.lo, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.mw = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mw ; 2 uses
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mw ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.mx, align 2, !noalias !4431 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.mz, align 2, !noalias !4431 ; 4 uses
  %i.na = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.nb = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.nc = icmp samesign ult <8 x i16> %i.na, splat (i16 31745)
  %i.nd = icmp samesign ult <8 x i16> %i.nb, splat (i16 31745)
  %i.ne = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.nf = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.ng = and <8 x i1> %i.ne, %i.nc
  %i.nh = and <8 x i1> %i.nf, %i.nd
  %i.ni = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.nj = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.nk = select <8 x i1> %i.ng, <8 x i16> %i.ni, <8 x i16> %wide.load483
  %i.nl = select <8 x i1> %i.nh, <8 x i16> %i.nj, <8 x i16> %wide.load484
  %i.nm = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  store <8 x i16> %i.nk, ptr %i.my, align 2, !alias.scope !4434, !noalias !4431
  store <8 x i16> %i.nl, ptr %i.nm, align 2, !alias.scope !4434, !noalias !4431
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.nn = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.nn, label %middle.block486, label %vector.body481, !llvm.loop !4412

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.lo, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.mv, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !20

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.lo, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.no = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.no
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.no
  %wide.load499 = load <4 x i16>, ptr %i.np, align 2, !noalias !4431 ; 4 uses
  %i.nr = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.ns = icmp samesign ult <4 x i16> %i.nr, splat (i16 31745)
  %i.nt = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.nu = and <4 x i1> %i.nt, %i.ns
  %i.nv = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nw = select <4 x i1> %i.nu, <4 x i16> %i.nv, <4 x i16> %wide.load499
  store <4 x i16> %i.nw, ptr %i.nq, align 2, !alias.scope !4434, !noalias !4431
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.nx = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.nx, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !4413

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.lo, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %i.ny = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nz = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.oa = add i64 %.val6.i.i63, %i.nz
  %xtraiter = and i64 %i.ny, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.ob = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.oc = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oc
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oc
  %.val8.i.i.prol = load i16, ptr %i.od, align 2, !noalias !4431, !noundef !5 ; 4 uses
  %i.of = and i16 %.val8.i.i.prol, 32767
  %i.og = icmp samesign ult i16 %i.of, 31745
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %or.cond.i.i.prol = and i1 %.not.i.i.i.i.i68.prol, %i.og
  %spec.select.i.i.prol = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.lc)
  %i.oh = select i1 %or.cond.i.i.prol, i16 %spec.select.i.i.prol, i16 %.val8.i.i.prol
  store i16 %i.oh, ptr %i.oe, align 2, !alias.scope !4434, !noalias !4431
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.ob, %.lr.ph.split.split.i.i.prol ]
  %i.oi = icmp eq i64 %i.oa, %.val.i.i62
  br i1 %i.oi, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check453:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check436 = icmp ult i64 %i.lo, 8
  %or.cond525 = or i1 %min.iters.check436, %diff.check414
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check453
  %min.iters.check438 = icmp ult i64 %i.lo, 16
  br i1 %min.iters.check438, label %vec.epilog.ph457, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.oj = and i64 %i.lo, 8
  %n.vec440 = and i64 %i.lo, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert441 = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat442 = shufflevector <8 x i16> %broadcast.splatinsert441, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph439, %vector.body443
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next449, %vector.body443 ] ; 2 uses
  %i.ok = add i64 %index444, %.val.i.i62          ; 2 uses
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ok ; 2 uses
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ok ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %wide.load445 = load <8 x i16>, ptr %i.ol, align 2, !noalias !4431 ; 5 uses
  %wide.load446 = load <8 x i16>, ptr %i.on, align 2, !noalias !4431 ; 5 uses
  %i.oo = and <8 x i16> %wide.load445, splat (i16 32767)
  %i.op = and <8 x i16> %wide.load446, splat (i16 32767)
  %i.oq = icmp samesign ugt <8 x i16> %i.oo, splat (i16 31744) ; 3 uses
  %i.or = icmp samesign ugt <8 x i16> %i.op, splat (i16 31744) ; 3 uses
  %i.os = xor <8 x i1> %i.oq, splat (i1 true)
  %i.ot = xor <8 x i1> %i.or, splat (i1 true)
  %i.ou = icmp sgt <8 x i16> %wide.load445, splat (i16 -1) ; 2 uses
  %i.ov = icmp sgt <8 x i16> %wide.load446, splat (i16 -1) ; 2 uses
  %i.ow = or <8 x i1> %i.oq, %i.ou
  %i.ox = xor <8 x i1> %i.ow, splat (i1 true)
  %i.oy = or <8 x i1> %i.or, %i.ov
  %i.oz = xor <8 x i1> %i.oy, splat (i1 true)
  %i.pa = icmp uge <8 x i16> %wide.load445, %broadcast.splat
  %i.pb = icmp uge <8 x i16> %wide.load446, %broadcast.splat
  %i.pc = or <8 x i16> %wide.load445, %broadcast.splat442
  %i.pd = or <8 x i16> %wide.load446, %broadcast.splat442
  %i.pe = icmp eq <8 x i16> %i.pc, zeroinitializer
  %i.pf = icmp eq <8 x i16> %i.pd, zeroinitializer
  %i.pg = select <8 x i1> %i.ox, <8 x i1> %i.pa, <8 x i1> zeroinitializer
  %i.ph = select <8 x i1> %i.oz, <8 x i1> %i.pb, <8 x i1> zeroinitializer
  %i.pi = and <8 x i1> %i.ou, %i.pe
  %i.pj = select <8 x i1> %i.os, <8 x i1> %i.pi, <8 x i1> zeroinitializer
  %i.pk = and <8 x i1> %i.ov, %i.pf
  %i.pl = select <8 x i1> %i.ot, <8 x i1> %i.pk, <8 x i1> zeroinitializer
  %i.pm = or <8 x i1> %i.pj, %i.pg
  %i.pn = or <8 x i1> %i.pl, %i.ph
  %i.po = or <8 x i1> %i.pm, %i.oq
  %i.pp = or <8 x i1> %i.pn, %i.or
  %predphi447 = select <8 x i1> %i.po, <8 x i16> %wide.load445, <8 x i16> %broadcast.splat
  %predphi448 = select <8 x i1> %i.pp, <8 x i16> %wide.load446, <8 x i16> %broadcast.splat
  %i.pq = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  store <8 x i16> %predphi447, ptr %i.om, align 2, !alias.scope !4434, !noalias !4431
  store <8 x i16> %predphi448, ptr %i.pq, align 2, !alias.scope !4434, !noalias !4431
  %index.next449 = add nuw i64 %index444, 16      ; 2 uses
  %i.pr = icmp eq i64 %index.next449, %n.vec440
  br i1 %i.pr, label %middle.block450, label %vector.body443, !llvm.loop !4414

middle.block450:                                  ; preds = %vector.body443
  %cmp.n451 = icmp eq i64 %i.lo, %n.vec440
  br i1 %cmp.n451, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block450
  %min.epilog.iters.check456.not.not = icmp eq i64 %i.oj, 0
  br i1 %min.epilog.iters.check456.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph457, !prof !22

vec.epilog.ph457:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check455
  %vec.epilog.resume.val452 = phi i64 [ %n.vec440, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec458 = and i64 %i.lo, -8                   ; 3 uses
  %broadcast.splatinsert459 = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat460 = shufflevector <8 x i16> %broadcast.splatinsert459, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph457
  %index464 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph457 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.ps = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ps
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ps
  %wide.load465 = load <8 x i16>, ptr %i.pt, align 2, !noalias !4431 ; 5 uses
  %i.pv = and <8 x i16> %wide.load465, splat (i16 32767)
  %i.pw = icmp samesign ugt <8 x i16> %i.pv, splat (i16 31744) ; 3 uses
  %i.px = xor <8 x i1> %i.pw, splat (i1 true)
  %i.py = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.pz = or <8 x i1> %i.pw, %i.py
  %i.qa = xor <8 x i1> %i.pz, splat (i1 true)
  %i.qb = icmp uge <8 x i16> %wide.load465, %broadcast.splat460
  %i.qc = or <8 x i16> %wide.load465, %broadcast.splat462
  %i.qd = icmp eq <8 x i16> %i.qc, zeroinitializer
  %i.qe = select <8 x i1> %i.qa, <8 x i1> %i.qb, <8 x i1> zeroinitializer
  %i.qf = and <8 x i1> %i.py, %i.qd
  %i.qg = select <8 x i1> %i.px, <8 x i1> %i.qf, <8 x i1> zeroinitializer
  %i.qh = or <8 x i1> %i.qg, %i.qe
  %i.qi = or <8 x i1> %i.qh, %i.pw
  %predphi466 = select <8 x i1> %i.qi, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat460
  store <8 x i16> %predphi466, ptr %i.pu, align 2, !alias.scope !4434, !noalias !4431
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.qj = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.qj, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !4415

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lo, %n.vec458
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check453, %vec.epilog.iter.check455, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check453 ], [ %n.vec440, %vec.epilog.iter.check455 ], [ %n.vec458, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.qk, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.qk = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.ql = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ql
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ql
  %.val8.us12.i.i = load i16, ptr %i.qm, align 2, !noalias !4431, !noundef !5 ; 7 uses
  %i.qo = and i16 %.val8.us12.i.i, 32767
  %i.qp = icmp samesign ugt i16 %i.qo, 31744
  br i1 %i.qp, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split7.i.i.us.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i: ; preds = %bb.v
  %i.qq = icmp ult i16 %.val8.us12.i.i, %i.lc
  br i1 %i.qq, label %bb.w, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.v
  %i.qr = or i16 %.val8.us12.i.i, %i.lp
  %.not.i.i.us.i.i = icmp eq i16 %i.qr, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, label %bb.w

bb.w:                                             ; preds = %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i: ; preds = %bb.w, %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qs = phi i16 [ %i.lc, %bb.w ], [ %.val8.us12.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ]
  store i16 %i.qs, ptr %i.qn, align 2, !alias.scope !4434, !noalias !4431
  %exitcond16.not.i.i = icmp eq i64 %i.qk, %i.lo
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !4416

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qz, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qt = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qt
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qt
  %.val8.i.i = load i16, ptr %i.qu, align 2, !noalias !4431, !noundef !5 ; 4 uses
  %i.qw = and i16 %.val8.i.i, 32767
  %i.qx = icmp samesign ult i16 %i.qw, 31745
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %or.cond.i.i = and i1 %.not.i.i.i.i.i68, %i.qx
  %spec.select.i.i = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.lc)
  %i.qy = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %.val8.i.i
  store i16 %i.qy, ptr %i.qv, align 2, !alias.scope !4434, !noalias !4431
  %i.qz = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.ra, align 2, !noalias !4431, !noundef !5 ; 4 uses
  %i.rc = and i16 %.val8.i.i.1, 32767
  %i.rd = icmp samesign ult i16 %i.rc, 31745
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %or.cond.i.i.1 = and i1 %.not.i.i.i.i.i68.1, %i.rd
  %spec.select.i.i.1 = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.lc)
  %i.re = select i1 %or.cond.i.i.1, i16 %spec.select.i.i.1, i16 %.val8.i.i.1
  store i16 %i.re, ptr %i.rb, align 2, !alias.scope !4434, !noalias !4431
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qz, %i.lo
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %.lr.ph.split.split.i.i, !llvm.loop !4417

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0Cs1dZk1kIfPhr_19candle_transformers.exit.us13.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block450, %vec.epilog.middle.block468, %middle.block425, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4430
  br label %.loopexit

bb.x:                                             ; preds = %bb.i
  %i.rf = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.rf, label %bb.y, label %.invoke385

bb.y:                                             ; preds = %bb.x
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.rh = load i16, ptr %i.rg, align 2, !noundef !5 ; 11 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.ri = and i16 %i.rh, 32767
  %i.rj = icmp samesign ugt i16 %i.ri, 31744      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.rh, -1            ; 2 uses
  %i.rk = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.rl = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0170)
  %i.rm = sub i64 %i.rl, %i.av
  %i.rn = call i64 @llvm.umin.i64(i64 %i.rm, i64 %i.rk)
  %i.ro = call i64 @llvm.umin.i64(i64 %i.rn, i64 %i.at) ; 2 uses
  %i.rp = add nuw nsw i64 %i.ro, 1                ; 2 uses
  %min.iters.check507 = icmp samesign ult i64 %i.ro, 8
  br i1 %min.iters.check507, label %scalar.ph506.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph
  %i.rq = shl i64 %.sroa.4.0.copyload, 1
  %i.rr = add i64 %i.aw, %i.r
  %i.rs = add i64 %i.rq, %i.a
  %i.rt = sub i64 %i.rs, %i.rr
  %diff.check505 = icmp ugt i64 %i.rt, -16
  br i1 %diff.check505, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %vector.memcheck504
  %i.ru = and i64 %i.rp, 7                        ; 2 uses
  %i.rv = icmp eq i64 %i.ru, 0
  %i.rw = select i1 %i.rv, i64 8, i64 %i.ru
  %n.vec509 = sub nsw i64 %i.rp, %i.rw            ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat511 = shufflevector <8 x i1> %broadcast.splatinsert510, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert512 = insertelement <8 x i1> poison, i1 %i.rj, i64 0
  %broadcast.splat513 = shufflevector <8 x i1> %broadcast.splatinsert512, <8 x i1> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.rx = xor <8 x i1> %broadcast.splat513, splat (i1 true)
end_hunk_3
begin_hunk_4_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vechNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT2u8NvYB1a_B1s_6u8_vecNvYB1a_B1s_13u8_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gg ; 4 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gj = add i64 %i.gi, 1
  store i64 %i.gj, ptr %i.gh, align 8, !alias.scope !4737, !noalias !4738
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gg ; 3 uses
  %i.gk = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gl = load i64, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gm = add i64 %i.gl, %i.gk                    ; 2 uses
  store i64 %i.gm, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.gn = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.go = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gp = add i64 %i.go, %i.gn                    ; 2 uses
  store i64 %i.gp, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %i.gq = load i64, ptr %i.gh, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gg ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.gt = icmp ult i64 %i.gq, %i.gs
  br i1 %i.gt, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gh, align 8, !alias.scope !4737, !noalias !4738
  %i.gu = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gv = mul i64 %i.gu, %i.gs
  %i.gw = load i64, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gx = sub i64 %i.gw, %i.gv                    ; 2 uses
  store i64 %i.gx, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738
  %i.gy = load i64, ptr %i.gr, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.gz = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ha = mul i64 %i.gz, %i.gy
  %i.hb = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hc = sub i64 %i.hb, %i.ha                    ; 2 uses
  store i64 %i.hc, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %.not.i.us.6 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.hd = add nsw i64 %i.ax, -8                   ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.hd ; 4 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hg = add i64 %i.hf, 1
  store i64 %i.hg, ptr %i.he, align 8, !alias.scope !4737, !noalias !4738
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.hd ; 3 uses
  %i.hh = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hi = load i64, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hj = add i64 %i.hi, %i.hh                    ; 2 uses
  store i64 %i.hj, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hk = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hl = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hm = add i64 %i.hl, %i.hk                    ; 2 uses
  store i64 %i.hm, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  %i.hn = load i64, ptr %i.he, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.hd ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.hq = icmp ult i64 %i.hn, %i.hp
  br i1 %i.hq, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.he, align 8, !alias.scope !4737, !noalias !4738
  %i.hr = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hs = mul i64 %i.hr, %i.hp
  %i.ht = load i64, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hu = sub i64 %i.ht, %i.hs                    ; 2 uses
  store i64 %i.hu, ptr %i.af, align 8, !alias.scope !4737, !noalias !4738
  %i.hv = load i64, ptr %i.ho, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hw = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hx = mul i64 %i.hw, %i.hv
  %i.hy = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738, !noundef !5
  %i.hz = sub i64 %i.hy, %i.hx                    ; 2 uses
  store i64 %i.hz, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4737, !noalias !4738
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ia = add i64 %i.ax, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ia, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bh, %.lr.ph.i.split.us ], [ %i.bu, %.loopexit.i.us ], [ %i.ce, %.lr.ph.i.split.us.1 ], [ %i.cr, %.loopexit.i.us.1 ], [ %i.db, %.lr.ph.i.split.us.2 ], [ %i.do, %.loopexit.i.us.2 ], [ %i.dy, %.lr.ph.i.split.us.3 ], [ %i.el, %.loopexit.i.us.3 ], [ %i.ev, %.lr.ph.i.split.us.4 ], [ %i.fi, %.loopexit.i.us.4 ], [ %i.fs, %.lr.ph.i.split.us.5 ], [ %i.gf, %.loopexit.i.us.5 ], [ %i.gp, %.lr.ph.i.split.us.6 ], [ %i.hc, %.loopexit.i.us.6 ], [ %i.hm, %.lr.ph.i.split.us.7 ], [ %i.hz, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.be, %.lr.ph.i.split.us ], [ %i.bp, %.loopexit.i.us ], [ %i.cb, %.lr.ph.i.split.us.1 ], [ %i.cm, %.loopexit.i.us.1 ], [ %i.cy, %.lr.ph.i.split.us.2 ], [ %i.dj, %.loopexit.i.us.2 ], [ %i.dv, %.lr.ph.i.split.us.3 ], [ %i.eg, %.loopexit.i.us.3 ], [ %i.es, %.lr.ph.i.split.us.4 ], [ %i.fd, %.loopexit.i.us.4 ], [ %i.fp, %.lr.ph.i.split.us.5 ], [ %i.ga, %.loopexit.i.us.5 ], [ %i.gm, %.lr.ph.i.split.us.6 ], [ %i.gx, %.loopexit.i.us.6 ], [ %i.hj, %.lr.ph.i.split.us.7 ], [ %i.hu, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ib = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ib, %4
  %or.cond = or i1 %i.ic, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.id = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.id, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.if = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ig = icmp ult i64 %i.if, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.if, %6
  %or.cond56 = or i1 %i.ig, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ih = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ii = phi i64 [ %i.kw, %bb.o ], [ %i.ib, %bb.j ], [ %i.if, %bb.l ], [ %i.il, %bb.m ], [ %i.lb, %bb.p ]
  %i.ij = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.ik = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ih, i64 noundef %i.ii, i64 noundef %i.ij, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ik) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.il = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.im = icmp ult i64 %i.il, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.il, %i.n
  %or.cond57 = or i1 %i.im, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4739
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.x
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4740
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly %i.ie, ptr noundef nonnull readonly %i.io, ptr noundef nonnull readonly %i.in, ptr noundef nonnull readonly %i.ip)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.iq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EINtB13_7IterMuthEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.iq, ptr noundef nonnull %i.ir)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4740
  call void @llvm.experimental.noalias.scope.decl(metadata !4741)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4741, !noalias !4742, !noundef !5 ; 9 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4741, !noalias !4742, !noundef !5 ; 4 uses
  %i.is = sub i64 %.val6.i.i, %.val.i.i           ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check

iter.check:                                       ; preds = %.noexc61
  %i.it = load i64, ptr %i.ap, align 8, !alias.scope !4743, !noalias !4744, !noundef !5 ; 7 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4743, !noalias !4744, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4743, !noalias !4744, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4745, !noalias !4744, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.is, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iu = add i64 %i.it, %.val1.i.i.i.i.i371
  %i.iv = sub i64 %i.iu, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.iv, -32
  %i.iw = add i64 %i.it, %.val.i.i.i.i.i372
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.ix, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i64 %i.is, 32
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iy = and i64 %i.is, 28
  %n.vec = and i64 %i.is, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iz = add i64 %index, %.val.i.i               ; 2 uses
  %i.ja = add i64 %i.iz, %i.it                    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ja ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.iz ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load = load <16 x i8>, ptr %i.jb, align 1, !noalias !4746
  %wide.load375 = load <16 x i8>, ptr %i.je, align 1, !noalias !4746
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load376 = load <16 x i8>, ptr %i.jc, align 1, !noalias !4746
  %wide.load377 = load <16 x i8>, ptr %i.jf, align 1, !noalias !4746
  %i.jg = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load376)
  %i.jh = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load375, <16 x i8> %wide.load377)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <16 x i8> %i.jg, ptr %i.jd, align 1, !noalias !4746
  store <16 x i8> %i.jh, ptr %i.ji, align 1, !noalias !4746
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !4715

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.is, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec378 = and i64 %i.is, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index379 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next382, %vec.epilog.vector.body ] ; 2 uses
  %i.jk = add i64 %index379, %.val.i.i            ; 2 uses
  %i.jl = add i64 %i.jk, %i.it                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.jk
  %wide.load380 = load <4 x i8>, ptr %i.jm, align 1, !noalias !4746
  %wide.load381 = load <4 x i8>, ptr %i.jn, align 1, !noalias !4746
  %i.jp = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load380, <4 x i8> %wide.load381)
  store <4 x i8> %i.jp, ptr %i.jo, align 1, !noalias !4746
  %index.next382 = add nuw i64 %index379, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next382, %n.vec378
  br i1 %i.jq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4716

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n383 = icmp eq i64 %i.is, %n.vec378
  br i1 %cmp.n383, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec378, %vec.epilog.middle.block ] ; 4 uses
  %i.jr = sub i64 %.val6.i.i, %.val.i.i
  %i.js = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jt = add i64 %.val6.i.i, %i.js
  %xtraiter448 = and i64 %i.jr, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ju = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jv = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jw = add i64 %i.jv, %i.it                    ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.jw
  %i.jz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.jv
  %i.ka = load i8, ptr %i.jx, align 1, !noalias !4746, !noundef !5
  %i.kb = load i8, ptr %i.jy, align 1, !noalias !4746, !noundef !5
  %..i.i.i.i.i.prol = call i8 @llvm.umax.i8(i8 %i.ka, i8 %i.kb)
  store i8 %..i.i.i.i.i.prol, ptr %i.jz, align 1, !noalias !4746
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ju, %vec.epilog.scalar.ph.prol ]
  %i.kc = icmp eq i64 %i.jt, %.val.i.i
  br i1 %i.kc, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op458 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.kk, %vec.epilog.scalar.ph ] ; 3 uses
  %i.kd = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.ke = add i64 %i.kd, %i.it                    ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.kd
  %i.ki = load i8, ptr %i.kf, align 1, !noalias !4746, !noundef !5
  %i.kj = load i8, ptr %i.kg, align 1, !noalias !4746, !noundef !5
  %..i.i.i.i.i = call i8 @llvm.umax.i8(i8 %i.ki, i8 %i.kj)
  store i8 %..i.i.i.i.i, ptr %i.kh, align 1, !noalias !4746
  %i.kk = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass459 = add i64 %.sroa.0.012.i.i, %invariant.op458 ; 2 uses
  %i.kl = add i64 %.reass459, %i.it               ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.kl
  %i.ko = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass459
  %i.kp = load i8, ptr %i.km, align 1, !noalias !4746, !noundef !5
  %i.kq = load i8, ptr %i.kn, align 1, !noalias !4746, !noundef !5
  %..i.i.i.i.i.1 = call i8 @llvm.umax.i8(i8 %i.kp, i8 %i.kq)
  store i8 %..i.i.i.i.i.1, ptr %i.ko, align 1, !noalias !4746
  %exitcond.not.i.i.1 = icmp eq i64 %i.kk, %i.is
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !4717

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4739
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kr = add i64 %.sroa.0.0157, %i.x
  %i.ks = load i64, ptr %i.ac, align 8, !alias.scope !4737, !noalias !4738, !noundef !5 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kt, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.4.0.copyload
  %i.kv = load i8, ptr %i.ku, align 1, !noundef !5 ; 5 uses
  %i.kw = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kx = icmp ult i64 %i.kw, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kw, %4
  %or.cond58 = or i1 %i.kx, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.ky = phi i64 [ %i.nn, %bb.v ], [ %i.nd, %bb.t ], [ %i.nk, %.lr.ph156 ], [ %i.np, %bb.w ], [ %i.nc, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kz = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.la = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ky, i64 noundef %i.kz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.la) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.lb = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.lc = icmp ult i64 %i.lb, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.lb, %i.n
  %or.cond59 = or i1 %i.lc, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4747
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.x
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly %i.ld, ptr noundef nonnull readonly %i.lf, ptr noundef nonnull %i.le, ptr noundef nonnull %i.lg)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4748, !noalias !4749, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4748, !noalias !4749, !noundef !5 ; 4 uses
  %i.lh = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4750, !noalias !4749, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4750, !noalias !4749, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.lh, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.li = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.li, -32
  %or.cond429 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond429, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.lh, 32
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.lj = and i64 %i.lh, 28
  %n.vec392 = and i64 %i.lh, -32                  ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.kv, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.lk = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lk ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lk ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %wide.load395 = load <16 x i8>, ptr %i.ll, align 1, !noalias !4748
  %wide.load396 = load <16 x i8>, ptr %i.ln, align 1, !noalias !4748
  %i.lo = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load395, <16 x i8> %broadcast.splat)
  %i.lp = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load396, <16 x i8> %broadcast.splat)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store <16 x i8> %i.lo, ptr %i.lm, align 1, !alias.scope !4751, !noalias !4748
  store <16 x i8> %i.lp, ptr %i.lq, align 1, !alias.scope !4751, !noalias !4748
  %index.next397 = add nuw i64 %index394, 32      ; 2 uses
  %i.lr = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.lr, label %middle.block398, label %vector.body393, !llvm.loop !4732

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.lh, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.lj, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !23

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.lh, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i8> poison, i8 %i.kv, i64 0
  %broadcast.splat408 = shufflevector <4 x i8> %broadcast.splatinsert407, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.ls = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ls
  %wide.load411 = load <4 x i8>, ptr %i.lt, align 1, !noalias !4748
  %i.lv = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load411, <4 x i8> %broadcast.splat408)
  store <4 x i8> %i.lv, ptr %i.lu, align 1, !alias.scope !4751, !noalias !4748
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.lw, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !4733

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.lh, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %i.lx = sub i64 %.val6.i.i63, %.val.i.i62
  %i.ly = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lz = add i64 %.val6.i.i63, %i.ly
  %xtraiter = and i64 %i.lx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.ma = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.mb = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.mb
  %.val8.i.i.prol = load i8, ptr %i.mc, align 1, !noalias !4748, !noundef !5
  %..i.i.i.i.i67.prol = call i8 @llvm.umax.i8(i8 %.val8.i.i.prol, i8 %i.kv)
  store i8 %..i.i.i.i.i67.prol, ptr %i.md, align 1, !alias.scope !4751, !noalias !4748
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.ma, %vec.epilog.scalar.ph402.prol ]
  %i.me = icmp eq i64 %i.lz, %.val.i.i62
  br i1 %i.me, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.mi, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.mf = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.mf
  %.val8.i.i = load i8, ptr %i.mg, align 1, !noalias !4748, !noundef !5
  %..i.i.i.i.i67 = call i8 @llvm.umax.i8(i8 %.val8.i.i, i8 %i.kv)
  store i8 %..i.i.i.i.i67, ptr %i.mh, align 1, !alias.scope !4751, !noalias !4748
  %i.mi = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %.reass
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i8, ptr %i.mj, align 1, !noalias !4748, !noundef !5
  %..i.i.i.i.i67.1 = call i8 @llvm.umax.i8(i8 %.val8.i.i.1, i8 %i.kv)
  store i8 %..i.i.i.i.i67.1, ptr %i.mk, align 1, !alias.scope !4751, !noalias !4748
  %exitcond.not.i.i68.1 = icmp eq i64 %i.mi, %i.lh
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !4734

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4747
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.ml = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.ml, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload
  %i.mn = load i8, ptr %i.mm, align 1, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mo = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mp = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mq = sub i64 %i.mp, %i.au
  %i.mr = call i64 @llvm.umin.i64(i64 %i.mq, i64 %i.mo)
  %i.ms = call i64 @llvm.umin.i64(i64 %i.mr, i64 %i.as) ; 2 uses
  %i.mt = add nuw i64 %i.ms, 1                    ; 2 uses
  %min.iters.check418 = icmp samesign ult i64 %i.ms, 16
  br i1 %min.iters.check418, label %.lr.ph.preheader432, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph.preheader
  %i.mu = add i64 %.sroa.4.0.copyload, %i.a
  %i.mv = sub i64 %i.mu, %i.av
  %diff.check417 = icmp ugt i64 %i.mv, -16
  br i1 %diff.check417, label %.lr.ph.preheader432, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck416
  %i.mw = and i64 %i.mt, 15                       ; 2 uses
  %i.mx = icmp eq i64 %i.mw, 0
  %i.my = select i1 %i.mx, i64 16, i64 %i.mw
  %n.vec420 = sub i64 %i.mt, %i.my                ; 2 uses
  %broadcast.splatinsert421 = insertelement <16 x i8> poison, i8 %i.mn, i64 0
  %broadcast.splat422 = shufflevector <16 x i8> %broadcast.splatinsert421, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep456 = getelementptr i8, ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph419
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next426, %vector.body423 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index424
  %wide.load425 = load <16 x i8>, ptr %gep, align 1
  %i.mz = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %broadcast.splat422, <16 x i8> %wide.load425)
  %gep457 = getelementptr i8, ptr %invariant.gep456, i64 %index424
  store <16 x i8> %i.mz, ptr %gep457, align 1
  %index.next426 = add nuw i64 %index424, 16      ; 2 uses
  %i.na = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.na, label %.lr.ph.preheader432, label %vector.body423, !llvm.loop !4735

.lr.ph.preheader432:                              ; preds = %vector.body423, %vector.memcheck416, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck416 ], [ 0, %.lr.ph.preheader ], [ %n.vec420, %vector.body423 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader432, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.nb, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader432 ] ; 4 uses
  %i.nb = add nuw i64 %.sroa.020.0154, 1          ; 2 uses
  %i.nc = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mo
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.nd = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.ne = icmp ult i64 %i.nd, %i.n
  br i1 %i.ne, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.nf = getelementptr inbounds nuw i8, ptr %5, i64 %i.nc
  %i.ng = load i8, ptr %i.nf, align 1, !noundef !5
  %..i.i = call noundef i8 @llvm.umax.i8(i8 %i.mn, i8 %i.ng)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.nd
  store i8 %..i.i, ptr %i.nh, align 1
  %exitcond242.not = icmp eq i64 %i.nb, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4736

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.ni, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.ni = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nj = mul i64 %.sroa.022.0155, %i.z
  %i.nk = add i64 %i.nj, %.sroa.071.0.copyload    ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %4
  br i1 %i.nl, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nm = mul i64 %.sroa.022.0155, %i.ab
  %i.nn = add i64 %i.nm, %.sroa.4.0.copyload      ; 3 uses
  %i.no = icmp ult i64 %i.nn, %6
  br i1 %i.no, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.np = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nq = icmp ult i64 %i.np, %i.n
  br i1 %i.nq, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 %i.nk
  %i.ns = load i8, ptr %i.nr, align 1, !noundef !5
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 %i.nn
  %i.nu = load i8, ptr %i.nt, align 1, !noundef !5
  %..i.i70 = call noundef i8 @llvm.umax.i8(i8 %i.ns, i8 %i.nu)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.np
  store i8 %..i.i70, ptr %i.nv, align 1
  %exitcond243.not = icmp eq i64 %i.ni, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
end_hunk_4
begin_hunk_5_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vechNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT2u8NvYB1a_B1s_6u8_vecNvYB1a_B1s_13u8_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.gg ; 4 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gj = add i64 %i.gi, 1
  store i64 %i.gj, ptr %i.gh, align 8, !alias.scope !4802, !noalias !4803
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gg ; 3 uses
  %i.gk = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gl = load i64, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gm = add i64 %i.gl, %i.gk                    ; 2 uses
  store i64 %i.gm, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.gn = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.go = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gp = add i64 %i.go, %i.gn                    ; 2 uses
  store i64 %i.gp, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %i.gq = load i64, ptr %i.gh, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gg ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.gt = icmp ult i64 %i.gq, %i.gs
  br i1 %i.gt, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gh, align 8, !alias.scope !4802, !noalias !4803
  %i.gu = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gv = mul i64 %i.gu, %i.gs
  %i.gw = load i64, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gx = sub i64 %i.gw, %i.gv                    ; 2 uses
  store i64 %i.gx, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803
  %i.gy = load i64, ptr %i.gr, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.gz = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ha = mul i64 %i.gz, %i.gy
  %i.hb = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hc = sub i64 %i.hb, %i.ha                    ; 2 uses
  store i64 %i.hc, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %.not.i.us.6 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.hd = add nsw i64 %i.ax, -8                   ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.hd ; 4 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hg = add i64 %i.hf, 1
  store i64 %i.hg, ptr %i.he, align 8, !alias.scope !4802, !noalias !4803
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.hd ; 3 uses
  %i.hh = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hi = load i64, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hj = add i64 %i.hi, %i.hh                    ; 2 uses
  store i64 %i.hj, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hk = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hl = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hm = add i64 %i.hl, %i.hk                    ; 2 uses
  store i64 %i.hm, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  %i.hn = load i64, ptr %i.he, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.hd ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.hq = icmp ult i64 %i.hn, %i.hp
  br i1 %i.hq, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.he, align 8, !alias.scope !4802, !noalias !4803
  %i.hr = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hs = mul i64 %i.hr, %i.hp
  %i.ht = load i64, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hu = sub i64 %i.ht, %i.hs                    ; 2 uses
  store i64 %i.hu, ptr %i.af, align 8, !alias.scope !4802, !noalias !4803
  %i.hv = load i64, ptr %i.ho, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hw = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hx = mul i64 %i.hw, %i.hv
  %i.hy = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803, !noundef !5
  %i.hz = sub i64 %i.hy, %i.hx                    ; 2 uses
  store i64 %i.hz, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4802, !noalias !4803
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ia = add i64 %i.ax, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ia, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bh, %.lr.ph.i.split.us ], [ %i.bu, %.loopexit.i.us ], [ %i.ce, %.lr.ph.i.split.us.1 ], [ %i.cr, %.loopexit.i.us.1 ], [ %i.db, %.lr.ph.i.split.us.2 ], [ %i.do, %.loopexit.i.us.2 ], [ %i.dy, %.lr.ph.i.split.us.3 ], [ %i.el, %.loopexit.i.us.3 ], [ %i.ev, %.lr.ph.i.split.us.4 ], [ %i.fi, %.loopexit.i.us.4 ], [ %i.fs, %.lr.ph.i.split.us.5 ], [ %i.gf, %.loopexit.i.us.5 ], [ %i.gp, %.lr.ph.i.split.us.6 ], [ %i.hc, %.loopexit.i.us.6 ], [ %i.hm, %.lr.ph.i.split.us.7 ], [ %i.hz, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.be, %.lr.ph.i.split.us ], [ %i.bp, %.loopexit.i.us ], [ %i.cb, %.lr.ph.i.split.us.1 ], [ %i.cm, %.loopexit.i.us.1 ], [ %i.cy, %.lr.ph.i.split.us.2 ], [ %i.dj, %.loopexit.i.us.2 ], [ %i.dv, %.lr.ph.i.split.us.3 ], [ %i.eg, %.loopexit.i.us.3 ], [ %i.es, %.lr.ph.i.split.us.4 ], [ %i.fd, %.loopexit.i.us.4 ], [ %i.fp, %.lr.ph.i.split.us.5 ], [ %i.ga, %.loopexit.i.us.5 ], [ %i.gm, %.lr.ph.i.split.us.6 ], [ %i.gx, %.loopexit.i.us.6 ], [ %i.hj, %.lr.ph.i.split.us.7 ], [ %i.hu, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ib = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ib, %4
  %or.cond = or i1 %i.ic, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.id = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.id, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.if = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ig = icmp ult i64 %i.if, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.if, %6
  %or.cond56 = or i1 %i.ig, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ih = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ii = phi i64 [ %i.kw, %bb.o ], [ %i.ib, %bb.j ], [ %i.if, %bb.l ], [ %i.il, %bb.m ], [ %i.lb, %bb.p ]
  %i.ij = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.ik = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ih, i64 noundef %i.ii, i64 noundef %i.ij, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ik) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.il = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.im = icmp ult i64 %i.il, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.il, %i.n
  %or.cond57 = or i1 %i.im, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4804
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.x
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4805
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly %i.ie, ptr noundef nonnull readonly %i.io, ptr noundef nonnull readonly %i.in, ptr noundef nonnull readonly %i.ip)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.iq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EINtB13_7IterMuthEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.iq, ptr noundef nonnull %i.ir)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4805
  call void @llvm.experimental.noalias.scope.decl(metadata !4806)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !4806, !noalias !4807, !noundef !5 ; 9 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4806, !noalias !4807, !noundef !5 ; 4 uses
  %i.is = sub i64 %.val6.i.i, %.val.i.i           ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check

iter.check:                                       ; preds = %.noexc61
  %i.it = load i64, ptr %i.ap, align 8, !alias.scope !4808, !noalias !4809, !noundef !5 ; 7 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4808, !noalias !4809, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !4808, !noalias !4809, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !4810, !noalias !4809, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.is, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iu = add i64 %i.it, %.val1.i.i.i.i.i371
  %i.iv = sub i64 %i.iu, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.iv, -32
  %i.iw = add i64 %i.it, %.val.i.i.i.i.i372
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.ix, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i64 %i.is, 32
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iy = and i64 %i.is, 28
  %n.vec = and i64 %i.is, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iz = add i64 %index, %.val.i.i               ; 2 uses
  %i.ja = add i64 %i.iz, %i.it                    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ja ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.iz ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load = load <16 x i8>, ptr %i.jb, align 1, !noalias !4811
  %wide.load375 = load <16 x i8>, ptr %i.je, align 1, !noalias !4811
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load376 = load <16 x i8>, ptr %i.jc, align 1, !noalias !4811
  %wide.load377 = load <16 x i8>, ptr %i.jf, align 1, !noalias !4811
  %i.jg = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load376)
  %i.jh = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load375, <16 x i8> %wide.load377)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <16 x i8> %i.jg, ptr %i.jd, align 1, !noalias !4811
  store <16 x i8> %i.jh, ptr %i.ji, align 1, !noalias !4811
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !4780

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.is, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec378 = and i64 %i.is, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index379 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next382, %vec.epilog.vector.body ] ; 2 uses
  %i.jk = add i64 %index379, %.val.i.i            ; 2 uses
  %i.jl = add i64 %i.jk, %i.it                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.jl
  %i.jo = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.jk
  %wide.load380 = load <4 x i8>, ptr %i.jm, align 1, !noalias !4811
  %wide.load381 = load <4 x i8>, ptr %i.jn, align 1, !noalias !4811
  %i.jp = call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load380, <4 x i8> %wide.load381)
  store <4 x i8> %i.jp, ptr %i.jo, align 1, !noalias !4811
  %index.next382 = add nuw i64 %index379, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next382, %n.vec378
  br i1 %i.jq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4781

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n383 = icmp eq i64 %i.is, %n.vec378
  br i1 %cmp.n383, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec378, %vec.epilog.middle.block ] ; 4 uses
  %i.jr = sub i64 %.val6.i.i, %.val.i.i
  %i.js = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jt = add i64 %.val6.i.i, %i.js
  %xtraiter448 = and i64 %i.jr, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ju = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jv = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jw = add i64 %i.jv, %i.it                    ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.jw
  %i.jz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.jv
  %i.ka = load i8, ptr %i.jx, align 1, !noalias !4811, !noundef !5
  %i.kb = load i8, ptr %i.jy, align 1, !noalias !4811, !noundef !5
  %..i.i.i.i.i.prol = call i8 @llvm.umin.i8(i8 %i.ka, i8 %i.kb)
  store i8 %..i.i.i.i.i.prol, ptr %i.jz, align 1, !noalias !4811
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ju, %vec.epilog.scalar.ph.prol ]
  %i.kc = icmp eq i64 %i.jt, %.val.i.i
  br i1 %i.kc, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op458 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.kk, %vec.epilog.scalar.ph ] ; 3 uses
  %i.kd = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.ke = add i64 %i.kd, %i.it                    ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ke
  %i.kh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.kd
  %i.ki = load i8, ptr %i.kf, align 1, !noalias !4811, !noundef !5
  %i.kj = load i8, ptr %i.kg, align 1, !noalias !4811, !noundef !5
  %..i.i.i.i.i = call i8 @llvm.umin.i8(i8 %i.ki, i8 %i.kj)
  store i8 %..i.i.i.i.i, ptr %i.kh, align 1, !noalias !4811
  %i.kk = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass459 = add i64 %.sroa.0.012.i.i, %invariant.op458 ; 2 uses
  %i.kl = add i64 %.reass459, %i.it               ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.kl
  %i.ko = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass459
  %i.kp = load i8, ptr %i.km, align 1, !noalias !4811, !noundef !5
  %i.kq = load i8, ptr %i.kn, align 1, !noalias !4811, !noundef !5
  %..i.i.i.i.i.1 = call i8 @llvm.umin.i8(i8 %i.kp, i8 %i.kq)
  store i8 %..i.i.i.i.i.1, ptr %i.ko, align 1, !noalias !4811
  %exitcond.not.i.i.1 = icmp eq i64 %i.kk, %i.is
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !4782

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4804
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT6u8_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRShB1R_QB1S_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kr = add i64 %.sroa.0.0157, %i.x
  %i.ks = load i64, ptr %i.ac, align 8, !alias.scope !4802, !noalias !4803, !noundef !5 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kt, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.4.0.copyload
  %i.kv = load i8, ptr %i.ku, align 1, !noundef !5 ; 5 uses
  %i.kw = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kx = icmp ult i64 %i.kw, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.kw, %4
  %or.cond58 = or i1 %i.kx, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.ky = phi i64 [ %i.nn, %bb.v ], [ %i.nd, %bb.t ], [ %i.nk, %.lr.ph156 ], [ %i.np, %bb.w ], [ %i.nc, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.kz = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.la = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ky, i64 noundef %i.kz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.la) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.lb = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.lc = icmp ult i64 %i.lb, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.lb, %i.n
  %or.cond59 = or i1 %i.lc, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4812
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.x
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly %i.ld, ptr noundef nonnull readonly %i.lf, ptr noundef nonnull %i.le, ptr noundef nonnull %i.lg)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !4813)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !4813, !noalias !4814, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !4813, !noalias !4814, !noundef !5 ; 4 uses
  %i.lh = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !4815, !noalias !4814, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4815, !noalias !4814, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.lh, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.li = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.li, -32
  %or.cond429 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond429, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.lh, 32
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.lj = and i64 %i.lh, 28
  %n.vec392 = and i64 %i.lh, -32                  ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.kv, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.lk = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.lk ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.lk ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %wide.load395 = load <16 x i8>, ptr %i.ll, align 1, !noalias !4813
  %wide.load396 = load <16 x i8>, ptr %i.ln, align 1, !noalias !4813
  %i.lo = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load395, <16 x i8> %broadcast.splat)
  %i.lp = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load396, <16 x i8> %broadcast.splat)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store <16 x i8> %i.lo, ptr %i.lm, align 1, !alias.scope !4816, !noalias !4813
  store <16 x i8> %i.lp, ptr %i.lq, align 1, !alias.scope !4816, !noalias !4813
  %index.next397 = add nuw i64 %index394, 32      ; 2 uses
  %i.lr = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.lr, label %middle.block398, label %vector.body393, !llvm.loop !4797

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.lh, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.lj, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !23

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.lh, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i8> poison, i8 %i.kv, i64 0
  %broadcast.splat408 = shufflevector <4 x i8> %broadcast.splatinsert407, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.ls = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ls
  %wide.load411 = load <4 x i8>, ptr %i.lt, align 1, !noalias !4813
  %i.lv = call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load411, <4 x i8> %broadcast.splat408)
  store <4 x i8> %i.lv, ptr %i.lu, align 1, !alias.scope !4816, !noalias !4813
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.lw, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !4798

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.lh, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %i.lx = sub i64 %.val6.i.i63, %.val.i.i62
  %i.ly = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.lz = add i64 %.val6.i.i63, %i.ly
  %xtraiter = and i64 %i.lx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.ma = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.mb = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.mb
  %.val8.i.i.prol = load i8, ptr %i.mc, align 1, !noalias !4813, !noundef !5
  %..i.i.i.i.i67.prol = call i8 @llvm.umin.i8(i8 %.val8.i.i.prol, i8 %i.kv)
  store i8 %..i.i.i.i.i67.prol, ptr %i.md, align 1, !alias.scope !4816, !noalias !4813
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.ma, %vec.epilog.scalar.ph402.prol ]
  %i.me = icmp eq i64 %i.lz, %.val.i.i62
  br i1 %i.me, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.mi, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.mf = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.mf
  %.val8.i.i = load i8, ptr %i.mg, align 1, !noalias !4813, !noundef !5
  %..i.i.i.i.i67 = call i8 @llvm.umin.i8(i8 %.val8.i.i, i8 %i.kv)
  store i8 %..i.i.i.i.i67, ptr %i.mh, align 1, !alias.scope !4816, !noalias !4813
  %i.mi = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 %.reass
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i8, ptr %i.mj, align 1, !noalias !4813, !noundef !5
  %..i.i.i.i.i67.1 = call i8 @llvm.umin.i8(i8 %.val8.i.i.1, i8 %i.kv)
  store i8 %..i.i.i.i.i67.1, ptr %i.mk, align 1, !alias.scope !4816, !noalias !4813
  %exitcond.not.i.i68.1 = icmp eq i64 %i.mi, %i.lh
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !4799

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT13u8_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutThRShQB21_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4812
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.ml = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.ml, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.071.0.copyload
  %i.mn = load i8, ptr %i.mm, align 1, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mo = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mp = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.mq = sub i64 %i.mp, %i.au
  %i.mr = call i64 @llvm.umin.i64(i64 %i.mq, i64 %i.mo)
  %i.ms = call i64 @llvm.umin.i64(i64 %i.mr, i64 %i.as) ; 2 uses
  %i.mt = add nuw i64 %i.ms, 1                    ; 2 uses
  %min.iters.check418 = icmp samesign ult i64 %i.ms, 16
  br i1 %min.iters.check418, label %.lr.ph.preheader432, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph.preheader
  %i.mu = add i64 %.sroa.4.0.copyload, %i.a
  %i.mv = sub i64 %i.mu, %i.av
  %diff.check417 = icmp ugt i64 %i.mv, -16
  br i1 %diff.check417, label %.lr.ph.preheader432, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck416
  %i.mw = and i64 %i.mt, 15                       ; 2 uses
  %i.mx = icmp eq i64 %i.mw, 0
  %i.my = select i1 %i.mx, i64 16, i64 %i.mw
  %n.vec420 = sub i64 %i.mt, %i.my                ; 2 uses
  %broadcast.splatinsert421 = insertelement <16 x i8> poison, i8 %i.mn, i64 0
  %broadcast.splat422 = shufflevector <16 x i8> %broadcast.splatinsert421, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep456 = getelementptr i8, ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph419
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next426, %vector.body423 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index424
  %wide.load425 = load <16 x i8>, ptr %gep, align 1
  %i.mz = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %broadcast.splat422, <16 x i8> %wide.load425)
  %gep457 = getelementptr i8, ptr %invariant.gep456, i64 %index424
  store <16 x i8> %i.mz, ptr %gep457, align 1
  %index.next426 = add nuw i64 %index424, 16      ; 2 uses
  %i.na = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.na, label %.lr.ph.preheader432, label %vector.body423, !llvm.loop !4800

.lr.ph.preheader432:                              ; preds = %vector.body423, %vector.memcheck416, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck416 ], [ 0, %.lr.ph.preheader ], [ %n.vec420, %vector.body423 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader432, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.nb, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader432 ] ; 4 uses
  %i.nb = add nuw i64 %.sroa.020.0154, 1          ; 2 uses
  %i.nc = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mo
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.nd = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.ne = icmp ult i64 %i.nd, %i.n
  br i1 %i.ne, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.nf = getelementptr inbounds nuw i8, ptr %5, i64 %i.nc
  %i.ng = load i8, ptr %i.nf, align 1, !noundef !5
  %..i.i = call noundef i8 @llvm.umin.i8(i8 %i.mn, i8 %i.ng)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.nd
  store i8 %..i.i, ptr %i.nh, align 1
  %exitcond242.not = icmp eq i64 %i.nb, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !4801

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.ni, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.ni = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nj = mul i64 %.sroa.022.0155, %i.z
  %i.nk = add i64 %i.nj, %.sroa.071.0.copyload    ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %4
  br i1 %i.nl, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nm = mul i64 %.sroa.022.0155, %i.ab
  %i.nn = add i64 %i.nm, %.sroa.4.0.copyload      ; 3 uses
  %i.no = icmp ult i64 %i.nn, %6
  br i1 %i.no, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.np = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nq = icmp ult i64 %i.np, %i.n
  br i1 %i.nq, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 %i.nk
  %i.ns = load i8, ptr %i.nr, align 1, !noundef !5
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 %i.nn
  %i.nu = load i8, ptr %i.nt, align 1, !noundef !5
  %..i.i70 = call noundef i8 @llvm.umin.i8(i8 %i.ns, i8 %i.nu)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.np
  store i8 %..i.i70, ptr %i.nv, align 1
  %exitcond243.not = icmp eq i64 %i.ni, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156

bb.y:                                             ; preds = %bb.d
end_hunk_5
begin_hunk_6_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecsNvYNtNtB6_2op7MaximumNtB1c_9BinaryOpT3i16NvYB1a_B1s_7i16_vecNvYB1a_B1s_14i16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !5119, !noalias !5120
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !5119, !noalias !5120
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !5119, !noalias !5120
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !5119, !noalias !5120
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !5119, !noalias !5120
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5119, !noalias !5120
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ij = phi i64 [ %i.ky, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.ld, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5121
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5122
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItersEB10_EINtB13_7IterMutsEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5122
  call void @llvm.experimental.noalias.scope.decl(metadata !5123)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !5123, !noalias !5124, !noundef !5 ; 9 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !5123, !noalias !5124, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check

iter.check:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !5125, !noalias !5126, !noundef !5 ; 6 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !5125, !noalias !5126, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !5125, !noalias !5126, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !5127, !noalias !5126, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.it, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i371
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i372
  %i.iz = sub i64 %i.iy, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i64 %i.it, 16
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ja = and i64 %i.it, 12
  %n.vec = and i64 %i.it, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jb = add i64 %index, %.val.i.i               ; 2 uses
  %i.jc = add i64 %i.jb, %i.iu                    ; 2 uses
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jc ; 2 uses
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jb ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load = load <8 x i16>, ptr %i.jd, align 2, !noalias !5128
  %wide.load375 = load <8 x i16>, ptr %i.jg, align 2, !noalias !5128
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load376 = load <8 x i16>, ptr %i.je, align 2, !noalias !5128
  %wide.load377 = load <8 x i16>, ptr %i.jh, align 2, !noalias !5128
  %i.ji = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load376)
  %i.jj = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load375, <8 x i16> %wide.load377)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <8 x i16> %i.ji, ptr %i.jf, align 2, !noalias !5128
  store <8 x i16> %i.jj, ptr %i.jk, align 2, !noalias !5128
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !5097

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ja, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec378 = and i64 %i.it, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index379 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next382, %vec.epilog.vector.body ] ; 2 uses
  %i.jm = add i64 %index379, %.val.i.i            ; 2 uses
  %i.jn = add i64 %i.jm, %i.iu                    ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jn
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jn
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jm
  %wide.load380 = load <4 x i16>, ptr %i.jo, align 2, !noalias !5128
  %wide.load381 = load <4 x i16>, ptr %i.jp, align 2, !noalias !5128
  %i.jr = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load380, <4 x i16> %wide.load381)
  store <4 x i16> %i.jr, ptr %i.jq, align 2, !noalias !5128
  %index.next382 = add nuw i64 %index379, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next382, %n.vec378
  br i1 %i.js, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5098

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n383 = icmp eq i64 %i.it, %n.vec378
  br i1 %cmp.n383, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec378, %vec.epilog.middle.block ] ; 4 uses
  %i.jt = sub i64 %.val6.i.i, %.val.i.i
  %i.ju = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jv = add i64 %.val6.i.i, %i.ju
  %xtraiter448 = and i64 %i.jt, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.jw = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jx = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jy = add i64 %i.jx, %i.iu                    ; 2 uses
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jy
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jy
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jx
  %i.kc = load i16, ptr %i.jz, align 2, !noalias !5128, !noundef !5
  %i.kd = load i16, ptr %i.ka, align 2, !noalias !5128, !noundef !5
  %..i.i.i.i.i.prol = call i16 @llvm.smax.i16(i16 %i.kc, i16 %i.kd)
  store i16 %..i.i.i.i.i.prol, ptr %i.kb, align 2, !noalias !5128
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jw, %vec.epilog.scalar.ph.prol ]
  %i.ke = icmp eq i64 %i.jv, %.val.i.i
  br i1 %i.ke, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op458 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.km, %vec.epilog.scalar.ph ] ; 3 uses
  %i.kf = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kg = add i64 %i.kf, %i.iu                    ; 2 uses
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kg
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kf
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !5128, !noundef !5
  %i.kl = load i16, ptr %i.ki, align 2, !noalias !5128, !noundef !5
  %..i.i.i.i.i = call i16 @llvm.smax.i16(i16 %i.kk, i16 %i.kl)
  store i16 %..i.i.i.i.i, ptr %i.kj, align 2, !noalias !5128
  %i.km = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass459 = add i64 %.sroa.0.012.i.i, %invariant.op458 ; 2 uses
  %i.kn = add i64 %.reass459, %i.iu               ; 2 uses
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kn
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %.reass459
  %i.kr = load i16, ptr %i.ko, align 2, !noalias !5128, !noundef !5
  %i.ks = load i16, ptr %i.kp, align 2, !noalias !5128, !noundef !5
  %..i.i.i.i.i.1 = call i16 @llvm.smax.i16(i16 %i.kr, i16 %i.ks)
  store i16 %..i.i.i.i.i.1, ptr %i.kq, align 2, !noalias !5128
  %exitcond.not.i.i.1 = icmp eq i64 %i.km, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !5099

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5121
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kt = add i64 %.sroa.0.0157, %i.x
  %i.ku = load i64, ptr %i.ac, align 8, !alias.scope !5119, !noalias !5120, !noundef !5 ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kv, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kx = load i16, ptr %i.kw, align 2, !noundef !5 ; 5 uses
  %i.ky = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kz = icmp ult i64 %i.ky, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.ky, %4
  %or.cond58 = or i1 %i.kz, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.la = phi i64 [ %i.nr, %bb.v ], [ %i.nh, %bb.t ], [ %i.no, %.lr.ph156 ], [ %i.nt, %bb.w ], [ %i.ng, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lb = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.lc = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.la, i64 noundef %i.lb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lc) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ld = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.le = icmp ult i64 %i.ld, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.ld, %i.n
  %or.cond59 = or i1 %i.le, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5129
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.x
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEINtBZ_7IterMutsEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lf, ptr noundef nonnull readonly %i.lh, ptr noundef nonnull align 2 %i.lg, ptr noundef nonnull %i.li)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5130)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !5130, !noalias !5131, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !5130, !noalias !5131, !noundef !5 ; 4 uses
  %i.lj = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !5132, !noalias !5131, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5132, !noalias !5131, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.lj, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lk = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.lk, -32
  %or.cond429 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond429, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.ll = and i64 %i.lj, 12
  %n.vec392 = and i64 %i.lj, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.lm = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lm ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %wide.load395 = load <8 x i16>, ptr %i.ln, align 2, !noalias !5130
  %wide.load396 = load <8 x i16>, ptr %i.lp, align 2, !noalias !5130
  %i.lq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load395, <8 x i16> %broadcast.splat)
  %i.lr = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load396, <8 x i16> %broadcast.splat)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store <8 x i16> %i.lq, ptr %i.lo, align 2, !alias.scope !5133, !noalias !5130
  store <8 x i16> %i.lr, ptr %i.ls, align 2, !alias.scope !5133, !noalias !5130
  %index.next397 = add nuw i64 %index394, 16      ; 2 uses
  %i.lt = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.lt, label %middle.block398, label %vector.body393, !llvm.loop !5114

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.lj, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.ll, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !20

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.lj, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat408 = shufflevector <4 x i16> %broadcast.splatinsert407, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.lu = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lu
  %wide.load411 = load <4 x i16>, ptr %i.lv, align 2, !noalias !5130
  %i.lx = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load411, <4 x i16> %broadcast.splat408)
  store <4 x i16> %i.lx, ptr %i.lw, align 2, !alias.scope !5133, !noalias !5130
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.ly, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !5115

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.lj, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %i.lz = sub i64 %.val6.i.i63, %.val.i.i62
  %i.ma = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.mb = add i64 %.val6.i.i63, %i.ma
  %xtraiter = and i64 %i.lz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.mc = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.md = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.md
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.md
  %.val8.i.i.prol = load i16, ptr %i.me, align 2, !noalias !5130, !noundef !5
  %..i.i.i.i.i67.prol = call i16 @llvm.smax.i16(i16 %.val8.i.i.prol, i16 %i.kx)
  store i16 %..i.i.i.i.i67.prol, ptr %i.mf, align 2, !alias.scope !5133, !noalias !5130
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.mc, %vec.epilog.scalar.ph402.prol ]
  %i.mg = icmp eq i64 %i.mb, %.val.i.i62
  br i1 %i.mg, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.mk, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.mh = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mh
  %.val8.i.i = load i16, ptr %i.mi, align 2, !noalias !5130, !noundef !5
  %..i.i.i.i.i67 = call i16 @llvm.smax.i16(i16 %.val8.i.i, i16 %i.kx)
  store i16 %..i.i.i.i.i67, ptr %i.mj, align 2, !alias.scope !5133, !noalias !5130
  %i.mk = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.ml, align 2, !noalias !5130, !noundef !5
  %..i.i.i.i.i67.1 = call i16 @llvm.smax.i16(i16 %.val8.i.i.1, i16 %i.kx)
  store i16 %..i.i.i.i.i67.1, ptr %i.mm, align 2, !alias.scope !5133, !noalias !5130
  %exitcond.not.i.i68.1 = icmp eq i64 %i.mk, %i.lj
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !5116

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5129
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mn = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.mn, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.mp = load i16, ptr %i.mo, align 2, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mq = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mr = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.ms = sub i64 %i.mr, %i.av
  %i.mt = call i64 @llvm.umin.i64(i64 %i.ms, i64 %i.mq)
  %i.mu = call i64 @llvm.umin.i64(i64 %i.mt, i64 %i.at) ; 2 uses
  %i.mv = add nuw nsw i64 %i.mu, 1                ; 2 uses
  %min.iters.check418 = icmp samesign ult i64 %i.mu, 8
  br i1 %min.iters.check418, label %.lr.ph.preheader432, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph.preheader
  %i.mw = shl i64 %.sroa.4.0.copyload, 1
  %i.mx = add i64 %i.aw, %i.r
  %i.my = add i64 %i.mw, %i.a
  %i.mz = sub i64 %i.my, %i.mx
  %diff.check417 = icmp ugt i64 %i.mz, -16
  br i1 %diff.check417, label %.lr.ph.preheader432, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck416
  %i.na = and i64 %i.mv, 7                        ; 2 uses
  %i.nb = icmp eq i64 %i.na, 0
  %i.nc = select i1 %i.nb, i64 8, i64 %i.na
  %n.vec420 = sub nsw i64 %i.mv, %i.nc            ; 2 uses
  %broadcast.splatinsert421 = insertelement <8 x i16> poison, i16 %i.mp, i64 0
  %broadcast.splat422 = shufflevector <8 x i16> %broadcast.splatinsert421, <8 x i16> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep456 = getelementptr [2 x i8], ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph419
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next426, %vector.body423 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index424
  %wide.load425 = load <8 x i16>, ptr %gep, align 2
  %i.nd = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %broadcast.splat422, <8 x i16> %wide.load425)
  %gep457 = getelementptr [2 x i8], ptr %invariant.gep456, i64 %index424
  store <8 x i16> %i.nd, ptr %gep457, align 2
  %index.next426 = add nuw i64 %index424, 8       ; 2 uses
  %i.ne = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.ne, label %.lr.ph.preheader432, label %vector.body423, !llvm.loop !5117

.lr.ph.preheader432:                              ; preds = %vector.body423, %vector.memcheck416, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck416 ], [ 0, %.lr.ph.preheader ], [ %n.vec420, %vector.body423 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader432, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.nf, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader432 ] ; 4 uses
  %i.nf = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.ng = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mq
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.nh = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.ni = icmp ult i64 %i.nh, %i.n
  br i1 %i.ni, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ng
  %i.nk = load i16, ptr %i.nj, align 2, !noundef !5
  %..i.i = call noundef i16 @llvm.smax.i16(i16 %i.mp, i16 %i.nk)
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.nh
  store i16 %..i.i, ptr %i.nl, align 2
  %exitcond242.not = icmp eq i64 %i.nf, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !5118

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nm, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nm = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nn = mul i64 %.sroa.022.0155, %i.z
  %i.no = add i64 %i.nn, %.sroa.071.0.copyload    ; 3 uses
  %i.np = icmp ult i64 %i.no, %4
  br i1 %i.np, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nq = mul i64 %.sroa.022.0155, %i.ab
  %i.nr = add i64 %i.nq, %.sroa.4.0.copyload      ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %6
  br i1 %i.ns, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nt = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nu = icmp ult i64 %i.nt, %i.n
  br i1 %i.nu, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.no
  %i.nw = load i16, ptr %i.nv, align 2, !noundef !5
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.nr
  %i.ny = load i16, ptr %i.nx, align 2, !noundef !5
  %..i.i70 = call noundef i16 @llvm.smax.i16(i16 %i.nw, i16 %i.ny)
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.nt
  store i16 %..i.i70, ptr %i.nz, align 2
  %exitcond243.not = icmp eq i64 %i.nm, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156
end_hunk_6
begin_hunk_7_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecsNvYNtNtB6_2op7MinimumNtB1c_9BinaryOpT3i16NvYB1a_B1s_7i16_vecNvYB1a_B1s_14i16_scalar_vecECs1dZk1kIfPhr_19candle_transformers:bb.a
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !alias.scope !5184, !noalias !5185
  %invariant.gep.i.us.6 = getelementptr [8 x i8], ptr %i.f, i64 %i.gh ; 3 uses
  %i.gl = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gm = load i64, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gn = add i64 %i.gm, %i.gl                    ; 2 uses
  store i64 %i.gn, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185
  %gep.1.i.us.6 = getelementptr i8, ptr %invariant.gep.i.us.6, i64 64 ; 2 uses
  %i.go = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gp = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gq = add i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.gq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %i.gr = load i64, ptr %i.gi, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gh ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit79.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !5184, !noalias !5185
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit79.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !5184, !noalias !5185
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit79.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !5184, !noalias !5185
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !5184, !noalias !5185
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5185
  br label %.loopexit79.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit79.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.f
  %.sroa.4.0.copyload247 = phi i64 [ %.sroa.4.0.copyload, %bb.f ], [ %i.bi, %.lr.ph.i.split.us ], [ %i.bv, %.loopexit.i.us ], [ %i.cf, %.lr.ph.i.split.us.1 ], [ %i.cs, %.loopexit.i.us.1 ], [ %i.dc, %.lr.ph.i.split.us.2 ], [ %i.dp, %.loopexit.i.us.2 ], [ %i.dz, %.lr.ph.i.split.us.3 ], [ %i.em, %.loopexit.i.us.3 ], [ %i.ew, %.lr.ph.i.split.us.4 ], [ %i.fj, %.loopexit.i.us.4 ], [ %i.ft, %.lr.ph.i.split.us.5 ], [ %i.gg, %.loopexit.i.us.5 ], [ %i.gq, %.lr.ph.i.split.us.6 ], [ %i.hd, %.loopexit.i.us.6 ], [ %i.hn, %.lr.ph.i.split.us.7 ], [ %i.ia, %.loopexit.i.us.7 ]
  %.sroa.071.0.copyload244 = phi i64 [ %.sroa.071.0.copyload, %bb.f ], [ %i.bf, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.cc, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cz, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.dw, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.et, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fq, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gn, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hk, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.g:                                             ; preds = %bb.i, %bb.h, %.loopexit79.split.us
  br i1 %.not160, label %.loopexit, label %.lr.ph156

bb.h:                                             ; preds = %.loopexit79.split.us
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.j
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %.loopexit79.split.us
  br i1 %i.aj, label %bb.r, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.071.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.o, label %.invoke351

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !17

.invoke:                                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.071.0.copyload, %bb.o ], [ %.sroa.071.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0157, %bb.m ], [ %.sroa.0.0157, %bb.p ]
  %i.ij = phi i64 [ %i.ky, %bb.o ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.ld, %bb.p ]
  %i.ik = phi i64 [ %4, %bb.o ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.p ]
  %i.il = phi ptr [ @11, %bb.o ], [ @8, %bb.j ], [ @7, %bb.l ], [ @6, %bb.m ], [ @10, %bb.p ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0157
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5186
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5187
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEBW_EINtB5_7ZipImplBW_BW_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit80

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItersEB10_EINtB13_7IterMutsEEINtB5_7ZipImplBW_B1x_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit80

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5187
  call void @llvm.experimental.noalias.scope.decl(metadata !5188)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !5188, !noalias !5189, !noundef !5 ; 9 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !5188, !noalias !5189, !noundef !5 ; 4 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 8 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check

iter.check:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !5190, !noalias !5191, !noundef !5 ; 6 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !5190, !noalias !5191, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !5190, !noalias !5191, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !5192, !noalias !5191, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.it, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.val.i.i.i370 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i372 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i371 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.iv = shl i64 %i.iu, 1                        ; 2 uses
  %i.iw = add i64 %i.iv, %.val1.i.i.i.i.i371
  %i.ix = sub i64 %i.iw, %.val.i.i.i370
  %diff.check = icmp ugt i64 %i.ix, -32
  %i.iy = add i64 %i.iv, %.val.i.i.i.i.i372
  %i.iz = sub i64 %i.iy, %.val.i.i.i370
  %diff.check373 = icmp ugt i64 %i.iz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check373
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check374 = icmp ult i64 %i.it, 16
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ja = and i64 %i.it, 12
  %n.vec = and i64 %i.it, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jb = add i64 %index, %.val.i.i               ; 2 uses
  %i.jc = add i64 %i.jb, %i.iu                    ; 2 uses
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jc ; 2 uses
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jb ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load = load <8 x i16>, ptr %i.jd, align 2, !noalias !5193
  %wide.load375 = load <8 x i16>, ptr %i.jg, align 2, !noalias !5193
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load376 = load <8 x i16>, ptr %i.je, align 2, !noalias !5193
  %wide.load377 = load <8 x i16>, ptr %i.jh, align 2, !noalias !5193
  %i.ji = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load376)
  %i.jj = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load375, <8 x i16> %wide.load377)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <8 x i16> %i.ji, ptr %i.jf, align 2, !noalias !5193
  store <8 x i16> %i.jj, ptr %i.jk, align 2, !noalias !5193
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !5162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ja, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec378 = and i64 %i.it, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index379 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next382, %vec.epilog.vector.body ] ; 2 uses
  %i.jm = add i64 %index379, %.val.i.i            ; 2 uses
  %i.jn = add i64 %i.jm, %i.iu                    ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jn
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jn
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jm
  %wide.load380 = load <4 x i16>, ptr %i.jo, align 2, !noalias !5193
  %wide.load381 = load <4 x i16>, ptr %i.jp, align 2, !noalias !5193
  %i.jr = call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load380, <4 x i16> %wide.load381)
  store <4 x i16> %i.jr, ptr %i.jq, align 2, !noalias !5193
  %index.next382 = add nuw i64 %index379, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next382, %n.vec378
  br i1 %i.js, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5163

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n383 = icmp eq i64 %i.it, %n.vec378
  br i1 %cmp.n383, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec378, %vec.epilog.middle.block ] ; 4 uses
  %i.jt = sub i64 %.val6.i.i, %.val.i.i
  %i.ju = xor i64 %.sroa.0.012.i.i.ph, -1
  %i.jv = add i64 %.val6.i.i, %i.ju
  %xtraiter448 = and i64 %i.jt, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.jw = or disjoint i64 %.sroa.0.012.i.i.ph, 1
  %i.jx = add i64 %.sroa.0.012.i.i.ph, %.val.i.i  ; 2 uses
  %i.jy = add i64 %i.jx, %i.iu                    ; 2 uses
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jy
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jy
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jx
  %i.kc = load i16, ptr %i.jz, align 2, !noalias !5193, !noundef !5
  %i.kd = load i16, ptr %i.ka, align 2, !noalias !5193, !noundef !5
  %..i.i.i.i.i.prol = call i16 @llvm.smin.i16(i16 %i.kc, i16 %i.kd)
  store i16 %..i.i.i.i.i.prol, ptr %i.kb, align 2, !noalias !5193
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.012.i.i.unr = phi i64 [ %.sroa.0.012.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jw, %vec.epilog.scalar.ph.prol ]
  %i.ke = icmp eq i64 %i.jv, %.val.i.i
  br i1 %i.ke, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op458 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.012.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.km, %vec.epilog.scalar.ph ] ; 3 uses
  %i.kf = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kg = add i64 %i.kf, %i.iu                    ; 2 uses
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kg
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kf
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !5193, !noundef !5
  %i.kl = load i16, ptr %i.ki, align 2, !noalias !5193, !noundef !5
  %..i.i.i.i.i = call i16 @llvm.smin.i16(i16 %i.kk, i16 %i.kl)
  store i16 %..i.i.i.i.i, ptr %i.kj, align 2, !noalias !5193
  %i.km = add nuw i64 %.sroa.0.012.i.i, 2         ; 2 uses
  %.reass459 = add i64 %.sroa.0.012.i.i, %invariant.op458 ; 2 uses
  %i.kn = add i64 %.reass459, %i.iu               ; 2 uses
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kn
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %.reass459
  %i.kr = load i16, ptr %i.ko, align 2, !noalias !5193, !noundef !5
  %i.ks = load i16, ptr %i.kp, align 2, !noalias !5193, !noundef !5
  %..i.i.i.i.i.1 = call i16 @llvm.smin.i16(i16 %i.kr, i16 %i.ks)
  store i16 %..i.i.i.i.i.1, ptr %i.kq, align 2, !noalias !5193
  %exitcond.not.i.i.1 = icmp eq i64 %i.km, %i.it
  br i1 %exitcond.not.i.i.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph, !llvm.loop !5164

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5186
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.x, %bb.s, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7i16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSsB1S_QB1T_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit
  %i.kt = add i64 %.sroa.0.0157, %i.x
  %i.ku = load i64, ptr %i.ac, align 8, !alias.scope !5184, !noalias !5185, !noundef !5 ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kv, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit, label %bb.f

bb.o:                                             ; preds = %bb.k
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kx = load i16, ptr %i.kw, align 2, !noundef !5 ; 5 uses
  %i.ky = add i64 %.sroa.071.0.copyload, %i.x     ; 3 uses
  %i.kz = icmp ult i64 %i.ky, %.sroa.071.0.copyload
  %.not = icmp ugt i64 %i.ky, %4
  %or.cond58 = or i1 %i.kz, %.not
  br i1 %or.cond58, label %.invoke, label %bb.p, !prof !17

.invoke351:                                       ; preds = %bb.r, %bb.k, %bb.t, %.lr.ph, %bb.w, %bb.v, %.lr.ph156
  %i.la = phi i64 [ %i.nr, %bb.v ], [ %i.nh, %bb.t ], [ %i.no, %.lr.ph156 ], [ %i.nt, %bb.w ], [ %i.ng, %.lr.ph ], [ %.sroa.071.0.copyload, %bb.r ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lb = phi i64 [ %6, %bb.v ], [ %i.n, %bb.t ], [ %4, %.lr.ph156 ], [ %i.n, %bb.w ], [ %6, %.lr.ph ], [ %4, %bb.r ], [ %6, %bb.k ]
  %i.lc = phi ptr [ @16, %bb.v ], [ @14, %bb.t ], [ @15, %.lr.ph156 ], [ @17, %bb.w ], [ @13, %.lr.ph ], [ @12, %bb.r ], [ @9, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.la, i64 noundef %i.lb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lc) #26
          to label %.cont352 unwind label %.loopexit.split-lp

.cont352:                                         ; preds = %.invoke351
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ld = add i64 %.sroa.0.0157, %i.x             ; 3 uses
  %i.le = icmp ult i64 %i.ld, %.sroa.0.0157
  %.not52 = icmp ugt i64 %i.ld, %i.n
  %or.cond59 = or i1 %i.le, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5194
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.x
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItersEINtBZ_7IterMutsEEINtB5_7ZipImplBW_B1o_E3newCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lf, ptr noundef nonnull readonly %i.lh, ptr noundef nonnull align 2 %i.lg, ptr noundef nonnull %i.li)
          to label %.noexc69 unwind label %.loopexit80

.noexc69:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !5195)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !5195, !noalias !5196, !noundef !5 ; 9 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !5195, !noalias !5196, !noundef !5 ; 4 uses
  %i.lj = sub i64 %.val6.i.i63, %.val.i.i62       ; 8 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %iter.check401

iter.check401:                                    ; preds = %.noexc69
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !5197, !noalias !5196, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5197, !noalias !5196, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check388 = icmp ult i64 %i.lj, 4
  %.val1.i.i.i385 = ptrtoaddr ptr %.val1.i.i.i to i64
  %.val.i.i.i66386 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %i.lk = sub i64 %.val.i.i.i66386, %.val1.i.i.i385
  %diff.check387 = icmp ugt i64 %i.lk, -32
  %or.cond429 = or i1 %min.iters.check388, %diff.check387
  br i1 %or.cond429, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check390, label %vec.epilog.ph405, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.ll = and i64 %i.lj, 12
  %n.vec392 = and i64 %i.lj, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.ph391, %vector.body393
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 2 uses
  %i.lm = add i64 %index394, %.val.i.i62          ; 2 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lm ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %wide.load395 = load <8 x i16>, ptr %i.ln, align 2, !noalias !5195
  %wide.load396 = load <8 x i16>, ptr %i.lp, align 2, !noalias !5195
  %i.lq = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load395, <8 x i16> %broadcast.splat)
  %i.lr = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load396, <8 x i16> %broadcast.splat)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store <8 x i16> %i.lq, ptr %i.lo, align 2, !alias.scope !5198, !noalias !5195
  store <8 x i16> %i.lr, ptr %i.ls, align 2, !alias.scope !5198, !noalias !5195
  %index.next397 = add nuw i64 %index394, 16      ; 2 uses
  %i.lt = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.lt, label %middle.block398, label %vector.body393, !llvm.loop !5179

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %i.lj, %n.vec392
  br i1 %cmp.n399, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.ll, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !20

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check389 ]
  %n.vec406 = and i64 %i.lj, -4                   ; 3 uses
  %broadcast.splatinsert407 = insertelement <4 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat408 = shufflevector <4 x i16> %broadcast.splatinsert407, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body409

vec.epilog.vector.body409:                        ; preds = %vec.epilog.vector.body409, %vec.epilog.ph405
  %index410 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body409 ] ; 2 uses
  %i.lu = add i64 %index410, %.val.i.i62          ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lu
  %wide.load411 = load <4 x i16>, ptr %i.lv, align 2, !noalias !5195
  %i.lx = call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load411, <4 x i16> %broadcast.splat408)
  store <4 x i16> %i.lx, ptr %i.lw, align 2, !alias.scope !5198, !noalias !5195
  %index.next412 = add nuw i64 %index410, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.ly, label %vec.epilog.middle.block413, label %vec.epilog.vector.body409, !llvm.loop !5180

vec.epilog.middle.block413:                       ; preds = %vec.epilog.vector.body409
  %cmp.n414 = icmp eq i64 %i.lj, %n.vec406
  br i1 %cmp.n414, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block413
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec392, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block413 ] ; 4 uses
  %i.lz = sub i64 %.val6.i.i63, %.val.i.i62
  %i.ma = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.mb = add i64 %.val6.i.i63, %i.ma
  %xtraiter = and i64 %i.lz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader
  %i.mc = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.md = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.md
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.md
  %.val8.i.i.prol = load i16, ptr %i.me, align 2, !noalias !5195, !noundef !5
  %..i.i.i.i.i67.prol = call i16 @llvm.smin.i16(i16 %.val8.i.i.prol, i16 %i.kx)
  store i16 %..i.i.i.i.i67.prol, ptr %i.mf, align 2, !alias.scope !5198, !noalias !5195
  br label %vec.epilog.scalar.ph402.prol.loopexit

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph402.preheader ], [ %i.mc, %vec.epilog.scalar.ph402.prol ]
  %i.mg = icmp eq i64 %i.mb, %.val.i.i62
  br i1 %i.mg, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402.preheader.new

vec.epilog.scalar.ph402.preheader.new:            ; preds = %vec.epilog.scalar.ph402.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402, %vec.epilog.scalar.ph402.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph402.preheader.new ], [ %i.mk, %vec.epilog.scalar.ph402 ] ; 3 uses
  %i.mh = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mh
  %.val8.i.i = load i16, ptr %i.mi, align 2, !noalias !5195, !noundef !5
  %..i.i.i.i.i67 = call i16 @llvm.smin.i16(i16 %.val8.i.i, i16 %i.kx)
  store i16 %..i.i.i.i.i67, ptr %i.mj, align 2, !alias.scope !5198, !noalias !5195
  %i.mk = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.ml, align 2, !noalias !5195, !noundef !5
  %..i.i.i.i.i67.1 = call i16 @llvm.smin.i16(i16 %.val8.i.i.1, i16 %i.kx)
  store i16 %..i.i.i.i.i67.1, ptr %i.mm, align 2, !alias.scope !5198, !noalias !5195
  %exitcond.not.i.i68.1 = icmp eq i64 %i.mk, %i.lj
  br i1 %exitcond.not.i.i68.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit, label %vec.epilog.scalar.ph402, !llvm.loop !5181

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14i16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTsRSsQB22_EE8call_mutCs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block413, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5194
  br label %.loopexit

bb.r:                                             ; preds = %bb.i
  %i.mn = icmp ult i64 %.sroa.071.0.copyload, %4
  br i1 %i.mn, label %bb.s, label %.invoke351

bb.s:                                             ; preds = %bb.r
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.071.0.copyload
  %i.mp = load i16, ptr %i.mo, align 2, !noundef !5 ; 2 uses
  br i1 %.not160, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.mq = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.mr = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0157)
  %i.ms = sub i64 %i.mr, %i.av
  %i.mt = call i64 @llvm.umin.i64(i64 %i.ms, i64 %i.mq)
  %i.mu = call i64 @llvm.umin.i64(i64 %i.mt, i64 %i.at) ; 2 uses
  %i.mv = add nuw nsw i64 %i.mu, 1                ; 2 uses
  %min.iters.check418 = icmp samesign ult i64 %i.mu, 8
  br i1 %min.iters.check418, label %.lr.ph.preheader432, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.lr.ph.preheader
  %i.mw = shl i64 %.sroa.4.0.copyload, 1
  %i.mx = add i64 %i.aw, %i.r
  %i.my = add i64 %i.mw, %i.a
  %i.mz = sub i64 %i.my, %i.mx
  %diff.check417 = icmp ugt i64 %i.mz, -16
  br i1 %diff.check417, label %.lr.ph.preheader432, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck416
  %i.na = and i64 %i.mv, 7                        ; 2 uses
  %i.nb = icmp eq i64 %i.na, 0
  %i.nc = select i1 %i.nb, i64 8, i64 %i.na
  %n.vec420 = sub nsw i64 %i.mv, %i.nc            ; 2 uses
  %broadcast.splatinsert421 = insertelement <8 x i16> poison, i16 %i.mp, i64 0
  %broadcast.splat422 = shufflevector <8 x i16> %broadcast.splatinsert421, <8 x i16> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep456 = getelementptr [2 x i8], ptr %i.q, i64 %.sroa.0.0157
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph419
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next426, %vector.body423 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index424
  %wide.load425 = load <8 x i16>, ptr %gep, align 2
  %i.nd = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %broadcast.splat422, <8 x i16> %wide.load425)
  %gep457 = getelementptr [2 x i8], ptr %invariant.gep456, i64 %index424
  store <8 x i16> %i.nd, ptr %gep457, align 2
  %index.next426 = add nuw i64 %index424, 8       ; 2 uses
  %i.ne = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.ne, label %.lr.ph.preheader432, label %vector.body423, !llvm.loop !5182

.lr.ph.preheader432:                              ; preds = %vector.body423, %vector.memcheck416, %.lr.ph.preheader
  %.sroa.020.0154.ph = phi i64 [ 0, %vector.memcheck416 ], [ 0, %.lr.ph.preheader ], [ %n.vec420, %vector.body423 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader432, %bb.u
  %.sroa.020.0154 = phi i64 [ %i.nf, %bb.u ], [ %.sroa.020.0154.ph, %.lr.ph.preheader432 ] ; 4 uses
  %i.nf = add nuw nsw i64 %.sroa.020.0154, 1      ; 2 uses
  %i.ng = add nuw nsw i64 %.sroa.020.0154, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0154, %i.mq
  br i1 %exitcond.not, label %.invoke351, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.nh = add nuw nsw i64 %.sroa.020.0154, %.sroa.0.0157 ; 3 uses
  %i.ni = icmp ult i64 %i.nh, %i.n
  br i1 %i.ni, label %bb.u, label %.invoke351

bb.u:                                             ; preds = %bb.t
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ng
  %i.nk = load i16, ptr %i.nj, align 2, !noundef !5
  %..i.i = call noundef i16 @llvm.smin.i16(i16 %i.mp, i16 %i.nk)
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.nh
  store i16 %..i.i, ptr %i.nl, align 2
  %exitcond242.not = icmp eq i64 %i.nf, %i.x
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph, !llvm.loop !5183

.lr.ph156:                                        ; preds = %bb.g, %bb.x
  %.sroa.022.0155 = phi i64 [ %i.nm, %bb.x ], [ 0, %bb.g ] ; 4 uses
  %i.nm = add nuw i64 %.sroa.022.0155, 1          ; 2 uses
  %i.nn = mul i64 %.sroa.022.0155, %i.z
  %i.no = add i64 %i.nn, %.sroa.071.0.copyload    ; 3 uses
  %i.np = icmp ult i64 %i.no, %4
  br i1 %i.np, label %bb.v, label %.invoke351

bb.v:                                             ; preds = %.lr.ph156
  %i.nq = mul i64 %.sroa.022.0155, %i.ab
  %i.nr = add i64 %i.nq, %.sroa.4.0.copyload      ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %6
  br i1 %i.ns, label %bb.w, label %.invoke351

bb.w:                                             ; preds = %bb.v
  %i.nt = add nuw nsw i64 %.sroa.022.0155, %.sroa.0.0157 ; 3 uses
  %i.nu = icmp ult i64 %i.nt, %i.n
  br i1 %i.nu, label %bb.x, label %.invoke351

bb.x:                                             ; preds = %bb.w
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.no
  %i.nw = load i16, ptr %i.nv, align 2, !noundef !5
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.nr
  %i.ny = load i16, ptr %i.nx, align 2, !noundef !5
  %..i.i70 = call noundef i16 @llvm.smin.i16(i16 %i.nw, i16 %i.ny)
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.nt
  store i16 %..i.i70, ptr %i.nz, align 2
  %exitcond243.not = icmp eq i64 %i.nm, %i.x
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph156
end_hunk_7
