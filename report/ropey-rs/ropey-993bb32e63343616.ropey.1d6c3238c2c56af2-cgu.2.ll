Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.2?download=true
inline.NumInlined: 711
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice14new_with_range:bb.a
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !81, !noundef !5
  %.mask1.i = and i8 %i.hk, -2
  %i.hl = icmp eq i8 %.mask1.i, -88
  br i1 %i.hl, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %.sroa.01396.15.vec.extract = extractelement <16 x i8> %i.gx, i64 15
  %i.hm = add i8 %.sroa.01396.15.vec.extract, 1
  %.sroa.01396.15.vec.insert = insertelement <16 x i8> %i.gx, i8 %i.hm, i64 15
  br label %.thread

.thread:                                          ; preds = %bb.af, %bb.ac, %bb.ad, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.z
  %i.hn = phi <16 x i8> [ %i.gf, %bb.z ], [ %.sroa.01393.14.vec.insert, %bb.ag ], [ %.sroa.01396.15.vec.insert, %bb.aj ], [ %i.gx, %bb.ai ], [ %i.gx, %bb.ah ], [ %i.gx, %bb.af ], [ %i.gx, %bb.ad ], [ %i.gx, %bb.ac ]
  %i.ho = add <16 x i8> %i.hn, %i.fp              ; 2 uses
  %.sroa.01.0.vec.extract.i223 = extractelement <2 x i64> %i.fs, i64 0
  %i.hp = icmp eq i64 %.sroa.01.0.vec.extract.i223, 0
  %.sroa.01.8.vec.extract.i224 = extractelement <2 x i64> %i.fs, i64 1
  %i.hq = icmp eq i64 %.sroa.01.8.vec.extract.i224, 0
  %.sroa.0.0.i225 = select i1 %i.hp, i1 %i.hq, i1 false
  br i1 %.sroa.0.0.i225, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.ak

