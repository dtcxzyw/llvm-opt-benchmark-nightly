Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.01?download=true
inline.NumInlined: 5635
inline.NumDeleted: 1373
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 334
begin_hunk_0_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MaximumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecEB6_:bb.a
  %i.gm = load i64, ptr %i.gd, align 8, !alias.scope !7643, !noundef !5
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gc ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !7643, !noundef !5 ; 2 uses
  %i.gp = icmp ult i64 %i.gm, %i.go
  br i1 %i.gp, label %.loopexit92.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gd, align 8, !alias.scope !7643
  %i.gq = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !7643, !noundef !5
  %i.gr = mul i64 %i.gq, %i.go
  %i.gs = load i64, ptr %i.ad, align 8, !alias.scope !7643, !noundef !5
  %i.gt = sub i64 %i.gs, %i.gr                    ; 2 uses
  store i64 %i.gt, ptr %i.ad, align 8, !alias.scope !7643
  %i.gu = load i64, ptr %i.gn, align 8, !alias.scope !7643, !noundef !5
  %i.gv = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !7643, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gu
  %i.gx = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7643, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7643
  %.not.i.us.6 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.us.6, label %.loopexit92.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.gz = add nsw i64 %i.at, -8                   ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.gz ; 4 uses
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !7643, !noundef !5
  %i.hc = add i64 %i.hb, 1
  store i64 %i.hc, ptr %i.ha, align 8, !alias.scope !7643
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.e, i64 %i.gz ; 3 uses
  %i.hd = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7643, !noundef !5
  %i.he = load i64, ptr %i.ad, align 8, !alias.scope !7643, !noundef !5
  %i.hf = add i64 %i.he, %i.hd                    ; 2 uses
  store i64 %i.hf, ptr %i.ad, align 8, !alias.scope !7643
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hg = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7643, !noundef !5
  %i.hh = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7643, !noundef !5
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  store i64 %i.hi, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7643
  %i.hj = load i64, ptr %i.ha, align 8, !alias.scope !7643, !noundef !5
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gz ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !7643, !noundef !5 ; 2 uses
  %i.hm = icmp ult i64 %i.hj, %i.hl
  br i1 %i.hm, label %.loopexit92.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.ha, align 8, !alias.scope !7643
  %i.hn = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7643, !noundef !5
  %i.ho = mul i64 %i.hn, %i.hl
  %i.hp = load i64, ptr %i.ad, align 8, !alias.scope !7643, !noundef !5
  %i.hq = sub i64 %i.hp, %i.ho                    ; 2 uses
  store i64 %i.hq, ptr %i.ad, align 8, !alias.scope !7643
  %i.hr = load i64, ptr %i.hk, align 8, !alias.scope !7643, !noundef !5
  %i.hs = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7643, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hr
  %i.hu = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7643, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7643
  br label %.loopexit92.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.hw = add i64 %i.at, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hw, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit92.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.e
  %.sroa.4.0.copyload264 = phi i64 [ %.sroa.4.0.copyload, %bb.e ], [ %i.bd, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.ca, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cx, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.du, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.er, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fo, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gl, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hi, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  %.sroa.082.0.copyload261 = phi i64 [ %.sroa.082.0.copyload, %bb.e ], [ %i.ba, %.lr.ph.i.split.us ], [ %i.bl, %.loopexit.i.us ], [ %i.bx, %.lr.ph.i.split.us.1 ], [ %i.ci, %.loopexit.i.us.1 ], [ %i.cu, %.lr.ph.i.split.us.2 ], [ %i.df, %.loopexit.i.us.2 ], [ %i.dr, %.lr.ph.i.split.us.3 ], [ %i.ec, %.loopexit.i.us.3 ], [ %i.eo, %.lr.ph.i.split.us.4 ], [ %i.ez, %.loopexit.i.us.4 ], [ %i.fl, %.lr.ph.i.split.us.5 ], [ %i.fw, %.loopexit.i.us.5 ], [ %i.gi, %.lr.ph.i.split.us.6 ], [ %i.gt, %.loopexit.i.us.6 ], [ %i.hf, %.lr.ph.i.split.us.7 ], [ %i.hq, %.loopexit.i.us.7 ]
  switch i64 %i.x, label %bb.f [
    i64 1, label %bb.g
    i64 0, label %bb.h
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit: ; preds = %.loopexit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.i, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.f:                                             ; preds = %bb.h, %bb.g, %.loopexit92.split.us
  br i1 %.not173, label %.loopexit, label %.lr.ph169

bb.g:                                             ; preds = %.loopexit92.split.us
  switch i64 %i.z, label %bb.f [
    i64 1, label %bb.i
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %.loopexit92.split.us
  br i1 %i.ah, label %bb.v, label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.hx = add i64 %.sroa.082.0.copyload, %i.v     ; 3 uses
  %i.hy = icmp ult i64 %i.hx, %.sroa.082.0.copyload
  %.not53 = icmp ugt i64 %i.hx, %4
  %or.cond = or i1 %i.hy, %.not53
  br i1 %or.cond, label %.invoke390, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.g
  %i.hz = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.hz, label %bb.q, label %.invoke

bb.k:                                             ; preds = %bb.i
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ib = add i64 %.sroa.4.0.copyload, %i.v       ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ib, %6
  %or.cond56 = or i1 %i.ic, %.not54
  br i1 %or.cond56, label %.invoke390, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.id = add i64 %.sroa.0.0170, %i.v             ; 3 uses
  %i.ie = icmp ult i64 %i.id, %.sroa.0.0170
  %.not55 = icmp ugt i64 %i.id, %i.m
  %or.cond57 = or i1 %i.ie, %.not55
  br i1 %or.cond57, label %.invoke390, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7645
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %i.v
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7646
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.ia, ptr noundef nonnull readonly %i.ig, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ih)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.m
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.0.0170 ; 2 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B25_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 2 %i.ii, ptr noundef nonnull %i.ij)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7646
  call void @llvm.experimental.noalias.scope.decl(metadata !7647)
  %.val.i.i = load i64, ptr %i.al, align 8, !alias.scope !7647, !noalias !7648, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.am, align 8, !alias.scope !7647, !noalias !7648, !noundef !5 ; 2 uses
  %i.ik = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.il = load i64, ptr %i.an, align 8, !alias.scope !7649, !noalias !7648, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !7649, !noalias !7648, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !7649, !noalias !7648, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !7650, !noalias !7648, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ik, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i415 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i417 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i416 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.im = shl i64 %i.il, 1                        ; 2 uses
  %i.in = add i64 %i.im, %.val1.i.i.i.i.i416
  %i.io = sub i64 %i.in, %.val.i.i.i415
  %diff.check = icmp ugt i64 %i.io, -16
  %i.ip = add i64 %i.im, %.val.i.i.i.i.i417
  %i.iq = sub i64 %i.ip, %.val.i.i.i415
  %diff.check418 = icmp ugt i64 %i.iq, -16
  %conflict.rdx = or i1 %diff.check, %diff.check418
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ik, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ir = add i64 %index, %.val.i.i               ; 2 uses
  %i.is = add i64 %i.ir, %i.il                    ; 2 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.is
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.is
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ir
  %wide.load = load <8 x i16>, ptr %i.it, align 2, !noalias !7651 ; 5 uses
  %wide.load419 = load <8 x i16>, ptr %i.iu, align 2, !noalias !7651 ; 6 uses
  %i.iw = and <8 x i16> %wide.load, splat (i16 32767) ; 2 uses
  %i.ix = icmp samesign ugt <8 x i16> %i.iw, splat (i16 32640)
  %i.iy = and <8 x i16> %wide.load419, splat (i16 32767)
  %i.iz = icmp samesign ugt <8 x i16> %i.iy, splat (i16 32640)
  %i.ja = select <8 x i1> %i.ix, <8 x i1> splat (i1 true), <8 x i1> %i.iz ; 3 uses
  %i.jb = xor <8 x i1> %i.ja, splat (i1 true)
  %i.jc = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.jd = icmp sgt <8 x i16> %wide.load419, splat (i16 -1) ; 3 uses
  %i.je = select <8 x i1> %i.ja, <8 x i1> splat (i1 true), <8 x i1> %i.jc ; 2 uses
  %i.jf = xor <8 x i1> %i.je, splat (i1 true)
  %i.jg = select <8 x i1> %i.je, <8 x i1> splat (i1 true), <8 x i1> %i.jd
  %i.jh = icmp ule <8 x i16> %wide.load, %wide.load419
  %i.ji = select <8 x i1> %i.jf, <8 x i1> %i.jd, <8 x i1> zeroinitializer
  %i.jj = or <8 x i16> %wide.load419, %i.iw
  %i.jk = icmp eq <8 x i16> %i.jj, zeroinitializer
  %i.jl = select <8 x i1> %i.jb, <8 x i1> %i.jc, <8 x i1> zeroinitializer
  %i.jm = icmp ult <8 x i16> %wide.load, %wide.load419
  %i.jn = and <8 x i1> %i.jd, %i.jm
  %i.jo = xor <8 x i1> %i.jn, splat (i1 true)
  %i.jp = select <8 x i1> %i.jl, <8 x i1> %i.jo, <8 x i1> zeroinitializer
  %i.jq = select <8 x i1> %i.ji, <8 x i1> %i.jk, <8 x i1> zeroinitializer
  %i.jr = select <8 x i1> %i.jg, <8 x i1> %i.jq, <8 x i1> %i.jh
  %7 = or <8 x i1> %i.jr, %i.jp
  %i.js = or <8 x i1> %7, %i.ja
  %predphi = select <8 x i1> %i.js, <8 x i16> %wide.load, <8 x i16> %wide.load419
  store <8 x i16> %predphi, ptr %i.iv, align 2, !noalias !7651
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jt = icmp eq i64 %index.next, %n.vec
  br i1 %i.jt, label %middle.block, label %vector.body, !llvm.loop !7615

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ik, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ju, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ju = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.jv = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jw = add i64 %i.jv, %i.il                    ; 2 uses
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jw
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jv
  %i.ka = load i16, ptr %i.jx, align 2, !noalias !7651, !noundef !5 ; 8 uses
  %i.kb = load i16, ptr %i.jy, align 2, !noalias !7651, !noundef !5 ; 6 uses
  %i.kc = and i16 %i.ka, 32767                    ; 2 uses
  %i.kd = icmp samesign ugt i16 %i.kc, 32640
  %i.ke = and i16 %i.kb, 32767
  %i.kf = icmp samesign ugt i16 %i.ke, 32640
  %or.cond.i.i.i.i.i = select i1 %i.kd, i1 true, i1 %i.kf
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp sgt i16 %i.ka, -1
  %.not1.i.i.i.i.i = icmp sgt i16 %i.kb, -1       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i, label %bb.o

.split.i.i.i.i:                                   ; preds = %bb.n
  %i.kg = icmp ult i16 %i.ka, %i.kb
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kg
  br i1 %spec.select.i.i.i.i.i, label %bb.p, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

bb.o:                                             ; preds = %bb.n
  br i1 %.not1.i.i.i.i.i, label %.split4.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.o
  %i.kh = or i16 %i.kb, %i.kc
  %.not.i.i.i.i = icmp eq i16 %i.kh, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.p

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i: ; preds = %bb.o
  %i.ki = icmp samesign ugt i16 %i.ka, %i.kb
  br i1 %i.ki, label %bb.p, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

bb.p:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i: ; preds = %bb.p, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i, %scalar.ph
  %i.kj = phi i16 [ %i.kb, %bb.p ], [ %i.ka, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i ], [ %i.ka, %.split4.i.i.i.i ], [ %i.ka, %.split.i.i.i.i ], [ %i.ka, %scalar.ph ]
  store i16 %i.kj, ptr %i.jz, align 2, !noalias !7651
  %exitcond.not.i.i = icmp eq i64 %i.ju, %i.ik
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %scalar.ph, !llvm.loop !7616

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7645
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.ah, %bb.w, %bb.f, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit
  %i.kk = add i64 %.sroa.0.0170, %i.v
  %i.kl = load i64, ptr %i.aa, align 8, !alias.scope !7643, !noundef !5 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.km, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit, label %bb.e

bb.q:                                             ; preds = %bb.j
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ko = load i16, ptr %i.kn, align 2, !noundef !5 ; 12 uses
  %i.kp = add i64 %.sroa.082.0.copyload, %i.v     ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.kp, %4
  %or.cond58 = or i1 %i.kq, %.not
  br i1 %or.cond58, label %.invoke390, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.kr = add i64 %.sroa.0.0170, %i.v             ; 3 uses
  %i.ks = icmp ult i64 %i.kr, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.kr, %i.m
  %or.cond59 = or i1 %i.ks, %.not52
  br i1 %or.cond59, label %.invoke390, label %bb.s, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7652
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %i.v
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ku, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %i.kt, ptr noundef nonnull readonly %i.kv, ptr noundef nonnull align 2 %i.ku, ptr noundef nonnull %i.kw)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !7653)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !7653, !noalias !7654, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !7653, !noalias !7654, !noundef !5 ; 6 uses
  %i.kx = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !7655, !noalias !7654, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66424 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !7655, !noalias !7654, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i425 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.ky = and i16 %i.ko, 32767
  %i.kz = icmp samesign ugt i16 %i.ky, 32640
  %i.la = sub i64 %.val.i.i.i66424, %.val1.i.i.i425
  %diff.check429 = icmp ugt i64 %i.la, -32        ; 3 uses
  br i1 %i.kz, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check427 = icmp ult i64 %i.kx, 4
  %or.cond534 = or i1 %min.iters.check427, %diff.check429
  br i1 %or.cond534, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check430 = icmp ult i64 %i.kx, 16
  br i1 %min.iters.check430, label %vec.epilog.ph, label %vector.ph431

vector.ph431:                                     ; preds = %vector.main.loop.iter.check
  %i.lb = and i64 %i.kx, 12
  %n.vec432 = and i64 %i.kx, -16                  ; 4 uses
  br label %vector.body433

vector.body433:                                   ; preds = %vector.ph431, %vector.body433
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next437, %vector.body433 ] ; 2 uses
  %i.lc = add i64 %index434, %.val.i.i62          ; 2 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load435 = load <8 x i16>, ptr %i.ld, align 2, !noalias !7653
  %wide.load436 = load <8 x i16>, ptr %i.lf, align 2, !noalias !7653
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <8 x i16> %wide.load435, ptr %i.le, align 2, !alias.scope !7656, !noalias !7653
  store <8 x i16> %wide.load436, ptr %i.lg, align 2, !alias.scope !7656, !noalias !7653
  %index.next437 = add nuw i64 %index434, 16      ; 2 uses
  %i.lh = icmp eq i64 %index.next437, %n.vec432
  br i1 %i.lh, label %middle.block438, label %vector.body433, !llvm.loop !7631

middle.block438:                                  ; preds = %vector.body433
  %cmp.n439 = icmp eq i64 %i.kx, %n.vec432
  br i1 %cmp.n439, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block438
  %min.epilog.iters.check = icmp eq i64 %i.lb, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec432, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec440 = and i64 %i.kx, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index441 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next443, %vec.epilog.vector.body ] ; 2 uses
  %i.li = add i64 %index441, %.val.i.i62          ; 2 uses
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.li
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.li
  %wide.load442 = load <4 x i16>, ptr %i.lj, align 2, !noalias !7653
  store <4 x i16> %wide.load442, ptr %i.lk, align 2, !alias.scope !7656, !noalias !7653
  %index.next443 = add nuw i64 %index441, 4       ; 2 uses
  %i.ll = icmp eq i64 %index.next443, %n.vec440
  br i1 %i.ll, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7632

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n444 = icmp eq i64 %i.kx, %n.vec440
  br i1 %cmp.n444, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec432, %vec.epilog.iter.check ], [ %n.vec440, %vec.epilog.middle.block ] ; 3 uses
  %i.lm = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter560 = and i64 %i.lm, 3                 ; 2 uses
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.ln, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader ]
  %i.ln = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.lo = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lo
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lo
  %.val8.us.i.i.prol = load i16, ptr %i.lp, align 2, !noalias !7653, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.lq, align 2, !alias.scope !7656, !noalias !7653
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter560
  br i1 %prol.iter.cmp.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol, !llvm.loop !7633

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader ], [ %i.ln, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol ]
  %i.lr = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.ls = add i64 %i.lr, %.val.i.i62
  %i.lt = icmp ugt i64 %i.ls, -4
  br i1 %i.lt, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader.new

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader.new: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit
  %invariant.op571 = add i64 1, %.val.i.i62
  %invariant.op573 = add i64 2, %.val.i.i62
  %invariant.op575 = add i64 3, %.val.i.i62
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.preheader.new ], [ %i.mb, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i ] ; 5 uses
  %i.lu = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lu
  %.val8.us.i.i = load i16, ptr %i.lv, align 2, !noalias !7653, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.lw, align 2, !alias.scope !7656, !noalias !7653
  %.reass572 = add i64 %.sroa.0.010.us.i.i, %invariant.op571 ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass572
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass572
  %.val8.us.i.i.1 = load i16, ptr %i.lx, align 2, !noalias !7653, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.ly, align 2, !alias.scope !7656, !noalias !7653
  %.reass574 = add i64 %.sroa.0.010.us.i.i, %invariant.op573 ; 2 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass574
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass574
  %.val8.us.i.i.2 = load i16, ptr %i.lz, align 2, !noalias !7653, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.ma, align 2, !alias.scope !7656, !noalias !7653
  %i.mb = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass576 = add i64 %.sroa.0.010.us.i.i, %invariant.op575 ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass576
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass576
  %.val8.us.i.i.3 = load i16, ptr %i.mc, align 2, !noalias !7653, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.md, align 2, !alias.scope !7656, !noalias !7653
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mb, %i.kx
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i, !llvm.loop !7634

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp sgt i16 %i.ko, -1
  br i1 %.not1.i.i.i.i.i67, label %iter.check465, label %iter.check501

