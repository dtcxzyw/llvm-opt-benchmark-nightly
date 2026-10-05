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
  %eh.lpad-body252 = phi { ptr, i32 } [ %i.kp, %bb.cj ], [ %i.ip, %bb.bx ], [ %lpad.loopexit500, %.loopexit498 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp499 ] ; 2 uses
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
  %storemerge.i = phi i64 [ %.sroa.4.0.i, %bb.cg ], [ %i.ji, %bb.cb ] ; 5 uses
  %.sroa.8.0.extract.shift.i = lshr i64 %storemerge.i, 32 ; 2 uses
  %.sroa.10.0.extract.shift.i = lshr i64 %storemerge.i, 48
  %i.jj = bitcast i64 %storemerge.i to <4 x i16>
  %i.jk = shufflevector <4 x i16> %i.jj, <4 x i16> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  br i1 %i.fm, label %_RNvNtCshxhuDJfZv4T_6fontbe4colr13quantize_bbox.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %3 = bitcast i64 %storemerge.i to <4 x i16>
  %4 = shufflevector <4 x i16> %3, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.8.0.extract.trunc.i = trunc i64 %.sroa.8.0.extract.shift.i to i16
  %i.jl = srem <2 x i16> %i.jk, %i.fq
  %i.jm = sub nsw <2 x i16> %4, %i.jl
  %i.jn = sext i16 %.sroa.8.0.extract.trunc.i to i32
  %i.jo = add nsw i32 %i.fo, %i.jn                ; 2 uses
  %i.jp = srem i32 %i.jo, %i.fn
  %i.jq = sub nsw i32 %i.jo, %i.jp
  %i.jr = zext i32 %i.jq to i64
  %i.js = ashr i64 %storemerge.i, 48
  %i.jt = trunc nsw i64 %i.js to i32
  %i.ju = add nsw i32 %i.fo, %i.jt                ; 2 uses
  %i.jv = srem i32 %i.ju, %i.fn
  %i.jw = sub nsw i32 %i.ju, %i.jv
  %i.jx = zext i32 %i.jw to i64
  br label %_RNvNtCshxhuDJfZv4T_6fontbe4colr13quantize_bbox.exit.i

_RNvNtCshxhuDJfZv4T_6fontbe4colr13quantize_bbox.exit.i: ; preds = %bb.cf, %bb.ce
  %.sroa.5.0.i.i = phi i64 [ %i.jx, %bb.cf ], [ %.sroa.10.0.extract.shift.i, %bb.ce ]
  %.sroa.4.0.i.i = phi i64 [ %i.jr, %bb.cf ], [ %.sroa.8.0.extract.shift.i, %bb.ce ] ; 2 uses
  %i.jy = phi <2 x i16> [ %i.jm, %bb.cf ], [ %i.jk, %bb.ce ] ; 4 uses
  %.sroa.513.0.extract.trunc.i = trunc i64 %.sroa.4.0.i.i to i16
  %.sroa.614.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i to i16 ; 2 uses
  %i.jz = load i64, ptr %i.eu, align 8, !alias.scope !2432, !noalias !2433, !noundef !8 ; 5 uses
  %.not.i253 = icmp eq i64 %i.jz, 0
  br i1 %.not.i253, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i, label %bb.ch