bb.ak:                                            ; preds = %.thread
  %i.hr = icmp eq <16 x i8> %i.fg, splat (i8 10)
  %.neg1632 = sext <16 x i1> %i.hr to <16 x i8>
  %.neg1633 = shufflevector <16 x i8> %.neg1632, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %.neg1634 = select <16 x i1> %i.fq, <16 x i8> %.neg1633, <16 x i8> zeroinitializer
  %i.hs = add <16 x i8> %i.ho, %.neg1634          ; 4 uses
  %.not1635 = icmp ne i64 %.sroa.15.1.i1221911, 16
  %i.ht = icmp eq i8 %i.fv, 13
  %or.cond2181 = select i1 %.not1635, i1 %i.ht, i1 false
  br i1 %or.cond2181, label %bb.al, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.al:                                            ; preds = %bb.ak
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i1231912, i64 16
  %i.hv = load i8, ptr %i.hu, align 16, !alias.scope !81, !noundef !5
  %i.hw = icmp eq i8 %i.hv, 10
  br i1 %i.hw, label %bb.am, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.am:                                            ; preds = %bb.al
  %.sroa.0.15.vec.extract.i211 = extractelement <16 x i8> %i.hs, i64 15
  %i.hx = add i8 %.sroa.0.15.vec.extract.i211, -1
  %.sroa.0.15.vec.insert.i212 = insertelement <16 x i8> %i.hs, i8 %i.hx, i64 15
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.ak, %bb.al, %bb.am, %.thread
  %.sroa.0725.5.in = phi <16 x i8> [ %i.ho, %.thread ], [ %.sroa.0.15.vec.insert.i212, %bb.am ], [ %i.hs, %bb.al ], [ %i.hs, %bb.ak ]
  %i.hy = add <16 x i8> %.sroa.0725.5.in, %i.fe   ; 2 uses
  %i.hz = add i64 %.sroa.028.0.i1201909, 1        ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 255
  br i1 %i.ia, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.ib = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.hy, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i245 = extractelement <2 x i64> %i.ib, i64 0
  %.sroa.0.8.vec.extract.i246 = extractelement <2 x i64> %i.ib, i64 1
  %i.ic = add i64 %.sroa.0.8.vec.extract.i246, %.sroa.023.1.i1211910
  %i.id = add i64 %i.ic, %.sroa.0.0.vec.extract.i245
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.ie = phi <16 x i8> [ zeroinitializer, %bb.an ], [ %i.hy, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %.sroa.028.1.i124 = phi i64 [ 0, %bb.an ], [ %i.hz, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.023.2.i125 = phi i64 [ %i.id, %bb.an ], [ %.sroa.023.1.i1211910, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %i.if = add nsw i64 %.sroa.15.1.i1221911, -16   ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i1231912, i64 16 ; 2 uses
  %i.ih = icmp ugt i64 %i.if, 15
  br i1 %i.ih, label %.lr.ph1914, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126

_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126: ; preds = %bb.ao, %bb.l
  %.lcssa = phi <16 x i8> [ zeroinitializer, %bb.l ], [ %i.ie, %bb.ao ]
  %.sroa.023.1.i121.lcssa = phi i64 [ %.sroa.023.0.i117, %bb.l ], [ %.sroa.023.2.i125, %bb.ao ]
  %.sroa.15.1.i122.lcssa = phi i64 [ %.sroa.15.0.i118, %bb.l ], [ %i.if, %bb.ao ] ; 6 uses
  %.sroa.0.1.i123.lcssa = phi ptr [ %.sroa.0.0.i119, %bb.l ], [ %i.ig, %bb.ao ] ; 4 uses
  %i.ii = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i247 = extractelement <2 x i64> %i.ii, i64 0
  %.sroa.0.8.vec.extract.i248 = extractelement <2 x i64> %i.ii, i64 1
  %.not1929 = icmp eq i64 %.sroa.15.1.i122.lcssa, 0
  br i1 %.not1929, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit, label %.lr.ph1922

.lr.ph1922:                                       ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126, %bb.aw
  %.sroa.0.0.i1771921 = phi i64 [ %i.jd, %bb.aw ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126 ] ; 5 uses
  %.sroa.012.0.i1761920 = phi i64 [ %.sroa.012.1.i, %bb.aw ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126 ] ; 8 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i123.lcssa, i64 %.sroa.0.0.i1771921 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !82, !noundef !5 ; 3 uses
  %i.il = add i8 %i.ik, -10
  %spec.select.i576 = icmp ult i8 %i.il, 4
  br i1 %spec.select.i576, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph1922
  switch i8 %i.ik, label %bb.aw [
    i8 -62, label %bb.ar
    i8 -30, label %bb.at
  ]

bb.aq:                                            ; preds = %.lr.ph1922
  %i.im = add nuw nsw i64 %.sroa.012.0.i1761920, 1 ; 3 uses
  %i.in = icmp eq i8 %i.ik, 13
  br i1 %i.in, label %bb.ax, label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  %i.io = add nuw nsw i64 %.sroa.0.0.i1771921, 1  ; 2 uses
  %i.ip = icmp samesign ult i64 %i.io, %.sroa.15.1.i122.lcssa
  br i1 %i.ip, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i123.lcssa, i64 %i.io
  %i.ir = load i8, ptr %i.iq, align 1, !alias.scope !82, !noundef !5
  %i.is = icmp eq i8 %i.ir, -123
  %i.it = zext i1 %i.is to i64
  %spec.select1621 = add nuw nsw i64 %.sroa.012.0.i1761920, %i.it
  br label %bb.aw

bb.at:                                            ; preds = %bb.ap
  %i.iu = add nuw nsw i64 %.sroa.0.0.i1771921, 2  ; 2 uses
  %i.iv = icmp samesign ult i64 %i.iu, %.sroa.15.1.i122.lcssa
  br i1 %i.iv, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !82, !noundef !5
  %i.iy = icmp eq i8 %i.ix, -128
  br i1 %i.iy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i123.lcssa, i64 %i.iu
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !82, !noundef !5
  %.mask.i178 = and i8 %i.ja, -2
  %i.jb = icmp eq i8 %.mask.i178, -88
  %i.jc = zext i1 %i.jb to i64
  %spec.select.i = add nuw nsw i64 %.sroa.012.0.i1761920, %i.jc
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %bb.ar, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.at, %bb.aq, %bb.ap
  %.sroa.012.1.i = phi i64 [ %.sroa.012.0.i1761920, %bb.at ], [ %spec.select22.i, %bb.ay ], [ %i.im, %bb.ax ], [ %i.im, %bb.aq ], [ %.sroa.012.0.i1761920, %bb.ar ], [ %.sroa.012.0.i1761920, %bb.ap ], [ %spec.select.i, %bb.av ], [ %.sroa.012.0.i1761920, %bb.au ], [ %spec.select1621, %bb.as ] ; 3 uses
  %i.jd = add nuw nsw i64 %.sroa.0.0.i1771921, 1  ; 2 uses
  %i.je = icmp samesign ult i64 %i.jd, %.sroa.15.1.i122.lcssa
  %i.jf = icmp ult i64 %.sroa.012.1.i, %.sroa.15.1.i122.lcssa
  %or.cond.i = select i1 %i.je, i1 %i.jf, i1 false
  br i1 %or.cond.i, label %.lr.ph1922, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit

bb.ax:                                            ; preds = %bb.aq
  %i.jg = add nuw nsw i64 %.sroa.0.0.i1771921, 1  ; 2 uses
  %i.jh = icmp samesign ult i64 %i.jg, %.sroa.15.1.i122.lcssa
  br i1 %i.jh, label %bb.ay, label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i123.lcssa, i64 %i.jg
  %i.jj = load i8, ptr %i.ji, align 1, !alias.scope !82, !noundef !5
  %i.jk = icmp eq i8 %i.jj, 10
  %spec.select22.i = select i1 %i.jk, i64 %.sroa.012.0.i1761920, i64 %i.im
  br label %bb.aw

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit: ; preds = %bb.aw, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126
  %.sroa.012.0.i176.lcssa = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126 ], [ %.sroa.012.1.i, %bb.aw ]
  %i.jl = add i64 %.sroa.0.8.vec.extract.i248, %.sroa.023.1.i121.lcssa
  %i.jm = add i64 %i.jl, %.sroa.0.0.vec.extract.i247
  %i.jn = add i64 %i.jm, %.sroa.012.0.i176.lcssa
  store ptr null, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aj, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.i, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194
  %.sink2186.a = phi i64 [ 48, %bb.i ], [ 24, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 48, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ 24, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sink2185.a = phi i64 [ %i.ac, %bb.i ], [ %3, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ %.sroa.023.01688, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ %i.nm, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sink2184.a = phi i64 [ 56, %bb.i ], [ 32, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 56, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ 32, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sink2183.a = phi i64 [ %i.ae, %bb.i ], [ %.sroa.0.3.i143, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ %i.aiz, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ %.sroa.0.3.i, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sink2182 = phi i64 [ 64, %bb.i ], [ 40, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 64, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ 40, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sink = phi i64 [ %i.ag, %bb.i ], [ %i.jn, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ %spec.select1624, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ %i.abj, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2186.a
  store i64 %.sink2185.a, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2184.a
  store i64 %.sink2183.a, ptr %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2182
  store i64 %.sink, ptr %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  ret void

.lr.ph:                                           ; preds = %bb.g, %bb.es
  %i.jo = phi ptr [ %i.ajq, %bb.es ], [ %i.o, %bb.g ]
  %.sroa.0.01690 = phi ptr [ %i.ajp, %bb.es ], [ %1, %bb.g ] ; 4 uses
  %.sroa.014.01689 = phi i64 [ %i.ajo, %bb.es ], [ %2, %bb.g ] ; 5 uses
  %.sroa.023.01688 = phi i64 [ %i.ajn, %bb.es ], [ %3, %bb.g ] ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24 ; 2 uses
  %i.jq = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.jp) ; 2 uses
  %i.jr = extractvalue { ptr, i64 } %i.jq, 0      ; 3 uses
  %i.js = extractvalue { ptr, i64 } %i.jq, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jr) ]
  %.idx = shl nuw nsw i64 %i.js, 5
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.idx
  %i.ju = icmp eq i64 %i.js, 0
  br i1 %i.ju, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit

._crit_edge:                                      ; preds = %bb.es, %bb.g
  %.sroa.023.0.lcssa = phi i64 [ %3, %bb.g ], [ %i.ajn, %bb.es ]
  %.sroa.014.0.lcssa = phi i64 [ %2, %bb.g ], [ %i.ajo, %bb.es ] ; 6 uses
  %.lcssa1668 = phi ptr [ %i.o, %bb.g ], [ %i.ajq, %bb.es ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.lcssa1668, i64 24 ; 5 uses
  %i.jw = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.jv) ; 2 uses
  %i.jx = extractvalue { ptr, i64 } %i.jw, 0      ; 6 uses
  %i.jy = extractvalue { ptr, i64 } %i.jw, 1      ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.jz = icmp samesign ult i64 %i.jy, 17
  br i1 %i.jz, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !83
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jx, i64 noundef range(i64 0, -9223372036854775808) %i.jy)
  %i.ka = load ptr, ptr %i.g, align 8, !noalias !83, !nonnull !5, !noundef !5 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !noalias !83, !noundef !5 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !83, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !83, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !83
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kc
  %i.ki = icmp samesign eq i64 %i.kc, 0
  br i1 %i.ki, label %._crit_edge1699, label %.lr.ph1698

bb.bb:                                            ; preds = %._crit_edge
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jx) ]
  %i.kk = icmp samesign eq i64 %i.jy, 0
  br i1 %i.kk, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %.lr.ph2271

.lr.ph1698:                                       ; preds = %bb.ba, %bb.bc
  %.sroa.013.0.i851696 = phi i64 [ %i.kr, %bb.bc ], [ 0, %bb.ba ] ; 2 uses
  %.sroa.020.0.i841695 = phi i64 [ %i.ko, %bb.bc ], [ 0, %bb.ba ]
  %.sroa.027.0.i831694 = phi ptr [ %i.kq, %bb.bc ], [ %i.ka, %bb.ba ] ; 2 uses
  %i.kl = load i8, ptr %.sroa.027.0.i831694, align 1, !noundef !5
  %i.km = icmp sgt i8 %i.kl, -65
  %i.kn = zext i1 %i.km to i64
  %i.ko = add i64 %.sroa.020.0.i841695, %i.kn     ; 3 uses
  %i.kp = icmp ugt i64 %i.ko, %.sroa.014.0.lcssa
  br i1 %i.kp, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph1698
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i831694, i64 1 ; 2 uses
  %i.kr = add nuw i64 %.sroa.013.0.i851696, 1
  %i.ks = icmp eq ptr %i.kq, %i.kh
  br i1 %i.ks, label %._crit_edge1699, label %.lr.ph1698

._crit_edge1699:                                  ; preds = %bb.bc, %bb.ba
  %.sroa.020.0.i84.lcssa = phi i64 [ 0, %bb.ba ], [ %i.ko, %bb.bc ] ; 3 uses
  %i.kt = sub i64 %.sroa.014.0.lcssa, %.sroa.020.0.i84.lcssa
  %i.ku = lshr i64 %i.kt, 4
  %..i577 = call noundef i64 @llvm.umin.i64(i64 %i.ku, i64 %i.kg) ; 2 uses
  %i.kv = and i64 %..i577, 576460752303423484     ; 2 uses
  %.not51.i971702 = icmp eq i64 %i.kv, 0
  br i1 %.not51.i971702, label %._crit_edge1709, label %.lr.ph1708

._crit_edge1709:                                  ; preds = %.lr.ph1708, %._crit_edge1699
  %.sroa.020.1.i95.lcssa = phi i64 [ %.sroa.020.0.i84.lcssa, %._crit_edge1699 ], [ %i.ms, %.lr.ph1708 ] ; 2 uses
  %.sroa.013.1.i96.lcssa = phi i64 [ %i.kc, %._crit_edge1699 ], [ %i.mt, %.lr.ph1708 ] ; 2 uses
  %i.kw = and i64 %..i577, 1152921504606846972    ; 4 uses
  %i.kx = icmp ugt i64 %i.kw, %i.kg
  br i1 %i.kx, label %bb.be, label %bb.bd, !prof !6

bb.bd:                                            ; preds = %._crit_edge1709
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.ke, i64 %i.kg
  %i.kz = icmp samesign eq i64 %i.kw, %i.kg
  br i1 %i.kz, label %._crit_edge1717, label %.lr.ph1716.preheader

.lr.ph1716.preheader:                             ; preds = %bb.bd
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.ke, i64 %i.kw
  br label %.lr.ph1716

bb.be:                                            ; preds = %._crit_edge1709
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.kw, i64 noundef %i.kg, i64 noundef %i.kg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
  unreachable

.lr.ph1716:                                       ; preds = %.lr.ph1716.preheader, %bb.bf
  %.sroa.040.0.i1041714 = phi ptr [ %i.lh, %bb.bf ], [ %i.la, %.lr.ph1716.preheader ] ; 2 uses
  %.sroa.013.2.i1031713 = phi i64 [ %i.li, %bb.bf ], [ %.sroa.013.1.i96.lcssa, %.lr.ph1716.preheader ] ; 2 uses
  %.sroa.020.2.i1021712 = phi i64 [ %i.lg, %bb.bf ], [ %.sroa.020.1.i95.lcssa, %.lr.ph1716.preheader ] ; 2 uses
  %i.lb = load <16 x i8>, ptr %.sroa.040.0.i1041714, align 16
  %i.lc = icmp slt <16 x i8> %i.lb, splat (i8 -64)
  %i.ld = zext <16 x i1> %i.lc to <16 x i8>
  %i.le = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ld, <16 x i8> zeroinitializer)
  %.neg1637 = add i64 %.sroa.020.2.i1021712, 16
  %i.lf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.le)
  %i.lg = sub i64 %.neg1637, %i.lf                ; 3 uses
  %.not52.i105 = icmp ult i64 %i.lg, %.sroa.014.0.lcssa
  br i1 %.not52.i105, label %bb.bf, label %._crit_edge1717

