Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512vnni?download=true
inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %bc.merge.rdx11450 = phi i32 [ %i.mha, %vec.epilog.iter.check11453 ], [ %.225209564.us, %vector.main.loop.iter.check11424 ]
  %i.mhb = getelementptr i8, ptr %.69565.us, i64 %n.vec11456
  %i.mhc = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx11450, i64 0
  br label %vec.epilog.vector.body11457

vec.epilog.vector.body11457:                      ; preds = %vec.epilog.vector.body11457, %vec.epilog.ph11455
  %index11458 = phi i64 [ %vec.epilog.resume.val11449, %vec.epilog.ph11455 ], [ %index.next11463, %vec.epilog.vector.body11457 ] ; 3 uses
  %vec.phi11459 = phi <16 x i32> [ %i.mhc, %vec.epilog.ph11455 ], [ %i.mju, %vec.epilog.vector.body11457 ]
  %next.gep11460 = getelementptr i8, ptr %.69565.us, i64 %index11458
  %i.mhd = getelementptr inbounds nuw [4 x i8], ptr %i.lvw, i64 %index11458
  %wide.load11461 = load <16 x i32>, ptr %i.mhd, align 4, !tbaa !9
  %i.mhe = sext <16 x i32> %wide.load11461 to <16 x i64> ; 16 uses
  %i.mhf = extractelement <16 x i64> %i.mhe, i64 0
  %i.mhg = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhf
  %i.mhh = extractelement <16 x i64> %i.mhe, i64 1
  %i.mhi = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhh
  %i.mhj = extractelement <16 x i64> %i.mhe, i64 2
  %i.mhk = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhj
  %i.mhl = extractelement <16 x i64> %i.mhe, i64 3
  %i.mhm = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhl
  %i.mhn = extractelement <16 x i64> %i.mhe, i64 4
  %i.mho = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhn
  %i.mhp = extractelement <16 x i64> %i.mhe, i64 5
  %i.mhq = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhp
  %i.mhr = extractelement <16 x i64> %i.mhe, i64 6
  %i.mhs = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhr
  %i.mht = extractelement <16 x i64> %i.mhe, i64 7
  %i.mhu = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mht
  %i.mhv = extractelement <16 x i64> %i.mhe, i64 8
  %i.mhw = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhv
  %i.mhx = extractelement <16 x i64> %i.mhe, i64 9
  %i.mhy = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhx
  %i.mhz = extractelement <16 x i64> %i.mhe, i64 10
  %i.mia = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhz
  %i.mib = extractelement <16 x i64> %i.mhe, i64 11
  %i.mic = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mib
  %i.mid = extractelement <16 x i64> %i.mhe, i64 12
  %i.mie = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mid
  %i.mif = extractelement <16 x i64> %i.mhe, i64 13
  %i.mig = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mif
  %i.mih = extractelement <16 x i64> %i.mhe, i64 14
  %i.mii = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mih
  %i.mij = extractelement <16 x i64> %i.mhe, i64 15
  %i.mik = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mij
  %i.mil = load i8, ptr %i.mhg, align 1, !tbaa !44
  %i.mim = load i8, ptr %i.mhi, align 1, !tbaa !44
  %i.min = load i8, ptr %i.mhk, align 1, !tbaa !44
  %i.mio = load i8, ptr %i.mhm, align 1, !tbaa !44
  %i.mip = load i8, ptr %i.mho, align 1, !tbaa !44
  %i.miq = load i8, ptr %i.mhq, align 1, !tbaa !44
  %i.mir = load i8, ptr %i.mhs, align 1, !tbaa !44
  %i.mis = load i8, ptr %i.mhu, align 1, !tbaa !44
  %i.mit = load i8, ptr %i.mhw, align 1, !tbaa !44
  %i.miu = load i8, ptr %i.mhy, align 1, !tbaa !44
  %i.miv = load i8, ptr %i.mia, align 1, !tbaa !44
  %i.miw = load i8, ptr %i.mic, align 1, !tbaa !44
  %i.mix = load i8, ptr %i.mie, align 1, !tbaa !44
  %i.miy = load i8, ptr %i.mig, align 1, !tbaa !44
  %i.miz = load i8, ptr %i.mii, align 1, !tbaa !44
  %i.mja = load i8, ptr %i.mik, align 1, !tbaa !44
  %i.mjb = insertelement <16 x i8> poison, i8 %i.mil, i64 0
  %i.mjc = insertelement <16 x i8> %i.mjb, i8 %i.mim, i64 1
  %i.mjd = insertelement <16 x i8> %i.mjc, i8 %i.min, i64 2
  %i.mje = insertelement <16 x i8> %i.mjd, i8 %i.mio, i64 3
  %i.mjf = insertelement <16 x i8> %i.mje, i8 %i.mip, i64 4
  %i.mjg = insertelement <16 x i8> %i.mjf, i8 %i.miq, i64 5
  %i.mjh = insertelement <16 x i8> %i.mjg, i8 %i.mir, i64 6
  %i.mji = insertelement <16 x i8> %i.mjh, i8 %i.mis, i64 7
  %i.mjj = insertelement <16 x i8> %i.mji, i8 %i.mit, i64 8
  %i.mjk = insertelement <16 x i8> %i.mjj, i8 %i.miu, i64 9
  %i.mjl = insertelement <16 x i8> %i.mjk, i8 %i.miv, i64 10
  %i.mjm = insertelement <16 x i8> %i.mjl, i8 %i.miw, i64 11
  %i.mjn = insertelement <16 x i8> %i.mjm, i8 %i.mix, i64 12
  %i.mjo = insertelement <16 x i8> %i.mjn, i8 %i.miy, i64 13
  %i.mjp = insertelement <16 x i8> %i.mjo, i8 %i.miz, i64 14
  %i.mjq = insertelement <16 x i8> %i.mjp, i8 %i.mja, i64 15
  %i.mjr = sext <16 x i8> %i.mjq to <16 x i32>
  %wide.load11462 = load <16 x i8>, ptr %next.gep11460, align 1, !tbaa !44
  %i.mjs = sext <16 x i8> %wide.load11462 to <16 x i32>
  %i.mjt = mul nsw <16 x i32> %i.mjs, %i.mjr
  %i.mju = add <16 x i32> %i.mjt, %vec.phi11459   ; 2 uses
  %index.next11463 = add nuw i64 %index11458, 16  ; 2 uses
  %i.mjv = icmp eq i64 %index.next11463, %n.vec11456
  br i1 %i.mjv, label %vec.epilog.middle.block11464, label %vec.epilog.vector.body11457, !llvm.loop !353

