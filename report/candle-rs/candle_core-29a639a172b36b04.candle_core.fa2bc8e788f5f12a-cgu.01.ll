Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.01?download=true
inline.NumInlined: 5635
inline.NumDeleted: 1373
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 334
begin_hunk_0_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NvYNtNtB6_2op7MinimumNtB1K_9BinaryOpT4bf16NvYB1I_B20_8bf16_vecNvYB1I_B20_15bf16_scalar_vecEB6_:bb.a
  store i64 %i.gl, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7712
  %i.gm = load i64, ptr %i.gd, align 8, !alias.scope !7712, !noundef !5
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gc ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !7712, !noundef !5 ; 2 uses
  %i.gp = icmp ult i64 %i.gm, %i.go
  br i1 %i.gp, label %.loopexit92.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gd, align 8, !alias.scope !7712
  %i.gq = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !7712, !noundef !5
  %i.gr = mul i64 %i.gq, %i.go
  %i.gs = load i64, ptr %i.ad, align 8, !alias.scope !7712, !noundef !5
  %i.gt = sub i64 %i.gs, %i.gr                    ; 2 uses
  store i64 %i.gt, ptr %i.ad, align 8, !alias.scope !7712
  %i.gu = load i64, ptr %i.gn, align 8, !alias.scope !7712, !noundef !5
  %i.gv = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !7712, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gu
  %i.gx = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7712, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7712
  %.not.i.us.6 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.us.6, label %.loopexit92.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.gz = add nsw i64 %i.at, -8                   ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.gz ; 4 uses
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !7712, !noundef !5
  %i.hc = add i64 %i.hb, 1
  store i64 %i.hc, ptr %i.ha, align 8, !alias.scope !7712
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.e, i64 %i.gz ; 3 uses
  %i.hd = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7712, !noundef !5
  %i.he = load i64, ptr %i.ad, align 8, !alias.scope !7712, !noundef !5
  %i.hf = add i64 %i.he, %i.hd                    ; 2 uses
  store i64 %i.hf, ptr %i.ad, align 8, !alias.scope !7712
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hg = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7712, !noundef !5
  %i.hh = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7712, !noundef !5
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  store i64 %i.hi, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7712
  %i.hj = load i64, ptr %i.ha, align 8, !alias.scope !7712, !noundef !5
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gz ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !7712, !noundef !5 ; 2 uses
  %i.hm = icmp ult i64 %i.hj, %i.hl
  br i1 %i.hm, label %.loopexit92.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.ha, align 8, !alias.scope !7712
  %i.hn = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !7712, !noundef !5
  %i.ho = mul i64 %i.hn, %i.hl
  %i.hp = load i64, ptr %i.ad, align 8, !alias.scope !7712, !noundef !5
  %i.hq = sub i64 %i.hp, %i.ho                    ; 2 uses
  store i64 %i.hq, ptr %i.ad, align 8, !alias.scope !7712
  %i.hr = load i64, ptr %i.hk, align 8, !alias.scope !7712, !noundef !5
  %i.hs = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !7712, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hr
  %i.hu = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7712, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7712
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
  br i1 %i.ah, label %bb.w, label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.hx = add i64 %.sroa.082.0.copyload, %i.v     ; 3 uses
  %i.hy = icmp ult i64 %i.hx, %.sroa.082.0.copyload
  %.not53 = icmp ugt i64 %i.hx, %4
  %or.cond = or i1 %i.hy, %.not53
  br i1 %or.cond, label %.invoke386, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.g
  %i.hz = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.hz, label %bb.r, label %.invoke