bb.bf:                                            ; preds = %.lr.ph1716
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i1041714, i64 16 ; 2 uses
  %i.li = add i64 %.sroa.013.2.i1031713, 16       ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.ky
  br i1 %i.lj, label %._crit_edge1717, label %.lr.ph1716

._crit_edge1717:                                  ; preds = %bb.bf, %.lr.ph1716, %bb.bd
  %.sroa.020.2.i102.lcssa = phi i64 [ %.sroa.020.1.i95.lcssa, %bb.bd ], [ %.sroa.020.2.i1021712, %.lr.ph1716 ], [ %i.lg, %bb.bf ]
  %.sroa.013.2.i103.lcssa = phi i64 [ %.sroa.013.1.i96.lcssa, %bb.bd ], [ %.sroa.013.2.i1031713, %.lr.ph1716 ], [ %i.li, %bb.bf ] ; 5 uses
  %i.lk = icmp ugt i64 %.sroa.013.2.i103.lcssa, %i.jy
  br i1 %i.lk, label %bb.bh, label %bb.bg, !prof !6

bb.bg:                                            ; preds = %._crit_edge1717
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jy
  %i.lm = icmp samesign eq i64 %.sroa.013.2.i103.lcssa, %i.jy
  br i1 %i.lm, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %.lr.ph1727.preheader

