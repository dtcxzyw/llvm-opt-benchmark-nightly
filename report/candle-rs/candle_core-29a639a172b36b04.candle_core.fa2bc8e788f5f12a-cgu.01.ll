Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.01?download=true
inline.NumInlined: 5635
inline.NumDeleted: 1373
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 334
begin_hunk_0_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MaximumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecEB6_:bb.a
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
  %i.ij = phi i64 [ %i.ky, %bb.r ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.ld, %bb.s ]
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
  %7 = or <8 x i1> %i.ka, %i.jy
  %i.kb = or <8 x i1> %7, %i.jj
  %predphi = select <8 x i1> %i.kb, <8 x i16> %wide.load, <8 x i16> %wide.load414
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !7340
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %middle.block, label %vector.body, !llvm.loop !7303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.kd, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.ke = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kf = add i64 %i.ke, %i.iu                    ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kf
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kf
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ke
  %i.kj = load i16, ptr %i.kg, align 2, !noalias !7340, !noundef !5 ; 8 uses
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !7340, !noundef !5 ; 6 uses
  %i.kl = and i16 %i.kj, 32767                    ; 2 uses
  %i.km = icmp samesign ugt i16 %i.kl, 32640
  %i.kn = and i16 %i.kk, 32767
  %i.ko = icmp samesign ugt i16 %i.kn, 32640
  %or.cond.i.i.i.i.i = select i1 %i.km, i1 true, i1 %i.ko
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp sgt i16 %i.kj, -1
  %.not1.i.i.i.i.i = icmp sgt i16 %i.kk, -1       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i, label %bb.p

.split.i.i.i.i:                                   ; preds = %bb.o
  %i.kp = icmp ult i16 %i.kj, %i.kk
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kp
  br i1 %spec.select.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not1.i.i.i.i.i, label %.split4.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.p
  %i.kq = or i16 %i.kk, %i.kl
  %.not.i.i.i.i = icmp eq i16 %i.kq, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.q

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i: ; preds = %bb.p
  %i.kr = icmp samesign ugt i16 %i.kj, %i.kk
  br i1 %i.kr, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i: ; preds = %bb.q, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i, %scalar.ph
  %i.ks = phi i16 [ %i.kk, %bb.q ], [ %i.kj, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i ], [ %i.kj, %.split4.i.i.i.i ], [ %i.kj, %.split.i.i.i.i ], [ %i.kj, %scalar.ph ]
  store i16 %i.ks, ptr %i.ki, align 2, !noalias !7340
  %exitcond.not.i.i = icmp eq i64 %i.kd, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %scalar.ph, !llvm.loop !7304

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7333
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ai, %bb.x, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit
  %i.kt = add i64 %.sroa.0.0170, %i.x
  %i.ku = load i64, ptr %i.ac, align 8, !alias.scope !7331, !noalias !7332, !noundef !5 ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kv, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit, label %bb.f

bb.r:                                             ; preds = %bb.k
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kx = load i16, ptr %i.kw, align 2, !noundef !5 ; 12 uses
  %i.ky = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.kz = icmp ult i64 %i.ky, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.ky, %4
  %or.cond58 = or i1 %i.kz, %.not
  br i1 %or.cond58, label %.invoke, label %bb.s, !prof !11

.invoke389:                                       ; preds = %bb.w, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81, %bb.ad, %.lr.ph169
  %i.la = phi i64 [ %i.sz, %bb.ad ], [ %i.sr, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit ], [ %i.sw, %.lr.ph169 ], [ %i.tn, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81 ], [ %i.si, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.w ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lb = phi i64 [ %6, %bb.ad ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.w ], [ %6, %bb.k ]
  %i.lc = phi ptr [ @18, %bb.ad ], [ @16, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit ], [ @17, %.lr.ph169 ], [ @19, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81 ], [ @15, %scalar.ph506 ], [ @14, %bb.w ], [ @11, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.la, i64 noundef %i.lb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lc) #20
          to label %.cont390 unwind label %.loopexit.split-lp

.cont390:                                         ; preds = %.invoke389
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.ld = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.le = icmp ult i64 %i.ld, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.ld, %i.n
  %or.cond59 = or i1 %i.le, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7341
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.x
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lf, ptr noundef nonnull readonly %i.lh, ptr noundef nonnull align 2 %i.lg, ptr noundef nonnull %i.li)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7342)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !7342, !noalias !7343, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !7342, !noalias !7343, !noundef !5 ; 6 uses
  %i.lj = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !7344, !noalias !7343, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66417 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !7344, !noalias !7343, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i416 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.lk = and i16 %i.kx, 32767
  %i.ll = icmp samesign ugt i16 %i.lk, 32640
  %i.lm = sub i64 %.val.i.i.i66417, %.val1.i.i.i416
  %diff.check418 = icmp ugt i64 %i.lm, -32        ; 3 uses
  br i1 %i.ll, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check420 = icmp ult i64 %i.lj, 4
  %or.cond523 = or i1 %min.iters.check420, %diff.check418
  br i1 %or.cond523, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check421 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph422

vector.ph422:                                     ; preds = %vector.main.loop.iter.check
  %i.ln = and i64 %i.lj, 12
  %n.vec423 = and i64 %i.lj, -16                  ; 4 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.ph422, %vector.body424
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 2 uses
  %i.lo = add i64 %index425, %.val.i.i62          ; 2 uses
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lo ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %wide.load426 = load <8 x i16>, ptr %i.lp, align 2, !noalias !7342
  %wide.load427 = load <8 x i16>, ptr %i.lr, align 2, !noalias !7342
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store <8 x i16> %wide.load426, ptr %i.lq, align 2, !alias.scope !7345, !noalias !7342
  store <8 x i16> %wide.load427, ptr %i.ls, align 2, !alias.scope !7345, !noalias !7342
  %index.next428 = add nuw i64 %index425, 16      ; 2 uses
  %i.lt = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.lt, label %middle.block429, label %vector.body424, !llvm.loop !7319

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %i.lj, %n.vec423
  br i1 %cmp.n430, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block429
  %min.epilog.iters.check = icmp eq i64 %i.ln, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec423, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %i.lj, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 2 uses
  %i.lu = add i64 %index432, %.val.i.i62          ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lu
  %wide.load433 = load <4 x i16>, ptr %i.lv, align 2, !noalias !7342
  store <4 x i16> %wide.load433, ptr %i.lw, align 2, !alias.scope !7345, !noalias !7342
  %index.next434 = add nuw i64 %index432, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next434, %n.vec431
  br i1 %i.lx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7320

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.lj, %n.vec431
  br i1 %cmp.n435, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec423, %vec.epilog.iter.check ], [ %n.vec431, %vec.epilog.middle.block ] ; 3 uses
  %i.ly = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter548 = and i64 %i.ly, 3                 ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.lz, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader ]
  %i.lz = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.ma = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ma
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ma
  %.val8.us.i.i.prol = load i16, ptr %i.mb, align 2, !noalias !7342, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.mc, align 2, !alias.scope !7345, !noalias !7342
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter548
  br i1 %prol.iter.cmp.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol, !llvm.loop !7321

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader ], [ %i.lz, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol ]
  %i.md = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.me = add i64 %i.md, %.val.i.i62
  %i.mf = icmp ugt i64 %i.me, -4
  br i1 %i.mf, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader.new

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader.new: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit
  %invariant.op559 = add i64 1, %.val.i.i62
  %invariant.op561 = add i64 2, %.val.i.i62
  %invariant.op563 = add i64 3, %.val.i.i62
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader.new ], [ %i.mn, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i ] ; 5 uses
  %i.mg = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mg
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mg
  %.val8.us.i.i = load i16, ptr %i.mh, align 2, !noalias !7342, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mi, align 2, !alias.scope !7345, !noalias !7342
  %.reass560 = add i64 %.sroa.0.010.us.i.i, %invariant.op559 ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass560
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass560
  %.val8.us.i.i.1 = load i16, ptr %i.mj, align 2, !noalias !7342, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.mk, align 2, !alias.scope !7345, !noalias !7342
  %.reass562 = add i64 %.sroa.0.010.us.i.i, %invariant.op561 ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass562
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass562
  %.val8.us.i.i.2 = load i16, ptr %i.ml, align 2, !noalias !7342, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mm, align 2, !alias.scope !7345, !noalias !7342
  %i.mn = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass564 = add i64 %.sroa.0.010.us.i.i, %invariant.op563 ; 2 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass564
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass564
  %.val8.us.i.i.3 = load i16, ptr %i.mo, align 2, !noalias !7342, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mp, align 2, !alias.scope !7345, !noalias !7342
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mn, %i.lj
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i, !llvm.loop !7322

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp sgt i16 %i.kx, -1
  br i1 %.not1.i.i.i.i.i67, label %iter.check455, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.lj, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check418
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.mq = and i64 %i.lj, 12
  %n.vec478 = and i64 %i.lj, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.mr = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mr ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.ms, align 2, !noalias !7342 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.mu, align 2, !noalias !7342 ; 4 uses
  %i.mv = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.mw = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.mx = icmp samesign ugt <8 x i16> %i.mv, splat (i16 32640)
  %i.my = icmp samesign ugt <8 x i16> %i.mw, splat (i16 32640)
  %i.mz = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.na = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.nb = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.nc = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.nd = or <8 x i1> %i.mz, %i.mx
  %i.ne = or <8 x i1> %i.na, %i.my
  %i.nf = select <8 x i1> %i.nd, <8 x i16> %wide.load483, <8 x i16> %i.nb
  %i.ng = select <8 x i1> %i.ne, <8 x i16> %wide.load484, <8 x i16> %i.nc
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store <8 x i16> %i.nf, ptr %i.mt, align 2, !alias.scope !7345, !noalias !7342
  store <8 x i16> %i.ng, ptr %i.nh, align 2, !alias.scope !7345, !noalias !7342
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.ni = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.ni, label %middle.block486, label %vector.body481, !llvm.loop !7323

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.lj, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.mq, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !15

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.lj, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.nj = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nj
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nj
  %wide.load499 = load <4 x i16>, ptr %i.nk, align 2, !noalias !7342 ; 4 uses
  %i.nm = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.nn = icmp samesign ugt <4 x i16> %i.nm, splat (i16 32640)
  %i.no = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.np = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nq = or <4 x i1> %i.no, %i.nn
  %i.nr = select <4 x i1> %i.nq, <4 x i16> %wide.load499, <4 x i16> %i.np
  store <4 x i16> %i.nr, ptr %i.nl, align 2, !alias.scope !7345, !noalias !7342
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.ns = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.ns, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !7324

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.lj, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %i.nt = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nu = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.nv = add i64 %.val6.i.i63, %i.nu
  %xtraiter = and i64 %i.nt, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.nw = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.nx = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nx
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nx
  %.val8.i.i.prol = load i16, ptr %i.ny, align 2, !noalias !7342, !noundef !5 ; 4 uses
  %i.oa = and i16 %.val8.i.i.prol, 32767
  %i.ob = icmp samesign ugt i16 %i.oa, 32640
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %i.oc = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.kx)
  %i.od = or i1 %.not.i.i.i.i.i68.prol, %i.ob
  %i.oe = select i1 %i.od, i16 %.val8.i.i.prol, i16 %i.oc
  store i16 %i.oe, ptr %i.nz, align 2, !alias.scope !7345, !noalias !7342
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.nw, %.lr.ph.split.split.i.i.prol ]
  %i.of = icmp eq i64 %i.nv, %.val.i.i62
  br i1 %i.of, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check455:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check440 = icmp ult i64 %i.lj, 8
  %or.cond525 = or i1 %min.iters.check440, %diff.check418
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check455
  %min.iters.check442 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check442, label %vec.epilog.ph459, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %i.og = and i64 %i.lj, 8
  %n.vec444 = and i64 %i.lj, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body445

vector.body445:                                   ; preds = %vector.ph443, %vector.body445
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %i.oh = add i64 %index446, %.val.i.i62          ; 2 uses
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oh ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oh ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %wide.load447 = load <8 x i16>, ptr %i.oi, align 2, !noalias !7342 ; 4 uses
  %wide.load448 = load <8 x i16>, ptr %i.ok, align 2, !noalias !7342 ; 4 uses
  %i.ol = and <8 x i16> %wide.load447, splat (i16 32767) ; 2 uses
  %i.om = and <8 x i16> %wide.load448, splat (i16 32767) ; 2 uses
  %i.on = icmp samesign ugt <8 x i16> %i.ol, splat (i16 32640) ; 3 uses
  %i.oo = icmp samesign ugt <8 x i16> %i.om, splat (i16 32640) ; 3 uses
  %8 = xor <8 x i1> %i.on, splat (i1 true)
  %9 = xor <8 x i1> %i.oo, splat (i1 true)
  %i.op = icmp sgt <8 x i16> %wide.load447, splat (i16 -1) ; 2 uses
  %i.oq = icmp sgt <8 x i16> %wide.load448, splat (i16 -1) ; 2 uses
  %i.or = or <8 x i1> %i.on, %i.op
  %i.os = xor <8 x i1> %i.or, splat (i1 true)
  %i.ot = or <8 x i1> %i.oo, %i.oq
  %i.ou = xor <8 x i1> %i.ot, splat (i1 true)
  %i.ov = or <8 x i16> %i.ol, %broadcast.splat
  %i.ow = or <8 x i16> %i.om, %broadcast.splat
  %i.ox = icmp eq <8 x i16> %i.ov, zeroinitializer
  %i.oy = icmp eq <8 x i16> %i.ow, zeroinitializer
  %i.oz = icmp uge <8 x i16> %wide.load447, %broadcast.splat
  %i.pa = icmp uge <8 x i16> %wide.load448, %broadcast.splat
  %i.pb = select <8 x i1> %i.os, <8 x i1> %i.ox, <8 x i1> zeroinitializer
  %i.pc = select <8 x i1> %i.ou, <8 x i1> %i.oy, <8 x i1> zeroinitializer
  %i.pd = and <8 x i1> %i.op, %i.oz
  %10 = select <8 x i1> %8, <8 x i1> %i.pd, <8 x i1> zeroinitializer
  %i.pe = and <8 x i1> %i.oq, %i.pa
  %11 = select <8 x i1> %9, <8 x i1> %i.pe, <8 x i1> zeroinitializer
  %i.pf = or <8 x i1> %10, %i.pb
  %i.pg = or <8 x i1> %11, %i.pc
  %12 = or <8 x i1> %i.pf, %i.on
  %13 = or <8 x i1> %i.pg, %i.oo
  %predphi449 = select <8 x i1> %12, <8 x i16> %wide.load447, <8 x i16> %broadcast.splat
  %predphi450 = select <8 x i1> %13, <8 x i16> %wide.load448, <8 x i16> %broadcast.splat
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store <8 x i16> %predphi449, ptr %i.oj, align 2, !alias.scope !7345, !noalias !7342
  store <8 x i16> %predphi450, ptr %i.ph, align 2, !alias.scope !7345, !noalias !7342
  %index.next451 = add nuw i64 %index446, 16      ; 2 uses
  %i.pi = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.pi, label %middle.block452, label %vector.body445, !llvm.loop !7325