vec.epilog.middle.block11464:                     ; preds = %vec.epilog.vector.body11457
  %i.mjw = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.mju) ; 2 uses
  br i1 %cmp.n11465, label %._crit_edge9561.us, label %vec.epilog.scalar.ph11452.preheader

vec.epilog.scalar.ph11452.preheader:              ; preds = %iter.check11451, %vec.epilog.iter.check11453, %vec.epilog.middle.block11464
  %indvars.iv10549.ph = phi i64 [ 0, %iter.check11451 ], [ %n.vec11427, %vec.epilog.iter.check11453 ], [ %n.vec11456, %vec.epilog.middle.block11464 ]
  %.79558.us.ph = phi ptr [ %.69565.us, %iter.check11451 ], [ %i.lwa, %vec.epilog.iter.check11453 ], [ %i.mhb, %vec.epilog.middle.block11464 ]
  %.325219557.us.ph = phi i32 [ %.225209564.us, %iter.check11451 ], [ %i.mha, %vec.epilog.iter.check11453 ], [ %i.mjw, %vec.epilog.middle.block11464 ]
  br label %vec.epilog.scalar.ph11452

vec.epilog.scalar.ph11452:                        ; preds = %vec.epilog.scalar.ph11452.preheader, %vec.epilog.scalar.ph11452
  %indvars.iv10549 = phi i64 [ %indvars.iv.next10550, %vec.epilog.scalar.ph11452 ], [ %indvars.iv10549.ph, %vec.epilog.scalar.ph11452.preheader ] ; 2 uses
  %.79558.us = phi ptr [ %i.mkh, %vec.epilog.scalar.ph11452 ], [ %.79558.us.ph, %vec.epilog.scalar.ph11452.preheader ] ; 2 uses
  %.325219557.us = phi i32 [ %i.mkg, %vec.epilog.scalar.ph11452 ], [ %.325219557.us.ph, %vec.epilog.scalar.ph11452.preheader ]
  %i.mjx = getelementptr inbounds nuw [4 x i8], ptr %i.lvw, i64 %indvars.iv10549
  %i.mjy = load i32, ptr %i.mjx, align 4, !tbaa !9
  %i.mjz = sext i32 %i.mjy to i64
  %i.mka = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mjz
  %i.mkb = load i8, ptr %i.mka, align 1, !tbaa !44
  %i.mkc = sext i8 %i.mkb to i32
  %i.mkd = load i8, ptr %.79558.us, align 1, !tbaa !44
  %i.mke = sext i8 %i.mkd to i32
  %i.mkf = mul nsw i32 %i.mke, %i.mkc
  %i.mkg = add nsw i32 %i.mkf, %.325219557.us     ; 2 uses
  %i.mkh = getelementptr inbounds nuw i8, ptr %.79558.us, i64 1
  %indvars.iv.next10550 = add nuw nsw i64 %indvars.iv10549, 1 ; 2 uses
  %exitcond10555.not = icmp eq i64 %indvars.iv.next10550, %wide.trip.count10554
  br i1 %exitcond10555.not, label %._crit_edge9561.us, label %vec.epilog.scalar.ph11452, !llvm.loop !354

