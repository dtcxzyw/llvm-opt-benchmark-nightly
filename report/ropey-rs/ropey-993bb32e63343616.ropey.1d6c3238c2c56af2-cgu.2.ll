Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.2?download=true
inline.NumInlined: 711
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice14new_with_range:bb.a
  %i.ht = icmp eq i8 %i.fv, 13
  %or.cond2189 = select i1 %.not1635, i1 %i.ht, i1 false
  br i1 %or.cond2189, label %bb.am, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.am:                                            ; preds = %bb.al
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i1231912, i64 16
  %i.hv = load i8, ptr %i.hu, align 16, !alias.scope !41, !noalias !44, !noundef !8
  %i.hw = icmp eq i8 %i.hv, 10
  br i1 %i.hw, label %bb.an, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.an:                                            ; preds = %bb.am
  %.sroa.0.15.vec.extract.i211 = extractelement <16 x i8> %i.hs, i64 15
  %i.hx = add i8 %.sroa.0.15.vec.extract.i211, -1
  %.sroa.0.15.vec.insert.i212 = insertelement <16 x i8> %i.hs, i8 %i.hx, i64 15
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.al, %bb.am, %bb.an, %.thread
  %.sroa.0725.5.in = phi <16 x i8> [ %i.ho, %.thread ], [ %.sroa.0.15.vec.insert.i212, %bb.an ], [ %i.hs, %bb.am ], [ %i.hs, %bb.al ]
  %i.hy = add <16 x i8> %.sroa.0725.5.in, %i.fe   ; 2 uses
  %i.hz = add i64 %.sroa.028.0.i1201909, 1        ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 255
  br i1 %i.ia, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.ib = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.hy, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i245 = extractelement <2 x i64> %i.ib, i64 0
  %.sroa.0.8.vec.extract.i246 = extractelement <2 x i64> %i.ib, i64 1
  %i.ic = add i64 %.sroa.0.8.vec.extract.i246, %.sroa.023.1.i1211910
  %i.id = add i64 %i.ic, %.sroa.0.0.vec.extract.i245
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.ie = phi <16 x i8> [ zeroinitializer, %bb.ao ], [ %i.hy, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %.sroa.028.1.i124 = phi i64 [ 0, %bb.ao ], [ %i.hz, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.023.2.i125 = phi i64 [ %i.id, %bb.ao ], [ %.sroa.023.1.i1211910, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %i.if = add nsw i64 %.sroa.15.1.i1221911, -16   ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i1231912, i64 16 ; 2 uses
  %i.ih = icmp ugt i64 %i.if, 15
  br i1 %i.ih, label %.lr.ph1914, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126

_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126: ; preds = %bb.ap, %bb.l
  %.lcssa = phi <16 x i8> [ zeroinitializer, %bb.l ], [ %i.ie, %bb.ap ]
  %.sroa.023.1.i121.lcssa = phi i64 [ %.sroa.023.0.i117, %bb.l ], [ %.sroa.023.2.i125, %bb.ap ]
  %.sroa.15.1.i122.lcssa = phi i64 [ %.sroa.15.0.i118, %bb.l ], [ %i.if, %bb.ap ] ; 6 uses
  %.sroa.0.1.i123.lcssa = phi ptr [ %.sroa.0.0.i119, %bb.l ], [ %i.ig, %bb.ap ] ; 4 uses
  %i.ii = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i247 = extractelement <2 x i64> %i.ii, i64 0
  %.sroa.0.8.vec.extract.i248 = extractelement <2 x i64> %i.ii, i64 1
  %.not1929 = icmp eq i64 %.sroa.15.1.i122.lcssa, 0
  br i1 %.not1929, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit, label %.lr.ph1922

.lr.ph1922:                                       ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126, %bb.ax
  %.sroa.0.0.i1771921 = phi i64 [ %i.jd, %bb.ax ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126 ] ; 5 uses
  %.sroa.012.0.i1761920 = phi i64 [ %.sroa.012.1.i, %bb.ax ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126 ] ; 8 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i123.lcssa, i64 %.sroa.0.0.i1771921 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !46, !noundef !8 ; 3 uses
  %i.il = add i8 %i.ik, -10
  %spec.select.i576 = icmp ult i8 %i.il, 4
  br i1 %spec.select.i576, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph1922
  switch i8 %i.ik, label %bb.ax [
    i8 -62, label %bb.as
    i8 -30, label %bb.au
  ]

bb.ar:                                            ; preds = %.lr.ph1922
  %i.im = add nuw nsw i64 %.sroa.012.0.i1761920, 1 ; 3 uses
  %i.in = icmp eq i8 %i.ik, 13
  br i1 %i.in, label %bb.ay, label %bb.ax

bb.as:                                            ; preds = %bb.aq
  %i.io = add nuw nsw i64 %.sroa.0.0.i1771921, 1  ; 2 uses
  %i.ip = icmp samesign ult i64 %i.io, %.sroa.15.1.i122.lcssa
  br i1 %i.ip, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i123.lcssa, i64 %i.io
  %i.ir = load i8, ptr %i.iq, align 1, !alias.scope !46, !noundef !8
  %i.is = icmp eq i8 %i.ir, -123
  %i.it = zext i1 %i.is to i64
  %spec.select1621 = add nuw nsw i64 %.sroa.012.0.i1761920, %i.it
  br label %bb.ax

bb.au:                                            ; preds = %bb.aq
  %i.iu = add nuw i64 %.sroa.0.0.i1771921, 2      ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %.sroa.15.1.i122.lcssa
  br i1 %i.iv, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !46, !noundef !8
  %i.iy = icmp eq i8 %i.ix, -128
  br i1 %i.iy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i123.lcssa, i64 %i.iu
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !46, !noundef !8
  %.mask.i178 = and i8 %i.ja, -2
  %i.jb = icmp eq i8 %.mask.i178, -88
  %i.jc = zext i1 %i.jb to i64
  %spec.select.i = add nuw nsw i64 %.sroa.012.0.i1761920, %i.jc
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.as, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.au, %bb.ar, %bb.aq
  %.sroa.012.1.i = phi i64 [ %.sroa.012.0.i1761920, %bb.au ], [ %spec.select22.i, %bb.az ], [ %i.im, %bb.ay ], [ %i.im, %bb.ar ], [ %.sroa.012.0.i1761920, %bb.as ], [ %.sroa.012.0.i1761920, %bb.aq ], [ %spec.select.i, %bb.aw ], [ %.sroa.012.0.i1761920, %bb.av ], [ %spec.select1621, %bb.at ] ; 3 uses
  %i.jd = add nuw nsw i64 %.sroa.0.0.i1771921, 1  ; 2 uses
  %i.je = icmp samesign ult i64 %i.jd, %.sroa.15.1.i122.lcssa
  %i.jf = icmp ult i64 %.sroa.012.1.i, %.sroa.15.1.i122.lcssa
  %or.cond.i = select i1 %i.je, i1 %i.jf, i1 false
  br i1 %or.cond.i, label %.lr.ph1922, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit

bb.ay:                                            ; preds = %bb.ar
  %i.jg = add nuw nsw i64 %.sroa.0.0.i1771921, 1  ; 2 uses
  %i.jh = icmp samesign ult i64 %i.jg, %.sroa.15.1.i122.lcssa
  br i1 %i.jh, label %bb.az, label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i123.lcssa, i64 %i.jg
  %i.jj = load i8, ptr %i.ji, align 1, !alias.scope !46, !noundef !8
  %i.jk = icmp eq i8 %i.jj, 10
  %spec.select22.i = select i1 %i.jk, i64 %.sroa.012.0.i1761920, i64 %i.im
  br label %bb.ax

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit: ; preds = %bb.ax, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126
  %.sroa.012.0.i176.lcssa = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit126 ], [ %.sroa.012.1.i, %bb.ax ]
  %i.jl = add i64 %.sroa.0.8.vec.extract.i248, %.sroa.023.1.i121.lcssa
  %i.jm = add i64 %i.jl, %.sroa.0.0.vec.extract.i247
  %i.jn = add i64 %i.jm, %.sroa.012.0.i176.lcssa
  store ptr null, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aj, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.i, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194
  %.sink2194 = phi i64 [ 48, %bb.i ], [ 24, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 48, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ 24, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sink2193 = phi i64 [ %i.ac, %bb.i ], [ %3, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ %.sroa.023.01688, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ %i.nm, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sink2192 = phi i64 [ 56, %bb.i ], [ 32, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 56, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ 32, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sink2191 = phi i64 [ %i.ae, %bb.i ], [ %.sroa.0.3.i143, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ %i.aiz, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ %.sroa.0.3.i, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sink2190 = phi i64 [ 64, %bb.i ], [ 40, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 64, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ 40, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sink = phi i64 [ %i.ag, %bb.i ], [ %i.jn, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ %spec.select1624, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit ], [ %i.abj, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194 ]
  %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2194
  store i64 %.sink2193, ptr %.sroa.536.sroa.4.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2192
  store i64 %.sink2191, ptr %.sroa.536.sroa.5.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2190
  store i64 %.sink, ptr %.sroa.536.sroa.6.0..sroa.536.0..sroa_idx.sroa_idx, align 8
  ret void

.lr.ph:                                           ; preds = %bb.g, %bb.eu
  %i.jo = phi ptr [ %i.ajq, %bb.eu ], [ %i.o, %bb.g ]
  %.sroa.0.01690 = phi ptr [ %i.ajp, %bb.eu ], [ %1, %bb.g ] ; 4 uses
  %.sroa.014.01689 = phi i64 [ %i.ajo, %bb.eu ], [ %2, %bb.g ] ; 5 uses
  %.sroa.023.01688 = phi i64 [ %i.ajn, %bb.eu ], [ %3, %bb.g ] ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24 ; 2 uses
  %i.jq = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.jp) ; 2 uses
  %i.jr = extractvalue { ptr, i64 } %i.jq, 0      ; 3 uses
  %i.js = extractvalue { ptr, i64 } %i.jq, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jr) ]
  %.idx = shl nuw nsw i64 %i.js, 5
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.idx
  %i.ju = icmp eq i64 %i.js, 0
  br i1 %i.ju, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit

._crit_edge:                                      ; preds = %bb.eu, %bb.g
  %.sroa.023.0.lcssa = phi i64 [ %3, %bb.g ], [ %i.ajn, %bb.eu ]
  %.sroa.014.0.lcssa = phi i64 [ %2, %bb.g ], [ %i.ajo, %bb.eu ] ; 6 uses
  %.lcssa1668 = phi ptr [ %i.o, %bb.g ], [ %i.ajq, %bb.eu ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.lcssa1668, i64 24 ; 5 uses
  %i.jw = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.jv) ; 2 uses
  %i.jx = extractvalue { ptr, i64 } %i.jw, 0      ; 6 uses
  %i.jy = extractvalue { ptr, i64 } %i.jw, 1      ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.jz = icmp samesign ult i64 %i.jy, 17
  br i1 %i.jz, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !49
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jx, i64 noundef range(i64 0, -9223372036854775808) %i.jy)
  %i.ka = load ptr, ptr %i.g, align 8, !noalias !49, !nonnull !8, !noundef !8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !noalias !49, !noundef !8 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !49, !nonnull !8, !align !22, !noundef !8 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !49, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !49
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kc
  %i.ki = icmp samesign eq i64 %i.kc, 0
  br i1 %i.ki, label %._crit_edge1699, label %.lr.ph1698

bb.bc:                                            ; preds = %._crit_edge
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jx) ]
  %i.kk = icmp samesign eq i64 %i.jy, 0
  br i1 %i.kk, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %.lr.ph2281

.lr.ph1698:                                       ; preds = %bb.bb, %bb.bd
  %.sroa.013.0.i851696 = phi i64 [ %i.kr, %bb.bd ], [ 0, %bb.bb ] ; 2 uses
  %.sroa.013.0.i841695 = phi i64 [ %i.ko, %bb.bd ], [ 0, %bb.bb ]
  %.sroa.027.0.i831694 = phi ptr [ %i.kq, %bb.bd ], [ %i.ka, %bb.bb ] ; 2 uses
  %i.kl = load i8, ptr %.sroa.027.0.i831694, align 1, !noundef !8
  %i.km = icmp sgt i8 %i.kl, -65
  %i.kn = zext i1 %i.km to i64
  %i.ko = add i64 %.sroa.013.0.i841695, %i.kn     ; 3 uses
  %i.kp = icmp ugt i64 %i.ko, %.sroa.014.0.lcssa
  br i1 %i.kp, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph1698
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i831694, i64 1 ; 2 uses
  %i.kr = add nuw i64 %.sroa.013.0.i851696, 1
  %i.ks = icmp eq ptr %i.kq, %i.kh
  br i1 %i.ks, label %._crit_edge1699, label %.lr.ph1698

._crit_edge1699:                                  ; preds = %bb.bd, %bb.bb
  %.sroa.020.0.i83.lcssa = phi i64 [ 0, %bb.bb ], [ %i.ko, %bb.bd ] ; 3 uses
  %i.kt = sub i64 %.sroa.014.0.lcssa, %.sroa.020.0.i83.lcssa
  %i.ku = lshr i64 %i.kt, 4
  %..i577 = call noundef i64 @llvm.umin.i64(i64 %i.ku, i64 %i.kg) ; 2 uses
  %i.kv = and i64 %..i577, 576460752303423484     ; 2 uses
  %.not51.i971702 = icmp eq i64 %i.kv, 0
  br i1 %.not51.i971702, label %._crit_edge1709, label %.lr.ph1708

._crit_edge1709:                                  ; preds = %.lr.ph1708, %._crit_edge1699
  %.sroa.020.1.i93.lcssa = phi i64 [ %.sroa.020.0.i83.lcssa, %._crit_edge1699 ], [ %i.ms, %.lr.ph1708 ] ; 2 uses
  %.sroa.013.1.i94.lcssa = phi i64 [ %i.kc, %._crit_edge1699 ], [ %i.mt, %.lr.ph1708 ] ; 2 uses
  %i.kw = and i64 %..i577, 1152921504606846972    ; 4 uses
  %i.kx = icmp ugt i64 %i.kw, %i.kg
  br i1 %i.kx, label %bb.bf, label %bb.be, !prof !17

bb.be:                                            ; preds = %._crit_edge1709
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.ke, i64 %i.kg
  %i.kz = icmp samesign eq i64 %i.kw, %i.kg
  br i1 %i.kz, label %._crit_edge1717, label %.lr.ph1716.preheader

.lr.ph1716.preheader:                             ; preds = %bb.be
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.ke, i64 %i.kw
  br label %.lr.ph1716

bb.bf:                                            ; preds = %._crit_edge1709
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.kw, i64 noundef %i.kg, i64 noundef %i.kg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
  unreachable

.lr.ph1716:                                       ; preds = %.lr.ph1716.preheader, %bb.bg
  %.sroa.040.0.i1041714 = phi ptr [ %i.lh, %bb.bg ], [ %i.la, %.lr.ph1716.preheader ] ; 2 uses
  %.sroa.013.2.i1031713 = phi i64 [ %i.li, %bb.bg ], [ %.sroa.013.1.i94.lcssa, %.lr.ph1716.preheader ] ; 2 uses
  %.sroa.020.2.i1021712 = phi i64 [ %i.lg, %bb.bg ], [ %.sroa.020.1.i93.lcssa, %.lr.ph1716.preheader ] ; 2 uses
  %i.lb = load <16 x i8>, ptr %.sroa.040.0.i1041714, align 16
  %i.lc = icmp slt <16 x i8> %i.lb, splat (i8 -64)
  %i.ld = zext <16 x i1> %i.lc to <16 x i8>
  %i.le = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ld, <16 x i8> zeroinitializer)
  %.neg1637 = add i64 %.sroa.020.2.i1021712, 16
  %i.lf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.le)
  %i.lg = sub i64 %.neg1637, %i.lf                ; 3 uses
  %.not52.i105 = icmp ult i64 %i.lg, %.sroa.014.0.lcssa
  br i1 %.not52.i105, label %bb.bg, label %._crit_edge1717

bb.bg:                                            ; preds = %.lr.ph1716
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i1041714, i64 16 ; 2 uses
  %i.li = add i64 %.sroa.013.2.i1031713, 16       ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.ky
  br i1 %i.lj, label %._crit_edge1717, label %.lr.ph1716