middle.block452:                                  ; preds = %vector.body445
  %cmp.n453 = icmp eq i64 %i.lj, %n.vec444
  br i1 %cmp.n453, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check457

vec.epilog.iter.check457:                         ; preds = %middle.block452
  %min.epilog.iters.check458.not.not = icmp eq i64 %i.og, 0
  br i1 %min.epilog.iters.check458.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph459, !prof !17

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check457
  %vec.epilog.resume.val454 = phi i64 [ %n.vec444, %vec.epilog.iter.check457 ], [ 0, %vector.main.loop.iter.check441 ]
  %n.vec460 = and i64 %i.lj, -8                   ; 3 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph459
  %index464 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph459 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pj = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pj
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pj
  %wide.load465 = load <8 x i16>, ptr %i.pk, align 2, !noalias !7342 ; 4 uses
  %i.pm = and <8 x i16> %wide.load465, splat (i16 32767) ; 2 uses
  %i.pn = icmp samesign ugt <8 x i16> %i.pm, splat (i16 32640) ; 3 uses
  %14 = xor <8 x i1> %i.pn, splat (i1 true)
  %i.po = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.pp = or <8 x i1> %i.pn, %i.po
  %i.pq = xor <8 x i1> %i.pp, splat (i1 true)
  %i.pr = or <8 x i16> %i.pm, %broadcast.splat462
  %i.ps = icmp eq <8 x i16> %i.pr, zeroinitializer
  %i.pt = icmp uge <8 x i16> %wide.load465, %broadcast.splat462
  %i.pu = select <8 x i1> %i.pq, <8 x i1> %i.ps, <8 x i1> zeroinitializer
  %i.pv = and <8 x i1> %i.po, %i.pt
  %15 = select <8 x i1> %14, <8 x i1> %i.pv, <8 x i1> zeroinitializer
  %i.pw = or <8 x i1> %15, %i.pu
  %16 = or <8 x i1> %i.pw, %i.pn
  %predphi466 = select <8 x i1> %16, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat462
  store <8 x i16> %predphi466, ptr %i.pl, align 2, !alias.scope !7345, !noalias !7342
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.px = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.px, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !7326

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lj, %n.vec460
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check455, %vec.epilog.iter.check457, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check455 ], [ %n.vec444, %vec.epilog.iter.check457 ], [ %n.vec460, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.py, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.py = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.pz = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pz
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pz
  %.val8.us12.i.i = load i16, ptr %i.qa, align 2, !noalias !7342, !noundef !5 ; 6 uses
  %i.qc = and i16 %.val8.us12.i.i, 32767          ; 2 uses
  %i.qd = icmp samesign ugt i16 %i.qc, 32640
  br i1 %i.qd, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split.i.i.us.i.i, label %.split7.i.i.us.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.u
  %i.qe = or i16 %i.qc, %i.kx
  %.not.i.i.us.i.i = icmp eq i16 %i.qe, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, label %bb.v

.split.i.i.us.i.i:                                ; preds = %bb.u
  %i.qf = icmp ult i16 %.val8.us12.i.i, %i.kx
  br i1 %i.qf, label %bb.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i

bb.v:                                             ; preds = %.split.i.i.us.i.i, %.split7.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i: ; preds = %bb.v, %.split.i.i.us.i.i, %.split7.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qg = phi i16 [ %i.kx, %bb.v ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.split.i.i.us.i.i ]
  store i16 %i.qg, ptr %i.qb, align 2, !alias.scope !7345, !noalias !7342
  %exitcond16.not.i.i = icmp eq i64 %i.py, %i.lj
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !7327

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qp, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qh = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qh
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qh
  %.val8.i.i = load i16, ptr %i.qi, align 2, !noalias !7342, !noundef !5 ; 4 uses
  %i.qk = and i16 %.val8.i.i, 32767
  %i.ql = icmp samesign ugt i16 %i.qk, 32640
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %i.qm = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.kx)
  %i.qn = or i1 %.not.i.i.i.i.i68, %i.ql
  %i.qo = select i1 %i.qn, i16 %.val8.i.i, i16 %i.qm
  store i16 %i.qo, ptr %i.qj, align 2, !alias.scope !7345, !noalias !7342
  %i.qp = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qq, align 2, !noalias !7342, !noundef !5 ; 4 uses
  %i.qs = and i16 %.val8.i.i.1, 32767
  %i.qt = icmp samesign ugt i16 %i.qs, 32640
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %i.qu = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.kx)
  %i.qv = or i1 %.not.i.i.i.i.i68.1, %i.qt
  %i.qw = select i1 %i.qv, i16 %.val8.i.i.1, i16 %i.qu
  store i16 %i.qw, ptr %i.qr, align 2, !alias.scope !7345, !noalias !7342
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qp, %i.lj
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i, !llvm.loop !7328

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block452, %vec.epilog.middle.block468, %middle.block429, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7341
  br label %.loopexit

bb.w:                                             ; preds = %bb.i
  %i.qx = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.qx, label %bb.x, label %.invoke389

bb.x:                                             ; preds = %bb.w
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.qz = load i16, ptr %i.qy, align 2, !noundef !5 ; 9 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.ra = and i16 %i.qz, 32767                    ; 3 uses
  %i.rb = icmp samesign ugt i16 %i.ra, 32640      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.qz, -1            ; 2 uses
  %i.rc = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.rd = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0170)
  %i.re = sub i64 %i.rd, %i.av
  %i.rf = call i64 @llvm.umin.i64(i64 %i.re, i64 %i.rc)
  %i.rg = call i64 @llvm.umin.i64(i64 %i.rf, i64 %i.at) ; 2 uses
  %i.rh = add nuw nsw i64 %i.rg, 1                ; 2 uses
  %min.iters.check507 = icmp samesign ult i64 %i.rg, 8
  br i1 %min.iters.check507, label %scalar.ph506.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph
  %i.ri = shl i64 %.sroa.4.0.copyload, 1
  %i.rj = add i64 %i.aw, %i.r
  %i.rk = add i64 %i.ri, %i.a
  %i.rl = sub i64 %i.rk, %i.rj
  %diff.check505 = icmp ugt i64 %i.rl, -16
  br i1 %diff.check505, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %vector.memcheck504
  %i.rm = and i64 %i.rh, 7                        ; 2 uses
  %i.rn = icmp eq i64 %i.rm, 0
  %i.ro = select i1 %i.rn, i64 8, i64 %i.rm
  %n.vec509 = sub nsw i64 %i.rh, %i.ro            ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat511 = shufflevector <8 x i1> %broadcast.splatinsert510, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rp = xor <8 x i1> %broadcast.splat511, splat (i1 true)
  %broadcast.splatinsert512 = insertelement <8 x i16> poison, i16 %i.ra, i64 0
  %broadcast.splat513 = shufflevector <8 x i16> %broadcast.splatinsert512, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert514 = insertelement <8 x i16> poison, i16 %i.qz, i64 0
  %broadcast.splat515 = shufflevector <8 x i16> %broadcast.splatinsert514, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep557 = getelementptr [2 x i8], ptr %i.q, i64 %.sroa.0.0170
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph508
  %index517 = phi i64 [ 0, %vector.ph508 ], [ %index.next520, %vector.body516 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index517
  %wide.load518 = load <8 x i16>, ptr %gep, align 2 ; 6 uses
  %i.rq = and <8 x i16> %wide.load518, splat (i16 32767)
  %i.rr = icmp samesign ugt <8 x i16> %i.rq, splat (i16 32640)
  %i.rs = select i1 %i.rb, <8 x i1> splat (i1 true), <8 x i1> %i.rr ; 2 uses
  %i.rt = xor <8 x i1> %i.rs, splat (i1 true)     ; 2 uses
  %i.ru = icmp slt <8 x i16> %wide.load518, zeroinitializer ; 2 uses
  %i.rv = and <8 x i1> %i.rt, %i.rp
  %i.rw = icmp ule <8 x i16> %broadcast.splat515, %wide.load518
  %i.rx = or <8 x i16> %wide.load518, %broadcast.splat513
  %i.ry = icmp eq <8 x i16> %i.rx, zeroinitializer
  %i.rz = and <8 x i1> %broadcast.splat511, %i.rt
  %i.sa = icmp uge <8 x i16> %broadcast.splat515, %wide.load518
  %.not528 = or <8 x i1> %i.ru, %i.sa
  %i.sb = select <8 x i1> %i.rz, <8 x i1> %.not528, <8 x i1> zeroinitializer
  %i.sc = select <8 x i1> %i.ru, <8 x i1> %i.rw, <8 x i1> %i.ry
  %i.sd = select <8 x i1> %i.rv, <8 x i1> %i.sc, <8 x i1> zeroinitializer
  %i.se = or <8 x i1> %i.sd, %i.sb
  %i.sf = or <8 x i1> %i.se, %i.rs
  %predphi519 = select <8 x i1> %i.sf, <8 x i16> %broadcast.splat515, <8 x i16> %wide.load518
  %gep558 = getelementptr [2 x i8], ptr %invariant.gep557, i64 %index517
  store <8 x i16> %predphi519, ptr %gep558, align 2
  %index.next520 = add nuw i64 %index517, 8       ; 2 uses
  %i.sg = icmp eq i64 %index.next520, %n.vec509
  br i1 %i.sg, label %scalar.ph506.preheader, label %vector.body516, !llvm.loop !7329

scalar.ph506.preheader:                           ; preds = %vector.body516, %vector.memcheck504, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %vector.memcheck504 ], [ 0, %.lr.ph ], [ %n.vec509, %vector.body516 ]
  br label %scalar.ph506

scalar.ph506:                                     ; preds = %scalar.ph506.preheader, %bb.ac
  %.sroa.020.0167 = phi i64 [ %i.sh, %bb.ac ], [ %.sroa.020.0167.ph, %scalar.ph506.preheader ] ; 4 uses
  %i.sh = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.si = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.rc
  br i1 %exitcond.not, label %.invoke389, label %bb.y

bb.y:                                             ; preds = %scalar.ph506
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.si
  %i.sk = load i16, ptr %i.sj, align 2, !noundef !5 ; 6 uses
  %i.sl = and i16 %i.sk, 32767
  %i.sm = icmp samesign ugt i16 %i.sl, 32640
  %or.cond.i.i = select i1 %i.rb, i1 true, i1 %i.sm
  br i1 %or.cond.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not1.i.i = icmp sgt i16 %i.sk, -1             ; 2 uses
  br i1 %.not.i.i71, label %.split.i, label %bb.aa

.split.i:                                         ; preds = %bb.z
  %i.sn = icmp ult i16 %i.qz, %i.sk
  %spec.select.i.i = and i1 %.not1.i.i, %i.sn
  br i1 %spec.select.i.i, label %bb.ab, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit

bb.aa:                                            ; preds = %bb.z
  br i1 %.not1.i.i, label %.split4.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i

.split4.i:                                        ; preds = %bb.aa
  %i.so = or i16 %i.sk, %i.ra
  %.not.i72 = icmp eq i16 %i.so, 0
  br i1 %.not.i72, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, label %bb.ab

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i: ; preds = %bb.aa
  %i.sp = icmp samesign ugt i16 %i.qz, %i.sk
  br i1 %i.sp, label %bb.ab, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit

bb.ab:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit: ; preds = %bb.ab, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i, %bb.y
  %i.sq = phi i16 [ %i.sk, %bb.ab ], [ %i.qz, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i ], [ %i.qz, %.split4.i ], [ %i.qz, %.split.i ], [ %i.qz, %bb.y ]
  %i.sr = add nuw nsw i64 %.sroa.020.0167, %.sroa.0.0170 ; 3 uses
  %i.ss = icmp ult i64 %i.sr, %i.n
  br i1 %i.ss, label %bb.ac, label %.invoke389
end_hunk_0
begin_hunk_1_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MinimumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecEB6_:bb.a
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !7402, !noalias !7403
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7402, !noalias !7403
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit92.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !7402, !noalias !7403
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !7402, !noalias !7403
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7402, !noalias !7403
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !7402, !noalias !7403, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit92.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !7402, !noalias !7403
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !7402, !noalias !7403
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7402, !noalias !7403, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7402, !noalias !7403
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
  br i1 %i.aj, label %bb.x, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.082.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.s, label %.invoke385

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !11