bb.cg:                                            ; preds = %bb.cd, %bb.cb
  %.sink.i = phi i64 [ 56, %bb.cd ], [ 48, %bb.cb ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.sink.i
  %.sroa.4.0.i = load i64, ptr %i.ka, align 8, !alias.scope !2433, !noalias !2432
  br label %bb.ce

bb.ch:                                            ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr13quantize_bbox.exit.i
  %i.kb = load ptr, ptr %i.et, align 8, !alias.scope !2432, !noalias !2433, !nonnull !8, !noundef !8
  %i.kc = getelementptr [16 x i8], ptr %i.kb, i64 %i.jz ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 -6     ; 2 uses
  %i.ke = load i16, ptr %i.kd, align 2, !noalias !2434, !noundef !8
  %i.kf = zext i16 %i.ke to i32
  %i.kg = add nuw nsw i32 %i.kf, 1
  %i.kh = trunc i64 %i.ja to i32
  %i.ki = and i32 %i.kh, 65535
  %i.kj = icmp eq i32 %i.kg, %i.ki
  br i1 %i.kj, label %bb.ck, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ch, %_RNvNtCshxhuDJfZv4T_6fontbe4colr13quantize_bbox.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2434
  store i16 0, ptr %i.c, align 4, !noalias !2434
  %i.kk = extractelement <2 x i16> %i.jy, i64 0
  store i16 %i.kk, ptr %.sroa.616.0..sroa_idx.i, align 2, !noalias !2434
  %i.kl = trunc nuw i64 %.sroa.4.0.i.i to i32
  %.sroa.817.sroa.7.0.insert.ext.i = shl i32 %i.kl, 16
  %i.km = extractelement <2 x i16> %i.jy, i64 1
  %.sroa.817.sroa.0.0.insert.ext.i = zext i16 %i.km to i32
  %.sroa.817.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.817.sroa.7.0.insert.ext.i, %.sroa.817.sroa.0.0.insert.ext.i
  store i32 %.sroa.817.sroa.0.0.insert.insert.i, ptr %.sroa.817.0..sroa_idx.i, align 4, !noalias !2434
  store i16 %.sroa.614.0.extract.trunc.i, ptr %.sroa.13.0..sroa_idx.i, align 4, !noalias !2434
  invoke void @_RNvMsE_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB5_4Clip3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, i16 noundef %i.jb, i16 noundef %i.jb, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.c)
          to label %.noexc255 unwind label %.loopexit498

.noexc255:                                        ; preds = %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2434
  call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.kn = load i64, ptr %i.ab, align 8, !range !31, !alias.scope !2437, !noalias !2438, !noundef !8
  %i.ko = icmp eq i64 %i.jz, %i.kn
  br i1 %i.ko, label %bb.ci, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe.exit.i

bb.ci:                                            ; preds = %.noexc255
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8grow_oneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.cj, !noalias !2438

bb.cj:                                            ; preds = %bb.ci
  %i.kp = landingpad { ptr, i32 }
          cleanup
  %.val.i.i254 = load ptr, ptr %i.d, align 8, !alias.scope !2436, !noalias !2439, !nonnull !8, !noundef !8
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i254, i64 noundef 16, i64 noundef 4) #33, !noalias !2438
  br label %.body251

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipE8push_mutCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.ci, %.noexc255
  %i.kq = load ptr, ptr %i.et, align 8, !alias.scope !2437, !noalias !2438, !nonnull !8, !noundef !8
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.kq, i64 %i.jz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kr, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !2433
  %i.ks = add i64 %i.jz, 1
  store i64 %i.ks, ptr %i.eu, align 8, !alias.scope !2437, !noalias !2438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2434
  br label %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit

bb.ck:                                            ; preds = %bb.ch
  %i.kt = getelementptr i8, ptr %i.kc, i64 -16
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !2434, !nonnull !8, !noundef !8 ; 5 uses
  %i.kv = load i16, ptr %i.ku, align 4, !range !24, !alias.scope !2440, !noalias !2441, !noundef !8
  %i.kw = icmp eq i16 %i.kv, 0
  br i1 %i.kw, label %bb.cl, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.cl:                                            ; preds = %bb.ck
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  %i.ky = load i16, ptr %i.kx, align 2, !alias.scope !2440, !noalias !2441, !noundef !8
  %i.kz = extractelement <2 x i16> %i.jy, i64 0
  %i.la = icmp eq i16 %i.ky, %i.kz
  br i1 %i.la, label %bb.cm, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.cm:                                            ; preds = %bb.cl
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.lc = load i16, ptr %i.lb, align 4, !alias.scope !2440, !noalias !2441, !noundef !8
  %i.ld = extractelement <2 x i16> %i.jy, i64 1
  %i.le = icmp eq i16 %i.lc, %i.ld
  br i1 %i.le, label %bb.cn, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.cn:                                            ; preds = %bb.cm
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ku, i64 6
  %i.lg = load i16, ptr %i.lf, align 2, !alias.scope !2440, !noalias !2441, !noundef !8
  %i.lh = icmp eq i16 %i.lg, %.sroa.513.0.extract.trunc.i
  br i1 %i.lh, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.cn
  %i.li = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.lj = load i16, ptr %i.li, align 4, !alias.scope !2440, !noalias !2441, !noundef !8
  %i.lk = icmp eq i16 %i.lj, %.sroa.614.0.extract.trunc.i
  br i1 %i.lk, label %bb.co, label %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread.i

