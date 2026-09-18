Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.01?download=true
inline.NumInlined: 5635
inline.NumDeleted: 1373
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 334
begin_hunk_0_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MaximumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecEB6_:bb.a
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !7331, !noalias !7332, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit92.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !7331, !noalias !7332
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !7331, !noalias !7332
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7331, !noalias !7332
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit92.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !7331, !noalias !7332
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !7331, !noalias !7332
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7331, !noalias !7332
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !7331, !noalias !7332, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit92.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !7331, !noalias !7332
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !7331, !noalias !7332
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7331, !noalias !7332, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7331, !noalias !7332
  br label %.loopexit92.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23
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

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit: ; preds = %.loopexit, %bb.e
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
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.r, label %.invoke389

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !11

.invoke:                                          ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.082.0.copyload, %bb.r ], [ %.sroa.082.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0170, %bb.m ], [ %.sroa.0.0170, %bb.s ]
  %i.ij = phi i64 [ %i.kz, %bb.r ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.le, %bb.s ]
  %i.ik = phi i64 [ %4, %bb.r ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.s ]
  %i.il = phi ptr [ @13, %bb.r ], [ @10, %bb.j ], [ @9, %bb.l ], [ @8, %bb.m ], [ @12, %bb.s ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0170
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7333
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7334
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit93

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B25_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit93

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7334
  call void @llvm.experimental.noalias.scope.decl(metadata !7335)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !7335, !noalias !7336, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !7335, !noalias !7336, !noundef !5 ; 2 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !7337, !noalias !7338, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !7337, !noalias !7338, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !7337, !noalias !7338, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !7339, !noalias !7338, !nonnull !5, !noundef !5 ; 3 uses
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
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !7340 ; 5 uses
  %wide.load414 = load <8 x i16>, ptr %i.jd, align 2, !noalias !7340 ; 6 uses
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
  %7 = xor <8 x i1> %i.jp, splat (i1 true)
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
  %i.ka = select <8 x i1> %7, <8 x i1> %i.jq, <8 x i1> zeroinitializer
  %8 = or <8 x i1> %i.ka, %i.jz
  %i.kb = or <8 x i1> %8, %i.jy
  %i.kc = or <8 x i1> %i.kb, %i.jj
  %predphi = select <8 x i1> %i.kc, <8 x i16> %wide.load, <8 x i16> %wide.load414
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !7340
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !7303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ke, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kf = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kg = add i64 %i.kf, %i.iu                    ; 2 uses
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kg
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kf
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !7340, !noundef !5 ; 8 uses
  %i.kl = load i16, ptr %i.ki, align 2, !noalias !7340, !noundef !5 ; 6 uses
  %i.km = and i16 %i.kk, 32767                    ; 2 uses
  %i.kn = icmp samesign ugt i16 %i.km, 32640
  %i.ko = and i16 %i.kl, 32767
  %i.kp = icmp samesign ugt i16 %i.ko, 32640
  %or.cond.i.i.i.i.i = select i1 %i.kn, i1 true, i1 %i.kp
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp sgt i16 %i.kk, -1
  %.not1.i.i.i.i.i = icmp sgt i16 %i.kl, -1       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i, label %bb.p

.split.i.i.i.i:                                   ; preds = %bb.o
  %i.kq = icmp ult i16 %i.kk, %i.kl
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kq
  br i1 %spec.select.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not1.i.i.i.i.i, label %.split4.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.p
  %i.kr = or i16 %i.kl, %i.km
  %.not.i.i.i.i = icmp eq i16 %i.kr, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.q

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i: ; preds = %bb.p
  %i.ks = icmp samesign ugt i16 %i.kk, %i.kl
  br i1 %i.ks, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i: ; preds = %bb.q, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i, %scalar.ph
  %i.kt = phi i16 [ %i.kl, %bb.q ], [ %i.kk, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i ], [ %i.kk, %.split4.i.i.i.i ], [ %i.kk, %.split.i.i.i.i ], [ %i.kk, %scalar.ph ]
  store i16 %i.kt, ptr %i.kj, align 2, !noalias !7340
  %exitcond.not.i.i = icmp eq i64 %i.ke, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %scalar.ph, !llvm.loop !7304

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7333
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ai, %bb.x, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit
  %i.ku = add i64 %.sroa.0.0170, %i.x
  %i.kv = load i64, ptr %i.ac, align 8, !alias.scope !7331, !noalias !7332, !noundef !5 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kw, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit, label %bb.f

bb.r:                                             ; preds = %bb.k
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ky = load i16, ptr %i.kx, align 2, !noundef !5 ; 12 uses
  %i.kz = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.kz, %4
  %or.cond58 = or i1 %i.la, %.not
  br i1 %or.cond58, label %.invoke, label %bb.s, !prof !11

.invoke389:                                       ; preds = %bb.w, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81, %bb.ad, %.lr.ph169
  %i.lb = phi i64 [ %i.tj, %bb.ad ], [ %i.tb, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit ], [ %i.tg, %.lr.ph169 ], [ %i.tx, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81 ], [ %i.ss, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.w ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lc = phi i64 [ %6, %bb.ad ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.w ], [ %6, %bb.k ]
  %i.ld = phi ptr [ @18, %bb.ad ], [ @16, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit ], [ @17, %.lr.ph169 ], [ @19, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81 ], [ @15, %scalar.ph506 ], [ @14, %bb.w ], [ @11, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lb, i64 noundef %i.lc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ld) #20
          to label %.cont390 unwind label %.loopexit.split-lp

.cont390:                                         ; preds = %.invoke389
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.le = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lf = icmp ult i64 %i.le, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.le, %i.n
  %or.cond59 = or i1 %i.lf, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7341
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.x
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lg, ptr noundef nonnull readonly %i.li, ptr noundef nonnull align 2 %i.lh, ptr noundef nonnull %i.lj)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7342)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !7342, !noalias !7343, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !7342, !noalias !7343, !noundef !5 ; 6 uses
  %i.lk = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !7344, !noalias !7343, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66417 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !7344, !noalias !7343, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i416 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.ll = and i16 %i.ky, 32767
  %i.lm = icmp samesign ugt i16 %i.ll, 32640
  %i.ln = sub i64 %.val.i.i.i66417, %.val1.i.i.i416
  %diff.check418 = icmp ugt i64 %i.ln, -32        ; 3 uses
  br i1 %i.lm, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check420 = icmp ult i64 %i.lk, 4
  %or.cond523 = or i1 %min.iters.check420, %diff.check418
  br i1 %or.cond523, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check421 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph422