.lr.ph1727.preheader:                             ; preds = %bb.bg
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.sroa.013.2.i103.lcssa
  br label %.lr.ph1727

bb.bh:                                            ; preds = %._crit_edge1717
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i103.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.jy, i64 noundef range(i64 0, -9223372036854775808) %i.jy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

.lr.ph1727:                                       ; preds = %.lr.ph1727.preheader, %bb.bi
  %.sroa.036.0.i1081725 = phi ptr [ %i.lt, %bb.bi ], [ %i.ln, %.lr.ph1727.preheader ] ; 2 uses
  %.sroa.013.3.i1071724 = phi i64 [ %i.lu, %bb.bi ], [ %.sroa.013.2.i103.lcssa, %.lr.ph1727.preheader ] ; 2 uses
  %.sroa.020.3.i1061723 = phi i64 [ %i.lr, %bb.bi ], [ %.sroa.020.2.i102.lcssa, %.lr.ph1727.preheader ]
  %i.lo = load i8, ptr %.sroa.036.0.i1081725, align 1, !alias.scope !83, !noundef !5
  %i.lp = icmp sgt i8 %i.lo, -65
  %i.lq = zext i1 %i.lp to i64
  %i.lr = add i64 %.sroa.020.3.i1061723, %i.lq    ; 2 uses
  %i.ls = icmp ugt i64 %i.lr, %.sroa.014.0.lcssa
  br i1 %i.ls, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph1727
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i1081725, i64 1 ; 2 uses
  %i.lu = add i64 %.sroa.013.3.i1071724, 1
  %i.lv = icmp eq ptr %i.lt, %i.ll
  br i1 %i.lv, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %.lr.ph1727