._crit_edge1717:                                  ; preds = %bb.bg, %.lr.ph1716, %bb.be
  %.sroa.020.2.i102.lcssa = phi i64 [ %.sroa.020.1.i93.lcssa, %bb.be ], [ %.sroa.020.2.i1021712, %.lr.ph1716 ], [ %i.lg, %bb.bg ]
  %.sroa.013.2.i103.lcssa = phi i64 [ %.sroa.013.1.i94.lcssa, %bb.be ], [ %.sroa.013.2.i1031713, %.lr.ph1716 ], [ %i.li, %bb.bg ] ; 5 uses
  %i.lk = icmp ugt i64 %.sroa.013.2.i103.lcssa, %i.jy
  br i1 %i.lk, label %bb.bi, label %bb.bh, !prof !17

bb.bh:                                            ; preds = %._crit_edge1717
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jy
  %i.lm = icmp samesign eq i64 %.sroa.013.2.i103.lcssa, %i.jy
  br i1 %i.lm, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %.lr.ph1727.preheader

.lr.ph1727.preheader:                             ; preds = %bb.bh
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.sroa.013.2.i103.lcssa
  br label %.lr.ph1727

bb.bi:                                            ; preds = %._crit_edge1717
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i103.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.jy, i64 noundef range(i64 0, -9223372036854775808) %i.jy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

.lr.ph1727:                                       ; preds = %.lr.ph1727.preheader, %bb.bj
  %.sroa.036.0.i1081725 = phi ptr [ %i.lt, %bb.bj ], [ %i.ln, %.lr.ph1727.preheader ] ; 2 uses
  %.sroa.013.3.i1071724 = phi i64 [ %i.lu, %bb.bj ], [ %.sroa.013.2.i103.lcssa, %.lr.ph1727.preheader ] ; 2 uses
  %.sroa.020.3.i1061723 = phi i64 [ %i.lr, %bb.bj ], [ %.sroa.020.2.i102.lcssa, %.lr.ph1727.preheader ]
  %i.lo = load i8, ptr %.sroa.036.0.i1081725, align 1, !alias.scope !49, !noundef !8
  %i.lp = icmp sgt i8 %i.lo, -65
  %i.lq = zext i1 %i.lp to i64
  %i.lr = add i64 %.sroa.020.3.i1061723, %i.lq    ; 2 uses
  %i.ls = icmp ugt i64 %i.lr, %.sroa.014.0.lcssa
  br i1 %i.ls, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph1727
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i1081725, i64 1 ; 2 uses
  %i.lu = add i64 %.sroa.013.3.i1071724, 1
  %i.lv = icmp eq ptr %i.lt, %i.ll
  br i1 %i.lv, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %.lr.ph1727

.lr.ph1708:                                       ; preds = %._crit_edge1699, %.lr.ph1708
  %.sroa.5.0.i961706 = phi i64 [ %i.mt, %.lr.ph1708 ], [ %i.kc, %._crit_edge1699 ]
  %.sroa.020.1.i951705 = phi i64 [ %i.ms, %.lr.ph1708 ], [ %.sroa.020.0.i83.lcssa, %._crit_edge1699 ]
  %.sroa.030.0.i941704 = phi ptr [ %i.lw, %.lr.ph1708 ], [ %i.ke, %._crit_edge1699 ] ; 5 uses
  %.sroa.020.1.i931703 = phi i64 [ %i.lx, %.lr.ph1708 ], [ %i.kv, %._crit_edge1699 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i941704, i64 64
  %i.lx = add i64 %.sroa.020.1.i931703, -4        ; 2 uses
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
  %i.mt = add i64 %.sroa.5.0.i961706, 64          ; 2 uses
  %.not51.i97 = icmp eq i64 %i.lx, 0
  br i1 %.not51.i97, label %._crit_edge1709, label %.lr.ph1708

bb.bk:                                            ; preds = %.lr.ph2281
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0654.02278, i64 1 ; 2 uses
  %i.mv = add nuw nsw i64 %.sroa.8656.02277, 1
  %i.mw = icmp eq ptr %i.mu, %i.kj
  br i1 %i.mw, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %.lr.ph2281

.lr.ph2281:                                       ; preds = %bb.bc, %bb.bk
  %.sroa.07.0.i1112279 = phi i64 [ %i.na, %bb.bk ], [ 0, %bb.bc ]
  %.sroa.0654.02278 = phi ptr [ %i.mu, %bb.bk ], [ %i.jx, %bb.bc ] ; 2 uses
  %.sroa.8656.02277 = phi i64 [ %i.mv, %bb.bk ], [ 0, %bb.bc ] ; 2 uses
  %i.mx = load i8, ptr %.sroa.0654.02278, align 1, !noundef !8
  %i.my = icmp sgt i8 %i.mx, -65
  %i.mz = zext i1 %i.my to i64
  %i.na = add i64 %.sroa.07.0.i1112279, %i.mz     ; 2 uses
  %i.nb = icmp ugt i64 %i.na, %.sroa.014.0.lcssa
  br i1 %i.nb, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113, label %bb.bk

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113: ; preds = %.lr.ph1698, %.lr.ph1727, %bb.bj, %bb.bk, %.lr.ph2281, %bb.bc, %bb.bh
  %.sroa.0.0.i86 = phi i64 [ %i.jy, %bb.bh ], [ %i.jy, %bb.bc ], [ %i.jy, %bb.bj ], [ %.sroa.8656.02277, %.lr.ph2281 ], [ %i.jy, %bb.bk ], [ %.sroa.013.3.i1071724, %.lr.ph1727 ], [ %.sroa.013.0.i851696, %.lr.ph1698 ] ; 23 uses
  %i.nc = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.jv) ; 2 uses
  %i.nd = extractvalue { ptr, i64 } %i.nc, 0      ; 7 uses
  %i.ne = extractvalue { ptr, i64 } %i.nc, 1      ; 9 uses
  %i.nf = icmp eq i64 %.sroa.0.0.i86, 0           ; 4 uses
  br i1 %i.nf, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113
  %.not.i579 = icmp ult i64 %.sroa.0.0.i86, %i.ne
  br i1 %.not.i579, label %bb.bm, label %.split.i

.split.i:                                         ; preds = %bb.bl
  %i.ng = icmp ne i64 %.sroa.0.0.i86, %i.ne
  %.not79 = icmp eq ptr %i.nd, null
  %or.cond2196 = select i1 %i.ng, i1 true, i1 %.not79, !prof !52
  br i1 %or.cond2196, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2110, !prof !52

bb.bm:                                            ; preds = %bb.bl
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.sroa.0.0.i86
  %i.ni = load i8, ptr %i.nh, align 1, !alias.scope !53, !noundef !8
  %i.nj = icmp sgt i8 %i.ni, -65
  br i1 %i.nj, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2110, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit113
  %.not79.old = icmp eq ptr %i.nd, null
  br i1 %.not79.old, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2110, !prof !56

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2110: ; preds = %bb.bm, %.split.i, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.nk = sub i64 %i.ne, %.sroa.0.0.i86           ; 8 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.sroa.0.0.i86 ; 3 uses
  %i.nm = sub i64 %.sroa.023.0.lcssa, %.sroa.014.0.lcssa ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.nn = icmp samesign ult i64 %i.nk, 17
  br i1 %i.nn, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !57
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nl, i64 noundef range(i64 0, -9223372036854775808) %i.nk)
  %i.no = load ptr, ptr %i.h, align 8, !noalias !57, !nonnull !8, !noundef !8 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !noalias !57, !noundef !8 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !noalias !57, !nonnull !8, !align !22, !noundef !8 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.nu = load i64, ptr %i.nt, align 8, !noalias !57, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !57
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nq
  %i.nw = icmp samesign eq i64 %i.nq, 0
  br i1 %i.nw, label %._crit_edge1736, label %.lr.ph1735

bb.bo:                                            ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread2110
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.ne
  %i.ny = icmp samesign eq i64 %.sroa.0.0.i86, %i.ne
  br i1 %i.ny, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit585

.lr.ph1735:                                       ; preds = %bb.bn, %bb.bp
  %.sroa.013.0.i1733 = phi i64 [ %i.of, %bb.bp ], [ 0, %bb.bn ] ; 2 uses
  %.sroa.013.0.i1732 = phi i64 [ %i.oc, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.027.0.i1731 = phi ptr [ %i.oe, %bb.bp ], [ %i.no, %bb.bn ] ; 2 uses
  %i.nz = load i8, ptr %.sroa.027.0.i1731, align 1, !noundef !8
  %i.oa = icmp sgt i8 %i.nz, -65
  %i.ob = zext i1 %i.oa to i64
  %i.oc = add i64 %.sroa.013.0.i1732, %i.ob       ; 3 uses
  %i.od = icmp ugt i64 %i.oc, %i.nm
  br i1 %i.od, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph1735
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i1731, i64 1 ; 2 uses
  %i.of = add nuw i64 %.sroa.013.0.i1733, 1
  %i.og = icmp eq ptr %i.oe, %i.nv
  br i1 %i.og, label %._crit_edge1736, label %.lr.ph1735

._crit_edge1736:                                  ; preds = %bb.bp, %bb.bn
  %.sroa.020.0.i.lcssa = phi i64 [ 0, %bb.bn ], [ %i.oc, %bb.bp ] ; 3 uses
  %i.oh = sub i64 %i.nm, %.sroa.020.0.i.lcssa
  %i.oi = lshr i64 %i.oh, 4
  %..i582 = call noundef i64 @llvm.umin.i64(i64 %i.oi, i64 %i.nu) ; 2 uses
  %i.oj = and i64 %..i582, 576460752303423484     ; 2 uses
  %.not51.i1739 = icmp eq i64 %i.oj, 0
  br i1 %.not51.i1739, label %._crit_edge1746, label %.lr.ph1745

._crit_edge1746:                                  ; preds = %.lr.ph1745, %._crit_edge1736
  %.sroa.020.1.i.lcssa = phi i64 [ %.sroa.020.0.i.lcssa, %._crit_edge1736 ], [ %i.qh, %.lr.ph1745 ] ; 2 uses
  %.sroa.013.1.i.lcssa = phi i64 [ %i.nq, %._crit_edge1736 ], [ %i.qi, %.lr.ph1745 ] ; 2 uses
  %i.ok = and i64 %..i582, 1152921504606846972    ; 4 uses
  %i.ol = icmp ugt i64 %i.ok, %i.nu
  br i1 %i.ol, label %bb.br, label %bb.bq, !prof !17

bb.bq:                                            ; preds = %._crit_edge1746
  %i.om = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %i.nu
  %i.on = icmp samesign eq i64 %i.ok, %i.nu
  br i1 %i.on, label %._crit_edge1754, label %.lr.ph1753.preheader

.lr.ph1753.preheader:                             ; preds = %bb.bq
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %i.ok
  br label %.lr.ph1753

bb.br:                                            ; preds = %._crit_edge1746
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ok, i64 noundef %i.nu, i64 noundef %i.nu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
  unreachable

.lr.ph1753:                                       ; preds = %.lr.ph1753.preheader, %bb.bs
  %.sroa.040.0.i1751 = phi ptr [ %i.ov, %bb.bs ], [ %i.oo, %.lr.ph1753.preheader ] ; 2 uses
  %.sroa.013.2.i1750 = phi i64 [ %i.ow, %bb.bs ], [ %.sroa.013.1.i.lcssa, %.lr.ph1753.preheader ] ; 2 uses
  %.sroa.020.2.i1749 = phi i64 [ %i.ou, %bb.bs ], [ %.sroa.020.1.i.lcssa, %.lr.ph1753.preheader ] ; 2 uses
  %i.op = load <16 x i8>, ptr %.sroa.040.0.i1751, align 16
  %i.oq = icmp slt <16 x i8> %i.op, splat (i8 -64)
  %i.or = zext <16 x i1> %i.oq to <16 x i8>
  %i.os = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.or, <16 x i8> zeroinitializer)
  %.neg1639 = add i64 %.sroa.020.2.i1749, 16
  %i.ot = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.os)
  %i.ou = sub i64 %.neg1639, %i.ot                ; 3 uses
  %.not52.i = icmp ult i64 %i.ou, %i.nm
  br i1 %.not52.i, label %bb.bs, label %._crit_edge1754

bb.bs:                                            ; preds = %.lr.ph1753
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i1751, i64 16 ; 2 uses
  %i.ow = add i64 %.sroa.013.2.i1750, 16          ; 2 uses
  %i.ox = icmp eq ptr %i.ov, %i.om
  br i1 %i.ox, label %._crit_edge1754, label %.lr.ph1753

._crit_edge1754:                                  ; preds = %bb.bs, %.lr.ph1753, %bb.bq
  %.sroa.020.2.i.lcssa = phi i64 [ %.sroa.020.1.i.lcssa, %bb.bq ], [ %.sroa.020.2.i1749, %.lr.ph1753 ], [ %i.ou, %bb.bs ]
  %.sroa.013.2.i.lcssa = phi i64 [ %.sroa.013.1.i.lcssa, %bb.bq ], [ %.sroa.013.2.i1750, %.lr.ph1753 ], [ %i.ow, %bb.bs ] ; 6 uses
  %i.oy = icmp ugt i64 %.sroa.013.2.i.lcssa, %i.nk
  br i1 %i.oy, label %bb.bu, label %bb.bt, !prof !17

bb.bt:                                            ; preds = %._crit_edge1754
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.ne
  %i.pa = add nuw nsw i64 %.sroa.0.0.i86, %.sroa.013.2.i.lcssa
  %i.pb = icmp samesign eq i64 %i.pa, %i.ne
  br i1 %i.pb, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph1764.preheader

.lr.ph1764.preheader:                             ; preds = %bb.bt
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.sroa.013.2.i.lcssa
  br label %.lr.ph1764

bb.bu:                                            ; preds = %._crit_edge1754
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.nk, i64 noundef range(i64 0, -9223372036854775808) %i.nk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15
  unreachable

.lr.ph1764:                                       ; preds = %.lr.ph1764.preheader, %bb.bv
  %.sroa.036.0.i1762 = phi ptr [ %i.pi, %bb.bv ], [ %i.pc, %.lr.ph1764.preheader ] ; 2 uses
  %.sroa.013.3.i1761 = phi i64 [ %i.pj, %bb.bv ], [ %.sroa.013.2.i.lcssa, %.lr.ph1764.preheader ] ; 2 uses
  %.sroa.020.3.i1760 = phi i64 [ %i.pg, %bb.bv ], [ %.sroa.020.2.i.lcssa, %.lr.ph1764.preheader ]
  %i.pd = load i8, ptr %.sroa.036.0.i1762, align 1, !alias.scope !57, !noundef !8
  %i.pe = icmp sgt i8 %i.pd, -65
  %i.pf = zext i1 %i.pe to i64
  %i.pg = add i64 %.sroa.020.3.i1760, %i.pf       ; 2 uses
  %i.ph = icmp ugt i64 %i.pg, %i.nm
  br i1 %i.ph, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1764
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i1762, i64 1 ; 2 uses
  %i.pj = add i64 %.sroa.013.3.i1761, 1
  %i.pk = icmp eq ptr %i.pi, %i.oz
  br i1 %i.pk, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph1764