iter.check501:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check485 = icmp ult i64 %i.kx, 4
  %or.cond535 = or i1 %min.iters.check485, %diff.check429
  br i1 %or.cond535, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check488

vector.main.loop.iter.check488:                   ; preds = %iter.check501
  %min.iters.check489 = icmp ult i64 %i.kx, 16
  br i1 %min.iters.check489, label %vec.epilog.ph505, label %vector.ph490

vector.ph490:                                     ; preds = %vector.main.loop.iter.check488
  %i.me = and i64 %i.kx, 12
  %n.vec491 = and i64 %i.kx, -16                  ; 4 uses
  %broadcast.splatinsert492 = insertelement <8 x i16> poison, i16 %i.ko, i64 0
  %broadcast.splat493 = shufflevector <8 x i16> %broadcast.splatinsert492, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.ph490, %vector.body494
  %index495 = phi i64 [ 0, %vector.ph490 ], [ %index.next498, %vector.body494 ] ; 2 uses
  %i.mf = add i64 %index495, %.val.i.i62          ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mf ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mf ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %wide.load496 = load <8 x i16>, ptr %i.mg, align 2, !noalias !7653 ; 4 uses
  %wide.load497 = load <8 x i16>, ptr %i.mi, align 2, !noalias !7653 ; 4 uses
  %i.mj = and <8 x i16> %wide.load496, splat (i16 32767)
  %i.mk = and <8 x i16> %wide.load497, splat (i16 32767)
  %i.ml = icmp samesign ugt <8 x i16> %i.mj, splat (i16 32640)
  %i.mm = icmp samesign ugt <8 x i16> %i.mk, splat (i16 32640)
  %i.mn = icmp sgt <8 x i16> %wide.load496, splat (i16 -1)
  %i.mo = icmp sgt <8 x i16> %wide.load497, splat (i16 -1)
  %i.mp = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load496, <8 x i16> %broadcast.splat493)
  %i.mq = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load497, <8 x i16> %broadcast.splat493)
  %i.mr = or <8 x i1> %i.mn, %i.ml
  %i.ms = or <8 x i1> %i.mo, %i.mm
  %i.mt = select <8 x i1> %i.mr, <8 x i16> %wide.load496, <8 x i16> %i.mp
  %i.mu = select <8 x i1> %i.ms, <8 x i16> %wide.load497, <8 x i16> %i.mq
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <8 x i16> %i.mt, ptr %i.mh, align 2, !alias.scope !7656, !noalias !7653
  store <8 x i16> %i.mu, ptr %i.mv, align 2, !alias.scope !7656, !noalias !7653
  %index.next498 = add nuw i64 %index495, 16      ; 2 uses
  %i.mw = icmp eq i64 %index.next498, %n.vec491
  br i1 %i.mw, label %middle.block499, label %vector.body494, !llvm.loop !7635

middle.block499:                                  ; preds = %vector.body494
  %cmp.n500 = icmp eq i64 %i.kx, %n.vec491
  br i1 %cmp.n500, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check502

vec.epilog.iter.check502:                         ; preds = %middle.block499
  %min.epilog.iters.check504 = icmp eq i64 %i.me, 0
  br i1 %min.epilog.iters.check504, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph505, !prof !15

vec.epilog.ph505:                                 ; preds = %vector.main.loop.iter.check488, %vec.epilog.iter.check502
  %vec.epilog.resume.val506 = phi i64 [ %n.vec491, %vec.epilog.iter.check502 ], [ 0, %vector.main.loop.iter.check488 ]
  %n.vec507 = and i64 %i.kx, -4                   ; 3 uses
  %broadcast.splatinsert508 = insertelement <4 x i16> poison, i16 %i.ko, i64 0
  %broadcast.splat509 = shufflevector <4 x i16> %broadcast.splatinsert508, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body510

vec.epilog.vector.body510:                        ; preds = %vec.epilog.vector.body510, %vec.epilog.ph505
  %index511 = phi i64 [ %vec.epilog.resume.val506, %vec.epilog.ph505 ], [ %index.next513, %vec.epilog.vector.body510 ] ; 2 uses
  %i.mx = add i64 %index511, %.val.i.i62          ; 2 uses
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mx
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mx
  %wide.load512 = load <4 x i16>, ptr %i.my, align 2, !noalias !7653 ; 4 uses
  %i.na = and <4 x i16> %wide.load512, splat (i16 32767)
  %i.nb = icmp samesign ugt <4 x i16> %i.na, splat (i16 32640)
  %i.nc = icmp sgt <4 x i16> %wide.load512, splat (i16 -1)
  %i.nd = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load512, <4 x i16> %broadcast.splat509)
  %i.ne = or <4 x i1> %i.nc, %i.nb
  %i.nf = select <4 x i1> %i.ne, <4 x i16> %wide.load512, <4 x i16> %i.nd
  store <4 x i16> %i.nf, ptr %i.mz, align 2, !alias.scope !7656, !noalias !7653
  %index.next513 = add nuw i64 %index511, 4       ; 2 uses
  %i.ng = icmp eq i64 %index.next513, %n.vec507
  br i1 %i.ng, label %vec.epilog.middle.block514, label %vec.epilog.vector.body510, !llvm.loop !7636

vec.epilog.middle.block514:                       ; preds = %vec.epilog.vector.body510
  %cmp.n515 = icmp eq i64 %i.kx, %n.vec507
  br i1 %cmp.n515, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check501, %vec.epilog.iter.check502, %vec.epilog.middle.block514
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check501 ], [ %n.vec491, %vec.epilog.iter.check502 ], [ %n.vec507, %vec.epilog.middle.block514 ] ; 4 uses
  %i.nh = sub i64 %.val6.i.i63, %.val.i.i62
  %i.ni = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.nj = add i64 %.val6.i.i63, %i.ni
  %xtraiter = and i64 %i.nh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.nk = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.nl = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nl
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nl
  %.val8.i.i.prol = load i16, ptr %i.nm, align 2, !noalias !7653, !noundef !5 ; 4 uses
  %i.no = and i16 %.val8.i.i.prol, 32767
  %i.np = icmp samesign ugt i16 %i.no, 32640
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %i.nq = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.ko)
  %i.nr = or i1 %.not.i.i.i.i.i68.prol, %i.np
  %i.ns = select i1 %i.nr, i16 %.val8.i.i.prol, i16 %i.nq
  store i16 %i.ns, ptr %i.nn, align 2, !alias.scope !7656, !noalias !7653
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.nk, %.lr.ph.split.split.i.i.prol ]
  %i.nt = icmp eq i64 %i.nj, %.val.i.i62
  br i1 %i.nt, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check465:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check449 = icmp ult i64 %i.kx, 8
  %or.cond536 = or i1 %min.iters.check449, %diff.check429
  br i1 %or.cond536, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check452

vector.main.loop.iter.check452:                   ; preds = %iter.check465
  %min.iters.check453 = icmp ult i64 %i.kx, 16
  br i1 %min.iters.check453, label %vec.epilog.ph469, label %vector.ph454

vector.ph454:                                     ; preds = %vector.main.loop.iter.check452
  %i.nu = and i64 %i.kx, 8
  %n.vec455 = and i64 %i.kx, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ko, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body456

vector.body456:                                   ; preds = %vector.ph454, %vector.body456
  %index457 = phi i64 [ 0, %vector.ph454 ], [ %index.next462, %vector.body456 ] ; 2 uses
  %i.nv = add i64 %index457, %.val.i.i62          ; 2 uses
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nv ; 2 uses
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nv ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %wide.load458 = load <8 x i16>, ptr %i.nw, align 2, !noalias !7653 ; 4 uses
  %wide.load459 = load <8 x i16>, ptr %i.ny, align 2, !noalias !7653 ; 4 uses
  %i.nz = and <8 x i16> %wide.load458, splat (i16 32767) ; 2 uses
  %i.oa = and <8 x i16> %wide.load459, splat (i16 32767) ; 2 uses
  %i.ob = icmp samesign ugt <8 x i16> %i.nz, splat (i16 32640) ; 3 uses
  %i.oc = icmp samesign ugt <8 x i16> %i.oa, splat (i16 32640) ; 3 uses
  %8 = xor <8 x i1> %i.ob, splat (i1 true)
  %9 = xor <8 x i1> %i.oc, splat (i1 true)
  %i.od = icmp sgt <8 x i16> %wide.load458, splat (i16 -1) ; 2 uses
  %i.oe = icmp sgt <8 x i16> %wide.load459, splat (i16 -1) ; 2 uses
  %i.of = or <8 x i1> %i.ob, %i.od
  %i.og = xor <8 x i1> %i.of, splat (i1 true)
  %i.oh = or <8 x i1> %i.oc, %i.oe
  %i.oi = xor <8 x i1> %i.oh, splat (i1 true)
  %i.oj = or <8 x i16> %i.nz, %broadcast.splat
  %i.ok = or <8 x i16> %i.oa, %broadcast.splat
  %i.ol = icmp eq <8 x i16> %i.oj, zeroinitializer
  %i.om = icmp eq <8 x i16> %i.ok, zeroinitializer
  %i.on = icmp uge <8 x i16> %wide.load458, %broadcast.splat
  %i.oo = icmp uge <8 x i16> %wide.load459, %broadcast.splat
  %i.op = select <8 x i1> %i.og, <8 x i1> %i.ol, <8 x i1> zeroinitializer
  %i.oq = select <8 x i1> %i.oi, <8 x i1> %i.om, <8 x i1> zeroinitializer
  %i.or = and <8 x i1> %i.od, %i.on
  %10 = select <8 x i1> %8, <8 x i1> %i.or, <8 x i1> zeroinitializer
  %i.os = and <8 x i1> %i.oe, %i.oo
  %11 = select <8 x i1> %9, <8 x i1> %i.os, <8 x i1> zeroinitializer
  %i.ot = or <8 x i1> %10, %i.op
  %i.ou = or <8 x i1> %11, %i.oq
  %12 = or <8 x i1> %i.ot, %i.ob
  %13 = or <8 x i1> %i.ou, %i.oc
  %predphi460 = select <8 x i1> %12, <8 x i16> %wide.load458, <8 x i16> %broadcast.splat
  %predphi461 = select <8 x i1> %13, <8 x i16> %wide.load459, <8 x i16> %broadcast.splat
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store <8 x i16> %predphi460, ptr %i.nx, align 2, !alias.scope !7656, !noalias !7653
  store <8 x i16> %predphi461, ptr %i.ov, align 2, !alias.scope !7656, !noalias !7653
  %index.next462 = add nuw i64 %index457, 16      ; 2 uses
  %i.ow = icmp eq i64 %index.next462, %n.vec455
  br i1 %i.ow, label %middle.block463, label %vector.body456, !llvm.loop !7637

middle.block463:                                  ; preds = %vector.body456
  %cmp.n464 = icmp eq i64 %i.kx, %n.vec455
  br i1 %cmp.n464, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check466

vec.epilog.iter.check466:                         ; preds = %middle.block463
  %min.epilog.iters.check468.not.not = icmp eq i64 %i.nu, 0
  br i1 %min.epilog.iters.check468.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph469, !prof !17

vec.epilog.ph469:                                 ; preds = %vector.main.loop.iter.check452, %vec.epilog.iter.check466
  %vec.epilog.resume.val470 = phi i64 [ %n.vec455, %vec.epilog.iter.check466 ], [ 0, %vector.main.loop.iter.check452 ]
  %n.vec471 = and i64 %i.kx, -8                   ; 3 uses
  %broadcast.splatinsert472 = insertelement <8 x i16> poison, i16 %i.ko, i64 0
  %broadcast.splat473 = shufflevector <8 x i16> %broadcast.splatinsert472, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body474

vec.epilog.vector.body474:                        ; preds = %vec.epilog.vector.body474, %vec.epilog.ph469
  %index475 = phi i64 [ %vec.epilog.resume.val470, %vec.epilog.ph469 ], [ %index.next478, %vec.epilog.vector.body474 ] ; 2 uses
  %i.ox = add i64 %index475, %.val.i.i62          ; 2 uses
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ox
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ox
  %wide.load476 = load <8 x i16>, ptr %i.oy, align 2, !noalias !7653 ; 4 uses
  %i.pa = and <8 x i16> %wide.load476, splat (i16 32767) ; 2 uses
  %i.pb = icmp samesign ugt <8 x i16> %i.pa, splat (i16 32640) ; 3 uses
  %14 = xor <8 x i1> %i.pb, splat (i1 true)
  %i.pc = icmp sgt <8 x i16> %wide.load476, splat (i16 -1) ; 2 uses
  %i.pd = or <8 x i1> %i.pb, %i.pc
  %i.pe = xor <8 x i1> %i.pd, splat (i1 true)
  %i.pf = or <8 x i16> %i.pa, %broadcast.splat473
  %i.pg = icmp eq <8 x i16> %i.pf, zeroinitializer
  %i.ph = icmp uge <8 x i16> %wide.load476, %broadcast.splat473
  %i.pi = select <8 x i1> %i.pe, <8 x i1> %i.pg, <8 x i1> zeroinitializer
  %i.pj = and <8 x i1> %i.pc, %i.ph
  %15 = select <8 x i1> %14, <8 x i1> %i.pj, <8 x i1> zeroinitializer
  %i.pk = or <8 x i1> %15, %i.pi
  %16 = or <8 x i1> %i.pk, %i.pb
  %predphi477 = select <8 x i1> %16, <8 x i16> %wide.load476, <8 x i16> %broadcast.splat473
  store <8 x i16> %predphi477, ptr %i.oz, align 2, !alias.scope !7656, !noalias !7653
  %index.next478 = add nuw i64 %index475, 8       ; 2 uses
  %i.pl = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.pl, label %vec.epilog.middle.block479, label %vec.epilog.vector.body474, !llvm.loop !7638

vec.epilog.middle.block479:                       ; preds = %vec.epilog.vector.body474
  %cmp.n480 = icmp eq i64 %i.kx, %n.vec471
  br i1 %cmp.n480, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check465, %vec.epilog.iter.check466, %vec.epilog.middle.block479
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check465 ], [ %n.vec455, %vec.epilog.iter.check466 ], [ %n.vec471, %vec.epilog.middle.block479 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.pm, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.pm = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.pn = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pn
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pn
  %.val8.us12.i.i = load i16, ptr %i.po, align 2, !noalias !7653, !noundef !5 ; 6 uses
  %i.pq = and i16 %.val8.us12.i.i, 32767          ; 2 uses
  %i.pr = icmp samesign ugt i16 %i.pq, 32640
  br i1 %i.pr, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split.i.i.us.i.i, label %.split7.i.i.us.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.t
  %i.ps = or i16 %i.pq, %i.ko
  %.not.i.i.us.i.i = icmp eq i16 %i.ps, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, label %bb.u

.split.i.i.us.i.i:                                ; preds = %bb.t
  %i.pt = icmp ult i16 %.val8.us12.i.i, %i.ko
  br i1 %i.pt, label %bb.u, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i

bb.u:                                             ; preds = %.split.i.i.us.i.i, %.split7.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i: ; preds = %bb.u, %.split.i.i.us.i.i, %.split7.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.pu = phi i16 [ %i.ko, %bb.u ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.split.i.i.us.i.i ]
  store i16 %i.pu, ptr %i.pp, align 2, !alias.scope !7656, !noalias !7653
  %exitcond16.not.i.i = icmp eq i64 %i.pm, %i.kx
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !7639

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qd, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.pv = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pv
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pv
  %.val8.i.i = load i16, ptr %i.pw, align 2, !noalias !7653, !noundef !5 ; 4 uses
  %i.py = and i16 %.val8.i.i, 32767
  %i.pz = icmp samesign ugt i16 %i.py, 32640
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %i.qa = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.ko)
  %i.qb = or i1 %.not.i.i.i.i.i68, %i.pz
  %i.qc = select i1 %i.qb, i16 %.val8.i.i, i16 %i.qa
  store i16 %i.qc, ptr %i.px, align 2, !alias.scope !7656, !noalias !7653
  %i.qd = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qe, align 2, !noalias !7653, !noundef !5 ; 4 uses
  %i.qg = and i16 %.val8.i.i.1, 32767
  %i.qh = icmp samesign ugt i16 %i.qg, 32640
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %i.qi = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.ko)
  %i.qj = or i1 %.not.i.i.i.i.i68.1, %i.qh
  %i.qk = select i1 %i.qj, i16 %.val8.i.i.1, i16 %i.qi
  store i16 %i.qk, ptr %i.qf, align 2, !alias.scope !7656, !noalias !7653
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qd, %i.kx
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i, !llvm.loop !7640

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i.prol.loopexit, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us.i.i, %middle.block499, %vec.epilog.middle.block514, %middle.block463, %vec.epilog.middle.block479, %middle.block438, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7652
  br label %.loopexit

.invoke390:                                       ; preds = %bb.r, %bb.q, %bb.l, %bb.k, %bb.i
  %i.ql = phi i64 [ %.sroa.082.0.copyload, %bb.q ], [ %.sroa.0.0170, %bb.l ], [ %.sroa.4.0.copyload, %bb.k ], [ %.sroa.082.0.copyload, %bb.i ], [ %.sroa.0.0170, %bb.r ]
  %i.qm = phi i64 [ %i.kp, %bb.q ], [ %i.id, %bb.l ], [ %i.ib, %bb.k ], [ %i.hx, %bb.i ], [ %i.kr, %bb.r ]
  %i.qn = phi i64 [ %4, %bb.q ], [ %i.m, %bb.l ], [ %6, %bb.k ], [ %4, %bb.i ], [ %i.m, %bb.r ]
  %i.qo = phi ptr [ @13, %bb.q ], [ @8, %bb.l ], [ @9, %bb.k ], [ @10, %bb.i ], [ @12, %bb.r ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ql, i64 noundef %i.qm, i64 noundef %i.qn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qo) #20
          to label %.cont391 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont391:                                         ; preds = %.invoke390
  unreachable

bb.v:                                             ; preds = %bb.h
  %i.qp = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.qp, label %bb.w, label %.invoke