.lr.ph1708:                                       ; preds = %._crit_edge1699, %.lr.ph1708
  %.sroa.013.1.i961706 = phi i64 [ %i.mt, %.lr.ph1708 ], [ %i.kc, %._crit_edge1699 ]
  %.sroa.020.1.i951705 = phi i64 [ %i.ms, %.lr.ph1708 ], [ %.sroa.020.0.i84.lcssa, %._crit_edge1699 ]
  %.sroa.030.0.i941704 = phi ptr [ %i.lw, %.lr.ph1708 ], [ %i.ke, %._crit_edge1699 ] ; 5 uses
  %.sroa.5.0.i931703 = phi i64 [ %i.lx, %.lr.ph1708 ], [ %i.kv, %._crit_edge1699 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i941704, i64 64
  %i.lx = add i64 %.sroa.5.0.i931703, -4          ; 2 uses
  %i.ly = load <16 x i8>, ptr %.sroa.030.0.i941704, align 16
  %i.lz = icmp slt <16 x i8> %i.ly, splat (i8 -64)
  %i.ma = zext <16 x i1> %i.lz to <16 x i8>
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i941704, i64 16
  %i.mc = load <16 x i8>, ptr %i.mb, align 16
  %i.md = icmp slt <16 x i8> %i.mc, splat (i8 -64)
  %i.me = zext <16 x i1> %i.md to <16 x i8>
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i941704, i64 32
  %i.mg = load <16 x i8>, ptr %i.mf, align 16
  %i.mh = icmp slt <16 x i8> %i.mg, splat (i8 -64)
  %i.mi = zext <16 x i1> %i.mh to <16 x i8>
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i941704, i64 48
  %i.mk = load <16 x i8>, ptr %i.mj, align 16
  %i.ml = icmp slt <16 x i8> %i.mk, splat (i8 -64)
  %i.mm = zext <16 x i1> %i.ml to <16 x i8>
  %i.mn = add nuw nsw <16 x i8> %i.me, %i.ma
  %i.mo = add nuw nsw <16 x i8> %i.mn, %i.mi
  %i.mp = add nuw nsw <16 x i8> %i.mo, %i.mm
  %i.mq = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.mp, <16 x i8> zeroinitializer)
  %.neg1636 = add i64 %.sroa.020.1.i951705, 64
  %i.mr = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.mq)
  %i.ms = sub i64 %.neg1636, %i.mr                ; 2 uses
  %i.mt = add i64 %.sroa.013.1.i961706, 64        ; 2 uses
  %.not51.i97 = icmp eq i64 %i.lx, 0
  br i1 %.not51.i97, label %._crit_edge1709, label %.lr.ph1708