.lr.ph1745:                                       ; preds = %._crit_edge1736, %.lr.ph1745
  %.sroa.5.0.i1743 = phi i64 [ %i.qi, %.lr.ph1745 ], [ %i.nq, %._crit_edge1736 ]
  %.sroa.020.1.i1742 = phi i64 [ %i.qh, %.lr.ph1745 ], [ %.sroa.020.0.i.lcssa, %._crit_edge1736 ]
  %.sroa.030.0.i1741 = phi ptr [ %i.pl, %.lr.ph1745 ], [ %i.ns, %._crit_edge1736 ] ; 5 uses
  %.sroa.020.1.i1740 = phi i64 [ %i.pm, %.lr.ph1745 ], [ %i.oj, %._crit_edge1736 ]
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i1741, i64 64
  %i.pm = add i64 %.sroa.020.1.i1740, -4          ; 2 uses
  %i.pn = load <16 x i8>, ptr %.sroa.030.0.i1741, align 16
  %i.po = icmp slt <16 x i8> %i.pn, splat (i8 -64)
  %i.pp = zext <16 x i1> %i.po to <16 x i8>
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i1741, i64 16
  %i.pr = load <16 x i8>, ptr %i.pq, align 16
  %i.ps = icmp slt <16 x i8> %i.pr, splat (i8 -64)
  %i.pt = zext <16 x i1> %i.ps to <16 x i8>
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i1741, i64 32
  %i.pv = load <16 x i8>, ptr %i.pu, align 16
  %i.pw = icmp slt <16 x i8> %i.pv, splat (i8 -64)
  %i.px = zext <16 x i1> %i.pw to <16 x i8>
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i1741, i64 48
  %i.pz = load <16 x i8>, ptr %i.py, align 16
  %i.qa = icmp slt <16 x i8> %i.pz, splat (i8 -64)
  %i.qb = zext <16 x i1> %i.qa to <16 x i8>
  %i.qc = add nuw nsw <16 x i8> %i.pt, %i.pp
  %i.qd = add nuw nsw <16 x i8> %i.qc, %i.px
  %i.qe = add nuw nsw <16 x i8> %i.qd, %i.qb
  %i.qf = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.qe, <16 x i8> zeroinitializer)
  %.neg1638 = add i64 %.sroa.020.1.i1742, 64
  %i.qg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.qf)
  %i.qh = sub i64 %.neg1638, %i.qg                ; 2 uses
  %i.qi = add i64 %.sroa.5.0.i1743, 64            ; 2 uses
  %.not51.i = icmp eq i64 %i.pm, 0
  br i1 %.not51.i, label %._crit_edge1746, label %.lr.ph1745

bb.bw:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit585
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0608.02285, i64 1 ; 2 uses
  %i.qk = add nuw nsw i64 %.sroa.8610.02284, 1
  %i.ql = icmp eq ptr %i.qj, %i.nx
  br i1 %i.ql, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit585

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit585: ; preds = %bb.bo, %bb.bw
  %.sroa.07.0.i2286 = phi i64 [ %i.qp, %bb.bw ], [ 0, %bb.bo ]
  %.sroa.0608.02285 = phi ptr [ %i.qj, %bb.bw ], [ %i.nl, %bb.bo ] ; 2 uses
  %.sroa.8610.02284 = phi i64 [ %i.qk, %bb.bw ], [ 0, %bb.bo ] ; 2 uses
  %i.qm = load i8, ptr %.sroa.0608.02285, align 1, !noundef !8
  %i.qn = icmp sgt i8 %i.qm, -65
  %i.qo = zext i1 %i.qn to i64
  %i.qp = add i64 %.sroa.07.0.i2286, %i.qo        ; 2 uses
  %i.qq = icmp ugt i64 %i.qp, %i.nm
  br i1 %i.qq, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.bw

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %.lr.ph1735, %.lr.ph1764, %bb.bv, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit585, %bb.bw, %bb.bo, %bb.bt
  %.sroa.0.0.i = phi i64 [ %.sroa.013.2.i.lcssa, %bb.bt ], [ %i.nk, %bb.bw ], [ %i.nk, %bb.bv ], [ %i.nk, %bb.bo ], [ %.sroa.8610.02284, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit585 ], [ %.sroa.013.3.i1761, %.lr.ph1764 ], [ %.sroa.013.0.i1733, %.lr.ph1735 ] ; 15 uses
  %i.qr = add i64 %.sroa.0.0.i, %.sroa.0.0.i86    ; 13 uses
  %i.qs = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.jv) ; 2 uses
  %i.qt = extractvalue { ptr, i64 } %i.qs, 0      ; 4 uses
  %i.qu = extractvalue { ptr, i64 } %i.qs, 1      ; 4 uses
  %i.qv = icmp ugt i64 %.sroa.0.0.i86, %i.qr
  %i.qw = icmp ugt i64 %i.qr, %i.qu
  %or.cond.i208 = or i1 %i.qv, %i.qw
  br i1 %or.cond.i208, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210.thread1590, label %bb.bx, !prof !60

bb.bx:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.qx = icmp eq i64 %.sroa.0.0.i86, %i.qu
  br i1 %i.qx, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  br i1 %i.nf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.ca, %bb.by
  %i.qy = icmp eq i64 %i.qr, %i.qu
  br i1 %i.qy, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210

bb.ca:                                            ; preds = %bb.by
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qt, i64 %.sroa.0.0.i86
  %i.ra = load i8, ptr %i.qz, align 1, !alias.scope !61, !noundef !8
  %i.rb = icmp sgt i8 %i.ra, -65
  br i1 %i.rb, label %bb.bz, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210.thread1590, !prof !64

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210: ; preds = %bb.bz
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qr
  %i.rd = load i8, ptr %i.rc, align 1, !alias.scope !61, !noundef !8
  %i.re = icmp sgt i8 %i.rd, -65
  br i1 %i.re, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210.thread1590, !prof !65

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i, %bb.bm, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nd, i64 noundef %i.ne, i64 noundef %.sroa.0.0.i86, i64 noundef %i.ne, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #15
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210.thread1590: ; preds = %bb.ca, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qt, i64 noundef %i.qu, i64 noundef %.sroa.0.0.i86, i64 noundef %i.qr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #15
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210.thread: ; preds = %bb.bz, %bb.bx, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qt, i64 %.sroa.0.0.i86
  %i.rg = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.jv) ; 2 uses
  %i.rh = extractvalue { ptr, i64 } %i.rg, 0      ; 4 uses
  %i.ri = extractvalue { ptr, i64 } %i.rg, 1      ; 4 uses
  %i.rj = icmp ugt i64 %i.qr, %i.ri
  br i1 %i.rj, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207.thread1594, label %bb.cb, !prof !60

bb.cb:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210.thread
  %i.rk = icmp eq i64 %.sroa.0.0.i86, %i.ri
  br i1 %i.rk, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.nf, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.ce, %bb.cc
  %i.rl = icmp eq i64 %i.qr, %i.ri
  br i1 %i.rl, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207

bb.ce:                                            ; preds = %bb.cc
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 %.sroa.0.0.i86
  %i.rn = load i8, ptr %i.rm, align 1, !alias.scope !66, !noundef !8
  %i.ro = icmp sgt i8 %i.rn, -65
  br i1 %i.ro, label %bb.cd, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207.thread1594, !prof !64

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207: ; preds = %bb.cd
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.qr
  %i.rq = load i8, ptr %i.rp, align 1, !alias.scope !66, !noundef !8
  %i.rr = icmp sgt i8 %i.rq, -65
  br i1 %i.rr, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207.thread1594, !prof !65

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207.thread1594: ; preds = %bb.ce, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit210.thread, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rh, i64 noundef %i.ri, i64 noundef %.sroa.0.0.i86, i64 noundef %i.qr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #15
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207.thread: ; preds = %bb.cd, %bb.cb, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207
  %i.rs = icmp samesign ult i64 %.sroa.0.0.i, 4
  br i1 %i.rs, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.cf

bb.cf:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit207.thread
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rh, i64 %.sroa.0.0.i86
  %i.ru = add nsw i64 %.sroa.0.0.i, -3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !69
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rt, i64 noundef %i.ru)
  %i.rv = load ptr, ptr %i.f, align 8, !noalias !69, !nonnull !8, !noundef !8 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.rx = load i64, ptr %i.rw, align 8, !noalias !69, !noundef !8 ; 5 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !noalias !69, !nonnull !8, !align !22, !noundef !8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.sb = load i64, ptr %i.sa, align 8, !noalias !69, !noundef !8 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.sd = load ptr, ptr %i.sc, align 8, !noalias !69, !nonnull !8, !noundef !8 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.sf = load i64, ptr %i.se, align 8, !noalias !69, !noundef !8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !69
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rx
  %i.sh = icmp samesign eq i64 %i.rx, 0
  br i1 %i.sh, label %.preheader1650, label %.lr.ph1771.preheader

.lr.ph1771.preheader:                             ; preds = %bb.cf
  %min.iters.check = icmp ult i64 %i.rx, 4
  br i1 %min.iters.check, label %.lr.ph1771.preheader2427, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1771.preheader
  %n.vec = and i64 %i.rx, -4                      ; 3 uses
  %i.si = getelementptr i8, ptr %i.rv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.so, %vector.body ]
  %vec.phi2305 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.sp, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.rv, i64 %index ; 2 uses
  %i.sj = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1
  %wide.load2306 = load <2 x i8>, ptr %i.sj, align 1
  %i.sk = icmp ugt <2 x i8> %wide.load, splat (i8 -17)
  %i.sl = icmp ugt <2 x i8> %wide.load2306, splat (i8 -17)
  %i.sm = zext <2 x i1> %i.sk to <2 x i64>
  %i.sn = zext <2 x i1> %i.sl to <2 x i64>
  %i.so = add <2 x i64> %vec.phi, %i.sm           ; 2 uses
  %i.sp = add <2 x i64> %vec.phi2305, %i.sn       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sq = icmp eq i64 %index.next, %n.vec
  br i1 %i.sq, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.sp, %i.so
  %i.sr = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.rx, %n.vec
  br i1 %cmp.n, label %.preheader1650, label %.lr.ph1771.preheader2427

.lr.ph1771.preheader2427:                         ; preds = %.lr.ph1771.preheader, %middle.block
  %.sroa.0.0.i1301769.ph = phi i64 [ 0, %.lr.ph1771.preheader ], [ %i.sr, %middle.block ]
  %.sroa.04.0.i1768.ph = phi ptr [ %i.rv, %.lr.ph1771.preheader ], [ %i.si, %middle.block ]
  br label %.lr.ph1771

.preheader1650:                                   ; preds = %.lr.ph1771, %middle.block, %bb.cf
  %.sroa.0.0.i130.lcssa = phi i64 [ 0, %bb.cf ], [ %i.sr, %middle.block ], [ %i.sx, %.lr.ph1771 ] ; 2 uses
  %i.ss = icmp eq i64 %i.sb, 0
  br i1 %i.ss, label %._crit_edge1782, label %.lr.ph1775.preheader

.lr.ph1771:                                       ; preds = %.lr.ph1771.preheader2427, %.lr.ph1771
  %.sroa.0.0.i1301769 = phi i64 [ %i.sx, %.lr.ph1771 ], [ %.sroa.0.0.i1301769.ph, %.lr.ph1771.preheader2427 ]
  %.sroa.04.0.i1768 = phi ptr [ %i.st, %.lr.ph1771 ], [ %.sroa.04.0.i1768.ph, %.lr.ph1771.preheader2427 ] ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1768, i64 1 ; 2 uses
  %i.su = load i8, ptr %.sroa.04.0.i1768, align 1, !noundef !8
  %i.sv = icmp ugt i8 %i.su, -17
  %i.sw = zext i1 %i.sv to i64
  %i.sx = add i64 %.sroa.0.0.i1301769, %i.sw      ; 2 uses
  %i.sy = icmp eq ptr %i.st, %i.sg
  br i1 %i.sy, label %.preheader1650, label %.lr.ph1771, !llvm.loop !73

.lr.ph1775.preheader:                             ; preds = %.preheader1650, %._crit_edge1776
  %.sroa.0.1.i1321780 = phi i64 [ %i.vd, %._crit_edge1776 ], [ %.sroa.0.0.i130.lcssa, %.preheader1650 ]
  %.sroa.5852.01779 = phi i64 [ %i.ta, %._crit_edge1776 ], [ %i.sb, %.preheader1650 ] ; 2 uses
  %.sroa.0851.01778 = phi ptr [ %i.sz, %._crit_edge1776 ], [ %i.rz, %.preheader1650 ] ; 4 uses
  %..i.i587 = call noundef i64 @llvm.umin.i64(i64 %.sroa.5852.01779, i64 255) ; 3 uses
  %i.sz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0851.01778, i64 %..i.i587
  %i.ta = sub nuw nsw i64 %.sroa.5852.01779, %..i.i587 ; 2 uses
  %.idx1924 = shl nuw nsw i64 %..i.i587, 4        ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0851.01778, i64 %.idx1924
  %i.tc = add nsw i64 %.idx1924, -16              ; 2 uses
  %i.td = lshr exact i64 %i.tc, 4
  %i.te = add nuw nsw i64 %i.td, 1
  %xtraiter = and i64 %i.te, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1775.prol.loopexit, label %.lr.ph1775.prol

.lr.ph1775.prol:                                  ; preds = %.lr.ph1775.preheader, %.lr.ph1775.prol
  %.sroa.016.0.i1773.prol = phi ptr [ %i.tg, %.lr.ph1775.prol ], [ %.sroa.0851.01778, %.lr.ph1775.preheader ] ; 2 uses
  %i.tf = phi <16 x i8> [ %i.tk, %.lr.ph1775.prol ], [ zeroinitializer, %.lr.ph1775.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1775.prol ], [ 0, %.lr.ph1775.preheader ]
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i1773.prol, i64 16 ; 2 uses
  %i.th = load <16 x i8>, ptr %.sroa.016.0.i1773.prol, align 16, !alias.scope !74, !noalias !77
  %i.ti = icmp ugt <16 x i8> %i.th, splat (i8 -17)
  %i.tj = zext <16 x i1> %i.ti to <16 x i8>
  %i.tk = add <16 x i8> %i.tf, %i.tj              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1775.prol.loopexit, label %.lr.ph1775.prol, !llvm.loop !80

.lr.ph1775.prol.loopexit:                         ; preds = %.lr.ph1775.prol, %.lr.ph1775.preheader
  %.lcssa2425.unr = phi <16 x i8> [ poison, %.lr.ph1775.preheader ], [ %i.tk, %.lr.ph1775.prol ]
  %.sroa.016.0.i1773.unr = phi ptr [ %.sroa.0851.01778, %.lr.ph1775.preheader ], [ %i.tg, %.lr.ph1775.prol ]
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph1775.preheader ], [ %i.tk, %.lr.ph1775.prol ]
  %i.tl = icmp ult i64 %i.tc, 48
  br i1 %i.tl, label %._crit_edge1776, label %.lr.ph1775

._crit_edge1782:                                  ; preds = %._crit_edge1776, %.preheader1650
  %.sroa.0.1.i132.lcssa = phi i64 [ %.sroa.0.0.i130.lcssa, %.preheader1650 ], [ %i.vd, %._crit_edge1776 ] ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sf
  %i.tn = icmp samesign eq i64 %i.sf, 0
  br i1 %i.tn, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph1787.preheader

.lr.ph1787.preheader:                             ; preds = %._crit_edge1782
  %min.iters.check2308 = icmp ult i64 %i.sf, 4
  br i1 %min.iters.check2308, label %.lr.ph1787.preheader2421, label %vector.ph2309

end_hunk_0
begin_hunk_1_@_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice14new_with_range:bb.a
  br i1 %.sroa.0.0.i213, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit129, label %bb.dk

bb.dk:                                            ; preds = %.thread1605
  %i.zn = icmp eq <16 x i8> %i.xc, splat (i8 10)
  %.neg = sext <16 x i1> %i.zn to <16 x i8>
  %.neg1627 = shufflevector <16 x i8> %.neg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %.neg1628 = select <16 x i1> %i.xm, <16 x i8> %.neg1627, <16 x i8> zeroinitializer
  %i.zo = add <16 x i8> %i.zk, %.neg1628          ; 4 uses
  %.not1629 = icmp ne i64 %.sroa.15.1.i1796, 16
  %i.zp = icmp eq i8 %i.xr, 13
  %or.cond2204 = select i1 %.not1629, i1 %i.zp, i1 false
  br i1 %or.cond2204, label %bb.dl, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit129

bb.dl:                                            ; preds = %bb.dk
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i1797, i64 16
  %i.zr = load i8, ptr %i.zq, align 16, !alias.scope !89, !noalias !92, !noundef !8
  %i.zs = icmp eq i8 %i.zr, 10
  br i1 %i.zs, label %bb.dm, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit129

bb.dm:                                            ; preds = %bb.dl
  %.sroa.0.15.vec.extract.i = extractelement <16 x i8> %i.zo, i64 15
  %i.zt = add i8 %.sroa.0.15.vec.extract.i, -1
  %.sroa.0.15.vec.insert.i = insertelement <16 x i8> %i.zo, i8 %i.zt, i64 15
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit129