bb.w:                                             ; preds = %bb.v
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.qr = load i16, ptr %i.qq, align 2, !noundef !5 ; 9 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.qs = and i16 %i.qr, 32767                    ; 3 uses
  %i.qt = icmp samesign ugt i16 %i.qs, 32640      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.qr, -1            ; 2 uses
  %i.qu = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.qv = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0170)
  %i.qw = mul i64 %i.v, %indvar
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = call i64 @llvm.umin.i64(i64 %i.qx, i64 %i.qu)
  %i.qz = call i64 @llvm.umin.i64(i64 %i.qy, i64 %i.aq) ; 2 uses
  %min.iters.check518 = icmp samesign ult i64 %i.qz, 8
  br i1 %min.iters.check518, label %scalar.ph517.preheader, label %vector.ph519

vector.ph519:                                     ; preds = %.lr.ph
  %i.ra = add nuw nsw i64 %i.qz, 1                ; 2 uses
  %i.rb = and i64 %i.ra, 7                        ; 2 uses
  %i.rc = icmp eq i64 %i.rb, 0
  %i.rd = select i1 %i.rc, i64 8, i64 %i.rb
  %n.vec520 = sub nsw i64 %i.ra, %i.rd            ; 2 uses
  %broadcast.splatinsert521 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat522 = shufflevector <8 x i1> %broadcast.splatinsert521, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.re = xor <8 x i1> %broadcast.splat522, splat (i1 true)
  %broadcast.splatinsert523 = insertelement <8 x i16> poison, i16 %i.qs, i64 0
  %broadcast.splat524 = shufflevector <8 x i16> %broadcast.splatinsert523, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert525 = insertelement <8 x i16> poison, i16 %i.qr, i64 0
  %broadcast.splat526 = shufflevector <8 x i16> %broadcast.splatinsert525, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep569 = getelementptr [2 x i8], ptr %i.p, i64 %.sroa.0.0170
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph519
  %index528 = phi i64 [ 0, %vector.ph519 ], [ %index.next531, %vector.body527 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index528
  %wide.load529 = load <8 x i16>, ptr %gep, align 2 ; 6 uses
  %i.rf = and <8 x i16> %wide.load529, splat (i16 32767)
  %i.rg = icmp samesign ugt <8 x i16> %i.rf, splat (i16 32640)
  %i.rh = select i1 %i.qt, <8 x i1> splat (i1 true), <8 x i1> %i.rg ; 2 uses
  %i.ri = xor <8 x i1> %i.rh, splat (i1 true)     ; 2 uses
  %i.rj = icmp slt <8 x i16> %wide.load529, zeroinitializer ; 2 uses
  %i.rk = and <8 x i1> %i.ri, %i.re
  %i.rl = icmp ule <8 x i16> %broadcast.splat526, %wide.load529
  %i.rm = or <8 x i16> %wide.load529, %broadcast.splat524
  %i.rn = icmp eq <8 x i16> %i.rm, zeroinitializer
  %i.ro = and <8 x i1> %broadcast.splat522, %i.ri
  %i.rp = icmp uge <8 x i16> %broadcast.splat526, %wide.load529
  %.not539 = or <8 x i1> %i.rj, %i.rp
  %i.rq = select <8 x i1> %i.ro, <8 x i1> %.not539, <8 x i1> zeroinitializer
  %i.rr = select <8 x i1> %i.rj, <8 x i1> %i.rl, <8 x i1> %i.rn
  %i.rs = select <8 x i1> %i.rk, <8 x i1> %i.rr, <8 x i1> zeroinitializer
  %i.rt = or <8 x i1> %i.rs, %i.rq
  %i.ru = or <8 x i1> %i.rt, %i.rh
  %predphi530 = select <8 x i1> %i.ru, <8 x i16> %broadcast.splat526, <8 x i16> %wide.load529
  %gep570 = getelementptr [2 x i8], ptr %invariant.gep569, i64 %index528
  store <8 x i16> %predphi530, ptr %gep570, align 2
  %index.next531 = add nuw i64 %index528, 8       ; 2 uses
  %i.rv = icmp eq i64 %index.next531, %n.vec520
  br i1 %i.rv, label %scalar.ph517.preheader, label %vector.body527, !llvm.loop !7641

scalar.ph517.preheader:                           ; preds = %vector.body527, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec520, %vector.body527 ]
  br label %scalar.ph517

scalar.ph517:                                     ; preds = %scalar.ph517.preheader, %bb.ab
  %.sroa.020.0167 = phi i64 [ %i.rw, %bb.ab ], [ %.sroa.020.0167.ph, %scalar.ph517.preheader ] ; 4 uses
  %i.rw = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.rx = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.qu
  br i1 %exitcond.not, label %.invoke, label %bb.x

bb.x:                                             ; preds = %scalar.ph517
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.rx
  %i.rz = load i16, ptr %i.ry, align 2, !noundef !5 ; 6 uses
  %i.sa = and i16 %i.rz, 32767
  %i.sb = icmp samesign ugt i16 %i.sa, 32640
  %or.cond.i.i = select i1 %i.qt, i1 true, i1 %i.sb
  br i1 %or.cond.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not1.i.i = icmp sgt i16 %i.rz, -1             ; 2 uses
  br i1 %.not.i.i71, label %.split.i, label %bb.z

.split.i:                                         ; preds = %bb.y
  %i.sc = icmp ult i16 %i.qr, %i.rz
  %spec.select.i.i = and i1 %.not1.i.i, %i.sc
  br i1 %spec.select.i.i, label %bb.aa, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit

bb.z:                                             ; preds = %bb.y
  br i1 %.not1.i.i, label %.split4.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i

.split4.i:                                        ; preds = %bb.z
  %i.sd = or i16 %i.rz, %i.qs
  %.not.i72 = icmp eq i16 %i.sd, 0
  br i1 %.not.i72, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, label %bb.aa

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i: ; preds = %bb.z
  %i.se = icmp samesign ugt i16 %i.qr, %i.rz
  br i1 %i.se, label %bb.aa, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit

bb.aa:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit: ; preds = %bb.aa, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i, %bb.x
end_hunk_0
begin_hunk_1_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MinimumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecEB6_:bb.a
  %xtraiter557 = and i64 %i.lr, 3                 ; 2 uses
  %lcmp.mod558.not = icmp eq i64 %xtraiter557, 0
  br i1 %lcmp.mod558.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.ls, %.lr.ph.split.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.ls = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.lt = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lt
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lt
  %.val8.us.i.i.prol = load i16, ptr %i.lu, align 2, !noalias !7722, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.lv, align 2, !alias.scope !7725, !noalias !7722
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter557
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !7702

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.ls, %.lr.ph.split.us.i.i.prol ]
  %i.lw = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.lx = add i64 %i.lw, %.val.i.i62
  %i.ly = icmp ugt i64 %i.lx, -4
  br i1 %i.ly, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.prol.loopexit
  %invariant.op568 = add i64 1, %.val.i.i62
  %invariant.op570 = add i64 2, %.val.i.i62
  %invariant.op572 = add i64 3, %.val.i.i62
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %.lr.ph.split.us.i.i.preheader.new ], [ %i.mg, %.lr.ph.split.us.i.i ] ; 5 uses
  %i.lz = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lz
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lz
  %.val8.us.i.i = load i16, ptr %i.ma, align 2, !noalias !7722, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mb, align 2, !alias.scope !7725, !noalias !7722
  %.reass569 = add i64 %.sroa.0.010.us.i.i, %invariant.op568 ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass569
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass569
  %.val8.us.i.i.1 = load i16, ptr %i.mc, align 2, !noalias !7722, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.md, align 2, !alias.scope !7725, !noalias !7722
  %.reass571 = add i64 %.sroa.0.010.us.i.i, %invariant.op570 ; 2 uses
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass571
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass571
  %.val8.us.i.i.2 = load i16, ptr %i.me, align 2, !noalias !7722, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mf, align 2, !alias.scope !7725, !noalias !7722
  %i.mg = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass573 = add i64 %.sroa.0.010.us.i.i, %invariant.op572 ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass573
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass573
  %.val8.us.i.i.3 = load i16, ptr %i.mh, align 2, !noalias !7722, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mi, align 2, !alias.scope !7725, !noalias !7722
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mg, %i.lc
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !7703

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp slt i16 %i.kt, 0
  br i1 %.not1.i.i.i.i.i67, label %iter.check463, label %iter.check501

iter.check501:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check485 = icmp ult i64 %i.lc, 4
  %or.cond535 = or i1 %min.iters.check485, %diff.check425
  br i1 %or.cond535, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check488

vector.main.loop.iter.check488:                   ; preds = %iter.check501
  %min.iters.check489 = icmp ult i64 %i.lc, 16
  br i1 %min.iters.check489, label %vec.epilog.ph505, label %vector.ph490

vector.ph490:                                     ; preds = %vector.main.loop.iter.check488
  %i.mj = and i64 %i.lc, 12
  %n.vec491 = and i64 %i.lc, -16                  ; 4 uses
  %broadcast.splatinsert492 = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat493 = shufflevector <8 x i16> %broadcast.splatinsert492, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.ph490, %vector.body494
  %index495 = phi i64 [ 0, %vector.ph490 ], [ %index.next498, %vector.body494 ] ; 2 uses
  %i.mk = add i64 %index495, %.val.i.i62          ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mk ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %wide.load496 = load <8 x i16>, ptr %i.ml, align 2, !noalias !7722 ; 4 uses
  %wide.load497 = load <8 x i16>, ptr %i.mn, align 2, !noalias !7722 ; 4 uses
  %i.mo = and <8 x i16> %wide.load496, splat (i16 32767)
  %i.mp = and <8 x i16> %wide.load497, splat (i16 32767)
  %i.mq = icmp samesign ult <8 x i16> %i.mo, splat (i16 32641)
  %i.mr = icmp samesign ult <8 x i16> %i.mp, splat (i16 32641)
  %i.ms = icmp sgt <8 x i16> %wide.load496, splat (i16 -1)
  %i.mt = icmp sgt <8 x i16> %wide.load497, splat (i16 -1)
  %i.mu = and <8 x i1> %i.ms, %i.mq
  %i.mv = and <8 x i1> %i.mt, %i.mr
  %i.mw = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load496, <8 x i16> %broadcast.splat493)
  %i.mx = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load497, <8 x i16> %broadcast.splat493)
  %i.my = select <8 x i1> %i.mu, <8 x i16> %i.mw, <8 x i16> %wide.load496
  %i.mz = select <8 x i1> %i.mv, <8 x i16> %i.mx, <8 x i16> %wide.load497
  %i.na = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store <8 x i16> %i.my, ptr %i.mm, align 2, !alias.scope !7725, !noalias !7722
  store <8 x i16> %i.mz, ptr %i.na, align 2, !alias.scope !7725, !noalias !7722
  %index.next498 = add nuw i64 %index495, 16      ; 2 uses
  %i.nb = icmp eq i64 %index.next498, %n.vec491
  br i1 %i.nb, label %middle.block499, label %vector.body494, !llvm.loop !7704

middle.block499:                                  ; preds = %vector.body494
  %cmp.n500 = icmp eq i64 %i.lc, %n.vec491
  br i1 %cmp.n500, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check502

vec.epilog.iter.check502:                         ; preds = %middle.block499
  %min.epilog.iters.check504 = icmp eq i64 %i.mj, 0
  br i1 %min.epilog.iters.check504, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph505, !prof !15

vec.epilog.ph505:                                 ; preds = %vector.main.loop.iter.check488, %vec.epilog.iter.check502
  %vec.epilog.resume.val506 = phi i64 [ %n.vec491, %vec.epilog.iter.check502 ], [ 0, %vector.main.loop.iter.check488 ]
  %n.vec507 = and i64 %i.lc, -4                   ; 3 uses
  %broadcast.splatinsert508 = insertelement <4 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat509 = shufflevector <4 x i16> %broadcast.splatinsert508, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body510

vec.epilog.vector.body510:                        ; preds = %vec.epilog.vector.body510, %vec.epilog.ph505
  %index511 = phi i64 [ %vec.epilog.resume.val506, %vec.epilog.ph505 ], [ %index.next513, %vec.epilog.vector.body510 ] ; 2 uses
  %i.nc = add i64 %index511, %.val.i.i62          ; 2 uses
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nc
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nc
  %wide.load512 = load <4 x i16>, ptr %i.nd, align 2, !noalias !7722 ; 4 uses
  %i.nf = and <4 x i16> %wide.load512, splat (i16 32767)
  %i.ng = icmp samesign ult <4 x i16> %i.nf, splat (i16 32641)
  %i.nh = icmp sgt <4 x i16> %wide.load512, splat (i16 -1)
  %i.ni = and <4 x i1> %i.nh, %i.ng
  %i.nj = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load512, <4 x i16> %broadcast.splat509)
  %i.nk = select <4 x i1> %i.ni, <4 x i16> %i.nj, <4 x i16> %wide.load512
  store <4 x i16> %i.nk, ptr %i.ne, align 2, !alias.scope !7725, !noalias !7722
  %index.next513 = add nuw i64 %index511, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next513, %n.vec507
  br i1 %i.nl, label %vec.epilog.middle.block514, label %vec.epilog.vector.body510, !llvm.loop !7705

vec.epilog.middle.block514:                       ; preds = %vec.epilog.vector.body510
  %cmp.n515 = icmp eq i64 %i.lc, %n.vec507
  br i1 %cmp.n515, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check501, %vec.epilog.iter.check502, %vec.epilog.middle.block514
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check501 ], [ %n.vec491, %vec.epilog.iter.check502 ], [ %n.vec507, %vec.epilog.middle.block514 ] ; 4 uses
  %i.nm = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nn = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.no = add i64 %.val6.i.i63, %i.nn
  %xtraiter = and i64 %i.nm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.np = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.nq = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nq
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nq
  %.val8.i.i.prol = load i16, ptr %i.nr, align 2, !noalias !7722, !noundef !5 ; 4 uses
  %i.nt = and i16 %.val8.i.i.prol, 32767
  %i.nu = icmp samesign ult i16 %i.nt, 32641
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %or.cond.i.i.prol = and i1 %.not.i.i.i.i.i68.prol, %i.nu
  %spec.select.i.i.prol = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.kt)
  %i.nv = select i1 %or.cond.i.i.prol, i16 %spec.select.i.i.prol, i16 %.val8.i.i.prol
  store i16 %i.nv, ptr %i.ns, align 2, !alias.scope !7725, !noalias !7722
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.np, %.lr.ph.split.split.i.i.prol ]
  %i.nw = icmp eq i64 %i.no, %.val.i.i62
  br i1 %i.nw, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check463:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check445 = icmp ult i64 %i.lc, 8
  %or.cond536 = or i1 %min.iters.check445, %diff.check425
  br i1 %or.cond536, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check448

vector.main.loop.iter.check448:                   ; preds = %iter.check463
  %min.iters.check449 = icmp ult i64 %i.lc, 16
  br i1 %min.iters.check449, label %vec.epilog.ph467, label %vector.ph450

vector.ph450:                                     ; preds = %vector.main.loop.iter.check448
  %i.nx = and i64 %i.lc, 8
  %n.vec451 = and i64 %i.lc, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert452 = insertelement <8 x i16> poison, i16 %i.ld, i64 0
  %broadcast.splat453 = shufflevector <8 x i16> %broadcast.splatinsert452, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body454

vector.body454:                                   ; preds = %vector.ph450, %vector.body454
  %index455 = phi i64 [ 0, %vector.ph450 ], [ %index.next460, %vector.body454 ] ; 2 uses
  %i.ny = add i64 %index455, %.val.i.i62          ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ny ; 2 uses
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ny ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %wide.load456 = load <8 x i16>, ptr %i.nz, align 2, !noalias !7722 ; 5 uses
  %wide.load457 = load <8 x i16>, ptr %i.ob, align 2, !noalias !7722 ; 5 uses
  %i.oc = and <8 x i16> %wide.load456, splat (i16 32767)
  %i.od = and <8 x i16> %wide.load457, splat (i16 32767)
  %i.oe = icmp samesign ugt <8 x i16> %i.oc, splat (i16 32640) ; 3 uses
  %i.of = icmp samesign ugt <8 x i16> %i.od, splat (i16 32640) ; 3 uses
  %7 = xor <8 x i1> %i.oe, splat (i1 true)
  %8 = xor <8 x i1> %i.of, splat (i1 true)
  %i.og = icmp sgt <8 x i16> %wide.load456, splat (i16 -1) ; 2 uses
  %i.oh = icmp sgt <8 x i16> %wide.load457, splat (i16 -1) ; 2 uses
  %i.oi = or <8 x i1> %i.oe, %i.og
  %i.oj = xor <8 x i1> %i.oi, splat (i1 true)
  %i.ok = or <8 x i1> %i.of, %i.oh
  %i.ol = xor <8 x i1> %i.ok, splat (i1 true)
  %i.om = icmp uge <8 x i16> %wide.load456, %broadcast.splat
  %i.on = icmp uge <8 x i16> %wide.load457, %broadcast.splat
  %i.oo = or <8 x i16> %wide.load456, %broadcast.splat453
  %i.op = or <8 x i16> %wide.load457, %broadcast.splat453
  %i.oq = icmp eq <8 x i16> %i.oo, zeroinitializer
  %i.or = icmp eq <8 x i16> %i.op, zeroinitializer
  %i.os = select <8 x i1> %i.oj, <8 x i1> %i.om, <8 x i1> zeroinitializer
  %i.ot = select <8 x i1> %i.ol, <8 x i1> %i.on, <8 x i1> zeroinitializer
  %i.ou = and <8 x i1> %i.og, %i.oq
  %9 = select <8 x i1> %7, <8 x i1> %i.ou, <8 x i1> zeroinitializer
  %i.ov = and <8 x i1> %i.oh, %i.or
  %10 = select <8 x i1> %8, <8 x i1> %i.ov, <8 x i1> zeroinitializer
  %i.ow = or <8 x i1> %9, %i.os
  %i.ox = or <8 x i1> %10, %i.ot
  %11 = or <8 x i1> %i.ow, %i.oe
  %12 = or <8 x i1> %i.ox, %i.of
  %predphi458 = select <8 x i1> %11, <8 x i16> %wide.load456, <8 x i16> %broadcast.splat
  %predphi459 = select <8 x i1> %12, <8 x i16> %wide.load457, <8 x i16> %broadcast.splat
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store <8 x i16> %predphi458, ptr %i.oa, align 2, !alias.scope !7725, !noalias !7722
  store <8 x i16> %predphi459, ptr %i.oy, align 2, !alias.scope !7725, !noalias !7722
  %index.next460 = add nuw i64 %index455, 16      ; 2 uses
  %i.oz = icmp eq i64 %index.next460, %n.vec451
  br i1 %i.oz, label %middle.block461, label %vector.body454, !llvm.loop !7706

