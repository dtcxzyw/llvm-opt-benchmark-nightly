Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.08?download=true
inline.NumInlined: 2151
inline.NumDeleted: 1036
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXNtCshxhuDJfZv4T_6fontbe4colrNtB2_8ColrWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB4_5error5ErrorE4exec:bb.a
          cleanup
  br label %.body251

.body251:                                         ; preds = %.loopexit498, %.loopexit.split-lp499, %bb.bx, %bb.cj
  %eh.lpad-body252 = phi { ptr, i32 } [ %i.kn, %bb.cj ], [ %i.ip, %bb.bx ], [ %lpad.loopexit500, %.loopexit498 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp499 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %i.hh = load ptr, ptr %i.u, align 8, !alias.scope !2426, !nonnull !8, !noundef !8
  %i.hi = atomicrmw sub ptr %i.hh, i64 1 release, align 8, !noalias !2426
  %i.hj = icmp eq i64 %i.hi, 1
  br i1 %i.hj, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %.body251
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %.thread unwind label %bb.cw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit: ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.hk = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !range !19, !noundef !8 ; 3 uses
  %i.hn = icmp ne i64 %i.hm, -9223372036854775807
  call void @llvm.assume(i1 %i.hn)
  %i.ho = xor i64 %i.hm, -9223372036854775808
  %i.hp = icmp slt i64 %i.hm, 0
  %i.hq = select i1 %i.hp, i64 %i.ho, i64 1       ; 2 uses
  switch i64 %i.hq, label %bb.c [
    i64 0, label %bb.bi
    i64 1, label %bb.bj
    i64 2, label %bb.bh
  ]

bb.bh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit
  br label %bb.bj

bb.bi:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit, %bb.bj
  %storemerge181 = phi i64 [ %.sroa.440.0, %bb.bj ], [ %i.hq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit ]
  store i64 %storemerge181, ptr %i.s, align 8
  %i.hr = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = invoke { i64, i64 } @_RINvMs3_NtCsbeZck1VjBmm_8indexmap3mapINtB6_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE12get_index_ofBO_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.016.0532)
          to label %bb.bk unwind label %.loopexit498 ; 2 uses

bb.bj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit, %bb.bh
  %.sink = phi i64 [ 72, %bb.bh ], [ 64, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.sink
  %.sroa.440.0 = load i64, ptr %i.hu, align 8
  br label %bb.bi

bb.bk:                                            ; preds = %bb.bi
  %i.hv = extractvalue { i64, i64 } %i.ht, 0
  %i.hw = trunc nuw i64 %i.hv to i1
  br i1 %i.hw, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hx = extractvalue { i64, i64 } %i.ht, 1
  %i.hy = trunc i64 %i.hx to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.664)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.hz = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ai, align 8, !nonnull !8, !noundef !8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  invoke fastcc void @_RNvNtCshxhuDJfZv4T_6fontbe4colr13to_colr_paint(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1952) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ia, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ic, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.016.0532, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fu)
          to label %bb.bs unwind label %.loopexit498

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.id = load i8, ptr %.sroa.016.0532, align 8, !range !12, !noundef !8
  %i.ie = icmp eq i8 %i.id, 25
  br i1 %i.ie, label %bb.bo, label %bb.bn, !prof !22

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.0532, i64 24, i1 false)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.016.0532)
          to label %bb.bp unwind label %.loopexit.split-lp499

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.0139.0.copyload = load i16, ptr %i.e, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5149.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.4140.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 29, ptr %0, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.0139.0.copyload, ptr %.sroa.4148.0..sroa_idx, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !2427)
  call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  %i.if = load ptr, ptr %i.u, align 8, !alias.scope !2429, !nonnull !8, !noundef !8
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !2429
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.br, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit250

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit250 unwind label %.loopexit.split-lp491

bb.bs:                                            ; preds = %bb.bl
  %i.ii = load i64, ptr %i.r, align 8, !range !33, !noundef !8 ; 2 uses
  %.not182 = icmp eq i64 %i.ii, -1
  br i1 %.not182, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.664, ptr noundef nonnull align 8 dereferenceable(32) %i.fl, i64 32, i1 false)
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5158.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5155.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4157.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.664, i64 32, i1 false)
  store i64 %i.ii, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.664)
  br label %bb.bq

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.664, ptr noundef nonnull align 8 dereferenceable(32) %i.fl, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.664, i64 32, i1 false)
  %i.ij = invoke { ptr, i16 } @_RNvMsm_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB5_14BaseGlyphPaint3new(i16 noundef %i.hy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.bv unwind label %.loopexit498 ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.ik = extractvalue { ptr, i16 } %i.ij, 0      ; 2 uses
  %i.il = extractvalue { ptr, i16 } %i.ij, 1
  %i.im = load i64, ptr %i.er, align 8, !alias.scope !2430, !noalias !2431, !noundef !8 ; 3 uses
  %i.in = load i64, ptr %i.ad, align 8, !range !31, !alias.scope !2430, !noalias !2431, !noundef !8
  %i.io = icmp eq i64 %i.im, %i.in
  br i1 %i.io, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintE8grow_oneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.bz unwind label %bb.bx, !noalias !2431

bb.bx:                                            ; preds = %bb.bw
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr14BaseGlyphPaintECshxhuDJfZv4T_6fontbe(ptr nonnull align 8 %i.ik) #31
          to label %.body251 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !2431
  unreachable

bb.bz:                                            ; preds = %bb.bw, %bb.bv
  %i.ir = load ptr, ptr %i.eq, align 8, !alias.scope !2430, !noalias !2431, !nonnull !8, !noundef !8
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.im ; 2 uses
  store ptr %i.ik, ptr %i.is, align 8, !noalias !2431
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i16 %i.il, ptr %i.it, align 8
  %i.iu = add i64 %i.im, 1
  store i64 %i.iu, ptr %i.er, align 8, !alias.scope !2430, !noalias !2431
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.664)
  %i.iv = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = invoke { i64, i64 } @_RINvMs3_NtCsbeZck1VjBmm_8indexmap3mapINtB6_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE12get_index_ofBO_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.iw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.016.0532)
          to label %bb.ca unwind label %.loopexit498 ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.iy = extractvalue { i64, i64 } %i.ix, 0
  %i.iz = trunc nuw i64 %i.iy to i1
  br i1 %i.iz, label %bb.cb, label %bb.cp, !prof !23

bb.cb:                                            ; preds = %bb.ca
  %i.ja = extractvalue { i64, i64 } %i.ix, 1      ; 2 uses
  %i.jb = trunc i64 %i.ja to i16                  ; 3 uses
  %i.jc = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  %i.je = load i64, ptr %i.jd, align 8, !range !19, !alias.scope !2433, !noalias !2432, !noundef !8 ; 3 uses
  %i.jf = icmp ne i64 %i.je, -9223372036854775807
  call void @llvm.assume(i1 %i.jf)
  %i.jg = xor i64 %i.je, -9223372036854775808
  %i.jh = icmp slt i64 %i.je, 0
  %i.ji = select i1 %i.jh, i64 %i.jg, i64 1       ; 2 uses
  switch i64 %i.ji, label %bb.cc [
    i64 0, label %bb.ce
    i64 1, label %bb.cg
    i64 2, label %bb.cd
  ]

bb.cc:                                            ; preds = %bb.cb
  unreachable

bb.cd:                                            ; preds = %bb.cb
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cg, %bb.cb
  %storemerge.i = phi i64 [ %.sroa.4.0.i, %bb.cg ], [ %i.ji, %bb.cb ] ; 6 uses
  %.sroa.6.0.extract.shift.i.a = lshr i64 %storemerge.i, 32 ; 2 uses
  %.sroa.10.0.extract.shift.i = lshr i64 %storemerge.i, 48
  %3 = bitcast i64 %storemerge.i to <4 x i16>
  %4 = shufflevector <4 x i16> %3, <4 x i16> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  br i1 %i.fm, label %_RNvNtCshxhuDJfZv4T_6fontbe4colr13quantize_bbox.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %5 = trunc i64 %storemerge.i to i16
  %6 = insertelement <2 x i16> poison, i16 %5, i64 0
  %.sroa.6.0.extract.shift.i = lshr i64 %storemerge.i, 16
  %7 = trunc i64 %.sroa.6.0.extract.shift.i to i16
  %8 = insertelement <2 x i16> %6, i16 %7, i64 1
  %.sroa.8.0.extract.trunc.i = trunc i64 %.sroa.6.0.extract.shift.i.a to i16
  %i.jj = srem <2 x i16> %4, %i.fq
  %i.jk = sub nsw <2 x i16> %8, %i.jj
  %i.jl = sext i16 %.sroa.8.0.extract.trunc.i to i32
  %i.jm = add nsw i32 %i.fo, %i.jl                ; 2 uses
  %i.jn = srem i32 %i.jm, %i.fn
  %i.jo = sub nsw i32 %i.jm, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = ashr i64 %storemerge.i, 48
  %i.jr = trunc nsw i64 %i.jq to i32
  %i.js = add nsw i32 %i.fo, %i.jr                ; 2 uses
  %i.jt = srem i32 %i.js, %i.fn
  %i.ju = sub nsw i32 %i.js, %i.jt
  %i.jv = zext i32 %i.ju to i64
  br label %_RNvNtCshxhuDJfZv4T_6fontbe4colr13quantize_bbox.exit.i