vector.ph422:                                     ; preds = %vector.main.loop.iter.check
  %i.lo = and i64 %i.lk, 12
  %n.vec423 = and i64 %i.lk, -16                  ; 4 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.body424, %vector.ph422
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 2 uses
  %i.lp = add i64 %index425, %.val.i.i62          ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lp ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load426 = load <8 x i16>, ptr %i.lq, align 2, !noalias !7342
  %wide.load427 = load <8 x i16>, ptr %i.ls, align 2, !noalias !7342
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <8 x i16> %wide.load426, ptr %i.lr, align 2, !alias.scope !7345, !noalias !7342
  store <8 x i16> %wide.load427, ptr %i.lt, align 2, !alias.scope !7345, !noalias !7342
  %index.next428 = add nuw i64 %index425, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.lu, label %middle.block429, label %vector.body424, !llvm.loop !7319

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %i.lk, %n.vec423
  br i1 %cmp.n430, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block429
  %min.epilog.iters.check = icmp eq i64 %i.lo, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec423, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %i.lk, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 2 uses
  %i.lv = add i64 %index432, %.val.i.i62          ; 2 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lv
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lv
  %wide.load433 = load <4 x i16>, ptr %i.lw, align 2, !noalias !7342
  store <4 x i16> %wide.load433, ptr %i.lx, align 2, !alias.scope !7345, !noalias !7342
  %index.next434 = add nuw i64 %index432, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next434, %n.vec431
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7320

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.lk, %n.vec431
  br i1 %cmp.n435, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec423, %vec.epilog.iter.check ], [ %n.vec431, %vec.epilog.middle.block ] ; 3 uses
  %i.lz = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter548 = and i64 %i.lz, 3                 ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.ma, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader ]
  %i.ma = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.mb = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mb
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mb
  %.val8.us.i.i.prol = load i16, ptr %i.mc, align 2, !noalias !7342, !noundef !5