_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit129: ; preds = %bb.dk, %bb.dl, %bb.dm, %.thread1605
  %.sroa.0792.5.in = phi <16 x i8> [ %i.zk, %.thread1605 ], [ %.sroa.0.15.vec.insert.i, %bb.dm ], [ %i.zo, %bb.dl ], [ %i.zo, %bb.dk ]
  %i.zu = add <16 x i8> %.sroa.0792.5.in, %i.xa   ; 2 uses
  %i.zv = add i64 %.sroa.028.0.i1794, 1           ; 2 uses
  %i.zw = icmp eq i64 %i.zv, 255
  br i1 %i.zw, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit129
  %i.zx = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.zu, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i249 = extractelement <2 x i64> %i.zx, i64 0
  %.sroa.0.8.vec.extract.i250 = extractelement <2 x i64> %i.zx, i64 1
  %i.zy = add i64 %.sroa.0.8.vec.extract.i250, %.sroa.023.1.i1795
  %i.zz = add i64 %i.zy, %.sroa.0.0.vec.extract.i249
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit129
  %i.aaa = phi <16 x i8> [ zeroinitializer, %bb.dn ], [ %i.zu, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit129 ] ; 2 uses
  %.sroa.028.1.i = phi i64 [ 0, %bb.dn ], [ %i.zv, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit129 ]
  %.sroa.023.2.i = phi i64 [ %i.zz, %bb.dn ], [ %.sroa.023.1.i1795, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit129 ] ; 2 uses
  %i.aab = add nsw i64 %.sroa.15.1.i1796, -16     ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i1797, i64 16 ; 2 uses
  %i.aad = icmp ugt i64 %i.aab, 15
  br i1 %i.aad, label %.lr.ph1799, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.do, %bb.ck
  %.lcssa1660 = phi <16 x i8> [ zeroinitializer, %bb.ck ], [ %i.aaa, %bb.do ]
  %.sroa.023.1.i.lcssa = phi i64 [ %.sroa.023.0.i, %bb.ck ], [ %.sroa.023.2.i, %bb.do ]
  %.sroa.15.1.i.lcssa = phi i64 [ %.sroa.15.0.i, %bb.ck ], [ %i.aab, %bb.do ] ; 6 uses
  %.sroa.0.1.i.lcssa = phi ptr [ %.sroa.0.0.i115, %bb.ck ], [ %i.aac, %bb.do ] ; 4 uses
  %i.aae = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa1660, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i251 = extractelement <2 x i64> %i.aae, i64 0
  %.sroa.0.8.vec.extract.i252 = extractelement <2 x i64> %i.aae, i64 1
  %.not1926 = icmp eq i64 %.sroa.15.1.i.lcssa, 0
  br i1 %.not1926, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194, label %.lr.ph1807

.lr.ph1807:                                       ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.dw
  %.sroa.0.0.i1881806 = phi i64 [ %i.aaz, %bb.dw ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 5 uses
  %.sroa.012.0.i1871805 = phi i64 [ %.sroa.012.1.i190, %bb.dw ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 8 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %.sroa.0.0.i1881806 ; 2 uses
  %i.aag = load i8, ptr %i.aaf, align 1, !alias.scope !94, !noundef !8 ; 3 uses
  %i.aah = add i8 %i.aag, -10
  %spec.select.i593 = icmp ult i8 %i.aah, 4
  br i1 %spec.select.i593, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph1807
  switch i8 %i.aag, label %bb.dw [
    i8 -62, label %bb.dr
    i8 -30, label %bb.dt
  ]

bb.dq:                                            ; preds = %.lr.ph1807
  %i.aai = add nuw nsw i64 %.sroa.012.0.i1871805, 1 ; 3 uses
  %i.aaj = icmp eq i8 %i.aag, 13
  br i1 %i.aaj, label %bb.dx, label %bb.dw

bb.dr:                                            ; preds = %bb.dp
  %i.aak = add nuw nsw i64 %.sroa.0.0.i1881806, 1 ; 2 uses
  %i.aal = icmp samesign ult i64 %i.aak, %.sroa.15.1.i.lcssa
  br i1 %i.aal, label %bb.ds, label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.aak
  %i.aan = load i8, ptr %i.aam, align 1, !alias.scope !94, !noundef !8
  %i.aao = icmp eq i8 %i.aan, -123
  %i.aap = zext i1 %i.aao to i64
  %spec.select1623 = add nuw nsw i64 %.sroa.012.0.i1871805, %i.aap
  br label %bb.dw

bb.dt:                                            ; preds = %bb.dp
  %i.aaq = add nuw i64 %.sroa.0.0.i1881806, 2     ; 2 uses
  %i.aar = icmp ult i64 %i.aaq, %.sroa.15.1.i.lcssa
  br i1 %i.aar, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaf, i64 1
  %i.aat = load i8, ptr %i.aas, align 1, !alias.scope !94, !noundef !8
  %i.aau = icmp eq i8 %i.aat, -128
  br i1 %i.aau, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.aaq
  %i.aaw = load i8, ptr %i.aav, align 1, !alias.scope !94, !noundef !8
  %.mask.i191 = and i8 %i.aaw, -2
  %i.aax = icmp eq i8 %.mask.i191, -88
  %i.aay = zext i1 %i.aax to i64
  %spec.select.i192 = add nuw nsw i64 %.sroa.012.0.i1871805, %i.aay
  br label %bb.dw

bb.dw:                                            ; preds = %bb.ds, %bb.dr, %bb.dy, %bb.dx, %bb.dv, %bb.du, %bb.dt, %bb.dq, %bb.dp
  %.sroa.012.1.i190 = phi i64 [ %.sroa.012.0.i1871805, %bb.dt ], [ %spec.select22.i193, %bb.dy ], [ %i.aai, %bb.dx ], [ %i.aai, %bb.dq ], [ %.sroa.012.0.i1871805, %bb.dr ], [ %.sroa.012.0.i1871805, %bb.dp ], [ %spec.select.i192, %bb.dv ], [ %.sroa.012.0.i1871805, %bb.du ], [ %spec.select1623, %bb.ds ] ; 3 uses
  %i.aaz = add nuw nsw i64 %.sroa.0.0.i1881806, 1 ; 2 uses
  %i.aba = icmp samesign ult i64 %i.aaz, %.sroa.15.1.i.lcssa
  %i.abb = icmp ult i64 %.sroa.012.1.i190, %.sroa.15.1.i.lcssa
  %or.cond.i189 = select i1 %i.aba, i1 %i.abb, i1 false
  br i1 %or.cond.i189, label %.lr.ph1807, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194

bb.dx:                                            ; preds = %bb.dq
  %i.abc = add nuw nsw i64 %.sroa.0.0.i1881806, 1 ; 2 uses
  %i.abd = icmp samesign ult i64 %i.abc, %.sroa.15.1.i.lcssa
  br i1 %i.abd, label %bb.dy, label %bb.dw

bb.dy:                                            ; preds = %bb.dx
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.abc
  %i.abf = load i8, ptr %i.abe, align 1, !alias.scope !94, !noundef !8
  %i.abg = icmp eq i8 %i.abf, 10
  %spec.select22.i193 = select i1 %i.abg, i64 %.sroa.012.0.i1871805, i64 %i.aai
  br label %bb.dw

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit194: ; preds = %bb.dw, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %.sroa.012.0.i187.lcssa = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ %.sroa.012.1.i190, %bb.dw ]
  %i.abh = add i64 %.sroa.0.8.vec.extract.i252, %.sroa.023.1.i.lcssa
  %i.abi = add i64 %i.abh, %.sroa.0.0.vec.extract.i251
  %i.abj = add i64 %i.abi, %.sroa.012.0.i187.lcssa
  store ptr null, ptr %0, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rf, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i, ptr %.sroa.547.0..sroa_idx, align 8
  br label %bb.ba

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit: ; preds = %.lr.ph, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit._crit_edge
  %.sroa.052.01681 = phi i64 [ %.pre2003, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit._crit_edge ], [ 0, %.lr.ph ] ; 4 uses
  %.sroa.0.015691680 = phi ptr [ %i.ajh, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit._crit_edge ], [ %i.jr, %.lr.ph ] ; 2 uses
  %.sroa.8.01679 = phi i64 [ %i.ajg, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit._crit_edge ], [ 0, %.lr.ph ] ; 4 uses
  %.not81 = icmp ult i64 %.sroa.014.01689, %.sroa.052.01681
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.015691680, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.pre2003 = add i64 %.pre, %.sroa.052.01681     ; 2 uses
  %.not82 = icmp ugt i64 %.sroa.023.01688, %.pre2003
  %or.cond2205 = select i1 %.not81, i1 true, i1 %.not82
  br i1 %or.cond2205, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit._crit_edge, label %bb.et

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread: ; preds = %.lr.ph, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit._crit_edge
  %i.abk = load ptr, ptr %.sroa.0.01690, align 8, !nonnull !8, !noundef !8
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.abl, i64 noundef %.sroa.014.01689), !noalias !101
  %i.abm = load ptr, ptr %i.b, align 8, !noalias !97, !nonnull !8, !noundef !8 ; 7 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.abo = load i64, ptr %i.abn, align 8, !noalias !97, !noundef !8 ; 15 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.abq = load i64, ptr %i.abp, align 8, !noalias !97, !noundef !8
  %i.abr = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.abs = load i64, ptr %i.abr, align 8, !noalias !97, !noundef !8
  %i.abt = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.abu = load i64, ptr %i.abt, align 8, !noalias !97, !noundef !8
  %i.abv = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.abw = load i64, ptr %i.abv, align 8, !noalias !97, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  %i.abx = sub i64 %.sroa.014.01689, %i.abs       ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.aby = icmp samesign ult i64 %i.abo, 17
  br i1 %i.aby, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abm, i64 noundef range(i64 0, -9223372036854775808) %i.abo), !noalias !101
  %i.abz = load ptr, ptr %i.a, align 8, !noalias !105, !nonnull !8, !noundef !8 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.acb = load i64, ptr %i.aca, align 8, !noalias !105, !noundef !8 ; 4 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.acd = load ptr, ptr %i.acc, align 8, !noalias !105, !nonnull !8, !align !22, !noundef !8 ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.acf = load i64, ptr %i.ace, align 8, !noalias !105, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.acb
  %i.ach = icmp samesign eq i64 %i.acb, 0
  br i1 %i.ach, label %._crit_edge1814, label %.lr.ph1813

bb.ea:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.abo
  %i.acj = icmp samesign eq i64 %i.abo, 0
  br i1 %i.acj, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit175, label %.lr.ph2293

.lr.ph1813:                                       ; preds = %bb.dz, %bb.eb
  %.sroa.013.0.i.i1471811 = phi i64 [ %i.acq, %bb.eb ], [ 0, %bb.dz ] ; 2 uses
  %.sroa.013.0.i.i1461810 = phi i64 [ %i.acn, %bb.eb ], [ 0, %bb.dz ]
  %.sroa.027.0.i.i1451809 = phi ptr [ %i.acp, %bb.eb ], [ %i.abz, %bb.dz ] ; 2 uses
  %i.ack = load i8, ptr %.sroa.027.0.i.i1451809, align 1, !noalias !101, !noundef !8
  %i.acl = icmp sgt i8 %i.ack, -65
  %i.acm = zext i1 %i.acl to i64
  %i.acn = add i64 %.sroa.013.0.i.i1461810, %i.acm ; 3 uses
  %i.aco = icmp ugt i64 %i.acn, %i.abx
  br i1 %i.aco, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit175, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph1813
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i1451809, i64 1 ; 2 uses
  %i.acq = add nuw i64 %.sroa.013.0.i.i1471811, 1
  %i.acr = icmp eq ptr %i.acp, %i.acg
  br i1 %i.acr, label %._crit_edge1814, label %.lr.ph1813

._crit_edge1814:                                  ; preds = %bb.eb, %bb.dz
  %.sroa.020.0.i.i145.lcssa = phi i64 [ 0, %bb.dz ], [ %i.acn, %bb.eb ] ; 3 uses
  %i.acs = sub i64 %i.abx, %.sroa.020.0.i.i145.lcssa
  %i.act = lshr i64 %i.acs, 4
  %..i596 = call noundef i64 @llvm.umin.i64(i64 %i.act, i64 %i.acf) ; 2 uses
  %i.acu = and i64 %..i596, 576460752303423484    ; 2 uses
  %.not51.i.i1591817 = icmp eq i64 %i.acu, 0
  br i1 %.not51.i.i1591817, label %._crit_edge1824, label %.lr.ph1823

._crit_edge1824:                                  ; preds = %.lr.ph1823, %._crit_edge1814
  %.sroa.020.1.i.i155.lcssa = phi i64 [ %.sroa.020.0.i.i145.lcssa, %._crit_edge1814 ], [ %i.aer, %.lr.ph1823 ] ; 2 uses
  %.sroa.013.1.i.i156.lcssa = phi i64 [ %i.acb, %._crit_edge1814 ], [ %i.aes, %.lr.ph1823 ] ; 2 uses
  %i.acv = and i64 %..i596, 1152921504606846972   ; 4 uses
  %i.acw = icmp ugt i64 %i.acv, %i.acf
  br i1 %i.acw, label %bb.ed, label %bb.ec, !prof !17

bb.ec:                                            ; preds = %._crit_edge1824
  %i.acx = getelementptr inbounds nuw [16 x i8], ptr %i.acd, i64 %i.acf
  %i.acy = icmp samesign eq i64 %i.acv, %i.acf
  br i1 %i.acy, label %._crit_edge1832, label %.lr.ph1831.preheader

.lr.ph1831.preheader:                             ; preds = %bb.ec
  %i.acz = getelementptr inbounds nuw [16 x i8], ptr %i.acd, i64 %i.acv
  br label %.lr.ph1831

bb.ed:                                            ; preds = %._crit_edge1824
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.acv, i64 noundef %i.acf, i64 noundef %i.acf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15, !noalias !101
  unreachable

.lr.ph1831:                                       ; preds = %.lr.ph1831.preheader, %bb.ee
  %.sroa.040.0.i.i1661829 = phi ptr [ %i.adg, %bb.ee ], [ %i.acz, %.lr.ph1831.preheader ] ; 2 uses
  %.sroa.013.2.i.i1651828 = phi i64 [ %i.adh, %bb.ee ], [ %.sroa.013.1.i.i156.lcssa, %.lr.ph1831.preheader ] ; 2 uses
  %.sroa.020.2.i.i1641827 = phi i64 [ %i.adf, %bb.ee ], [ %.sroa.020.1.i.i155.lcssa, %.lr.ph1831.preheader ] ; 2 uses
  %i.ada = load <16 x i8>, ptr %.sroa.040.0.i.i1661829, align 16, !noalias !101
  %i.adb = icmp slt <16 x i8> %i.ada, splat (i8 -64)
  %i.adc = zext <16 x i1> %i.adb to <16 x i8>
  %i.add = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.adc, <16 x i8> zeroinitializer)
  %.neg1641 = add i64 %.sroa.020.2.i.i1641827, 16
  %i.ade = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.add)
  %i.adf = sub i64 %.neg1641, %i.ade              ; 3 uses
  %.not52.i.i167 = icmp ult i64 %i.adf, %i.abx
  br i1 %.not52.i.i167, label %bb.ee, label %._crit_edge1832

bb.ee:                                            ; preds = %.lr.ph1831
  %i.adg = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i.i1661829, i64 16 ; 2 uses
  %i.adh = add i64 %.sroa.013.2.i.i1651828, 16    ; 2 uses
  %i.adi = icmp eq ptr %i.adg, %i.acx
  br i1 %i.adi, label %._crit_edge1832, label %.lr.ph1831

._crit_edge1832:                                  ; preds = %bb.ee, %.lr.ph1831, %bb.ec
  %.sroa.020.2.i.i164.lcssa = phi i64 [ %.sroa.020.1.i.i155.lcssa, %bb.ec ], [ %.sroa.020.2.i.i1641827, %.lr.ph1831 ], [ %i.adf, %bb.ee ]
  %.sroa.013.2.i.i165.lcssa = phi i64 [ %.sroa.013.1.i.i156.lcssa, %bb.ec ], [ %.sroa.013.2.i.i1651828, %.lr.ph1831 ], [ %i.adh, %bb.ee ] ; 5 uses
  %i.adj = icmp ugt i64 %.sroa.013.2.i.i165.lcssa, %i.abo
  br i1 %i.adj, label %bb.eg, label %bb.ef, !prof !17