bb.co:                                            ; preds = %_RNvXs7j_NtNtCs6WnK4nVnpEz_11write_fonts6tables4colrNtB6_7ClipBoxNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.i
  store i16 %i.jb, ptr %i.kd, align 2, !noalias !2434
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
  %i.ll = load ptr, ptr %i.u, align 8, !alias.scope !2444, !nonnull !8, !noundef !8
  %i.lm = atomicrmw sub ptr %i.ll, i64 1 release, align 8, !noalias !2444
  %i.ln = icmp eq i64 %i.lm, 1
  br i1 %i.ln, label %bb.cr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259

bb.cr:                                            ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259 unwind label %.loopexit490

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259: ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr18add_or_extend_clip.exit, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit259, %bb.db, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphEECshxhuDJfZv4T_6fontbe.exit280, %bb.ar
  %i.lo = icmp eq ptr %i.fr, %i.fa
  br i1 %i.lo, label %._crit_edge535, label %bb.ap

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit250: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphEECshxhuDJfZv4T_6fontbe.exit272, %bb.cy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphEEB1d_.exit250
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body261.thread unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr4ClipEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.dw

bb.cv:                                            ; preds = %bb.ct
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.cw:                                            ; preds = %bb.ix, %bb.iq, %bb.el, %bb.dj, %bb.bg, %bb.ai, %bb.af, %bb.ab, %.critedge204, %bb.ip, %.thread434, %.critedge203, %.critedge, %.critedge205, %bb.iy, %.thread392, %.body285.thread, %.body281.thread, %.body261.thread, %.thread, %.critedge207.thread401, %bb.ay
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body266

.body266:                                         ; preds = %bb.di, %bb.cw
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

.thread391:                                       ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4colr18colr_v0_compatible.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ls = load ptr, ptr %i.ai, align 8, !nonnull !8, !noundef !8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.lw = load ptr, ptr %i.gc, align 8, !nonnull !8, !noundef !8
  store ptr %i.lw, ptr %i.z, align 8
  invoke fastcc void @_RNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr0(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.lv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.016.0532, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef 1, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae)
          to label %bb.cx unwind label %.loopexit490

bb.cx:                                            ; preds = %.thread391
  %i.lx = load i64, ptr %i.aa, align 8, !range !33, !noundef !8 ; 2 uses
  %.not184 = icmp eq i64 %i.lx, -1
  br i1 %.not184, label %bb.cz, label %bb.cy
end_hunk_0
begin_hunk_1_@_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE4exec:bb.a
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
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 26
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 30
  %i.ok = getelementptr inbounds nuw i8, ptr %i.q, i64 52 ; 2 uses
  %.sroa.6357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %.sroa.7362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  br label %bb.dj

bb.dj:                                            ; preds = %.noexc172, %.lr.ph.i164
  %.sroa.6357.0 = phi i64 [ %i.nz, %.lr.ph.i164 ], [ %.sroa.4393.0.copyload, %.noexc172 ]
  %.sroa.7362.0 = phi i64 [ %i.oa, %.lr.ph.i164 ], [ %.sroa.5394.0.copyload, %.noexc172 ]
  %.sroa.12387.0 = phi i64 [ undef, %.lr.ph.i164 ], [ %.sroa.10399.0.copyload, %.noexc172 ]
  %.sroa.0.011.i = phi ptr [ %i.nu, %.lr.ph.i164 ], [ %i.om, %.noexc172 ] ; 5 uses
  %.sroa.2.010.i = phi i16 [ 0, %.lr.ph.i164 ], [ %i.rx, %.noexc172 ] ; 3 uses
  %i.ol = phi <4 x i16> [ zeroinitializer, %.lr.ph.i164 ], [ %i.rs, %.noexc172 ]
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
          to label %.thread.i.i.i.i unwind label %bb.ek, !noalias !3051

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

bb.dv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i, %bb.ee, %bb.ed, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169, %bb.dp
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.eg, %bb.dv
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.pd, %bb.dv ], [ %i.rq, %bb.eg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3071)
  call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  %i.pe = load ptr, ptr %i.p, align 8, !alias.scope !3073, !noalias !3049, !nonnull !8, !noundef !8
  %i.pf = atomicrmw sub ptr %i.pe, i64 1 release, align 8, !noalias !3074
  %i.pg = icmp eq i64 %i.pf, 1
  br i1 %i.pg, label %bb.dw, label %.thread.i.i.i.i