middle.block461:                                  ; preds = %vector.body454
  %cmp.n462 = icmp eq i64 %i.lc, %n.vec451
  br i1 %cmp.n462, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check464

vec.epilog.iter.check464:                         ; preds = %middle.block461
  %min.epilog.iters.check466.not.not = icmp eq i64 %i.nx, 0
  br i1 %min.epilog.iters.check466.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph467, !prof !17

vec.epilog.ph467:                                 ; preds = %vector.main.loop.iter.check448, %vec.epilog.iter.check464
  %vec.epilog.resume.val468 = phi i64 [ %n.vec451, %vec.epilog.iter.check464 ], [ 0, %vector.main.loop.iter.check448 ]
  %n.vec469 = and i64 %i.lc, -8                   ; 3 uses
  %broadcast.splatinsert470 = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat471 = shufflevector <8 x i16> %broadcast.splatinsert470, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert472 = insertelement <8 x i16> poison, i16 %i.ld, i64 0
  %broadcast.splat473 = shufflevector <8 x i16> %broadcast.splatinsert472, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body474

vec.epilog.vector.body474:                        ; preds = %vec.epilog.vector.body474, %vec.epilog.ph467
  %index475 = phi i64 [ %vec.epilog.resume.val468, %vec.epilog.ph467 ], [ %index.next478, %vec.epilog.vector.body474 ] ; 2 uses
  %i.pa = add i64 %index475, %.val.i.i62          ; 2 uses
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pa
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pa
  %wide.load476 = load <8 x i16>, ptr %i.pb, align 2, !noalias !7722 ; 5 uses
  %i.pd = and <8 x i16> %wide.load476, splat (i16 32767)
  %i.pe = icmp samesign ugt <8 x i16> %i.pd, splat (i16 32640) ; 3 uses
  %13 = xor <8 x i1> %i.pe, splat (i1 true)
  %i.pf = icmp sgt <8 x i16> %wide.load476, splat (i16 -1) ; 2 uses
  %i.pg = or <8 x i1> %i.pe, %i.pf
  %i.ph = xor <8 x i1> %i.pg, splat (i1 true)
  %i.pi = icmp uge <8 x i16> %wide.load476, %broadcast.splat471
  %i.pj = or <8 x i16> %wide.load476, %broadcast.splat473
  %i.pk = icmp eq <8 x i16> %i.pj, zeroinitializer
  %i.pl = select <8 x i1> %i.ph, <8 x i1> %i.pi, <8 x i1> zeroinitializer
  %i.pm = and <8 x i1> %i.pf, %i.pk
  %14 = select <8 x i1> %13, <8 x i1> %i.pm, <8 x i1> zeroinitializer
  %i.pn = or <8 x i1> %14, %i.pl
  %15 = or <8 x i1> %i.pn, %i.pe
  %predphi477 = select <8 x i1> %15, <8 x i16> %wide.load476, <8 x i16> %broadcast.splat471
  store <8 x i16> %predphi477, ptr %i.pc, align 2, !alias.scope !7725, !noalias !7722
  %index.next478 = add nuw i64 %index475, 8       ; 2 uses
  %i.po = icmp eq i64 %index.next478, %n.vec469
  br i1 %i.po, label %vec.epilog.middle.block479, label %vec.epilog.vector.body474, !llvm.loop !7707

vec.epilog.middle.block479:                       ; preds = %vec.epilog.vector.body474
  %cmp.n480 = icmp eq i64 %i.lc, %n.vec469
  br i1 %cmp.n480, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check463, %vec.epilog.iter.check464, %vec.epilog.middle.block479
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check463 ], [ %n.vec451, %vec.epilog.iter.check464 ], [ %n.vec469, %vec.epilog.middle.block479 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.pp, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.pp = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.pq = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pq
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pq
  %.val8.us12.i.i = load i16, ptr %i.pr, align 2, !noalias !7722, !noundef !5 ; 7 uses
  %i.pt = and i16 %.val8.us12.i.i, 32767
  %i.pu = icmp samesign ugt i16 %i.pt, 32640
  br i1 %i.pu, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split7.i.i.us.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i: ; preds = %bb.u
  %i.pv = icmp ult i16 %.val8.us12.i.i, %i.kt
  br i1 %i.pv, label %bb.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.u
  %i.pw = or i16 %.val8.us12.i.i, %i.ld
  %.not.i.i.us.i.i = icmp eq i16 %i.pw, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, label %bb.v

bb.v:                                             ; preds = %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i: ; preds = %bb.v, %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.px = phi i16 [ %i.kt, %bb.v ], [ %.val8.us12.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ]
  store i16 %i.px, ptr %i.ps, align 2, !alias.scope !7725, !noalias !7722
  %exitcond16.not.i.i = icmp eq i64 %i.pp, %i.lc
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !7708

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qe, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.py = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.py
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.py
  %.val8.i.i = load i16, ptr %i.pz, align 2, !noalias !7722, !noundef !5 ; 4 uses
  %i.qb = and i16 %.val8.i.i, 32767
  %i.qc = icmp samesign ult i16 %i.qb, 32641
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %or.cond.i.i = and i1 %.not.i.i.i.i.i68, %i.qc
  %spec.select.i.i = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.kt)
  %i.qd = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %.val8.i.i
  store i16 %i.qd, ptr %i.qa, align 2, !alias.scope !7725, !noalias !7722
  %i.qe = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qf, align 2, !noalias !7722, !noundef !5 ; 4 uses
  %i.qh = and i16 %.val8.i.i.1, 32767
  %i.qi = icmp samesign ult i16 %i.qh, 32641
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %or.cond.i.i.1 = and i1 %.not.i.i.i.i.i68.1, %i.qi
  %spec.select.i.i.1 = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.kt)
  %i.qj = select i1 %or.cond.i.i.1, i16 %spec.select.i.i.1, i16 %.val8.i.i.1
  store i16 %i.qj, ptr %i.qg, align 2, !alias.scope !7725, !noalias !7722
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qe, %i.lc
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i, !llvm.loop !7709

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB23_9BinaryOpT15bf16_scalar_vec0E0B25_.exit.us13.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block499, %vec.epilog.middle.block514, %middle.block461, %vec.epilog.middle.block479, %middle.block434, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7721
  br label %.loopexit

.invoke386:                                       ; preds = %bb.s, %bb.r, %bb.l, %bb.k, %bb.i
  %i.qk = phi i64 [ %.sroa.082.0.copyload, %bb.r ], [ %.sroa.0.0170, %bb.l ], [ %.sroa.4.0.copyload, %bb.k ], [ %.sroa.082.0.copyload, %bb.i ], [ %.sroa.0.0170, %bb.s ]
  %i.ql = phi i64 [ %i.ku, %bb.r ], [ %i.id, %bb.l ], [ %i.ib, %bb.k ], [ %i.hx, %bb.i ], [ %i.kw, %bb.s ]
  %i.qm = phi i64 [ %4, %bb.r ], [ %i.m, %bb.l ], [ %6, %bb.k ], [ %4, %bb.i ], [ %i.m, %bb.s ]
  %i.qn = phi ptr [ @13, %bb.r ], [ @8, %bb.l ], [ @9, %bb.k ], [ @10, %bb.i ], [ @12, %bb.s ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.qk, i64 noundef %i.ql, i64 noundef %i.qm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qn) #20
          to label %.cont387 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont387:                                         ; preds = %.invoke386
  unreachable

bb.w:                                             ; preds = %bb.h
  %i.qo = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.qo, label %bb.x, label %.invoke

bb.x:                                             ; preds = %bb.w
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.qq = load i16, ptr %i.qp, align 2, !noundef !5 ; 11 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.qr = and i16 %i.qq, 32767
  %i.qs = icmp samesign ugt i16 %i.qr, 32640      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.qq, -1            ; 2 uses
  %i.qt = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.qu = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0170)
  %i.qv = mul i64 %i.v, %indvar
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = call i64 @llvm.umin.i64(i64 %i.qw, i64 %i.qt)
  %i.qy = call i64 @llvm.umin.i64(i64 %i.qx, i64 %i.aq) ; 2 uses
  %min.iters.check518 = icmp samesign ult i64 %i.qy, 8
  br i1 %min.iters.check518, label %scalar.ph517.preheader, label %vector.ph519

vector.ph519:                                     ; preds = %.lr.ph
  %i.qz = add nuw nsw i64 %i.qy, 1                ; 2 uses
  %i.ra = and i64 %i.qz, 7                        ; 2 uses
  %i.rb = icmp eq i64 %i.ra, 0
  %i.rc = select i1 %i.rb, i64 8, i64 %i.ra
  %n.vec520 = sub nsw i64 %i.qz, %i.rc            ; 2 uses
  %broadcast.splatinsert521 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat522 = shufflevector <8 x i1> %broadcast.splatinsert521, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert523 = insertelement <8 x i1> poison, i1 %i.qs, i64 0
  %broadcast.splat524 = shufflevector <8 x i1> %broadcast.splatinsert523, <8 x i1> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.rd = xor <8 x i1> %broadcast.splat524, splat (i1 true)
  %i.re = xor <8 x i1> %broadcast.splat522, splat (i1 true)
  %broadcast.splatinsert525 = insertelement <8 x i16> poison, i16 %i.qq, i64 0
  %broadcast.splat526 = shufflevector <8 x i16> %broadcast.splatinsert525, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep566 = getelementptr [2 x i8], ptr %i.p, i64 %.sroa.0.0170
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph519
  %index528 = phi i64 [ 0, %vector.ph519 ], [ %index.next531, %vector.body527 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index528
  %wide.load529 = load <8 x i16>, ptr %gep, align 2 ; 5 uses
  %i.rf = and <8 x i16> %wide.load529, splat (i16 32767) ; 2 uses
  %i.rg = icmp samesign ugt <8 x i16> %i.rf, splat (i16 32640) ; 2 uses
  %i.rh = select <8 x i1> %broadcast.splat524, <8 x i1> splat (i1 true), <8 x i1> %i.rg
  %i.ri = xor <8 x i1> %i.rh, splat (i1 true)     ; 2 uses
  %i.rj = icmp slt <8 x i16> %wide.load529, zeroinitializer ; 3 uses
  %i.rk = and <8 x i1> %i.ri, %i.re
  %i.rl = icmp ult <8 x i16> %broadcast.splat526, %wide.load529
  %i.rm = and <8 x i1> %i.rj, %i.rl
  %i.rn = and <8 x i1> %broadcast.splat522, %i.ri ; 2 uses
  %i.ro = xor <8 x i1> %i.rj, splat (i1 true)
  %i.rp = icmp ule <8 x i16> %broadcast.splat526, %wide.load529
  %i.rq = select <8 x i1> %i.rn, <8 x i1> %i.rj, <8 x i1> zeroinitializer
  %i.rr = or <8 x i16> %i.rf, %broadcast.splat526
  %i.rs = icmp eq <8 x i16> %i.rr, zeroinitializer
  %i.rt = select <8 x i1> %i.rd, <8 x i1> %i.rg, <8 x i1> zeroinitializer
  %i.ru = and <8 x i1> %i.rp, %i.ro
  %i.rv = select <8 x i1> %i.rn, <8 x i1> %i.ru, <8 x i1> zeroinitializer
  %i.rw = select <8 x i1> %i.rq, <8 x i1> %i.rs, <8 x i1> zeroinitializer
  %i.rx = xor <8 x i1> %i.rm, splat (i1 true)
  %i.ry = select <8 x i1> %i.rk, <8 x i1> %i.rx, <8 x i1> zeroinitializer
  %i.rz = or <8 x i1> %i.ry, %i.rw
  %i.sa = or <8 x i1> %i.rz, %i.rv
  %i.sb = or <8 x i1> %i.sa, %i.rt
  %i.sc = or <8 x i1> %i.sb, %broadcast.splat524
  %predphi530 = select <8 x i1> %i.sc, <8 x i16> %broadcast.splat526, <8 x i16> %wide.load529
  %gep567 = getelementptr [2 x i8], ptr %invariant.gep566, i64 %index528
  store <8 x i16> %predphi530, ptr %gep567, align 2
  %index.next531 = add nuw i64 %index528, 8       ; 2 uses
  %i.sd = icmp eq i64 %index.next531, %n.vec520
  br i1 %i.sd, label %scalar.ph517.preheader, label %vector.body527, !llvm.loop !7710

scalar.ph517.preheader:                           ; preds = %vector.body527, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec520, %vector.body527 ]
  br label %scalar.ph517

scalar.ph517:                                     ; preds = %scalar.ph517.preheader, %bb.ad
  %.sroa.020.0167 = phi i64 [ %i.se, %bb.ad ], [ %.sroa.020.0167.ph, %scalar.ph517.preheader ] ; 4 uses
  %i.se = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.sf = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.qt
  br i1 %exitcond.not, label %.invoke, label %bb.y

bb.y:                                             ; preds = %scalar.ph517
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.sf
  %i.sh = load i16, ptr %i.sg, align 2, !noundef !5 ; 5 uses
  br i1 %i.qs, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.si = and i16 %i.sh, 32767                    ; 2 uses
  %i.sj = icmp samesign ugt i16 %i.si, 32640
  br i1 %i.sj, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not1.i.i = icmp slt i16 %i.sh, 0              ; 2 uses
  br i1 %.not.i.i71, label %bb.ab, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not1.i.i, label %.split5.i, label %.split.i

.split.i:                                         ; preds = %bb.ab
  %i.sk = icmp samesign ugt i16 %i.qq, %i.sh
  br i1 %i.sk, label %bb.ac, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit

.split5.i:                                        ; preds = %bb.ab
  %i.sl = or i16 %i.si, %i.qq
  %.not.i73 = icmp eq i16 %i.sl, 0
  br i1 %.not.i73, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT4bf16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1P_EE8call_mutB9_.exit, label %bb.ac
end_hunk_1
begin_hunk_2_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MaximumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecEB6_:bb.a
  %i.gm = load i64, ptr %i.gd, align 8, !alias.scope !7963, !noundef !5
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gc ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !7963, !noundef !5 ; 2 uses
  %i.gp = icmp ult i64 %i.gm, %i.go
  br i1 %i.gp, label %.loopexit92.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gd, align 8, !alias.scope !7963
  %i.gq = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !7963, !noundef !5
  %i.gr = mul i64 %i.gq, %i.go
  %i.gs = load i64, ptr %i.ad, align 8, !alias.scope !7963, !noundef !5
  %i.gt = sub i64 %i.gs, %i.gr                    ; 2 uses
  store i64 %i.gt, ptr %i.ad, align 8, !alias.scope !7963
  %i.gu = load i64, ptr %i.gn, align 8, !alias.scope !7963, !noundef !5
  %i.gv = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !7963, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gu
  %i.gx = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7963, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7963
  %.not.i.us.6 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.us.6, label %.loopexit92.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.gz = add nsw i64 %i.at, -8                   ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.gz ; 4 uses
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !7963, !noundef !5
  %i.hc = add i64 %i.hb, 1
  store i64 %i.hc, ptr %i.ha, align 8, !alias.scope !7963
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.e, i64 %i.gz ; 3 uses
  %i.hd = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7963, !noundef !5
  %i.he = load i64, ptr %i.ad, align 8, !alias.scope !7963, !noundef !5
  %i.hf = add i64 %i.he, %i.hd                    ; 2 uses
  store i64 %i.hf, ptr %i.ad, align 8, !alias.scope !7963
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hg = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7963, !noundef !5
  %i.hh = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7963, !noundef !5
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  store i64 %i.hi, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7963
  %i.hj = load i64, ptr %i.ha, align 8, !alias.scope !7963, !noundef !5
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gz ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !7963, !noundef !5 ; 2 uses
  %i.hm = icmp ult i64 %i.hj, %i.hl
  br i1 %i.hm, label %.loopexit92.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.ha, align 8, !alias.scope !7963
  %i.hn = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7963, !noundef !5
  %i.ho = mul i64 %i.hn, %i.hl
  %i.hp = load i64, ptr %i.ad, align 8, !alias.scope !7963, !noundef !5
  %i.hq = sub i64 %i.hp, %i.ho                    ; 2 uses
  store i64 %i.hq, ptr %i.ad, align 8, !alias.scope !7963
  %i.hr = load i64, ptr %i.hk, align 8, !alias.scope !7963, !noundef !5
  %i.hs = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7963, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hr
  %i.hu = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7963, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7963
  br label %.loopexit92.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.hw = add i64 %i.at, -1
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hw, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.split
  unreachable