_RNvNtCshxhuDJfZv4T_6fontbe4colr13quantize_bbox.exit.i: ; preds = %bb.cf, %bb.ce
  %.sroa.5.0.i.i = phi i64 [ %i.jv, %bb.cf ], [ %.sroa.10.0.extract.shift.i, %bb.ce ]
  %.sroa.4.0.i.i = phi i64 [ %i.jp, %bb.cf ], [ %.sroa.6.0.extract.shift.i.a, %bb.ce ] ; 2 uses
  %i.jw = phi <2 x i16> [ %i.jk, %bb.cf ], [ %4, %bb.ce ] ; 4 uses
  %.sroa.513.0.extract.trunc.i = trunc i64 %.sroa.4.0.i.i to i16
  %.sroa.614.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i to i16 ; 2 uses
  %i.jx = load i64, ptr %i.eu, align 8, !alias.scope !2432, !noalias !2433, !noundef !8 ; 5 uses
  %.not.i253 = icmp eq i64 %i.jx, 0
  br i1 %.not.i253, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i, label %bb.ch

bb.cg:                                            ; preds = %bb.cd, %bb.cb
  %.sink.i = phi i64 [ 56, %bb.cd ], [ 48, %bb.cb ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.sink.i
  %.sroa.4.0.i = load i64, ptr %i.jy, align 8, !alias.scope !2433, !noalias !2432
  br label %bb.ce

bb.ch:                                            ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr13quantize_bbox.exit.i
  %i.jz = load ptr, ptr %i.et, align 8, !alias.scope !2432, !noalias !2433, !nonnull !8, !noundef !8
  %i.ka = getelementptr [16 x i8], ptr %i.jz, i64 %i.jx ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 -6     ; 2 uses
  %i.kc = load i16, ptr %i.kb, align 2, !noalias !2434, !noundef !8
  %i.kd = zext i16 %i.kc to i32
  %i.ke = add nuw nsw i32 %i.kd, 1
  %i.kf = trunc i64 %i.ja to i32
  %i.kg = and i32 %i.kf, 65535
  %i.kh = icmp eq i32 %i.ke, %i.kg
  br i1 %i.kh, label %bb.ck, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ch, %_RNvNtCshxhuDJfZv4T_6fontbe4colr13quantize_bbox.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2434
  store i16 0, ptr %i.c, align 4, !noalias !2434
  %i.ki = extractelement <2 x i16> %i.jw, i64 0
  store i16 %i.ki, ptr %.sroa.616.0..sroa_idx.i, align 2, !noalias !2434
  %i.kj = trunc nuw i64 %.sroa.4.0.i.i to i32
  %.sroa.817.sroa.7.0.insert.ext.i = shl i32 %i.kj, 16
  %i.kk = extractelement <2 x i16> %i.jw, i64 1
  %.sroa.817.sroa.0.0.insert.ext.i = zext i16 %i.kk to i32
  %.sroa.817.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.817.sroa.7.0.insert.ext.i, %.sroa.817.sroa.0.0.insert.ext.i
  store i32 %.sroa.817.sroa.0.0.insert.insert.i, ptr %.sroa.817.0..sroa_idx.i, align 4, !noalias !2434
  store i16 %.sroa.614.0.extract.trunc.i, ptr %.sroa.13.0..sroa_idx.i, align 4, !noalias !2434
  invoke void @_RNvMsE_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB5_4Clip3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, i16 noundef %i.jb, i16 noundef %i.jb, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.c)
          to label %.noexc255 unwind label %.loopexit498

.noexc255:                                        ; preds = %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2434
  call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.kl = load i64, ptr %i.ab, align 8, !range !31, !alias.scope !2437, !noalias !2438, !noundef !8
  %i.km = icmp eq i64 %i.jx, %i.kl
  br i1 %i.km, label %bb.ci, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe.exit.i

bb.ci:                                            ; preds = %.noexc255
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8grow_oneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.cj, !noalias !2438

bb.cj:                                            ; preds = %bb.ci
  %i.kn = landingpad { ptr, i32 }
          cleanup
  %.val.i.i254 = load ptr, ptr %i.d, align 8, !alias.scope !2436, !noalias !2439, !nonnull !8, !noundef !8
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i254, i64 noundef 16, i64 noundef 4) #33, !noalias !2438
  br label %.body251

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.ci, %.noexc255
  %i.ko = load ptr, ptr %i.et, align 8, !alias.scope !2437, !noalias !2438, !nonnull !8, !noundef !8
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.ko, i64 %i.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !2433
  %i.kq = add i64 %i.jx, 1
  store i64 %i.kq, ptr %i.eu, align 8, !alias.scope !2437, !noalias !2438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2434
  br label %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit

bb.ck:                                            ; preds = %bb.ch
  %i.kr = getelementptr i8, ptr %i.ka, i64 -16
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !2434, !nonnull !8, !noundef !8 ; 5 uses
  %i.kt = load i16, ptr %i.ks, align 4, !range !24, !alias.scope !2440, !noalias !2441, !noundef !8
  %i.ku = icmp eq i16 %i.kt, 0
  br i1 %i.ku, label %bb.cl, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.cl:                                            ; preds = %bb.ck
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.kw = load i16, ptr %i.kv, align 2, !alias.scope !2440, !noalias !2441, !noundef !8
  %i.kx = extractelement <2 x i16> %i.jw, i64 0
  %i.ky = icmp eq i16 %i.kw, %i.kx
  br i1 %i.ky, label %bb.cm, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.cm:                                            ; preds = %bb.cl
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.la = load i16, ptr %i.kz, align 4, !alias.scope !2440, !noalias !2441, !noundef !8
  %i.lb = extractelement <2 x i16> %i.jw, i64 1
  %i.lc = icmp eq i16 %i.la, %i.lb
  br i1 %i.lc, label %bb.cn, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.cn:                                            ; preds = %bb.cm
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ks, i64 6
  %i.le = load i16, ptr %i.ld, align 2, !alias.scope !2440, !noalias !2441, !noundef !8
  %i.lf = icmp eq i16 %i.le, %.sroa.513.0.extract.trunc.i
  br i1 %i.lf, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.cn
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.lh = load i16, ptr %i.lg, align 4, !alias.scope !2440, !noalias !2441, !noundef !8
  %i.li = icmp eq i16 %i.lh, %.sroa.614.0.extract.trunc.i
  br i1 %i.li, label %bb.co, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.co:                                            ; preds = %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i
  store i16 %i.jb, ptr %i.kb, align 2, !noalias !2434
  br label %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit

bb.cp:                                            ; preds = %bb.ca
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #34
          to label %bb.cq unwind label %.loopexit.split-lp499

bb.cq:                                            ; preds = %bb.dh, %bb.dd, %bb.cp, %bb.an
  unreachable

_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit: ; preds = %bb.co, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  %i.lj = load ptr, ptr %i.u, align 8, !alias.scope !2444, !nonnull !8, !noundef !8
  %i.lk = atomicrmw sub ptr %i.lj, i64 1 release, align 8, !noalias !2444
  %i.ll = icmp eq i64 %i.lk, 1
  br i1 %i.ll, label %bb.cr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259

bb.cr:                                            ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259 unwind label %.loopexit490

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259: ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259, %bb.db, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphEECshxhuDJfZv4T_6fontbe.exit280, %bb.ar
  %i.lm = icmp eq ptr %i.fr, %i.fa
  br i1 %i.lm, label %._crit_edge535, label %bb.ap

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit250: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphEECshxhuDJfZv4T_6fontbe.exit272, %bb.cy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit250
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body261.thread unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.dw

bb.cv:                                            ; preds = %bb.ct
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.cw:                                            ; preds = %bb.ix, %bb.iq, %bb.el, %bb.dj, %bb.bg, %bb.ai, %bb.af, %bb.ab, %.critedge204, %bb.ip, %.thread434, %.critedge203, %.critedge, %.critedge205, %bb.iy, %.thread392, %.body285.thread, %.body281.thread, %.body261.thread, %.thread, %.critedge207.thread401, %bb.ay
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body266

.body266:                                         ; preds = %bb.di, %bb.cw
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

.thread391:                                       ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr18colr_v0_compatible.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.lq = load ptr, ptr %i.ai, align 8, !nonnull !8, !noundef !8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.lu = load ptr, ptr %i.gc, align 8, !nonnull !8, !noundef !8
  store ptr %i.lu, ptr %i.z, align 8
  invoke fastcc void @_RNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.lt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.016.0532, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef 1, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae)
          to label %bb.cx unwind label %.loopexit490