bb.ef:                                            ; preds = %._crit_edge1832
  %i.adk = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.abo
  %i.adl = icmp samesign eq i64 %.sroa.013.2.i.i165.lcssa, %i.abo
  br i1 %i.adl, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit175, label %.lr.ph1842.preheader

.lr.ph1842.preheader:                             ; preds = %bb.ef
  %i.adm = getelementptr inbounds nuw i8, ptr %i.abm, i64 %.sroa.013.2.i.i165.lcssa
  br label %.lr.ph1842

bb.eg:                                            ; preds = %._crit_edge1832
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i.i165.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.abo, i64 noundef range(i64 0, -9223372036854775808) %i.abo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !101
  unreachable

.lr.ph1842:                                       ; preds = %.lr.ph1842.preheader, %bb.eh
  %.sroa.036.0.i.i1701840 = phi ptr [ %i.ads, %bb.eh ], [ %i.adm, %.lr.ph1842.preheader ] ; 2 uses
  %.sroa.013.3.i.i1691839 = phi i64 [ %i.adt, %bb.eh ], [ %.sroa.013.2.i.i165.lcssa, %.lr.ph1842.preheader ] ; 2 uses
  %.sroa.020.3.i.i1681838 = phi i64 [ %i.adq, %bb.eh ], [ %.sroa.020.2.i.i164.lcssa, %.lr.ph1842.preheader ]
  %i.adn = load i8, ptr %.sroa.036.0.i.i1701840, align 1, !alias.scope !102, !noalias !101, !noundef !8
  %i.ado = icmp sgt i8 %i.adn, -65
  %i.adp = zext i1 %i.ado to i64
  %i.adq = add i64 %.sroa.020.3.i.i1681838, %i.adp ; 2 uses
  %i.adr = icmp ugt i64 %i.adq, %i.abx
  br i1 %i.adr, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit175, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph1842
  %i.ads = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i.i1701840, i64 1 ; 2 uses
  %i.adt = add i64 %.sroa.013.3.i.i1691839, 1
  %i.adu = icmp eq ptr %i.ads, %i.adk
  br i1 %i.adu, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit175, label %.lr.ph1842

.lr.ph1823:                                       ; preds = %._crit_edge1814, %.lr.ph1823
  %.sroa.5.0.i.i1581821 = phi i64 [ %i.aes, %.lr.ph1823 ], [ %i.acb, %._crit_edge1814 ]
  %.sroa.020.1.i.i1571820 = phi i64 [ %i.aer, %.lr.ph1823 ], [ %.sroa.020.0.i.i145.lcssa, %._crit_edge1814 ]
  %.sroa.030.0.i.i1561819 = phi ptr [ %i.adv, %.lr.ph1823 ], [ %i.acd, %._crit_edge1814 ] ; 5 uses
  %.sroa.020.1.i.i1551818 = phi i64 [ %i.adw, %.lr.ph1823 ], [ %i.acu, %._crit_edge1814 ]
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i1561819, i64 64
  %i.adw = add i64 %.sroa.020.1.i.i1551818, -4    ; 2 uses
  %i.adx = load <16 x i8>, ptr %.sroa.030.0.i.i1561819, align 16, !noalias !101
  %i.ady = icmp slt <16 x i8> %i.adx, splat (i8 -64)
  %i.adz = zext <16 x i1> %i.ady to <16 x i8>
  %i.aea = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i1561819, i64 16
  %i.aeb = load <16 x i8>, ptr %i.aea, align 16, !noalias !101
  %i.aec = icmp slt <16 x i8> %i.aeb, splat (i8 -64)
  %i.aed = zext <16 x i1> %i.aec to <16 x i8>
  %i.aee = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i1561819, i64 32
  %i.aef = load <16 x i8>, ptr %i.aee, align 16, !noalias !101
  %i.aeg = icmp slt <16 x i8> %i.aef, splat (i8 -64)
  %i.aeh = zext <16 x i1> %i.aeg to <16 x i8>
  %i.aei = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i1561819, i64 48
  %i.aej = load <16 x i8>, ptr %i.aei, align 16, !noalias !101
  %i.aek = icmp slt <16 x i8> %i.aej, splat (i8 -64)
  %i.ael = zext <16 x i1> %i.aek to <16 x i8>
  %i.aem = add nuw nsw <16 x i8> %i.aed, %i.adz
  %i.aen = add nuw nsw <16 x i8> %i.aem, %i.aeh
  %i.aeo = add nuw nsw <16 x i8> %i.aen, %i.ael
  %i.aep = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.aeo, <16 x i8> zeroinitializer)
  %.neg1640 = add i64 %.sroa.020.1.i.i1571820, 64
  %i.aeq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.aep)
  %i.aer = sub i64 %.neg1640, %i.aeq              ; 2 uses
  %i.aes = add i64 %.sroa.5.0.i.i1581821, 64      ; 2 uses
  %.not51.i.i159 = icmp eq i64 %i.adw, 0
  br i1 %.not51.i.i159, label %._crit_edge1824, label %.lr.ph1823

bb.ei:                                            ; preds = %.lr.ph2293
  %i.aet = add nuw nsw i64 %.sroa.8926.02290, 1
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.0924.02289, i64 1 ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.aci
  br i1 %i.aev, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit175, label %.lr.ph2293

.lr.ph2293:                                       ; preds = %bb.ea, %bb.ei
  %.sroa.07.0.i.i1732291 = phi i64 [ %i.aez, %bb.ei ], [ 0, %bb.ea ]
  %.sroa.8926.02290 = phi i64 [ %i.aet, %bb.ei ], [ 0, %bb.ea ] ; 2 uses
  %.sroa.0924.02289 = phi ptr [ %i.aeu, %bb.ei ], [ %i.abm, %bb.ea ] ; 2 uses
  %i.aew = load i8, ptr %.sroa.0924.02289, align 1, !noalias !101, !noundef !8
  %i.aex = icmp sgt i8 %i.aew, -65
  %i.aey = zext i1 %i.aex to i64
  %i.aez = add i64 %.sroa.07.0.i.i1732291, %i.aey ; 2 uses
  %i.afa = icmp ugt i64 %i.aez, %i.abx
  br i1 %i.afa, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit175, label %bb.ei

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit175: ; preds = %.lr.ph1813, %.lr.ph1842, %bb.eh, %bb.ei, %.lr.ph2293, %bb.ea, %bb.ef
  %.sroa.0.0.i.i148 = phi i64 [ %i.abo, %bb.ef ], [ %i.abo, %bb.ea ], [ %i.abo, %bb.eh ], [ %.sroa.8926.02290, %.lr.ph2293 ], [ %i.abo, %bb.ei ], [ %.sroa.013.3.i.i1691839, %.lr.ph1842 ], [ %.sroa.013.0.i.i1471811, %.lr.ph1813 ] ; 3 uses
  %i.afb = add i64 %.sroa.0.0.i.i148, %i.abq
  %i.afc = call noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils27byte_to_utf16_surrogate_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abm, i64 noundef %i.abo, i64 noundef %.sroa.0.0.i.i148), !noalias !101
  %i.afd = add i64 %i.afc, %i.abu
  %i.afe = call fastcc noundef i64 @_RNvNtCsk17MtNlfUKQ_11str_indices5lines13from_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abm, i64 noundef %i.abo, i64 noundef %.sroa.0.0.i.i148) #16, !noalias !101
  %i.aff = add i64 %i.afe, %i.abw
  %i.afg = load ptr, ptr %.sroa.0.01690, align 8, !nonnull !8, !noundef !8
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !106
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.afh, i64 noundef %.sroa.023.01688), !noalias !110
  %i.afi = load ptr, ptr %i.d, align 8, !noalias !106, !nonnull !8, !noundef !8 ; 7 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.afk = load i64, ptr %i.afj, align 8, !noalias !106, !noundef !8 ; 15 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.afm = load i64, ptr %i.afl, align 8, !noalias !106, !noundef !8
  %i.afn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.afo = load i64, ptr %i.afn, align 8, !noalias !106, !noundef !8
  %i.afp = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.afq = load i64, ptr %i.afp, align 8, !noalias !106, !noundef !8
  %i.afr = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.afs = load i64, ptr %i.afr, align 8, !noalias !106, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !106
  %i.aft = sub i64 %.sroa.023.01688, %i.afo       ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.afu = icmp samesign ult i64 %i.afk, 17
  br i1 %i.afu, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afi, i64 noundef range(i64 0, -9223372036854775808) %i.afk), !noalias !110
  %i.afv = load ptr, ptr %i.c, align 8, !noalias !114, !nonnull !8, !noundef !8 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.afx = load i64, ptr %i.afw, align 8, !noalias !114, !noundef !8 ; 4 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.afz = load ptr, ptr %i.afy, align 8, !noalias !114, !nonnull !8, !align !22, !noundef !8 ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.agb = load i64, ptr %i.aga, align 8, !noalias !114, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afv, i64 %i.afx
  %i.agd = icmp samesign eq i64 %i.afx, 0
  br i1 %i.agd, label %._crit_edge1851, label %.lr.ph1850

bb.ek:                                            ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit175
  %i.age = getelementptr inbounds nuw i8, ptr %i.afi, i64 %i.afk
  %i.agf = icmp samesign eq i64 %i.afk, 0
  br i1 %i.agf, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit, label %.lr.ph2301

.lr.ph1850:                                       ; preds = %bb.ej, %bb.el
  %.sroa.013.0.i.i1848 = phi i64 [ %i.agm, %bb.el ], [ 0, %bb.ej ] ; 2 uses
  %.sroa.013.0.i.i1847 = phi i64 [ %i.agj, %bb.el ], [ 0, %bb.ej ]
  %.sroa.027.0.i.i1846 = phi ptr [ %i.agl, %bb.el ], [ %i.afv, %bb.ej ] ; 2 uses
  %i.agg = load i8, ptr %.sroa.027.0.i.i1846, align 1, !noalias !110, !noundef !8
  %i.agh = icmp sgt i8 %i.agg, -65
  %i.agi = zext i1 %i.agh to i64
  %i.agj = add i64 %.sroa.013.0.i.i1847, %i.agi   ; 3 uses
  %i.agk = icmp ugt i64 %i.agj, %i.aft
  br i1 %i.agk, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit, label %bb.el

bb.el:                                            ; preds = %.lr.ph1850
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i1846, i64 1 ; 2 uses
  %i.agm = add nuw i64 %.sroa.013.0.i.i1848, 1
  %i.agn = icmp eq ptr %i.agl, %i.agc
  br i1 %i.agn, label %._crit_edge1851, label %.lr.ph1850

._crit_edge1851:                                  ; preds = %bb.el, %bb.ej
  %.sroa.020.0.i.i.lcssa = phi i64 [ 0, %bb.ej ], [ %i.agj, %bb.el ] ; 3 uses
  %i.ago = sub i64 %i.aft, %.sroa.020.0.i.i.lcssa
  %i.agp = lshr i64 %i.ago, 4
  %..i600 = call noundef i64 @llvm.umin.i64(i64 %i.agp, i64 %i.agb) ; 2 uses
  %i.agq = and i64 %..i600, 576460752303423484    ; 2 uses
  %.not51.i.i1854 = icmp eq i64 %i.agq, 0
  br i1 %.not51.i.i1854, label %._crit_edge1861, label %.lr.ph1860

._crit_edge1861:                                  ; preds = %.lr.ph1860, %._crit_edge1851
  %.sroa.020.1.i.i.lcssa = phi i64 [ %.sroa.020.0.i.i.lcssa, %._crit_edge1851 ], [ %i.ain, %.lr.ph1860 ] ; 2 uses
  %.sroa.013.1.i.i.lcssa = phi i64 [ %i.afx, %._crit_edge1851 ], [ %i.aio, %.lr.ph1860 ] ; 2 uses
  %i.agr = and i64 %..i600, 1152921504606846972   ; 4 uses
  %i.ags = icmp ugt i64 %i.agr, %i.agb
  br i1 %i.ags, label %bb.en, label %bb.em, !prof !17

bb.em:                                            ; preds = %._crit_edge1861
  %i.agt = getelementptr inbounds nuw [16 x i8], ptr %i.afz, i64 %i.agb
  %i.agu = icmp samesign eq i64 %i.agr, %i.agb
  br i1 %i.agu, label %._crit_edge1869, label %.lr.ph1868.preheader

.lr.ph1868.preheader:                             ; preds = %bb.em
  %i.agv = getelementptr inbounds nuw [16 x i8], ptr %i.afz, i64 %i.agr
  br label %.lr.ph1868

bb.en:                                            ; preds = %._crit_edge1861
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.agr, i64 noundef %i.agb, i64 noundef %i.agb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15, !noalias !110
  unreachable

.lr.ph1868:                                       ; preds = %.lr.ph1868.preheader, %bb.eo
  %.sroa.040.0.i.i1866 = phi ptr [ %i.ahc, %bb.eo ], [ %i.agv, %.lr.ph1868.preheader ] ; 2 uses
  %.sroa.013.2.i.i1865 = phi i64 [ %i.ahd, %bb.eo ], [ %.sroa.013.1.i.i.lcssa, %.lr.ph1868.preheader ] ; 2 uses
  %.sroa.020.2.i.i1864 = phi i64 [ %i.ahb, %bb.eo ], [ %.sroa.020.1.i.i.lcssa, %.lr.ph1868.preheader ] ; 2 uses
  %i.agw = load <16 x i8>, ptr %.sroa.040.0.i.i1866, align 16, !noalias !110
  %i.agx = icmp slt <16 x i8> %i.agw, splat (i8 -64)
  %i.agy = zext <16 x i1> %i.agx to <16 x i8>
  %i.agz = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.agy, <16 x i8> zeroinitializer)
  %.neg1643 = add i64 %.sroa.020.2.i.i1864, 16
  %i.aha = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.agz)
  %i.ahb = sub i64 %.neg1643, %i.aha              ; 3 uses
  %.not52.i.i = icmp ult i64 %i.ahb, %i.aft
  br i1 %.not52.i.i, label %bb.eo, label %._crit_edge1869

bb.eo:                                            ; preds = %.lr.ph1868
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i.i1866, i64 16 ; 2 uses
  %i.ahd = add i64 %.sroa.013.2.i.i1865, 16       ; 2 uses
  %i.ahe = icmp eq ptr %i.ahc, %i.agt
  br i1 %i.ahe, label %._crit_edge1869, label %.lr.ph1868

._crit_edge1869:                                  ; preds = %bb.eo, %.lr.ph1868, %bb.em
  %.sroa.020.2.i.i.lcssa = phi i64 [ %.sroa.020.1.i.i.lcssa, %bb.em ], [ %.sroa.020.2.i.i1864, %.lr.ph1868 ], [ %i.ahb, %bb.eo ]
  %.sroa.013.2.i.i.lcssa = phi i64 [ %.sroa.013.1.i.i.lcssa, %bb.em ], [ %.sroa.013.2.i.i1865, %.lr.ph1868 ], [ %i.ahd, %bb.eo ] ; 5 uses
  %i.ahf = icmp ugt i64 %.sroa.013.2.i.i.lcssa, %i.afk
  br i1 %i.ahf, label %bb.eq, label %bb.ep, !prof !17

bb.ep:                                            ; preds = %._crit_edge1869
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.afi, i64 %i.afk
  %i.ahh = icmp samesign eq i64 %.sroa.013.2.i.i.lcssa, %i.afk
  br i1 %i.ahh, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit, label %.lr.ph1879.preheader

.lr.ph1879.preheader:                             ; preds = %bb.ep
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.afi, i64 %.sroa.013.2.i.i.lcssa
  br label %.lr.ph1879

bb.eq:                                            ; preds = %._crit_edge1869
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.afk, i64 noundef range(i64 0, -9223372036854775808) %i.afk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !110
  unreachable

.lr.ph1879:                                       ; preds = %.lr.ph1879.preheader, %bb.er
  %.sroa.036.0.i.i1877 = phi ptr [ %i.aho, %bb.er ], [ %i.ahi, %.lr.ph1879.preheader ] ; 2 uses
  %.sroa.013.3.i.i1876 = phi i64 [ %i.ahp, %bb.er ], [ %.sroa.013.2.i.i.lcssa, %.lr.ph1879.preheader ] ; 2 uses
  %.sroa.020.3.i.i1875 = phi i64 [ %i.ahm, %bb.er ], [ %.sroa.020.2.i.i.lcssa, %.lr.ph1879.preheader ]
  %i.ahj = load i8, ptr %.sroa.036.0.i.i1877, align 1, !alias.scope !111, !noalias !110, !noundef !8
  %i.ahk = icmp sgt i8 %i.ahj, -65
  %i.ahl = zext i1 %i.ahk to i64
  %i.ahm = add i64 %.sroa.020.3.i.i1875, %i.ahl   ; 2 uses
  %i.ahn = icmp ugt i64 %i.ahm, %i.aft
  br i1 %i.ahn, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit, label %bb.er