bb.bj:                                            ; preds = %.lr.ph2271
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0654.02268, i64 1 ; 2 uses
  %i.mv = add nuw nsw i64 %.sroa.8656.02267, 1
  %i.mw = icmp eq ptr %i.mu, %i.kj
  br i1 %i.mw, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %.lr.ph2271

.lr.ph2271:                                       ; preds = %bb.bb, %bb.bj
  %.sroa.07.0.i1112269 = phi i64 [ %i.na, %bb.bj ], [ 0, %bb.bb ]
  %.sroa.0654.02268 = phi ptr [ %i.mu, %bb.bj ], [ %i.jx, %bb.bb ] ; 2 uses
  %.sroa.8656.02267 = phi i64 [ %i.mv, %bb.bj ], [ 0, %bb.bb ] ; 2 uses
  %i.mx = load i8, ptr %.sroa.0654.02268, align 1, !noundef !5
  %i.my = icmp sgt i8 %i.mx, -65
  %i.mz = zext i1 %i.my to i64
  %i.na = add i64 %.sroa.07.0.i1112269, %i.mz     ; 2 uses
  %i.nb = icmp ugt i64 %i.na, %.sroa.014.0.lcssa
  br i1 %i.nb, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %bb.bj

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113: ; preds = %.lr.ph1698, %.lr.ph1727, %bb.bi, %bb.bj, %.lr.ph2271, %bb.bb, %bb.bg
  %.sroa.0.0.i86 = phi i64 [ %i.jy, %bb.bg ], [ %i.jy, %bb.bb ], [ %i.jy, %bb.bi ], [ %.sroa.8656.02267, %.lr.ph2271 ], [ %i.jy, %bb.bj ], [ %.sroa.013.3.i1071724, %.lr.ph1727 ], [ %.sroa.013.0.i851696, %.lr.ph1698 ] ; 23 uses
  %i.nc = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.jv) ; 2 uses
  %i.nd = extractvalue { ptr, i64 } %i.nc, 0      ; 7 uses
  %i.ne = extractvalue { ptr, i64 } %i.nc, 1      ; 9 uses
  %i.nf = icmp eq i64 %.sroa.0.0.i86, 0           ; 4 uses
  br i1 %i.nf, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113
  %.not.i579 = icmp ult i64 %.sroa.0.0.i86, %i.ne
  br i1 %.not.i579, label %bb.bl, label %.split.i