bb.cx:                                            ; preds = %.thread391
  %i.lv = load i64, ptr %i.aa, align 8, !range !33, !noundef !8 ; 2 uses
  %.not184 = icmp eq i64 %i.lv, -1
  br i1 %.not184, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.4109.sroa.0.0.copyload = load i48, ptr %i.fh, align 8
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(82) %.sroa.5113.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(82) %.sroa.5110.0..sroa_idx, i64 82, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %i.lv, ptr %0, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i48 %.sroa.4109.sroa.0.0.copyload, ptr %.sroa.4112.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cs

bb.cz:                                            ; preds = %bb.cx
  %.sroa.0170.0.copyload = load i48, ptr %i.fh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.lw = load i64, ptr %i.ea, align 8, !alias.scope !2445, !noundef !8 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXs1z_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4BaseNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq:bb.a
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !8, !noundef !8
  %i.ar = tail call noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ao, i64 noundef %i.aj)
  br i1 %i.ar, label %bb.p, label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %.split.i17, %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !8
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit18, label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit18: ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !8, !noundef !8
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !8, !noundef !8
  %i.bb = tail call noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base16BaseScriptRecordINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ay, i64 noundef %i.at)
  br i1 %i.bb, label %bb.q, label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

bb.q:                                             ; preds = %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit18, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !align !7, !noundef !8 ; 2 uses
  %.not6 = icmp eq ptr %i.bd, null                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !align !7, !noundef !8 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null                 ; 2 uses
  %brmerge = or i1 %.not6, %i.bg
  %.mux = and i1 %.not6, %i.bg
  br i1 %brmerge, label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread, label %bb.r

_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.q, %.split.i17, %bb.p, %bb.m, %bb.o, %bb.n, %.split.i, %bb.h, %bb.e, %bb.g, %bb.f, %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit18, %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit, %bb.c, %bb.k, %bb.b, %bb.j, %bb.r
  %.sroa.0.0.shrunk = phi i1 [ %i.bh, %bb.r ], [ false, %bb.c ], [ false, %.split.i17 ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.k ], [ %.mux, %bb.q ], [ false, %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit ], [ false, %.split.i ], [ false, %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit18 ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.m ], [ false, %bb.p ]
  ret i1 %.sroa.0.0.shrunk

bb.r:                                             ; preds = %bb.q
  %i.bh = tail call fastcc noundef zeroext i1 @_RNvXs2u_NtNtCs6WnK4nVnpEz_11write_fonts6tables10variationsNtB6_18ItemVariationStoreNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf) #36
  br label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE11read_access(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 4 uses
  %i.l = alloca [56 x i8], align 8                ; 4 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.g, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 4, ptr %i.f, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 16, ptr %i.e, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @50, i64 32, i1 false)
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @45, i64 32, i1 false)
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 9, ptr %i.d, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 36, ptr %i.c, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE12write_access(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 18, ptr %i.d, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 30, ptr %i.b, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 16, ptr %i.a, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE14also_completes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.a = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 481) 80, i64 noundef range(i64 1, 9) 8) #33 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #34
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 17, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 30, ptr %.sroa.4.0..sroa_idx4, align 8
  store i64 2, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE2id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 18, ptr %i.a, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE4exec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [6 x i8], align 8                 ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 8 uses
  %i.q = alloca [80 x i8], align 8                ; 16 uses
  %.sroa.0392 = alloca [32 x i8], align 8         ; 4 uses
  %.sroa.0356 = alloca [32 x i8], align 8         ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [8 x i8], align 8                ; 8 uses
  %i.ae = alloca [8 x i8], align 8                ; 7 uses
  %i.af = alloca [56 x i8], align 8               ; 18 uses
  %i.ag = alloca [1 x i8], align 1                ; 3 uses
  %.sroa.9290 = alloca [40 x i8], align 8         ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.6261 = alloca [86 x i8], align 2         ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 6 uses
  %i.aj = alloca [64 x i8], align 8               ; 14 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 9 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [56 x i8], align 8               ; 15 uses
  %i.ao = alloca [40 x i8], align 8               ; 15 uses
  %i.ap = alloca [8 x i8], align 8                ; 7 uses
  %i.aq = alloca [288 x i8], align 8              ; 17 uses
  %i.ar = alloca [8 x i8], align 8                ; 13 uses
  %i.as = alloca [8 x i8], align 8                ; 11 uses
  %i.at = alloca [40 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [40 x i8], align 8               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.aw = load atomic i64, ptr @_RNvNtCs6CpVowoi7NE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ax = icmp ult i64 %i.aw, 3
  br i1 %i.ax, label %bb.d, label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit, %bb.p, %bb.b
  %.sroa.059.0 = phi i8 [ %.sroa.059.1, %bb.b ], [ %.sroa.056.2, %bb.p ], [ %.sroa.056.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit ]
  %.sroa.056.0 = phi i8 [ %.sroa.056.1, %bb.b ], [ %.sroa.056.2, %bb.p ], [ %.sroa.056.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit ]
  %.pn125 = phi { ptr, i32 } [ %i.ba, %bb.b ], [ %.pn123, %bb.p ], [ %.pn123, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit ] ; 2 uses
  %i.ay = trunc nuw i8 %.sroa.056.0 to i1
  %i.az = load i64, ptr %i.av, align 8, !range !10
  %.not.i.i234 = icmp ne i64 %i.az, 2
  %or.cond.not = select i1 %i.ay, i1 %.not.i.i234, i1 false
  br i1 %or.cond.not, label %bb.hu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit236

bb.b:                                             ; preds = %bb.hm, %bb.gr, %bb.n, %bb.k, %bb.h, %bb.g, %bb.c
  %.sroa.059.1 = phi i8 [ %.sroa.056.2, %bb.hm ], [ %.sroa.056.2, %bb.gr ], [ %.sroa.056.2, %bb.c ], [ 1, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.g ]
  %.sroa.056.1 = phi i8 [ %.sroa.056.2, %bb.hm ], [ %.sroa.056.2, %bb.gr ], [ %.sroa.056.2, %bb.c ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit

bb.c:                                             ; preds = %bb.l, %bb.n, %bb.a
  %.sroa.056.2 = phi i8 [ 0, %bb.a ], [ 1, %bb.n ], [ 1, %bb.l ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 1872
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = invoke noundef nonnull ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtNtB6_2ir15static_metadata14StaticMetadataE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bd)
          to label %bb.o unwind label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.bf = load atomic i64, ptr @_RNvNtCs6CpVowoi7NE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bg = icmp ult i64 %i.bf, 3
  br i1 %i.bg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.j, %bb.i
  store i64 2, ptr %i.at, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr null, ptr %i.bh, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.bi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB9_13orchestration7ContextNtB24_9AnyWorkIdNtNtB9_5error5ErrorE4exec10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bi, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !34

bb.g:                                             ; preds = %bb.f
  %i.bj = invoke noundef i8 @_RNvMNtCs6CpVowoi7NE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB9_13orchestration7ContextNtB24_9AnyWorkIdNtNtB9_5error5ErrorE4exec10___CALLSITE)
          to label %bb.i unwind label %bb.b       ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.010.0 = phi i8 [ %i.bj, %bb.i ], [ %i.bi, %bb.f ], [ %i.bi, %bb.f ]
  %i.bk = load ptr, ptr @_RNvNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB9_13orchestration7ContextNtB24_9AnyWorkIdNtNtB9_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !8, !align !7, !noundef !8
  %i.bl = invoke noundef zeroext i1 @_RNvNtCseSYDGaa5U8h_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bk, i8 noundef %.sroa.010.0)
          to label %bb.j unwind label %bb.b

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.bj, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.bl, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr @_RNvNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB9_13orchestration7ContextNtB24_9AnyWorkIdNtNtB9_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !8, !align !7, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 1, ptr %i.au, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.bn, ptr %i.bo, align 8
  invoke void @_RNvMNtCseSYDGaa5U8h_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au)
          to label %bb.m unwind label %bb.b

bb.l:                                             ; preds = %bb.m, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false)
  %i.bp = load i64, ptr %i.av, align 8, !range !10, !noundef !8
  %.not114 = icmp eq i64 %i.bp, 2
  br i1 %.not114, label %bb.c, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bq)
          to label %bb.c unwind label %bb.b

bb.o:                                             ; preds = %bb.c
  store ptr %i.be, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bs = invoke noundef nonnull ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtB6_2ir10GlyphOrderE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br)
          to label %bb.r unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit: ; preds = %.body204, %bb.s, %bb.q
  %.pn123 = phi { ptr, i32 } [ %i.bw, %bb.q ], [ %.pn121, %bb.s ], [ %.pn121, %.body204 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  call void @llvm.experimental.noalias.scope.decl(metadata !2969)
  %i.bt = load ptr, ptr %i.as, align 8, !alias.scope !2970, !nonnull !8, !noundef !8
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !2970
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.gy

bb.q:                                             ; preds = %bb.hl, %bb.gq, %bb.o
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit

bb.r:                                             ; preds = %bb.o
  store ptr %i.bs, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  %i.by = invoke noundef nonnull ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtB6_2ir13GlobalMetricsE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx)
          to label %bb.u unwind label %bb.t       ; 2 uses