bb.k:                                             ; preds = %bb.i
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ib = add i64 %.sroa.4.0.copyload, %i.v       ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ib, %6
  %or.cond56 = or i1 %i.ic, %.not54
  br i1 %or.cond56, label %.invoke386, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.id = add i64 %.sroa.0.0170, %i.v             ; 3 uses
  %i.ie = icmp ult i64 %i.id, %.sroa.0.0170
  %.not55 = icmp ugt i64 %i.id, %i.m
  %or.cond57 = or i1 %i.ie, %.not55
  br i1 %or.cond57, label %.invoke386, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7714
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %i.v
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7715
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.ia, ptr noundef nonnull readonly %i.ig, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ih)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.m
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.0.0170 ; 2 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B25_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 2 %i.ii, ptr noundef nonnull %i.ij)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7715
  call void @llvm.experimental.noalias.scope.decl(metadata !7716)
  %.val.i.i = load i64, ptr %i.al, align 8, !alias.scope !7716, !noalias !7717, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.am, align 8, !alias.scope !7716, !noalias !7717, !noundef !5 ; 2 uses
  %i.ik = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.il = load i64, ptr %i.an, align 8, !alias.scope !7718, !noalias !7717, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !7718, !noalias !7717, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !7718, !noalias !7717, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !7719, !noalias !7717, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ik, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i411 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i413 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i412 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.im = shl i64 %i.il, 1                        ; 2 uses
  %i.in = add i64 %i.im, %.val1.i.i.i.i.i412
  %i.io = sub i64 %i.in, %.val.i.i.i411
  %diff.check = icmp ugt i64 %i.io, -16
  %i.ip = add i64 %i.im, %.val.i.i.i.i.i413
  %i.iq = sub i64 %i.ip, %.val.i.i.i411
  %diff.check414 = icmp ugt i64 %i.iq, -16
  %conflict.rdx = or i1 %diff.check, %diff.check414
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
  %wide.load = load <8 x i16>, ptr %i.it, align 2, !noalias !7720 ; 6 uses
  %wide.load415 = load <8 x i16>, ptr %i.iu, align 2, !noalias !7720 ; 5 uses
  %i.iw = and <8 x i16> %wide.load, splat (i16 32767)
  %i.ix = icmp samesign ugt <8 x i16> %i.iw, splat (i16 32640) ; 3 uses
  %i.iy = xor <8 x i1> %i.ix, splat (i1 true)
  %i.iz = and <8 x i16> %wide.load415, splat (i16 32767) ; 2 uses
  %i.ja = icmp samesign ugt <8 x i16> %i.iz, splat (i16 32640) ; 2 uses
  %i.jb = select <8 x i1> %i.ix, <8 x i1> splat (i1 true), <8 x i1> %i.ja ; 2 uses
  %i.jc = xor <8 x i1> %i.jb, splat (i1 true)
  %i.jd = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.je = icmp slt <8 x i16> %wide.load415, zeroinitializer ; 3 uses
  %i.jf = select <8 x i1> %i.jb, <8 x i1> splat (i1 true), <8 x i1> %i.jd
  %i.jg = icmp ult <8 x i16> %wide.load, %wide.load415
  %i.jh = and <8 x i1> %i.je, %i.jg
  %i.ji = select <8 x i1> %i.jc, <8 x i1> %i.jd, <8 x i1> zeroinitializer ; 2 uses
  %i.jj = xor <8 x i1> %i.je, splat (i1 true)
  %i.jk = select <8 x i1> %i.ji, <8 x i1> %i.jj, <8 x i1> zeroinitializer
  %i.jl = icmp ule <8 x i16> %wide.load, %wide.load415
  %i.jm = select <8 x i1> %i.ji, <8 x i1> %i.je, <8 x i1> zeroinitializer
  %i.jn = or <8 x i16> %i.iz, %wide.load
  %i.jo = icmp eq <8 x i16> %i.jn, zeroinitializer
  %i.jp = select <8 x i1> %i.jk, <8 x i1> %i.jl, <8 x i1> zeroinitializer
  %i.jq = select <8 x i1> %i.jf, <8 x i1> splat (i1 true), <8 x i1> %i.jh
  %7 = xor <8 x i1> %i.jq, splat (i1 true)
  %i.jr = select <8 x i1> %i.jm, <8 x i1> %i.jo, <8 x i1> %i.jp
  %i.js = or <8 x i1> %i.jr, %i.ja
  %8 = select <8 x i1> %i.iy, <8 x i1> %i.js, <8 x i1> zeroinitializer
  %i.jt = or <8 x i1> %8, %7
  %i.ju = or <8 x i1> %i.jt, %i.ix
  %predphi = select <8 x i1> %i.ju, <8 x i16> %wide.load, <8 x i16> %wide.load415
  store <8 x i16> %predphi, ptr %i.iv, align 2, !noalias !7720
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jv = icmp eq i64 %index.next, %n.vec
  br i1 %i.jv, label %middle.block, label %vector.body, !llvm.loop !7684

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ik, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.jw, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jw = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.jx = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jy = add i64 %i.jx, %i.il                    ; 2 uses
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jy
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jy
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jx
  %i.kc = load i16, ptr %i.jz, align 2, !noalias !7720, !noundef !5 ; 10 uses
  %i.kd = load i16, ptr %i.ka, align 2, !noalias !7720, !noundef !5 ; 5 uses
  %i.ke = and i16 %i.kc, 32767
  %i.kf = icmp samesign ugt i16 %i.ke, 32640
  br i1 %i.kf, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %scalar.ph
  %i.kg = and i16 %i.kd, 32767                    ; 2 uses
  %i.kh = icmp samesign ugt i16 %i.kg, 32640
  br i1 %i.kh, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.i = icmp sgt i16 %i.kc, -1
  %.not1.i.i.i.i.i = icmp slt i16 %i.kd, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.p, label %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not1.i.i.i.i.i, label %.split5.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.p
  %i.ki = icmp samesign ugt i16 %i.kc, %i.kd
  br i1 %i.ki, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