bb.er:                                            ; preds = %.lr.ph1879
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i.i1877, i64 1 ; 2 uses
  %i.ahp = add i64 %.sroa.013.3.i.i1876, 1
  %i.ahq = icmp eq ptr %i.aho, %i.ahg
  br i1 %i.ahq, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit, label %.lr.ph1879

.lr.ph1860:                                       ; preds = %._crit_edge1851, %.lr.ph1860
  %.sroa.5.0.i.i1858 = phi i64 [ %i.aio, %.lr.ph1860 ], [ %i.afx, %._crit_edge1851 ]
  %.sroa.020.1.i.i1857 = phi i64 [ %i.ain, %.lr.ph1860 ], [ %.sroa.020.0.i.i.lcssa, %._crit_edge1851 ]
  %.sroa.030.0.i.i1856 = phi ptr [ %i.ahr, %.lr.ph1860 ], [ %i.afz, %._crit_edge1851 ] ; 5 uses
  %.sroa.020.1.i.i1855 = phi i64 [ %i.ahs, %.lr.ph1860 ], [ %i.agq, %._crit_edge1851 ]
  %i.ahr = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i1856, i64 64
  %i.ahs = add i64 %.sroa.020.1.i.i1855, -4       ; 2 uses
  %i.aht = load <16 x i8>, ptr %.sroa.030.0.i.i1856, align 16, !noalias !110
  %i.ahu = icmp slt <16 x i8> %i.aht, splat (i8 -64)
  %i.ahv = zext <16 x i1> %i.ahu to <16 x i8>
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i1856, i64 16
  %i.ahx = load <16 x i8>, ptr %i.ahw, align 16, !noalias !110
  %i.ahy = icmp slt <16 x i8> %i.ahx, splat (i8 -64)
  %i.ahz = zext <16 x i1> %i.ahy to <16 x i8>
  %i.aia = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i1856, i64 32
  %i.aib = load <16 x i8>, ptr %i.aia, align 16, !noalias !110
  %i.aic = icmp slt <16 x i8> %i.aib, splat (i8 -64)
  %i.aid = zext <16 x i1> %i.aic to <16 x i8>
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i1856, i64 48
  %i.aif = load <16 x i8>, ptr %i.aie, align 16, !noalias !110
  %i.aig = icmp slt <16 x i8> %i.aif, splat (i8 -64)
  %i.aih = zext <16 x i1> %i.aig to <16 x i8>
  %i.aii = add nuw nsw <16 x i8> %i.ahz, %i.ahv
  %i.aij = add nuw nsw <16 x i8> %i.aii, %i.aid
  %i.aik = add nuw nsw <16 x i8> %i.aij, %i.aih
  %i.ail = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.aik, <16 x i8> zeroinitializer)
  %.neg1642 = add i64 %.sroa.020.1.i.i1857, 64
  %i.aim = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ail)
  %i.ain = sub i64 %.neg1642, %i.aim              ; 2 uses
  %i.aio = add i64 %.sroa.5.0.i.i1858, 64         ; 2 uses
  %.not51.i.i = icmp eq i64 %i.ahs, 0
  br i1 %.not51.i.i, label %._crit_edge1861, label %.lr.ph1860

bb.es:                                            ; preds = %.lr.ph2301
  %i.aip = add nuw nsw i64 %.sroa.8879.02298, 1
  %i.aiq = getelementptr inbounds nuw i8, ptr %.sroa.0877.02297, i64 1 ; 2 uses
  %i.air = icmp eq ptr %i.aiq, %i.age
  br i1 %i.air, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit, label %.lr.ph2301

.lr.ph2301:                                       ; preds = %bb.ek, %bb.es
  %.sroa.07.0.i.i2299 = phi i64 [ %i.aiv, %bb.es ], [ 0, %bb.ek ]
  %.sroa.8879.02298 = phi i64 [ %i.aip, %bb.es ], [ 0, %bb.ek ] ; 2 uses
  %.sroa.0877.02297 = phi ptr [ %i.aiq, %bb.es ], [ %i.afi, %bb.ek ] ; 2 uses
  %i.ais = load i8, ptr %.sroa.0877.02297, align 1, !noalias !110, !noundef !8
  %i.ait = icmp sgt i8 %i.ais, -65
  %i.aiu = zext i1 %i.ait to i64
  %i.aiv = add i64 %.sroa.07.0.i.i2299, %i.aiu    ; 2 uses
  %i.aiw = icmp ugt i64 %i.aiv, %i.aft
  br i1 %i.aiw, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit, label %bb.es

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info.exit: ; preds = %.lr.ph1850, %.lr.ph1879, %bb.er, %bb.es, %.lr.ph2301, %bb.ek, %bb.ep
  %.sroa.0.0.i.i = phi i64 [ %i.afk, %bb.ep ], [ %i.afk, %bb.ek ], [ %i.afk, %bb.er ], [ %.sroa.8879.02298, %.lr.ph2301 ], [ %i.afk, %bb.es ], [ %.sroa.013.3.i.i1876, %.lr.ph1879 ], [ %.sroa.013.0.i.i1848, %.lr.ph1850 ] ; 3 uses
  %i.aix = add i64 %.sroa.0.0.i.i, %i.afm
  %i.aiy = call noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils27byte_to_utf16_surrogate_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afi, i64 noundef %i.afk, i64 noundef %.sroa.0.0.i.i), !noalias !110
  %i.aiz = add i64 %i.aiy, %i.afq
  %i.aja = call fastcc noundef i64 @_RNvNtCsk17MtNlfUKQ_11str_indices5lines13from_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afi, i64 noundef %i.afk, i64 noundef %.sroa.0.0.i.i) #16, !noalias !110
  %i.ajb = add i64 %i.aja, %i.afs
  %i.ajc = load ptr, ptr %.sroa.0.01690, align 8, !nonnull !8, !noundef !8
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 16
  %i.aje = call noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13is_crlf_split(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ajd, i64 noundef %.sroa.023.01688)
  %i.ajf = zext i1 %i.aje to i64
  %spec.select1624 = add i64 %i.ajb, %i.ajf
  store ptr %.sroa.0.01690, ptr %0, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.afb, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.463.sroa.4.0..sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.014.01689, ptr %.sroa.463.sroa.4.0..sroa.463.0..sroa_idx.sroa_idx, align 8
  %.sroa.463.sroa.5.0..sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.afd, ptr %.sroa.463.sroa.5.0..sroa.463.0..sroa_idx.sroa_idx, align 8
  %.sroa.463.sroa.6.0..sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aff, ptr %.sroa.463.sroa.6.0..sroa.463.0..sroa_idx.sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aix, ptr %.sroa.564.0..sroa_idx, align 8
  br label %bb.ba

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit._crit_edge: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit
  %i.ajg = add nuw nsw i64 %.sroa.8.01679, 1
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.0.015691680, i64 32 ; 2 uses
  %i.aji = icmp eq ptr %i.ajh, %i.jt
  br i1 %i.aji, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit

bb.et:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit
  %i.ajj = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.jp) ; 2 uses
  %i.ajk = extractvalue { ptr, i64 } %i.ajj, 1    ; 2 uses
  %i.ajl = icmp ult i64 %.sroa.8.01679, %i.ajk
  br i1 %i.ajl, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ajm = extractvalue { ptr, i64 } %i.ajj, 0
  %i.ajn = sub i64 %.sroa.023.01688, %.sroa.052.01681 ; 2 uses
  %i.ajo = sub nuw i64 %.sroa.014.01689, %.sroa.052.01681 ; 2 uses
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %.sroa.8.01679 ; 2 uses
  %i.ajq = load ptr, ptr %i.ajp, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.ajs = load i8, ptr %i.ajr, align 8, !range !18, !noundef !8
  %i.ajt = trunc nuw i8 %i.ajs to i1
  br i1 %i.ajt, label %.lr.ph, label %._crit_edge

bb.ev:                                            ; preds = %bb.et
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.01679, i64 noundef %i.ajk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice19chunk_at_line_break(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs_NtCs2wCc12Mnjqg_5ropey5sliceNtB4_9RopeSlice23get_chunk_at_line_break(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, i64 noundef %2)
  %i.e = load ptr, ptr %i.c, align 8, !noundef !8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load ptr, ptr %1, align 8, !noundef !8
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8
  %i.l = sub i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8
  %storemerge.in = select i1 %i.g, i64 %i.n, i64 %i.l
  %storemerge = add i64 %storemerge.in, 1
  store i64 %storemerge, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice19new_with_byte_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %.not = icmp ugt i64 %2, %3
  br i1 %.not, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 9 uses
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.p)
  %i.q = load i64, ptr %i.n, align 8, !noundef !8
  %.not139 = icmp ugt i64 %3, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %.not139, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.p)
  %i.s = load i64, ptr %i.m, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.t = icmp eq i64 %3, %i.s
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = load i8, ptr %i.p, align 8, !range !18, !noundef !8
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.p, align 8, !range !18, !noundef !8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.p)
  %i.y = load i64, ptr %i.l, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.p)
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.p)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.p)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.af, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.427.0..sroa_idx, i8 0, i64 32, i1 false)
  store i64 %i.y, ptr %.sroa.528.0..sroa_idx, align 8
  br label %bb.bc

bb.j:                                             ; preds = %bb.h
  %i.ag = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.p) ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0      ; 15 uses
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1      ; 21 uses
  %i.aj = icmp samesign ult i64 %i.ai, 16
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !115
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.ai)
  %i.ak = load ptr, ptr %i.g, align 8, !noalias !115, !nonnull !8, !noundef !8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !115, !noundef !8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !115, !nonnull !8, !align !22, !noundef !8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !115, !noundef !8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !115, !nonnull !8, !noundef !8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.au = load i64, ptr %i.at, align 8, !noalias !115, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !115
  %i.av = icmp samesign eq i64 %i.am, 0
  br i1 %i.av, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.k
  %min.iters.check2016 = icmp ult i64 %i.am, 4
  br i1 %min.iters.check2016, label %.preheader.i.preheader2109, label %vector.ph2017

vector.ph2017:                                    ; preds = %.preheader.i.preheader
  %n.vec2018 = and i64 %i.am, -4                  ; 3 uses
  br label %vector.body2019

vector.body2019:                                  ; preds = %vector.body2019, %vector.ph2017
  %index2020 = phi i64 [ 0, %vector.ph2017 ], [ %index.next2025, %vector.body2019 ] ; 2 uses
  %vec.phi2021 = phi <2 x i64> [ zeroinitializer, %vector.ph2017 ], [ %i.bc, %vector.body2019 ]
  %vec.phi2022 = phi <2 x i64> [ zeroinitializer, %vector.ph2017 ], [ %i.bd, %vector.body2019 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index2020 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %wide.load2023 = load <2 x i8>, ptr %i.aw, align 1, !alias.scope !118
  %wide.load2024 = load <2 x i8>, ptr %i.ax, align 1, !alias.scope !118
  %i.ay = icmp slt <2 x i8> %wide.load2023, splat (i8 -64)
  %i.az = icmp slt <2 x i8> %wide.load2024, splat (i8 -64)
  %i.ba = zext <2 x i1> %i.ay to <2 x i64>
  %i.bb = zext <2 x i1> %i.az to <2 x i64>
  %i.bc = add <2 x i64> %vec.phi2021, %i.ba       ; 2 uses
  %i.bd = add <2 x i64> %vec.phi2022, %i.bb       ; 2 uses
  %index.next2025 = add nuw i64 %index2020, 4     ; 2 uses
  %i.be = icmp eq i64 %index.next2025, %n.vec2018
  br i1 %i.be, label %middle.block2026, label %vector.body2019, !llvm.loop !121

middle.block2026:                                 ; preds = %vector.body2019
  %bin.rdx2027 = add <2 x i64> %i.bd, %i.bc
  %i.bf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx2027) ; 2 uses
  %cmp.n2028 = icmp eq i64 %i.am, %n.vec2018
end_hunk_1
begin_hunk_2_@_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice19new_with_byte_range:bb.a
  %i.arb = icmp slt <16 x i8> %i.ara, splat (i8 -64)
  %i.arc = zext <16 x i1> %i.arb to <16 x i8>
  %i.ard = add <16 x i8> %i.aqy, %i.arc           ; 3 uses
  %prol.iter2197.next = add i64 %prol.iter2197, 1 ; 2 uses
  %prol.iter2197.cmp.not = icmp eq i64 %prol.iter2197.next, %xtraiter2195
  br i1 %prol.iter2197.cmp.not, label %.lr.ph196.i573.prol.loopexit, label %.lr.ph196.i573.prol, !llvm.loop !253

.lr.ph196.i573.prol.loopexit:                     ; preds = %.lr.ph196.i573.prol, %.lr.ph196.i573.preheader
  %.lcssa2118.unr = phi <16 x i8> [ poison, %.lr.ph196.i573.preheader ], [ %i.ard, %.lr.ph196.i573.prol ]
  %.sroa.012.0.i194.i574.unr = phi ptr [ %i.aqr, %.lr.ph196.i573.preheader ], [ %i.aqz, %.lr.ph196.i573.prol ]
  %.unr2198 = phi <16 x i8> [ zeroinitializer, %.lr.ph196.i573.preheader ], [ %i.ard, %.lr.ph196.i573.prol ]
  %i.are = icmp ult i64 %i.aqv, 48
  br i1 %i.are, label %._crit_edge197.i575, label %.lr.ph196.i573

.lr.ph196.i573:                                   ; preds = %.lr.ph196.i573.prol.loopexit, %.lr.ph196.i573
  %.sroa.012.0.i194.i574 = phi ptr [ %i.arv, %.lr.ph196.i573 ], [ %.sroa.012.0.i194.i574.unr, %.lr.ph196.i573.prol.loopexit ] ; 5 uses
  %i.arf = phi <16 x i8> [ %i.arz, %.lr.ph196.i573 ], [ %.unr2198, %.lr.ph196.i573.prol.loopexit ]
  %i.arg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i574, i64 16
  %i.arh = load <16 x i8>, ptr %.sroa.012.0.i194.i574, align 16, !noalias !241
  %i.ari = icmp slt <16 x i8> %i.arh, splat (i8 -64)
  %i.arj = zext <16 x i1> %i.ari to <16 x i8>
  %i.ark = add <16 x i8> %i.arf, %i.arj
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i574, i64 32
  %i.arm = load <16 x i8>, ptr %i.arg, align 16, !noalias !241
  %i.arn = icmp slt <16 x i8> %i.arm, splat (i8 -64)
  %i.aro = zext <16 x i1> %i.arn to <16 x i8>
  %i.arp = add <16 x i8> %i.ark, %i.aro
  %i.arq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i574, i64 48
  %i.arr = load <16 x i8>, ptr %i.arl, align 16, !noalias !241
  %i.ars = icmp slt <16 x i8> %i.arr, splat (i8 -64)
  %i.art = zext <16 x i1> %i.ars to <16 x i8>
  %i.aru = add <16 x i8> %i.arp, %i.art
  %i.arv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i574, i64 64 ; 2 uses
  %i.arw = load <16 x i8>, ptr %i.arq, align 16, !noalias !241
  %i.arx = icmp slt <16 x i8> %i.arw, splat (i8 -64)
  %i.ary = zext <16 x i1> %i.arx to <16 x i8>
  %i.arz = add <16 x i8> %i.aru, %i.ary           ; 2 uses
  %i.asa = icmp eq ptr %i.arv, %i.aqt
  br i1 %i.asa, label %._crit_edge197.i575, label %.lr.ph196.i573