.split.i:                                         ; preds = %bb.bk
  %i.ng = icmp ne i64 %.sroa.0.0.i86, %i.ne
  %.not79 = icmp eq ptr %i.nd, null
  %or.cond2188 = select i1 %i.ng, i1 true, i1 %.not79, !prof !84
  br i1 %or.cond2188, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2106, !prof !84

bb.bl:                                            ; preds = %bb.bk
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.sroa.0.0.i86
  %i.ni = load i8, ptr %i.nh, align 1, !alias.scope !85, !noundef !5
  %i.nj = icmp sgt i8 %i.ni, -65
  br i1 %i.nj, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2106, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113
  %.not79.old = icmp eq ptr %i.nd, null
  br i1 %.not79.old, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2106, !prof !86

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2106: ; preds = %bb.bl, %.split.i, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.nk = sub i64 %i.ne, %.sroa.0.0.i86           ; 8 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.sroa.0.0.i86 ; 3 uses
  %i.nm = sub i64 %.sroa.023.0.lcssa, %.sroa.014.0.lcssa ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.nn = icmp samesign ult i64 %i.nk, 17
  br i1 %i.nn, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !87
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nl, i64 noundef range(i64 0, -9223372036854775808) %i.nk)
  %i.no = load ptr, ptr %i.h, align 8, !noalias !87, !nonnull !5, !noundef !5 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !noalias !87, !noundef !5 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !noalias !87, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.h, i64 24
end_hunk_0