.body204:                                         ; preds = %bb.hb, %bb.go, %bb.v, %bb.w, %bb.t, %.critedge
  %.pn121 = phi { ptr, i32 } [ %i.yr, %bb.go ], [ %.pn119, %.critedge ], [ %i.cg, %bb.v ], [ %i.cc, %bb.t ], [ %i.cg, %bb.w ], [ %i.zq, %bb.hb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  call void @llvm.experimental.noalias.scope.decl(metadata !2972)
  %i.bz = load ptr, ptr %i.ar, align 8, !alias.scope !2973, !nonnull !8, !noundef !8
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !2973
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit

bb.s:                                             ; preds = %.body204
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.gy

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECshxhuDJfZv4T_6fontbe.exit.i214, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECshxhuDJfZv4T_6fontbe.exit.i, %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body204

bb.u:                                             ; preds = %bb.r
  store ptr %i.by, ptr %i.ap, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load ptr, ptr %i.as, align 8, !nonnull !8, !noundef !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 360
  invoke void @_RNvMsf_NtCs3v5ql5U6hxj_6fontir2irNtB5_13GlobalMetrics2at(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %i.aq, ptr noundef nonnull align 8 %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf)
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  call void @llvm.experimental.noalias.scope.decl(metadata !2975)
  %i.ch = load ptr, ptr %i.ap, align 8, !alias.scope !2976, !nonnull !8, !noundef !8
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !2976
  %i.cj = icmp eq i64 %i.ci, 1
end_hunk_1
begin_hunk_2_@_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE4exec:bb.a
  %i.mn = load ptr, ptr %i.t, align 8, !alias.scope !3036, !noalias !3034, !noundef !8 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %.thread407, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mp = atomicrmw sub ptr %i.mn, i64 1 release, align 8, !noalias !3037
  %i.mq = icmp eq i64 %i.mp, 1
  br i1 %i.mq, label %bb.cp, label %.thread407

bb.cp:                                            ; preds = %bb.co
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #35
          to label %.thread407 unwind label %bb.cy, !noalias !3031

bb.cq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsoeFWPcSj6V_8lock_api6rwlock15RwLockReadGuardNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEEECshxhuDJfZv4T_6fontbe.exit.i
  store i64 1, ptr %i.md, align 8, !noalias !3031
  %.sroa.4.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i151, align 8, !noalias !3031
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store i16 %.sroa.0242.0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4243.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 18
  store i16 %.sroa.4243.0, ptr %.sroa.4243.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  %.sroa.7244.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 20
  store i16 %.sroa.7244.0, ptr %.sroa.7244.0..sroa.5.0..sroa_idx.i.sroa_idx, align 4
  %.sroa.10245.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 22
  store <4 x i16> %i.gu, ptr %.sroa.10245.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 30
  store i16 %i.ht, ptr %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  store i16 %i.hq, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 34
  store i16 %.sroa.22.0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 36
  store i16 %i.id, ptr %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx, align 4
  store ptr %i.md, ptr %i.t, align 8, !noalias !3034
  %i.mr = cmpxchg weak ptr %i.ki, i64 0, i64 8 acquire monotonic, align 8, !noalias !3031
  %i.ms = extractvalue { i64, i1 } %i.mr, 1
  br i1 %i.ms, label %bb.cs, label %bb.cr, !prof !23

bb.cr:                                            ; preds = %bb.cq
  %i.mt = invoke noundef zeroext i1 @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.ki, i64 undef, i32 noundef -1)
          to label %bb.cs unwind label %bb.cn, !noalias !3031 ; 0 uses

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !3038)
  %i.mu = load ptr, ptr %i.kr, align 8, !alias.scope !3038, !noalias !3031, !noundef !8 ; 2 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mw = atomicrmw sub ptr %i.mu, i64 1 release, align 8, !noalias !3039
  %i.mx = icmp eq i64 %i.mw, 1
  br i1 %i.mx, label %bb.cu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kr) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i unwind label %bb.cv, !noalias !3031

bb.cv:                                            ; preds = %bb.cu
  %i.my = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mz = load ptr, ptr %i.t, align 8, !noalias !3034, !noundef !8
  store ptr %i.mz, ptr %i.kr, align 8, !noalias !3031
  %i.na = cmpxchg ptr %i.ki, i64 8, i64 0 release monotonic, align 8, !noalias !3031
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.na, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %.thread407, label %bb.cw, !prof !23

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ki, i1 noundef zeroext false)
          to label %.thread407 unwind label %bb.cy, !noalias !3031

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i: ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.nb = load ptr, ptr %i.t, align 8, !noalias !3034, !noundef !8
  store ptr %i.nb, ptr %i.kr, align 8, !noalias !3031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3034
  %i.nc = cmpxchg ptr %i.ki, i64 8, i64 0 release monotonic, align 8, !noalias !3031
  %.sroa.18.0.in.i.i.i.i22.i = extractvalue { i64, i1 } %i.nc, 1
  br i1 %.sroa.18.0.in.i.i.i.i22.i, label %_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE3setB14_.exit, label %bb.cx, !prof !23

bb.cx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i
  invoke void @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ki, i1 noundef zeroext false)
          to label %_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE3setB14_.exit unwind label %.thread410

bb.cy:                                            ; preds = %bb.cw, %bb.cp
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !3031
  unreachable

_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE3setB14_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i, %bb.cl, %bb.cm, %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.nf = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nf, ptr noundef nonnull align 8 dereferenceable(24) %i.ne, i64 24, i1 false)
  invoke void @_RINvNtCs6WnK4nVnpEz_11write_fonts5write10dump_tableNtNtNtB4_6tables4hmtx4HmtxECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al)
          to label %bb.cz unwind label %.loopexit.split-lp

.body162:                                         ; preds = %.loopexit, %.loopexit.split-lp, %.body179, %.thread.i.i.i.i, %bb.db
  %.pn = phi { ptr, i32 } [ %.pn4.i.i.i.i166, %.thread.i.i.i.i ], [ %i.nj, %bb.db ], [ %eh.lpad-body180, %.body179 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx4HmtxECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(48) %i.al) #31
          to label %.critedge unwind label %bb.gy

.loopexit:                                        ; preds = %bb.eh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body162

.loopexit.split-lp:                               ; preds = %_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE3setB14_.exit, %bb.dg, %bb.dh, %bb.gm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body162

bb.cz:                                            ; preds = %_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE3setB14_.exit
  %i.ng = load i64, ptr %i.ah, align 8, !range !11, !noundef !8
  %i.nh = trunc nuw i64 %i.ng to i1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  br i1 %i.nh, label %bb.da, label %bb.dg

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ni, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3040
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.dc unwind label %bb.db, !noalias !3040

bb.db:                                            ; preds = %bb.dd, %bb.da
  %i.nj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6WnK4nVnpEz_11write_fonts5error5ErrorECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #31
          to label %.body162 unwind label %bb.df, !noalias !3040

bb.dc:                                            ; preds = %bb.da
  %i.nk = load i64, ptr %i.r, align 8, !range !11, !noalias !3040, !noundef !8
  %i.nl = trunc nuw i64 %i.nk to i1
  %i.nm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !range !30, !noalias !3040, !noundef !8 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.nl, label %bb.dd, label %bb.gz, !prof !22

bb.dd:                                            ; preds = %bb.dc
  %i.np = load i64, ptr %i.no, align 8, !noalias !3040
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.nn, i64 %i.np) #34
          to label %bb.de unwind label %bb.db, !noalias !3040

bb.de:                                            ; preds = %bb.dd
  unreachable

bb.df:                                            ; preds = %bb.db
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !3040
  unreachable

bb.dg:                                            ; preds = %bb.cz
  %.sroa.0275.0.copyload = load i64, ptr %i.ni, align 8
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.4276.0.copyload = load ptr, ptr %.sroa.4276.0..sroa_idx, align 8
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.5277.0.copyload = load i64, ptr %.sroa.5277.0..sroa_idx, align 8
  store i64 %.sroa.0275.0.copyload, ptr %i.ak, align 8
  %.sroa.632.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.4276.0.copyload, ptr %.sroa.632.sroa.7.0..sroa_idx, align 8
  %.sroa.632.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.5277.0.copyload, ptr %.sroa.632.sroa.8.0..sroa_idx, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 1120
  invoke void @_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc3vec3VechEE3setB14_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.nr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ak)
          to label %bb.dh unwind label %.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ns = load ptr, ptr %i.ar, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.nw = load i64, ptr %i.nv, align 8, !noundef !8 ; 2 uses
  %i.nx = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @51)
          to label %bb.di unwind label %.loopexit.split-lp ; 2 uses

bb.di:                                            ; preds = %bb.dh
  %.idx426 = shl nuw nsw i64 %i.nw, 5
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.idx426
  %i.nz = extractvalue { i64, i64 } %i.nx, 0      ; 2 uses
  %i.oa = extractvalue { i64, i64 } %i.nx, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0356)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0356, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false), !noalias !3041
  %i.ob = icmp eq i64 %i.nw, 0
  br i1 %i.ob, label %.loopexit432, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %bb.di
  %i.oc = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.od = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 1896
  %.sroa.4.0..sroa_idx.i.i.i.i165 = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.q, i64 54 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 4 uses
  %.sroa.712.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 60 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 62 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.q, i64 52 ; 2 uses
  %.sroa.6357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %.sroa.7362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  br label %bb.dj