.split5.i.i.i.i:                                  ; preds = %bb.p
  %i.kj = or i16 %i.kg, %i.kc
  %.not.i.i.i.i = icmp eq i16 %i.kj, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, label %bb.q

_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i: ; preds = %bb.o
  %i.kk = icmp ult i16 %i.kc, %i.kd
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kk
  br i1 %spec.select.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i: ; preds = %bb.q, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i, %bb.n, %scalar.ph
  %i.kl = phi i16 [ %i.kd, %bb.q ], [ %i.kc, %_RNvXs4_NtCsdsILkMb8ZHY_4half6bfloatNtB5_4bf16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i ], [ %i.kc, %.split5.i.i.i.i ], [ %i.kc, %.split.i.i.i.i ], [ %i.kc, %scalar.ph ], [ %i.kc, %bb.n ]
  store i16 %i.kl, ptr %i.kb, align 2, !noalias !7720
  %exitcond.not.i.i = icmp eq i64 %i.jw, %i.ik
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit, label %scalar.ph, !llvm.loop !7685

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB29_9BinaryOpT8bf16_vec0E0B2b_.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7714
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %bb.ak, %bb.x, %bb.f, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT8bf16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half6bfloat4bf16B1T_QB1U_EE8call_mutB9_.exit
  %i.km = add i64 %.sroa.0.0170, %i.v
  %i.kn = load i64, ptr %i.aa, align 8, !alias.scope !7712, !noundef !5 ; 2 uses
  %i.ko = icmp eq i64 %i.kn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ko, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit, label %bb.e

bb.r:                                             ; preds = %bb.j
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kq = load i16, ptr %i.kp, align 2, !noundef !5 ; 11 uses
  %i.kr = add i64 %.sroa.082.0.copyload, %i.v     ; 3 uses
  %i.ks = icmp ult i64 %i.kr, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.kr, %4
  %or.cond58 = or i1 %i.ks, %.not
  br i1 %or.cond58, label %.invoke386, label %bb.s, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.kt = add i64 %.sroa.0.0170, %i.v             ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.kt, %i.m
  %or.cond59 = or i1 %i.ku, %.not52
  br i1 %or.cond59, label %.invoke386, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7721
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.v
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half6bfloat4bf16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1W_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %i.kv, ptr noundef nonnull readonly %i.kx, ptr noundef nonnull align 2 %i.kw, ptr noundef nonnull %i.ky)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !7722)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !7722, !noalias !7723, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !7722, !noalias !7723, !noundef !5 ; 6 uses
  %i.kz = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !7724, !noalias !7723, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66420 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !7724, !noalias !7723, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i421 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.la = and i16 %i.kq, 32767                    ; 4 uses
  %i.lb = icmp samesign ugt i16 %i.la, 32640
  %i.lc = sub i64 %.val.i.i.i66420, %.val1.i.i.i421
  %diff.check425 = icmp ugt i64 %i.lc, -32        ; 3 uses
  br i1 %i.lb, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check423 = icmp ult i64 %i.kz, 4
  %or.cond534 = or i1 %min.iters.check423, %diff.check425
  br i1 %or.cond534, label %.lr.ph.split.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check426 = icmp ult i64 %i.kz, 16
  br i1 %min.iters.check426, label %vec.epilog.ph, label %vector.ph427

vector.ph427:                                     ; preds = %vector.main.loop.iter.check
  %i.ld = and i64 %i.kz, 12
  %n.vec428 = and i64 %i.kz, -16                  ; 4 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.ph427, %vector.body429
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next433, %vector.body429 ] ; 2 uses
  %i.le = add i64 %index430, %.val.i.i62          ; 2 uses
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.le ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %wide.load431 = load <8 x i16>, ptr %i.lf, align 2, !noalias !7722
  %wide.load432 = load <8 x i16>, ptr %i.lh, align 2, !noalias !7722
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store <8 x i16> %wide.load431, ptr %i.lg, align 2, !alias.scope !7725, !noalias !7722
  store <8 x i16> %wide.load432, ptr %i.li, align 2, !alias.scope !7725, !noalias !7722
  %index.next433 = add nuw i64 %index430, 16      ; 2 uses
  %i.lj = icmp eq i64 %index.next433, %n.vec428
  br i1 %i.lj, label %middle.block434, label %vector.body429, !llvm.loop !7700