.invoke:                                          ; preds = %bb.t, %bb.s, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.082.0.copyload, %bb.s ], [ %.sroa.082.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0170, %bb.m ], [ %.sroa.0.0170, %bb.t ]
  %i.ij = phi i64 [ %i.la, %bb.s ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.lf, %bb.t ]
  %i.ik = phi i64 [ %4, %bb.s ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.t ]
  %i.il = phi ptr [ @13, %bb.s ], [ @10, %bb.j ], [ @9, %bb.l ], [ @8, %bb.m ], [ @12, %bb.t ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7404
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7405
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit93

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B25_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit93

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7405
  call void @llvm.experimental.noalias.scope.decl(metadata !7406)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !7406, !noalias !7407, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !7406, !noalias !7407, !noundef !5 ; 2 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !7408, !noalias !7409, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !7408, !noalias !7409, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !7408, !noalias !7409, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !7410, !noalias !7409, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
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
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !7411 ; 6 uses
  %wide.load410 = load <8 x i16>, ptr %i.jd, align 2, !noalias !7411 ; 5 uses
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
  %7 = select <8 x i1> %i.jv, <8 x i1> %i.jx, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jo, <8 x i1> splat (i1 true), <8 x i1> %i.jq
  %8 = xor <8 x i1> %i.ka, splat (i1 true)
  %i.kb = or <8 x i1> %7, %8
  %9 = or <8 x i1> %i.kb, %i.jz
  %i.kc = or <8 x i1> %9, %i.jy
  %i.kd = or <8 x i1> %i.kc, %i.jg
  %predphi = select <8 x i1> %i.kd, <8 x i16> %wide.load, <8 x i16> %wide.load410
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !7411
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !7374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.kf, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.kf = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kg = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kh = add i64 %i.kg, %i.iu                    ; 2 uses
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kh
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kh
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kg
  %i.kl = load i16, ptr %i.ki, align 2, !noalias !7411, !noundef !5 ; 10 uses
  %i.km = load i16, ptr %i.kj, align 2, !noalias !7411, !noundef !5 ; 5 uses
  %i.kn = and i16 %i.kl, 32767
  %i.ko = icmp samesign ugt i16 %i.kn, 32640
  br i1 %i.ko, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %i.kp = and i16 %i.km, 32767                    ; 2 uses
  %i.kq = icmp samesign ugt i16 %i.kp, 32640
  br i1 %i.kq, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i.i = icmp sgt i16 %i.kl, -1
  %.not1.i.i.i.i.i = icmp slt i16 %i.km, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  br i1 %.not1.i.i.i.i.i, label %.split5.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.q
  %i.kr = icmp samesign ugt i16 %i.kl, %i.km
  br i1 %i.kr, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

.split5.i.i.i.i:                                  ; preds = %bb.q
  %i.ks = or i16 %i.kp, %i.kl
  %.not.i.i.i.i = icmp eq i16 %i.ks, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.r

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i: ; preds = %bb.p
  %i.kt = icmp ult i16 %i.kl, %i.km
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kt
  br i1 %spec.select.i.i.i.i.i, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

bb.r:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i: ; preds = %bb.r, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i, %bb.o, %scalar.ph
  %i.ku = phi i16 [ %i.km, %bb.r ], [ %i.kl, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i ], [ %i.kl, %.split5.i.i.i.i ], [ %i.kl, %.split.i.i.i.i ], [ %i.kl, %scalar.ph ], [ %i.kl, %bb.o ]
  store i16 %i.ku, ptr %i.kk, align 2, !noalias !7411
  %exitcond.not.i.i = icmp eq i64 %i.kf, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %scalar.ph, !llvm.loop !7375

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7404
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.al, %bb.y, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit
  %i.kv = add i64 %.sroa.0.0170, %i.x
  %i.kw = load i64, ptr %i.ac, align 8, !alias.scope !7402, !noalias !7403, !noundef !5 ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kx, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit, label %bb.f

bb.s:                                             ; preds = %bb.k
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kz = load i16, ptr %i.ky, align 2, !noundef !5 ; 11 uses
  %i.la = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.lb = icmp ult i64 %i.la, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.la, %4
  %or.cond58 = or i1 %i.lb, %.not
  br i1 %or.cond58, label %.invoke, label %bb.t, !prof !11

.invoke385:                                       ; preds = %bb.x, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81, %bb.af, %.lr.ph169
  %i.lc = phi i64 [ %i.te, %bb.af ], [ %i.sw, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit ], [ %i.tb, %.lr.ph169 ], [ %i.ts, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81 ], [ %i.sn, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.x ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ld = phi i64 [ %6, %bb.af ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.x ], [ %6, %bb.k ]
  %i.le = phi ptr [ @18, %bb.af ], [ @16, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit ], [ @17, %.lr.ph169 ], [ @19, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit81 ], [ @15, %scalar.ph506 ], [ @14, %bb.x ], [ @11, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lc, i64 noundef %i.ld, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.le) #20
          to label %.cont386 unwind label %.loopexit.split-lp

.cont386:                                         ; preds = %.invoke385
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.lf = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lg = icmp ult i64 %i.lf, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.lf, %i.n
  %or.cond59 = or i1 %i.lg, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.u, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7412
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.x
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lh, ptr noundef nonnull readonly %i.lj, ptr noundef nonnull align 2 %i.li, ptr noundef nonnull %i.lk)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !7413)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !7413, !noalias !7414, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !7413, !noalias !7414, !noundef !5 ; 6 uses
  %i.ll = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !7415, !noalias !7414, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66413 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !7415, !noalias !7414, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i412 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.lm = and i16 %i.kz, 32767                    ; 4 uses
  %i.ln = icmp samesign ugt i16 %i.lm, 32640
  %i.lo = sub i64 %.val.i.i.i66413, %.val1.i.i.i412
  %diff.check414 = icmp ugt i64 %i.lo, -32        ; 3 uses
  br i1 %i.ln, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check416 = icmp ult i64 %i.ll, 4
  %or.cond523 = or i1 %min.iters.check416, %diff.check414
  br i1 %or.cond523, label %.lr.ph.split.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check417 = icmp ult i64 %i.ll, 16
  br i1 %min.iters.check417, label %vec.epilog.ph, label %vector.ph418

vector.ph418:                                     ; preds = %vector.main.loop.iter.check
  %i.lp = and i64 %i.ll, 12
  %n.vec419 = and i64 %i.ll, -16                  ; 4 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.ph418, %vector.body420
  %index421 = phi i64 [ 0, %vector.ph418 ], [ %index.next424, %vector.body420 ] ; 2 uses
  %i.lq = add i64 %index421, %.val.i.i62          ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lq ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %wide.load422 = load <8 x i16>, ptr %i.lr, align 2, !noalias !7413
  %wide.load423 = load <8 x i16>, ptr %i.lt, align 2, !noalias !7413
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store <8 x i16> %wide.load422, ptr %i.ls, align 2, !alias.scope !7416, !noalias !7413
  store <8 x i16> %wide.load423, ptr %i.lu, align 2, !alias.scope !7416, !noalias !7413
  %index.next424 = add nuw i64 %index421, 16      ; 2 uses
  %i.lv = icmp eq i64 %index.next424, %n.vec419
  br i1 %i.lv, label %middle.block425, label %vector.body420, !llvm.loop !7390

middle.block425:                                  ; preds = %vector.body420
  %cmp.n426 = icmp eq i64 %i.ll, %n.vec419
  br i1 %cmp.n426, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block425
  %min.epilog.iters.check = icmp eq i64 %i.lp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec419, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec427 = and i64 %i.ll, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index428 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 2 uses
  %i.lw = add i64 %index428, %.val.i.i62          ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lw
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lw
  %wide.load429 = load <4 x i16>, ptr %i.lx, align 2, !noalias !7413
  store <4 x i16> %wide.load429, ptr %i.ly, align 2, !alias.scope !7416, !noalias !7413
  %index.next430 = add nuw i64 %index428, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next430, %n.vec427
  br i1 %i.lz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7391

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n431 = icmp eq i64 %i.ll, %n.vec427
  br i1 %cmp.n431, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec419, %vec.epilog.iter.check ], [ %n.vec427, %vec.epilog.middle.block ] ; 3 uses
  %i.ma = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter545 = and i64 %i.ma, 3                 ; 2 uses
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.mb, %.lr.ph.split.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.mb = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.mc = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mc
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mc
  %.val8.us.i.i.prol = load i16, ptr %i.md, align 2, !noalias !7413, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.me, align 2, !alias.scope !7416, !noalias !7413
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter545
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !7392

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.mb, %.lr.ph.split.us.i.i.prol ]
  %i.mf = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.mg = add i64 %i.mf, %.val.i.i62
  %i.mh = icmp ugt i64 %i.mg, -4
  br i1 %i.mh, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.prol.loopexit
  %invariant.op556 = add i64 1, %.val.i.i62
  %invariant.op558 = add i64 2, %.val.i.i62
  %invariant.op560 = add i64 3, %.val.i.i62
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %.lr.ph.split.us.i.i.preheader.new ], [ %i.mp, %.lr.ph.split.us.i.i ] ; 5 uses
  %i.mi = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mi
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mi
  %.val8.us.i.i = load i16, ptr %i.mj, align 2, !noalias !7413, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mk, align 2, !alias.scope !7416, !noalias !7413
  %.reass557 = add i64 %.sroa.0.010.us.i.i, %invariant.op556 ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass557
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass557
  %.val8.us.i.i.1 = load i16, ptr %i.ml, align 2, !noalias !7413, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.mm, align 2, !alias.scope !7416, !noalias !7413
  %.reass559 = add i64 %.sroa.0.010.us.i.i, %invariant.op558 ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass559
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass559
  %.val8.us.i.i.2 = load i16, ptr %i.mn, align 2, !noalias !7413, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mo, align 2, !alias.scope !7416, !noalias !7413
  %i.mp = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass561 = add i64 %.sroa.0.010.us.i.i, %invariant.op560 ; 2 uses
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass561
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass561
  %.val8.us.i.i.3 = load i16, ptr %i.mq, align 2, !noalias !7413, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mr, align 2, !alias.scope !7416, !noalias !7413
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mp, %i.ll
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !7393

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp slt i16 %i.kz, 0
  br i1 %.not1.i.i.i.i.i67, label %iter.check453, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.ll, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check414
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.ll, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.ms = and i64 %i.ll, 12
  %n.vec478 = and i64 %i.ll, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.mt = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mt ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.mu, align 2, !noalias !7413 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.mw, align 2, !noalias !7413 ; 4 uses
  %i.mx = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.my = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.mz = icmp samesign ult <8 x i16> %i.mx, splat (i16 32641)
  %i.na = icmp samesign ult <8 x i16> %i.my, splat (i16 32641)
  %i.nb = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.nc = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.nd = and <8 x i1> %i.nb, %i.mz
  %i.ne = and <8 x i1> %i.nc, %i.na
  %i.nf = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.ng = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.nh = select <8 x i1> %i.nd, <8 x i16> %i.nf, <8 x i16> %wide.load483
  %i.ni = select <8 x i1> %i.ne, <8 x i16> %i.ng, <8 x i16> %wide.load484
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <8 x i16> %i.nh, ptr %i.mv, align 2, !alias.scope !7416, !noalias !7413
  store <8 x i16> %i.ni, ptr %i.nj, align 2, !alias.scope !7416, !noalias !7413
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.nk = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.nk, label %middle.block486, label %vector.body481, !llvm.loop !7394

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.ll, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.ms, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !15

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.ll, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.nl = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nl
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nl
  %wide.load499 = load <4 x i16>, ptr %i.nm, align 2, !noalias !7413 ; 4 uses
  %i.no = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.np = icmp samesign ult <4 x i16> %i.no, splat (i16 32641)
  %i.nq = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.nr = and <4 x i1> %i.nq, %i.np
  %i.ns = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nt = select <4 x i1> %i.nr, <4 x i16> %i.ns, <4 x i16> %wide.load499
  store <4 x i16> %i.nt, ptr %i.nn, align 2, !alias.scope !7416, !noalias !7413
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.nu = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.nu, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !7395

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.ll, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %i.nv = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nw = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.nx = add i64 %.val6.i.i63, %i.nw
  %xtraiter = and i64 %i.nv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.ny = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.nz = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nz
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nz
  %.val8.i.i.prol = load i16, ptr %i.oa, align 2, !noalias !7413, !noundef !5 ; 4 uses
  %i.oc = and i16 %.val8.i.i.prol, 32767
  %i.od = icmp samesign ult i16 %i.oc, 32641
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %or.cond.i.i.prol = and i1 %.not.i.i.i.i.i68.prol, %i.od
  %spec.select.i.i.prol = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.kz)
  %i.oe = select i1 %or.cond.i.i.prol, i16 %spec.select.i.i.prol, i16 %.val8.i.i.prol
  store i16 %i.oe, ptr %i.ob, align 2, !alias.scope !7416, !noalias !7413
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.ny, %.lr.ph.split.split.i.i.prol ]
  %i.of = icmp eq i64 %i.nx, %.val.i.i62
  br i1 %i.of, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check453:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check436 = icmp ult i64 %i.ll, 8
  %or.cond525 = or i1 %min.iters.check436, %diff.check414
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check453
  %min.iters.check438 = icmp ult i64 %i.ll, 16
  br i1 %min.iters.check438, label %vec.epilog.ph457, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.og = and i64 %i.ll, 8
  %n.vec440 = and i64 %i.ll, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert441 = insertelement <8 x i16> poison, i16 %i.lm, i64 0
  %broadcast.splat442 = shufflevector <8 x i16> %broadcast.splatinsert441, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph439, %vector.body443
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next449, %vector.body443 ] ; 2 uses
  %i.oh = add i64 %index444, %.val.i.i62          ; 2 uses
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oh ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oh ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %wide.load445 = load <8 x i16>, ptr %i.oi, align 2, !noalias !7413 ; 5 uses
  %wide.load446 = load <8 x i16>, ptr %i.ok, align 2, !noalias !7413 ; 5 uses
  %i.ol = and <8 x i16> %wide.load445, splat (i16 32767)
  %i.om = and <8 x i16> %wide.load446, splat (i16 32767)
  %i.on = icmp samesign ugt <8 x i16> %i.ol, splat (i16 32640) ; 3 uses
  %i.oo = icmp samesign ugt <8 x i16> %i.om, splat (i16 32640) ; 3 uses
  %10 = xor <8 x i1> %i.on, splat (i1 true)
  %11 = xor <8 x i1> %i.oo, splat (i1 true)
  %i.op = icmp sgt <8 x i16> %wide.load445, splat (i16 -1) ; 2 uses
  %i.oq = icmp sgt <8 x i16> %wide.load446, splat (i16 -1) ; 2 uses
  %i.or = or <8 x i1> %i.on, %i.op
  %i.os = xor <8 x i1> %i.or, splat (i1 true)
  %i.ot = or <8 x i1> %i.oo, %i.oq
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
  %12 = select <8 x i1> %10, <8 x i1> %i.pd, <8 x i1> zeroinitializer
  %i.pe = and <8 x i1> %i.oq, %i.pa
  %13 = select <8 x i1> %11, <8 x i1> %i.pe, <8 x i1> zeroinitializer
  %i.pf = or <8 x i1> %12, %i.pb
  %i.pg = or <8 x i1> %13, %i.pc
  %14 = or <8 x i1> %i.pf, %i.on
  %15 = or <8 x i1> %i.pg, %i.oo
  %predphi447 = select <8 x i1> %14, <8 x i16> %wide.load445, <8 x i16> %broadcast.splat
  %predphi448 = select <8 x i1> %15, <8 x i16> %wide.load446, <8 x i16> %broadcast.splat
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store <8 x i16> %predphi447, ptr %i.oj, align 2, !alias.scope !7416, !noalias !7413
  store <8 x i16> %predphi448, ptr %i.ph, align 2, !alias.scope !7416, !noalias !7413
  %index.next449 = add nuw i64 %index444, 16      ; 2 uses
  %i.pi = icmp eq i64 %index.next449, %n.vec440
  br i1 %i.pi, label %middle.block450, label %vector.body443, !llvm.loop !7396

middle.block450:                                  ; preds = %vector.body443
  %cmp.n451 = icmp eq i64 %i.ll, %n.vec440
  br i1 %cmp.n451, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block450
  %min.epilog.iters.check456.not.not = icmp eq i64 %i.og, 0
  br i1 %min.epilog.iters.check456.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph457, !prof !17