bb.dj:                                            ; preds = %.noexc172, %.lr.ph.i164
  %.sroa.6357.0 = phi i64 [ %i.nz, %.lr.ph.i164 ], [ %.sroa.4393.0.copyload, %.noexc172 ]
  %.sroa.7362.0 = phi i64 [ %i.oa, %.lr.ph.i164 ], [ %.sroa.5394.0.copyload, %.noexc172 ]
  %.sroa.12387.0 = phi i64 [ undef, %.lr.ph.i164 ], [ %.sroa.10399.0.copyload, %.noexc172 ]
  %.sroa.0.011.i = phi ptr [ %i.nu, %.lr.ph.i164 ], [ %i.om, %.noexc172 ] ; 5 uses
  %.sroa.2.010.i = phi i16 [ 0, %.lr.ph.i164 ], [ %i.rs, %.noexc172 ] ; 3 uses
  %i.ol = phi <4 x i16> [ zeroinitializer, %.lr.ph.i164 ], [ %i.rn, %.noexc172 ]
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0356, i64 32, i1 false), !noalias !3043
  store i64 %.sroa.6357.0, ptr %.sroa.6357.0..sroa_idx, align 8, !noalias !3043
  store i64 %.sroa.7362.0, ptr %.sroa.7362.0..sroa_idx, align 8, !noalias !3043
  store <4 x i16> %i.ol, ptr %i.oi, align 8, !noalias !3043
  store i64 %.sroa.12387.0, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3043
  call void @llvm.experimental.noalias.scope.decl(metadata !3044)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0392)
  call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  store i16 %.sroa.2.010.i, ptr %i.oc, align 8, !noalias !3042
  store ptr %.sroa.0.011.i, ptr %i.od, align 8, !noalias !3042
  call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  call void @llvm.experimental.noalias.scope.decl(metadata !3048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3049
  %i.on = load i8, ptr %.sroa.0.011.i, align 8, !range !12, !alias.scope !3050, !noalias !3051, !noundef !8
  %i.oo = icmp eq i8 %i.on, 25
  br i1 %i.oo, label %bb.dl, label %bb.dk, !prof !22

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.011.i, i64 24, i1 false), !noalias !3051
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.011.i)
          to label %bb.dm unwind label %.thread5.i.i.i.i171, !noalias !3051

.thread5.i.i.i.i171:                              ; preds = %bb.dl
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i165, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !3049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3049
  store i64 10, ptr %i.of, align 8, !noalias !3049
  store i64 1, ptr %i.o, align 8, !noalias !3049
  %i.oq = invoke noundef nonnull ptr @_RNvMs1_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_10ContextMapNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtB11_5GlyphE3getB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.oe, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o)
          to label %bb.do unwind label %bb.dn, !noalias !3051

bb.dn:                                            ; preds = %bb.dm
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o) #31
          to label %.thread.i.i.i.i unwind label %bb.ei, !noalias !3051

bb.do:                                            ; preds = %bb.dm
  store ptr %i.oq, ptr %i.p, align 8, !noalias !3049
  call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  %i.os = load i64, ptr %i.o, align 8, !range !11, !alias.scope !3052, !noalias !3049, !noundef !8
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(32) %i.of)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167 unwind label %bb.dv, !noalias !3051

bb.dq:                                            ; preds = %bb.do
  call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  %i.ou = load i64, ptr %i.of, align 8, !range !17, !alias.scope !3054, !noalias !3049, !noundef !8
  switch i64 %i.ou, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167 [
    i64 10, label %bb.dr
    i64 15, label %bb.dt
  ]

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169: ; preds = %bb.du, %bb.ds
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.og) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167 unwind label %bb.dv, !noalias !3051

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  call void @llvm.experimental.noalias.scope.decl(metadata !3057)
  %i.ov = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i165, align 8, !range !12, !alias.scope !3058, !noalias !3049, !noundef !8
  %switch.i.i.i.i.i.i.i.i.i170 = icmp samesign ult i8 %i.ov, 25
  br i1 %switch.i.i.i.i.i.i.i.i.i170, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.experimental.noalias.scope.decl(metadata !3059)
  call void @llvm.experimental.noalias.scope.decl(metadata !3060)
  %i.ow = load ptr, ptr %i.og, align 8, !alias.scope !3061, !noalias !3049, !nonnull !8, !noundef !8
  %i.ox = atomicrmw sub ptr %i.ow, i64 1 release, align 8, !noalias !3062
  %i.oy = icmp eq i64 %i.ox, 1
  br i1 %i.oy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167

bb.dt:                                            ; preds = %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  %i.oz = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i165, align 8, !range !12, !alias.scope !3066, !noalias !3049, !noundef !8
  %switch.i.i.i1.i.i.i.i.i.i = icmp samesign ult i8 %i.oz, 25
  br i1 %switch.i.i.i1.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.experimental.noalias.scope.decl(metadata !3067)
  call void @llvm.experimental.noalias.scope.decl(metadata !3068)
  %i.pa = load ptr, ptr %i.og, align 8, !alias.scope !3069, !noalias !3049, !nonnull !8, !noundef !8
  %i.pb = atomicrmw sub ptr %i.pa, i64 1 release, align 8, !noalias !3070
  %i.pc = icmp eq i64 %i.pb, 1
  br i1 %i.pc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167

bb.dv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i, %bb.ec, %bb.eb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169, %bb.dp
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ee, %bb.dv
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.pd, %bb.dv ], [ %i.rl, %bb.ee ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3071)
  call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  %i.pe = load ptr, ptr %i.p, align 8, !alias.scope !3073, !noalias !3049, !nonnull !8, !noundef !8
  %i.pf = atomicrmw sub ptr %i.pe, i64 1 release, align 8, !noalias !3074
  %i.pg = icmp eq i64 %i.pf, 1
  br i1 %i.pg, label %bb.dw, label %.thread.i.i.i.i

bb.dw:                                            ; preds = %.body.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #35
          to label %.thread.i.i.i.i unwind label %bb.ei, !noalias !3075

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167: ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169, %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3049
  %i.ph = load ptr, ptr %i.p, align 8, !noalias !3049, !nonnull !8, !noundef !8 ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3049
  %i.pj = load i64, ptr %i.pi, align 8, !range !19, !alias.scope !3077, !noalias !3078, !noundef !8 ; 3 uses
  %i.pk = icmp ne i64 %i.pj, -9223372036854775807
  call void @llvm.assume(i1 %i.pk)
  %i.pl = xor i64 %i.pj, -9223372036854775808
  %i.pm = icmp slt i64 %i.pj, 0
  %i.pn = select i1 %i.pm, i64 %i.pl, i64 1       ; 2 uses
  switch i64 %i.pn, label %bb.dx [
    i64 0, label %.thread.i.i.i.i.i
    i64 1, label %bb.dz
    i64 2, label %bb.dy
  ]

bb.dx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  unreachable

bb.dy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  br label %bb.dz

3:                                                ; preds = %8, %bb.dz
  %.sroa.78.0.i.i.i.i.i = phi i16 [ %16, %8 ], [ %.sroa.7.0.extract.trunc.i.i.i.i.i, %bb.dz ]
  %.sroa.67.0.i.i.i.i.i = phi i16 [ %15, %8 ], [ %i.pp, %bb.dz ]
  %4 = phi <2 x i16> [ %14, %8 ], [ %7, %bb.dz ]
  store i16 1, ptr %i.oh, align 2, !alias.scope !3079, !noalias !3080
  store <2 x i16> %4, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3079, !noalias !3080
  store i16 %.sroa.67.0.i.i.i.i.i, ptr %.sroa.712.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !3079, !noalias !3080
  store i16 %.sroa.78.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !3079, !noalias !3080
  %5 = icmp eq i64 %i.pn, 2
  br i1 %5, label %bb.eb, label %bb.ea

bb.dz:                                            ; preds = %bb.dy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  %.sink.i.i.i.i.i = phi i64 [ 56, %bb.dy ], [ 48, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167 ]
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.sink.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i = load i64, ptr %i.po, align 8, !alias.scope !3077, !noalias !3078 ; 5 uses
  %.sroa.54.0.extract.shift.i.i.i.i.i.a = lshr i64 %.sroa.5.0.i.i.i.i.i, 32
  %i.pp = trunc i64 %.sroa.54.0.extract.shift.i.i.i.i.i.a to i16 ; 2 uses
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 48
  %.sroa.7.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i to i16 ; 2 uses
  %.sroa.09.0.copyload.i.i.i.i.i = load i16, ptr %i.oh, align 2, !alias.scope !3079, !noalias !3080
  %i.pq = trunc i16 %.sroa.09.0.copyload.i.i.i.i.i to i1
  %6 = bitcast i64 %.sroa.5.0.i.i.i.i.i to <4 x i16>
  %7 = shufflevector <4 x i16> %6, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  br i1 %i.pq, label %8, label %3