middle.block434:                                  ; preds = %vector.body429
  %cmp.n435 = icmp eq i64 %i.kz, %n.vec428
  br i1 %cmp.n435, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block434
  %min.epilog.iters.check = icmp eq i64 %i.ld, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec428, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec436 = and i64 %i.kz, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index437 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next439, %vec.epilog.vector.body ] ; 2 uses
  %i.lk = add i64 %index437, %.val.i.i62          ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lk
  %wide.load438 = load <4 x i16>, ptr %i.ll, align 2, !noalias !7722
  store <4 x i16> %wide.load438, ptr %i.lm, align 2, !alias.scope !7725, !noalias !7722
  %index.next439 = add nuw i64 %index437, 4       ; 2 uses
  %i.ln = icmp eq i64 %index.next439, %n.vec436
  br i1 %i.ln, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7701

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n440 = icmp eq i64 %i.kz, %n.vec436
  br i1 %cmp.n440, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT15bf16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half6bfloat4bf16RSB21_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec428, %vec.epilog.iter.check ], [ %n.vec436, %vec.epilog.middle.block ] ; 3 uses
  %i.lo = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter557 = and i64 %i.lo, 3                 ; 2 uses
  %lcmp.mod558.not = icmp eq i64 %xtraiter557, 0
  br i1 %lcmp.mod558.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.lp, %.lr.ph.split.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.lp = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.lq = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lq
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lq
  %.val8.us.i.i.prol = load i16, ptr %i.lr, align 2, !noalias !7722, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.ls, align 2, !alias.scope !7725, !noalias !7722
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter557
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !7702

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.lp, %.lr.ph.split.us.i.i.prol ]
  %i.lt = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
end_hunk_0
begin_hunk_1_@_RINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils14binary_map_vecNtNtCsdsILkMb8ZHY_4half8binary163f16NvYNtNtB6_2op7MinimumNtB1L_9BinaryOpT3f16NvYB1J_B21_7f16_vecNvYB1J_B21_14f16_scalar_vecEB6_:bb.a
  store i64 %i.gl, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8032
  %i.gm = load i64, ptr %i.gd, align 8, !alias.scope !8032, !noundef !5
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gc ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !8032, !noundef !5 ; 2 uses
  %i.gp = icmp ult i64 %i.gm, %i.go
  br i1 %i.gp, label %.loopexit92.split.us, label %.loopexit.i.us.6

.loopexit.i.us.6:                                 ; preds = %.lr.ph.i.split.us.6
  store i64 0, ptr %i.gd, align 8, !alias.scope !8032
  %i.gq = load i64, ptr %invariant.gep.i.us.6, align 8, !alias.scope !8032, !noundef !5
  %i.gr = mul i64 %i.gq, %i.go
  %i.gs = load i64, ptr %i.ad, align 8, !alias.scope !8032, !noundef !5
  %i.gt = sub i64 %i.gs, %i.gr                    ; 2 uses
  store i64 %i.gt, ptr %i.ad, align 8, !alias.scope !8032
  %i.gu = load i64, ptr %i.gn, align 8, !alias.scope !8032, !noundef !5
  %i.gv = load i64, ptr %gep.1.i.us.6, align 8, !alias.scope !8032, !noundef !5
  %i.gw = mul i64 %i.gv, %i.gu
  %i.gx = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8032, !noundef !5
  %i.gy = sub i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8032
  %.not.i.us.6 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.us.6, label %.loopexit92.split.us, label %.lr.ph.i.split.us.7

.lr.ph.i.split.us.7:                              ; preds = %.loopexit.i.us.6
  %i.gz = add nsw i64 %i.at, -8                   ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.gz ; 4 uses
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !8032, !noundef !5
  %i.hc = add i64 %i.hb, 1
  store i64 %i.hc, ptr %i.ha, align 8, !alias.scope !8032
  %invariant.gep.i.us.7 = getelementptr [8 x i8], ptr %i.e, i64 %i.gz ; 3 uses
  %i.hd = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !8032, !noundef !5
  %i.he = load i64, ptr %i.ad, align 8, !alias.scope !8032, !noundef !5
  %i.hf = add i64 %i.he, %i.hd                    ; 2 uses
  store i64 %i.hf, ptr %i.ad, align 8, !alias.scope !8032
  %gep.1.i.us.7 = getelementptr i8, ptr %invariant.gep.i.us.7, i64 64 ; 2 uses
  %i.hg = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !8032, !noundef !5
  %i.hh = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8032, !noundef !5
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  store i64 %i.hi, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8032
  %i.hj = load i64, ptr %i.ha, align 8, !alias.scope !8032, !noundef !5
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gz ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !8032, !noundef !5 ; 2 uses
  %i.hm = icmp ult i64 %i.hj, %i.hl
  br i1 %i.hm, label %.loopexit92.split.us, label %.loopexit.i.us.7