vec.epilog.ph457:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check455
  %vec.epilog.resume.val452 = phi i64 [ %n.vec440, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec458 = and i64 %i.ll, -8                   ; 3 uses
  %broadcast.splatinsert459 = insertelement <8 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat460 = shufflevector <8 x i16> %broadcast.splatinsert459, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.lm, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph457
  %index464 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph457 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pj = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pj
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pj
  %wide.load465 = load <8 x i16>, ptr %i.pk, align 2, !noalias !7413 ; 5 uses
  %i.pm = and <8 x i16> %wide.load465, splat (i16 32767)
  %i.pn = icmp samesign ugt <8 x i16> %i.pm, splat (i16 32640) ; 3 uses
  %16 = xor <8 x i1> %i.pn, splat (i1 true)
  %i.po = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.pp = or <8 x i1> %i.pn, %i.po
  %i.pq = xor <8 x i1> %i.pp, splat (i1 true)
  %i.pr = icmp uge <8 x i16> %wide.load465, %broadcast.splat460
  %i.ps = or <8 x i16> %wide.load465, %broadcast.splat462
  %i.pt = icmp eq <8 x i16> %i.ps, zeroinitializer
  %i.pu = select <8 x i1> %i.pq, <8 x i1> %i.pr, <8 x i1> zeroinitializer
  %i.pv = and <8 x i1> %i.po, %i.pt
  %17 = select <8 x i1> %16, <8 x i1> %i.pv, <8 x i1> zeroinitializer
  %i.pw = or <8 x i1> %17, %i.pu
  %18 = or <8 x i1> %i.pw, %i.pn
  %predphi466 = select <8 x i1> %18, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat460
  store <8 x i16> %predphi466, ptr %i.pl, align 2, !alias.scope !7416, !noalias !7413
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.px = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.px, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !7397

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.ll, %n.vec458
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check453, %vec.epilog.iter.check455, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check453 ], [ %n.vec440, %vec.epilog.iter.check455 ], [ %n.vec458, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.py, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.py = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.pz = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pz
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pz
  %.val8.us12.i.i = load i16, ptr %i.qa, align 2, !noalias !7413, !noundef !5 ; 7 uses
  %i.qc = and i16 %.val8.us12.i.i, 32767
  %i.qd = icmp samesign ugt i16 %i.qc, 32640
  br i1 %i.qd, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split7.i.i.us.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i: ; preds = %bb.v
  %i.qe = icmp ult i16 %.val8.us12.i.i, %i.kz
  br i1 %i.qe, label %bb.w, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.v
  %i.qf = or i16 %.val8.us12.i.i, %i.lm
  %.not.i.i.us.i.i = icmp eq i16 %i.qf, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, label %bb.w

bb.w:                                             ; preds = %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i: ; preds = %bb.w, %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qg = phi i16 [ %i.kz, %bb.w ], [ %.val8.us12.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ]
  store i16 %i.qg, ptr %i.qb, align 2, !alias.scope !7416, !noalias !7413
  %exitcond16.not.i.i = icmp eq i64 %i.py, %i.ll
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !7398

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qn, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qh = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qh
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qh
  %.val8.i.i = load i16, ptr %i.qi, align 2, !noalias !7413, !noundef !5 ; 4 uses
  %i.qk = and i16 %.val8.i.i, 32767
  %i.ql = icmp samesign ult i16 %i.qk, 32641
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %or.cond.i.i = and i1 %.not.i.i.i.i.i68, %i.ql
  %spec.select.i.i = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.kz)
  %i.qm = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %.val8.i.i
  store i16 %i.qm, ptr %i.qj, align 2, !alias.scope !7416, !noalias !7413
  %i.qn = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qo, align 2, !noalias !7413, !noundef !5 ; 4 uses
  %i.qq = and i16 %.val8.i.i.1, 32767
  %i.qr = icmp samesign ult i16 %i.qq, 32641
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %or.cond.i.i.1 = and i1 %.not.i.i.i.i.i68.1, %i.qr
  %spec.select.i.i.1 = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.kz)
  %i.qs = select i1 %or.cond.i.i.1, i16 %spec.select.i.i.1, i16 %.val8.i.i.1
  store i16 %i.qs, ptr %i.qp, align 2, !alias.scope !7416, !noalias !7413
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qn, %i.ll
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i, !llvm.loop !7399

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block450, %vec.epilog.middle.block468, %middle.block425, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7412
  br label %.loopexit

bb.x:                                             ; preds = %bb.i
  %i.qt = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.qt, label %bb.y, label %.invoke385

bb.y:                                             ; preds = %bb.x
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.qv = load i16, ptr %i.qu, align 2, !noundef !5 ; 11 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.qw = and i16 %i.qv, 32767
  %i.qx = icmp samesign ugt i16 %i.qw, 32640      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.qv, -1            ; 2 uses
  %i.qy = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.qz = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0170)
  %i.ra = sub i64 %i.qz, %i.av
  %i.rb = call i64 @llvm.umin.i64(i64 %i.ra, i64 %i.qy)
  %i.rc = call i64 @llvm.umin.i64(i64 %i.rb, i64 %i.at) ; 2 uses
  %i.rd = add nuw nsw i64 %i.rc, 1                ; 2 uses
  %min.iters.check507 = icmp samesign ult i64 %i.rc, 8
  br i1 %min.iters.check507, label %scalar.ph506.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph
  %i.re = shl i64 %.sroa.4.0.copyload, 1
  %i.rf = add i64 %i.aw, %i.r
  %i.rg = add i64 %i.re, %i.a
  %i.rh = sub i64 %i.rg, %i.rf
  %diff.check505 = icmp ugt i64 %i.rh, -16
  br i1 %diff.check505, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %vector.memcheck504
  %i.ri = and i64 %i.rd, 7                        ; 2 uses
  %i.rj = icmp eq i64 %i.ri, 0
  %i.rk = select i1 %i.rj, i64 8, i64 %i.ri
  %n.vec509 = sub nsw i64 %i.rd, %i.rk            ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat511 = shufflevector <8 x i1> %broadcast.splatinsert510, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert512 = insertelement <8 x i1> poison, i1 %i.qx, i64 0
  %broadcast.splat513 = shufflevector <8 x i1> %broadcast.splatinsert512, <8 x i1> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.rl = xor <8 x i1> %broadcast.splat513, splat (i1 true)
  %i.rm = xor <8 x i1> %broadcast.splat511, splat (i1 true)
  %broadcast.splatinsert514 = insertelement <8 x i16> poison, i16 %i.qv, i64 0
  %broadcast.splat515 = shufflevector <8 x i16> %broadcast.splatinsert514, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep554 = getelementptr [2 x i8], ptr %i.q, i64 %.sroa.0.0170
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph508
  %index517 = phi i64 [ 0, %vector.ph508 ], [ %index.next520, %vector.body516 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index517
  %wide.load518 = load <8 x i16>, ptr %gep, align 2 ; 5 uses
  %i.rn = and <8 x i16> %wide.load518, splat (i16 32767) ; 2 uses
  %i.ro = icmp samesign ugt <8 x i16> %i.rn, splat (i16 32640) ; 2 uses
  %i.rp = select <8 x i1> %broadcast.splat513, <8 x i1> splat (i1 true), <8 x i1> %i.ro
  %i.rq = xor <8 x i1> %i.rp, splat (i1 true)     ; 2 uses
  %i.rr = icmp slt <8 x i16> %wide.load518, zeroinitializer ; 3 uses
  %i.rs = and <8 x i1> %i.rq, %i.rm
  %i.rt = icmp ult <8 x i16> %broadcast.splat515, %wide.load518
  %i.ru = and <8 x i1> %i.rr, %i.rt
  %i.rv = and <8 x i1> %broadcast.splat511, %i.rq ; 2 uses
  %i.rw = xor <8 x i1> %i.rr, splat (i1 true)
  %i.rx = icmp ule <8 x i16> %broadcast.splat515, %wide.load518
  %i.ry = select <8 x i1> %i.rv, <8 x i1> %i.rr, <8 x i1> zeroinitializer
  %i.rz = or <8 x i16> %i.rn, %broadcast.splat515
  %i.sa = icmp eq <8 x i16> %i.rz, zeroinitializer
  %i.sb = select <8 x i1> %i.rl, <8 x i1> %i.ro, <8 x i1> zeroinitializer
  %i.sc = and <8 x i1> %i.rx, %i.rw
  %i.sd = select <8 x i1> %i.rv, <8 x i1> %i.sc, <8 x i1> zeroinitializer
  %i.se = select <8 x i1> %i.ry, <8 x i1> %i.sa, <8 x i1> zeroinitializer
  %i.sf = xor <8 x i1> %i.ru, splat (i1 true)
  %i.sg = select <8 x i1> %i.rs, <8 x i1> %i.sf, <8 x i1> zeroinitializer
  %i.sh = or <8 x i1> %i.sg, %i.se
  %i.si = or <8 x i1> %i.sh, %i.sd
  %i.sj = or <8 x i1> %i.si, %i.sb
  %i.sk = or <8 x i1> %i.sj, %broadcast.splat513
  %predphi519 = select <8 x i1> %i.sk, <8 x i16> %broadcast.splat515, <8 x i16> %wide.load518
  %gep555 = getelementptr [2 x i8], ptr %invariant.gep554, i64 %index517
  store <8 x i16> %predphi519, ptr %gep555, align 2
  %index.next520 = add nuw i64 %index517, 8       ; 2 uses
  %i.sl = icmp eq i64 %index.next520, %n.vec509
  br i1 %i.sl, label %scalar.ph506.preheader, label %vector.body516, !llvm.loop !7400

scalar.ph506.preheader:                           ; preds = %vector.body516, %vector.memcheck504, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %vector.memcheck504 ], [ 0, %.lr.ph ], [ %n.vec509, %vector.body516 ]
  br label %scalar.ph506

scalar.ph506:                                     ; preds = %scalar.ph506.preheader, %bb.ae
  %.sroa.020.0167 = phi i64 [ %i.sm, %bb.ae ], [ %.sroa.020.0167.ph, %scalar.ph506.preheader ] ; 4 uses
  %i.sm = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.sn = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.qy
  br i1 %exitcond.not, label %.invoke385, label %bb.z

bb.z:                                             ; preds = %scalar.ph506
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.sn
  %i.sp = load i16, ptr %i.so, align 2, !noundef !5 ; 5 uses
  br i1 %i.qx, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.sq = and i16 %i.sp, 32767                    ; 2 uses
  %i.sr = icmp samesign ugt i16 %i.sq, 32640
  br i1 %i.sr, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not1.i.i = icmp slt i16 %i.sp, 0              ; 2 uses
  br i1 %.not.i.i71, label %bb.ac, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not1.i.i, label %.split5.i, label %.split.i

.split.i:                                         ; preds = %bb.ac
  %i.ss = icmp samesign ugt i16 %i.qv, %i.sp
  br i1 %i.ss, label %bb.ad, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit

.split5.i:                                        ; preds = %bb.ac
  %i.st = or i16 %i.sq, %i.qv
  %.not.i73 = icmp eq i16 %i.st, 0
  br i1 %.not.i73, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, label %bb.ad

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i: ; preds = %bb.ab
  %i.su = icmp ult i16 %i.qv, %i.sp
  %spec.select.i.i72 = and i1 %.not1.i.i, %i.su
end_hunk_1
begin_hunk_2_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MaximumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecEB6_:bb.a
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
  %i.ij = phi i64 [ %i.ky, %bb.r ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.ld, %bb.s ]
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
  %7 = or <8 x i1> %i.ka, %i.jy
  %i.kb = or <8 x i1> %7, %i.jj
  %predphi = select <8 x i1> %i.kb, <8 x i16> %wide.load, <8 x i16> %wide.load414
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !7670
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %middle.block, label %vector.body, !llvm.loop !7633

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.kd, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.kd = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.ke = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kf = add i64 %i.ke, %i.iu                    ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kf
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kf
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ke
  %i.kj = load i16, ptr %i.kg, align 2, !noalias !7670, !noundef !5 ; 8 uses
  %i.kk = load i16, ptr %i.kh, align 2, !noalias !7670, !noundef !5 ; 6 uses
  %i.kl = and i16 %i.kj, 32767                    ; 2 uses
  %i.km = icmp samesign ugt i16 %i.kl, 31744
  %i.kn = and i16 %i.kk, 32767
  %i.ko = icmp samesign ugt i16 %i.kn, 31744
  %or.cond.i.i.i.i.i = select i1 %i.km, i1 true, i1 %i.ko
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp sgt i16 %i.kj, -1
  %.not1.i.i.i.i.i = icmp sgt i16 %i.kk, -1       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i, label %bb.p

.split.i.i.i.i:                                   ; preds = %bb.o
  %i.kp = icmp ult i16 %i.kj, %i.kk
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kp
  br i1 %spec.select.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not1.i.i.i.i.i, label %.split4.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.p
  %i.kq = or i16 %i.kk, %i.kl
  %.not.i.i.i.i = icmp eq i16 %i.kq, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.q

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i: ; preds = %bb.p
  %i.kr = icmp samesign ugt i16 %i.kj, %i.kk
  br i1 %i.kr, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i: ; preds = %bb.q, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i, %scalar.ph
  %i.ks = phi i16 [ %i.kk, %bb.q ], [ %i.kj, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i ], [ %i.kj, %.split4.i.i.i.i ], [ %i.kj, %.split.i.i.i.i ], [ %i.kj, %scalar.ph ]
  store i16 %i.ks, ptr %i.ki, align 2, !noalias !7670
  %exitcond.not.i.i = icmp eq i64 %i.kd, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %scalar.ph, !llvm.loop !7634

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7663
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ai, %bb.x, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit
  %i.kt = add i64 %.sroa.0.0170, %i.x
  %i.ku = load i64, ptr %i.ac, align 8, !alias.scope !7661, !noalias !7662, !noundef !5 ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kv, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit, label %bb.f

bb.r:                                             ; preds = %bb.k
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kx = load i16, ptr %i.kw, align 2, !noundef !5 ; 12 uses
  %i.ky = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.kz = icmp ult i64 %i.ky, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.ky, %4
  %or.cond58 = or i1 %i.kz, %.not
  br i1 %or.cond58, label %.invoke, label %bb.s, !prof !11