8:                                                ; preds = %bb.dz
  %9 = trunc i64 %.sroa.5.0.i.i.i.i.i to i16
  %10 = insertelement <2 x i16> poison, i16 %9, i64 0
  %.sroa.54.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 16
  %11 = trunc i64 %.sroa.54.0.extract.shift.i.i.i.i.i to i16
  %12 = insertelement <2 x i16> %10, i16 %11, i64 1
  %.sroa.8.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !3079, !noalias !3080
  %.sroa.712.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.712.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !3079, !noalias !3080
  %13 = load <2 x i16>, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3079, !noalias !3080
  %14 = call <2 x i16> @llvm.smin.v2i16(<2 x i16> %13, <2 x i16> %12)
  %15 = call i16 @llvm.smax.i16(i16 %.sroa.712.0.copyload.i.i.i.i.i, i16 %i.pp)
  %16 = call i16 @llvm.smax.i16(i16 %.sroa.8.0.copyload.i.i.i.i.i, i16 %.sroa.7.0.extract.trunc.i.i.i.i.i)
  br label %3

.thread.i.i.i.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  store <4 x i16> <i16 1, i16 0, i16 0, i16 0>, ptr %i.oj, align 8, !noalias !3081
  store i64 -1, ptr %i.m, align 8, !noalias !3081
  br label %bb.ec

bb.ea:                                            ; preds = %3
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.ps = load ptr, ptr %i.pr, align 8, !alias.scope !3077, !noalias !3078, !nonnull !8, !noundef !8 ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.pu = load i64, ptr %i.pt, align 8, !alias.scope !3077, !noalias !3078, !noundef !8 ; 6 uses
  %i.pv = icmp eq i64 %i.pu, 0
  br i1 %i.pv, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.ea
  %xtraiter = and i64 %i.pu, 3                    ; 3 uses
  %i.pw = icmp ult i64 %i.pu, 4
  br i1 %i.pw, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.preheader.new:               ; preds = %.preheader.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.pu, -4
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.qn, %.preheader.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.qm, %.preheader.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i ]
  %i.px = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.py = getelementptr i8, ptr %i.px, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.py, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.pz = icmp ult i64 %.val.i.i.i.i.i.i, 1537228672809129302
  call void @llvm.assume(i1 %i.pz)
  %i.qa = add i64 %.val.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i
  %i.qb = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qc = getelementptr i8, ptr %i.qb, i64 40
  %.val.i.i.i.i.i.i.1 = load i64, ptr %i.qc, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qd = icmp ult i64 %.val.i.i.i.i.i.i.1, 1537228672809129302
  call void @llvm.assume(i1 %i.qd)
  %i.qe = add i64 %.val.i.i.i.i.i.i.1, %i.qa
  %i.qf = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qg = getelementptr i8, ptr %i.qf, i64 64
  %.val.i.i.i.i.i.i.2 = load i64, ptr %i.qg, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qh = icmp ult i64 %.val.i.i.i.i.i.i.2, 1537228672809129302
  call void @llvm.assume(i1 %i.qh)
  %i.qi = add i64 %.val.i.i.i.i.i.i.2, %i.qe
  %i.qj = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qk = getelementptr i8, ptr %i.qj, i64 88
  %.val.i.i.i.i.i.i.3 = load i64, ptr %i.qk, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.ql = icmp ult i64 %.val.i.i.i.i.i.i.3, 1537228672809129302
  call void @llvm.assume(i1 %i.ql)
  %i.qm = add i64 %.val.i.i.i.i.i.i.3, %i.qi      ; 3 uses
  %i.qn = add nuw i64 %.sroa.04.0.i.i.i.i.i.i, 4  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i, label %.preheader.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.epil.preheader:              ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.qn, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.qm, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod562 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod562)
  br label %.preheader.i.i.i.i.i.epil

.preheader.i.i.i.i.i.epil:                        ; preds = %.preheader.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.epil = phi i64 [ %i.qs, %.preheader.i.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.epil = phi i64 [ %i.qr, %.preheader.i.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.epil.preheader ]
  %i.qo = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %.sroa.04.0.i.i.i.i.i.i.epil
  %i.qp = getelementptr i8, ptr %i.qo, i64 16
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.qp, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qq = icmp ult i64 %.val.i.i.i.i.i.i.epil, 1537228672809129302
  call void @llvm.assume(i1 %i.qq)
  %i.qr = add i64 %.val.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.i.i.epil ; 2 uses
  %i.qs = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i, label %.preheader.i.i.i.i.i.epil, !llvm.loop !2880

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.epil, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa
  %.lcssa = phi i64 [ %i.qm, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa ], [ %i.qr, %.preheader.i.i.i.i.i.epil ]
  %i.qt = trunc i64 %.lcssa to i16
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i, %bb.ea
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ 0, %bb.ea ], [ %i.qt, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.qu = icmp ult i64 %i.pu, 384307168202282326
  call void @llvm.assume(i1 %i.qu)
  %i.qv = trunc i64 %i.pu to i16                  ; 2 uses
  %i.qw = load <2 x i16>, ptr %i.oi, align 8, !alias.scope !3079, !noalias !3080
  %i.qx = insertelement <2 x i16> poison, i16 %.sroa.0.0.i.i.i.i.i.i, i64 0
  %i.qy = insertelement <2 x i16> %i.qx, i16 %i.qv, i64 1
  %i.qz = call <2 x i16> @llvm.umax.v2i16(<2 x i16> %i.qw, <2 x i16> %i.qy)
  store <2 x i16> %i.qz, ptr %i.oi, align 8, !alias.scope !3079, !noalias !3080
  %i.ra = insertelement <4 x i16> <i16 1, i16 poison, i16 poison, i16 0>, i16 %.sroa.0.0.i.i.i.i.i.i, i64 1
  %i.rb = insertelement <4 x i16> %i.ra, i16 %i.qv, i64 2
  store <4 x i16> %i.rb, ptr %i.oj, align 8, !noalias !3081
  store i64 -1, ptr %i.m, align 8, !noalias !3081
  br label %bb.ec

bb.eb:                                            ; preds = %3
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  %i.rd = load i64, ptr %i.rc, align 8, !alias.scope !3077, !noalias !3078, !noundef !8 ; 2 uses
  %i.re = trunc i64 %i.rd to i16
  %i.rf = load i16, ptr %i.ok, align 4, !alias.scope !3079, !noalias !3080, !noundef !8
  %i.rg = call i16 @llvm.umax.i16(i16 %i.rf, i16 %i.re)
  store i16 %i.rg, ptr %i.ok, align 4, !alias.scope !3079, !noalias !3080
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.ri = load ptr, ptr %i.rh, align 8, !alias.scope !3077, !noalias !3078, !nonnull !8, !noundef !8 ; 2 uses
  %i.rj = getelementptr inbounds nuw [22 x i8], ptr %i.ri, i64 %i.rd
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4O_10MaxBuilder6updates_0EE9from_iterB4Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.ri, ptr noundef nonnull %i.rj)
          to label %.noexc6.i.i.i.i unwind label %bb.dv, !noalias !3051

.noexc6.i.i.i.i:                                  ; preds = %bb.eb
  store i16 0, ptr %i.oj, align 8, !noalias !3081
  br label %bb.ec

bb.ec:                                            ; preds = %.noexc6.i.i.i.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, %.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3081
  invoke void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1E_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q, i16 noundef %.sroa.2.010.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %.noexc7.i.i.i.i unwind label %bb.dv, !noalias !3075

.noexc7.i.i.i.i:                                  ; preds = %bb.ec
  %i.rk = load i64, ptr %i.l, align 8, !range !3084, !alias.scope !3085, !noalias !3081, !noundef !8
  %switch.i.i.i.i.i.i = icmp ugt i64 %i.rk, -3
  br i1 %switch.i.i.i.i.i.i, label %bb.eg, label %bb.ed

bb.ed:                                            ; preds = %.noexc7.i.i.i.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i unwind label %bb.ee, !noalias !3086

bb.ee:                                            ; preds = %bb.ed
  %i.rl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.body.i.i.i.i unwind label %bb.ef, !noalias !3086

bb.ef:                                            ; preds = %bb.ee
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !3086
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ed
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.eg unwind label %bb.dv, !noalias !3075

bb.eg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0392, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !alias.scope !3087, !noalias !3088
  %.sroa.4393.0.copyload = load i64, ptr %.sroa.6357.0..sroa_idx, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  %.sroa.5394.0.copyload = load i64, ptr %.sroa.7362.0..sroa_idx, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  %i.rn = load <4 x i16>, ptr %i.oi, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  %.sroa.10399.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  %i.ro = load ptr, ptr %i.p, align 8, !alias.scope !3091, !noalias !3049, !nonnull !8, !noundef !8
  %i.rp = atomicrmw sub ptr %i.ro, i64 1 release, align 8, !noalias !3092
  %i.rq = icmp eq i64 %i.rp, 1
  br i1 %i.rq, label %bb.eh, label %.noexc172