.loopexit.i.us.7:                                 ; preds = %.lr.ph.i.split.us.7
  store i64 0, ptr %i.ha, align 8, !alias.scope !8032
  %i.hn = load i64, ptr %invariant.gep.i.us.7, align 8, !alias.scope !8032, !noundef !5
  %i.ho = mul i64 %i.hn, %i.hl
  %i.hp = load i64, ptr %i.ad, align 8, !alias.scope !8032, !noundef !5
  %i.hq = sub i64 %i.hp, %i.ho                    ; 2 uses
  store i64 %i.hq, ptr %i.ad, align 8, !alias.scope !8032
  %i.hr = load i64, ptr %i.hk, align 8, !alias.scope !8032, !noundef !5
  %i.hs = load i64, ptr %gep.1.i.us.7, align 8, !alias.scope !8032, !noundef !5
  %i.ht = mul i64 %i.hs, %i.hr
  %i.hu = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8032, !noundef !5
  %i.hv = sub i64 %i.hu, %i.ht                    ; 2 uses
  store i64 %i.hv, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8032
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
  br i1 %i.ah, label %bb.w, label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.hx = add i64 %.sroa.082.0.copyload, %i.v     ; 3 uses
  %i.hy = icmp ult i64 %i.hx, %.sroa.082.0.copyload
  %.not53 = icmp ugt i64 %i.hx, %4
  %or.cond = or i1 %i.hy, %.not53
  br i1 %or.cond, label %.invoke386, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.g
  %i.hz = icmp ult i64 %.sroa.4.0.copyload, %6
  br i1 %i.hz, label %bb.r, label %.invoke