.invoke389:                                       ; preds = %bb.w, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81, %bb.ad, %.lr.ph169
  %i.la = phi i64 [ %i.sz, %bb.ad ], [ %i.sr, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit ], [ %i.sw, %.lr.ph169 ], [ %i.tn, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81 ], [ %i.si, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.w ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.lb = phi i64 [ %6, %bb.ad ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.w ], [ %6, %bb.k ]
  %i.lc = phi ptr [ @18, %bb.ad ], [ @16, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit ], [ @17, %.lr.ph169 ], [ @19, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81 ], [ @15, %scalar.ph506 ], [ @14, %bb.w ], [ @11, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.la, i64 noundef %i.lb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lc) #20
          to label %.cont390 unwind label %.loopexit.split-lp

.cont390:                                         ; preds = %.invoke389
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.ld = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.le = icmp ult i64 %i.ld, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.ld, %i.n
  %or.cond59 = or i1 %i.le, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7671
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.x
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lg, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1X_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lf, ptr noundef nonnull readonly %i.lh, ptr noundef nonnull align 2 %i.lg, ptr noundef nonnull %i.li)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7672)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !7672, !noalias !7673, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !7672, !noalias !7673, !noundef !5 ; 6 uses
  %i.lj = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !7674, !noalias !7673, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66417 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !7674, !noalias !7673, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i416 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.lk = and i16 %i.kx, 32767
  %i.ll = icmp samesign ugt i16 %i.lk, 31744
  %i.lm = sub i64 %.val.i.i.i66417, %.val1.i.i.i416
  %diff.check418 = icmp ugt i64 %i.lm, -32        ; 3 uses
  br i1 %i.ll, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check420 = icmp ult i64 %i.lj, 4
  %or.cond523 = or i1 %min.iters.check420, %diff.check418
  br i1 %or.cond523, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check421 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph422

vector.ph422:                                     ; preds = %vector.main.loop.iter.check
  %i.ln = and i64 %i.lj, 12
  %n.vec423 = and i64 %i.lj, -16                  ; 4 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.ph422, %vector.body424
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 2 uses
  %i.lo = add i64 %index425, %.val.i.i62          ; 2 uses
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lo ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %wide.load426 = load <8 x i16>, ptr %i.lp, align 2, !noalias !7672
  %wide.load427 = load <8 x i16>, ptr %i.lr, align 2, !noalias !7672
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store <8 x i16> %wide.load426, ptr %i.lq, align 2, !alias.scope !7675, !noalias !7672
  store <8 x i16> %wide.load427, ptr %i.ls, align 2, !alias.scope !7675, !noalias !7672
  %index.next428 = add nuw i64 %index425, 16      ; 2 uses
  %i.lt = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.lt, label %middle.block429, label %vector.body424, !llvm.loop !7649

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %i.lj, %n.vec423
  br i1 %cmp.n430, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block429
  %min.epilog.iters.check = icmp eq i64 %i.ln, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec423, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %i.lj, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ] ; 2 uses
  %i.lu = add i64 %index432, %.val.i.i62          ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lu
  %wide.load433 = load <4 x i16>, ptr %i.lv, align 2, !noalias !7672
  store <4 x i16> %wide.load433, ptr %i.lw, align 2, !alias.scope !7675, !noalias !7672
  %index.next434 = add nuw i64 %index432, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next434, %n.vec431
  br i1 %i.lx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7650

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n435 = icmp eq i64 %i.lj, %n.vec431
  br i1 %cmp.n435, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec423, %vec.epilog.iter.check ], [ %n.vec431, %vec.epilog.middle.block ] ; 3 uses
  %i.ly = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter548 = and i64 %i.ly, 3                 ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.lz, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader ]
  %i.lz = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.ma = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ma
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ma
  %.val8.us.i.i.prol = load i16, ptr %i.mb, align 2, !noalias !7672, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.mc, align 2, !alias.scope !7675, !noalias !7672
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter548
  br i1 %prol.iter.cmp.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol, !llvm.loop !7651

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader ], [ %i.lz, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol ]
  %i.md = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.me = add i64 %i.md, %.val.i.i62
  %i.mf = icmp ugt i64 %i.me, -4
  br i1 %i.mf, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader.new

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader.new: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit
  %invariant.op559 = add i64 1, %.val.i.i62
  %invariant.op561 = add i64 2, %.val.i.i62
  %invariant.op563 = add i64 3, %.val.i.i62
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader.new ], [ %i.mn, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i ] ; 5 uses
  %i.mg = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mg
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mg
  %.val8.us.i.i = load i16, ptr %i.mh, align 2, !noalias !7672, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mi, align 2, !alias.scope !7675, !noalias !7672
  %.reass560 = add i64 %.sroa.0.010.us.i.i, %invariant.op559 ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass560
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass560
  %.val8.us.i.i.1 = load i16, ptr %i.mj, align 2, !noalias !7672, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.mk, align 2, !alias.scope !7675, !noalias !7672
  %.reass562 = add i64 %.sroa.0.010.us.i.i, %invariant.op561 ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass562
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass562
  %.val8.us.i.i.2 = load i16, ptr %i.ml, align 2, !noalias !7672, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mm, align 2, !alias.scope !7675, !noalias !7672
  %i.mn = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass564 = add i64 %.sroa.0.010.us.i.i, %invariant.op563 ; 2 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass564
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass564
  %.val8.us.i.i.3 = load i16, ptr %i.mo, align 2, !noalias !7672, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mp, align 2, !alias.scope !7675, !noalias !7672
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mn, %i.lj
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i, !llvm.loop !7652

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp sgt i16 %i.kx, -1
  br i1 %.not1.i.i.i.i.i67, label %iter.check455, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.lj, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check418
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.mq = and i64 %i.lj, 12
  %n.vec478 = and i64 %i.lj, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.mr = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mr ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.ms, align 2, !noalias !7672 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.mu, align 2, !noalias !7672 ; 4 uses
  %i.mv = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.mw = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.mx = icmp samesign ugt <8 x i16> %i.mv, splat (i16 31744)
  %i.my = icmp samesign ugt <8 x i16> %i.mw, splat (i16 31744)
  %i.mz = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.na = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.nb = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.nc = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.nd = or <8 x i1> %i.mz, %i.mx
  %i.ne = or <8 x i1> %i.na, %i.my
  %i.nf = select <8 x i1> %i.nd, <8 x i16> %wide.load483, <8 x i16> %i.nb
  %i.ng = select <8 x i1> %i.ne, <8 x i16> %wide.load484, <8 x i16> %i.nc
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store <8 x i16> %i.nf, ptr %i.mt, align 2, !alias.scope !7675, !noalias !7672
  store <8 x i16> %i.ng, ptr %i.nh, align 2, !alias.scope !7675, !noalias !7672
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.ni = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.ni, label %middle.block486, label %vector.body481, !llvm.loop !7653

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.lj, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.mq, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !15

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.lj, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.nj = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nj
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nj
  %wide.load499 = load <4 x i16>, ptr %i.nk, align 2, !noalias !7672 ; 4 uses
  %i.nm = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.nn = icmp samesign ugt <4 x i16> %i.nm, splat (i16 31744)
  %i.no = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.np = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nq = or <4 x i1> %i.no, %i.nn
  %i.nr = select <4 x i1> %i.nq, <4 x i16> %wide.load499, <4 x i16> %i.np
  store <4 x i16> %i.nr, ptr %i.nl, align 2, !alias.scope !7675, !noalias !7672
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.ns = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.ns, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !7654

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.lj, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %i.nt = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nu = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.nv = add i64 %.val6.i.i63, %i.nu
  %xtraiter = and i64 %i.nt, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.nw = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.nx = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nx
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nx
  %.val8.i.i.prol = load i16, ptr %i.ny, align 2, !noalias !7672, !noundef !5 ; 4 uses
  %i.oa = and i16 %.val8.i.i.prol, 32767
  %i.ob = icmp samesign ugt i16 %i.oa, 31744
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %i.oc = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.kx)
  %i.od = or i1 %.not.i.i.i.i.i68.prol, %i.ob
  %i.oe = select i1 %i.od, i16 %.val8.i.i.prol, i16 %i.oc
  store i16 %i.oe, ptr %i.nz, align 2, !alias.scope !7675, !noalias !7672
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.nw, %.lr.ph.split.split.i.i.prol ]
  %i.of = icmp eq i64 %i.nv, %.val.i.i62
  br i1 %i.of, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check455:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check440 = icmp ult i64 %i.lj, 8
  %or.cond525 = or i1 %min.iters.check440, %diff.check418
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check455
  %min.iters.check442 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check442, label %vec.epilog.ph459, label %vector.ph443

vector.ph443:                                     ; preds = %vector.main.loop.iter.check441
  %i.og = and i64 %i.lj, 8
  %n.vec444 = and i64 %i.lj, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body445

vector.body445:                                   ; preds = %vector.ph443, %vector.body445
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %i.oh = add i64 %index446, %.val.i.i62          ; 2 uses
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oh ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oh ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %wide.load447 = load <8 x i16>, ptr %i.oi, align 2, !noalias !7672 ; 4 uses
  %wide.load448 = load <8 x i16>, ptr %i.ok, align 2, !noalias !7672 ; 4 uses
  %i.ol = and <8 x i16> %wide.load447, splat (i16 32767) ; 2 uses
  %i.om = and <8 x i16> %wide.load448, splat (i16 32767) ; 2 uses
  %i.on = icmp samesign ugt <8 x i16> %i.ol, splat (i16 31744) ; 3 uses
  %i.oo = icmp samesign ugt <8 x i16> %i.om, splat (i16 31744) ; 3 uses
  %8 = xor <8 x i1> %i.on, splat (i1 true)
  %9 = xor <8 x i1> %i.oo, splat (i1 true)
  %i.op = icmp sgt <8 x i16> %wide.load447, splat (i16 -1) ; 2 uses
  %i.oq = icmp sgt <8 x i16> %wide.load448, splat (i16 -1) ; 2 uses
  %i.or = or <8 x i1> %i.on, %i.op
  %i.os = xor <8 x i1> %i.or, splat (i1 true)
  %i.ot = or <8 x i1> %i.oo, %i.oq
  %i.ou = xor <8 x i1> %i.ot, splat (i1 true)
  %i.ov = or <8 x i16> %i.ol, %broadcast.splat
  %i.ow = or <8 x i16> %i.om, %broadcast.splat
  %i.ox = icmp eq <8 x i16> %i.ov, zeroinitializer
  %i.oy = icmp eq <8 x i16> %i.ow, zeroinitializer
  %i.oz = icmp uge <8 x i16> %wide.load447, %broadcast.splat
  %i.pa = icmp uge <8 x i16> %wide.load448, %broadcast.splat
  %i.pb = select <8 x i1> %i.os, <8 x i1> %i.ox, <8 x i1> zeroinitializer
  %i.pc = select <8 x i1> %i.ou, <8 x i1> %i.oy, <8 x i1> zeroinitializer
  %i.pd = and <8 x i1> %i.op, %i.oz
  %10 = select <8 x i1> %8, <8 x i1> %i.pd, <8 x i1> zeroinitializer
  %i.pe = and <8 x i1> %i.oq, %i.pa
  %11 = select <8 x i1> %9, <8 x i1> %i.pe, <8 x i1> zeroinitializer
  %i.pf = or <8 x i1> %10, %i.pb
  %i.pg = or <8 x i1> %11, %i.pc
  %12 = or <8 x i1> %i.pf, %i.on
  %13 = or <8 x i1> %i.pg, %i.oo
  %predphi449 = select <8 x i1> %12, <8 x i16> %wide.load447, <8 x i16> %broadcast.splat
  %predphi450 = select <8 x i1> %13, <8 x i16> %wide.load448, <8 x i16> %broadcast.splat
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store <8 x i16> %predphi449, ptr %i.oj, align 2, !alias.scope !7675, !noalias !7672
  store <8 x i16> %predphi450, ptr %i.ph, align 2, !alias.scope !7675, !noalias !7672
  %index.next451 = add nuw i64 %index446, 16      ; 2 uses
  %i.pi = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.pi, label %middle.block452, label %vector.body445, !llvm.loop !7655

middle.block452:                                  ; preds = %vector.body445
  %cmp.n453 = icmp eq i64 %i.lj, %n.vec444
  br i1 %cmp.n453, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check457

vec.epilog.iter.check457:                         ; preds = %middle.block452
  %min.epilog.iters.check458.not.not = icmp eq i64 %i.og, 0
  br i1 %min.epilog.iters.check458.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph459, !prof !17

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check457
  %vec.epilog.resume.val454 = phi i64 [ %n.vec444, %vec.epilog.iter.check457 ], [ 0, %vector.main.loop.iter.check441 ]
  %n.vec460 = and i64 %i.lj, -8                   ; 3 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph459
  %index464 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph459 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pj = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pj
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pj
  %wide.load465 = load <8 x i16>, ptr %i.pk, align 2, !noalias !7672 ; 4 uses
  %i.pm = and <8 x i16> %wide.load465, splat (i16 32767) ; 2 uses
  %i.pn = icmp samesign ugt <8 x i16> %i.pm, splat (i16 31744) ; 3 uses
  %14 = xor <8 x i1> %i.pn, splat (i1 true)
  %i.po = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.pp = or <8 x i1> %i.pn, %i.po
  %i.pq = xor <8 x i1> %i.pp, splat (i1 true)
  %i.pr = or <8 x i16> %i.pm, %broadcast.splat462
  %i.ps = icmp eq <8 x i16> %i.pr, zeroinitializer
  %i.pt = icmp uge <8 x i16> %wide.load465, %broadcast.splat462
  %i.pu = select <8 x i1> %i.pq, <8 x i1> %i.ps, <8 x i1> zeroinitializer
  %i.pv = and <8 x i1> %i.po, %i.pt
  %15 = select <8 x i1> %14, <8 x i1> %i.pv, <8 x i1> zeroinitializer
  %i.pw = or <8 x i1> %15, %i.pu
  %16 = or <8 x i1> %i.pw, %i.pn
  %predphi466 = select <8 x i1> %16, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat462
  store <8 x i16> %predphi466, ptr %i.pl, align 2, !alias.scope !7675, !noalias !7672
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.px = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.px, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !7656

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.lj, %n.vec460
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check455, %vec.epilog.iter.check457, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check455 ], [ %n.vec444, %vec.epilog.iter.check457 ], [ %n.vec460, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.py, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.py = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.pz = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pz
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pz
  %.val8.us12.i.i = load i16, ptr %i.qa, align 2, !noalias !7672, !noundef !5 ; 6 uses
  %i.qc = and i16 %.val8.us12.i.i, 32767          ; 2 uses
  %i.qd = icmp samesign ugt i16 %i.qc, 31744
  br i1 %i.qd, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split.i.i.us.i.i, label %.split7.i.i.us.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.u
  %i.qe = or i16 %i.qc, %i.kx
  %.not.i.i.us.i.i = icmp eq i16 %i.qe, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, label %bb.v

.split.i.i.us.i.i:                                ; preds = %bb.u
  %i.qf = icmp ult i16 %.val8.us12.i.i, %i.kx
  br i1 %i.qf, label %bb.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i

bb.v:                                             ; preds = %.split.i.i.us.i.i, %.split7.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i: ; preds = %bb.v, %.split.i.i.us.i.i, %.split7.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qg = phi i16 [ %i.kx, %bb.v ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.split.i.i.us.i.i ]
  store i16 %i.qg, ptr %i.qb, align 2, !alias.scope !7675, !noalias !7672
  %exitcond16.not.i.i = icmp eq i64 %i.py, %i.lj
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !7657

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qp, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qh = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qh
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qh
  %.val8.i.i = load i16, ptr %i.qi, align 2, !noalias !7672, !noundef !5 ; 4 uses
  %i.qk = and i16 %.val8.i.i, 32767
  %i.ql = icmp samesign ugt i16 %i.qk, 31744
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %i.qm = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.kx)
  %i.qn = or i1 %.not.i.i.i.i.i68, %i.ql
  %i.qo = select i1 %i.qn, i16 %.val8.i.i, i16 %i.qm
  store i16 %i.qo, ptr %i.qj, align 2, !alias.scope !7675, !noalias !7672
  %i.qp = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qq, align 2, !noalias !7672, !noundef !5 ; 4 uses
  %i.qs = and i16 %.val8.i.i.1, 32767
  %i.qt = icmp samesign ugt i16 %i.qs, 31744
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %i.qu = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.kx)
  %i.qv = or i1 %.not.i.i.i.i.i68.1, %i.qt
  %i.qw = select i1 %i.qv, i16 %.val8.i.i.1, i16 %i.qu
  store i16 %i.qw, ptr %i.qr, align 2, !alias.scope !7675, !noalias !7672
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qp, %i.lj
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i, !llvm.loop !7658

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block452, %vec.epilog.middle.block468, %middle.block429, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7671
  br label %.loopexit