bb.eh:                                            ; preds = %bb.eg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #35
          to label %.noexc172 unwind label %.loopexit

bb.ei:                                            ; preds = %.thread.i.i.i.i, %bb.dw, %bb.dn
  %i.rr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !3075
  unreachable

.thread.i.i.i.i:                                  ; preds = %bb.dw, %.body.i.i.i.i, %bb.dn, %.thread5.i.i.i.i171
  %.pn4.i.i.i.i166 = phi { ptr, i32 } [ %i.op, %.thread5.i.i.i.i171 ], [ %i.or, %bb.dn ], [ %eh.lpad-body.i.i.i.i, %bb.dw ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %.body162 unwind label %bb.ei, !noalias !3075

.noexc172:                                        ; preds = %bb.eh, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3042
  %i.rs = add i16 %.sroa.2.010.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0356, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0392, i64 32, i1 false), !noalias !3043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0392)
  %i.rt = icmp eq ptr %i.om, %i.ny
  br i1 %i.rt, label %.loopexit432, label %bb.dj

.loopexit432:                                     ; preds = %.noexc172, %bb.di
  %.sroa.6357.1 = phi i64 [ %i.nz, %bb.di ], [ %.sroa.4393.0.copyload, %.noexc172 ]
  %.sroa.7362.1 = phi i64 [ %i.oa, %bb.di ], [ %.sroa.5394.0.copyload, %.noexc172 ]
  %.sroa.12387.1 = phi i64 [ undef, %bb.di ], [ %.sroa.10399.0.copyload, %.noexc172 ]
  %i.ru = phi <4 x i16> [ zeroinitializer, %bb.di ], [ %i.rn, %.noexc172 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0356, i64 32, i1 false), !noalias !3093
  %.sroa.6357.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %.sroa.6357.1, ptr %.sroa.6357.0..sroa_idx360, align 8, !noalias !3093
  %.sroa.7362.0..sroa_idx365 = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 %.sroa.7362.1, ptr %.sroa.7362.0..sroa_idx365, align 8, !noalias !3093
  %.sroa.8367.0..sroa_idx370 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %.sroa.9372.0..sroa_idx375 = getelementptr inbounds nuw i8, ptr %i.aj, i64 50
  %.sroa.10377.0..sroa_idx380 = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %.sroa.11382.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %i.aj, i64 54
  store <4 x i16> %i.ru, ptr %.sroa.8367.0..sroa_idx370, align 8, !noalias !3093
  %.sroa.12387.0..sroa_idx390 = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 2 uses
  store i64 %.sroa.12387.1, ptr %.sroa.12387.0..sroa_idx390, align 8, !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3094
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterB1E_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aj)
          to label %.noexc177 unwind label %bb.ez

.noexc177:                                        ; preds = %.loopexit432
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB11_NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoENCNvMs1_B4j_NtB4j_10MaxBuilder23update_composite_limits0EE9from_iterB4l_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.j)
          to label %.noexc178 unwind label %bb.ez

.noexc178:                                        ; preds = %.noexc177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3094
  store i16 0, ptr %i.i, align 8, !noalias !3094
  %i.rv = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i16 0, ptr %i.rv, align 2, !noalias !3094
  %i.rw = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i16 0, ptr %i.rw, align 4, !noalias !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3094
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 8, i1 noundef zeroext false, i64 noundef 2, i64 noundef 8)
          to label %bb.ek unwind label %bb.ej

.body.i:                                          ; preds = %bb.er, %bb.eo, %bb.ej
  %.pn.i175 = phi { ptr, i32 } [ %lpad.phi.i, %bb.er ], [ %i.rx, %bb.ej ], [ %i.sp, %bb.eo ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #31
          to label %.body179 unwind label %bb.ew

bb.ej:                                            ; preds = %bb.ep, %bb.el, %.noexc178
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ek:                                            ; preds = %.noexc178
  %i.ry = load i64, ptr %i.d, align 8, !range !11, !noalias !3094, !noundef !8
  %i.rz = trunc nuw i64 %i.ry to i1
  %i.sa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.sb = load i64, ptr %i.sa, align 8, !range !30, !noalias !3094, !noundef !8 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.rz, label %bb.el, label %bb.em, !prof !22

bb.el:                                            ; preds = %bb.ek
  %i.sd = load i64, ptr %i.sc, align 8, !noalias !3094
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.sb, i64 %i.sd) #34
          to label %bb.ev unwind label %bb.ej