.loopexit92.split.us:                             ; preds = %.lr.ph.i.split.us, %.loopexit.i.us, %.lr.ph.i.split.us.1, %.loopexit.i.us.1, %.lr.ph.i.split.us.2, %.loopexit.i.us.2, %.lr.ph.i.split.us.3, %.loopexit.i.us.3, %.lr.ph.i.split.us.4, %.loopexit.i.us.4, %.lr.ph.i.split.us.5, %.loopexit.i.us.5, %.lr.ph.i.split.us.6, %.loopexit.i.us.6, %.lr.ph.i.split.us.7, %.loopexit.i.us.7, %bb.e
  %.sroa.4.0.copyload264 = phi i64 [ %.sroa.4.0.copyload, %bb.e ], [ %i.bd, %.lr.ph.i.split.us ], [ %i.bq, %.loopexit.i.us ], [ %i.ca, %.lr.ph.i.split.us.1 ], [ %i.cn, %.loopexit.i.us.1 ], [ %i.cx, %.lr.ph.i.split.us.2 ], [ %i.dk, %.loopexit.i.us.2 ], [ %i.du, %.lr.ph.i.split.us.3 ], [ %i.eh, %.loopexit.i.us.3 ], [ %i.er, %.lr.ph.i.split.us.4 ], [ %i.fe, %.loopexit.i.us.4 ], [ %i.fo, %.lr.ph.i.split.us.5 ], [ %i.gb, %.loopexit.i.us.5 ], [ %i.gl, %.lr.ph.i.split.us.6 ], [ %i.gy, %.loopexit.i.us.6 ], [ %i.hi, %.lr.ph.i.split.us.7 ], [ %i.hv, %.loopexit.i.us.7 ]
  %.sroa.082.0.copyload261 = phi i64 [ %.sroa.082.0.copyload, %bb.e ], [ %i.ba, %.lr.ph.i.split.us ], [ %i.bl, %.loopexit.i.us ], [ %i.bx, %.lr.ph.i.split.us.1 ], [ %i.ci, %.loopexit.i.us.1 ], [ %i.cu, %.lr.ph.i.split.us.2 ], [ %i.df, %.loopexit.i.us.2 ], [ %i.dr, %.lr.ph.i.split.us.3 ], [ %i.ec, %.loopexit.i.us.3 ], [ %i.eo, %.lr.ph.i.split.us.4 ], [ %i.ez, %.loopexit.i.us.4 ], [ %i.fl, %.lr.ph.i.split.us.5 ], [ %i.fw, %.loopexit.i.us.5 ], [ %i.gi, %.lr.ph.i.split.us.6 ], [ %i.gt, %.loopexit.i.us.6 ], [ %i.hf, %.lr.ph.i.split.us.7 ], [ %i.hq, %.loopexit.i.us.7 ]
  switch i64 %i.x, label %bb.f [
    i64 1, label %bb.g
    i64 0, label %bb.h
  ]

_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit: ; preds = %.loopexit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.i, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.f:                                             ; preds = %bb.h, %bb.g, %.loopexit92.split.us
  br i1 %.not173, label %.loopexit, label %.lr.ph169

bb.g:                                             ; preds = %.loopexit92.split.us
  switch i64 %i.z, label %bb.f [
    i64 1, label %bb.i
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %.loopexit92.split.us
  br i1 %i.ah, label %bb.v, label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.hx = add i64 %.sroa.082.0.copyload, %i.v     ; 3 uses
  %i.hy = icmp ult i64 %i.hx, %.sroa.082.0.copyload
  %.not53 = icmp ugt i64 %i.hx, %4
  %or.cond = or i1 %i.hy, %.not53
  br i1 %or.cond, label %.invoke390, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.g
  %i.hz = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.hz, label %bb.q, label %.invoke

bb.k:                                             ; preds = %bb.i
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ib = add i64 %.sroa.4.0.copyload, %i.v       ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ib, %6
  %or.cond56 = or i1 %i.ic, %.not54
  br i1 %or.cond56, label %.invoke390, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.id = add i64 %.sroa.0.0170, %i.v             ; 3 uses
  %i.ie = icmp ult i64 %i.id, %.sroa.0.0170
  %.not55 = icmp ugt i64 %i.id, %i.m
  %or.cond57 = or i1 %i.ie, %.not55
  br i1 %or.cond57, label %.invoke390, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7965
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %i.v
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7966
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.ia, ptr noundef nonnull readonly %i.ig, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ih)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.m
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.0.0170 ; 2 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B26_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 2 %i.ii, ptr noundef nonnull %i.ij)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7966
  call void @llvm.experimental.noalias.scope.decl(metadata !7967)
  %.val.i.i = load i64, ptr %i.al, align 8, !alias.scope !7967, !noalias !7968, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.am, align 8, !alias.scope !7967, !noalias !7968, !noundef !5 ; 2 uses
  %i.ik = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.il = load i64, ptr %i.an, align 8, !alias.scope !7969, !noalias !7968, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !7969, !noalias !7968, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !7969, !noalias !7968, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !7970, !noalias !7968, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ik, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i415 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i417 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i416 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.im = shl i64 %i.il, 1                        ; 2 uses
  %i.in = add i64 %i.im, %.val1.i.i.i.i.i416
  %i.io = sub i64 %i.in, %.val.i.i.i415
  %diff.check = icmp ugt i64 %i.io, -16
  %i.ip = add i64 %i.im, %.val.i.i.i.i.i417
  %i.iq = sub i64 %i.ip, %.val.i.i.i415
  %diff.check418 = icmp ugt i64 %i.iq, -16
  %conflict.rdx = or i1 %diff.check, %diff.check418
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ik, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ir = add i64 %index, %.val.i.i               ; 2 uses
  %i.is = add i64 %i.ir, %i.il                    ; 2 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.is
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.is
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.ir
  %wide.load = load <8 x i16>, ptr %i.it, align 2, !noalias !7971 ; 5 uses
  %wide.load419 = load <8 x i16>, ptr %i.iu, align 2, !noalias !7971 ; 6 uses
  %i.iw = and <8 x i16> %wide.load, splat (i16 32767) ; 2 uses
  %i.ix = icmp samesign ugt <8 x i16> %i.iw, splat (i16 31744)
  %i.iy = and <8 x i16> %wide.load419, splat (i16 32767)
  %i.iz = icmp samesign ugt <8 x i16> %i.iy, splat (i16 31744)
  %i.ja = select <8 x i1> %i.ix, <8 x i1> splat (i1 true), <8 x i1> %i.iz ; 3 uses
  %i.jb = xor <8 x i1> %i.ja, splat (i1 true)
  %i.jc = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.jd = icmp sgt <8 x i16> %wide.load419, splat (i16 -1) ; 3 uses
  %i.je = select <8 x i1> %i.ja, <8 x i1> splat (i1 true), <8 x i1> %i.jc ; 2 uses
  %i.jf = xor <8 x i1> %i.je, splat (i1 true)
  %i.jg = select <8 x i1> %i.je, <8 x i1> splat (i1 true), <8 x i1> %i.jd
  %i.jh = icmp ule <8 x i16> %wide.load, %wide.load419
  %i.ji = select <8 x i1> %i.jf, <8 x i1> %i.jd, <8 x i1> zeroinitializer
  %i.jj = or <8 x i16> %wide.load419, %i.iw
  %i.jk = icmp eq <8 x i16> %i.jj, zeroinitializer
  %i.jl = select <8 x i1> %i.jb, <8 x i1> %i.jc, <8 x i1> zeroinitializer
  %i.jm = icmp ult <8 x i16> %wide.load, %wide.load419
  %i.jn = and <8 x i1> %i.jd, %i.jm
  %i.jo = xor <8 x i1> %i.jn, splat (i1 true)
  %i.jp = select <8 x i1> %i.jl, <8 x i1> %i.jo, <8 x i1> zeroinitializer
  %i.jq = select <8 x i1> %i.ji, <8 x i1> %i.jk, <8 x i1> zeroinitializer
  %i.jr = select <8 x i1> %i.jg, <8 x i1> %i.jq, <8 x i1> %i.jh
  %7 = or <8 x i1> %i.jr, %i.jp
  %i.js = or <8 x i1> %7, %i.ja
  %predphi = select <8 x i1> %i.js, <8 x i16> %wide.load, <8 x i16> %wide.load419
  store <8 x i16> %predphi, ptr %i.iv, align 2, !noalias !7971
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jt = icmp eq i64 %index.next, %n.vec
  br i1 %i.jt, label %middle.block, label %vector.body, !llvm.loop !7935

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ik, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.ju, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ju = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.jv = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jw = add i64 %i.jv, %i.il                    ; 2 uses
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jw
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jv
  %i.ka = load i16, ptr %i.jx, align 2, !noalias !7971, !noundef !5 ; 8 uses
  %i.kb = load i16, ptr %i.jy, align 2, !noalias !7971, !noundef !5 ; 6 uses
  %i.kc = and i16 %i.ka, 32767                    ; 2 uses
  %i.kd = icmp samesign ugt i16 %i.kc, 31744
  %i.ke = and i16 %i.kb, 32767
  %i.kf = icmp samesign ugt i16 %i.ke, 31744
  %or.cond.i.i.i.i.i = select i1 %i.kd, i1 true, i1 %i.kf
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp sgt i16 %i.ka, -1
  %.not1.i.i.i.i.i = icmp sgt i16 %i.kb, -1       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i, label %bb.o

.split.i.i.i.i:                                   ; preds = %bb.n
  %i.kg = icmp ult i16 %i.ka, %i.kb
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kg
  br i1 %spec.select.i.i.i.i.i, label %bb.p, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

bb.o:                                             ; preds = %bb.n
  br i1 %.not1.i.i.i.i.i, label %.split4.i.i.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.o
  %i.kh = or i16 %i.kb, %i.kc
  %.not.i.i.i.i = icmp eq i16 %i.kh, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.p

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i: ; preds = %bb.o
  %i.ki = icmp samesign ugt i16 %i.ka, %i.kb
  br i1 %i.ki, label %bb.p, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

bb.p:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i: ; preds = %bb.p, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i, %.split4.i.i.i.i, %.split.i.i.i.i, %scalar.ph
  %i.kj = phi i16 [ %i.kb, %bb.p ], [ %i.ka, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i.i.i.i ], [ %i.ka, %.split4.i.i.i.i ], [ %i.ka, %.split.i.i.i.i ], [ %i.ka, %scalar.ph ]
  store i16 %i.kj, ptr %i.jz, align 2, !noalias !7971
  %exitcond.not.i.i = icmp eq i64 %i.ju, %i.ik
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %scalar.ph, !llvm.loop !7936

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7965
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.ah, %bb.w, %bb.f, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit
  %i.kk = add i64 %.sroa.0.0170, %i.v
  %i.kl = load i64, ptr %i.aa, align 8, !alias.scope !7963, !noundef !5 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.km, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit, label %bb.e

bb.q:                                             ; preds = %bb.j
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.ko = load i16, ptr %i.kn, align 2, !noundef !5 ; 12 uses
  %i.kp = add i64 %.sroa.082.0.copyload, %i.v     ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.kp, %4
  %or.cond58 = or i1 %i.kq, %.not
  br i1 %or.cond58, label %.invoke390, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.kr = add i64 %.sroa.0.0170, %i.v             ; 3 uses
  %i.ks = icmp ult i64 %i.kr, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.kr, %i.m
  %or.cond59 = or i1 %i.ks, %.not52
  br i1 %or.cond59, label %.invoke390, label %bb.s, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7972
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %i.v
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ku, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1X_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %i.kt, ptr noundef nonnull readonly %i.kv, ptr noundef nonnull align 2 %i.ku, ptr noundef nonnull %i.kw)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !7973)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !7973, !noalias !7974, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !7973, !noalias !7974, !noundef !5 ; 6 uses
  %i.kx = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !7975, !noalias !7974, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66424 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !7975, !noalias !7974, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i425 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.ky = and i16 %i.ko, 32767
  %i.kz = icmp samesign ugt i16 %i.ky, 31744
  %i.la = sub i64 %.val.i.i.i66424, %.val1.i.i.i425
  %diff.check429 = icmp ugt i64 %i.la, -32        ; 3 uses
  br i1 %i.kz, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check427 = icmp ult i64 %i.kx, 4
  %or.cond534 = or i1 %min.iters.check427, %diff.check429
  br i1 %or.cond534, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check430 = icmp ult i64 %i.kx, 16
  br i1 %min.iters.check430, label %vec.epilog.ph, label %vector.ph431

vector.ph431:                                     ; preds = %vector.main.loop.iter.check
  %i.lb = and i64 %i.kx, 12
  %n.vec432 = and i64 %i.kx, -16                  ; 4 uses
  br label %vector.body433

vector.body433:                                   ; preds = %vector.ph431, %vector.body433
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next437, %vector.body433 ] ; 2 uses
  %i.lc = add i64 %index434, %.val.i.i62          ; 2 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load435 = load <8 x i16>, ptr %i.ld, align 2, !noalias !7973
  %wide.load436 = load <8 x i16>, ptr %i.lf, align 2, !noalias !7973
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <8 x i16> %wide.load435, ptr %i.le, align 2, !alias.scope !7976, !noalias !7973
  store <8 x i16> %wide.load436, ptr %i.lg, align 2, !alias.scope !7976, !noalias !7973
  %index.next437 = add nuw i64 %index434, 16      ; 2 uses
  %i.lh = icmp eq i64 %index.next437, %n.vec432
  br i1 %i.lh, label %middle.block438, label %vector.body433, !llvm.loop !7951

middle.block438:                                  ; preds = %vector.body433
  %cmp.n439 = icmp eq i64 %i.kx, %n.vec432
  br i1 %cmp.n439, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block438
  %min.epilog.iters.check = icmp eq i64 %i.lb, 0
  br i1 %min.epilog.iters.check, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec432, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec440 = and i64 %i.kx, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index441 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next443, %vec.epilog.vector.body ] ; 2 uses
  %i.li = add i64 %index441, %.val.i.i62          ; 2 uses
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.li
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.li
  %wide.load442 = load <4 x i16>, ptr %i.lj, align 2, !noalias !7973
  store <4 x i16> %wide.load442, ptr %i.lk, align 2, !alias.scope !7976, !noalias !7973
  %index.next443 = add nuw i64 %index441, 4       ; 2 uses
  %i.ll = icmp eq i64 %index.next443, %n.vec440
  br i1 %i.ll, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7952

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n444 = icmp eq i64 %i.kx, %n.vec440
  br i1 %cmp.n444, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec432, %vec.epilog.iter.check ], [ %n.vec440, %vec.epilog.middle.block ] ; 3 uses
  %i.lm = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter560 = and i64 %i.lm, 3                 ; 2 uses
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.ln, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader ]
  %i.ln = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.lo = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lo
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lo
  %.val8.us.i.i.prol = load i16, ptr %i.lp, align 2, !noalias !7973, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.lq, align 2, !alias.scope !7976, !noalias !7973
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter560
  br i1 %prol.iter.cmp.not, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol, !llvm.loop !7953

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader ], [ %i.ln, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol ]
  %i.lr = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.ls = add i64 %i.lr, %.val.i.i62
  %i.lt = icmp ugt i64 %i.ls, -4
  br i1 %i.lt, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader.new

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader.new: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit
  %invariant.op571 = add i64 1, %.val.i.i62
  %invariant.op573 = add i64 2, %.val.i.i62
  %invariant.op575 = add i64 3, %.val.i.i62
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.preheader.new ], [ %i.mb, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i ] ; 5 uses
  %i.lu = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lu
  %.val8.us.i.i = load i16, ptr %i.lv, align 2, !noalias !7973, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.lw, align 2, !alias.scope !7976, !noalias !7973
  %.reass572 = add i64 %.sroa.0.010.us.i.i, %invariant.op571 ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass572
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass572
  %.val8.us.i.i.1 = load i16, ptr %i.lx, align 2, !noalias !7973, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.ly, align 2, !alias.scope !7976, !noalias !7973
  %.reass574 = add i64 %.sroa.0.010.us.i.i, %invariant.op573 ; 2 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass574
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass574
  %.val8.us.i.i.2 = load i16, ptr %i.lz, align 2, !noalias !7973, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.ma, align 2, !alias.scope !7976, !noalias !7973
  %i.mb = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass576 = add i64 %.sroa.0.010.us.i.i, %invariant.op575 ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass576
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass576
  %.val8.us.i.i.3 = load i16, ptr %i.mc, align 2, !noalias !7973, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.md, align 2, !alias.scope !7976, !noalias !7973
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mb, %i.kx
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i, !llvm.loop !7954

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp sgt i16 %i.ko, -1
  br i1 %.not1.i.i.i.i.i67, label %iter.check465, label %iter.check501

iter.check501:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check485 = icmp ult i64 %i.kx, 4
  %or.cond535 = or i1 %min.iters.check485, %diff.check429
  br i1 %or.cond535, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check488

vector.main.loop.iter.check488:                   ; preds = %iter.check501
  %min.iters.check489 = icmp ult i64 %i.kx, 16
  br i1 %min.iters.check489, label %vec.epilog.ph505, label %vector.ph490

vector.ph490:                                     ; preds = %vector.main.loop.iter.check488
  %i.me = and i64 %i.kx, 12
  %n.vec491 = and i64 %i.kx, -16                  ; 4 uses
  %broadcast.splatinsert492 = insertelement <8 x i16> poison, i16 %i.ko, i64 0
  %broadcast.splat493 = shufflevector <8 x i16> %broadcast.splatinsert492, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.ph490, %vector.body494
  %index495 = phi i64 [ 0, %vector.ph490 ], [ %index.next498, %vector.body494 ] ; 2 uses
  %i.mf = add i64 %index495, %.val.i.i62          ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mf ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mf ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %wide.load496 = load <8 x i16>, ptr %i.mg, align 2, !noalias !7973 ; 4 uses
  %wide.load497 = load <8 x i16>, ptr %i.mi, align 2, !noalias !7973 ; 4 uses
  %i.mj = and <8 x i16> %wide.load496, splat (i16 32767)
  %i.mk = and <8 x i16> %wide.load497, splat (i16 32767)
  %i.ml = icmp samesign ugt <8 x i16> %i.mj, splat (i16 31744)
  %i.mm = icmp samesign ugt <8 x i16> %i.mk, splat (i16 31744)
  %i.mn = icmp sgt <8 x i16> %wide.load496, splat (i16 -1)
  %i.mo = icmp sgt <8 x i16> %wide.load497, splat (i16 -1)
  %i.mp = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load496, <8 x i16> %broadcast.splat493)
  %i.mq = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load497, <8 x i16> %broadcast.splat493)
  %i.mr = or <8 x i1> %i.mn, %i.ml
  %i.ms = or <8 x i1> %i.mo, %i.mm
  %i.mt = select <8 x i1> %i.mr, <8 x i16> %wide.load496, <8 x i16> %i.mp
  %i.mu = select <8 x i1> %i.ms, <8 x i16> %wide.load497, <8 x i16> %i.mq
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <8 x i16> %i.mt, ptr %i.mh, align 2, !alias.scope !7976, !noalias !7973
  store <8 x i16> %i.mu, ptr %i.mv, align 2, !alias.scope !7976, !noalias !7973
  %index.next498 = add nuw i64 %index495, 16      ; 2 uses
  %i.mw = icmp eq i64 %index.next498, %n.vec491
  br i1 %i.mw, label %middle.block499, label %vector.body494, !llvm.loop !7955