bb.dw:                                            ; preds = %.body.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #35
          to label %.thread.i.i.i.i unwind label %bb.ek, !noalias !3075

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
    i64 1, label %bb.ea
    i64 2, label %bb.dy
  ]

bb.dx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  unreachable

bb.dy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  br label %bb.ea

bb.dz:                                            ; preds = %bb.eb, %bb.ea
  %.sroa.78.0.i.i.i.i.i = phi i16 [ %i.px, %bb.eb ], [ %.sroa.7.0.extract.trunc.i.i.i.i.i, %bb.ea ]
  %.sroa.67.0.i.i.i.i.i = phi i16 [ %i.pw, %bb.eb ], [ %.sroa.6.0.extract.trunc.i.i.i.i.i, %bb.ea ]
  %i.po = phi <2 x i16> [ %i.pv, %bb.eb ], [ %i.pt, %bb.ea ]
  store i16 1, ptr %i.oh, align 2, !alias.scope !3079, !noalias !3080
  store <2 x i16> %i.po, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3079, !noalias !3080
  store i16 %.sroa.67.0.i.i.i.i.i, ptr %.sroa.712.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !3079, !noalias !3080
  store i16 %.sroa.78.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !3079, !noalias !3080
  %i.pp = icmp eq i64 %i.pn, 2
  br i1 %i.pp, label %bb.ed, label %bb.ec

bb.ea:                                            ; preds = %bb.dy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  %.sink.i.i.i.i.i = phi i64 [ 56, %bb.dy ], [ 48, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167 ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.sink.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i = load i64, ptr %i.pq, align 8, !alias.scope !3077, !noalias !3078 ; 4 uses
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.6.0.extract.shift.i.i.i.i.i to i16 ; 2 uses
  %.sroa.7.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 48
  %.sroa.7.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.7.0.extract.shift.i.i.i.i.i to i16 ; 2 uses
  %.sroa.09.0.copyload.i.i.i.i.i = load i16, ptr %i.oh, align 2, !alias.scope !3079, !noalias !3080
  %i.pr = trunc i16 %.sroa.09.0.copyload.i.i.i.i.i to i1
  %i.ps = bitcast i64 %.sroa.5.0.i.i.i.i.i to <4 x i16>
  %i.pt = shufflevector <4 x i16> %i.ps, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  br i1 %i.pr, label %bb.eb, label %bb.dz

bb.eb:                                            ; preds = %bb.ea
  %3 = bitcast i64 %.sroa.5.0.i.i.i.i.i to <4 x i16>
  %4 = shufflevector <4 x i16> %3, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.8.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !3079, !noalias !3080
  %.sroa.712.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.712.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !3079, !noalias !3080
  %i.pu = load <2 x i16>, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3079, !noalias !3080
  %i.pv = call <2 x i16> @llvm.smin.v2i16(<2 x i16> %i.pu, <2 x i16> %4)
  %i.pw = call i16 @llvm.smax.i16(i16 %.sroa.712.0.copyload.i.i.i.i.i, i16 %.sroa.6.0.extract.trunc.i.i.i.i.i)
  %i.px = call i16 @llvm.smax.i16(i16 %.sroa.8.0.copyload.i.i.i.i.i, i16 %.sroa.7.0.extract.trunc.i.i.i.i.i)
  br label %bb.dz

.thread.i.i.i.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  store <4 x i16> <i16 1, i16 0, i16 0, i16 0>, ptr %i.oj, align 8, !noalias !3081
  store i64 -1, ptr %i.m, align 8, !noalias !3081
  br label %bb.ee

bb.ec:                                            ; preds = %bb.dz
  %i.py = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pz = load ptr, ptr %i.py, align 8, !alias.scope !3077, !noalias !3078, !nonnull !8, !noundef !8 ; 5 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.qb = load i64, ptr %i.qa, align 8, !alias.scope !3077, !noalias !3078, !noundef !8 ; 6 uses
  %i.qc = icmp eq i64 %i.qb, 0
  br i1 %i.qc, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.ec
  %xtraiter = and i64 %i.qb, 3                    ; 3 uses
  %i.qd = icmp ult i64 %i.qb, 4
  br i1 %i.qd, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.preheader.new:               ; preds = %.preheader.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.qb, -4
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.qu, %.preheader.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.qt, %.preheader.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i ]
  %i.qe = getelementptr inbounds nuw [24 x i8], ptr %i.pz, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qf = getelementptr i8, ptr %i.qe, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.qf, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qg = icmp ult i64 %.val.i.i.i.i.i.i, 1537228672809129302
  call void @llvm.assume(i1 %i.qg)
  %i.qh = add i64 %.val.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i
  %i.qi = getelementptr inbounds nuw [24 x i8], ptr %i.pz, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qj = getelementptr i8, ptr %i.qi, i64 40
  %.val.i.i.i.i.i.i.1 = load i64, ptr %i.qj, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qk = icmp ult i64 %.val.i.i.i.i.i.i.1, 1537228672809129302
  call void @llvm.assume(i1 %i.qk)
  %i.ql = add i64 %.val.i.i.i.i.i.i.1, %i.qh
  %i.qm = getelementptr inbounds nuw [24 x i8], ptr %i.pz, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qn = getelementptr i8, ptr %i.qm, i64 64
  %.val.i.i.i.i.i.i.2 = load i64, ptr %i.qn, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qo = icmp ult i64 %.val.i.i.i.i.i.i.2, 1537228672809129302
  call void @llvm.assume(i1 %i.qo)
  %i.qp = add i64 %.val.i.i.i.i.i.i.2, %i.ql
  %i.qq = getelementptr inbounds nuw [24 x i8], ptr %i.pz, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qr = getelementptr i8, ptr %i.qq, i64 88
  %.val.i.i.i.i.i.i.3 = load i64, ptr %i.qr, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qs = icmp ult i64 %.val.i.i.i.i.i.i.3, 1537228672809129302
  call void @llvm.assume(i1 %i.qs)
  %i.qt = add i64 %.val.i.i.i.i.i.i.3, %i.qp      ; 3 uses
  %i.qu = add nuw i64 %.sroa.04.0.i.i.i.i.i.i, 4  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i, label %.preheader.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.epil.preheader:              ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.qu, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.qt, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod562 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod562)
  br label %.preheader.i.i.i.i.i.epil