bb.w:                                             ; preds = %bb.i
  %i.qx = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.qx, label %bb.x, label %.invoke389

bb.x:                                             ; preds = %bb.w
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.qz = load i16, ptr %i.qy, align 2, !noundef !5 ; 9 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.ra = and i16 %i.qz, 32767                    ; 3 uses
  %i.rb = icmp samesign ugt i16 %i.ra, 31744      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.qz, -1            ; 2 uses
  %i.rc = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.rd = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0170)
  %i.re = sub i64 %i.rd, %i.av
  %i.rf = call i64 @llvm.umin.i64(i64 %i.re, i64 %i.rc)
  %i.rg = call i64 @llvm.umin.i64(i64 %i.rf, i64 %i.at) ; 2 uses
  %i.rh = add nuw nsw i64 %i.rg, 1                ; 2 uses
  %min.iters.check507 = icmp samesign ult i64 %i.rg, 8
  br i1 %min.iters.check507, label %scalar.ph506.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph
  %i.ri = shl i64 %.sroa.4.0.copyload, 1
  %i.rj = add i64 %i.aw, %i.r
  %i.rk = add i64 %i.ri, %i.a
  %i.rl = sub i64 %i.rk, %i.rj
  %diff.check505 = icmp ugt i64 %i.rl, -16
  br i1 %diff.check505, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %vector.memcheck504
  %i.rm = and i64 %i.rh, 7                        ; 2 uses
  %i.rn = icmp eq i64 %i.rm, 0
  %i.ro = select i1 %i.rn, i64 8, i64 %i.rm
  %n.vec509 = sub nsw i64 %i.rh, %i.ro            ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat511 = shufflevector <8 x i1> %broadcast.splatinsert510, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rp = xor <8 x i1> %broadcast.splat511, splat (i1 true)
  %broadcast.splatinsert512 = insertelement <8 x i16> poison, i16 %i.ra, i64 0
  %broadcast.splat513 = shufflevector <8 x i16> %broadcast.splatinsert512, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert514 = insertelement <8 x i16> poison, i16 %i.qz, i64 0
  %broadcast.splat515 = shufflevector <8 x i16> %broadcast.splatinsert514, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep557 = getelementptr [2 x i8], ptr %i.q, i64 %.sroa.0.0170
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph508
  %index517 = phi i64 [ 0, %vector.ph508 ], [ %index.next520, %vector.body516 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index517
  %wide.load518 = load <8 x i16>, ptr %gep, align 2 ; 6 uses
  %i.rq = and <8 x i16> %wide.load518, splat (i16 32767)
  %i.rr = icmp samesign ugt <8 x i16> %i.rq, splat (i16 31744)
  %i.rs = select i1 %i.rb, <8 x i1> splat (i1 true), <8 x i1> %i.rr ; 2 uses
  %i.rt = xor <8 x i1> %i.rs, splat (i1 true)     ; 2 uses
  %i.ru = icmp slt <8 x i16> %wide.load518, zeroinitializer ; 2 uses
  %i.rv = and <8 x i1> %i.rt, %i.rp
  %i.rw = icmp ule <8 x i16> %broadcast.splat515, %wide.load518
  %i.rx = or <8 x i16> %wide.load518, %broadcast.splat513
  %i.ry = icmp eq <8 x i16> %i.rx, zeroinitializer
  %i.rz = and <8 x i1> %broadcast.splat511, %i.rt
  %i.sa = icmp uge <8 x i16> %broadcast.splat515, %wide.load518
  %.not528 = or <8 x i1> %i.ru, %i.sa
  %i.sb = select <8 x i1> %i.rz, <8 x i1> %.not528, <8 x i1> zeroinitializer
  %i.sc = select <8 x i1> %i.ru, <8 x i1> %i.rw, <8 x i1> %i.ry
  %i.sd = select <8 x i1> %i.rv, <8 x i1> %i.sc, <8 x i1> zeroinitializer
  %i.se = or <8 x i1> %i.sd, %i.sb
  %i.sf = or <8 x i1> %i.se, %i.rs
  %predphi519 = select <8 x i1> %i.sf, <8 x i16> %broadcast.splat515, <8 x i16> %wide.load518
  %gep558 = getelementptr [2 x i8], ptr %invariant.gep557, i64 %index517
  store <8 x i16> %predphi519, ptr %gep558, align 2
  %index.next520 = add nuw i64 %index517, 8       ; 2 uses
  %i.sg = icmp eq i64 %index.next520, %n.vec509
  br i1 %i.sg, label %scalar.ph506.preheader, label %vector.body516, !llvm.loop !7659

scalar.ph506.preheader:                           ; preds = %vector.body516, %vector.memcheck504, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %vector.memcheck504 ], [ 0, %.lr.ph ], [ %n.vec509, %vector.body516 ]
  br label %scalar.ph506

scalar.ph506:                                     ; preds = %scalar.ph506.preheader, %bb.ac
  %.sroa.020.0167 = phi i64 [ %i.sh, %bb.ac ], [ %.sroa.020.0167.ph, %scalar.ph506.preheader ] ; 4 uses
  %i.sh = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.si = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.rc
  br i1 %exitcond.not, label %.invoke389, label %bb.y

bb.y:                                             ; preds = %scalar.ph506
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.si
  %i.sk = load i16, ptr %i.sj, align 2, !noundef !5 ; 6 uses
  %i.sl = and i16 %i.sk, 32767
  %i.sm = icmp samesign ugt i16 %i.sl, 31744
  %or.cond.i.i = select i1 %i.rb, i1 true, i1 %i.sm
  br i1 %or.cond.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not1.i.i = icmp sgt i16 %i.sk, -1             ; 2 uses
  br i1 %.not.i.i71, label %.split.i, label %bb.aa

.split.i:                                         ; preds = %bb.z
  %i.sn = icmp ult i16 %i.qz, %i.sk
  %spec.select.i.i = and i1 %.not1.i.i, %i.sn
  br i1 %spec.select.i.i, label %bb.ab, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit

bb.aa:                                            ; preds = %bb.z
  br i1 %.not1.i.i, label %.split4.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i

.split4.i:                                        ; preds = %bb.aa
  %i.so = or i16 %i.sk, %i.ra
  %.not.i72 = icmp eq i16 %i.so, 0
  br i1 %.not.i72, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, label %bb.ab

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i: ; preds = %bb.aa
  %i.sp = icmp samesign ugt i16 %i.qz, %i.sk
  br i1 %i.sp, label %bb.ab, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit

bb.ab:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit: ; preds = %bb.ab, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i, %bb.y
  %i.sq = phi i16 [ %i.sk, %bb.ab ], [ %i.qz, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i ], [ %i.qz, %.split4.i ], [ %i.qz, %.split.i ], [ %i.qz, %bb.y ]
  %i.sr = add nuw nsw i64 %.sroa.020.0167, %.sroa.0.0170 ; 3 uses
  %i.ss = icmp ult i64 %i.sr, %i.n
  br i1 %i.ss, label %bb.ac, label %.invoke389
end_hunk_2
begin_hunk_3_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MinimumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecEB6_:bb.a
  %i.gx = load i64, ptr %i.af, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.af, align 8, !alias.scope !7732, !noalias !7733
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.ha = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hd = sub i64 %i.hc, %i.hb                    ; 2 uses
  store i64 %i.hd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7732, !noalias !7733
  %.not.i.us.6 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.us.6, label %.loopexit92.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.he = add nsw i64 %i.ay, -8                   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.he ; 4 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !7732, !noalias !7733
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hj = load i64, ptr %i.af, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  store i64 %i.hk, ptr %i.af, align 8, !alias.scope !7732, !noalias !7733
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hl = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hm = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hn = add i64 %i.hm, %i.hl                    ; 2 uses
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7732, !noalias !7733
  %i.ho = load i64, ptr %i.hf, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.he ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !7732, !noalias !7733, !noundef !5 ; 2 uses
  %i.hr = icmp ult i64 %i.ho, %i.hq
  br i1 %i.hr, label %.loopexit92.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.hf, align 8, !alias.scope !7732, !noalias !7733
  %i.hs = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hq
  %i.hu = load i64, ptr %i.af, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %i.af, align 8, !alias.scope !7732, !noalias !7733
  %i.hw = load i64, ptr %i.hp, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hx = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.hy = mul i64 %i.hx, %i.hw
  %i.hz = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7732, !noalias !7733, !noundef !5
  %i.ia = sub i64 %i.hz, %i.hy                    ; 2 uses
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7732, !noalias !7733
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
  br i1 %i.aj, label %bb.x, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ic = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.sroa.082.0.copyload
  %.not53 = icmp ugt i64 %i.ic, %4
  %or.cond = or i1 %i.id, %.not53
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.h
  %i.ie = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.ie, label %bb.s, label %.invoke385

bb.l:                                             ; preds = %bb.j
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ig = add i64 %.sroa.4.0.copyload, %i.x       ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ig, %6
  %or.cond56 = or i1 %i.ih, %.not54
  br i1 %or.cond56, label %.invoke, label %bb.m, !prof !11

.invoke:                                          ; preds = %bb.t, %bb.s, %bb.m, %bb.l, %bb.j
  %i.ii = phi i64 [ %.sroa.082.0.copyload, %bb.s ], [ %.sroa.082.0.copyload, %bb.j ], [ %.sroa.4.0.copyload, %bb.l ], [ %.sroa.0.0170, %bb.m ], [ %.sroa.0.0170, %bb.t ]
  %i.ij = phi i64 [ %i.la, %bb.s ], [ %i.ic, %bb.j ], [ %i.ig, %bb.l ], [ %i.im, %bb.m ], [ %i.lf, %bb.t ]
  %i.ik = phi i64 [ %4, %bb.s ], [ %4, %bb.j ], [ %6, %bb.l ], [ %i.n, %bb.m ], [ %i.n, %bb.t ]
  %i.il = phi ptr [ @13, %bb.s ], [ @10, %bb.j ], [ @9, %bb.l ], [ @8, %bb.m ], [ @12, %bb.t ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7734
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.x
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7735
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ip, ptr noundef nonnull readonly align 2 %i.io, ptr noundef nonnull readonly %i.iq)
          to label %.noexc60 unwind label %.loopexit93

.noexc60:                                         ; preds = %bb.n
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B26_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 2 %i.ir, ptr noundef nonnull %i.is)
          to label %.noexc61 unwind label %.loopexit93

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7735
  call void @llvm.experimental.noalias.scope.decl(metadata !7736)
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !7736, !noalias !7737, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.ao, align 8, !alias.scope !7736, !noalias !7737, !noundef !5 ; 2 uses
  %i.it = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.iu = load i64, ptr %i.ap, align 8, !alias.scope !7738, !noalias !7739, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !7738, !noalias !7739, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !7738, !noalias !7739, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !7740, !noalias !7739, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.it, 8
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
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !noalias !7741 ; 6 uses
  %wide.load410 = load <8 x i16>, ptr %i.jd, align 2, !noalias !7741 ; 5 uses
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
  %7 = select <8 x i1> %i.jv, <8 x i1> %i.jx, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jo, <8 x i1> splat (i1 true), <8 x i1> %i.jq
  %8 = xor <8 x i1> %i.ka, splat (i1 true)
  %i.kb = or <8 x i1> %7, %8
  %9 = or <8 x i1> %i.kb, %i.jz
  %i.kc = or <8 x i1> %9, %i.jy
  %i.kd = or <8 x i1> %i.kc, %i.jg
  %predphi = select <8 x i1> %i.kd, <8 x i16> %wide.load, <8 x i16> %wide.load410
  store <8 x i16> %predphi, ptr %i.je, align 2, !noalias !7741
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !7704

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.kf, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.kf = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.kg = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.kh = add i64 %i.kg, %i.iu                    ; 2 uses
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.kh
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.kh
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.kg
  %i.kl = load i16, ptr %i.ki, align 2, !noalias !7741, !noundef !5 ; 10 uses
  %i.km = load i16, ptr %i.kj, align 2, !noalias !7741, !noundef !5 ; 5 uses
  %i.kn = and i16 %i.kl, 32767
  %i.ko = icmp samesign ugt i16 %i.kn, 31744
  br i1 %i.ko, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %i.kp = and i16 %i.km, 32767                    ; 2 uses
  %i.kq = icmp samesign ugt i16 %i.kp, 31744
  br i1 %i.kq, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i.i = icmp sgt i16 %i.kl, -1
  %.not1.i.i.i.i.i = icmp slt i16 %i.km, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  br i1 %.not1.i.i.i.i.i, label %.split5.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.q
  %i.kr = icmp samesign ugt i16 %i.kl, %i.km
  br i1 %i.kr, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