middle.block499:                                  ; preds = %vector.body494
  %cmp.n500 = icmp eq i64 %i.kx, %n.vec491
  br i1 %cmp.n500, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check502

vec.epilog.iter.check502:                         ; preds = %middle.block499
  %min.epilog.iters.check504 = icmp eq i64 %i.me, 0
  br i1 %min.epilog.iters.check504, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph505, !prof !15

vec.epilog.ph505:                                 ; preds = %vector.main.loop.iter.check488, %vec.epilog.iter.check502
  %vec.epilog.resume.val506 = phi i64 [ %n.vec491, %vec.epilog.iter.check502 ], [ 0, %vector.main.loop.iter.check488 ]
  %n.vec507 = and i64 %i.kx, -4                   ; 3 uses
  %broadcast.splatinsert508 = insertelement <4 x i16> poison, i16 %i.ko, i64 0
  %broadcast.splat509 = shufflevector <4 x i16> %broadcast.splatinsert508, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body510

vec.epilog.vector.body510:                        ; preds = %vec.epilog.vector.body510, %vec.epilog.ph505
  %index511 = phi i64 [ %vec.epilog.resume.val506, %vec.epilog.ph505 ], [ %index.next513, %vec.epilog.vector.body510 ] ; 2 uses
  %i.mx = add i64 %index511, %.val.i.i62          ; 2 uses
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mx
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mx
  %wide.load512 = load <4 x i16>, ptr %i.my, align 2, !noalias !7973 ; 4 uses
  %i.na = and <4 x i16> %wide.load512, splat (i16 32767)
  %i.nb = icmp samesign ugt <4 x i16> %i.na, splat (i16 31744)
  %i.nc = icmp sgt <4 x i16> %wide.load512, splat (i16 -1)
  %i.nd = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load512, <4 x i16> %broadcast.splat509)
  %i.ne = or <4 x i1> %i.nc, %i.nb
  %i.nf = select <4 x i1> %i.ne, <4 x i16> %wide.load512, <4 x i16> %i.nd
  store <4 x i16> %i.nf, ptr %i.mz, align 2, !alias.scope !7976, !noalias !7973
  %index.next513 = add nuw i64 %index511, 4       ; 2 uses
  %i.ng = icmp eq i64 %index.next513, %n.vec507
  br i1 %i.ng, label %vec.epilog.middle.block514, label %vec.epilog.vector.body510, !llvm.loop !7956

vec.epilog.middle.block514:                       ; preds = %vec.epilog.vector.body510
  %cmp.n515 = icmp eq i64 %i.kx, %n.vec507
  br i1 %cmp.n515, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check501, %vec.epilog.iter.check502, %vec.epilog.middle.block514
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check501 ], [ %n.vec491, %vec.epilog.iter.check502 ], [ %n.vec507, %vec.epilog.middle.block514 ] ; 4 uses
  %i.nh = sub i64 %.val6.i.i63, %.val.i.i62
  %i.ni = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.nj = add i64 %.val6.i.i63, %i.ni
  %xtraiter = and i64 %i.nh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.nk = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.nl = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nl
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nl
  %.val8.i.i.prol = load i16, ptr %i.nm, align 2, !noalias !7973, !noundef !5 ; 4 uses
  %i.no = and i16 %.val8.i.i.prol, 32767
  %i.np = icmp samesign ugt i16 %i.no, 31744
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %i.nq = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.ko)
  %i.nr = or i1 %.not.i.i.i.i.i68.prol, %i.np
  %i.ns = select i1 %i.nr, i16 %.val8.i.i.prol, i16 %i.nq
  store i16 %i.ns, ptr %i.nn, align 2, !alias.scope !7976, !noalias !7973
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.nk, %.lr.ph.split.split.i.i.prol ]
  %i.nt = icmp eq i64 %i.nj, %.val.i.i62
  br i1 %i.nt, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check465:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check449 = icmp ult i64 %i.kx, 8
  %or.cond536 = or i1 %min.iters.check449, %diff.check429
  br i1 %or.cond536, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check452

vector.main.loop.iter.check452:                   ; preds = %iter.check465
  %min.iters.check453 = icmp ult i64 %i.kx, 16
  br i1 %min.iters.check453, label %vec.epilog.ph469, label %vector.ph454

vector.ph454:                                     ; preds = %vector.main.loop.iter.check452
  %i.nu = and i64 %i.kx, 8
  %n.vec455 = and i64 %i.kx, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ko, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body456

vector.body456:                                   ; preds = %vector.ph454, %vector.body456
  %index457 = phi i64 [ 0, %vector.ph454 ], [ %index.next462, %vector.body456 ] ; 2 uses
  %i.nv = add i64 %index457, %.val.i.i62          ; 2 uses
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nv ; 2 uses
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nv ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %wide.load458 = load <8 x i16>, ptr %i.nw, align 2, !noalias !7973 ; 4 uses
  %wide.load459 = load <8 x i16>, ptr %i.ny, align 2, !noalias !7973 ; 4 uses
  %i.nz = and <8 x i16> %wide.load458, splat (i16 32767) ; 2 uses
  %i.oa = and <8 x i16> %wide.load459, splat (i16 32767) ; 2 uses
  %i.ob = icmp samesign ugt <8 x i16> %i.nz, splat (i16 31744) ; 3 uses
  %i.oc = icmp samesign ugt <8 x i16> %i.oa, splat (i16 31744) ; 3 uses
  %8 = xor <8 x i1> %i.ob, splat (i1 true)
  %9 = xor <8 x i1> %i.oc, splat (i1 true)
  %i.od = icmp sgt <8 x i16> %wide.load458, splat (i16 -1) ; 2 uses
  %i.oe = icmp sgt <8 x i16> %wide.load459, splat (i16 -1) ; 2 uses
  %i.of = or <8 x i1> %i.ob, %i.od
  %i.og = xor <8 x i1> %i.of, splat (i1 true)
  %i.oh = or <8 x i1> %i.oc, %i.oe
  %i.oi = xor <8 x i1> %i.oh, splat (i1 true)
  %i.oj = or <8 x i16> %i.nz, %broadcast.splat
  %i.ok = or <8 x i16> %i.oa, %broadcast.splat
  %i.ol = icmp eq <8 x i16> %i.oj, zeroinitializer
  %i.om = icmp eq <8 x i16> %i.ok, zeroinitializer
  %i.on = icmp uge <8 x i16> %wide.load458, %broadcast.splat
  %i.oo = icmp uge <8 x i16> %wide.load459, %broadcast.splat
  %i.op = select <8 x i1> %i.og, <8 x i1> %i.ol, <8 x i1> zeroinitializer
  %i.oq = select <8 x i1> %i.oi, <8 x i1> %i.om, <8 x i1> zeroinitializer
  %i.or = and <8 x i1> %i.od, %i.on
  %10 = select <8 x i1> %8, <8 x i1> %i.or, <8 x i1> zeroinitializer
  %i.os = and <8 x i1> %i.oe, %i.oo
  %11 = select <8 x i1> %9, <8 x i1> %i.os, <8 x i1> zeroinitializer
  %i.ot = or <8 x i1> %10, %i.op
  %i.ou = or <8 x i1> %11, %i.oq
  %12 = or <8 x i1> %i.ot, %i.ob
  %13 = or <8 x i1> %i.ou, %i.oc
  %predphi460 = select <8 x i1> %12, <8 x i16> %wide.load458, <8 x i16> %broadcast.splat
  %predphi461 = select <8 x i1> %13, <8 x i16> %wide.load459, <8 x i16> %broadcast.splat
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store <8 x i16> %predphi460, ptr %i.nx, align 2, !alias.scope !7976, !noalias !7973
  store <8 x i16> %predphi461, ptr %i.ov, align 2, !alias.scope !7976, !noalias !7973
  %index.next462 = add nuw i64 %index457, 16      ; 2 uses
  %i.ow = icmp eq i64 %index.next462, %n.vec455
  br i1 %i.ow, label %middle.block463, label %vector.body456, !llvm.loop !7957

middle.block463:                                  ; preds = %vector.body456
  %cmp.n464 = icmp eq i64 %i.kx, %n.vec455
  br i1 %cmp.n464, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check466

vec.epilog.iter.check466:                         ; preds = %middle.block463
  %min.epilog.iters.check468.not.not = icmp eq i64 %i.nu, 0
  br i1 %min.epilog.iters.check468.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph469, !prof !17

vec.epilog.ph469:                                 ; preds = %vector.main.loop.iter.check452, %vec.epilog.iter.check466
  %vec.epilog.resume.val470 = phi i64 [ %n.vec455, %vec.epilog.iter.check466 ], [ 0, %vector.main.loop.iter.check452 ]
  %n.vec471 = and i64 %i.kx, -8                   ; 3 uses
  %broadcast.splatinsert472 = insertelement <8 x i16> poison, i16 %i.ko, i64 0
  %broadcast.splat473 = shufflevector <8 x i16> %broadcast.splatinsert472, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vec.epilog.vector.body474

vec.epilog.vector.body474:                        ; preds = %vec.epilog.vector.body474, %vec.epilog.ph469
  %index475 = phi i64 [ %vec.epilog.resume.val470, %vec.epilog.ph469 ], [ %index.next478, %vec.epilog.vector.body474 ] ; 2 uses
  %i.ox = add i64 %index475, %.val.i.i62          ; 2 uses
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ox
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ox
  %wide.load476 = load <8 x i16>, ptr %i.oy, align 2, !noalias !7973 ; 4 uses
  %i.pa = and <8 x i16> %wide.load476, splat (i16 32767) ; 2 uses
  %i.pb = icmp samesign ugt <8 x i16> %i.pa, splat (i16 31744) ; 3 uses
  %14 = xor <8 x i1> %i.pb, splat (i1 true)
  %i.pc = icmp sgt <8 x i16> %wide.load476, splat (i16 -1) ; 2 uses
  %i.pd = or <8 x i1> %i.pb, %i.pc
  %i.pe = xor <8 x i1> %i.pd, splat (i1 true)
  %i.pf = or <8 x i16> %i.pa, %broadcast.splat473
  %i.pg = icmp eq <8 x i16> %i.pf, zeroinitializer
  %i.ph = icmp uge <8 x i16> %wide.load476, %broadcast.splat473
  %i.pi = select <8 x i1> %i.pe, <8 x i1> %i.pg, <8 x i1> zeroinitializer
  %i.pj = and <8 x i1> %i.pc, %i.ph
  %15 = select <8 x i1> %14, <8 x i1> %i.pj, <8 x i1> zeroinitializer
  %i.pk = or <8 x i1> %15, %i.pi
  %16 = or <8 x i1> %i.pk, %i.pb
  %predphi477 = select <8 x i1> %16, <8 x i16> %wide.load476, <8 x i16> %broadcast.splat473
  store <8 x i16> %predphi477, ptr %i.oz, align 2, !alias.scope !7976, !noalias !7973
  %index.next478 = add nuw i64 %index475, 8       ; 2 uses
  %i.pl = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.pl, label %vec.epilog.middle.block479, label %vec.epilog.vector.body474, !llvm.loop !7958

vec.epilog.middle.block479:                       ; preds = %vec.epilog.vector.body474
  %cmp.n480 = icmp eq i64 %i.kx, %n.vec471
  br i1 %cmp.n480, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check465, %vec.epilog.iter.check466, %vec.epilog.middle.block479
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check465 ], [ %n.vec455, %vec.epilog.iter.check466 ], [ %n.vec471, %vec.epilog.middle.block479 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.pm, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.pm = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.pn = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pn
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pn
  %.val8.us12.i.i = load i16, ptr %i.po, align 2, !noalias !7973, !noundef !5 ; 6 uses
  %i.pq = and i16 %.val8.us12.i.i, 32767          ; 2 uses
  %i.pr = icmp samesign ugt i16 %i.pq, 31744
  br i1 %i.pr, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split.i.i.us.i.i, label %.split7.i.i.us.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.t
  %i.ps = or i16 %i.pq, %i.ko
  %.not.i.i.us.i.i = icmp eq i16 %i.ps, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, label %bb.u

.split.i.i.us.i.i:                                ; preds = %bb.t
  %i.pt = icmp ult i16 %.val8.us12.i.i, %i.ko
  br i1 %i.pt, label %bb.u, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i

bb.u:                                             ; preds = %.split.i.i.us.i.i, %.split7.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i: ; preds = %bb.u, %.split.i.i.us.i.i, %.split7.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.pu = phi i16 [ %i.ko, %bb.u ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.split.i.i.us.i.i ]
  store i16 %i.pu, ptr %i.pp, align 2, !alias.scope !7976, !noalias !7973
  %exitcond16.not.i.i = icmp eq i64 %i.pm, %i.kx
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !7959

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qd, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.pv = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pv
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pv
  %.val8.i.i = load i16, ptr %i.pw, align 2, !noalias !7973, !noundef !5 ; 4 uses
  %i.py = and i16 %.val8.i.i, 32767
  %i.pz = icmp samesign ugt i16 %i.py, 31744
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %i.qa = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.ko)
  %i.qb = or i1 %.not.i.i.i.i.i68, %i.pz
  %i.qc = select i1 %i.qb, i16 %.val8.i.i, i16 %i.qa
  store i16 %i.qc, ptr %i.px, align 2, !alias.scope !7976, !noalias !7973
  %i.qd = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qe, align 2, !noalias !7973, !noundef !5 ; 4 uses
  %i.qg = and i16 %.val8.i.i.1, 32767
  %i.qh = icmp samesign ugt i16 %i.qg, 31744
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %i.qi = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.ko)
  %i.qj = or i1 %.not.i.i.i.i.i68.1, %i.qh
  %i.qk = select i1 %i.qj, i16 %.val8.i.i.1, i16 %i.qi
  store i16 %i.qk, ptr %i.qf, align 2, !alias.scope !7976, !noalias !7973
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qd, %i.kx
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i, !llvm.loop !7960

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i.prol.loopexit, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us.i.i, %middle.block499, %vec.epilog.middle.block514, %middle.block463, %vec.epilog.middle.block479, %middle.block438, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7972
  br label %.loopexit

.invoke390:                                       ; preds = %bb.r, %bb.q, %bb.l, %bb.k, %bb.i
  %i.ql = phi i64 [ %.sroa.082.0.copyload, %bb.q ], [ %.sroa.0.0170, %bb.l ], [ %.sroa.4.0.copyload, %bb.k ], [ %.sroa.082.0.copyload, %bb.i ], [ %.sroa.0.0170, %bb.r ]
  %i.qm = phi i64 [ %i.kp, %bb.q ], [ %i.id, %bb.l ], [ %i.ib, %bb.k ], [ %i.hx, %bb.i ], [ %i.kr, %bb.r ]
  %i.qn = phi i64 [ %4, %bb.q ], [ %i.m, %bb.l ], [ %6, %bb.k ], [ %4, %bb.i ], [ %i.m, %bb.r ]
  %i.qo = phi ptr [ @13, %bb.q ], [ @8, %bb.l ], [ @9, %bb.k ], [ @10, %bb.i ], [ @12, %bb.r ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ql, i64 noundef %i.qm, i64 noundef %i.qn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qo) #20
          to label %.cont391 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont391:                                         ; preds = %.invoke390
  unreachable

bb.v:                                             ; preds = %bb.h
  %i.qp = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.qp, label %bb.w, label %.invoke

bb.w:                                             ; preds = %bb.v
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.qr = load i16, ptr %i.qq, align 2, !noundef !5 ; 9 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.qs = and i16 %i.qr, 32767                    ; 3 uses
  %i.qt = icmp samesign ugt i16 %i.qs, 31744      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.qr, -1            ; 2 uses
  %i.qu = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.qv = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0170)
  %i.qw = mul i64 %i.v, %indvar
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = call i64 @llvm.umin.i64(i64 %i.qx, i64 %i.qu)
  %i.qz = call i64 @llvm.umin.i64(i64 %i.qy, i64 %i.aq) ; 2 uses
  %min.iters.check518 = icmp samesign ult i64 %i.qz, 8
  br i1 %min.iters.check518, label %scalar.ph517.preheader, label %vector.ph519