.preheader.i.i.i.i.i.epil:                        ; preds = %.preheader.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.epil = phi i64 [ %i.qz, %.preheader.i.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.epil = phi i64 [ %i.qy, %.preheader.i.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.epil.preheader ]
  %i.qv = getelementptr inbounds nuw [24 x i8], ptr %i.pz, i64 %.sroa.04.0.i.i.i.i.i.i.epil
  %i.qw = getelementptr i8, ptr %i.qv, i64 16
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.qw, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qx = icmp ult i64 %.val.i.i.i.i.i.i.epil, 1537228672809129302
  call void @llvm.assume(i1 %i.qx)
  %i.qy = add i64 %.val.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.i.i.epil ; 2 uses
  %i.qz = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i, label %.preheader.i.i.i.i.i.epil, !llvm.loop !2880

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.epil, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa
  %.lcssa = phi i64 [ %i.qt, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa ], [ %i.qy, %.preheader.i.i.i.i.i.epil ]
  %i.ra = trunc i64 %.lcssa to i16
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i, %bb.ec
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ 0, %bb.ec ], [ %i.ra, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.rb = icmp ult i64 %i.qb, 384307168202282326
  call void @llvm.assume(i1 %i.rb)
  %i.rc = trunc i64 %i.qb to i16                  ; 2 uses
  %i.rd = load <2 x i16>, ptr %i.oi, align 8, !alias.scope !3079, !noalias !3080
  %i.re = insertelement <2 x i16> poison, i16 %.sroa.0.0.i.i.i.i.i.i, i64 0
  %i.rf = insertelement <2 x i16> %i.re, i16 %i.rc, i64 1
  %i.rg = call <2 x i16> @llvm.umax.v2i16(<2 x i16> %i.rd, <2 x i16> %i.rf)
  store <2 x i16> %i.rg, ptr %i.oi, align 8, !alias.scope !3079, !noalias !3080
  store i16 1, ptr %i.oj, align 8, !noalias !3081
  store i16 %.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 2, !noalias !3081
  store i16 %i.rc, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 4, !noalias !3081
  store i16 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 2, !noalias !3081
  store i64 -1, ptr %i.m, align 8, !noalias !3081
  br label %bb.ee

bb.ed:                                            ; preds = %bb.dz
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  %i.ri = load i64, ptr %i.rh, align 8, !alias.scope !3077, !noalias !3078, !noundef !8 ; 2 uses
  %i.rj = trunc i64 %i.ri to i16
  %i.rk = load i16, ptr %i.ok, align 4, !alias.scope !3079, !noalias !3080, !noundef !8
  %i.rl = call i16 @llvm.umax.i16(i16 %i.rk, i16 %i.rj)
  store i16 %i.rl, ptr %i.ok, align 4, !alias.scope !3079, !noalias !3080
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.rn = load ptr, ptr %i.rm, align 8, !alias.scope !3077, !noalias !3078, !nonnull !8, !noundef !8 ; 2 uses
  %i.ro = getelementptr inbounds nuw [22 x i8], ptr %i.rn, i64 %i.ri
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4O_10MaxBuilder6updates_0EE9from_iterB4Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.rn, ptr noundef nonnull %i.ro)
          to label %.noexc6.i.i.i.i unwind label %bb.dv, !noalias !3051