._crit_edge9561.us:                               ; preds = %vec.epilog.scalar.ph11452, %vec.epilog.middle.block11464, %middle.block11444
  %.lcssa10980 = phi i32 [ %i.mjw, %vec.epilog.middle.block11464 ], [ %i.mha, %middle.block11444 ], [ %i.mkg, %vec.epilog.scalar.ph11452 ] ; 2 uses
  %i.mki = getelementptr i8, ptr %.69565.us, i64 %i.lvy
  %indvars.iv.next10557 = add nuw nsw i64 %indvars.iv10556, 1 ; 2 uses
  %i.mkj = trunc nuw i64 %indvars.iv.next10557 to i32
  %i.mkk = icmp sgt i32 %i.kxk, %i.mkj
  br i1 %i.mkk, label %iter.check11451, label %._crit_edge9567, !llvm.loop !355

._crit_edge9567:                                  ; preds = %._crit_edge9561.us, %.noexc3402.lr.ph, %.preheader
  %.22520.lcssa = phi i32 [ %.02518.lcssa, %.preheader ], [ %.02518.lcssa, %.noexc3402.lr.ph ], [ %.lcssa10980, %._crit_edge9561.us ]
  store i32 %.22520.lcssa, ptr %.227909575, align 4, !tbaa !9
  %i.mkl = getelementptr inbounds nuw i8, ptr %.227909575, i64 4
  %i.mkm = add nuw nsw i32 %.227879576, 1         ; 2 uses
  %exitcond10559.not = icmp eq i32 %i.mkm, %i.dny
  br i1 %exitcond10559.not, label %._crit_edge9577, label %.noexc3409, !llvm.loop !356

._crit_edge9577:                                  ; preds = %._crit_edge9567, %.preheader7702
  %indvars.iv.next10561 = add nsw i64 %indvars.iv10560, 1 ; 2 uses
  %i.mkn = icmp slt i64 %indvars.iv.next10561, %i.dol
  br i1 %i.mkn, label %.noexc, label %._crit_edge9579, !llvm.loop !357
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not2585 = icmp sgt i32 %i.k, %i.j
  br i1 %.not2585, label %._crit_edge2587, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.u = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge2584
  %indvars.iv2796 = phi i64 [ %i.u, %.noexc.lr.ph ], [ %indvars.iv.next2797, %._crit_edge2584 ] ; 6 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !10   ; 15 uses
  %i.w = load i32, ptr %i.m, align 8, !tbaa !19
  %i.x = load i64, ptr %i.n, align 8, !tbaa !18
  %i.y = load i32, ptr %5, align 4, !tbaa !9
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.x, %i.z                      ; 19 uses
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !18  ; 2 uses
  %i.ac = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul i64 %i.ab, %i.ad                    ; 15 uses
  %indvars.iv2796.tr = trunc i64 %indvars.iv2796 to i32
  %i.af = shl nsw i32 %indvars.iv2796.tr, 4
  %i.ag = sdiv i32 %i.af, %i.ac
  %i.ah = load ptr, ptr %3, align 8, !tbaa !32, !noalias !358
  %i.ai = sext i32 %i.ag to i64
  %i.aj = mul i64 %i.ab, %i.ai
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !36, !noalias !358
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = mul nsw i32 %i.w, %i.v                  ; 6 uses
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %.noexc889.lr.ph, label %.preheader2147