bb.k:                                             ; preds = %bb.i
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.ib = add i64 %.sroa.4.0.copyload, %i.v       ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %.sroa.4.0.copyload
  %.not54 = icmp ugt i64 %i.ib, %6
  %or.cond56 = or i1 %i.ic, %.not54
  br i1 %or.cond56, label %.invoke386, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.id = add i64 %.sroa.0.0170, %i.v             ; 3 uses
  %i.ie = icmp ult i64 %i.id, %.sroa.0.0170
  %.not55 = icmp ugt i64 %i.id, %i.m
  %or.cond57 = or i1 %i.ie, %.not55
  br i1 %or.cond57, label %.invoke386, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8034
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %i.v
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8035
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.ia, ptr noundef nonnull readonly %i.ig, ptr noundef nonnull readonly align 2 %i.if, ptr noundef nonnull readonly %i.ih)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.m
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.0.0170 ; 2 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EB10_EINtB13_7IterMutB1q_EEINtB5_7ZipImplBW_B26_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 2 %i.ii, ptr noundef nonnull %i.ij)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8035
  call void @llvm.experimental.noalias.scope.decl(metadata !8036)
  %.val.i.i = load i64, ptr %i.al, align 8, !alias.scope !8036, !noalias !8037, !noundef !5 ; 4 uses
  %.val6.i.i = load i64, ptr %i.am, align 8, !alias.scope !8036, !noalias !8037, !noundef !5 ; 2 uses
  %i.ik = sub i64 %.val6.i.i, %.val.i.i           ; 4 uses
  %.not.i.i = icmp eq i64 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc61
  %i.il = load i64, ptr %i.an, align 8, !alias.scope !8038, !noalias !8037, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !8038, !noalias !8037, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !8038, !noalias !8037, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !8039, !noalias !8037, !nonnull !5, !noundef !5 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ik, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val.i.i.i411 = ptrtoaddr ptr %.val.i.i.i to i64 ; 2 uses
  %.val.i.i.i.i.i413 = ptrtoaddr ptr %.val.i.i.i.i.i to i64
  %.val1.i.i.i.i.i412 = ptrtoaddr ptr %.val1.i.i.i.i.i to i64
  %i.im = shl i64 %i.il, 1                        ; 2 uses
  %i.in = add i64 %i.im, %.val1.i.i.i.i.i412
  %i.io = sub i64 %i.in, %.val.i.i.i411
  %diff.check = icmp ugt i64 %i.io, -16
  %i.ip = add i64 %i.im, %.val.i.i.i.i.i413
  %i.iq = sub i64 %i.ip, %.val.i.i.i411
  %diff.check414 = icmp ugt i64 %i.iq, -16
  %conflict.rdx = or i1 %diff.check, %diff.check414
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
  %wide.load = load <8 x i16>, ptr %i.it, align 2, !noalias !8040 ; 6 uses
  %wide.load415 = load <8 x i16>, ptr %i.iu, align 2, !noalias !8040 ; 5 uses
  %i.iw = and <8 x i16> %wide.load, splat (i16 32767)
  %i.ix = icmp samesign ugt <8 x i16> %i.iw, splat (i16 31744) ; 3 uses
  %i.iy = xor <8 x i1> %i.ix, splat (i1 true)
  %i.iz = and <8 x i16> %wide.load415, splat (i16 32767) ; 2 uses
  %i.ja = icmp samesign ugt <8 x i16> %i.iz, splat (i16 31744) ; 2 uses
  %i.jb = select <8 x i1> %i.ix, <8 x i1> splat (i1 true), <8 x i1> %i.ja ; 2 uses
  %i.jc = xor <8 x i1> %i.jb, splat (i1 true)
  %i.jd = icmp sgt <8 x i16> %wide.load, splat (i16 -1) ; 2 uses
  %i.je = icmp slt <8 x i16> %wide.load415, zeroinitializer ; 3 uses
  %i.jf = select <8 x i1> %i.jb, <8 x i1> splat (i1 true), <8 x i1> %i.jd
  %i.jg = icmp ult <8 x i16> %wide.load, %wide.load415
  %i.jh = and <8 x i1> %i.je, %i.jg
  %i.ji = select <8 x i1> %i.jc, <8 x i1> %i.jd, <8 x i1> zeroinitializer ; 2 uses
  %i.jj = xor <8 x i1> %i.je, splat (i1 true)
  %i.jk = select <8 x i1> %i.ji, <8 x i1> %i.jj, <8 x i1> zeroinitializer
  %i.jl = icmp ule <8 x i16> %wide.load, %wide.load415
  %i.jm = select <8 x i1> %i.ji, <8 x i1> %i.je, <8 x i1> zeroinitializer
  %i.jn = or <8 x i16> %i.iz, %wide.load
  %i.jo = icmp eq <8 x i16> %i.jn, zeroinitializer
  %i.jp = select <8 x i1> %i.jk, <8 x i1> %i.jl, <8 x i1> zeroinitializer
  %i.jq = select <8 x i1> %i.jf, <8 x i1> splat (i1 true), <8 x i1> %i.jh
  %7 = xor <8 x i1> %i.jq, splat (i1 true)
  %i.jr = select <8 x i1> %i.jm, <8 x i1> %i.jo, <8 x i1> %i.jp
  %i.js = or <8 x i1> %i.jr, %i.ja
  %8 = select <8 x i1> %i.iy, <8 x i1> %i.js, <8 x i1> zeroinitializer
  %i.jt = or <8 x i1> %8, %7
  %i.ju = or <8 x i1> %i.jt, %i.ix
  %predphi = select <8 x i1> %i.ju, <8 x i16> %wide.load, <8 x i16> %wide.load415
  store <8 x i16> %predphi, ptr %i.iv, align 2, !noalias !8040
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jv = icmp eq i64 %index.next, %n.vec
  br i1 %i.jv, label %middle.block, label %vector.body, !llvm.loop !8004

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ik, %n.vec
  br i1 %cmp.n, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.sroa.0.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.jw, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i ], [ %.sroa.0.012.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jw = add nuw i64 %.sroa.0.012.i.i, 1         ; 2 uses
  %i.jx = add i64 %.sroa.0.012.i.i, %.val.i.i     ; 2 uses
  %i.jy = add i64 %i.jx, %i.il                    ; 2 uses
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i.i, i64 %i.jy
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i.i, i64 %i.jy
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i, i64 %i.jx
  %i.kc = load i16, ptr %i.jz, align 2, !noalias !8040, !noundef !5 ; 10 uses
  %i.kd = load i16, ptr %i.ka, align 2, !noalias !8040, !noundef !5 ; 5 uses
  %i.ke = and i16 %i.kc, 32767
  %i.kf = icmp samesign ugt i16 %i.ke, 31744
  br i1 %i.kf, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %scalar.ph
  %i.kg = and i16 %i.kd, 32767                    ; 2 uses
  %i.kh = icmp samesign ugt i16 %i.kg, 31744
  br i1 %i.kh, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.i = icmp sgt i16 %i.kc, -1
  %.not1.i.i.i.i.i = icmp slt i16 %i.kd, 0        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.p, label %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %.not1.i.i.i.i.i, label %.split5.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.p
  %i.ki = icmp samesign ugt i16 %i.kc, %i.kd
  br i1 %i.ki, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

.split5.i.i.i.i:                                  ; preds = %bb.p
  %i.kj = or i16 %i.kg, %i.kc
  %.not.i.i.i.i = icmp eq i16 %i.kj, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, label %bb.q

_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i: ; preds = %bb.o
  %i.kk = icmp ult i16 %i.kc, %i.kd
  %spec.select.i.i.i.i.i = and i1 %.not1.i.i.i.i.i, %i.kk
  br i1 %spec.select.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i: ; preds = %bb.q, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i, %.split5.i.i.i.i, %.split.i.i.i.i, %bb.n, %scalar.ph
  %i.kl = phi i16 [ %i.kd, %bb.q ], [ %i.kc, %_RNvXs4_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2gt.exit.i.i.i.i ], [ %i.kc, %.split5.i.i.i.i ], [ %i.kc, %.split.i.i.i.i ], [ %i.kc, %scalar.ph ], [ %i.kc, %bb.n ]
  store i16 %i.kl, ptr %i.kb, align 2, !noalias !8040
  %exitcond.not.i.i = icmp eq i64 %i.jw, %i.ik
  br i1 %exitcond.not.i.i, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit, label %scalar.ph, !llvm.loop !8005

_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTTRNtNtCsdsILkMb8ZHY_4half8binary163f16B1h_EQB1i_ENCNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB2a_9BinaryOpT7f16_vec0E0B2c_.exit.i.i, %middle.block, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8034
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %bb.ak, %bb.x, %bb.f, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT7f16_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTRSNtNtCsdsILkMb8ZHY_4half8binary163f16B1S_QB1T_EE8call_mutB9_.exit
  %i.km = add i64 %.sroa.0.0170, %i.v
  %i.kn = load i64, ptr %i.aa, align 8, !alias.scope !8032, !noundef !5 ; 2 uses
  %i.ko = icmp eq i64 %i.kn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ko, label %_RNvXs_NtCsltEA4u8Pgfu_11candle_core6nditerINtB4_6NdIterKj2_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB6_.exit, label %bb.e

bb.r:                                             ; preds = %bb.j
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.sroa.4.0.copyload
  %i.kq = load i16, ptr %i.kp, align 2, !noundef !5 ; 11 uses
  %i.kr = add i64 %.sroa.082.0.copyload, %i.v     ; 3 uses
  %i.ks = icmp ult i64 %i.kr, %.sroa.082.0.copyload
  %.not = icmp ugt i64 %i.kr, %4
  %or.cond58 = or i1 %i.ks, %.not
  br i1 %or.cond58, label %.invoke386, label %bb.s, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.kt = add i64 %.sroa.0.0170, %i.v             ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %.sroa.0.0170
  %.not52 = icmp ugt i64 %i.kt, %i.m
  %or.cond59 = or i1 %i.ku, %.not52
  br i1 %or.cond59, label %.invoke386, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.sroa.082.0.copyload ; 2 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.0.0170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8041
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.v
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.v
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EINtBZ_7IterMutB1m_EEINtB5_7ZipImplBW_B1X_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %i.kv, ptr noundef nonnull readonly %i.kx, ptr noundef nonnull align 2 %i.kw, ptr noundef nonnull %i.ky)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !8042)
  %.val.i.i62 = load i64, ptr %i.ai, align 8, !alias.scope !8042, !noalias !8043, !noundef !5 ; 21 uses
  %.val6.i.i63 = load i64, ptr %i.aj, align 8, !alias.scope !8042, !noalias !8043, !noundef !5 ; 6 uses
  %i.kz = sub i64 %.val6.i.i63, %.val.i.i62       ; 24 uses
  %.not.i.i64 = icmp eq i64 %.val6.i.i63, %.val.i.i62
  br i1 %.not.i.i64, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %.noexc70
  %.val.i.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !8044, !noalias !8043, !nonnull !5, !noundef !5 ; 16 uses
  %.val.i.i.i66420 = ptrtoaddr ptr %.val.i.i.i66 to i64
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !8044, !noalias !8043, !nonnull !5, !noundef !5 ; 16 uses
  %.val1.i.i.i421 = ptrtoaddr ptr %.val1.i.i.i to i64
  %i.la = and i16 %i.kq, 32767                    ; 4 uses
  %i.lb = icmp samesign ugt i16 %i.la, 31744
  %i.lc = sub i64 %.val.i.i.i66420, %.val1.i.i.i421
  %diff.check425 = icmp ugt i64 %i.lc, -32        ; 3 uses
  br i1 %i.lb, label %iter.check, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i65
  %min.iters.check423 = icmp ult i64 %i.kz, 4
  %or.cond534 = or i1 %min.iters.check423, %diff.check425
  br i1 %or.cond534, label %.lr.ph.split.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check426 = icmp ult i64 %i.kz, 16
  br i1 %min.iters.check426, label %vec.epilog.ph, label %vector.ph427