._crit_edge197.i575:                              ; preds = %.lr.ph196.i573.prol.loopexit, %.lr.ph196.i573, %._crit_edge192.i570
  %.lcssa182.i576 = phi <16 x i8> [ zeroinitializer, %._crit_edge192.i570 ], [ %.lcssa2118.unr, %.lr.ph196.i573.prol.loopexit ], [ %i.arz, %.lr.ph196.i573 ]
  %i.asb = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa182.i576, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i.i577 = extractelement <2 x i64> %i.asb, i64 0
  %.sroa.0.8.vec.extract.i.i578 = extractelement <2 x i64> %i.asb, i64 1
  %i.asc = icmp samesign eq i64 %i.apb, 0
  br i1 %i.asc, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i583, label %.preheader.i50.i579.preheader

.preheader.i50.i579.preheader:                    ; preds = %._crit_edge197.i575
  %min.iters.check2000 = icmp ult i64 %i.apb, 4
  br i1 %min.iters.check2000, label %.preheader.i50.i579.preheader2114, label %vector.ph2001

vector.ph2001:                                    ; preds = %.preheader.i50.i579.preheader
  %n.vec2002 = and i64 %i.apb, -4                 ; 3 uses
  br label %vector.body2003

vector.body2003:                                  ; preds = %vector.body2003, %vector.ph2001
  %index2004 = phi i64 [ 0, %vector.ph2001 ], [ %index.next2009, %vector.body2003 ] ; 2 uses
  %vec.phi2005 = phi <2 x i64> [ zeroinitializer, %vector.ph2001 ], [ %i.asj, %vector.body2003 ]
  %vec.phi2006 = phi <2 x i64> [ zeroinitializer, %vector.ph2001 ], [ %i.ask, %vector.body2003 ]
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %index2004 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 2
  %wide.load2007 = load <2 x i8>, ptr %i.asd, align 1, !alias.scope !254, !noalias !241
  %wide.load2008 = load <2 x i8>, ptr %i.ase, align 1, !alias.scope !254, !noalias !241
  %i.asf = icmp slt <2 x i8> %wide.load2007, splat (i8 -64)
  %i.asg = icmp slt <2 x i8> %wide.load2008, splat (i8 -64)
  %i.ash = zext <2 x i1> %i.asf to <2 x i64>
  %i.asi = zext <2 x i1> %i.asg to <2 x i64>
  %i.asj = add <2 x i64> %vec.phi2005, %i.ash     ; 2 uses
  %i.ask = add <2 x i64> %vec.phi2006, %i.asi     ; 2 uses
  %index.next2009 = add nuw i64 %index2004, 4     ; 2 uses
  %i.asl = icmp eq i64 %index.next2009, %n.vec2002
  br i1 %i.asl, label %middle.block2010, label %vector.body2003, !llvm.loop !257

middle.block2010:                                 ; preds = %vector.body2003
  %bin.rdx2011 = add <2 x i64> %i.ask, %i.asj
  %i.asm = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx2011) ; 2 uses
  %cmp.n2012 = icmp eq i64 %i.apb, %n.vec2002
  br i1 %cmp.n2012, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i583, label %.preheader.i50.i579.preheader2114

.preheader.i50.i579.preheader2114:                ; preds = %.preheader.i50.i579.preheader, %middle.block2010
  %.sroa.04.0.i.i51.i580.ph = phi i64 [ 0, %.preheader.i50.i579.preheader ], [ %n.vec2002, %middle.block2010 ]
  %.sroa.02.0.i.i52.i581.ph = phi i64 [ 0, %.preheader.i50.i579.preheader ], [ %i.asm, %middle.block2010 ]
  br label %.preheader.i50.i579

.preheader.i50.i579:                              ; preds = %.preheader.i50.i579.preheader2114, %.preheader.i50.i579
  %.sroa.04.0.i.i51.i580 = phi i64 [ %i.asr, %.preheader.i50.i579 ], [ %.sroa.04.0.i.i51.i580.ph, %.preheader.i50.i579.preheader2114 ] ; 2 uses
  %.sroa.02.0.i.i52.i581 = phi i64 [ %i.asq, %.preheader.i50.i579 ], [ %.sroa.02.0.i.i52.i581.ph, %.preheader.i50.i579.preheader2114 ]
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %.sroa.04.0.i.i51.i580
  %.val.i.i53.i582 = load i8, ptr %i.asn, align 1, !alias.scope !254, !noalias !241, !noundef !8
  %i.aso = icmp slt i8 %.val.i.i53.i582, -64
  %i.asp = zext i1 %i.aso to i64
  %i.asq = add i64 %.sroa.02.0.i.i52.i581, %i.asp ; 2 uses
  %i.asr = add nuw i64 %.sroa.04.0.i.i51.i580, 1  ; 2 uses
  %i.ass = icmp eq i64 %i.asr, %i.apb
  br i1 %i.ass, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i583, label %.preheader.i50.i579, !llvm.loop !258

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i583: ; preds = %.preheader.i50.i579, %middle.block2010, %._crit_edge197.i575
  %.sroa.0.0.i.i54.i584 = phi i64 [ 0, %._crit_edge197.i575 ], [ %i.asm, %middle.block2010 ], [ %i.asq, %.preheader.i50.i579 ] ; 2 uses
  %i.ast = icmp ule i64 %.sroa.0.0.i.i54.i584, %i.apb
  call void @llvm.assume(i1 %i.ast), !noalias !241
  %i.asu = add i64 %.sroa.01.0.i.lcssa.i571, %.sroa.0.8.vec.extract.i.i578
  %i.asv = add i64 %i.asu, %.sroa.0.0.vec.extract.i.i577
  %i.asw = add i64 %i.asv, %.sroa.0.0.i.i54.i584
  %i.asx = sub i64 %..i.i555, %i.asw
  br label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592

.lr.ph191.i563:                                   ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i560, %.lr.ph191.i563
  %.sroa.01.0.i190.i564 = phi i64 [ %i.atu, %.lr.ph191.i563 ], [ %.sroa.0.0.i.i.i561, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i560 ]
  %.sroa.06.0.i189.i565 = phi ptr [ %i.asy, %.lr.ph191.i563 ], [ %i.aov, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i560 ] ; 5 uses
  %.sroa.5.0.i188.i566 = phi i64 [ %i.asz, %.lr.ph191.i563 ], [ %i.apu, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i560 ]
  %i.asy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i565, i64 64
  %i.asz = add i64 %.sroa.5.0.i188.i566, -4       ; 2 uses
  %i.ata = load <16 x i8>, ptr %.sroa.06.0.i189.i565, align 16, !noalias !241
  %i.atb = icmp slt <16 x i8> %i.ata, splat (i8 -64)
  %i.atc = zext <16 x i1> %i.atb to <16 x i8>
  %i.atd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i565, i64 16
  %i.ate = load <16 x i8>, ptr %i.atd, align 16, !noalias !241
  %i.atf = icmp slt <16 x i8> %i.ate, splat (i8 -64)
  %i.atg = zext <16 x i1> %i.atf to <16 x i8>
  %i.ath = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i565, i64 32
  %i.ati = load <16 x i8>, ptr %i.ath, align 16, !noalias !241
  %i.atj = icmp slt <16 x i8> %i.ati, splat (i8 -64)
  %i.atk = zext <16 x i1> %i.atj to <16 x i8>
  %i.atl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i565, i64 48
  %i.atm = load <16 x i8>, ptr %i.atl, align 16, !noalias !241
  %i.atn = icmp slt <16 x i8> %i.atm, splat (i8 -64)
  %i.ato = zext <16 x i1> %i.atn to <16 x i8>
  %i.atp = add nuw nsw <16 x i8> %i.atg, %i.atc
  %i.atq = add nuw nsw <16 x i8> %i.atp, %i.atk
  %i.atr = add nuw nsw <16 x i8> %i.atq, %i.ato
  %i.ats = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.atr, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i6.i567 = extractelement <2 x i64> %i.ats, i64 0
  %.sroa.0.8.vec.extract.i7.i568 = extractelement <2 x i64> %i.ats, i64 1
  %i.att = add i64 %.sroa.0.8.vec.extract.i7.i568, %.sroa.01.0.i190.i564
  %i.atu = add i64 %i.att, %.sroa.0.0.vec.extract.i6.i567 ; 2 uses
  %.not.i.i569 = icmp eq i64 %i.asz, 0
  br i1 %.not.i.i569, label %._crit_edge192.i570, label %.lr.ph191.i563

_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592.loopexit.unr-lcssa: ; preds = %.preheader.i586
  %lcmp.mod2201.not = icmp eq i64 %xtraiter2199, 0
  br i1 %lcmp.mod2201.not, label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592, label %.preheader.i586.epil.preheader

.preheader.i586.epil.preheader:                   ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592.loopexit.unr-lcssa, %.preheader.i586.preheader
  %.sroa.04.0.i.i587.epil.init = phi i64 [ 0, %.preheader.i586.preheader ], [ %i.aqq, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i588.epil.init = phi i64 [ 0, %.preheader.i586.preheader ], [ %i.aqp, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592.loopexit.unr-lcssa ]
  %lcmp.mod2203 = icmp ne i64 %xtraiter2199, 0
  call void @llvm.assume(i1 %lcmp.mod2203)
  br label %.preheader.i586.epil

.preheader.i586.epil:                             ; preds = %.preheader.i586.epil, %.preheader.i586.epil.preheader
  %.sroa.04.0.i.i587.epil = phi i64 [ %i.atz, %.preheader.i586.epil ], [ %.sroa.04.0.i.i587.epil.init, %.preheader.i586.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i588.epil = phi i64 [ %i.aty, %.preheader.i586.epil ], [ %.sroa.02.0.i.i588.epil.init, %.preheader.i586.epil.preheader ]
  %epil.iter2200 = phi i64 [ %epil.iter2200.next, %.preheader.i586.epil ], [ 0, %.preheader.i586.epil.preheader ]
  %i.atv = getelementptr inbounds nuw i8, ptr %i.any, i64 %.sroa.04.0.i.i587.epil
  %.val.i.i589.epil = load i8, ptr %i.atv, align 1, !alias.scope !242, !noalias !241, !noundef !8
  %i.atw = icmp sgt i8 %.val.i.i589.epil, -65
  %i.atx = zext i1 %i.atw to i64
  %i.aty = add i64 %.sroa.02.0.i.i588.epil, %i.atx ; 2 uses
  %i.atz = add nuw nsw i64 %.sroa.04.0.i.i587.epil, 1
  %epil.iter2200.next = add i64 %epil.iter2200, 1 ; 2 uses
  %epil.iter2200.cmp.not = icmp eq i64 %epil.iter2200.next, %xtraiter2199
  br i1 %epil.iter2200.cmp.not, label %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592, label %.preheader.i586.epil, !llvm.loop !259

_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592: ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592.loopexit.unr-lcssa, %.preheader.i586.epil, %bb.ea, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i583
  %.sroa.0.0.i.i585 = phi i64 [ %i.asx, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i583 ], [ 0, %bb.ea ], [ %i.aqp, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592.loopexit.unr-lcssa ], [ %i.aty, %.preheader.i586.epil ]
  %i.aua = add i64 %.sroa.0.0.i.i585, %i.aoe
  %i.aub = call noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils27byte_to_utf16_surrogate_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.any, i64 noundef %i.aoa, i64 noundef %i.aoj), !noalias !241
  %i.auc = add i64 %i.aub, %i.aog
  %i.aud = call fastcc noundef i64 @_RNvNtCsk17MtNlfUKQ_11str_indices5lines13from_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.any, i64 noundef %i.aoa, i64 noundef %i.aoj) #16, !noalias !241
  %i.aue = add i64 %i.aud, %i.aoi
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.01451, ptr %i.auf, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.037.01449, ptr %.sroa.4121.0..sroa_idx, align 8
  %.sroa.4121.sroa.4.0..sroa.4121.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.anr, ptr %.sroa.4121.sroa.4.0..sroa.4121.0..sroa_idx.sroa_idx, align 8
  %.sroa.4121.sroa.5.0..sroa.4121.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ant, ptr %.sroa.4121.sroa.5.0..sroa.4121.0..sroa_idx.sroa_idx, align 8
  %.sroa.4121.sroa.6.0..sroa.4121.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.anv, ptr %.sroa.4121.sroa.6.0..sroa.4121.0..sroa_idx.sroa_idx, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.060.01450, ptr %.sroa.5122.0..sroa_idx, align 8
  br label %bb.bc

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit._crit_edge: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit
  %i.aug = add nuw nsw i64 %.sroa.8.01440, 1
  %i.auh = getelementptr inbounds nuw i8, ptr %.sroa.0.013351441, i64 32 ; 2 uses
  %i.aui = icmp eq ptr %i.auh, %i.ph
  br i1 %i.aui, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit

bb.eb:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit
  %i.auj = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.pd) ; 2 uses
  %i.auk = extractvalue { ptr, i64 } %i.auj, 1    ; 2 uses
  %i.aul = icmp ult i64 %.sroa.8.01440, %i.auk
  br i1 %i.aul, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.aum = extractvalue { ptr, i64 } %i.auj, 0
  %i.aun = sub i64 %.sroa.060.01450, %.sroa.0101.01442 ; 2 uses
  %i.auo = sub nuw i64 %.sroa.037.01449, %.sroa.0101.01442 ; 2 uses
  %i.aup = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %.sroa.8.01440 ; 2 uses
  %i.auq = load ptr, ptr %i.aup, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 16
  %i.aus = load i8, ptr %i.aur, align 8, !range !18, !noundef !8
  %i.aut = trunc nuw i8 %i.aus to i1
  br i1 %i.aut, label %.lr.ph, label %._crit_edge

bb.ed:                                            ; preds = %bb.eb
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.01440, i64 noundef %i.auk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs2wCc12Mnjqg_5ropey5sliceNtB4_9RopeSlice17get_chunk_at_char(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !8   ; 2 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 4 uses
  %i.j = sub i64 %i.g, %i.i
  %.sroa.0.0 = select i1 %i.c, i64 %i.e, i64 %i.j
  %.not = icmp ugt i64 %2, %.sroa.0.0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.d:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  store ptr %i.l, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.54.0..sroa_idx, i8 0, i64 24, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !noundef !8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = add i64 %i.i, %2
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.s, i64 noundef %i.t)
  %i.u = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 %i.y) ; 6 uses
  %i.ae = sub i64 %i.q, %i.y                      ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.w) ; 4 uses
  %i.af = icmp ugt i64 %i.ad, %..i
  br i1 %i.af, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread11, label %bb.g, !prof !60

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp eq i64 %i.ad, %i.w
  br i1 %i.ag, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not13 = icmp ugt i64 %i.m, %i.y
  br i1 %.not13, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.not14 = icmp ugt i64 %i.w, %i.ae
  br i1 %.not14, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !260, !noundef !8
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %bb.i, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread11, !prof !64

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 %..i
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !260, !noundef !8
  %i.am = icmp sgt i8 %i.al, -65
  br i1 %i.am, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread11, !prof !65

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread11: ; preds = %bb.j, %bb.f, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, i64 noundef %i.ad, i64 noundef %..i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #15
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.i, %bb.g, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.an = sub nuw i64 %..i, %i.ad
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %i.y, i64 %i.m)
  %i.aq = tail call i64 @llvm.usub.sat.i64(i64 %i.aa, i64 %i.i)
  %i.ar = tail call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 %i.o)
  store ptr %i.ao, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ap, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aq, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ar, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs2wCc12Mnjqg_5ropey5sliceNtB4_9RopeSlice17try_chunk_at_byte(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !8   ; 2 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 6 uses
  %i.j = sub i64 %i.g, %i.i
  %.sroa.0.0 = select i1 %i.c, i64 %i.e, i64 %i.j ; 2 uses
  %.not = icmp ugt i64 %2, %.sroa.0.0
  %i.k = inttoptr i64 %i.i to ptr
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %bb.f

bb.d:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.54.0..sroa_idx, i8 0, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = add i64 %i.i, %2
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.p, i64 noundef %i.q)
  %i.r = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = tail call i64 @llvm.usub.sat.i64(i64 %i.i, i64 %i.v) ; 6 uses
  %i.ab = sub i64 %i.g, %i.v                      ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.t) ; 4 uses
  %i.ac = icmp ugt i64 %i.aa, %..i
  br i1 %i.ac, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread16, label %bb.g, !prof !60

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp eq i64 %i.aa, %i.t
  br i1 %i.ad, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not18 = icmp ugt i64 %i.i, %i.v
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.not19 = icmp ugt i64 %i.t, %i.ab
  br i1 %.not19, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread

end_hunk_2
begin_hunk_3_@_RNvXs6_NtCs2wCc12Mnjqg_5ropey5sliceNtB5_9RopeSliceNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit78: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit78
  %.sroa.0.1 = phi i1 [ %.sroa.0.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit78 ], [ false, %bb.a ]
  ret i1 %.sroa.0.1

bb.ai:                                            ; preds = %bb.j, %.body
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsh_NtCs2wCc12Mnjqg_5ropey5sliceNtB5_9RopeSliceNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 23 uses
  %i.d = alloca [48 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !316, !noalias !313, !noundef !8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !316, !noalias !313, !noundef !8 ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !316, !noalias !313, !nonnull !8, !noundef !8 ; 2 uses
  store i64 -1, ptr %i.d, align 8, !alias.scope !313, !noalias !316
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !313, !noalias !316
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !313, !noalias !316
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !313, !noalias !316
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 0, ptr %i.k, align 8, !alias.scope !313, !noalias !316
  %i.l = ptrtoint ptr %i.j to i64
  br label %_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.g, align 8, !alias.scope !316, !noalias !313, !noundef !8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !316, !noalias !313, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !316, !noalias !313, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !316, !noalias !313, !noundef !8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !316, !noalias !313, !noundef !8
  %i.v = add i64 %i.u, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !318
  call void @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_byte(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i64 noundef %i.m, i64 noundef %i.m, i64 noundef %i.q, i64 noundef %i.i, i64 noundef %i.s, i64 noundef %i.o, i64 noundef %i.v), !noalias !318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !318
  br label %_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks.exit

_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks.exit: ; preds = %bb.b, %bb.c
  %i.w = phi i64 [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !322, !noalias !319, !noundef !8 ; 2 uses
  %i.y = icmp eq ptr %i.x, null                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !322, !noalias !319, !noundef !8 ; 3 uses
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks.exit
  %i.ac = load ptr, ptr %i.z, align 8, !alias.scope !322, !noalias !319, !nonnull !8, !noundef !8 ; 2 uses
  store i64 -1, ptr %i.c, align 8, !alias.scope !319, !noalias !322
  %.sroa.4.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i89, align 8, !alias.scope !319, !noalias !322
  %.sroa.5.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ab, ptr %.sroa.5.0..sroa_idx.i90, align 8, !alias.scope !319, !noalias !322
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 0, ptr %.sroa.6.0..sroa_idx.i91, align 8, !alias.scope !319, !noalias !322
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 0, ptr %i.ad, align 8, !alias.scope !319, !noalias !322
  %i.ae = ptrtoint ptr %i.ac to i64
  br label %_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks.exit92

bb.e:                                             ; preds = %_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks.exit
  %i.af = load i64, ptr %i.z, align 8, !alias.scope !322, !noalias !319, !noundef !8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !322, !noalias !319, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !322, !noalias !319, !noundef !8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !322, !noalias !319, !noundef !8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !322, !noalias !319, !noundef !8
  %i.ao = add i64 %i.an, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !324
  invoke void @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_byte(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, i64 noundef %i.af, i64 noundef %i.af, i64 noundef %i.aj, i64 noundef %i.ab, i64 noundef %i.al, i64 noundef %i.ah, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !324
  br label %_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks.exit92

.body:                                            ; preds = %bb.ae, %bb.r, %bb.f, %bb.i
  %.pn86 = phi { ptr, i32 } [ %lpad.phi, %bb.i ], [ %i.bh, %bb.r ], [ %i.ap, %bb.f ], [ %i.ca, %bb.ae ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #17
          to label %common.resume unwind label %bb.am

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i96, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks.exit92: ; preds = %.noexc, %bb.d
  %i.aq = phi i64 [ %i.af, %.noexc ], [ %i.ae, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !18, !noundef !8
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks.exit92
  %i.au = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.j unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks.exit92
  %i.av = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.j unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.v, %bb.w, %bb.y, %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.g, %bb.h, %bb.k, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #17
          to label %.body unwind label %bb.am

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i64 } [ %i.au, %bb.g ], [ %i.av, %bb.h ] ; 2 uses
  %.sroa.07.0 = extractvalue { ptr, i64 } %.pn, 0 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, null           ; 2 uses
  %.sroa.6.0 = extractvalue { ptr, i64 } %.pn, 1
  %.sroa.3.0 = select i1 %.not, i64 0, i64 %.sroa.6.0
  %.sroa.06.0 = select i1 %.not, ptr inttoptr (i64 1 to ptr), ptr %.sroa.07.0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !range !18, !noundef !8
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.m unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  %i.ba = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn74 = phi { ptr, i64 } [ %i.az, %bb.k ], [ %i.ba, %bb.l ] ; 2 uses
  %.sroa.012.0 = extractvalue { ptr, i64 } %.pn74, 0 ; 2 uses
  %.not76 = icmp eq ptr %.sroa.012.0, null        ; 2 uses
  %.sroa.614.0 = extractvalue { ptr, i64 } %.pn74, 1
  %.sroa.311.0 = select i1 %.not76, i64 0, i64 %.sroa.614.0
  %.sroa.010.0 = select i1 %.not76, ptr inttoptr (i64 1 to ptr), ptr %.sroa.012.0
  br label %bb.n

bb.n:                                             ; preds = %.backedge, %bb.m
  %.sroa.1246.0 = phi i64 [ %.sroa.311.0, %bb.m ], [ %.sroa.1246.0.be, %.backedge ] ; 5 uses
  %.sroa.038.0 = phi ptr [ %.sroa.010.0, %bb.m ], [ %.sroa.038.0.be, %.backedge ] ; 3 uses
  %.sroa.12.0 = phi i64 [ %.sroa.3.0, %bb.m ], [ %.sroa.12.0.be, %.backedge ] ; 3 uses
  %.sroa.023.0 = phi ptr [ %.sroa.06.0, %bb.m ], [ %.sroa.023.0.be, %.backedge ] ; 4 uses
  %.not77 = icmp ult i64 %.sroa.12.0, %.sroa.1246.0
  br i1 %.not77, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bb = call i32 @memcmp(ptr %.sroa.023.0, ptr %.sroa.038.0, i64 %.sroa.12.0) ; 2 uses
  %.not78 = icmp eq i32 %i.bb, 0
  br i1 %.not78, label %.thread, label %.split.loop.exit

bb.p:                                             ; preds = %bb.t
  %i.bc = sub nuw i64 %.sroa.12.0, %.sroa.1246.0  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 %.sroa.1246.0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.023.0) ]
  %i.be = icmp eq i64 %i.bc, 0
  br i1 %i.be, label %.thread, label %.thread117

.split.loop.exit:                                 ; preds = %bb.o, %bb.t
  %.lcssa135.sink = phi i32 [ %i.bj, %bb.t ], [ %i.bb, %bb.o ]
  %i.bf = call i8 @llvm.scmp.i8.i32(i32 %.lcssa135.sink, i32 0) ; 2 uses
  %i.bg = load i64, ptr %i.c, align 8, !range !4, !alias.scope !325, !noundef !8
  %.not.i.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit, label %bb.q

bb.q:                                             ; preds = %.split.loop.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit unwind label %bb.f

bb.t:                                             ; preds = %bb.n
  %i.bj = call i32 @memcmp(ptr %.sroa.023.0, ptr %.sroa.038.0, i64 %.sroa.1246.0) ; 2 uses
  %.not79 = icmp eq i32 %i.bj, 0
  br i1 %.not79, label %bb.p, label %.split.loop.exit

.thread:                                          ; preds = %bb.o, %bb.p
  %.sroa.038.1116 = phi ptr [ inttoptr (i64 1 to ptr), %bb.p ], [ %.sroa.038.0, %bb.o ]
  %.sroa.1246.1114 = phi i64 [ 0, %bb.p ], [ %.sroa.1246.0, %bb.o ] ; 2 uses
  %i.bk = load i8, ptr %i.ar, align 8, !range !18, !noundef !8
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.x
  %.sroa.7.0 = extractvalue { ptr, i64 } %.pn80, 1 ; 2 uses
  %i.bm = icmp eq i64 %.sroa.1246.1114, 0
  br i1 %i.bm, label %.thread117, label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.ab
  %.sroa.1246.0.be = phi i64 [ %.sroa.759.0, %bb.ab ], [ %.sroa.1246.1114, %bb.u ]
  %.sroa.038.0.be = phi ptr [ %.sroa.057.0, %bb.ab ], [ %.sroa.038.1116, %bb.u ]
  %.sroa.12.0.be = phi i64 [ %.sroa.12.2123, %bb.ab ], [ %.sroa.7.0, %bb.u ]
  %.sroa.023.0.be = phi ptr [ %.sroa.023.2125, %bb.ab ], [ %.sroa.054.0, %bb.u ]
  br label %bb.n

bb.v:                                             ; preds = %.thread
  %i.bn = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.x unwind label %.loopexit

bb.w:                                             ; preds = %.thread
  %i.bo = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn80 = phi { ptr, i64 } [ %i.bn, %bb.v ], [ %i.bo, %bb.w ] ; 2 uses
  %.sroa.054.0 = extractvalue { ptr, i64 } %.pn80, 0 ; 3 uses
  %.not82 = icmp eq ptr %.sroa.054.0, null
  br i1 %.not82, label %bb.ac, label %bb.u

.thread117:                                       ; preds = %bb.p, %bb.u
  %.sroa.023.2125 = phi ptr [ %.sroa.054.0, %bb.u ], [ %i.bd, %bb.p ]
  %.sroa.12.2123 = phi i64 [ %.sroa.7.0, %bb.u ], [ %i.bc, %bb.p ]
  %i.bp = load i8, ptr %i.aw, align 8, !range !18, !noundef !8
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread117
  %i.br = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.aa unwind label %.loopexit

bb.z:                                             ; preds = %.thread117
  %i.bs = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn83 = phi { ptr, i64 } [ %i.br, %bb.y ], [ %i.bs, %bb.z ] ; 2 uses
  %.sroa.057.0 = extractvalue { ptr, i64 } %.pn83, 0 ; 2 uses
  %.not85 = icmp eq ptr %.sroa.057.0, null
  br i1 %.not85, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.759.0 = extractvalue { ptr, i64 } %.pn83, 1
  br label %.backedge

bb.ac:                                            ; preds = %bb.aa, %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = sub i64 %i.bu, %i.w
  %.sroa.061.0 = select i1 %i.f, i64 %i.i, i64 %i.bv
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = sub i64 %i.bx, %i.aq
  %.sroa.062.0 = select i1 %i.y, i64 %i.ab, i64 %i.by
  %i.bz = load i64, ptr %i.c, align 8, !range !4, !alias.scope !330, !noundef !8
  %.not.i.i94 = icmp eq i64 %i.bz, -1
  br i1 %.not.i.i94, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit100, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i96 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.body unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i96: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit100 unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit100: ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i96
  %i.cc = call i8 @llvm.ucmp.i8.i64(i64 %.sroa.061.0, i64 %.sroa.062.0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cd = load i64, ptr %i.d, align 8, !range !4, !alias.scope !335, !noundef !8
  %.not.i.i101 = icmp eq i64 %i.cd, -1
  br i1 %.not.i.i101, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit108, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit100
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit108.sink.split unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %.body, %bb.ak, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.ch, %bb.ak ], [ %i.ce, %bb.ah ], [ %.pn86, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit108.sink.split: ; preds = %bb.ag, %bb.aj
  %.sroa.0.1.ph = phi i8 [ %i.bf, %bb.aj ], [ %i.cc, %bb.ag ]
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit108

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit108: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit108.sink.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit100, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit
  %.sroa.0.1 = phi i8 [ %i.cc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit100 ], [ %i.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit ], [ %.sroa.0.1.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit108.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i8 %.sroa.0.1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit: ; preds = %.split.loop.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cg = load i64, ptr %i.d, align 8, !range !4, !alias.scope !340, !noundef !8
  %.not.i.i105 = icmp eq i64 %i.cg, -1
  br i1 %.not.i.i105, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit108, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit108.sink.split unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.am:                                            ; preds = %bb.i, %.body
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1000)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13is_crlf_split(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16is_char_boundary(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_byte(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs2wCc12Mnjqg_5ropeyNtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils27byte_to_utf16_surrogate_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node23get_chunk_at_line_break(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesReNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEB19_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noinline noreturn }
attributes #16 = { inlinehint }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_: argument 0"}
!7 = distinct !{!7, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_"}
!8 = !{}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultTRejjjENtCs2wCc12Mnjqg_5ropey5ErrorE6unwrapBQ_: argument 0"}
!11 = distinct !{!11, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultTRejjjENtCs2wCc12Mnjqg_5ropey5ErrorE6unwrapBQ_"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultTRejjjENtCs2wCc12Mnjqg_5ropey5ErrorE6unwrapBQ_: argument 1"}
!14 = !{i64 -1, i64 10}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!10, !13}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{i8 0, i8 2}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!21 = distinct !{!21, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!22 = !{i64 16}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !25, !24}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 1"}
!29 = distinct !{!29, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand"}
!30 = !{!31, !32}
!31 = distinct !{!31, !29, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 0"}
!32 = distinct !{!32, !29, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 2"}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !24, !25}
!36 = distinct !{!36, !25, !24}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!39 = distinct !{!39, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!40 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 1"}
!43 = distinct !{!43, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!48 = distinct !{!48, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!51 = distinct !{!51, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!52 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!55 = distinct !{!55, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!56 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!59 = distinct !{!59, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!60 = !{!"branch_weights", i32 1073205, i32 2146410443}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!63 = distinct !{!63, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!64 = !{!"branch_weights", i32 2146410443, i32 1073205}
!65 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!68 = distinct !{!68, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!71 = distinct !{!71, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!72 = distinct !{!72, !24, !25}
!73 = distinct !{!73, !25, !24}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 1"}
!76 = distinct !{!76, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand"}
!77 = !{!78, !79}
!78 = distinct !{!78, !76, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 0"}
!79 = distinct !{!79, !76, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 2"}
!80 = distinct !{!80, !34}
!81 = distinct !{!81, !24, !25}
!82 = distinct !{!82, !25, !24}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!85 = distinct !{!85, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!88 = distinct !{!88, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 1"}
!91 = distinct !{!91, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!96 = distinct !{!96, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info: argument 0"}
!99 = distinct !{!99, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info"}
!100 = distinct !{!100, !99, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info: argument 1"}
!101 = !{!98}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!104 = distinct !{!104, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!105 = !{!103, !98, !100}
!106 = !{!107, !109}
!107 = distinct !{!107, !108, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info: argument 0"}
!108 = distinct !{!108, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info"}
!109 = distinct !{!109, !108, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info: argument 1"}
!110 = !{!107}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!113 = distinct !{!113, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!114 = !{!112, !107, !109}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!117 = distinct !{!117, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!120 = distinct !{!120, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey"}
!121 = distinct !{!121, !24, !25}
!122 = distinct !{!122, !25, !24}
!123 = distinct !{!123, !34}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!126 = distinct !{!126, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey"}
!127 = distinct !{!127, !24, !25}
!128 = distinct !{!128, !25, !24}
!129 = distinct !{!129, !34}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!132 = distinct !{!132, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!133 = distinct !{!133, !24, !25}
!134 = distinct !{!134, !25, !24}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 1"}
!137 = distinct !{!137, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand"}
!138 = !{!139, !140}
!139 = distinct !{!139, !137, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 0"}
!140 = distinct !{!140, !137, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 2"}
!141 = distinct !{!141, !34}
!142 = distinct !{!142, !24, !25}
!143 = distinct !{!143, !25, !24}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!146 = distinct !{!146, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!147 = !{!"branch_weights", !"expected", i32 2145370260, i32 2113388}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 1"}
!150 = distinct !{!150, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!155 = distinct !{!155, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!158 = distinct !{!158, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!159 = !{!"branch_weights", !"expected", i32 2146658011, i32 825637}
!160 = !{!"branch_weights", i32 825637, i32 2146658011}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!163 = distinct !{!163, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!164 = !{!"branch_weights", i32 2146658011, i32 825637}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!167 = distinct !{!167, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!170 = distinct !{!170, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!173 = distinct !{!173, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey"}
!174 = distinct !{!174, !24, !25}
!175 = distinct !{!175, !25, !24}
end_hunk_3