vector.ph519:                                     ; preds = %.lr.ph
  %i.ra = add nuw nsw i64 %i.qz, 1                ; 2 uses
  %i.rb = and i64 %i.ra, 7                        ; 2 uses
  %i.rc = icmp eq i64 %i.rb, 0
  %i.rd = select i1 %i.rc, i64 8, i64 %i.rb
  %n.vec520 = sub nsw i64 %i.ra, %i.rd            ; 2 uses
  %broadcast.splatinsert521 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat522 = shufflevector <8 x i1> %broadcast.splatinsert521, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.re = xor <8 x i1> %broadcast.splat522, splat (i1 true)
  %broadcast.splatinsert523 = insertelement <8 x i16> poison, i16 %i.qs, i64 0
  %broadcast.splat524 = shufflevector <8 x i16> %broadcast.splatinsert523, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert525 = insertelement <8 x i16> poison, i16 %i.qr, i64 0
  %broadcast.splat526 = shufflevector <8 x i16> %broadcast.splatinsert525, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep569 = getelementptr [2 x i8], ptr %i.p, i64 %.sroa.0.0170
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph519
  %index528 = phi i64 [ 0, %vector.ph519 ], [ %index.next531, %vector.body527 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index528
  %wide.load529 = load <8 x i16>, ptr %gep, align 2 ; 6 uses
  %i.rf = and <8 x i16> %wide.load529, splat (i16 32767)
  %i.rg = icmp samesign ugt <8 x i16> %i.rf, splat (i16 31744)
  %i.rh = select i1 %i.qt, <8 x i1> splat (i1 true), <8 x i1> %i.rg ; 2 uses
  %i.ri = xor <8 x i1> %i.rh, splat (i1 true)     ; 2 uses
  %i.rj = icmp slt <8 x i16> %wide.load529, zeroinitializer ; 2 uses
  %i.rk = and <8 x i1> %i.ri, %i.re
  %i.rl = icmp ule <8 x i16> %broadcast.splat526, %wide.load529
  %i.rm = or <8 x i16> %wide.load529, %broadcast.splat524
  %i.rn = icmp eq <8 x i16> %i.rm, zeroinitializer
  %i.ro = and <8 x i1> %broadcast.splat522, %i.ri
  %i.rp = icmp uge <8 x i16> %broadcast.splat526, %wide.load529
  %.not539 = or <8 x i1> %i.rj, %i.rp
  %i.rq = select <8 x i1> %i.ro, <8 x i1> %.not539, <8 x i1> zeroinitializer
  %i.rr = select <8 x i1> %i.rj, <8 x i1> %i.rl, <8 x i1> %i.rn
  %i.rs = select <8 x i1> %i.rk, <8 x i1> %i.rr, <8 x i1> zeroinitializer
  %i.rt = or <8 x i1> %i.rs, %i.rq
  %i.ru = or <8 x i1> %i.rt, %i.rh
  %predphi530 = select <8 x i1> %i.ru, <8 x i16> %broadcast.splat526, <8 x i16> %wide.load529
  %gep570 = getelementptr [2 x i8], ptr %invariant.gep569, i64 %index528
  store <8 x i16> %predphi530, ptr %gep570, align 2
  %index.next531 = add nuw i64 %index528, 8       ; 2 uses
  %i.rv = icmp eq i64 %index.next531, %n.vec520
  br i1 %i.rv, label %scalar.ph517.preheader, label %vector.body527, !llvm.loop !7961

scalar.ph517.preheader:                           ; preds = %vector.body527, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec520, %vector.body527 ]
  br label %scalar.ph517

scalar.ph517:                                     ; preds = %scalar.ph517.preheader, %bb.ab
  %.sroa.020.0167 = phi i64 [ %i.rw, %bb.ab ], [ %.sroa.020.0167.ph, %scalar.ph517.preheader ] ; 4 uses
  %i.rw = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.rx = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.qu
  br i1 %exitcond.not, label %.invoke, label %bb.x

bb.x:                                             ; preds = %scalar.ph517
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.rx
  %i.rz = load i16, ptr %i.ry, align 2, !noundef !5 ; 6 uses
  %i.sa = and i16 %i.rz, 32767
  %i.sb = icmp samesign ugt i16 %i.sa, 31744
  %or.cond.i.i = select i1 %i.qt, i1 true, i1 %i.sb
  br i1 %or.cond.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not1.i.i = icmp sgt i16 %i.rz, -1             ; 2 uses
  br i1 %.not.i.i71, label %.split.i, label %bb.z

.split.i:                                         ; preds = %bb.y
  %i.sc = icmp ult i16 %i.qr, %i.rz
  %spec.select.i.i = and i1 %.not1.i.i, %i.sc
  br i1 %spec.select.i.i, label %bb.aa, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit

bb.z:                                             ; preds = %bb.y
  br i1 %.not1.i.i, label %.split4.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i

.split4.i:                                        ; preds = %bb.z
  %i.sd = or i16 %i.rz, %i.qs
  %.not.i72 = icmp eq i16 %i.sd, 0
  br i1 %.not.i72, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, label %bb.aa

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i: ; preds = %bb.z
  %i.se = icmp samesign ugt i16 %i.qr, %i.rz
  br i1 %i.se, label %bb.aa, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit

bb.aa:                                            ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i
  br label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MaximumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit: ; preds = %bb.aa, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2lt.exit.i, %.split4.i, %.split.i, %bb.x
end_hunk_2
begin_hunk_3_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MinimumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecEB6_:bb.a
  %xtraiter557 = and i64 %i.lr, 3                 ; 2 uses
  %lcmp.mod558.not = icmp eq i64 %xtraiter557, 0
  br i1 %lcmp.mod558.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.ls, %.lr.ph.split.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.ls = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.lt = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lt
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lt
  %.val8.us.i.i.prol = load i16, ptr %i.lu, align 2, !noalias !8042, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.lv, align 2, !alias.scope !8045, !noalias !8042
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter557
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !8022

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.ls, %.lr.ph.split.us.i.i.prol ]
  %i.lw = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
  %i.lx = add i64 %i.lw, %.val.i.i62
  %i.ly = icmp ugt i64 %i.lx, -4
  br i1 %i.ly, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.prol.loopexit
  %invariant.op568 = add i64 1, %.val.i.i62
  %invariant.op570 = add i64 2, %.val.i.i62
  %invariant.op572 = add i64 3, %.val.i.i62
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %.sroa.0.010.us.i.i = phi i64 [ %.sroa.0.010.us.i.i.unr, %.lr.ph.split.us.i.i.preheader.new ], [ %i.mg, %.lr.ph.split.us.i.i ] ; 5 uses
  %i.lz = add i64 %.sroa.0.010.us.i.i, %.val.i.i62 ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lz
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lz
  %.val8.us.i.i = load i16, ptr %i.ma, align 2, !noalias !8042, !noundef !5
  store i16 %.val8.us.i.i, ptr %i.mb, align 2, !alias.scope !8045, !noalias !8042
  %.reass569 = add i64 %.sroa.0.010.us.i.i, %invariant.op568 ; 2 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass569
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass569
  %.val8.us.i.i.1 = load i16, ptr %i.mc, align 2, !noalias !8042, !noundef !5
  store i16 %.val8.us.i.i.1, ptr %i.md, align 2, !alias.scope !8045, !noalias !8042
  %.reass571 = add i64 %.sroa.0.010.us.i.i, %invariant.op570 ; 2 uses
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass571
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass571
  %.val8.us.i.i.2 = load i16, ptr %i.me, align 2, !noalias !8042, !noundef !5
  store i16 %.val8.us.i.i.2, ptr %i.mf, align 2, !alias.scope !8045, !noalias !8042
  %i.mg = add nuw i64 %.sroa.0.010.us.i.i, 4      ; 2 uses
  %.reass573 = add i64 %.sroa.0.010.us.i.i, %invariant.op572 ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass573
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass573
  %.val8.us.i.i.3 = load i16, ptr %i.mh, align 2, !noalias !8042, !noundef !5
  store i16 %.val8.us.i.i.3, ptr %i.mi, align 2, !alias.scope !8045, !noalias !8042
  %exitcond18.not.i.i.3 = icmp eq i64 %i.mg, %i.lc
  br i1 %exitcond18.not.i.i.3, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !8023

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i65
  %.not1.i.i.i.i.i67 = icmp slt i16 %i.kt, 0
  br i1 %.not1.i.i.i.i.i67, label %iter.check463, label %iter.check501

iter.check501:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check485 = icmp ult i64 %i.lc, 4
  %or.cond535 = or i1 %min.iters.check485, %diff.check425
  br i1 %or.cond535, label %.lr.ph.split.split.i.i.preheader, label %vector.main.loop.iter.check488

vector.main.loop.iter.check488:                   ; preds = %iter.check501
  %min.iters.check489 = icmp ult i64 %i.lc, 16
  br i1 %min.iters.check489, label %vec.epilog.ph505, label %vector.ph490

vector.ph490:                                     ; preds = %vector.main.loop.iter.check488
  %i.mj = and i64 %i.lc, 12
  %n.vec491 = and i64 %i.lc, -16                  ; 4 uses
  %broadcast.splatinsert492 = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat493 = shufflevector <8 x i16> %broadcast.splatinsert492, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.ph490, %vector.body494
  %index495 = phi i64 [ 0, %vector.ph490 ], [ %index.next498, %vector.body494 ] ; 2 uses
  %i.mk = add i64 %index495, %.val.i.i62          ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.mk ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %wide.load496 = load <8 x i16>, ptr %i.ml, align 2, !noalias !8042 ; 4 uses
  %wide.load497 = load <8 x i16>, ptr %i.mn, align 2, !noalias !8042 ; 4 uses
  %i.mo = and <8 x i16> %wide.load496, splat (i16 32767)
  %i.mp = and <8 x i16> %wide.load497, splat (i16 32767)
  %i.mq = icmp samesign ult <8 x i16> %i.mo, splat (i16 31745)
  %i.mr = icmp samesign ult <8 x i16> %i.mp, splat (i16 31745)
  %i.ms = icmp sgt <8 x i16> %wide.load496, splat (i16 -1)
  %i.mt = icmp sgt <8 x i16> %wide.load497, splat (i16 -1)
  %i.mu = and <8 x i1> %i.ms, %i.mq
  %i.mv = and <8 x i1> %i.mt, %i.mr
  %i.mw = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load496, <8 x i16> %broadcast.splat493)
  %i.mx = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load497, <8 x i16> %broadcast.splat493)
  %i.my = select <8 x i1> %i.mu, <8 x i16> %i.mw, <8 x i16> %wide.load496
  %i.mz = select <8 x i1> %i.mv, <8 x i16> %i.mx, <8 x i16> %wide.load497
  %i.na = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store <8 x i16> %i.my, ptr %i.mm, align 2, !alias.scope !8045, !noalias !8042
  store <8 x i16> %i.mz, ptr %i.na, align 2, !alias.scope !8045, !noalias !8042
  %index.next498 = add nuw i64 %index495, 16      ; 2 uses
  %i.nb = icmp eq i64 %index.next498, %n.vec491
  br i1 %i.nb, label %middle.block499, label %vector.body494, !llvm.loop !8024

middle.block499:                                  ; preds = %vector.body494
  %cmp.n500 = icmp eq i64 %i.lc, %n.vec491
  br i1 %cmp.n500, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check502

vec.epilog.iter.check502:                         ; preds = %middle.block499
  %min.epilog.iters.check504 = icmp eq i64 %i.mj, 0
  br i1 %min.epilog.iters.check504, label %.lr.ph.split.split.i.i.preheader, label %vec.epilog.ph505, !prof !15

vec.epilog.ph505:                                 ; preds = %vector.main.loop.iter.check488, %vec.epilog.iter.check502
  %vec.epilog.resume.val506 = phi i64 [ %n.vec491, %vec.epilog.iter.check502 ], [ 0, %vector.main.loop.iter.check488 ]
  %n.vec507 = and i64 %i.lc, -4                   ; 3 uses
  %broadcast.splatinsert508 = insertelement <4 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat509 = shufflevector <4 x i16> %broadcast.splatinsert508, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body510

vec.epilog.vector.body510:                        ; preds = %vec.epilog.vector.body510, %vec.epilog.ph505
  %index511 = phi i64 [ %vec.epilog.resume.val506, %vec.epilog.ph505 ], [ %index.next513, %vec.epilog.vector.body510 ] ; 2 uses
  %i.nc = add i64 %index511, %.val.i.i62          ; 2 uses
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nc
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nc
  %wide.load512 = load <4 x i16>, ptr %i.nd, align 2, !noalias !8042 ; 4 uses
  %i.nf = and <4 x i16> %wide.load512, splat (i16 32767)
  %i.ng = icmp samesign ult <4 x i16> %i.nf, splat (i16 31745)
  %i.nh = icmp sgt <4 x i16> %wide.load512, splat (i16 -1)
  %i.ni = and <4 x i1> %i.nh, %i.ng
  %i.nj = call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load512, <4 x i16> %broadcast.splat509)
  %i.nk = select <4 x i1> %i.ni, <4 x i16> %i.nj, <4 x i16> %wide.load512
  store <4 x i16> %i.nk, ptr %i.ne, align 2, !alias.scope !8045, !noalias !8042
  %index.next513 = add nuw i64 %index511, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next513, %n.vec507
  br i1 %i.nl, label %vec.epilog.middle.block514, label %vec.epilog.vector.body510, !llvm.loop !8025

vec.epilog.middle.block514:                       ; preds = %vec.epilog.vector.body510
  %cmp.n515 = icmp eq i64 %i.lc, %n.vec507
  br i1 %cmp.n515, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader

.lr.ph.split.split.i.i.preheader:                 ; preds = %iter.check501, %vec.epilog.iter.check502, %vec.epilog.middle.block514
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check501 ], [ %n.vec491, %vec.epilog.iter.check502 ], [ %n.vec507, %vec.epilog.middle.block514 ] ; 4 uses
  %i.nm = sub i64 %.val6.i.i63, %.val.i.i62
  %i.nn = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.no = add i64 %.val6.i.i63, %i.nn
  %xtraiter = and i64 %i.nm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.i.prol.loopexit, label %.lr.ph.split.split.i.i.prol

.lr.ph.split.split.i.i.prol:                      ; preds = %.lr.ph.split.split.i.i.preheader
  %i.np = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.nq = add i64 %.sroa.0.010.i.i.ph, %.val.i.i62 ; 2 uses
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.nq
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.nq
  %.val8.i.i.prol = load i16, ptr %i.nr, align 2, !noalias !8042, !noundef !5 ; 4 uses
  %i.nt = and i16 %.val8.i.i.prol, 32767
  %i.nu = icmp samesign ult i16 %i.nt, 31745
  %.not.i.i.i.i.i68.prol = icmp sgt i16 %.val8.i.i.prol, -1
  %or.cond.i.i.prol = and i1 %.not.i.i.i.i.i68.prol, %i.nu
  %spec.select.i.i.prol = call i16 @llvm.umin.i16(i16 %.val8.i.i.prol, i16 %i.kt)
  %i.nv = select i1 %or.cond.i.i.prol, i16 %spec.select.i.i.prol, i16 %.val8.i.i.prol
  store i16 %i.nv, ptr %i.ns, align 2, !alias.scope !8045, !noalias !8042
  br label %.lr.ph.split.split.i.i.prol.loopexit

.lr.ph.split.split.i.i.prol.loopexit:             ; preds = %.lr.ph.split.split.i.i.prol, %.lr.ph.split.split.i.i.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %.lr.ph.split.split.i.i.preheader ], [ %i.np, %.lr.ph.split.split.i.i.prol ]
  %i.nw = icmp eq i64 %i.no, %.val.i.i62
  br i1 %i.nw, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i.preheader.new

.lr.ph.split.split.i.i.preheader.new:             ; preds = %.lr.ph.split.split.i.i.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i62
  br label %.lr.ph.split.split.i.i

iter.check463:                                    ; preds = %.lr.ph.split.i.i
  %min.iters.check445 = icmp ult i64 %i.lc, 8
  %or.cond536 = or i1 %min.iters.check445, %diff.check425
  br i1 %or.cond536, label %.lr.ph.split.split.us.i.i.preheader, label %vector.main.loop.iter.check448

vector.main.loop.iter.check448:                   ; preds = %iter.check463
  %min.iters.check449 = icmp ult i64 %i.lc, 16
  br i1 %min.iters.check449, label %vec.epilog.ph467, label %vector.ph450

vector.ph450:                                     ; preds = %vector.main.loop.iter.check448
  %i.nx = and i64 %i.lc, 8
  %n.vec451 = and i64 %i.lc, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert452 = insertelement <8 x i16> poison, i16 %i.ld, i64 0
  %broadcast.splat453 = shufflevector <8 x i16> %broadcast.splatinsert452, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body454

vector.body454:                                   ; preds = %vector.ph450, %vector.body454
  %index455 = phi i64 [ 0, %vector.ph450 ], [ %index.next460, %vector.body454 ] ; 2 uses
  %i.ny = add i64 %index455, %.val.i.i62          ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.ny ; 2 uses
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.ny ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %wide.load456 = load <8 x i16>, ptr %i.nz, align 2, !noalias !8042 ; 5 uses
  %wide.load457 = load <8 x i16>, ptr %i.ob, align 2, !noalias !8042 ; 5 uses
  %i.oc = and <8 x i16> %wide.load456, splat (i16 32767)
  %i.od = and <8 x i16> %wide.load457, splat (i16 32767)
  %i.oe = icmp samesign ugt <8 x i16> %i.oc, splat (i16 31744) ; 3 uses
  %i.of = icmp samesign ugt <8 x i16> %i.od, splat (i16 31744) ; 3 uses
  %7 = xor <8 x i1> %i.oe, splat (i1 true)
  %8 = xor <8 x i1> %i.of, splat (i1 true)
  %i.og = icmp sgt <8 x i16> %wide.load456, splat (i16 -1) ; 2 uses
  %i.oh = icmp sgt <8 x i16> %wide.load457, splat (i16 -1) ; 2 uses
  %i.oi = or <8 x i1> %i.oe, %i.og
  %i.oj = xor <8 x i1> %i.oi, splat (i1 true)
  %i.ok = or <8 x i1> %i.of, %i.oh
  %i.ol = xor <8 x i1> %i.ok, splat (i1 true)
  %i.om = icmp uge <8 x i16> %wide.load456, %broadcast.splat
  %i.on = icmp uge <8 x i16> %wide.load457, %broadcast.splat
  %i.oo = or <8 x i16> %wide.load456, %broadcast.splat453
  %i.op = or <8 x i16> %wide.load457, %broadcast.splat453
  %i.oq = icmp eq <8 x i16> %i.oo, zeroinitializer
  %i.or = icmp eq <8 x i16> %i.op, zeroinitializer
  %i.os = select <8 x i1> %i.oj, <8 x i1> %i.om, <8 x i1> zeroinitializer
  %i.ot = select <8 x i1> %i.ol, <8 x i1> %i.on, <8 x i1> zeroinitializer
  %i.ou = and <8 x i1> %i.og, %i.oq
  %9 = select <8 x i1> %7, <8 x i1> %i.ou, <8 x i1> zeroinitializer
  %i.ov = and <8 x i1> %i.oh, %i.or
  %10 = select <8 x i1> %8, <8 x i1> %i.ov, <8 x i1> zeroinitializer
  %i.ow = or <8 x i1> %9, %i.os
  %i.ox = or <8 x i1> %10, %i.ot
  %11 = or <8 x i1> %i.ow, %i.oe
  %12 = or <8 x i1> %i.ox, %i.of
  %predphi458 = select <8 x i1> %11, <8 x i16> %wide.load456, <8 x i16> %broadcast.splat
  %predphi459 = select <8 x i1> %12, <8 x i16> %wide.load457, <8 x i16> %broadcast.splat
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store <8 x i16> %predphi458, ptr %i.oa, align 2, !alias.scope !8045, !noalias !8042
  store <8 x i16> %predphi459, ptr %i.oy, align 2, !alias.scope !8045, !noalias !8042
  %index.next460 = add nuw i64 %index455, 16      ; 2 uses
  %i.oz = icmp eq i64 %index.next460, %n.vec451
  br i1 %i.oz, label %middle.block461, label %vector.body454, !llvm.loop !8026