vector.ph427:                                     ; preds = %vector.main.loop.iter.check
  %i.ld = and i64 %i.kz, 12
  %n.vec428 = and i64 %i.kz, -16                  ; 4 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.ph427, %vector.body429
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next433, %vector.body429 ] ; 2 uses
  %i.le = add i64 %index430, %.val.i.i62          ; 2 uses
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.le ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %wide.load431 = load <8 x i16>, ptr %i.lf, align 2, !noalias !8042
  %wide.load432 = load <8 x i16>, ptr %i.lh, align 2, !noalias !8042
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store <8 x i16> %wide.load431, ptr %i.lg, align 2, !alias.scope !8045, !noalias !8042
  store <8 x i16> %wide.load432, ptr %i.li, align 2, !alias.scope !8045, !noalias !8042
  %index.next433 = add nuw i64 %index430, 16      ; 2 uses
  %i.lj = icmp eq i64 %index.next433, %n.vec428
  br i1 %i.lj, label %middle.block434, label %vector.body429, !llvm.loop !8020

middle.block434:                                  ; preds = %vector.body429
  %cmp.n435 = icmp eq i64 %i.kz, %n.vec428
  br i1 %cmp.n435, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block434
  %min.epilog.iters.check = icmp eq i64 %i.ld, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec428, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec436 = and i64 %i.kz, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index437 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next439, %vec.epilog.vector.body ] ; 2 uses
  %i.lk = add i64 %index437, %.val.i.i62          ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lk
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lk
  %wide.load438 = load <4 x i16>, ptr %i.ll, align 2, !noalias !8042
  store <4 x i16> %wide.load438, ptr %i.lm, align 2, !alias.scope !8045, !noalias !8042
  %index.next439 = add nuw i64 %index437, 4       ; 2 uses
  %i.ln = icmp eq i64 %index.next439, %n.vec436
  br i1 %i.ln, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8021

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n440 = icmp eq i64 %i.kz, %n.vec436
  br i1 %cmp.n440, label %_RNvYNvYNtNtCsltEA4u8Pgfu_11candle_core2op7MinimumNtB7_9BinaryOpT14f16_scalar_vecINtNtNtCsf3Ta7LF998c_4core3ops8function5FnMutTNtNtCsdsILkMb8ZHY_4half8binary163f16RSB20_QB2B_EE8call_mutB9_.exit, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec428, %vec.epilog.iter.check ], [ %n.vec436, %vec.epilog.middle.block ] ; 3 uses
  %i.lo = sub i64 %.val6.i.i63, %.val.i.i62
  %xtraiter557 = and i64 %i.lo, 3                 ; 2 uses
  %lcmp.mod558.not = icmp eq i64 %xtraiter557, 0
  br i1 %lcmp.mod558.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.sroa.0.010.us.i.i.prol = phi i64 [ %i.lp, %.lr.ph.split.us.i.i.prol ], [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.lp = add nuw i64 %.sroa.0.010.us.i.i.prol, 1 ; 2 uses
  %i.lq = add i64 %.sroa.0.010.us.i.i.prol, %.val.i.i62 ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i66, i64 %i.lq
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i, i64 %i.lq
  %.val8.us.i.i.prol = load i16, ptr %i.lr, align 2, !noalias !8042, !noundef !5
  store i16 %.val8.us.i.i.prol, ptr %i.ls, align 2, !alias.scope !8045, !noalias !8042
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter557
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !8022

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.0.010.us.i.i.unr = phi i64 [ %.sroa.0.010.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.lp, %.lr.ph.split.us.i.i.prol ]
  %i.lt = sub i64 %.sroa.0.010.us.i.i.ph, %.val6.i.i63
end_hunk_1