.noexc889.lr.ph:                                  ; preds = %.noexc
  %i.ap = trunc i64 %i.aa to i32                  ; 2 uses
  %i.aq = insertelement <16 x i32> poison, i32 %i.ap, i64 0
  %i.ar = shufflevector <16 x i32> %i.aq, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.as = mul <16 x i32> %i.ar, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.at = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %i.au = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.av = mul <8 x i32> %i.au, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %.idx797 = shl i64 %i.ae, 3
  %.idx798 = mul i64 %i.ae, 12
  %i.aw = trunc i64 %i.ae to i32
  %i.ax = insertelement <16 x i32> poison, i32 %i.aw, i64 0
  %i.ay = shufflevector <16 x i32> %i.ax, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.az = mul <16 x i32> %i.ay, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  br label %.noexc889

.preheader2147:                                   ; preds = %bb.q, %.noexc
  %.0769.lcssa = phi i32 [ 0, %.noexc ], [ %i.ace, %bb.q ] ; 3 uses
  %.0761.lcssa = phi ptr [ %i.am, %.noexc ], [ %.4765, %bb.q ] ; 2 uses
  %i.ba = or disjoint i32 %.0769.lcssa, 1         ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.an
  br i1 %i.bb, label %.noexc855.lr.ph, label %.preheader2146

.noexc855.lr.ph:                                  ; preds = %.preheader2147
  %i.bc = trunc i64 %i.aa to i32                  ; 2 uses
  %i.bd = insertelement <16 x i32> poison, i32 %i.bc, i64 0
  %i.be = shufflevector <16 x i32> %i.bd, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bf = mul <16 x i32> %i.be, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bg = insertelement <8 x i32> poison, i32 %i.bc, i64 0
  %i.bh = shufflevector <8 x i32> %i.bg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bi = mul <8 x i32> %i.bh, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.idx795 = shl i64 %i.ae, 3
  %.idx796 = mul i64 %i.ae, 12
  %i.bj = trunc i64 %i.ae to i32
  %i.bk = insertelement <16 x i32> poison, i32 %i.bj, i64 0
  %i.bl = shufflevector <16 x i32> %i.bk, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bm = mul <16 x i32> %i.bl, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  br label %.noexc855

.noexc889:                                        ; preds = %.noexc889.lr.ph, %bb.q
  %.07612374 = phi ptr [ %i.am, %.noexc889.lr.ph ], [ %.4765, %bb.q ] ; 6 uses
  %.07692373 = phi i32 [ 0, %.noexc889.lr.ph ], [ %i.ace, %bb.q ] ; 6 uses
  %i.bn = or disjoint i32 %.07692373, 3           ; 2 uses
  %i.bo = sdiv i32 %.07692373, %i.v               ; 4 uses
  %i.bp = or disjoint i32 %.07692373, 1           ; 2 uses
  %i.bq = sdiv i32 %i.bp, %i.v                    ; 4 uses
  %i.br = or disjoint i32 %.07692373, 2           ; 2 uses
  %i.bs = sdiv i32 %i.br, %i.v                    ; 4 uses
  %i.bt = sdiv i32 %i.bn, %i.v                    ; 4 uses
  %i.bu = srem i32 %.07692373, %i.v               ; 4 uses
  %i.bv = srem i32 %i.bp, %i.v                    ; 4 uses
  %i.bw = srem i32 %i.br, %i.v                    ; 4 uses
  %i.bx = srem i32 %i.bn, %i.v                    ; 4 uses
  %i.by = load ptr, ptr %7, align 8, !tbaa !32, !noalias !361
  %i.bz = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !361
  %i.ca = mul i64 %i.bz, %indvars.iv2796
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !361
  %i.cc = mul i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %8, align 4, !tbaa !9     ; 4 uses
  %i.cf = icmp sgt i32 %i.ce, 15
  br i1 %i.cf, label %.noexc887.lr.ph, label %.preheader2145