.split5.i.i.i.i:                                  ; preds = %bb.q
  %i.ks = or i16 %i.kp, %i.kl
  %.not.i.i.i.i = icmp eq i16 %i.ks, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.r

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i: ; preds = %bb.p
  %i.kt = icmp ult i16 %i.kl, %i.km
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kt
  br i1 %spec.select.i.i.i.i.i, label %bb.r, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

bb.r:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i: ; preds = %bb.r, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i, %bb.o, %scalar.ph
  %i.ku = phi i16 [ %i.km, %bb.r ], [ %i.kl, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i ], [ %i.kl, %.split5.i.i.i.i ], [ %i.kl, %.split.i.i.i.i ], [ %i.kl, %scalar.ph ], [ %i.kl, %bb.o ]
  store i16 %i.ku, ptr %i.kk, align 2, !noalias !7741
  %exitcond.not.i.i = icmp eq i64 %i.kf, %i.it
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %scalar.ph, !llvm.loop !7705

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7734
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.al, %bb.y, %bb.g, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit
  %i.kv = add i64 %.sroa.0.0170, %i.x
  %i.kw = load i64, ptr %i.ac, align 8, !alias.scope !7732, !noalias !7733, !noundef !5 ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kx, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit, label %bb.f

bb.s:                                             ; preds = %bb.k
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kz = load i16, ptr %i.ky, align 2, !noundef !5 ; 11 uses
  %i.la = add i64 %.sroa.082.0.copyload, %i.x     ; 3 uses
  %i.lb = icmp ult i64 %i.la, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.la, %4
  %or.cond58 = or i1 %i.lb, %.not
  br i1 %or.cond58, label %.invoke, label %bb.t, !prof !11

.invoke385:                                       ; preds = %bb.x, %bb.k, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, %scalar.ph506, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81, %bb.af, %.lr.ph169
  %i.lc = phi i64 [ %i.te, %bb.af ], [ %i.sw, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit ], [ %i.tb, %.lr.ph169 ], [ %i.ts, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81 ], [ %i.sn, %scalar.ph506 ], [ %.sroa.082.0.copyload, %bb.x ], [ %.sroa.4.0.copyload, %bb.k ]
  %i.ld = phi i64 [ %6, %bb.af ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit ], [ %4, %.lr.ph169 ], [ %i.n, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81 ], [ %6, %scalar.ph506 ], [ %4, %bb.x ], [ %6, %bb.k ]
  %i.le = phi ptr [ @18, %bb.af ], [ @16, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit ], [ @17, %.lr.ph169 ], [ @19, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit81 ], [ @15, %scalar.ph506 ], [ @14, %bb.x ], [ @11, %bb.k ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lc, i64 noundef %i.ld, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.le) #20
          to label %.cont386 unwind label %.loopexit.split-lp

.cont386:                                         ; preds = %.invoke385
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.lf = add i64 %.sroa.0.0170, %i.x             ; 3 uses
  %i.lg = icmp ult i64 %i.lf, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.lf, %i.n
  %or.cond59 = or i1 %i.lg, %.not52
  br i1 %or.cond59, label %.invoke, label %bb.u, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7742
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.x
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %i.x
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1X_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.lh, ptr noundef nonnull readonly %i.lj, ptr noundef nonnull align 2 %i.li, ptr noundef nonnull %i.lk)
          to label %.noexc70 unwind label %.loopexit93

.noexc70:                                         ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !7743)
  %.val.i.i62 = load i64, ptr %i.ak, align 8, !alias.scope !7743, !noalias !7744, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.al, align 8, !alias.scope !7743, !noalias !7744, !noundef !5 ; 6 uses
  %i.ll = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.b, align 8, !alias.scope !7745, !noalias !7744, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66413 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !7745, !noalias !7744, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i412 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.lm = and i16 %i.kz, 32767                    ; 4 uses
  %i.ln = icmp samesign ugt i16 %i.lm, 31744
  %i.lo = sub i64 %.val.i.i.i66413, %.val1.i.i.i412
  %diff.check414 = icmp ugt i64 %i.lo, -32        ; 3 uses
  br i1 %i.ln, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check416 = icmp ult i64 %i.ll, 4
  %or.cond523 = or i1 %min.iters.check416, %diff.check414
  br i1 %or.cond523, label %.lr.ph.split.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check417 = icmp ult i64 %i.ll, 16
  br i1 %min.iters.check417, label %vec.epilog.ph, label %vector.ph418

vector.ph418:                                     ; preds = %vector.main.loop.iter.check
  %i.lp = and i64 %i.ll, 12
  %n.vec419 = and i64 %i.ll, -16                  ; 4 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.ph418, %vector.body420
  %index421 = phi i64 [ 0, %vector.ph418 ], [ %index.next424, %vector.body420 ] ; 2 uses
  %i.lq = add i64 %index421, %.val.i.i62          ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lq ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %wide.load422 = load <8 x i16>, ptr %i.lr, align 2, !noalias !7743
  %wide.load423 = load <8 x i16>, ptr %i.lt, align 2, !noalias !7743
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store <8 x i16> %wide.load422, ptr %i.ls, align 2, !alias.scope !7746, !noalias !7743
  store <8 x i16> %wide.load423, ptr %i.lu, align 2, !alias.scope !7746, !noalias !7743
  %index.next424 = add nuw i64 %index421, 16      ; 2 uses
  %i.lv = icmp eq i64 %index.next424, %n.vec419
  br i1 %i.lv, label %middle.block425, label %vector.body420, !llvm.loop !7720

middle.block425:                                  ; preds = %vector.body420
  %cmp.n426 = icmp eq i64 %i.ll, %n.vec419
  br i1 %cmp.n426, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block425
  %min.epilog.iters.check = icmp eq i64 %i.lp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec419, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec427 = and i64 %i.ll, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index428 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 2 uses
  %i.lw = add i64 %index428, %.val.i.i62          ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lw
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lw
  %wide.load429 = load <4 x i16>, ptr %i.lx, align 2, !noalias !7743
  store <4 x i16> %wide.load429, ptr %i.ly, align 2, !alias.scope !7746, !noalias !7743
  %index.next430 = add nuw i64 %index428, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next430, %n.vec427
  br i1 %i.lz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7721

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n431 = icmp eq i64 %i.ll, %n.vec427
  br i1 %cmp.n431, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec419, %vec.epilog.iter.check ], [ %n.vec427, %vec.epilog.middle.block ] ; 3 uses
  %i.ma = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter545 = and i64 %i.ma, 3                 ; 2 uses
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.mb, %.lr.ph.split.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.mb = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.mc = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mc
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mc
  %.val8.us.i.i.prol = load i16, ptr %i.md, align 2, !noalias !7743, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.me, align 2, !alias.scope !7746, !noalias !7743
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter545
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !7722

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.mb, %.lr.ph.split.us.i.i.prol ]
  %i.mf = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.mg = add i64 %i.mf, %.val.i.i62
  %i.mh = icmp ugt i64 %i.mg, -4
  br i1 %i.mh, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.prol.loopexit
  %invariant.op556 = add i64 1, %.val.i.i62
  %invariant.op558 = add i64 2, %.val.i.i62
  %invariant.op560 = add i64 3, %.val.i.i62
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %.lr.ph.split.us.i.i.preheader.new ], [ %i.mp, %.lr.ph.split.us.i.i ] ; 5 uses
  %i.mi = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mi
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mi
  %.val8.us.i.i = load i16, ptr %i.mj, align 2, !noalias !7743, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mk, align 2, !alias.scope !7746, !noalias !7743
  %.reass557 = add i64 %.sroa.0.010.us.i.i, %invariant.op556 ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass557
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass557
  %.val8.us.i.i.1 = load i16, ptr %i.ml, align 2, !noalias !7743, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.mm, align 2, !alias.scope !7746, !noalias !7743
  %.reass559 = add i64 %.sroa.0.010.us.i.i, %invariant.op558 ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass559
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass559
  %.val8.us.i.i.2 = load i16, ptr %i.mn, align 2, !noalias !7743, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mo, align 2, !alias.scope !7746, !noalias !7743
  %i.mp = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass561 = add i64 %.sroa.0.010.us.i.i, %invariant.op560 ; 2 uses
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass561
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass561
  %.val8.us.i.i.3 = load i16, ptr %i.mq, align 2, !noalias !7743, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mr, align 2, !alias.scope !7746, !noalias !7743
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mp, %i.ll
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !7723

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp slt i16 %i.kz, 0
  br i1 %.not1.i.i.i.i.i67, label %iter.check453, label %iter.check489

iter.check489:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check474 = icmp ult i64 %i.ll, 4
  %or.cond524 = or i1 %min.iters.check474, %diff.check414
  br i1 %or.cond524, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check489
  %min.iters.check476 = icmp ult i64 %i.ll, 16
  br i1 %min.iters.check476, label %vec.epilog.ph493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.main.loop.iter.check475
  %i.ms = and i64 %i.ll, 12
  %n.vec478 = and i64 %i.ll, -16                  ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph477, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body481 ] ; 2 uses
  %i.mt = add i64 %index482, %.val.i.i62          ; 2 uses
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mt ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.mu, align 2, !noalias !7743 ; 4 uses
  %wide.load484 = load <8 x i16>, ptr %i.mw, align 2, !noalias !7743 ; 4 uses
  %i.mx = and <8 x i16> %wide.load483, splat (i16 32767)
  %i.my = and <8 x i16> %wide.load484, splat (i16 32767)
  %i.mz = icmp samesign ult <8 x i16> %i.mx, splat (i16 31745)
  %i.na = icmp samesign ult <8 x i16> %i.my, splat (i16 31745)
  %i.nb = icmp sgt <8 x i16> %wide.load483, splat (i16 -1)
  %i.nc = icmp sgt <8 x i16> %wide.load484, splat (i16 -1)
  %i.nd = and <8 x i1> %i.nb, %i.mz
  %i.ne = and <8 x i1> %i.nc, %i.na
  %i.nf = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load483, <8 x i16> %broadcast.splat480)
  %i.ng = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load484, <8 x i16> %broadcast.splat480)
  %i.nh = select <8 x i1> %i.nd, <8 x i16> %i.nf, <8 x i16> %wide.load483
  %i.ni = select <8 x i1> %i.ne, <8 x i16> %i.ng, <8 x i16> %wide.load484
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <8 x i16> %i.nh, ptr %i.mv, align 2, !alias.scope !7746, !noalias !7743
  store <8 x i16> %i.ni, ptr %i.nj, align 2, !alias.scope !7746, !noalias !7743
  %index.next485 = add nuw i64 %index482, 16      ; 2 uses
  %i.nk = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.nk, label %middle.block486, label %vector.body481, !llvm.loop !7724

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %i.ll, %n.vec478
  br i1 %cmp.n487, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block486
  %min.epilog.iters.check492 = icmp eq i64 %i.ms, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph493, !prof !15

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check491
  %vec.epilog.resume.val488 = phi i64 [ %n.vec478, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check475 ]
  %n.vec494 = and i64 %i.ll, -4                   ; 3 uses
  %broadcast.splatinsert495 = insertelement <4 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat496 = shufflevector <4 x i16> %broadcast.splatinsert495, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph493
  %index498 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 2 uses
  %i.nl = add i64 %index498, %.val.i.i62          ; 2 uses
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nl
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nl
  %wide.load499 = load <4 x i16>, ptr %i.nm, align 2, !noalias !7743 ; 4 uses
  %i.no = and <4 x i16> %wide.load499, splat (i16 32767)
  %i.np = icmp samesign ult <4 x i16> %i.no, splat (i16 31745)
  %i.nq = icmp sgt <4 x i16> %wide.load499, splat (i16 -1)
  %i.nr = and <4 x i1> %i.nq, %i.np
  %i.ns = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load499, <4 x i16> %broadcast.splat496)
  %i.nt = select <4 x i1> %i.nr, <4 x i16> %i.ns, <4 x i16> %wide.load499
  store <4 x i16> %i.nt, ptr %i.nn, align 2, !alias.scope !7746, !noalias !7743
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.nu = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.nu, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !7725

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %i.ll, %n.vec494
  br i1 %cmp.n502, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check489, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec478, %vec.epilog.iter.check491 ], [ %n.vec494, %vec.epilog.middle.block501 ] ; 4 uses
  %i.nv = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nw = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.nx = add i64 %.val6.i.i63, %i.nw
  %xtraiter = and i64 %i.nv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.ny = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.nz = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nz
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nz
  %.val8.i.i.prol = load i16, ptr %i.oa, align 2, !noalias !7743, !noundef !5 ; 4 uses
  %i.oc = and i16 %.val8.i.i.prol, 32767
  %i.od = icmp samesign ult i16 %i.oc, 31745
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %or.cond.i.i.prol = and i1 %.not.i.i.i.i.i68.prol, %i.od
  %spec.select.i.i.prol = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.kz)
  %i.oe = select i1 %or.cond.i.i.prol, i16 %spec.select.i.i.prol, i16 %.val8.i.i.prol
  store i16 %i.oe, ptr %i.ob, align 2, !alias.scope !7746, !noalias !7743
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.ny, %.lr.ph.split.split.i.i.prol ]
  %i.of = icmp eq i64 %i.nx, %.val.i.i62
  br i1 %i.of, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check453:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check436 = icmp ult i64 %i.ll, 8
  %or.cond525 = or i1 %min.iters.check436, %diff.check414
  br i1 %or.cond525, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check453
  %min.iters.check438 = icmp ult i64 %i.ll, 16
  br i1 %min.iters.check438, label %vec.epilog.ph457, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.og = and i64 %i.ll, 8
  %n.vec440 = and i64 %i.ll, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert441 = insertelement <8 x i16> poison, i16 %i.lm, i64 0
  %broadcast.splat442 = shufflevector <8 x i16> %broadcast.splatinsert441, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body443