.noexc6.i.i.i.i:                                  ; preds = %bb.ed
  store i16 0, ptr %i.oj, align 8, !noalias !3081
  br label %bb.ee

bb.ee:                                            ; preds = %.noexc6.i.i.i.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, %.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3081
  invoke void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1E_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q, i16 noundef %.sroa.2.010.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %.noexc7.i.i.i.i unwind label %bb.dv, !noalias !3075

.noexc7.i.i.i.i:                                  ; preds = %bb.ee
  %i.rp = load i64, ptr %i.l, align 8, !range !3084, !alias.scope !3085, !noalias !3081, !noundef !8
  %switch.i.i.i.i.i.i = icmp ugt i64 %i.rp, -3
  br i1 %switch.i.i.i.i.i.i, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %.noexc7.i.i.i.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i unwind label %bb.eg, !noalias !3086

bb.eg:                                            ; preds = %bb.ef
  %i.rq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.body.i.i.i.i unwind label %bb.eh, !noalias !3086

bb.eh:                                            ; preds = %bb.eg
  %i.rr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !3086
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ef
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.ei unwind label %bb.dv, !noalias !3075

bb.ei:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0392, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !alias.scope !3087, !noalias !3088
  %.sroa.4393.0.copyload = load i64, ptr %.sroa.6357.0..sroa_idx, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  %.sroa.5394.0.copyload = load i64, ptr %.sroa.7362.0..sroa_idx, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  %i.rs = load <4 x i16>, ptr %i.oi, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  %.sroa.10399.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  %i.rt = load ptr, ptr %i.p, align 8, !alias.scope !3091, !noalias !3049, !nonnull !8, !noundef !8
  %i.ru = atomicrmw sub ptr %i.rt, i64 1 release, align 8, !noalias !3092
  %i.rv = icmp eq i64 %i.ru, 1
  br i1 %i.rv, label %bb.ej, label %.noexc172

bb.ej:                                            ; preds = %bb.ei
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #35
          to label %.noexc172 unwind label %.loopexit

bb.ek:                                            ; preds = %.thread.i.i.i.i, %bb.dw, %bb.dn
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !3075
  unreachable

.thread.i.i.i.i:                                  ; preds = %bb.dw, %.body.i.i.i.i, %bb.dn, %.thread5.i.i.i.i171
  %.pn4.i.i.i.i166 = phi { ptr, i32 } [ %i.op, %.thread5.i.i.i.i171 ], [ %i.or, %bb.dn ], [ %eh.lpad-body.i.i.i.i, %bb.dw ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %.body162 unwind label %bb.ek, !noalias !3075

.noexc172:                                        ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3042
  %i.rx = add i16 %.sroa.2.010.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0356, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0392, i64 32, i1 false), !noalias !3043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0392)
  %i.ry = icmp eq ptr %i.om, %i.ny
  br i1 %i.ry, label %.loopexit432, label %bb.dj

.loopexit432:                                     ; preds = %.noexc172, %bb.di
  %.sroa.6357.1 = phi i64 [ %i.nz, %bb.di ], [ %.sroa.4393.0.copyload, %.noexc172 ]
  %.sroa.7362.1 = phi i64 [ %i.oa, %bb.di ], [ %.sroa.5394.0.copyload, %.noexc172 ]
  %.sroa.12387.1 = phi i64 [ undef, %bb.di ], [ %.sroa.10399.0.copyload, %.noexc172 ]
  %i.rz = phi <4 x i16> [ zeroinitializer, %bb.di ], [ %i.rs, %.noexc172 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0356, i64 32, i1 false), !noalias !3093
end_hunk_1