.noexc887.lr.ph:                                  ; preds = %.noexc889
  %i.cg = load i32, ptr %5, align 4, !tbaa !9     ; 5 uses
  %i.ch = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !364
  %i.ci = load ptr, ptr %4, align 8, !tbaa !32, !noalias !364 ; 4 uses
  %i.cj = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !364
  %i.ck = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !364 ; 2 uses
  %factor.op.mul = mul i64 %i.cj, %i.ck
  %i.cl = sext i32 %i.ch to i64
  %i.cm = load i32, ptr %9, align 4, !tbaa !9     ; 4 uses
  %i.cn = mul nsw i32 %i.cm, %i.bo
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %i.ck, %i.cl                    ; 4 uses
  %i.cq = mul i64 %i.cp, %i.co
  %invariant.gep = getelementptr i8, ptr %i.ci, i64 %i.cq
  %i.cr = load i32, ptr %10, align 4, !tbaa !9    ; 4 uses
  %i.cs = mul i32 %i.cg, %i.bu
  %i.ct = mul i32 %i.cs, %i.cr
  %i.cu = sext i32 %i.ct to i64
  %invariant.gep2238 = getelementptr i8, ptr %invariant.gep, i64 %i.cu
  %i.cv = mul nsw i32 %i.cm, %i.bq
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cp, %i.cw
  %invariant.gep2242 = getelementptr i8, ptr %i.ci, i64 %i.cx
  %i.cy = mul i32 %i.cg, %i.bv
  %i.cz = mul i32 %i.cy, %i.cr
  %i.da = sext i32 %i.cz to i64
  %invariant.gep2243 = getelementptr i8, ptr %invariant.gep2242, i64 %i.da
  %i.db = mul nsw i32 %i.cm, %i.bs
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul i64 %i.cp, %i.dc
  %invariant.gep2247 = getelementptr i8, ptr %i.ci, i64 %i.dd
  %i.de = mul i32 %i.cg, %i.bw
  %i.df = mul i32 %i.de, %i.cr
  %i.dg = sext i32 %i.df to i64
  %invariant.gep2248 = getelementptr i8, ptr %invariant.gep2247, i64 %i.dg
  %i.dh = mul nsw i32 %i.cm, %i.bt
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul i64 %i.cp, %i.di
  %invariant.gep2252 = getelementptr i8, ptr %i.ci, i64 %i.dj
  %i.dk = mul i32 %i.cg, %i.bx
  %i.dl = mul i32 %i.dk, %i.cr
  %i.dm = sext i32 %i.dl to i64
  %invariant.gep2253 = getelementptr i8, ptr %invariant.gep2252, i64 %i.dm
  %i.dn = load i32, ptr %11, align 4, !tbaa !9    ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 0
  %i.dp = add i32 %i.dn, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 8
  %wide.trip.count = zext nneg i32 %i.dn to i64
  br label %.noexc887

.preheader2145.loopexit:                          ; preds = %._crit_edge
  %i.ds = and i32 %i.ce, 2147483632
  %.pre = load i32, ptr %8, align 4, !tbaa !9
  br label %.preheader2145

.preheader2145:                                   ; preds = %.preheader2145.loopexit, %.noexc889
  %i.dt = phi i32 [ %i.ce, %.noexc889 ], [ %.pre, %.preheader2145.loopexit ] ; 6 uses
  %.lcssa2154 = phi <16 x i32> [ zeroinitializer, %.noexc889 ], [ %.lcssa2150, %.preheader2145.loopexit ] ; 2 uses
  %.lcssa2153 = phi <16 x i32> [ zeroinitializer, %.noexc889 ], [ %.lcssa2149, %.preheader2145.loopexit ] ; 2 uses
  %.lcssa2152 = phi <16 x i32> [ zeroinitializer, %.noexc889 ], [ %.lcssa2148, %.preheader2145.loopexit ] ; 2 uses
  %.lcssa2151 = phi <16 x i32> [ zeroinitializer, %.noexc889 ], [ %.lcssa, %.preheader2145.loopexit ] ; 2 uses
  %.0781.lcssa = phi ptr [ %i.cd, %.noexc889 ], [ %.1782.lcssa, %.preheader2145.loopexit ] ; 2 uses
  %.0777.lcssa = phi i32 [ 0, %.noexc889 ], [ %i.ds, %.preheader2145.loopexit ] ; 3 uses
  %i.du = or disjoint i32 %.0777.lcssa, 7
  %i.dv = icmp slt i32 %i.du, %i.dt
  br i1 %i.dv, label %.noexc879.lr.ph, label %.preheader2144