vector.body443:                                   ; preds = %vector.ph439, %vector.body443
  %index444 = phi i64 [ 0, %vector.ph439 ], [ %index.next449, %vector.body443 ] ; 2 uses
  %i.oh = add i64 %index444, %.val.i.i62          ; 2 uses
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.oh ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.oh ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %wide.load445 = load <8 x i16>, ptr %i.oi, align 2, !noalias !7743 ; 5 uses
  %wide.load446 = load <8 x i16>, ptr %i.ok, align 2, !noalias !7743 ; 5 uses
  %i.ol = and <8 x i16> %wide.load445, splat (i16 32767)
  %i.om = and <8 x i16> %wide.load446, splat (i16 32767)
  %i.on = icmp samesign ugt <8 x i16> %i.ol, splat (i16 31744) ; 3 uses
  %i.oo = icmp samesign ugt <8 x i16> %i.om, splat (i16 31744) ; 3 uses
  %10 = xor <8 x i1> %i.on, splat (i1 true)
  %11 = xor <8 x i1> %i.oo, splat (i1 true)
  %i.op = icmp sgt <8 x i16> %wide.load445, splat (i16 -1) ; 2 uses
  %i.oq = icmp sgt <8 x i16> %wide.load446, splat (i16 -1) ; 2 uses
  %i.or = or <8 x i1> %i.on, %i.op
  %i.os = xor <8 x i1> %i.or, splat (i1 true)
  %i.ot = or <8 x i1> %i.oo, %i.oq
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
  %12 = select <8 x i1> %10, <8 x i1> %i.pd, <8 x i1> zeroinitializer
  %i.pe = and <8 x i1> %i.oq, %i.pa
  %13 = select <8 x i1> %11, <8 x i1> %i.pe, <8 x i1> zeroinitializer
  %i.pf = or <8 x i1> %12, %i.pb
  %i.pg = or <8 x i1> %13, %i.pc
  %14 = or <8 x i1> %i.pf, %i.on
  %15 = or <8 x i1> %i.pg, %i.oo
  %predphi447 = select <8 x i1> %14, <8 x i16> %wide.load445, <8 x i16> %broadcast.splat
  %predphi448 = select <8 x i1> %15, <8 x i16> %wide.load446, <8 x i16> %broadcast.splat
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store <8 x i16> %predphi447, ptr %i.oj, align 2, !alias.scope !7746, !noalias !7743
  store <8 x i16> %predphi448, ptr %i.ph, align 2, !alias.scope !7746, !noalias !7743
  %index.next449 = add nuw i64 %index444, 16      ; 2 uses
  %i.pi = icmp eq i64 %index.next449, %n.vec440
  br i1 %i.pi, label %middle.block450, label %vector.body443, !llvm.loop !7726

middle.block450:                                  ; preds = %vector.body443
  %cmp.n451 = icmp eq i64 %i.ll, %n.vec440
  br i1 %cmp.n451, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check455

vec.epilog.iter.check455:                         ; preds = %middle.block450
  %min.epilog.iters.check456.not.not = icmp eq i64 %i.og, 0
  br i1 %min.epilog.iters.check456.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph457, !prof !17

vec.epilog.ph457:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check455
  %vec.epilog.resume.val452 = phi i64 [ %n.vec440, %vec.epilog.iter.check455 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec458 = and i64 %i.ll, -8                   ; 3 uses
  %broadcast.splatinsert459 = insertelement <8 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat460 = shufflevector <8 x i16> %broadcast.splatinsert459, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert461 = insertelement <8 x i16> poison, i16 %i.lm, i64 0
  %broadcast.splat462 = shufflevector <8 x i16> %broadcast.splatinsert461, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body463

vec.epilog.vector.body463:                        ; preds = %vec.epilog.vector.body463, %vec.epilog.ph457
  %index464 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph457 ], [ %index.next467, %vec.epilog.vector.body463 ] ; 2 uses
  %i.pj = add i64 %index464, %.val.i.i62          ; 2 uses
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pj
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pj
  %wide.load465 = load <8 x i16>, ptr %i.pk, align 2, !noalias !7743 ; 5 uses
  %i.pm = and <8 x i16> %wide.load465, splat (i16 32767)
  %i.pn = icmp samesign ugt <8 x i16> %i.pm, splat (i16 31744) ; 3 uses
  %16 = xor <8 x i1> %i.pn, splat (i1 true)
  %i.po = icmp sgt <8 x i16> %wide.load465, splat (i16 -1) ; 2 uses
  %i.pp = or <8 x i1> %i.pn, %i.po
  %i.pq = xor <8 x i1> %i.pp, splat (i1 true)
  %i.pr = icmp uge <8 x i16> %wide.load465, %broadcast.splat460
  %i.ps = or <8 x i16> %wide.load465, %broadcast.splat462
  %i.pt = icmp eq <8 x i16> %i.ps, zeroinitializer
  %i.pu = select <8 x i1> %i.pq, <8 x i1> %i.pr, <8 x i1> zeroinitializer
  %i.pv = and <8 x i1> %i.po, %i.pt
  %17 = select <8 x i1> %16, <8 x i1> %i.pv, <8 x i1> zeroinitializer
  %i.pw = or <8 x i1> %17, %i.pu
  %18 = or <8 x i1> %i.pw, %i.pn
  %predphi466 = select <8 x i1> %18, <8 x i16> %wide.load465, <8 x i16> %broadcast.splat460
  store <8 x i16> %predphi466, ptr %i.pl, align 2, !alias.scope !7746, !noalias !7743
  %index.next467 = add nuw i64 %index464, 8       ; 2 uses
  %i.px = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.px, label %vec.epilog.middle.block468, label %vec.epilog.vector.body463, !llvm.loop !7727

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body463
  %cmp.n469 = icmp eq i64 %i.ll, %n.vec458
  br i1 %cmp.n469, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check453, %vec.epilog.iter.check455, %vec.epilog.middle.block468
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check453 ], [ %n.vec440, %vec.epilog.iter.check455 ], [ %n.vec458, %vec.epilog.middle.block468 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.py, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.py = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.pz = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pz
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pz
  %.val8.us12.i.i = load i16, ptr %i.qa, align 2, !noalias !7743, !noundef !5 ; 7 uses
  %i.qc = and i16 %.val8.us12.i.i, 32767
  %i.qd = icmp samesign ugt i16 %i.qc, 31744
  br i1 %i.qd, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split7.i.i.us.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i: ; preds = %bb.v
  %i.qe = icmp ult i16 %.val8.us12.i.i, %i.kz
  br i1 %i.qe, label %bb.w, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.v
  %i.qf = or i16 %.val8.us12.i.i, %i.lm
  %.not.i.i.us.i.i = icmp eq i16 %i.qf, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, label %bb.w

bb.w:                                             ; preds = %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i: ; preds = %bb.w, %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.qg = phi i16 [ %i.kz, %bb.w ], [ %.val8.us12.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ]
  store i16 %i.qg, ptr %i.qb, align 2, !alias.scope !7746, !noalias !7743
  %exitcond16.not.i.i = icmp eq i64 %i.py, %i.ll
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !7728

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qn, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.qh = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.qh
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.qh
  %.val8.i.i = load i16, ptr %i.qi, align 2, !noalias !7743, !noundef !5 ; 4 uses
  %i.qk = and i16 %.val8.i.i, 32767
  %i.ql = icmp samesign ult i16 %i.qk, 31745
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %or.cond.i.i = and i1 %.not.i.i.i.i.i68, %i.ql
  %spec.select.i.i = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.kz)
  %i.qm = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %.val8.i.i
  store i16 %i.qm, ptr %i.qj, align 2, !alias.scope !7746, !noalias !7743
  %i.qn = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qo, align 2, !noalias !7743, !noundef !5 ; 4 uses
  %i.qq = and i16 %.val8.i.i.1, 32767
  %i.qr = icmp samesign ult i16 %i.qq, 31745
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %or.cond.i.i.1 = and i1 %.not.i.i.i.i.i68.1, %i.qr
  %spec.select.i.i.1 = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.kz)
  %i.qs = select i1 %or.cond.i.i.1, i16 %spec.select.i.i.1, i16 %.val8.i.i.1
  store i16 %i.qs, ptr %i.qp, align 2, !alias.scope !7746, !noalias !7743
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qn, %i.ll
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i, !llvm.loop !7729

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block486, %vec.epilog.middle.block501, %middle.block450, %vec.epilog.middle.block468, %middle.block425, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7742
  br label %.loopexit

bb.x:                                             ; preds = %bb.i
  %i.qt = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.qt, label %bb.y, label %.invoke385

bb.y:                                             ; preds = %bb.x
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.qv = load i16, ptr %i.qu, align 2, !noundef !5 ; 11 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.qw = and i16 %i.qv, 32767
  %i.qx = icmp samesign ugt i16 %i.qw, 31744      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.qv, -1            ; 2 uses
  %i.qy = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.qz = call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.0.0170)
  %i.ra = sub i64 %i.qz, %i.av
  %i.rb = call i64 @llvm.umin.i64(i64 %i.ra, i64 %i.qy)
  %i.rc = call i64 @llvm.umin.i64(i64 %i.rb, i64 %i.at) ; 2 uses
  %i.rd = add nuw nsw i64 %i.rc, 1                ; 2 uses
  %min.iters.check507 = icmp samesign ult i64 %i.rc, 8
  br i1 %min.iters.check507, label %scalar.ph506.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %.lr.ph
  %i.re = shl i64 %.sroa.4.0.copyload, 1
  %i.rf = add i64 %i.aw, %i.r
  %i.rg = add i64 %i.re, %i.a
  %i.rh = sub i64 %i.rg, %i.rf
  %diff.check505 = icmp ugt i64 %i.rh, -16
  br i1 %diff.check505, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %vector.memcheck504
  %i.ri = and i64 %i.rd, 7                        ; 2 uses
  %i.rj = icmp eq i64 %i.ri, 0
  %i.rk = select i1 %i.rj, i64 8, i64 %i.ri
  %n.vec509 = sub nsw i64 %i.rd, %i.rk            ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat511 = shufflevector <8 x i1> %broadcast.splatinsert510, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert512 = insertelement <8 x i1> poison, i1 %i.qx, i64 0
  %broadcast.splat513 = shufflevector <8 x i1> %broadcast.splatinsert512, <8 x i1> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.rl = xor <8 x i1> %broadcast.splat513, splat (i1 true)
  %i.rm = xor <8 x i1> %broadcast.splat511, splat (i1 true)
  %broadcast.splatinsert514 = insertelement <8 x i16> poison, i16 %i.qv, i64 0
  %broadcast.splat515 = shufflevector <8 x i16> %broadcast.splatinsert514, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep554 = getelementptr [2 x i8], ptr %i.q, i64 %.sroa.0.0170
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph508
  %index517 = phi i64 [ 0, %vector.ph508 ], [ %index.next520, %vector.body516 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index517
  %wide.load518 = load <8 x i16>, ptr %gep, align 2 ; 5 uses
  %i.rn = and <8 x i16> %wide.load518, splat (i16 32767) ; 2 uses
  %i.ro = icmp samesign ugt <8 x i16> %i.rn, splat (i16 31744) ; 2 uses
  %i.rp = select <8 x i1> %broadcast.splat513, <8 x i1> splat (i1 true), <8 x i1> %i.ro
  %i.rq = xor <8 x i1> %i.rp, splat (i1 true)     ; 2 uses
  %i.rr = icmp slt <8 x i16> %wide.load518, zeroinitializer ; 3 uses
  %i.rs = and <8 x i1> %i.rq, %i.rm
  %i.rt = icmp ult <8 x i16> %broadcast.splat515, %wide.load518
  %i.ru = and <8 x i1> %i.rr, %i.rt
  %i.rv = and <8 x i1> %broadcast.splat511, %i.rq ; 2 uses
  %i.rw = xor <8 x i1> %i.rr, splat (i1 true)
  %i.rx = icmp ule <8 x i16> %broadcast.splat515, %wide.load518
  %i.ry = select <8 x i1> %i.rv, <8 x i1> %i.rr, <8 x i1> zeroinitializer
  %i.rz = or <8 x i16> %i.rn, %broadcast.splat515
  %i.sa = icmp eq <8 x i16> %i.rz, zeroinitializer
  %i.sb = select <8 x i1> %i.rl, <8 x i1> %i.ro, <8 x i1> zeroinitializer
  %i.sc = and <8 x i1> %i.rx, %i.rw
  %i.sd = select <8 x i1> %i.rv, <8 x i1> %i.sc, <8 x i1> zeroinitializer
  %i.se = select <8 x i1> %i.ry, <8 x i1> %i.sa, <8 x i1> zeroinitializer
  %i.sf = xor <8 x i1> %i.ru, splat (i1 true)
  %i.sg = select <8 x i1> %i.rs, <8 x i1> %i.sf, <8 x i1> zeroinitializer
  %i.sh = or <8 x i1> %i.sg, %i.se
  %i.si = or <8 x i1> %i.sh, %i.sd
  %i.sj = or <8 x i1> %i.si, %i.sb
  %i.sk = or <8 x i1> %i.sj, %broadcast.splat513
  %predphi519 = select <8 x i1> %i.sk, <8 x i16> %broadcast.splat515, <8 x i16> %wide.load518
  %gep555 = getelementptr [2 x i8], ptr %invariant.gep554, i64 %index517
  store <8 x i16> %predphi519, ptr %gep555, align 2
  %index.next520 = add nuw i64 %index517, 8       ; 2 uses
  %i.sl = icmp eq i64 %index.next520, %n.vec509
  br i1 %i.sl, label %scalar.ph506.preheader, label %vector.body516, !llvm.loop !7730

scalar.ph506.preheader:                           ; preds = %vector.body516, %vector.memcheck504, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %vector.memcheck504 ], [ 0, %.lr.ph ], [ %n.vec509, %vector.body516 ]
  br label %scalar.ph506

scalar.ph506:                                     ; preds = %scalar.ph506.preheader, %bb.ae
  %.sroa.020.0167 = phi i64 [ %i.sm, %bb.ae ], [ %.sroa.020.0167.ph, %scalar.ph506.preheader ] ; 4 uses
  %i.sm = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.sn = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.qy
  br i1 %exitcond.not, label %.invoke385, label %bb.z

bb.z:                                             ; preds = %scalar.ph506
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.sn
  %i.sp = load i16, ptr %i.so, align 2, !noundef !5 ; 5 uses
  br i1 %i.qx, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.sq = and i16 %i.sp, 32767                    ; 2 uses
  %i.sr = icmp samesign ugt i16 %i.sq, 31744
  br i1 %i.sr, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not1.i.i = icmp slt i16 %i.sp, 0              ; 2 uses
  br i1 %.not.i.i71, label %bb.ac, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not1.i.i, label %.split5.i, label %.split.i

.split.i:                                         ; preds = %bb.ac
  %i.ss = icmp samesign ugt i16 %i.qv, %i.sp
  br i1 %i.ss, label %bb.ad, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit

.split5.i:                                        ; preds = %bb.ac
  %i.st = or i16 %i.sq, %i.qv
  %.not.i73 = icmp eq i16 %i.st, 0
  br i1 %.not.i73, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, label %bb.ad

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i: ; preds = %bb.ab
  %i.su = icmp ult i16 %i.qv, %i.sp
  %spec.select.i.i72 = and i1 %.not1.i.i, %i.su
end_hunk_3