end_hunk_0
begin_hunk_1_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MaximumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecEB6_:bb.a
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !7661, !noalias !7662, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gr, %i.gt
  br i1 %i.gu, label %.loopexit92.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gi, align 8, !alias.scope !7661, !noalias !7662
  %i.gv = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !7661, !noalias !7662
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7661, !noalias !7662
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit92.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !7661, !noalias !7662
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !7661, !noalias !7662
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7661, !noalias !7662
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !7661, !noalias !7662, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit92.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !7661, !noalias !7662
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !7661, !noalias !7662
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7661, !noalias !7662, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7661, !noalias !7662
  br label %.loopexit92.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.ib = add i64 %i.ay, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23
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

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit: ; preds = %.loopexit, %bb.e
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
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.r, label %.invoke389

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !11

.invoke:                                          ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.082.0.copyload, %bb.r ], [ %.sroa.082.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0170, %bb.m ], [ %.sroa.0.0170, %bb.s ]
  %i.ij = phi i64 [ %i.kz, %bb.r ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.le, %bb.s ]
  %i.ik = phi i64 [ %4, %bb.r ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.s ]
  %i.il = phi ptr [ @13, %bb.r ], [ @10, %bb.j ], [ @9, %bb.l ], [ @8, %bb.m ], [ @12, %bb.s ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ii, i64 noundef %i.ij, i64 noundef %i.ik, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.il) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.im = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.in = icmp ult i64 %i.im, %.sroa.0.0170
  %.not55 = icmp ugt i64 %i.im, %i.n
  %or.cond57 = or i1 %i.in, %.not55
  br i1 %or.cond57, label %.invoke, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7663
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7664
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit93

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B26_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit93

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7664
  call void @llvm.experimental.noalias.scope.decl(metadata !7665)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !7665, !noalias !7666, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !7665, !noalias !7666, !noundef !5 ; 2 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !7667, !noalias !7668, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !7667, !noalias !7668, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !7667, !noalias !7668, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !7669, !noalias !7668, !nonnull !5, !noundef !5 ; 3 uses
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
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !7670 ; 5 uses
  %wide.load414 = load <8 x i16>, ptr %i.jd, align 2, !noalias !7670 ; 6 uses
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
  %7 = xor <8 x i1> %i.jp, splat (i1 true)
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
  %i.ka = select <8 x i1> %7, <8 x i1> %i.jq, <8 x i1> zeroinitializer
  %8 = or <8 x i1> %i.ka, %i.jz
  %i.kb = or <8 x i1> %8, %i.jy
  %i.kc = or <8 x i1> %i.kb, %i.jj
  %predphi = select <8 x i1> %i.kc, <8 x i16> %wide.load, <8 x i16> %wide.load414
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !7670
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !7633

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ke, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kf = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kg = add i64 %i.kf, %i.iu                    ; 2 uses
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kg
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kf
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !7670, !noundef !5 ; 8 uses
  %i.kl = load i16, ptr %i.ki, align 2, !noalias !7670, !noundef !5 ; 6 uses
  %i.km = and i16 %i.kk, 32767                    ; 2 uses
  %i.kn = icmp samesign ugt i16 %i.km, 31744
  %i.ko = and i16 %i.kl, 32767
  %i.kp = icmp samesign ugt i16 %i.ko, 31744
  %or.cond.i.i.i.i.i = select i1 %i.kn, i1 true, i1 %i.kp
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp sgt i16 %i.kk, -1
  %.not1.i.i.i.i.i = icmp sgt i16 %i.kl, -1       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i, label %bb.p

.split.i.i.i.i:                                   ; preds = %bb.o
  %i.kq = icmp ult i16 %i.kk, %i.kl
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kq
  br i1 %spec.select.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not1.i.i.i.i.i, label %.split4.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.p
  %i.kr = or i16 %i.kl, %i.km
  %.not.i.i.i.i = icmp eq i16 %i.kr, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.q

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i: ; preds = %bb.p
  %i.ks = icmp samesign ugt i16 %i.kk, %i.kl
  br i1 %i.ks, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i: ; preds = %bb.q, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i, %scalar.ph
  %i.kt = phi i16 [ %i.kl, %bb.q ], [ %i.kk, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i ], [ %i.kk, %.split4.i.i.i.i ], [ %i.kk, %.split.i.i.i.i ], [ %i.kk, %scalar.ph ]
  store i16 %i.kt, ptr %i.kj, align 2, !noalias !7670
  %exitcond.not.i.i = icmp eq i64 %i.ke, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %scalar.ph, !llvm.loop !7634

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7663
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ai, %bb.x, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit
  %i.ku = add i64 %.sroa.0.0170, %i.x
  %i.kv = load i64, ptr %i.ac, align 8, !alias.scope !7661, !noalias !7662, !noundef !5 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kw, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit, label %bb.f