bb.em:                                            ; preds = %bb.ek
  %i.se = load ptr, ptr %i.sc, align 8, !noalias !3094, !nonnull !8, !noundef !8
  %i.sf = icmp samesign ugt i64 %i.sb, 7
  call void @llvm.assume(i1 %i.sf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3094
  store i64 %i.sb, ptr %i.h, align 8, !noalias !3094
  %i.sg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.se, ptr %i.sg, align 8, !noalias !3094
  %i.sh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.sh, align 8, !noalias !3094
  %i.si = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.sj = load i64, ptr %i.si, align 8, !noalias !3094, !noundef !8 ; 3 uses
  %i.sk = icmp ult i64 %i.sj, 4611686018427387904
  call void @llvm.assume(i1 %i.sk)
  %i.sl = icmp eq i64 %i.sj, 0
  br i1 %i.sl, label %._crit_edge.i, label %.lr.ph.i176

.lr.ph.i176:                                      ; preds = %bb.em
  %i.sm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.en

bb.en:                                            ; preds = %bb.eu, %.lr.ph.i176
  %i.so = phi i64 [ %i.sj, %.lr.ph.i176 ], [ %i.sr, %bb.eu ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3094
  store i64 %i.so, ptr %i.g, align 8, !noalias !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3094
  store ptr %i.aj, ptr %i.f, align 8, !noalias !3094
  store ptr %i.h, ptr %i.sm, align 8, !noalias !3094
  store ptr %i.i, ptr %i.sn, align 8, !noalias !3094
  invoke void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB1I_10MaxBuilder23update_composite_limitss_0EB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.es unwind label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.eu, %bb.em
  %.sroa.0.0.copyload.i = load i48, ptr %i.i, align 8, !noalias !3094 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtBK_3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ep unwind label %bb.eo

bb.eo:                                            ; preds = %._crit_edge.i
  %i.sp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtBR_3ops4drop4Drop4dropB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.eq

bb.ep:                                            ; preds = %._crit_edge.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtBR_3ops4drop4Drop4dropB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEEEB1y_.exit.i unwind label %bb.ej

bb.eq:                                            ; preds = %bb.eo
  %i.sq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_2
begin_hunk_3_@_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables3os23Os2E9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cmap4CmapE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ColrE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal4CpalE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar4FvarE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp4GaspE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef4GdefE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub4GsubE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4head4HeadE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hvar4HvarE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4loca10LocaFormatE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4maxp4MaxpE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4meta4MetaE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar4MvarE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name4NameE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post4PostE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4stat4StatE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4vhea4VheaE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4vvar4VvarE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCscScJTt9VrQp_6fea_rs5parse6source10SourceListE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer13PendingLookupNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders17MarkToBaseBuilderEINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer13PendingLookupNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders17MarkToMarkBuilderEINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer13PendingLookupNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders16MarkToLigBuilderEINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMaptNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer13PendingLookupNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders17CursivePosBuilderEINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1t_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtNtBc_3vec3VecNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders17CaretValueBuilderEENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer13PendingLookupNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders14PairPosBuilderEINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1t_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtNtBc_3vec3VecjEENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1t_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpTTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBE_EINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2l_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtB6_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBz_15NormalizedSpaceENtB6_5Debug3fmtCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar11ValueRecordINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1i_15NormalizedSpaceEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4cpal11ColorRecordINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4cpal11PaletteTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp9GaspRangeINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post7PStringINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar11SegmentMapsINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCshxhuDJfZv4T_6fontbe13orchestration6WorkIdNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name13LangTagRecordINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar19VariationAxisRecordINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsiaiXH4eeXUJ_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCsiaiXH4eeXUJ_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCsiaiXH4eeXUJ_6chrono6offset3utcNtB5_3UtcNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.umax.v2i16(<2 x i16>, <2 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #22

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { cold }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { nounwind }
attributes #34 = { noreturn }
attributes #35 = { noinline }
attributes #36 = { inlinehint }
attributes #37 = { noinline noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!6 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!7 = !{i64 8}
!8 = !{}
!9 = !{i64 -1, i64 -9223372036854775808}
!10 = !{i64 0, i64 3}
!11 = !{i64 0, i64 2}
!12 = !{i8 0, i8 26}
!13 = !{i64 0, i64 13}
!14 = !{i64 0, i64 -9223372036854775806}
!15 = !{i64 1, i64 0}
!16 = !{i16 0, i16 3}
!17 = !{i64 0, i64 37}
!18 = !{i16 0, i16 32}
!19 = !{i64 0, i64 -9223372036854775805}
!20 = !{!"branch_weights", i32 2002, i32 2000}
!21 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{i16 0, i16 2}
!25 = !{i32 0, i32 2}
!26 = !{i32 0, i32 3}
!27 = !{i8 0, i8 2}
!28 = !{i16 1, i16 -32766}
!29 = !{i64 0, i64 8}
!30 = !{i64 0, i64 -9223372036854775807}
!31 = !{i64 0, i64 -9223372036854775808}
!32 = !{i64 0, i64 5}
!33 = !{i64 -1, i64 35}
!34 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!35 = !{i8 0, i8 4}
!36 = distinct !{!36, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8ClassDefINtB5_4IntoBy_E4intoCshxhuDJfZv4T_6fontbe"}
!37 = distinct !{!37, !36, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8ClassDefINtB5_4IntoBy_E4intoCshxhuDJfZv4T_6fontbe: argument 1"}
!38 = distinct !{!38, !36, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8ClassDefINtB5_4IntoBy_E4intoCshxhuDJfZv4T_6fontbe: argument 0"}
!39 = distinct !{!39, !"_RNvXs2_NtCsf3Ta7LF998c_4core7convertNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8ClassDefINtB5_4FromBy_E4fromCshxhuDJfZv4T_6fontbe"}
!40 = distinct !{!40, !39, !"_RNvXs2_NtCsf3Ta7LF998c_4core7convertNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8ClassDefINtB5_4FromBy_E4fromCshxhuDJfZv4T_6fontbe: argument 1"}
!41 = distinct !{!41, !39, !"_RNvXs2_NtCsf3Ta7LF998c_4core7convertNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8ClassDefINtB5_4FromBy_E4fromCshxhuDJfZv4T_6fontbe: argument 0"}
!42 = distinct !{!42, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8ClassDefE3newCshxhuDJfZv4T_6fontbe"}
!43 = distinct !{!43, !42, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8ClassDefE3newCshxhuDJfZv4T_6fontbe: argument 0"}
!44 = !{!41, !40, !38, !37}
!45 = !{!43}
!46 = distinct !{!46, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECshxhuDJfZv4T_6fontbe"}
!47 = distinct !{!47, !46, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span5InnerECshxhuDJfZv4T_6fontbe: argument 0"}
!48 = distinct !{!48, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECshxhuDJfZv4T_6fontbe"}
!49 = distinct !{!49, !48, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6CpVowoi7NE_12tracing_core10dispatcher8DispatchECshxhuDJfZv4T_6fontbe: argument 0"}
!50 = distinct !{!50, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECshxhuDJfZv4T_6fontbe"}
!51 = distinct !{!51, !50, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6CpVowoi7NE_12tracing_core10dispatcher4KindINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECshxhuDJfZv4T_6fontbe: argument 0"}
!52 = distinct !{!52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECshxhuDJfZv4T_6fontbe"}
!53 = distinct !{!53, !52, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECshxhuDJfZv4T_6fontbe: argument 0"}
!54 = distinct !{!54, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!55 = distinct !{!55, !54, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!56 = !{!47}
!57 = !{!49}
!58 = !{!51}
!59 = !{!53}
!60 = !{!55}
!61 = !{!55, !53, !51, !49, !47}
!62 = distinct !{!62, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar4AvarECshxhuDJfZv4T_6fontbe"}
!63 = distinct !{!63, !62, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar4AvarECshxhuDJfZv4T_6fontbe: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base4BaseECshxhuDJfZv4T_6fontbe"}
!66 = distinct !{!66, !65, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base4BaseECshxhuDJfZv4T_6fontbe: argument 0"}
!67 = !{!66}
!68 = distinct !{!68, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5PaintEECshxhuDJfZv4T_6fontbe"}
!69 = distinct !{!69, !68, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5PaintEECshxhuDJfZv4T_6fontbe: argument 0"}
!70 = distinct !{null}
!71 = !{!69}
!72 = distinct !{!72, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout13CoverageTableECshxhuDJfZv4T_6fontbe"}
!73 = distinct !{!73, !72, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout13CoverageTableECshxhuDJfZv4T_6fontbe: argument 0"}
!74 = !{!73}
!75 = distinct !{!75, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations16DeltaSetIndexMapECshxhuDJfZv4T_6fontbe"}
!76 = distinct !{!76, !75, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations16DeltaSetIndexMapECshxhuDJfZv4T_6fontbe: argument 0"}
!77 = !{!76}
!78 = distinct !{!78, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10AttachListECshxhuDJfZv4T_6fontbe"}
!79 = distinct !{!79, !78, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef10AttachListECshxhuDJfZv4T_6fontbe: argument 0"}
!80 = !{!79}
!81 = distinct !{!81, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef12LigCaretListECshxhuDJfZv4T_6fontbe"}
!82 = distinct !{!82, !81, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gdef12LigCaretListECshxhuDJfZv4T_6fontbe: argument 0"}
!83 = !{!82}
!84 = distinct !{!84, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEBF_"}
!85 = distinct !{!85, !84, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEBF_: argument 0"}
!86 = distinct !{!86, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe"}
!87 = distinct !{!87, !86, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe: argument 0"}
!88 = distinct !{!88, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe"}
!89 = distinct !{!89, !88, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe: argument 0"}
!90 = distinct !{!90, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe"}
!91 = distinct !{!91, !90, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe: argument 0"}
!92 = distinct !{!92, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe"}
!93 = distinct !{!93, !92, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe: argument 0"}
!94 = distinct !{!94, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!95 = distinct !{!95, !94, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!96 = !{!85}
!97 = !{!87}
!98 = !{!89}
!99 = !{!91}
!100 = !{!91, !89, !87, !85}
!101 = !{!93}
!102 = !{!95}
!103 = !{!95, !93, !91, !89, !87, !85}
!104 = distinct !{!104, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar4MvarECshxhuDJfZv4T_6fontbe"}
!105 = distinct !{!105, !104, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar4MvarECshxhuDJfZv4T_6fontbe: argument 0"}
!106 = !{!105}
!107 = distinct !{!107, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations18ItemVariationStoreECshxhuDJfZv4T_6fontbe"}
!108 = distinct !{!108, !107, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations18ItemVariationStoreECshxhuDJfZv4T_6fontbe: argument 0"}
!109 = !{!108}
!110 = distinct !{!110, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe"}
!111 = distinct !{!111, !110, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe: argument 0"}
!112 = distinct !{!112, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe"}
!113 = distinct !{!113, !112, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe: argument 0"}
!114 = distinct !{!114, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe"}
!115 = distinct !{!115, !114, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe: argument 0"}
!116 = distinct !{!116, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe"}
!117 = distinct !{!117, !116, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe: argument 0"}
!118 = distinct !{!118, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!119 = distinct !{!119, !118, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!120 = distinct !{!120, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe"}
!121 = distinct !{!121, !120, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe: argument 0"}
!122 = distinct !{!122, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe"}
!123 = distinct !{!123, !122, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECshxhuDJfZv4T_6fontbe: argument 0"}
!124 = distinct !{!124, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe"}
!125 = distinct !{!125, !124, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECshxhuDJfZv4T_6fontbe: argument 0"}
!126 = distinct !{!126, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe"}
!127 = distinct !{!127, !126, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECshxhuDJfZv4T_6fontbe: argument 0"}
!128 = distinct !{!128, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!129 = distinct !{!129, !128, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!130 = !{!111}
!131 = !{!113}
!132 = !{!115}
!133 = !{!115, !113, !111}
!134 = !{!117}
!135 = !{!119}
!136 = !{!119, !117, !115, !113, !111}
!137 = !{!121}
!138 = !{!123}
!139 = !{!125}
!140 = !{!125, !123, !121}
!141 = !{!127}
!142 = !{!129}
!143 = !{!129, !127, !125, !123, !121}
!144 = distinct !{!144, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6WnK4nVnpEz_11write_fonts5error12PackingErrorECshxhuDJfZv4T_6fontbe"}
!145 = distinct !{!145, !144, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6WnK4nVnpEz_11write_fonts5error12PackingErrorECshxhuDJfZv4T_6fontbe: argument 0"}
!146 = distinct !{!146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs6WnK4nVnpEz_11write_fonts5graph5GraphEECshxhuDJfZv4T_6fontbe"}
!147 = distinct !{!147, !146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs6WnK4nVnpEz_11write_fonts5graph5GraphEECshxhuDJfZv4T_6fontbe: argument 0"}
!148 = distinct !{!148, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6WnK4nVnpEz_11write_fonts5graph5GraphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe"}
!149 = distinct !{!149, !148, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs6WnK4nVnpEz_11write_fonts5graph5GraphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe: argument 0"}
!150 = !{!145}
!151 = !{!147}
!152 = !{!149}
!153 = !{!149, !147, !145}
!154 = distinct !{!154, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!155 = distinct !{!155, !154, !"_RNvXs7_NtCseSYDGaa5U8h_7tracing4spanNtB5_4SpanNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!156 = distinct !{!156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe"}
!157 = distinct !{!157, !156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe: argument 0"}
end_hunk_3