.noexc879.lr.ph:                                  ; preds = %.preheader2145
  %i.dw = load i32, ptr %5, align 4, !tbaa !9     ; 6 uses
  %i.dx = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !367
  %i.dy = load ptr, ptr %4, align 8, !tbaa !32, !noalias !367 ; 4 uses
  %i.dz = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !367
  %i.ea = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !367 ; 2 uses
  %factor.op.mul2276 = mul i64 %i.dz, %i.ea
  %i.eb = sext i32 %i.dx to i64
  %i.ec = load i32, ptr %9, align 4, !tbaa !9     ; 4 uses
  %i.ed = mul nsw i32 %i.ec, %i.bo
  %i.ee = sext i32 %i.ed to i64
  %i.ef = mul i64 %i.ea, %i.eb                    ; 4 uses
  %i.eg = mul i64 %i.ef, %i.ee
  %invariant.gep2278 = getelementptr i8, ptr %i.dy, i64 %i.eg
  %i.eh = load i32, ptr %10, align 4, !tbaa !9    ; 4 uses
  %i.ei = mul i32 %i.dw, %i.bu
  %i.ej = mul i32 %i.ei, %i.eh
  %i.ek = sext i32 %i.ej to i64
  %invariant.gep2279 = getelementptr i8, ptr %invariant.gep2278, i64 %i.ek
  %i.el = mul nsw i32 %i.ec, %i.bq
  %i.em = sext i32 %i.el to i64
  %i.en = mul i64 %i.ef, %i.em
  %invariant.gep2283 = getelementptr i8, ptr %i.dy, i64 %i.en
  %i.eo = mul i32 %i.dw, %i.bv
  %i.ep = mul i32 %i.eo, %i.eh
  %i.eq = sext i32 %i.ep to i64
  %invariant.gep2284 = getelementptr i8, ptr %invariant.gep2283, i64 %i.eq
  %i.er = mul nsw i32 %i.ec, %i.bs
  %i.es = sext i32 %i.er to i64
  %i.et = mul i64 %i.ef, %i.es
  %invariant.gep2288 = getelementptr i8, ptr %i.dy, i64 %i.et
  %i.eu = mul i32 %i.dw, %i.bw
  %i.ev = mul i32 %i.eu, %i.eh
  %i.ew = sext i32 %i.ev to i64
  %invariant.gep2289 = getelementptr i8, ptr %invariant.gep2288, i64 %i.ew
  %i.ex = mul nsw i32 %i.ec, %i.bt
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul i64 %i.ef, %i.ey
  %invariant.gep2293 = getelementptr i8, ptr %i.dy, i64 %i.ez
  %i.fa = mul i32 %i.dw, %i.bx
  %i.fb = mul i32 %i.fa, %i.eh
  %i.fc = sext i32 %i.fb to i64
  %invariant.gep2294 = getelementptr i8, ptr %invariant.gep2293, i64 %i.fc
  %i.fd = load i32, ptr %11, align 4, !tbaa !9    ; 4 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  %i.ff = add i32 %i.fd, -1
  %i.fg = zext i32 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 7                ; 2 uses
  %i.fi = icmp eq i32 %i.dw, 8
  %wide.trip.count2683 = zext nneg i32 %i.fd to i64
  %wide.trip.count2690 = zext nneg i32 %i.fd to i64
  br label %.noexc879

.noexc887:                                        ; preds = %.noexc887.lr.ph, %._crit_edge
  %.07772231 = phi i32 [ 0, %.noexc887.lr.ph ], [ %i.fr, %._crit_edge ] ; 2 uses
  %.07812230 = phi ptr [ %i.cd, %.noexc887.lr.ph ], [ %.1782.lcssa, %._crit_edge ] ; 3 uses
  %i.fj = phi <16 x i32> [ zeroinitializer, %.noexc887.lr.ph ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.fk = phi <16 x i32> [ zeroinitializer, %.noexc887.lr.ph ], [ %.lcssa2148, %._crit_edge ] ; 2 uses
end_hunk_0