bb.r:                                             ; preds = %bb.k
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ky = load i16, ptr %i.kx, align 2, !noundef !5 ; 12 uses
  %i.kz = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.kz, %4
  %or.cond58 = or i1 %i.la, %.not
  br i1 %or.cond58, label %.invoke, label %bb.s, !prof !11

.invoke389:                                       ; preds = %bb.w, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81, %bb.ad, %.lr.ph169
  %i.lb = phi i64 [ %i.tj, %bb.ad ], [ %i.tb, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit ], [ %i.tg, %.lr.ph169 ], [ %i.tx, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81 ], [ %i.ss, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.w ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lc = phi i64 [ %6, %bb.ad ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.w ], [ %6, %bb.k ]
  %i.ld = phi ptr [ @18, %bb.ad ], [ @16, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit ], [ @17, %.lr.ph169 ], [ @19, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81 ], [ @15, %scalar.ph506 ], [ @14, %bb.w ], [ @11, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lb, i64 noundef %i.lc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ld) #20
          to label %.cont390 unwind label %.loopexit.split-lp

.cont390:                                         ; preds = %.invoke389
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.le = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lf = icmp ult i64 %i.le, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.le, %i.n
  %or.cond59 = or i1 %i.lf, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7671
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.x
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1X_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lg, ptr noundef nonnull readonly %i.li, ptr noundef nonnull align 2 %i.lh, ptr noundef nonnull %i.lj)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7672)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !7672, !noalias !7673, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !7672, !noalias !7673, !noundef !5 ; 6 uses
  %i.lk = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !7674, !noalias !7673, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66417 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !7674, !noalias !7673, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i416 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.ll = and i16 %i.ky, 32767
  %i.lm = icmp samesign ugt i16 %i.ll, 31744
  %i.ln = sub i64 %.val.i.i.i66417, %.val1.i.i.i416
  %diff.check418 = icmp ugt i64 %i.ln, -32        ; 3 uses
  br i1 %i.lm, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check420 = icmp ult i64 %i.lk, 4
  %or.cond523 = or i1 %min.iters.check420, %diff.check418
  br i1 %or.cond523, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check421 = icmp ult i64 %i.lk, 16
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph422

vector.ph422:                                     ; preds = %vector.main.loop.iter.check
  %i.lo = and i64 %i.lk, 12
  %n.vec423 = and i64 %i.lk, -16                  ; 4 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.body424, %vector.ph422
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 2 uses
  %i.lp = add i64 %index425, %.val.i.i62          ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lp ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load426 = load <8 x i16>, ptr %i.lq, align 2, !noalias !7672
  %wide.load427 = load <8 x i16>, ptr %i.ls, align 2, !noalias !7672
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <8 x i16> %wide.load426, ptr %i.lr, align 2, !alias.scope !7675, !noalias !7672
  store <8 x i16> %wide.load427, ptr %i.lt, align 2, !alias.scope !7675, !noalias !7672
  %index.next428 = add nuw i64 %index425, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.lu, label %middle.block429, label %vector.body424, !llvm.loop !7649

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %i.lk, %n.vec423
  br i1 %cmp.n430, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block429
  %min.epilog.iters.check = icmp eq i64 %i.lo, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec423, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %i.lk, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 2 uses
  %i.lv = add i64 %index432, %.val.i.i62          ; 2 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lv
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lv
  %wide.load433 = load <4 x i16>, ptr %i.lw, align 2, !noalias !7672
  store <4 x i16> %wide.load433, ptr %i.lx, align 2, !alias.scope !7675, !noalias !7672
  %index.next434 = add nuw i64 %index432, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next434, %n.vec431
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7650

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.lk, %n.vec431
  br i1 %cmp.n435, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec423, %vec.epilog.iter.check ], [ %n.vec431, %vec.epilog.middle.block ] ; 3 uses
  %i.lz = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter548 = and i64 %i.lz, 3                 ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.ma, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader ]
  %i.ma = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.mb = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mb
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mb
  %.val8.us.i.i.prol = load i16, ptr %i.mc, align 2, !noalias !7672, !noundef !5
end_hunk_1