middle.block461:                                  ; preds = %vector.body454
  %cmp.n462 = icmp eq i64 %i.lc, %n.vec451
  br i1 %cmp.n462, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check464

vec.epilog.iter.check464:                         ; preds = %middle.block461
  %min.epilog.iters.check466.not.not = icmp eq i64 %i.nx, 0
  br i1 %min.epilog.iters.check466.not.not, label %.lr.ph.split.split.us.i.i.preheader, label %vec.epilog.ph467, !prof !17

vec.epilog.ph467:                                 ; preds = %vector.main.loop.iter.check448, %vec.epilog.iter.check464
  %vec.epilog.resume.val468 = phi i64 [ %n.vec451, %vec.epilog.iter.check464 ], [ 0, %vector.main.loop.iter.check448 ]
  %n.vec469 = and i64 %i.lc, -8                   ; 3 uses
  %broadcast.splatinsert470 = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat471 = shufflevector <8 x i16> %broadcast.splatinsert470, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert472 = insertelement <8 x i16> poison, i16 %i.ld, i64 0
  %broadcast.splat473 = shufflevector <8 x i16> %broadcast.splatinsert472, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body474

vec.epilog.vector.body474:                        ; preds = %vec.epilog.vector.body474, %vec.epilog.ph467
  %index475 = phi i64 [ %vec.epilog.resume.val468, %vec.epilog.ph467 ], [ %index.next478, %vec.epilog.vector.body474 ] ; 2 uses
  %i.pa = add i64 %index475, %.val.i.i62          ; 2 uses
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pa
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pa
  %wide.load476 = load <8 x i16>, ptr %i.pb, align 2, !noalias !8042 ; 5 uses
  %i.pd = and <8 x i16> %wide.load476, splat (i16 32767)
  %i.pe = icmp samesign ugt <8 x i16> %i.pd, splat (i16 31744) ; 3 uses
  %13 = xor <8 x i1> %i.pe, splat (i1 true)
  %i.pf = icmp sgt <8 x i16> %wide.load476, splat (i16 -1) ; 2 uses
  %i.pg = or <8 x i1> %i.pe, %i.pf
  %i.ph = xor <8 x i1> %i.pg, splat (i1 true)
  %i.pi = icmp uge <8 x i16> %wide.load476, %broadcast.splat471
  %i.pj = or <8 x i16> %wide.load476, %broadcast.splat473
  %i.pk = icmp eq <8 x i16> %i.pj, zeroinitializer
  %i.pl = select <8 x i1> %i.ph, <8 x i1> %i.pi, <8 x i1> zeroinitializer
  %i.pm = and <8 x i1> %i.pf, %i.pk
  %14 = select <8 x i1> %13, <8 x i1> %i.pm, <8 x i1> zeroinitializer
  %i.pn = or <8 x i1> %14, %i.pl
  %15 = or <8 x i1> %i.pn, %i.pe
  %predphi477 = select <8 x i1> %15, <8 x i16> %wide.load476, <8 x i16> %broadcast.splat471
  store <8 x i16> %predphi477, ptr %i.pc, align 2, !alias.scope !8045, !noalias !8042
  %index.next478 = add nuw i64 %index475, 8       ; 2 uses
  %i.po = icmp eq i64 %index.next478, %n.vec469
  br i1 %i.po, label %vec.epilog.middle.block479, label %vec.epilog.vector.body474, !llvm.loop !8027

vec.epilog.middle.block479:                       ; preds = %vec.epilog.vector.body474
  %cmp.n480 = icmp eq i64 %i.lc, %n.vec469
  br i1 %cmp.n480, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i.preheader

.lr.ph.split.split.us.i.i.preheader:              ; preds = %iter.check463, %vec.epilog.iter.check464, %vec.epilog.middle.block479
  %.sroa.0.010.us11.i.i.ph = phi i64 [ 0, %iter.check463 ], [ %n.vec451, %vec.epilog.iter.check464 ], [ %n.vec469, %vec.epilog.middle.block479 ]
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i
  %.sroa.0.010.us11.i.i = phi i64 [ %i.pp, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i ], [ %.sroa.0.010.us11.i.i.ph, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %i.pp = add nuw i64 %.sroa.0.010.us11.i.i, 1    ; 2 uses
  %i.pq = add i64 %.sroa.0.010.us11.i.i, %.val.i.i62 ; 2 uses
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.pq
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.pq
  %.val8.us12.i.i = load i16, ptr %i.pr, align 2, !noalias !8042, !noundef !5 ; 7 uses
  %i.pt = and i16 %.val8.us12.i.i, 32767
  %i.pu = icmp samesign ugt i16 %i.pt, 31744
  br i1 %i.pu, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i.i
  %.not.i.i.i.us.i.i = icmp sgt i16 %.val8.us12.i.i, -1
  br i1 %.not.i.i.i.us.i.i, label %.split7.i.i.us.i.i, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i: ; preds = %bb.u
  %i.pv = icmp ult i16 %.val8.us12.i.i, %i.kt
  br i1 %i.pv, label %bb.v, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i

.split7.i.i.us.i.i:                               ; preds = %bb.u
  %i.pw = or i16 %.val8.us12.i.i, %i.ld
  %.not.i.i.us.i.i = icmp eq i16 %i.pw, 0
  br i1 %.not.i.i.us.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, label %bb.v

bb.v:                                             ; preds = %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i: ; preds = %bb.v, %.split7.i.i.us.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i, %.lr.ph.split.split.us.i.i
  %i.px = phi i16 [ %i.kt, %bb.v ], [ %.val8.us12.i.i, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.us.i.i ], [ %.val8.us12.i.i, %.split7.i.i.us.i.i ], [ %.val8.us12.i.i, %.lr.ph.split.split.us.i.i ]
  store i16 %i.px, ptr %i.ps, align 2, !alias.scope !8045, !noalias !8042
  %exitcond16.not.i.i = icmp eq i64 %i.pp, %i.lc
  br i1 %exitcond16.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.us.i.i, !llvm.loop !8028

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.split.i.i.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %.lr.ph.split.split.i.i.preheader.new ], [ %i.qe, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.py = add i64 %.sroa.0.010.i.i, %.val.i.i62   ; 2 uses
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.py
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.py
  %.val8.i.i = load i16, ptr %i.pz, align 2, !noalias !8042, !noundef !5 ; 4 uses
  %i.qb = and i16 %.val8.i.i, 32767
  %i.qc = icmp samesign ult i16 %i.qb, 31745
  %.not.i.i.i.i.i68 = icmp sgt i16 %.val8.i.i, -1
  %or.cond.i.i = and i1 %.not.i.i.i.i.i68, %i.qc
  %spec.select.i.i = call i16 @llvm.umin.i16(i16 %.val8.i.i, i16 %i.kt)
  %i.qd = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 %.val8.i.i
  store i16 %i.qd, ptr %i.qa, align 2, !alias.scope !8045, !noalias !8042
  %i.qe = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i.i, %invariant.op ; 2 uses
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %.reass
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %.reass
  %.val8.i.i.1 = load i16, ptr %i.qf, align 2, !noalias !8042, !noundef !5 ; 4 uses
  %i.qh = and i16 %.val8.i.i.1, 32767
  %i.qi = icmp samesign ult i16 %i.qh, 31745
  %.not.i.i.i.i.i68.1 = icmp sgt i16 %.val8.i.i.1, -1
  %or.cond.i.i.1 = and i1 %.not.i.i.i.i.i68.1, %i.qi
  %spec.select.i.i.1 = call i16 @llvm.umin.i16(i16 %.val8.i.i.1, i16 %i.kt)
  %i.qj = select i1 %or.cond.i.i.1, i16 %spec.select.i.i.1, i16 %.val8.i.i.1
  store i16 %i.qj, ptr %i.qg, align 2, !alias.scope !8045, !noalias !8042
  %exitcond.not.i.i69.1 = icmp eq i64 %i.qe, %i.lc
  br i1 %exitcond.not.i.i69.1, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.split.i.i, !llvm.loop !8029

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit: ; preds = %.lr.ph.split.split.i.i.prol.loopexit, %.lr.ph.split.split.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTRNtNtCsdsILkMb8ZHY_4half8binary163f16QB1h_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB24_9BinaryOpT14f16_scalar_vec0E0B26_.exit.us13.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block499, %vec.epilog.middle.block514, %middle.block461, %vec.epilog.middle.block479, %middle.block434, %vec.epilog.middle.block, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8041
  br label %.loopexit

.invoke386:                                       ; preds = %bb.s, %bb.r, %bb.l, %bb.k, %bb.i
  %i.qk = phi i64 [ %.sroa.082.0.copyload, %bb.r ], [ %.sroa.0.0170, %bb.l ], [ %.sroa.4.0.copyload, %bb.k ], [ %.sroa.082.0.copyload, %bb.i ], [ %.sroa.0.0170, %bb.s ]
  %i.ql = phi i64 [ %i.ku, %bb.r ], [ %i.id, %bb.l ], [ %i.ib, %bb.k ], [ %i.hx, %bb.i ], [ %i.kw, %bb.s ]
  %i.qm = phi i64 [ %4, %bb.r ], [ %i.m, %bb.l ], [ %6, %bb.k ], [ %4, %bb.i ], [ %i.m, %bb.s ]
  %i.qn = phi ptr [ @13, %bb.r ], [ @8, %bb.l ], [ @9, %bb.k ], [ @10, %bb.i ], [ @12, %bb.s ]
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.qk, i64 noundef %i.ql, i64 noundef %i.qm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qn) #20
          to label %.cont387 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont387:                                         ; preds = %.invoke386
  unreachable

bb.w:                                             ; preds = %bb.h
  %i.qo = icmp ult i64 %.sroa.082.0.copyload, %4
  br i1 %i.qo, label %bb.x, label %.invoke

bb.x:                                             ; preds = %bb.w
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload
  %i.qq = load i16, ptr %i.qp, align 2, !noundef !5 ; 11 uses
  br i1 %.not173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.qr = and i16 %i.qq, 32767
  %i.qs = icmp samesign ugt i16 %i.qr, 31744      ; 2 uses
  %.not.i.i71 = icmp sgt i16 %i.qq, -1            ; 2 uses
  %i.qt = call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.qu = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.0.0170)
  %i.qv = mul i64 %i.v, %indvar
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = call i64 @llvm.umin.i64(i64 %i.qw, i64 %i.qt)
  %i.qy = call i64 @llvm.umin.i64(i64 %i.qx, i64 %i.aq) ; 2 uses
  %min.iters.check518 = icmp samesign ult i64 %i.qy, 8
  br i1 %min.iters.check518, label %scalar.ph517.preheader, label %vector.ph519

vector.ph519:                                     ; preds = %.lr.ph
  %i.qz = add nuw nsw i64 %i.qy, 1                ; 2 uses
  %i.ra = and i64 %i.qz, 7                        ; 2 uses
  %i.rb = icmp eq i64 %i.ra, 0
  %i.rc = select i1 %i.rb, i64 8, i64 %i.ra
  %n.vec520 = sub nsw i64 %i.qz, %i.rc            ; 2 uses
  %broadcast.splatinsert521 = insertelement <8 x i1> poison, i1 %.not.i.i71, i64 0
  %broadcast.splat522 = shufflevector <8 x i1> %broadcast.splatinsert521, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert523 = insertelement <8 x i1> poison, i1 %i.qs, i64 0
  %broadcast.splat524 = shufflevector <8 x i1> %broadcast.splatinsert523, <8 x i1> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.rd = xor <8 x i1> %broadcast.splat524, splat (i1 true)
  %i.re = xor <8 x i1> %broadcast.splat522, splat (i1 true)
  %broadcast.splatinsert525 = insertelement <8 x i16> poison, i16 %i.qq, i64 0
  %broadcast.splat526 = shufflevector <8 x i16> %broadcast.splatinsert525, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %invariant.gep566 = getelementptr [2 x i8], ptr %i.p, i64 %.sroa.0.0170
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph519
  %index528 = phi i64 [ 0, %vector.ph519 ], [ %index.next531, %vector.body527 ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index528
  %wide.load529 = load <8 x i16>, ptr %gep, align 2 ; 5 uses
  %i.rf = and <8 x i16> %wide.load529, splat (i16 32767) ; 2 uses
  %i.rg = icmp samesign ugt <8 x i16> %i.rf, splat (i16 31744) ; 2 uses
  %i.rh = select <8 x i1> %broadcast.splat524, <8 x i1> splat (i1 true), <8 x i1> %i.rg
  %i.ri = xor <8 x i1> %i.rh, splat (i1 true)     ; 2 uses
  %i.rj = icmp slt <8 x i16> %wide.load529, zeroinitializer ; 3 uses
  %i.rk = and <8 x i1> %i.ri, %i.re
  %i.rl = icmp ult <8 x i16> %broadcast.splat526, %wide.load529
  %i.rm = and <8 x i1> %i.rj, %i.rl
  %i.rn = and <8 x i1> %broadcast.splat522, %i.ri ; 2 uses
  %i.ro = xor <8 x i1> %i.rj, splat (i1 true)
  %i.rp = icmp ule <8 x i16> %broadcast.splat526, %wide.load529
  %i.rq = select <8 x i1> %i.rn, <8 x i1> %i.rj, <8 x i1> zeroinitializer
  %i.rr = or <8 x i16> %i.rf, %broadcast.splat526
  %i.rs = icmp eq <8 x i16> %i.rr, zeroinitializer
  %i.rt = select <8 x i1> %i.rd, <8 x i1> %i.rg, <8 x i1> zeroinitializer
  %i.ru = and <8 x i1> %i.rp, %i.ro
  %i.rv = select <8 x i1> %i.rn, <8 x i1> %i.ru, <8 x i1> zeroinitializer
  %i.rw = select <8 x i1> %i.rq, <8 x i1> %i.rs, <8 x i1> zeroinitializer
  %i.rx = xor <8 x i1> %i.rm, splat (i1 true)
  %i.ry = select <8 x i1> %i.rk, <8 x i1> %i.rx, <8 x i1> zeroinitializer
  %i.rz = or <8 x i1> %i.ry, %i.rw
  %i.sa = or <8 x i1> %i.rz, %i.rv
  %i.sb = or <8 x i1> %i.sa, %i.rt
  %i.sc = or <8 x i1> %i.sb, %broadcast.splat524
  %predphi530 = select <8 x i1> %i.sc, <8 x i16> %broadcast.splat526, <8 x i16> %wide.load529
  %gep567 = getelementptr [2 x i8], ptr %invariant.gep566, i64 %index528
  store <8 x i16> %predphi530, ptr %gep567, align 2
  %index.next531 = add nuw i64 %index528, 8       ; 2 uses
  %i.sd = icmp eq i64 %index.next531, %n.vec520
  br i1 %i.sd, label %scalar.ph517.preheader, label %vector.body527, !llvm.loop !8030

scalar.ph517.preheader:                           ; preds = %vector.body527, %.lr.ph
  %.sroa.020.0167.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec520, %vector.body527 ]
  br label %scalar.ph517

scalar.ph517:                                     ; preds = %scalar.ph517.preheader, %bb.ad
  %.sroa.020.0167 = phi i64 [ %i.se, %bb.ad ], [ %.sroa.020.0167.ph, %scalar.ph517.preheader ] ; 4 uses
  %i.se = add nuw nsw i64 %.sroa.020.0167, 1      ; 2 uses
  %i.sf = add nuw nsw i64 %.sroa.020.0167, %.sroa.4.0.copyload ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.020.0167, %i.qt
  br i1 %exitcond.not, label %.invoke, label %bb.y

bb.y:                                             ; preds = %scalar.ph517
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.sf
  %i.sh = load i16, ptr %i.sg, align 2, !noundef !5 ; 5 uses
  br i1 %i.qs, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.si = and i16 %i.sh, 32767                    ; 2 uses
  %i.sj = icmp samesign ugt i16 %i.si, 31744
  br i1 %i.sj, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not1.i.i = icmp slt i16 %i.sh, 0              ; 2 uses
  br i1 %.not.i.i71, label %bb.ab, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not1.i.i, label %.split5.i, label %.split.i

.split.i:                                         ; preds = %bb.ab
  %i.sk = icmp samesign ugt i16 %i.qq, %i.sh
  br i1 %i.sk, label %bb.ac, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit

.split5.i:                                        ; preds = %bb.ab
  %i.sl = or i16 %i.si, %i.qq
  %.not.i73 = icmp eq i16 %i.sl, 0
  br i1 %.not.i73, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT3f16INtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16B1O_EE8call_mutB9_.exit, label %bb.ac
end_hunk_3
