Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512vnni?download=true
inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a

.noexc3611:                                       ; preds = %.noexc3611.lr.ph, %._crit_edge8031
  %.029368042 = phi ptr [ %i.abg, %.noexc3611.lr.ph ], [ %.12937.lcssa, %._crit_edge8031 ] ; 3 uses
  %.029448041 = phi i32 [ 0, %.noexc3611.lr.ph ], [ %i.act, %._crit_edge8031 ] ; 2 uses
  %i.acj = phi <16 x i32> [ zeroinitializer, %.noexc3611.lr.ph ], [ %i.acs, %._crit_edge8031 ] ; 2 uses
  %i.ack = phi <16 x i32> [ zeroinitializer, %.noexc3611.lr.ph ], [ %i.acr, %._crit_edge8031 ] ; 2 uses
  %i.acl = phi <16 x i32> [ zeroinitializer, %.noexc3611.lr.ph ], [ %i.acq, %._crit_edge8031 ] ; 2 uses
  %i.acm = phi <16 x i32> [ zeroinitializer, %.noexc3611.lr.ph ], [ %i.acp, %._crit_edge8031 ] ; 2 uses
  %i.acn = sdiv i32 %.029448041, %i.abi
  %i.aco = sext i32 %i.acn to i64
  %.reass8051 = mul i64 %factor.op.mul8050, %i.aco ; 2 uses
  %gep8054 = getelementptr i8, ptr %invariant.gep8053, i64 %.reass8051
  %gep8059 = getelementptr i8, ptr %invariant.gep8058, i64 %.reass8051
  br i1 %i.ace, label %.lr.ph8030, label %._crit_edge8031

._crit_edge8031.loopexit:                         ; preds = %bb.o
  %scevgep9999 = getelementptr i8, ptr %.029368042, i64 128
  %scevgep10000 = getelementptr i8, ptr %scevgep9999, i64 %i.aci
  br label %._crit_edge8031

._crit_edge8031:                                  ; preds = %._crit_edge8031.loopexit, %.noexc3611
  %i.acp = phi <16 x i32> [ %i.acm, %.noexc3611 ], [ %i.afn, %._crit_edge8031.loopexit ] ; 2 uses
  %i.acq = phi <16 x i32> [ %i.acl, %.noexc3611 ], [ %i.afk, %._crit_edge8031.loopexit ] ; 2 uses
  %i.acr = phi <16 x i32> [ %i.ack, %.noexc3611 ], [ %i.afh, %._crit_edge8031.loopexit ] ; 2 uses
  %i.acs = phi <16 x i32> [ %i.acj, %.noexc3611 ], [ %i.afe, %._crit_edge8031.loopexit ] ; 2 uses
  %.12937.lcssa = phi ptr [ %.029368042, %.noexc3611 ], [ %scevgep10000, %._crit_edge8031.loopexit ] ; 2 uses
  %i.act = add nuw nsw i32 %.029448041, 16        ; 2 uses
  %i.acu = or disjoint i32 %i.act, 15
  %i.acv = icmp slt i32 %i.acu, %i.aav
  br i1 %i.acv, label %.noexc3611, label %._crit_edge8043.loopexit, !llvm.loop !68

.lr.ph8030:                                       ; preds = %.noexc3611, %bb.o
  %indvars.iv9997 = phi i64 [ %indvars.iv.next9998, %bb.o ], [ 0, %.noexc3611 ] ; 2 uses
  %.129378029 = phi ptr [ %i.afo, %bb.o ], [ %.029368042, %.noexc3611 ] ; 3 uses
  %.176418027 = phi <16 x i32> [ %i.afe, %bb.o ], [ %i.acj, %.noexc3611 ]
  %.176438026 = phi <16 x i32> [ %i.afh, %bb.o ], [ %i.ack, %.noexc3611 ]
  %.176458025 = phi <16 x i32> [ %i.afk, %bb.o ], [ %i.acl, %.noexc3611 ]
  %.176478024 = phi <16 x i32> [ %i.afn, %bb.o ], [ %i.acm, %.noexc3611 ]
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %indvars.iv9997
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !9
  %i.acy = sext i32 %i.acx to i64                 ; 2 uses
  %i.acz = getelementptr inbounds i8, ptr %gep8054, i64 %i.acy ; 4 uses
  %i.ada = getelementptr inbounds i8, ptr %gep8059, i64 %i.acy ; 4 uses
  switch i32 %i.abi, label %bb.n [
    i32 16, label %bb.l
    i32 8, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph8030
  %i.adb = load <2 x i64>, ptr %i.acz, align 16, !tbaa !44
  %i.adc = load <2 x i64>, ptr %i.ada, align 16, !tbaa !44
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph8030
  %i.add = load i64, ptr %i.acz, align 1, !tbaa !44
  %i.ade = insertelement <2 x i64> poison, i64 %i.add, i64 0
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.da
  %i.adg = load i64, ptr %i.adf, align 1, !tbaa !44
  %i.adh = load i64, ptr %i.ada, align 1, !tbaa !44
  %i.adi = insertelement <2 x i64> poison, i64 %i.adh, i64 0
  %i.adj = getelementptr inbounds nuw i8, ptr %i.ada, i64 %i.da
  %i.adk = load i64, ptr %i.adj, align 1, !tbaa !44
  %i.adl = insertelement <2 x i64> %i.ade, i64 %i.adg, i64 1
  %i.adm = insertelement <2 x i64> %i.adi, i64 %i.adk, i64 1
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph8030
  %i.adn = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.acz, <16 x i32> %i.eo, <16 x i1> splat (i1 true), i32 1)
  %i.ado = trunc <16 x i32> %i.adn to <16 x i8>
  %i.adp = bitcast <16 x i8> %i.ado to <2 x i64>
  %i.adq = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ada, <16 x i32> %i.eo, <16 x i1> splat (i1 true), i32 1)
  %i.adr = trunc <16 x i32> %i.adq to <16 x i8>
  %i.ads = bitcast <16 x i8> %i.adr to <2 x i64>
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.02950 = phi <2 x i64> [ %i.adc, %bb.l ], [ %i.adm, %bb.m ], [ %i.ads, %bb.n ]
  %.02949 = phi <2 x i64> [ %i.adb, %bb.l ], [ %i.adl, %bb.m ], [ %i.adp, %bb.n ]
  %i.adt = bitcast <2 x i64> %.02949 to <16 x i8>
  %i.adu = sext <16 x i8> %i.adt to <16 x i16>
  %i.adv = bitcast <2 x i64> %.02950 to <16 x i8>
  %i.adw = sext <16 x i8> %i.adv to <16 x i16>
  %i.adx = load <8 x i64>, ptr %.129378029, align 64, !tbaa !44 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %.129378029, i64 64
  %i.adz = load <8 x i64>, ptr %i.ady, align 64, !tbaa !44 ; 2 uses
  %i.aea = bitcast <8 x i64> %i.adx to <64 x i8>
  %i.aeb = shufflevector <64 x i8> %i.aea, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aec = sext <32 x i8> %i.aeb to <32 x i16>    ; 2 uses
  %i.aed = bitcast <8 x i64> %i.adx to <64 x i8>
  %i.aee = shufflevector <64 x i8> %i.aed, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aef = sext <32 x i8> %i.aee to <32 x i16>    ; 2 uses
  %i.aeg = bitcast <8 x i64> %i.adz to <64 x i8>
  %i.aeh = shufflevector <64 x i8> %i.aeg, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aei = sext <32 x i8> %i.aeh to <32 x i16>    ; 2 uses
  %i.aej = bitcast <8 x i64> %i.adz to <64 x i8>
  %i.aek = shufflevector <64 x i8> %i.aej, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ael = sext <32 x i8> %i.aek to <32 x i16>    ; 2 uses
  %i.aem = shufflevector <16 x i16> %i.adu, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aen = shufflevector <16 x i16> %i.adw, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aeo = bitcast <32 x i16> %i.aem to <16 x i32> ; 4 uses
  %i.aep = bitcast <32 x i16> %i.aen to <16 x i32> ; 4 uses
  %i.aeq = shufflevector <16 x i32> %i.aeo, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aer = bitcast <16 x i32> %i.aeq to <32 x i16>
  %i.aes = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.176418027, <32 x i16> %i.aer, <32 x i16> %i.aec)
  %i.aet = shufflevector <16 x i32> %i.aep, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aeu = bitcast <16 x i32> %i.aet to <32 x i16>
  %i.aev = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.176438026, <32 x i16> %i.aeu, <32 x i16> %i.aec)
  %i.aew = shufflevector <16 x i32> %i.aeo, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.aex = bitcast <16 x i32> %i.aew to <32 x i16>
  %i.aey = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.176458025, <32 x i16> %i.aex, <32 x i16> %i.aef)
  %i.aez = shufflevector <16 x i32> %i.aep, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.afa = bitcast <16 x i32> %i.aez to <32 x i16>
  %i.afb = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.176478024, <32 x i16> %i.afa, <32 x i16> %i.aef)
  %i.afc = shufflevector <16 x i32> %i.aeo, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.afd = bitcast <16 x i32> %i.afc to <32 x i16>
  %i.afe = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aes, <32 x i16> %i.afd, <32 x i16> %i.aei) ; 2 uses
  %i.aff = shufflevector <16 x i32> %i.aep, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.afg = bitcast <16 x i32> %i.aff to <32 x i16>
  %i.afh = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aev, <32 x i16> %i.afg, <32 x i16> %i.aei) ; 2 uses
  %i.afi = shufflevector <16 x i32> %i.aeo, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.afj = bitcast <16 x i32> %i.afi to <32 x i16>
  %i.afk = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aey, <32 x i16> %i.afj, <32 x i16> %i.ael) ; 2 uses
  %i.afl = shufflevector <16 x i32> %i.aep, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.afm = bitcast <16 x i32> %i.afl to <32 x i16>
  %i.afn = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.afb, <32 x i16> %i.afm, <32 x i16> %i.ael) ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.129378029, i64 128
  %indvars.iv.next9998 = add nuw nsw i64 %indvars.iv9997, 1 ; 2 uses
  %exitcond10003.not = icmp eq i64 %indvars.iv.next9998, %wide.trip.count10002
  br i1 %exitcond10003.not, label %._crit_edge8031.loopexit, label %.lr.ph8030, !llvm.loop !69

._crit_edge8043.loopexit:                         ; preds = %._crit_edge8031
  %i.afp = and i32 %i.aav, 2147483632
  br label %._crit_edge8043

._crit_edge8043:                                  ; preds = %._crit_edge8043.loopexit, %.noexc3613
  %i.afq = phi <16 x i32> [ zeroinitializer, %.noexc3613 ], [ %i.acp, %._crit_edge8043.loopexit ] ; 2 uses
  %i.afr = phi <16 x i32> [ zeroinitializer, %.noexc3613 ], [ %i.acq, %._crit_edge8043.loopexit ] ; 2 uses
  %i.afs = phi <16 x i32> [ zeroinitializer, %.noexc3613 ], [ %i.acr, %._crit_edge8043.loopexit ] ; 2 uses
  %i.aft = phi <16 x i32> [ zeroinitializer, %.noexc3613 ], [ %i.acs, %._crit_edge8043.loopexit ] ; 2 uses
  %.02944.lcssa = phi i32 [ 0, %.noexc3613 ], [ %i.afp, %._crit_edge8043.loopexit ] ; 3 uses
  %.02936.lcssa = phi ptr [ %i.abg, %.noexc3613 ], [ %.12937.lcssa, %._crit_edge8043.loopexit ] ; 2 uses
  %i.afu = shufflevector <16 x i32> %i.aft, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afv = shufflevector <16 x i32> %i.aft, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afw = add <8 x i32> %i.afu, %i.afv           ; 2 uses
  %i.afx = shufflevector <16 x i32> %i.afs, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afy = shufflevector <16 x i32> %i.afs, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afz = add <8 x i32> %i.afx, %i.afy           ; 2 uses
  %i.aga = shufflevector <16 x i32> %i.afr, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agb = shufflevector <16 x i32> %i.afr, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agc = add <8 x i32> %i.aga, %i.agb           ; 2 uses
  %i.agd = shufflevector <16 x i32> %i.afq, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.age = shufflevector <16 x i32> %i.afq, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agf = add <8 x i32> %i.agd, %i.age           ; 2 uses
  %i.agg = or disjoint i32 %.02944.lcssa, 7
  %i.agh = icmp slt i32 %i.agg, %i.aav
  br i1 %i.agh, label %.noexc3607.lr.ph, label %.preheader7716

.noexc3607.lr.ph:                                 ; preds = %._crit_edge8043
  %i.agi = load i32, ptr %i.c, align 4, !tbaa !9  ; 4 uses
  %i.agj = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !70
  %i.agk = load ptr, ptr %0, align 8, !tbaa !32, !noalias !70 ; 2 uses
  %i.agl = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !70
  %i.agm = load i64, ptr %i.cd, align 8, !tbaa !36, !noalias !70 ; 2 uses
  %factor.op.mul8082 = mul i64 %i.agl, %i.agm
  %i.agn = sext i32 %i.agj to i64
  %i.ago = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.agp = mul nsw i32 %i.ago, %i.aax
  %i.agq = sext i32 %i.agp to i64
  %i.agr = mul i64 %i.agm, %i.agn                 ; 2 uses
  %i.ags = mul i64 %i.agr, %i.agq
  %invariant.gep8084 = getelementptr i8, ptr %i.agk, i64 %i.ags
  %i.agt = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.agu = mul i32 %i.agi, %i.aaz
  %i.agv = mul i32 %i.agu, %i.agt
  %i.agw = sext i32 %i.agv to i64
  %invariant.gep8085 = getelementptr i8, ptr %invariant.gep8084, i64 %i.agw
  %i.agx = mul nsw i32 %i.ago, %i.aay
  %i.agy = sext i32 %i.agx to i64
  %i.agz = mul i64 %i.agr, %i.agy
  %invariant.gep8089 = getelementptr i8, ptr %i.agk, i64 %i.agz
  %i.aha = mul i32 %i.agi, %i.aba
  %i.ahb = mul i32 %i.aha, %i.agt
  %i.ahc = sext i32 %i.ahb to i64
  %invariant.gep8090 = getelementptr i8, ptr %invariant.gep8089, i64 %i.ahc
  %i.ahd = load i32, ptr %i.f, align 4, !tbaa !9  ; 4 uses
  %i.ahe = icmp sgt i32 %i.ahd, 0
  %i.ahf = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.ahg = icmp eq i32 %i.agi, 8
  %i.ahh = add i32 %i.ahd, -1
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = shl nuw nsw i64 %i.ahi, 6              ; 2 uses
  %wide.trip.count10009 = zext nneg i32 %i.ahd to i64
  %wide.trip.count10016 = zext nneg i32 %i.ahd to i64
  br label %.noexc3607

.preheader7716:                                   ; preds = %._crit_edge8063, %._crit_edge8043
  %.lcssa7806 = phi <8 x i32> [ %i.agf, %._crit_edge8043 ], [ %.lcssa7802, %._crit_edge8063 ]
  %.lcssa7805 = phi <8 x i32> [ %i.agc, %._crit_edge8043 ], [ %.lcssa7801, %._crit_edge8063 ]
  %.lcssa7804 = phi <8 x i32> [ %i.afz, %._crit_edge8043 ], [ %.lcssa7800, %._crit_edge8063 ] ; 3 uses
  %.lcssa7803 = phi <8 x i32> [ %i.afw, %._crit_edge8043 ], [ %.lcssa7799, %._crit_edge8063 ] ; 3 uses
  %.12945.lcssa = phi i32 [ %.02944.lcssa, %._crit_edge8043 ], [ %i.alw, %._crit_edge8063 ] ; 6 uses
  %.22938.lcssa = phi ptr [ %.02936.lcssa, %._crit_edge8043 ], [ %.32939.lcssa, %._crit_edge8063 ] ; 3 uses
  %i.ahk = or disjoint i32 %.12945.lcssa, 1
  %i.ahl = icmp slt i32 %i.ahk, %i.aav
  br i1 %i.ahl, label %.noexc3603.lr.ph, label %.preheader7715

.noexc3603.lr.ph:                                 ; preds = %.preheader7716
  %i.ahm = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !73
  %i.ahn = load ptr, ptr %0, align 8, !tbaa !32, !noalias !73 ; 2 uses
  %i.aho = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !73
  %i.ahp = load i64, ptr %i.cd, align 8, !tbaa !36, !noalias !73 ; 2 uses
  %factor.op.mul8105 = mul i64 %i.aho, %i.ahp
  %i.ahq = sext i32 %i.ahm to i64
  %i.ahr = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.ahs = mul nsw i32 %i.ahr, %i.aax
  %i.aht = sext i32 %i.ahs to i64
  %i.ahu = mul i64 %i.ahp, %i.ahq                 ; 2 uses
  %i.ahv = mul i64 %i.ahu, %i.aht
  %invariant.gep8107 = getelementptr i8, ptr %i.ahn, i64 %i.ahv
  %i.ahw = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.ahx = mul nsw i32 %i.ahw, %i.aaz
  %i.ahy = sext i32 %i.ahx to i64
  %invariant.gep8108 = getelementptr i8, ptr %invariant.gep8107, i64 %i.ahy
  %i.ahz = mul nsw i32 %i.ahr, %i.aay
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = mul i64 %i.ahu, %i.aia
  %invariant.gep8112 = getelementptr i8, ptr %i.ahn, i64 %i.aib
  %i.aic = mul nsw i32 %i.ahw, %i.aba
  %i.aid = sext i32 %i.aic to i64
  %invariant.gep8113 = getelementptr i8, ptr %invariant.gep8112, i64 %i.aid
  %i.aie = load i32, ptr %i.f, align 4, !tbaa !9  ; 3 uses
  %i.aif = icmp sgt i32 %i.aie, 0
  %i.aig = load ptr, ptr %i.g, align 8
  br i1 %i.aif, label %.noexc3603.us.preheader, label %.noexc3603.preheader

.noexc3603.preheader:                             ; preds = %.noexc3603.lr.ph
  %i.aih = add nuw i32 %.12945.lcssa, 2
  %10 = add nuw i32 %.12945.lcssa, 3
  %smax = call i32 @llvm.smax.i32(i32 %i.aav, i32 %10)
  %i.aii = add nsw i32 %smax, -2
  %i.aij = sub nsw i32 %i.aii, %.12945.lcssa
  %i.aik = and i32 %i.aij, -2
  %i.ail = add i32 %i.aih, %i.aik
  br label %.preheader7715

.noexc3603.us.preheader:                          ; preds = %.noexc3603.lr.ph
  %i.aim = add nsw i32 %i.aie, -1
  %i.ain = zext nneg i32 %i.aim to i64
  %i.aio = shl nuw nsw i64 %i.ain, 4
  %i.aip = zext nneg i32 %.12945.lcssa to i64
  %wide.trip.count10023 = zext nneg i32 %i.aie to i64
  br label %.noexc3603.us

.noexc3603.us:                                    ; preds = %.noexc3603.us.preheader, %._crit_edge8095.us
  %indvars.iv10025 = phi i64 [ %i.aip, %.noexc3603.us.preheader ], [ %indvars.iv.next10026, %._crit_edge8095.us ] ; 2 uses
  %.429408100.us = phi ptr [ %.22938.lcssa, %.noexc3603.us.preheader ], [ %scevgep10021, %._crit_edge8095.us ] ; 2 uses
  %i.aiq = phi <8 x i32> [ %.lcssa7803, %.noexc3603.us.preheader ], [ %i.ajq, %._crit_edge8095.us ]
  %i.air = phi <8 x i32> [ %.lcssa7804, %.noexc3603.us.preheader ], [ %i.ajs, %._crit_edge8095.us ]
  %.reass8106.us = mul i64 %factor.op.mul8105, %indvars.iv10025 ; 2 uses
  %gep8109.us = getelementptr i8, ptr %invariant.gep8108, i64 %.reass8106.us
  %gep8114.us = getelementptr i8, ptr %invariant.gep8113, i64 %.reass8106.us
  br label %bb.p

bb.p:                                             ; preds = %.noexc3603.us, %bb.p
  %indvars.iv10018 = phi i64 [ 0, %.noexc3603.us ], [ %indvars.iv.next10019, %bb.p ] ; 2 uses
  %.529418093.us = phi ptr [ %.429408100.us, %.noexc3603.us ], [ %i.ajt, %bb.p ] ; 2 uses
  %i.ais = phi <8 x i32> [ %i.aiq, %.noexc3603.us ], [ %i.ajq, %bb.p ]
  %i.ait = phi <8 x i32> [ %i.air, %.noexc3603.us ], [ %i.ajs, %bb.p ]
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv10018
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !9
  %i.aiw = sext i32 %i.aiv to i64                 ; 2 uses
  %i.aix = getelementptr inbounds i8, ptr %gep8109.us, i64 %i.aiw ; 2 uses
  %i.aiy = load i8, ptr %i.aix, align 1, !tbaa !44
  %i.aiz = sext i8 %i.aiy to i16
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aix, i64 %i.da
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !44
  %i.ajc = sext i8 %i.ajb to i16
  %i.ajd = insertelement <8 x i16> poison, i16 %i.aiz, i64 0
  %i.aje = insertelement <8 x i16> %i.ajd, i16 %i.ajc, i64 1
  %i.ajf = getelementptr inbounds i8, ptr %gep8114.us, i64 %i.aiw ; 2 uses
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !44
  %i.ajh = sext i8 %i.ajg to i16
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajf, i64 %i.da
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !44
  %i.ajk = sext i8 %i.ajj to i16
  %i.ajl = insertelement <8 x i16> poison, i16 %i.ajh, i64 0
  %i.ajm = insertelement <8 x i16> %i.ajl, i16 %i.ajk, i64 1
  %i.ajn = load <16 x i8>, ptr %.529418093.us, align 16, !tbaa !44
  %i.ajo = sext <16 x i8> %i.ajn to <16 x i16>    ; 2 uses
  %i.ajp = shufflevector <8 x i16> %i.aje, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ajq = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ais, <16 x i16> %i.ajp, <16 x i16> %i.ajo) ; 3 uses
  %i.ajr = shufflevector <8 x i16> %i.ajm, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ajs = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ait, <16 x i16> %i.ajr, <16 x i16> %i.ajo) ; 3 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %.529418093.us, i64 16
  %indvars.iv.next10019 = add nuw nsw i64 %indvars.iv10018, 1 ; 2 uses
  %exitcond10024.not = icmp eq i64 %indvars.iv.next10019, %wide.trip.count10023
  br i1 %exitcond10024.not, label %._crit_edge8095.us, label %bb.p, !llvm.loop !76

._crit_edge8095.us:                               ; preds = %bb.p
  %scevgep10020 = getelementptr i8, ptr %.429408100.us, i64 16
  %scevgep10021 = getelementptr i8, ptr %scevgep10020, i64 %i.aio ; 2 uses
  %indvars.iv.next10026 = add nuw nsw i64 %indvars.iv10025, 2 ; 3 uses
  %i.aju = trunc i64 %indvars.iv.next10026 to i32
  %i.ajv = or i32 %i.aju, 1
  %i.ajw = icmp slt i32 %i.ajv, %i.aav
  br i1 %i.ajw, label %.noexc3603.us, label %.preheader7715.loopexit, !llvm.loop !77

.noexc3607:                                       ; preds = %.noexc3607.lr.ph, %._crit_edge8063
  %.229388075 = phi ptr [ %.02936.lcssa, %.noexc3607.lr.ph ], [ %.32939.lcssa, %._crit_edge8063 ] ; 5 uses
  %.129458074 = phi i32 [ %.02944.lcssa, %.noexc3607.lr.ph ], [ %i.alw, %._crit_edge8063 ] ; 2 uses
  %i.ajx = phi <8 x i32> [ %i.afw, %.noexc3607.lr.ph ], [ %.lcssa7799, %._crit_edge8063 ] ; 3 uses
  %i.ajy = phi <8 x i32> [ %i.afz, %.noexc3607.lr.ph ], [ %.lcssa7800, %._crit_edge8063 ] ; 3 uses
  %i.ajz = phi <8 x i32> [ %i.agc, %.noexc3607.lr.ph ], [ %.lcssa7801, %._crit_edge8063 ] ; 3 uses
  %i.aka = phi <8 x i32> [ %i.agf, %.noexc3607.lr.ph ], [ %.lcssa7802, %._crit_edge8063 ] ; 3 uses
  %i.akb = sdiv i32 %.129458074, %i.agi
  %i.akc = sext i32 %i.akb to i64
  %.reass8083 = mul i64 %factor.op.mul8082, %i.akc ; 2 uses
  %gep8086 = getelementptr i8, ptr %invariant.gep8085, i64 %.reass8083 ; 2 uses
  %gep8091 = getelementptr i8, ptr %invariant.gep8090, i64 %.reass8083 ; 2 uses
  br i1 %i.ahe, label %.lr.ph8062, label %._crit_edge8063

.lr.ph8062:                                       ; preds = %.noexc3607
  br i1 %i.ahg, label %.lr.ph8062.split.us, label %.lr.ph8062.split

.lr.ph8062.split.us:                              ; preds = %.lr.ph8062, %.lr.ph8062.split.us
  %indvars.iv10011 = phi i64 [ %indvars.iv.next10012, %.lr.ph8062.split.us ], [ 0, %.lr.ph8062 ] ; 2 uses
  %.329398061.us = phi ptr [ %i.alv, %.lr.ph8062.split.us ], [ %.229388075, %.lr.ph8062 ] ; 3 uses
  %i.akd = phi <8 x i32> [ %i.alo, %.lr.ph8062.split.us ], [ %i.ajx, %.lr.ph8062 ]
  %i.ake = phi <8 x i32> [ %i.alq, %.lr.ph8062.split.us ], [ %i.ajy, %.lr.ph8062 ]
  %i.akf = phi <8 x i32> [ %i.als, %.lr.ph8062.split.us ], [ %i.ajz, %.lr.ph8062 ]
  %i.akg = phi <8 x i32> [ %i.alu, %.lr.ph8062.split.us ], [ %i.aka, %.lr.ph8062 ]
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %indvars.iv10011
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !9
  %i.akj = sext i32 %i.aki to i64                 ; 2 uses
  %i.akk = getelementptr inbounds i8, ptr %gep8086, i64 %i.akj
  %i.akl = getelementptr inbounds i8, ptr %gep8091, i64 %i.akj
  %i.akm = load <8 x i8>, ptr %i.akk, align 1, !tbaa !44
  %i.akn = load <8 x i8>, ptr %i.akl, align 1, !tbaa !44
  %i.ako = sext <8 x i8> %i.akm to <8 x i16>      ; 4 uses
  %i.akp = sext <8 x i8> %i.akn to <8 x i16>      ; 4 uses
  %i.akq = load <4 x i64>, ptr %.329398061.us, align 32, !tbaa !44 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %.329398061.us, i64 32
  %i.aks = load <4 x i64>, ptr %i.akr, align 32, !tbaa !44 ; 2 uses
  %i.akt = bitcast <4 x i64> %i.akq to <32 x i8>
  %i.aku = shufflevector <32 x i8> %i.akt, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akv = sext <16 x i8> %i.aku to <16 x i16>    ; 2 uses
  %i.akw = bitcast <4 x i64> %i.akq to <32 x i8>
  %i.akx = shufflevector <32 x i8> %i.akw, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aky = sext <16 x i8> %i.akx to <16 x i16>    ; 2 uses
  %i.akz = bitcast <4 x i64> %i.aks to <32 x i8>
  %i.ala = shufflevector <32 x i8> %i.akz, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alb = sext <16 x i8> %i.ala to <16 x i16>    ; 2 uses
  %i.alc = bitcast <4 x i64> %i.aks to <32 x i8>
  %i.ald = shufflevector <32 x i8> %i.alc, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ale = sext <16 x i8> %i.ald to <16 x i16>    ; 2 uses
  %i.alf = shufflevector <8 x i16> %i.ako, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.alg = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.akd, <16 x i16> %i.alf, <16 x i16> %i.akv)
  %i.alh = shufflevector <8 x i16> %i.akp, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ali = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ake, <16 x i16> %i.alh, <16 x i16> %i.akv)
  %i.alj = shufflevector <8 x i16> %i.ako, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.alk = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.akf, <16 x i16> %i.alj, <16 x i16> %i.aky)
  %i.all = shufflevector <8 x i16> %i.akp, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.alm = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.akg, <16 x i16> %i.all, <16 x i16> %i.aky)
  %i.aln = shufflevector <8 x i16> %i.ako, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.alo = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.alg, <16 x i16> %i.aln, <16 x i16> %i.alb) ; 2 uses
  %i.alp = shufflevector <8 x i16> %i.akp, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.alq = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ali, <16 x i16> %i.alp, <16 x i16> %i.alb) ; 2 uses
  %i.alr = shufflevector <8 x i16> %i.ako, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.als = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.alk, <16 x i16> %i.alr, <16 x i16> %i.ale) ; 2 uses
  %i.alt = shufflevector <8 x i16> %i.akp, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.alu = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.alm, <16 x i16> %i.alt, <16 x i16> %i.ale) ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %.329398061.us, i64 64
  %indvars.iv.next10012 = add nuw nsw i64 %indvars.iv10011, 1 ; 2 uses
  %exitcond10017.not = icmp eq i64 %indvars.iv.next10012, %wide.trip.count10016
  br i1 %exitcond10017.not, label %._crit_edge8063.loopexit, label %.lr.ph8062.split.us, !llvm.loop !78

._crit_edge8063.loopexit:                         ; preds = %.lr.ph8062.split.us
  %scevgep10013 = getelementptr i8, ptr %.229388075, i64 64
  %scevgep10014 = getelementptr i8, ptr %scevgep10013, i64 %i.ahj
  br label %._crit_edge8063

._crit_edge8063.loopexit9622:                     ; preds = %.lr.ph8062.split
  %scevgep10006 = getelementptr i8, ptr %.229388075, i64 64
  %scevgep10007 = getelementptr i8, ptr %scevgep10006, i64 %i.ahj
  br label %._crit_edge8063

._crit_edge8063:                                  ; preds = %._crit_edge8063.loopexit9622, %._crit_edge8063.loopexit, %.noexc3607
  %.lcssa7802 = phi <8 x i32> [ %i.aka, %.noexc3607 ], [ %i.alu, %._crit_edge8063.loopexit ], [ %i.ans, %._crit_edge8063.loopexit9622 ] ; 2 uses
  %.lcssa7801 = phi <8 x i32> [ %i.ajz, %.noexc3607 ], [ %i.als, %._crit_edge8063.loopexit ], [ %i.anq, %._crit_edge8063.loopexit9622 ] ; 2 uses
  %.lcssa7800 = phi <8 x i32> [ %i.ajy, %.noexc3607 ], [ %i.alq, %._crit_edge8063.loopexit ], [ %i.ano, %._crit_edge8063.loopexit9622 ] ; 2 uses
  %.lcssa7799 = phi <8 x i32> [ %i.ajx, %.noexc3607 ], [ %i.alo, %._crit_edge8063.loopexit ], [ %i.anm, %._crit_edge8063.loopexit9622 ] ; 2 uses
  %.32939.lcssa = phi ptr [ %.229388075, %.noexc3607 ], [ %scevgep10014, %._crit_edge8063.loopexit ], [ %scevgep10007, %._crit_edge8063.loopexit9622 ] ; 2 uses
  %i.alw = add nuw nsw i32 %.129458074, 8         ; 3 uses
  %i.alx = or disjoint i32 %i.alw, 7
  %i.aly = icmp slt i32 %i.alx, %i.aav
  br i1 %i.aly, label %.noexc3607, label %.preheader7716, !llvm.loop !79

.lr.ph8062.split:                                 ; preds = %.lr.ph8062, %.lr.ph8062.split
  %indvars.iv10004 = phi i64 [ %indvars.iv.next10005, %.lr.ph8062.split ], [ 0, %.lr.ph8062 ] ; 2 uses
  %.329398061 = phi ptr [ %i.ant, %.lr.ph8062.split ], [ %.229388075, %.lr.ph8062 ] ; 3 uses
  %i.alz = phi <8 x i32> [ %i.anm, %.lr.ph8062.split ], [ %i.ajx, %.lr.ph8062 ]
  %i.ama = phi <8 x i32> [ %i.ano, %.lr.ph8062.split ], [ %i.ajy, %.lr.ph8062 ]
  %i.amb = phi <8 x i32> [ %i.anq, %.lr.ph8062.split ], [ %i.ajz, %.lr.ph8062 ]
  %i.amc = phi <8 x i32> [ %i.ans, %.lr.ph8062.split ], [ %i.aka, %.lr.ph8062 ]
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %indvars.iv10004
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !9
  %i.amf = sext i32 %i.ame to i64                 ; 2 uses
  %i.amg = getelementptr inbounds i8, ptr %gep8086, i64 %i.amf
  %i.amh = getelementptr inbounds i8, ptr %gep8091, i64 %i.amf
  %i.ami = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.amg, <8 x i32> %i.er, <8 x i32> splat (i32 -1), i8 1)
  %i.amj = trunc <8 x i32> %i.ami to <8 x i8>
  %i.amk = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.amh, <8 x i32> %i.er, <8 x i32> splat (i32 -1), i8 1)
  %i.aml = trunc <8 x i32> %i.amk to <8 x i8>
  %i.amm = sext <8 x i8> %i.amj to <8 x i16>      ; 4 uses
  %i.amn = sext <8 x i8> %i.aml to <8 x i16>      ; 4 uses
  %i.amo = load <4 x i64>, ptr %.329398061, align 32, !tbaa !44 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.329398061, i64 32
  %i.amq = load <4 x i64>, ptr %i.amp, align 32, !tbaa !44 ; 2 uses
  %i.amr = bitcast <4 x i64> %i.amo to <32 x i8>
  %i.ams = shufflevector <32 x i8> %i.amr, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amt = sext <16 x i8> %i.ams to <16 x i16>    ; 2 uses
  %i.amu = bitcast <4 x i64> %i.amo to <32 x i8>
  %i.amv = shufflevector <32 x i8> %i.amu, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.amw = sext <16 x i8> %i.amv to <16 x i16>    ; 2 uses
  %i.amx = bitcast <4 x i64> %i.amq to <32 x i8>
  %i.amy = shufflevector <32 x i8> %i.amx, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amz = sext <16 x i8> %i.amy to <16 x i16>    ; 2 uses
  %i.ana = bitcast <4 x i64> %i.amq to <32 x i8>
  %i.anb = shufflevector <32 x i8> %i.ana, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.anc = sext <16 x i8> %i.anb to <16 x i16>    ; 2 uses
  %i.and = shufflevector <8 x i16> %i.amm, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ane = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.alz, <16 x i16> %i.and, <16 x i16> %i.amt)
  %i.anf = shufflevector <8 x i16> %i.amn, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ang = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ama, <16 x i16> %i.anf, <16 x i16> %i.amt)
  %i.anh = shufflevector <8 x i16> %i.amm, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.ani = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.amb, <16 x i16> %i.anh, <16 x i16> %i.amw)
  %i.anj = shufflevector <8 x i16> %i.amn, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.ank = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.amc, <16 x i16> %i.anj, <16 x i16> %i.amw)
  %i.anl = shufflevector <8 x i16> %i.amm, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.anm = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ane, <16 x i16> %i.anl, <16 x i16> %i.amz) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.atq = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ash, <32 x i16> %i.atp, <32 x i16> %i.atc) ; 3 uses
  %i.atr = shufflevector <16 x i32> %i.atn, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.ats = bitcast <16 x i32> %i.atr to <32 x i16>
  %i.att = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.asg, <32 x i16> %i.ats, <32 x i16> %i.atf) ; 3 uses
  %i.atu = shufflevector <16 x i32> %i.atn, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.atv = bitcast <16 x i32> %i.atu to <32 x i16>
  %i.atw = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.asf, <32 x i16> %i.atv, <32 x i16> %i.ati) ; 3 uses
  %i.atx = shufflevector <16 x i32> %i.atn, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.aty = bitcast <16 x i32> %i.atx to <32 x i16>
  %i.atz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ase, <32 x i16> %i.aty, <32 x i16> %i.atl) ; 3 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %.129968147.us, i64 128
  %indvars.iv.next10039 = add nuw nsw i64 %indvars.iv10038, 1 ; 2 uses
  %exitcond10044.not = icmp eq i64 %indvars.iv.next10039, %wide.trip.count10043
  br i1 %exitcond10044.not, label %._crit_edge8150.us, label %bb.t, !llvm.loop !92

._crit_edge8150.us:                               ; preds = %bb.x
  %scevgep10040 = getelementptr i8, ptr %.029958156.us, i64 128
  %scevgep10041 = getelementptr i8, ptr %scevgep10040, i64 %i.arx ; 2 uses
  %i.aub = add nuw nsw i32 %.029918157.us, 16     ; 2 uses
  %i.auc = or disjoint i32 %i.aub, 15
  %i.aud = icmp slt i32 %i.auc, %i.aqs
  br i1 %i.aud, label %.noexc3593.us, label %._crit_edge8158.loopexit, !llvm.loop !93

._crit_edge8158.loopexit:                         ; preds = %._crit_edge8150.us
  %i.aue = and i32 %i.aqs, 2147483632
  br label %._crit_edge8158

._crit_edge8158:                                  ; preds = %.noexc3593.preheader, %._crit_edge8158.loopexit, %.noexc3595
  %.lcssa7822 = phi <16 x i32> [ zeroinitializer, %.noexc3595 ], [ %i.atq, %._crit_edge8158.loopexit ], [ zeroinitializer, %.noexc3593.preheader ]
  %.lcssa7821 = phi <16 x i32> [ zeroinitializer, %.noexc3595 ], [ %i.att, %._crit_edge8158.loopexit ], [ zeroinitializer, %.noexc3593.preheader ]
  %.lcssa7820 = phi <16 x i32> [ zeroinitializer, %.noexc3595 ], [ %i.atw, %._crit_edge8158.loopexit ], [ zeroinitializer, %.noexc3593.preheader ]
  %.lcssa7819 = phi <16 x i32> [ zeroinitializer, %.noexc3595 ], [ %i.atz, %._crit_edge8158.loopexit ], [ zeroinitializer, %.noexc3593.preheader ]
  %.02995.lcssa = phi ptr [ %i.ara, %.noexc3595 ], [ %scevgep10041, %._crit_edge8158.loopexit ], [ %i.ara, %.noexc3593.preheader ] ; 2 uses
  %.02991.lcssa = phi i32 [ 0, %.noexc3595 ], [ %i.aue, %._crit_edge8158.loopexit ], [ %i.aru, %.noexc3593.preheader ] ; 3 uses
  %i.auf = add <16 x i32> %.lcssa7821, %.lcssa7822
  %i.aug = add <16 x i32> %i.auf, %.lcssa7820
  %i.auh = add <16 x i32> %i.aug, %.lcssa7819     ; 2 uses
  %i.aui = shufflevector <16 x i32> %i.auh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.auj = shufflevector <16 x i32> %i.auh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.auk = add <8 x i32> %i.aui, %i.auj           ; 2 uses
  %i.aul = or disjoint i32 %.02991.lcssa, 7
  %i.aum = icmp slt i32 %i.aul, %i.aqs
  br i1 %i.aum, label %.noexc3591.lr.ph, label %._crit_edge8192

.noexc3591.lr.ph:                                 ; preds = %._crit_edge8158
  %i.aun = load i32, ptr %i.c, align 4, !tbaa !9  ; 3 uses
  %i.auo = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !94
  %i.aup = load ptr, ptr %0, align 8, !tbaa !32, !noalias !94
  %i.auq = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !94
  %i.aur = load i64, ptr %i.cd, align 8, !tbaa !36, !noalias !94 ; 2 uses
  %factor.op.mul8199 = mul i64 %i.auq, %i.aur
  %i.aus = sext i32 %i.auo to i64
  %i.aut = load i32, ptr %i.b, align 4, !tbaa !9
  %i.auu = mul nsw i32 %i.aut, %i.aqt
  %i.auv = sext i32 %i.auu to i64
  %i.auw = mul i64 %i.aur, %i.aus
  %i.aux = mul i64 %i.auw, %i.auv
  %invariant.gep8201 = getelementptr i8, ptr %i.aup, i64 %i.aux
  %i.auy = load i32, ptr %i.a, align 4, !tbaa !9
  %i.auz = mul i32 %i.aun, %i.aqu
  %i.ava = mul i32 %i.auz, %i.auy
  %i.avb = sext i32 %i.ava to i64
  %invariant.gep8202 = getelementptr i8, ptr %invariant.gep8201, i64 %i.avb
  %i.avc = load i32, ptr %i.f, align 4, !tbaa !9  ; 4 uses
  %i.avd = icmp sgt i32 %i.avc, 0
  %i.ave = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.avf = icmp eq i32 %i.aun, 8
  %i.avg = add i32 %i.avc, -1
  %i.avh = zext i32 %i.avg to i64
  %i.avi = shl nuw nsw i64 %i.avh, 6              ; 2 uses
  %wide.trip.count10050 = zext nneg i32 %i.avc to i64
  %wide.trip.count10057 = zext nneg i32 %i.avc to i64
  br label %.noexc3591

.noexc3591:                                       ; preds = %.noexc3591.lr.ph, %._crit_edge8179
  %.129928191 = phi i32 [ %.02991.lcssa, %.noexc3591.lr.ph ], [ %i.awx, %._crit_edge8179 ] ; 2 uses
  %.229978190 = phi ptr [ %.02995.lcssa, %.noexc3591.lr.ph ], [ %.32998.lcssa, %._crit_edge8179 ] ; 5 uses
  %i.avj = phi <8 x i32> [ zeroinitializer, %.noexc3591.lr.ph ], [ %.lcssa7823, %._crit_edge8179 ] ; 3 uses
  %i.avk = phi <8 x i32> [ zeroinitializer, %.noexc3591.lr.ph ], [ %.lcssa7824, %._crit_edge8179 ] ; 3 uses
  %i.avl = phi <8 x i32> [ zeroinitializer, %.noexc3591.lr.ph ], [ %.lcssa7825, %._crit_edge8179 ] ; 3 uses
  %i.avm = phi <8 x i32> [ %i.auk, %.noexc3591.lr.ph ], [ %.lcssa7826, %._crit_edge8179 ] ; 3 uses
  %i.avn = sdiv i32 %.129928191, %i.aun
  %i.avo = sext i32 %i.avn to i64
  %.reass8200 = mul i64 %factor.op.mul8199, %i.avo
  %gep8203 = getelementptr i8, ptr %invariant.gep8202, i64 %.reass8200 ; 2 uses
  br i1 %i.avd, label %.lr.ph8178, label %._crit_edge8179

.lr.ph8178:                                       ; preds = %.noexc3591
  br i1 %i.avf, label %.lr.ph8178.split.us, label %.lr.ph8178.split

.lr.ph8178.split.us:                              ; preds = %.lr.ph8178, %.lr.ph8178.split.us
  %indvars.iv10052 = phi i64 [ %indvars.iv.next10053, %.lr.ph8178.split.us ], [ 0, %.lr.ph8178 ] ; 2 uses
  %.329988176.us = phi ptr [ %i.aww, %.lr.ph8178.split.us ], [ %.229978190, %.lr.ph8178 ] ; 3 uses
  %i.avp = phi <8 x i32> [ %i.awv, %.lr.ph8178.split.us ], [ %i.avj, %.lr.ph8178 ]
  %i.avq = phi <8 x i32> [ %i.awt, %.lr.ph8178.split.us ], [ %i.avk, %.lr.ph8178 ]
  %i.avr = phi <8 x i32> [ %i.awr, %.lr.ph8178.split.us ], [ %i.avl, %.lr.ph8178 ]
  %i.avs = phi <8 x i32> [ %i.awp, %.lr.ph8178.split.us ], [ %i.avm, %.lr.ph8178 ]
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %indvars.iv10052
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !9
  %i.avv = sext i32 %i.avu to i64
  %i.avw = getelementptr inbounds i8, ptr %gep8203, i64 %i.avv
  %i.avx = load <8 x i8>, ptr %i.avw, align 1, !tbaa !44
  %i.avy = sext <8 x i8> %i.avx to <8 x i16>      ; 4 uses
  %i.avz = load <4 x i64>, ptr %.329988176.us, align 32, !tbaa !44 ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %.329988176.us, i64 32
  %i.awb = load <4 x i64>, ptr %i.awa, align 32, !tbaa !44 ; 2 uses
  %i.awc = bitcast <4 x i64> %i.avz to <32 x i8>
  %i.awd = shufflevector <32 x i8> %i.awc, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awe = sext <16 x i8> %i.awd to <16 x i16>
  %i.awf = bitcast <4 x i64> %i.avz to <32 x i8>
  %i.awg = shufflevector <32 x i8> %i.awf, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.awh = sext <16 x i8> %i.awg to <16 x i16>
  %i.awi = bitcast <4 x i64> %i.awb to <32 x i8>
  %i.awj = shufflevector <32 x i8> %i.awi, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awk = sext <16 x i8> %i.awj to <16 x i16>
  %i.awl = bitcast <4 x i64> %i.awb to <32 x i8>
  %i.awm = shufflevector <32 x i8> %i.awl, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.awn = sext <16 x i8> %i.awm to <16 x i16>
  %i.awo = shufflevector <8 x i16> %i.avy, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.awp = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.avs, <16 x i16> %i.awo, <16 x i16> %i.awe) ; 2 uses
  %i.awq = shufflevector <8 x i16> %i.avy, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.awr = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.avr, <16 x i16> %i.awq, <16 x i16> %i.awh) ; 2 uses
  %i.aws = shufflevector <8 x i16> %i.avy, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.awt = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.avq, <16 x i16> %i.aws, <16 x i16> %i.awk) ; 2 uses
  %i.awu = shufflevector <8 x i16> %i.avy, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.awv = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.avp, <16 x i16> %i.awu, <16 x i16> %i.awn) ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %.329988176.us, i64 64
  %indvars.iv.next10053 = add nuw nsw i64 %indvars.iv10052, 1 ; 2 uses
  %exitcond10058.not = icmp eq i64 %indvars.iv.next10053, %wide.trip.count10057
  br i1 %exitcond10058.not, label %._crit_edge8179.loopexit, label %.lr.ph8178.split.us, !llvm.loop !97

._crit_edge8179.loopexit:                         ; preds = %.lr.ph8178.split.us
  %scevgep10054 = getelementptr i8, ptr %.229978190, i64 64
  %scevgep10055 = getelementptr i8, ptr %scevgep10054, i64 %i.avi
  br label %._crit_edge8179

._crit_edge8179.loopexit9621:                     ; preds = %.lr.ph8178.split
  %scevgep10047 = getelementptr i8, ptr %.229978190, i64 64
  %scevgep10048 = getelementptr i8, ptr %scevgep10047, i64 %i.avi
  br label %._crit_edge8179

._crit_edge8179:                                  ; preds = %._crit_edge8179.loopexit9621, %._crit_edge8179.loopexit, %.noexc3591
  %.lcssa7826 = phi <8 x i32> [ %i.avm, %.noexc3591 ], [ %i.awp, %._crit_edge8179.loopexit ], [ %i.ayb, %._crit_edge8179.loopexit9621 ] ; 2 uses
  %.lcssa7825 = phi <8 x i32> [ %i.avl, %.noexc3591 ], [ %i.awr, %._crit_edge8179.loopexit ], [ %i.ayd, %._crit_edge8179.loopexit9621 ] ; 2 uses
  %.lcssa7824 = phi <8 x i32> [ %i.avk, %.noexc3591 ], [ %i.awt, %._crit_edge8179.loopexit ], [ %i.ayf, %._crit_edge8179.loopexit9621 ] ; 2 uses
  %.lcssa7823 = phi <8 x i32> [ %i.avj, %.noexc3591 ], [ %i.awv, %._crit_edge8179.loopexit ], [ %i.ayh, %._crit_edge8179.loopexit9621 ] ; 2 uses
  %.32998.lcssa = phi ptr [ %.229978190, %.noexc3591 ], [ %scevgep10055, %._crit_edge8179.loopexit ], [ %scevgep10048, %._crit_edge8179.loopexit9621 ] ; 2 uses
  %i.awx = add nuw nsw i32 %.129928191, 8         ; 3 uses
  %i.awy = or disjoint i32 %i.awx, 7
  %i.awz = icmp slt i32 %i.awy, %i.aqs
  br i1 %i.awz, label %.noexc3591, label %._crit_edge8192, !llvm.loop !98

.lr.ph8178.split:                                 ; preds = %.lr.ph8178, %.lr.ph8178.split
  %indvars.iv10045 = phi i64 [ %indvars.iv.next10046, %.lr.ph8178.split ], [ 0, %.lr.ph8178 ] ; 2 uses
  %.329988176 = phi ptr [ %i.ayi, %.lr.ph8178.split ], [ %.229978190, %.lr.ph8178 ] ; 3 uses
  %i.axa = phi <8 x i32> [ %i.ayh, %.lr.ph8178.split ], [ %i.avj, %.lr.ph8178 ]
  %i.axb = phi <8 x i32> [ %i.ayf, %.lr.ph8178.split ], [ %i.avk, %.lr.ph8178 ]
  %i.axc = phi <8 x i32> [ %i.ayd, %.lr.ph8178.split ], [ %i.avl, %.lr.ph8178 ]
  %i.axd = phi <8 x i32> [ %i.ayb, %.lr.ph8178.split ], [ %i.avm, %.lr.ph8178 ]
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %indvars.iv10045
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !9
  %i.axg = sext i32 %i.axf to i64
  %i.axh = getelementptr inbounds i8, ptr %gep8203, i64 %i.axg
  %i.axi = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.axh, <8 x i32> %i.aaq, <8 x i32> splat (i32 -1), i8 1)
  %i.axj = trunc <8 x i32> %i.axi to <8 x i8>
  %i.axk = sext <8 x i8> %i.axj to <8 x i16>      ; 4 uses
  %i.axl = load <4 x i64>, ptr %.329988176, align 32, !tbaa !44 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.329988176, i64 32
  %i.axn = load <4 x i64>, ptr %i.axm, align 32, !tbaa !44 ; 2 uses
  %i.axo = bitcast <4 x i64> %i.axl to <32 x i8>
  %i.axp = shufflevector <32 x i8> %i.axo, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.axq = sext <16 x i8> %i.axp to <16 x i16>
  %i.axr = bitcast <4 x i64> %i.axl to <32 x i8>
  %i.axs = shufflevector <32 x i8> %i.axr, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.axt = sext <16 x i8> %i.axs to <16 x i16>
  %i.axu = bitcast <4 x i64> %i.axn to <32 x i8>
  %i.axv = shufflevector <32 x i8> %i.axu, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.axw = sext <16 x i8> %i.axv to <16 x i16>
  %i.axx = bitcast <4 x i64> %i.axn to <32 x i8>
  %i.axy = shufflevector <32 x i8> %i.axx, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.axz = sext <16 x i8> %i.axy to <16 x i16>
  %i.aya = shufflevector <8 x i16> %i.axk, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ayb = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.axd, <16 x i16> %i.aya, <16 x i16> %i.axq) ; 2 uses
  %i.ayc = shufflevector <8 x i16> %i.axk, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.ayd = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.axc, <16 x i16> %i.ayc, <16 x i16> %i.axt) ; 2 uses
  %i.aye = shufflevector <8 x i16> %i.axk, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.ayf = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.axb, <16 x i16> %i.aye, <16 x i16> %i.axw) ; 2 uses
  %i.ayg = shufflevector <8 x i16> %i.axk, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.ayh = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.axa, <16 x i16> %i.ayg, <16 x i16> %i.axz) ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %.329988176, i64 64
  %indvars.iv.next10046 = add nuw nsw i64 %indvars.iv10045, 1 ; 2 uses
  %exitcond10051.not = icmp eq i64 %indvars.iv.next10046, %wide.trip.count10050
  br i1 %exitcond10051.not, label %._crit_edge8179.loopexit9621, label %.lr.ph8178.split, !llvm.loop !97

._crit_edge8192:                                  ; preds = %._crit_edge8179, %._crit_edge8158
  %.lcssa7830 = phi <8 x i32> [ %i.auk, %._crit_edge8158 ], [ %.lcssa7826, %._crit_edge8179 ]
  %.lcssa7829 = phi <8 x i32> [ zeroinitializer, %._crit_edge8158 ], [ %.lcssa7825, %._crit_edge8179 ]
  %.lcssa7828 = phi <8 x i32> [ zeroinitializer, %._crit_edge8158 ], [ %.lcssa7824, %._crit_edge8179 ]
  %.lcssa7827 = phi <8 x i32> [ zeroinitializer, %._crit_edge8158 ], [ %.lcssa7823, %._crit_edge8179 ]
  %.22997.lcssa = phi ptr [ %.02995.lcssa, %._crit_edge8158 ], [ %.32998.lcssa, %._crit_edge8179 ] ; 3 uses
  %.12992.lcssa = phi i32 [ %.02991.lcssa, %._crit_edge8158 ], [ %i.awx, %._crit_edge8179 ] ; 6 uses
  %i.ayj = add <8 x i32> %.lcssa7829, %.lcssa7830
  %i.ayk = add <8 x i32> %i.ayj, %.lcssa7828
  %i.ayl = add <8 x i32> %i.ayk, %.lcssa7827      ; 3 uses
  %i.aym = or disjoint i32 %.12992.lcssa, 1
  %i.ayn = icmp slt i32 %i.aym, %i.aqs
  br i1 %i.ayn, label %.noexc3589.lr.ph, label %.preheader7714

.noexc3589.lr.ph:                                 ; preds = %._crit_edge8192
  %i.ayo = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !99
  %i.ayp = load ptr, ptr %0, align 8, !tbaa !32, !noalias !99
  %i.ayq = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !99
  %i.ayr = load i64, ptr %i.cd, align 8, !tbaa !36, !noalias !99 ; 2 uses
  %factor.op.mul8217 = mul i64 %i.ayq, %i.ayr
  %i.ays = sext i32 %i.ayo to i64
  %i.ayt = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ayu = mul nsw i32 %i.ayt, %i.aqt
  %i.ayv = sext i32 %i.ayu to i64
  %i.ayw = mul i64 %i.ayr, %i.ays
  %i.ayx = mul i64 %i.ayw, %i.ayv
  %invariant.gep8219 = getelementptr i8, ptr %i.ayp, i64 %i.ayx
  %i.ayy = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ayz = mul nsw i32 %i.ayy, %i.aqu
  %i.aza = sext i32 %i.ayz to i64
  %invariant.gep8220 = getelementptr i8, ptr %invariant.gep8219, i64 %i.aza
  %i.azb = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.azc = icmp sgt i32 %i.azb, 0
  %i.azd = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.azc, label %.noexc3589.us.preheader, label %.noexc3589.preheader

.noexc3589.preheader:                             ; preds = %.noexc3589.lr.ph
  %i.aze = add nuw i32 %.12992.lcssa, 2
  %11 = add nuw i32 %.12992.lcssa, 3
  %smax10059 = call i32 @llvm.smax.i32(i32 %i.aqs, i32 %11)
  %i.azf = add nsw i32 %smax10059, -2
  %i.azg = sub nsw i32 %i.azf, %.12992.lcssa
  %i.azh = and i32 %i.azg, -2
  %i.azi = add i32 %i.aze, %i.azh
  br label %.preheader7714

.noexc3589.us.preheader:                          ; preds = %.noexc3589.lr.ph
  %i.azj = add nsw i32 %i.azb, -1
  %i.azk = zext nneg i32 %i.azj to i64
  %i.azl = shl nuw nsw i64 %i.azk, 4
  %i.azm = zext nneg i32 %.12992.lcssa to i64
  %wide.trip.count10065 = zext nneg i32 %i.azb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count10065, 1
  %i.azn = icmp eq i32 %i.azb, 1
  %unroll_iter = and i64 %wide.trip.count10065, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod11950 = trunc i32 %i.azb to i1
  br label %.noexc3589.us

.noexc3589.us:                                    ; preds = %.noexc3589.us.preheader, %._crit_edge8208.us
  %indvars.iv10067 = phi i64 [ %i.azm, %.noexc3589.us.preheader ], [ %indvars.iv.next10068, %._crit_edge8208.us ] ; 2 uses
  %.429998212.us = phi ptr [ %.22997.lcssa, %.noexc3589.us.preheader ], [ %scevgep10063, %._crit_edge8208.us ] ; 3 uses
  %i.azo = phi <8 x i32> [ %i.ayl, %.noexc3589.us.preheader ], [ %.lcssa11945, %._crit_edge8208.us ] ; 2 uses
  %.reass8218.us = mul i64 %factor.op.mul8217, %indvars.iv10067
  %gep8221.us = getelementptr i8, ptr %invariant.gep8220, i64 %.reass8218.us ; 3 uses
  br i1 %i.azn, label %.epil.preheader, label %.noexc3589.us.new

.noexc3589.us.new:                                ; preds = %.noexc3589.us, %.noexc3589.us.new
  %indvars.iv10060 = phi i64 [ %indvars.iv.next10061.1, %.noexc3589.us.new ], [ 0, %.noexc3589.us ] ; 3 uses
  %.530008205.us = phi ptr [ %i.bav, %.noexc3589.us.new ], [ %.429998212.us, %.noexc3589.us ] ; 3 uses
  %.376378204.us = phi <8 x i32> [ %i.bau, %.noexc3589.us.new ], [ %i.azo, %.noexc3589.us ]
  %niter = phi i64 [ %niter.next.1, %.noexc3589.us.new ], [ 0, %.noexc3589.us ]
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.azd, i64 %indvars.iv10060
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !9
  %i.azr = sext i32 %i.azq to i64
  %i.azs = getelementptr inbounds i8, ptr %gep8221.us, i64 %i.azr ; 2 uses
  %i.azt = load i8, ptr %i.azs, align 1, !tbaa !44
  %i.azu = sext i8 %i.azt to i16
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azs, i64 %i.da
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !44
  %i.azx = sext i8 %i.azw to i16
  %i.azy = insertelement <8 x i16> poison, i16 %i.azu, i64 0
  %i.azz = insertelement <8 x i16> %i.azy, i16 %i.azx, i64 1
  %i.baa = load <16 x i8>, ptr %.530008205.us, align 16, !tbaa !44
  %i.bab = sext <16 x i8> %i.baa to <16 x i16>
  %i.bac = shufflevector <8 x i16> %i.azz, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bad = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.376378204.us, <16 x i16> %i.bac, <16 x i16> %i.bab)
  %i.bae = getelementptr inbounds nuw i8, ptr %.530008205.us, i64 16
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %i.azd, i64 %indvars.iv10060
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 4
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !9
  %i.bai = sext i32 %i.bah to i64
  %i.baj = getelementptr inbounds i8, ptr %gep8221.us, i64 %i.bai ; 2 uses
  %i.bak = load i8, ptr %i.baj, align 1, !tbaa !44
  %i.bal = sext i8 %i.bak to i16
  %i.bam = getelementptr inbounds nuw i8, ptr %i.baj, i64 %i.da
  %i.ban = load i8, ptr %i.bam, align 1, !tbaa !44
  %i.bao = sext i8 %i.ban to i16
  %i.bap = insertelement <8 x i16> poison, i16 %i.bal, i64 0
  %i.baq = insertelement <8 x i16> %i.bap, i16 %i.bao, i64 1
  %i.bar = load <16 x i8>, ptr %i.bae, align 16, !tbaa !44
  %i.bas = sext <16 x i8> %i.bar to <16 x i16>
  %i.bat = shufflevector <8 x i16> %i.baq, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bau = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.bad, <16 x i16> %i.bat, <16 x i16> %i.bas) ; 3 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.530008205.us, i64 32 ; 2 uses
  %indvars.iv.next10061.1 = add nuw nsw i64 %indvars.iv10060, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge8208.us.unr-lcssa, label %.noexc3589.us.new, !llvm.loop !102

._crit_edge8208.us.unr-lcssa:                     ; preds = %.noexc3589.us.new
  br i1 %lcmp.mod.not, label %._crit_edge8208.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge8208.us.unr-lcssa, %.noexc3589.us
  %indvars.iv10060.epil.init = phi i64 [ 0, %.noexc3589.us ], [ %indvars.iv.next10061.1, %._crit_edge8208.us.unr-lcssa ]
  %.530008205.us.epil.init = phi ptr [ %.429998212.us, %.noexc3589.us ], [ %i.bav, %._crit_edge8208.us.unr-lcssa ]
  %.376378204.us.epil.init = phi <8 x i32> [ %i.azo, %.noexc3589.us ], [ %i.bau, %._crit_edge8208.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod11950)
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.azd, i64 %indvars.iv10060.epil.init
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !9
  %i.bay = sext i32 %i.bax to i64
  %i.baz = getelementptr inbounds i8, ptr %gep8221.us, i64 %i.bay ; 2 uses
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !44
  %i.bbb = sext i8 %i.bba to i16
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.baz, i64 %i.da
  %i.bbd = load i8, ptr %i.bbc, align 1, !tbaa !44
  %i.bbe = sext i8 %i.bbd to i16
  %i.bbf = insertelement <8 x i16> poison, i16 %i.bbb, i64 0
  %i.bbg = insertelement <8 x i16> %i.bbf, i16 %i.bbe, i64 1
  %i.bbh = load <16 x i8>, ptr %.530008205.us.epil.init, align 16, !tbaa !44
  %i.bbi = sext <16 x i8> %i.bbh to <16 x i16>
  %i.bbj = shufflevector <8 x i16> %i.bbg, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bbk = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.376378204.us.epil.init, <16 x i16> %i.bbj, <16 x i16> %i.bbi)
  br label %._crit_edge8208.us

._crit_edge8208.us:                               ; preds = %._crit_edge8208.us.unr-lcssa, %.epil.preheader
  %.lcssa11945 = phi <8 x i32> [ %i.bau, %._crit_edge8208.us.unr-lcssa ], [ %i.bbk, %.epil.preheader ] ; 2 uses
  %scevgep10062.a = getelementptr i8, ptr %.429998212.us, i64 16
  %scevgep10063 = getelementptr i8, ptr %scevgep10062.a, i64 %i.azl ; 2 uses
  %indvars.iv.next10068 = add nuw nsw i64 %indvars.iv10067, 2 ; 3 uses
  %i.bbl = trunc i64 %indvars.iv.next10068 to i32
  %i.bbm = or i32 %i.bbl, 1
  %i.bbn = icmp slt i32 %i.bbm, %i.aqs
  br i1 %i.bbn, label %.noexc3589.us, label %.preheader7714.loopexit, !llvm.loop !103

.preheader7714.loopexit:                          ; preds = %._crit_edge8208.us
  %i.bbo = trunc nuw i64 %indvars.iv.next10068 to i32
  br label %.preheader7714

.preheader7714:                                   ; preds = %.noexc3589.preheader, %.preheader7714.loopexit, %._crit_edge8192
  %.27636.lcssa.in = phi <8 x i32> [ %i.ayl, %._crit_edge8192 ], [ %.lcssa11945, %.preheader7714.loopexit ], [ %i.ayl, %.noexc3589.preheader ] ; 3 uses
  %.42999.lcssa = phi ptr [ %.22997.lcssa, %._crit_edge8192 ], [ %scevgep10063, %.preheader7714.loopexit ], [ %.22997.lcssa, %.noexc3589.preheader ]
  %.22993.lcssa = phi i32 [ %.12992.lcssa, %._crit_edge8192 ], [ %i.bbo, %.preheader7714.loopexit ], [ %i.azi, %.noexc3589.preheader ] ; 2 uses
  %i.bbp = icmp slt i32 %.22993.lcssa, %i.aqs
  br i1 %i.bbp, label %.noexc3587.lr.ph, label %._crit_edge8235

.noexc3587.lr.ph:                                 ; preds = %.preheader7714
  %i.bbq = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !104
  %i.bbr = load ptr, ptr %0, align 8, !tbaa !32, !noalias !104
  %i.bbs = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !104
  %i.bbt = load i64, ptr %i.cd, align 8, !tbaa !36, !noalias !104 ; 2 uses
  %factor.op.mul8237 = mul i64 %i.bbs, %i.bbt
  %i.bbu = sext i32 %i.bbq to i64
  %i.bbv = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bbw = mul nsw i32 %i.bbv, %i.aqt
  %i.bbx = sext i32 %i.bbw to i64
  %i.bby = mul i64 %i.bbt, %i.bbu
  %i.bbz = mul i64 %i.bby, %i.bbx
  %invariant.gep8239 = getelementptr i8, ptr %i.bbr, i64 %i.bbz
  %i.bca = load i32, ptr %i.a, align 4, !tbaa !9
  %i.bcb = mul nsw i32 %i.bca, %i.aqu
  %i.bcc = sext i32 %i.bcb to i64
  %invariant.gep8240 = getelementptr i8, ptr %invariant.gep8239, i64 %i.bcc
  %i.bcd = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.bce = icmp sgt i32 %i.bcd, 0
  %i.bcf = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.bce, label %.noexc3587.us.preheader, label %._crit_edge8235

.noexc3587.us.preheader:                          ; preds = %.noexc3587.lr.ph
  %i.bcg = add nsw i32 %i.bcd, -1
  %i.bch = zext nneg i32 %i.bcg to i64
  %i.bci = shl nuw nsw i64 %i.bch, 3
  %i.bcj = zext i32 %.22993.lcssa to i64
  %wide.trip.count10075 = zext nneg i32 %i.bcd to i64 ; 2 uses
  %xtraiter11952 = and i64 %wide.trip.count10075, 1
  %i.bck = icmp eq i32 %i.bcd, 1
  %unroll_iter11956 = and i64 %wide.trip.count10075, 2147483646
  %lcmp.mod11953.not = icmp eq i64 %xtraiter11952, 0
  %lcmp.mod11955 = trunc i32 %i.bcd to i1
  br label %.noexc3587.us

.noexc3587.us:                                    ; preds = %.noexc3587.us.preheader, %._crit_edge8229.us
  %indvars.iv10077 = phi i64 [ %i.bcj, %.noexc3587.us.preheader ], [ %indvars.iv.next10078, %._crit_edge8229.us ] ; 2 uses
  %.630018233.us = phi ptr [ %.42999.lcssa, %.noexc3587.us.preheader ], [ %scevgep10073, %._crit_edge8229.us ] ; 3 uses
  %i.bcl = phi <8 x i32> [ %.27636.lcssa.in, %.noexc3587.us.preheader ], [ %.lcssa11946, %._crit_edge8229.us ] ; 2 uses
  %.reass8238.us = mul i64 %factor.op.mul8237, %indvars.iv10077
  %gep8241.us = getelementptr i8, ptr %invariant.gep8240, i64 %.reass8238.us ; 3 uses
  br i1 %i.bck, label %.epil.preheader11951, label %.noexc3587.us.new

.noexc3587.us.new:                                ; preds = %.noexc3587.us, %.noexc3587.us.new
  %indvars.iv10070 = phi i64 [ %indvars.iv.next10071.1, %.noexc3587.us.new ], [ 0, %.noexc3587.us ] ; 3 uses
  %.730028226.us = phi ptr [ %i.bdo, %.noexc3587.us.new ], [ %.630018233.us, %.noexc3587.us ] ; 3 uses
  %.576398225.us = phi <8 x i32> [ %i.bdn, %.noexc3587.us.new ], [ %i.bcl, %.noexc3587.us ]
  %niter11957 = phi i64 [ %niter11957.next.1, %.noexc3587.us.new ], [ 0, %.noexc3587.us ]
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %indvars.iv10070
  %i.bcn = load i32, ptr %i.bcm, align 4, !tbaa !9
  %i.bco = sext i32 %i.bcn to i64
  %i.bcp = getelementptr inbounds i8, ptr %gep8241.us, i64 %i.bco
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !44
  %i.bcr = sext i8 %i.bcq to i16
  %i.bcs = insertelement <8 x i16> poison, i16 %i.bcr, i64 0
  %i.bct = shufflevector <8 x i16> %i.bcs, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bcu = load <8 x i8>, ptr %.730028226.us, align 1, !tbaa !44
  %i.bcv = sext <8 x i8> %i.bcu to <8 x i16>
  %i.bcw = mul <8 x i16> %i.bct, %i.bcv
  %i.bcx = sext <8 x i16> %i.bcw to <8 x i32>
  %i.bcy = add <8 x i32> %.576398225.us, %i.bcx
  %i.bcz = getelementptr inbounds nuw i8, ptr %.730028226.us, i64 8
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %indvars.iv10070
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 4
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !9
  %i.bdd = sext i32 %i.bdc to i64
  %i.bde = getelementptr inbounds i8, ptr %gep8241.us, i64 %i.bdd
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !44
  %i.bdg = sext i8 %i.bdf to i16
  %i.bdh = insertelement <8 x i16> poison, i16 %i.bdg, i64 0
  %i.bdi = shufflevector <8 x i16> %i.bdh, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bdj = load <8 x i8>, ptr %i.bcz, align 1, !tbaa !44
  %i.bdk = sext <8 x i8> %i.bdj to <8 x i16>
  %i.bdl = mul <8 x i16> %i.bdi, %i.bdk
  %i.bdm = sext <8 x i16> %i.bdl to <8 x i32>
  %i.bdn = add <8 x i32> %i.bcy, %i.bdm           ; 3 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %.730028226.us, i64 16 ; 2 uses
  %indvars.iv.next10071.1 = add nuw nsw i64 %indvars.iv10070, 2 ; 2 uses
  %niter11957.next.1 = add i64 %niter11957, 2     ; 2 uses
  %niter11957.ncmp.1 = icmp eq i64 %niter11957.next.1, %unroll_iter11956
  br i1 %niter11957.ncmp.1, label %._crit_edge8229.us.unr-lcssa, label %.noexc3587.us.new, !llvm.loop !107

._crit_edge8229.us.unr-lcssa:                     ; preds = %.noexc3587.us.new
  br i1 %lcmp.mod11953.not, label %._crit_edge8229.us, label %.epil.preheader11951

end_hunk_1
begin_hunk_2_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.civ = phi <16 x i32> [ zeroinitializer, %.noexc3551 ], [ %i.cgo, %._crit_edge8447.loopexit ] ; 2 uses
  %i.ciw = phi <16 x i32> [ zeroinitializer, %.noexc3551 ], [ %i.cgp, %._crit_edge8447.loopexit ] ; 2 uses
  %.02927.lcssa = phi ptr [ %i.cfd, %.noexc3551 ], [ %.12928.lcssa, %._crit_edge8447.loopexit ] ; 2 uses
  %.02923.lcssa = phi i32 [ 0, %.noexc3551 ], [ %i.cis, %._crit_edge8447.loopexit ] ; 3 uses
  %i.cix = shufflevector <16 x i32> %i.cit, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ciy = shufflevector <16 x i32> %i.cit, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ciz = add <8 x i32> %i.cix, %i.ciy           ; 2 uses
  %i.cja = shufflevector <16 x i32> %i.ciu, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cjb = shufflevector <16 x i32> %i.ciu, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjc = add <8 x i32> %i.cja, %i.cjb           ; 2 uses
  %i.cjd = shufflevector <16 x i32> %i.civ, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cje = shufflevector <16 x i32> %i.civ, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjf = add <8 x i32> %i.cjd, %i.cje           ; 2 uses
  %i.cjg = shufflevector <16 x i32> %i.ciw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cjh = shufflevector <16 x i32> %i.ciw, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cji = add <8 x i32> %i.cjg, %i.cjh           ; 2 uses
  %i.cjj = shufflevector <8 x i32> %i.ciz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cjk = shufflevector <8 x i32> %i.ciz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cjl = shufflevector <8 x i32> %i.cjc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cjm = shufflevector <8 x i32> %i.cjc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cjn = shufflevector <8 x i32> %i.cjf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cjo = shufflevector <8 x i32> %i.cjf, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cjp = shufflevector <8 x i32> %i.cji, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cjq = shufflevector <8 x i32> %i.cji, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cjr = or disjoint i32 %.02923.lcssa, 7
  %i.cjs = icmp slt i32 %i.cjr, %i.ces
  br i1 %i.cjs, label %.noexc3545.lr.ph, label %._crit_edge8488

.noexc3545.lr.ph:                                 ; preds = %._crit_edge8447
  %i.cjt = load i32, ptr %i.c, align 4, !tbaa !9  ; 4 uses
  %i.cju = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !146
  %i.cjv = load ptr, ptr %0, align 8, !tbaa !32, !noalias !146 ; 2 uses
  %i.cjw = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !146
  %i.cjx = load i64, ptr %i.cs, align 8, !tbaa !36, !noalias !146 ; 2 uses
  %factor.op.mul8495 = mul i64 %i.cjw, %i.cjx
  %i.cjy = sext i32 %i.cju to i64
  %i.cjz = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.cka = mul nsw i32 %i.cjz, %i.ceu
  %i.ckb = sext i32 %i.cka to i64
  %i.ckc = mul i64 %i.cjx, %i.cjy                 ; 2 uses
  %i.ckd = mul i64 %i.ckc, %i.ckb
  %invariant.gep8497 = getelementptr i8, ptr %i.cjv, i64 %i.ckd
  %i.cke = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.ckf = mul i32 %i.cjt, %i.cew
  %i.ckg = mul i32 %i.ckf, %i.cke
  %i.ckh = sext i32 %i.ckg to i64
  %invariant.gep8498 = getelementptr i8, ptr %invariant.gep8497, i64 %i.ckh
  %i.cki = mul nsw i32 %i.cjz, %i.cev
  %i.ckj = sext i32 %i.cki to i64
  %i.ckk = mul i64 %i.ckc, %i.ckj
  %invariant.gep8502 = getelementptr i8, ptr %i.cjv, i64 %i.ckk
  %i.ckl = mul i32 %i.cjt, %i.cex
  %i.ckm = mul i32 %i.ckl, %i.cke
  %i.ckn = sext i32 %i.ckm to i64
  %invariant.gep8503 = getelementptr i8, ptr %invariant.gep8502, i64 %i.ckn
  %i.cko = load i32, ptr %i.f, align 4, !tbaa !9  ; 4 uses
  %i.ckp = icmp sgt i32 %i.cko, 0
  %i.ckq = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.ckr = icmp eq i32 %i.cjt, 8
  %i.cks = add i32 %i.cko, -1
  %i.ckt = zext i32 %i.cks to i64
  %i.cku = shl nuw nsw i64 %i.ckt, 5              ; 2 uses
  %wide.trip.count10134 = zext nneg i32 %i.cko to i64
  %wide.trip.count10141 = zext nneg i32 %i.cko to i64
  br label %.noexc3545

.noexc3545:                                       ; preds = %.noexc3545.lr.ph, %._crit_edge8471
  %.129248487 = phi i32 [ %.02923.lcssa, %.noexc3545.lr.ph ], [ %i.cmm, %._crit_edge8471 ] ; 2 uses
  %.229298486 = phi ptr [ %.02927.lcssa, %.noexc3545.lr.ph ], [ %.32930.lcssa, %._crit_edge8471 ] ; 5 uses
  %i.ckv = phi <8 x i32> [ zeroinitializer, %.noexc3545.lr.ph ], [ %i.cml, %._crit_edge8471 ] ; 3 uses
  %i.ckw = phi <8 x i32> [ zeroinitializer, %.noexc3545.lr.ph ], [ %i.cmk, %._crit_edge8471 ] ; 3 uses
  %i.ckx = phi <8 x i32> [ zeroinitializer, %.noexc3545.lr.ph ], [ %i.cmj, %._crit_edge8471 ] ; 3 uses
  %i.cky = phi <8 x i32> [ zeroinitializer, %.noexc3545.lr.ph ], [ %i.cmi, %._crit_edge8471 ] ; 3 uses
  %i.ckz = sdiv i32 %.129248487, %i.cjt
  %i.cla = sext i32 %i.ckz to i64
  %.reass8496 = mul i64 %factor.op.mul8495, %i.cla ; 2 uses
  %gep8499 = getelementptr i8, ptr %invariant.gep8498, i64 %.reass8496 ; 2 uses
  %gep8504 = getelementptr i8, ptr %invariant.gep8503, i64 %.reass8496 ; 2 uses
  br i1 %i.ckp, label %.lr.ph8470, label %._crit_edge8471

.lr.ph8470:                                       ; preds = %.noexc3545
  br i1 %i.ckr, label %.lr.ph8470.split.us, label %.lr.ph8470.split

.lr.ph8470.split.us:                              ; preds = %.lr.ph8470, %.lr.ph8470.split.us
  %indvars.iv10136 = phi i64 [ %indvars.iv.next10137, %.lr.ph8470.split.us ], [ 0, %.lr.ph8470 ] ; 2 uses
  %.329308468.us = phi ptr [ %i.cmh, %.lr.ph8470.split.us ], [ %.229298486, %.lr.ph8470 ] ; 2 uses
  %.175468467.us = phi <8 x i32> [ %i.cmg, %.lr.ph8470.split.us ], [ %i.ckv, %.lr.ph8470 ]
  %.175488466.us = phi <8 x i32> [ %i.cmd, %.lr.ph8470.split.us ], [ %i.ckw, %.lr.ph8470 ]
  %.175508465.us = phi <8 x i32> [ %i.cma, %.lr.ph8470.split.us ], [ %i.ckx, %.lr.ph8470 ]
  %.175528464.us = phi <8 x i32> [ %i.clw, %.lr.ph8470.split.us ], [ %i.cky, %.lr.ph8470 ]
  %i.clb = getelementptr inbounds nuw [4 x i8], ptr %i.ckq, i64 %indvars.iv10136
  %i.clc = load i32, ptr %i.clb, align 4, !tbaa !9
  %i.cld = sext i32 %i.clc to i64                 ; 2 uses
  %i.cle = getelementptr inbounds i8, ptr %gep8499, i64 %i.cld
  %i.clf = getelementptr inbounds i8, ptr %gep8504, i64 %i.cld
  %i.clg = load <8 x i8>, ptr %i.cle, align 1, !tbaa !44
  %i.clh = load <8 x i8>, ptr %i.clf, align 1, !tbaa !44
  %i.cli = sext <8 x i8> %i.clg to <8 x i16>      ; 2 uses
  %i.clj = sext <8 x i8> %i.clh to <8 x i16>      ; 2 uses
  %i.clk = load <4 x i64>, ptr %.329308468.us, align 32, !tbaa !44 ; 2 uses
  %i.cll = bitcast <4 x i64> %i.clk to <32 x i8>
  %i.clm = shufflevector <32 x i8> %i.cll, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cln = sext <16 x i8> %i.clm to <16 x i16>    ; 2 uses
  %i.clo = bitcast <4 x i64> %i.clk to <32 x i8>
  %i.clp = shufflevector <32 x i8> %i.clo, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.clq = sext <16 x i8> %i.clp to <16 x i16>    ; 2 uses
  %i.clr = bitcast <8 x i16> %i.cli to <4 x i32>  ; 2 uses
  %i.cls = bitcast <8 x i16> %i.clj to <4 x i32>  ; 2 uses
  %i.clt = bitcast <8 x i16> %i.cli to <4 x i32>  ; 2 uses
  %i.clu = shufflevector <4 x i32> %i.clt, <4 x i32> %i.clr, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.clv = bitcast <8 x i32> %i.clu to <16 x i16>
  %i.clw = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175528464.us, <16 x i16> %i.clv, <16 x i16> %i.cln) ; 2 uses
  %i.clx = bitcast <8 x i16> %i.clj to <4 x i32>  ; 2 uses
  %i.cly = shufflevector <4 x i32> %i.clx, <4 x i32> %i.cls, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.clz = bitcast <8 x i32> %i.cly to <16 x i16>
  %i.cma = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175508465.us, <16 x i16> %i.clz, <16 x i16> %i.cln) ; 2 uses
  %i.cmb = shufflevector <4 x i32> %i.clt, <4 x i32> %i.clr, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.cmc = bitcast <8 x i32> %i.cmb to <16 x i16>
  %i.cmd = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175488466.us, <16 x i16> %i.cmc, <16 x i16> %i.clq) ; 2 uses
  %i.cme = shufflevector <4 x i32> %i.clx, <4 x i32> %i.cls, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.cmf = bitcast <8 x i32> %i.cme to <16 x i16>
  %i.cmg = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175468467.us, <16 x i16> %i.cmf, <16 x i16> %i.clq) ; 2 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %.329308468.us, i64 32
  %indvars.iv.next10137 = add nuw nsw i64 %indvars.iv10136, 1 ; 2 uses
  %exitcond10142.not = icmp eq i64 %indvars.iv.next10137, %wide.trip.count10141
  br i1 %exitcond10142.not, label %._crit_edge8471.loopexit, label %.lr.ph8470.split.us, !llvm.loop !149

._crit_edge8471.loopexit:                         ; preds = %.lr.ph8470.split.us
  %scevgep10138.a = getelementptr i8, ptr %.229298486, i64 32
  %scevgep10139 = getelementptr i8, ptr %scevgep10138.a, i64 %i.cku
  br label %._crit_edge8471

._crit_edge8471.loopexit9613:                     ; preds = %.lr.ph8470.split
  %scevgep10131.a = getelementptr i8, ptr %.229298486, i64 32
  %scevgep10132 = getelementptr i8, ptr %scevgep10131.a, i64 %i.cku
  br label %._crit_edge8471

._crit_edge8471:                                  ; preds = %._crit_edge8471.loopexit9613, %._crit_edge8471.loopexit, %.noexc3545
  %i.cmi = phi <8 x i32> [ %i.cky, %.noexc3545 ], [ %i.clw, %._crit_edge8471.loopexit ], [ %i.cnm, %._crit_edge8471.loopexit9613 ] ; 2 uses
  %i.cmj = phi <8 x i32> [ %i.ckx, %.noexc3545 ], [ %i.cma, %._crit_edge8471.loopexit ], [ %i.cnq, %._crit_edge8471.loopexit9613 ] ; 2 uses
  %i.cmk = phi <8 x i32> [ %i.ckw, %.noexc3545 ], [ %i.cmd, %._crit_edge8471.loopexit ], [ %i.cnt, %._crit_edge8471.loopexit9613 ] ; 2 uses
  %i.cml = phi <8 x i32> [ %i.ckv, %.noexc3545 ], [ %i.cmg, %._crit_edge8471.loopexit ], [ %i.cnw, %._crit_edge8471.loopexit9613 ] ; 2 uses
  %.32930.lcssa = phi ptr [ %.229298486, %.noexc3545 ], [ %scevgep10139, %._crit_edge8471.loopexit ], [ %scevgep10132, %._crit_edge8471.loopexit9613 ] ; 2 uses
  %i.cmm = add nuw nsw i32 %.129248487, 8         ; 3 uses
  %i.cmn = or disjoint i32 %i.cmm, 7
  %i.cmo = icmp slt i32 %i.cmn, %i.ces
  br i1 %i.cmo, label %.noexc3545, label %._crit_edge8488, !llvm.loop !150

.lr.ph8470.split:                                 ; preds = %.lr.ph8470, %.lr.ph8470.split
  %indvars.iv10129 = phi i64 [ %indvars.iv.next10130, %.lr.ph8470.split ], [ 0, %.lr.ph8470 ] ; 2 uses
  %.329308468 = phi ptr [ %i.cnx, %.lr.ph8470.split ], [ %.229298486, %.lr.ph8470 ] ; 2 uses
  %.175468467 = phi <8 x i32> [ %i.cnw, %.lr.ph8470.split ], [ %i.ckv, %.lr.ph8470 ]
  %.175488466 = phi <8 x i32> [ %i.cnt, %.lr.ph8470.split ], [ %i.ckw, %.lr.ph8470 ]
  %.175508465 = phi <8 x i32> [ %i.cnq, %.lr.ph8470.split ], [ %i.ckx, %.lr.ph8470 ]
  %.175528464 = phi <8 x i32> [ %i.cnm, %.lr.ph8470.split ], [ %i.cky, %.lr.ph8470 ]
  %i.cmp = getelementptr inbounds nuw [4 x i8], ptr %i.ckq, i64 %indvars.iv10129
  %i.cmq = load i32, ptr %i.cmp, align 4, !tbaa !9
  %i.cmr = sext i32 %i.cmq to i64                 ; 2 uses
  %i.cms = getelementptr inbounds i8, ptr %gep8499, i64 %i.cmr
  %i.cmt = getelementptr inbounds i8, ptr %gep8504, i64 %i.cmr
  %i.cmu = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.cms, <8 x i32> %i.bhl, <8 x i32> splat (i32 -1), i8 1)
  %i.cmv = trunc <8 x i32> %i.cmu to <8 x i8>
  %i.cmw = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.cmt, <8 x i32> %i.bhl, <8 x i32> splat (i32 -1), i8 1)
  %i.cmx = trunc <8 x i32> %i.cmw to <8 x i8>
  %i.cmy = sext <8 x i8> %i.cmv to <8 x i16>      ; 2 uses
  %i.cmz = sext <8 x i8> %i.cmx to <8 x i16>      ; 2 uses
  %i.cna = load <4 x i64>, ptr %.329308468, align 32, !tbaa !44 ; 2 uses
  %i.cnb = bitcast <4 x i64> %i.cna to <32 x i8>
  %i.cnc = shufflevector <32 x i8> %i.cnb, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cnd = sext <16 x i8> %i.cnc to <16 x i16>    ; 2 uses
  %i.cne = bitcast <4 x i64> %i.cna to <32 x i8>
  %i.cnf = shufflevector <32 x i8> %i.cne, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cng = sext <16 x i8> %i.cnf to <16 x i16>    ; 2 uses
  %i.cnh = bitcast <8 x i16> %i.cmy to <4 x i32>  ; 2 uses
  %i.cni = bitcast <8 x i16> %i.cmz to <4 x i32>  ; 2 uses
  %i.cnj = bitcast <8 x i16> %i.cmy to <4 x i32>  ; 2 uses
  %i.cnk = shufflevector <4 x i32> %i.cnj, <4 x i32> %i.cnh, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.cnl = bitcast <8 x i32> %i.cnk to <16 x i16>
  %i.cnm = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175528464, <16 x i16> %i.cnl, <16 x i16> %i.cnd) ; 2 uses
  %i.cnn = bitcast <8 x i16> %i.cmz to <4 x i32>  ; 2 uses
  %i.cno = shufflevector <4 x i32> %i.cnn, <4 x i32> %i.cni, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.cnp = bitcast <8 x i32> %i.cno to <16 x i16>
  %i.cnq = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175508465, <16 x i16> %i.cnp, <16 x i16> %i.cnd) ; 2 uses
  %i.cnr = shufflevector <4 x i32> %i.cnj, <4 x i32> %i.cnh, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.cns = bitcast <8 x i32> %i.cnr to <16 x i16>
  %i.cnt = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175488466, <16 x i16> %i.cns, <16 x i16> %i.cng) ; 2 uses
  %i.cnu = shufflevector <4 x i32> %i.cnn, <4 x i32> %i.cni, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.cnv = bitcast <8 x i32> %i.cnu to <16 x i16>
  %i.cnw = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.175468467, <16 x i16> %i.cnv, <16 x i16> %i.cng) ; 2 uses
  %i.cnx = getelementptr inbounds nuw i8, ptr %.329308468, i64 32
  %indvars.iv.next10130 = add nuw nsw i64 %indvars.iv10129, 1 ; 2 uses
  %exitcond10135.not = icmp eq i64 %indvars.iv.next10130, %wide.trip.count10134
  br i1 %exitcond10135.not, label %._crit_edge8471.loopexit9613, label %.lr.ph8470.split, !llvm.loop !149

._crit_edge8488:                                  ; preds = %._crit_edge8471, %._crit_edge8447
  %i.cny = phi <8 x i32> [ zeroinitializer, %._crit_edge8447 ], [ %i.cmi, %._crit_edge8471 ] ; 2 uses
  %i.cnz = phi <8 x i32> [ zeroinitializer, %._crit_edge8447 ], [ %i.cmj, %._crit_edge8471 ] ; 2 uses
  %i.coa = phi <8 x i32> [ zeroinitializer, %._crit_edge8447 ], [ %i.cmk, %._crit_edge8471 ] ; 2 uses
  %i.cob = phi <8 x i32> [ zeroinitializer, %._crit_edge8447 ], [ %i.cml, %._crit_edge8471 ] ; 2 uses
  %.22929.lcssa = phi ptr [ %.02927.lcssa, %._crit_edge8447 ], [ %.32930.lcssa, %._crit_edge8471 ] ; 3 uses
  %.12924.lcssa = phi i32 [ %.02923.lcssa, %._crit_edge8447 ], [ %i.cmm, %._crit_edge8471 ] ; 6 uses
  %i.coc = shufflevector <8 x i32> %i.cny, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cod = shufflevector <8 x i32> %i.cny, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.coe = shufflevector <8 x i32> %i.cnz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cof = shufflevector <8 x i32> %i.cnz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cog = shufflevector <8 x i32> %i.coa, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.coh = shufflevector <8 x i32> %i.coa, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.coi = shufflevector <8 x i32> %i.cob, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.coj = shufflevector <8 x i32> %i.cob, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cok = add <4 x i32> %i.cjj, %i.cjk
  %i.col = add <4 x i32> %i.cok, %i.cod
  %i.com = add <4 x i32> %i.col, %i.coc           ; 3 uses
  %i.con = add <4 x i32> %i.cjl, %i.cjm
  %i.coo = add <4 x i32> %i.con, %i.cof
  %i.cop = add <4 x i32> %i.coo, %i.coe           ; 3 uses
  %i.coq = or disjoint i32 %.12924.lcssa, 1
  %i.cor = icmp slt i32 %i.coq, %i.ces
  br i1 %i.cor, label %.noexc3541.lr.ph, label %.preheader7710

.noexc3541.lr.ph:                                 ; preds = %._crit_edge8488
  %i.cos = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !151
  %i.cot = load ptr, ptr %0, align 8, !tbaa !32, !noalias !151 ; 2 uses
  %i.cou = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !151
  %i.cov = load i64, ptr %i.cs, align 8, !tbaa !36, !noalias !151 ; 2 uses
  %factor.op.mul8518 = mul i64 %i.cou, %i.cov
  %i.cow = sext i32 %i.cos to i64
  %i.cox = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.coy = mul nsw i32 %i.cox, %i.ceu
  %i.coz = sext i32 %i.coy to i64
  %i.cpa = mul i64 %i.cov, %i.cow                 ; 2 uses
  %i.cpb = mul i64 %i.cpa, %i.coz
  %invariant.gep8520 = getelementptr i8, ptr %i.cot, i64 %i.cpb
  %i.cpc = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.cpd = mul nsw i32 %i.cpc, %i.cew
  %i.cpe = sext i32 %i.cpd to i64
  %invariant.gep8521 = getelementptr i8, ptr %invariant.gep8520, i64 %i.cpe
  %i.cpf = mul nsw i32 %i.cox, %i.cev
  %i.cpg = sext i32 %i.cpf to i64
  %i.cph = mul i64 %i.cpa, %i.cpg
  %invariant.gep8525 = getelementptr i8, ptr %i.cot, i64 %i.cph
  %i.cpi = mul nsw i32 %i.cpc, %i.cex
  %i.cpj = sext i32 %i.cpi to i64
  %invariant.gep8526 = getelementptr i8, ptr %invariant.gep8525, i64 %i.cpj
  %i.cpk = load i32, ptr %i.f, align 4, !tbaa !9  ; 3 uses
  %i.cpl = icmp sgt i32 %i.cpk, 0
  %i.cpm = load ptr, ptr %i.g, align 8
  br i1 %i.cpl, label %.noexc3541.us.preheader, label %.noexc3541.preheader

.noexc3541.preheader:                             ; preds = %.noexc3541.lr.ph
  %i.cpn = add nuw i32 %.12924.lcssa, 2
  %12 = add nuw i32 %.12924.lcssa, 3
  %smax10143 = call i32 @llvm.smax.i32(i32 %i.ces, i32 %12)
  %i.cpo = add nsw i32 %smax10143, -2
  %i.cpp = sub nsw i32 %i.cpo, %.12924.lcssa
  %i.cpq = and i32 %i.cpp, -2
  %i.cpr = add i32 %i.cpn, %i.cpq
  br label %.preheader7710

.noexc3541.us.preheader:                          ; preds = %.noexc3541.lr.ph
  %i.cps = add nsw i32 %i.cpk, -1
  %i.cpt = zext nneg i32 %i.cps to i64
  %i.cpu = shl nuw nsw i64 %i.cpt, 3
  %i.cpv = zext nneg i32 %.12924.lcssa to i64
  %wide.trip.count10149 = zext nneg i32 %i.cpk to i64
  br label %.noexc3541.us

.noexc3541.us:                                    ; preds = %.noexc3541.us.preheader, %._crit_edge8508.us
  %indvars.iv10151 = phi i64 [ %i.cpv, %.noexc3541.us.preheader ], [ %indvars.iv.next10152, %._crit_edge8508.us ] ; 2 uses
  %.429318512.us = phi ptr [ %.22929.lcssa, %.noexc3541.us.preheader ], [ %scevgep10147, %._crit_edge8508.us ] ; 2 uses
  %i.cpw = phi <4 x i32> [ %i.cop, %.noexc3541.us.preheader ], [ %i.cqw, %._crit_edge8508.us ]
  %i.cpx = phi <4 x i32> [ %i.com, %.noexc3541.us.preheader ], [ %i.cqv, %._crit_edge8508.us ]
  %.reass8519.us = mul i64 %factor.op.mul8518, %indvars.iv10151 ; 2 uses
  %gep8522.us = getelementptr i8, ptr %invariant.gep8521, i64 %.reass8519.us
  %gep8527.us = getelementptr i8, ptr %invariant.gep8526, i64 %.reass8519.us
  br label %bb.al

bb.al:                                            ; preds = %.noexc3541.us, %bb.al
  %indvars.iv10144 = phi i64 [ 0, %.noexc3541.us ], [ %indvars.iv.next10145, %bb.al ] ; 2 uses
  %.529328505.us = phi ptr [ %.429318512.us, %.noexc3541.us ], [ %i.cqx, %bb.al ] ; 2 uses
  %i.cpy = phi <4 x i32> [ %i.cpw, %.noexc3541.us ], [ %i.cqw, %bb.al ]
  %i.cpz = phi <4 x i32> [ %i.cpx, %.noexc3541.us ], [ %i.cqv, %bb.al ]
  %i.cqa = getelementptr inbounds nuw [4 x i8], ptr %i.cpm, i64 %indvars.iv10144
  %i.cqb = load i32, ptr %i.cqa, align 4, !tbaa !9
  %i.cqc = sext i32 %i.cqb to i64                 ; 2 uses
  %i.cqd = getelementptr inbounds i8, ptr %gep8522.us, i64 %i.cqc ; 2 uses
  %i.cqe = load i8, ptr %i.cqd, align 1, !tbaa !44
  %i.cqf = getelementptr inbounds nuw i8, ptr %i.cqd, i64 %i.bfi
  %i.cqg = load i8, ptr %i.cqf, align 1, !tbaa !44
  %i.cqh = insertelement <2 x i8> poison, i8 %i.cqe, i64 0
  %i.cqi = insertelement <2 x i8> %i.cqh, i8 %i.cqg, i64 1
  %i.cqj = shufflevector <2 x i8> %i.cqi, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cqk = sext <8 x i8> %i.cqj to <8 x i16>
  %i.cql = getelementptr inbounds i8, ptr %gep8527.us, i64 %i.cqc ; 2 uses
  %i.cqm = load i8, ptr %i.cql, align 1, !tbaa !44
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cql, i64 %i.bfi
  %i.cqo = load i8, ptr %i.cqn, align 1, !tbaa !44
  %i.cqp = insertelement <2 x i8> poison, i8 %i.cqm, i64 0
  %i.cqq = insertelement <2 x i8> %i.cqp, i8 %i.cqo, i64 1
  %i.cqr = shufflevector <2 x i8> %i.cqq, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cqs = sext <8 x i8> %i.cqr to <8 x i16>
  %i.cqt = load <8 x i8>, ptr %.529328505.us, align 1, !tbaa !44
  %i.cqu = sext <8 x i8> %i.cqt to <8 x i16>      ; 2 uses
  %i.cqv = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.cpz, <8 x i16> %i.cqk, <8 x i16> %i.cqu) ; 3 uses
  %i.cqw = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.cpy, <8 x i16> %i.cqs, <8 x i16> %i.cqu) ; 3 uses
  %i.cqx = getelementptr inbounds nuw i8, ptr %.529328505.us, i64 8
  %indvars.iv.next10145 = add nuw nsw i64 %indvars.iv10144, 1 ; 2 uses
  %exitcond10150.not = icmp eq i64 %indvars.iv.next10145, %wide.trip.count10149
  br i1 %exitcond10150.not, label %._crit_edge8508.us, label %bb.al, !llvm.loop !154

._crit_edge8508.us:                               ; preds = %bb.al
  %scevgep10146 = getelementptr i8, ptr %.429318512.us, i64 8
  %scevgep10147 = getelementptr i8, ptr %scevgep10146, i64 %i.cpu ; 2 uses
  %indvars.iv.next10152 = add nuw nsw i64 %indvars.iv10151, 2 ; 3 uses
  %i.cqy = trunc i64 %indvars.iv.next10152 to i32
  %i.cqz = or i32 %i.cqy, 1
  %i.cra = icmp slt i32 %i.cqz, %i.ces
  br i1 %i.cra, label %.noexc3541.us, label %.preheader7710.loopexit, !llvm.loop !155

.preheader7710.loopexit:                          ; preds = %._crit_edge8508.us
  %i.crb = trunc nuw i64 %indvars.iv.next10152 to i32
  br label %.preheader7710

.preheader7710:                                   ; preds = %.noexc3541.preheader, %.preheader7710.loopexit, %._crit_edge8488
  %.lcssa7780 = phi <4 x i32> [ %i.com, %._crit_edge8488 ], [ %i.cqv, %.preheader7710.loopexit ], [ %i.com, %.noexc3541.preheader ] ; 3 uses
  %.lcssa7779 = phi <4 x i32> [ %i.cop, %._crit_edge8488 ], [ %i.cqw, %.preheader7710.loopexit ], [ %i.cop, %.noexc3541.preheader ] ; 3 uses
  %.42931.lcssa = phi ptr [ %.22929.lcssa, %._crit_edge8488 ], [ %scevgep10147, %.preheader7710.loopexit ], [ %.22929.lcssa, %.noexc3541.preheader ]
  %.22925.lcssa = phi i32 [ %.12924.lcssa, %._crit_edge8488 ], [ %i.crb, %.preheader7710.loopexit ], [ %i.cpr, %.noexc3541.preheader ] ; 2 uses
  %i.crc = icmp slt i32 %.22925.lcssa, %i.ces
  br i1 %i.crc, label %.noexc3537.lr.ph, label %._crit_edge8541

.noexc3537.lr.ph:                                 ; preds = %.preheader7710
  %i.crd = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !156
  %i.cre = load ptr, ptr %0, align 8, !tbaa !32, !noalias !156 ; 2 uses
  %i.crf = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !156
  %i.crg = load i64, ptr %i.cs, align 8, !tbaa !36, !noalias !156 ; 2 uses
  %factor.op.mul8544 = mul i64 %i.crf, %i.crg
  %i.crh = sext i32 %i.crd to i64
  %i.cri = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.crj = mul nsw i32 %i.cri, %i.ceu
  %i.crk = sext i32 %i.crj to i64
  %i.crl = mul i64 %i.crg, %i.crh                 ; 2 uses
  %i.crm = mul i64 %i.crl, %i.crk
  %invariant.gep8546 = getelementptr i8, ptr %i.cre, i64 %i.crm
  %i.crn = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.cro = mul nsw i32 %i.crn, %i.cew
  %i.crp = sext i32 %i.cro to i64
  %invariant.gep8547 = getelementptr i8, ptr %invariant.gep8546, i64 %i.crp
  %i.crq = mul nsw i32 %i.cri, %i.cev
  %i.crr = sext i32 %i.crq to i64
  %i.crs = mul i64 %i.crl, %i.crr
  %invariant.gep8551 = getelementptr i8, ptr %i.cre, i64 %i.crs
  %i.crt = mul nsw i32 %i.crn, %i.cex
  %i.cru = sext i32 %i.crt to i64
  %invariant.gep8552 = getelementptr i8, ptr %invariant.gep8551, i64 %i.cru
  %i.crv = load i32, ptr %i.f, align 4, !tbaa !9  ; 3 uses
  %i.crw = icmp sgt i32 %i.crv, 0
  %i.crx = load ptr, ptr %i.g, align 8
  br i1 %i.crw, label %.noexc3537.us.preheader, label %._crit_edge8541

.noexc3537.us.preheader:                          ; preds = %.noexc3537.lr.ph
  %i.cry = add nsw i32 %i.crv, -1
  %i.crz = zext nneg i32 %i.cry to i64
  %i.csa = shl nuw nsw i64 %i.crz, 2
  %i.csb = zext i32 %.22925.lcssa to i64
  %wide.trip.count10159 = zext nneg i32 %i.crv to i64
  br label %.noexc3537.us

.noexc3537.us:                                    ; preds = %.noexc3537.us.preheader, %._crit_edge8535.us
  %indvars.iv10161 = phi i64 [ %i.csb, %.noexc3537.us.preheader ], [ %indvars.iv.next10162, %._crit_edge8535.us ] ; 2 uses
  %.629338539.us = phi ptr [ %.42931.lcssa, %.noexc3537.us.preheader ], [ %scevgep10157, %._crit_edge8535.us ] ; 2 uses
  %i.csc = phi <4 x i32> [ %.lcssa7779, %.noexc3537.us.preheader ], [ %i.cte, %._crit_edge8535.us ]
  %i.csd = phi <4 x i32> [ %.lcssa7780, %.noexc3537.us.preheader ], [ %i.ctc, %._crit_edge8535.us ]
  %.reass8545.us = mul i64 %factor.op.mul8544, %indvars.iv10161 ; 2 uses
  %gep8548.us = getelementptr i8, ptr %invariant.gep8547, i64 %.reass8545.us
  %gep8553.us = getelementptr i8, ptr %invariant.gep8552, i64 %.reass8545.us
  br label %bb.am

bb.am:                                            ; preds = %.noexc3537.us, %bb.am
  %indvars.iv10154 = phi i64 [ 0, %.noexc3537.us ], [ %indvars.iv.next10155, %bb.am ] ; 2 uses
  %.729348532.us = phi ptr [ %.629338539.us, %.noexc3537.us ], [ %i.ctf, %bb.am ] ; 2 uses
  %i.cse = phi <4 x i32> [ %i.csc, %.noexc3537.us ], [ %i.cte, %bb.am ]
  %i.csf = phi <4 x i32> [ %i.csd, %.noexc3537.us ], [ %i.ctc, %bb.am ]
  %i.csg = getelementptr inbounds nuw [4 x i8], ptr %i.crx, i64 %indvars.iv10154
  %i.csh = load i32, ptr %i.csg, align 4, !tbaa !9
  %i.csi = sext i32 %i.csh to i64                 ; 2 uses
  %i.csj = getelementptr inbounds i8, ptr %gep8548.us, i64 %i.csi
  %i.csk = getelementptr inbounds i8, ptr %gep8553.us, i64 %i.csi
  %i.csl = load i8, ptr %i.csj, align 1, !tbaa !44
  %i.csm = sext i8 %i.csl to i16
  %i.csn = insertelement <8 x i16> poison, i16 %i.csm, i64 0
  %i.cso = shufflevector <8 x i16> %i.csn, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.csp = load i8, ptr %i.csk, align 1, !tbaa !44
  %i.csq = sext i8 %i.csp to i16
  %i.csr = insertelement <8 x i16> poison, i16 %i.csq, i64 0
  %i.css = shufflevector <8 x i16> %i.csr, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cst = load <8 x i8>, ptr %.729348532.us, align 1, !tbaa !44
  %i.csu = sext <8 x i8> %i.cst to <8 x i16>      ; 4 uses
  %i.csv = mul <8 x i16> %i.cso, %i.csu
  %i.csw = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.cso, <8 x i16> %i.csu)
  %i.csx = mul <8 x i16> %i.css, %i.csu
  %i.csy = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.css, <8 x i16> %i.csu)
  %i.csz = shufflevector <8 x i16> %i.csv, <8 x i16> %i.csw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cta = shufflevector <8 x i16> %i.csx, <8 x i16> %i.csy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ctb = bitcast <8 x i16> %i.csz to <4 x i32>
  %i.ctc = add <4 x i32> %i.csf, %i.ctb           ; 3 uses
  %i.ctd = bitcast <8 x i16> %i.cta to <4 x i32>
  %i.cte = add <4 x i32> %i.cse, %i.ctd           ; 3 uses
  %i.ctf = getelementptr inbounds nuw i8, ptr %.729348532.us, i64 4
  %indvars.iv.next10155 = add nuw nsw i64 %indvars.iv10154, 1 ; 2 uses
  %exitcond10160.not = icmp eq i64 %indvars.iv.next10155, %wide.trip.count10159
  br i1 %exitcond10160.not, label %._crit_edge8535.us, label %bb.am, !llvm.loop !159

._crit_edge8535.us:                               ; preds = %bb.am
  %scevgep10156 = getelementptr i8, ptr %.629338539.us, i64 4
  %scevgep10157 = getelementptr i8, ptr %scevgep10156, i64 %i.csa
  %indvars.iv.next10162 = add nuw nsw i64 %indvars.iv10161, 1 ; 2 uses
  %i.ctg = trunc nuw i64 %indvars.iv.next10162 to i32
  %i.cth = icmp sgt i32 %i.ces, %i.ctg
  br i1 %i.cth, label %.noexc3537.us, label %._crit_edge8541, !llvm.loop !160

._crit_edge8541:                                  ; preds = %._crit_edge8535.us, %.noexc3537.lr.ph, %.preheader7710
  %.lcssa7784 = phi <4 x i32> [ %.lcssa7780, %.preheader7710 ], [ %.lcssa7780, %.noexc3537.lr.ph ], [ %i.ctc, %._crit_edge8535.us ]
  %.lcssa7783 = phi <4 x i32> [ %.lcssa7779, %.preheader7710 ], [ %.lcssa7779, %.noexc3537.lr.ph ], [ %i.cte, %._crit_edge8535.us ]
  %i.cti = add <4 x i32> %i.cjn, %i.cjo
  %i.ctj = add <4 x i32> %i.cti, %i.coh
  %i.ctk = add <4 x i32> %i.ctj, %i.cog
  %i.ctl = add <4 x i32> %i.ctk, %.lcssa7784      ; 2 uses
  %i.ctm = add <4 x i32> %i.cjp, %i.cjq
  %i.ctn = add <4 x i32> %i.ctm, %i.coj
  %i.cto = add <4 x i32> %i.ctn, %i.coi
  %i.ctp = add <4 x i32> %i.cto, %.lcssa7783      ; 2 uses
  %i.ctq = load i32, ptr %i.e, align 4, !tbaa !9
  switch i32 %i.ctq, label %bb.ao [
    i32 4, label %.thread10707
    i32 1, label %bb.an
  ]

.thread10707:                                     ; preds = %._crit_edge8541
  store <4 x i32> %i.ctl, ptr %.329788556, align 16, !tbaa !44
  %i.ctr = getelementptr inbounds nuw i8, ptr %.329788556, i64 16
  store <4 x i32> %i.ctp, ptr %i.ctr, align 16, !tbaa !44
  %i.cts = getelementptr inbounds nuw i8, ptr %.329788556, i64 32
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge8541
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr %.329788556, <4 x i1> splat (i1 true), <4 x i32> %i.bhp, <4 x i32> %i.ctl, i32 4)
  %i.ctt = getelementptr inbounds nuw i8, ptr %.329788556, i64 4
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.ctt, <4 x i1> splat (i1 true), <4 x i32> %i.bhp, <4 x i32> %i.ctp, i32 4)
  %i.ctu = getelementptr inbounds nuw i8, ptr %.329788556, i64 8
  %.pre10574 = load i32, ptr %i.d, align 4, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge8541, %.thread10707, %bb.an
end_hunk_2
begin_hunk_3_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.dbv = sext i32 %i.dbu to i64
  %i.dbw = getelementptr inbounds i8, ptr %gep8625, i64 %i.dbv
  %i.dbx = load <8 x i8>, ptr %i.dbw, align 1, !tbaa !44
  %i.dby = sext <8 x i8> %i.dbx to <8 x i16>      ; 2 uses
  %i.dbz = load <4 x i64>, ptr %.329118604.us, align 32, !tbaa !44 ; 2 uses
  %i.dca = bitcast <4 x i64> %i.dbz to <32 x i8>
  %i.dcb = shufflevector <32 x i8> %i.dca, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dcc = sext <16 x i8> %i.dcb to <16 x i16>
  %i.dcd = bitcast <4 x i64> %i.dbz to <32 x i8>
  %i.dce = shufflevector <32 x i8> %i.dcd, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dcf = sext <16 x i8> %i.dce to <16 x i16>
  %i.dcg = bitcast <8 x i16> %i.dby to <4 x i32>  ; 2 uses
  %i.dch = bitcast <8 x i16> %i.dby to <4 x i32>  ; 2 uses
  %i.dci = shufflevector <4 x i32> %i.dch, <4 x i32> %i.dcg, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.dcj = bitcast <8 x i32> %i.dci to <16 x i16>
  %i.dck = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dbs, <16 x i16> %i.dcj, <16 x i16> %i.dcc)
  %i.dcl = shufflevector <4 x i32> %i.dch, <4 x i32> %i.dcg, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.dcm = bitcast <8 x i32> %i.dcl to <16 x i16>
  %i.dcn = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dbr, <16 x i16> %i.dcm, <16 x i16> %i.dcf)
  %i.dco = getelementptr inbounds nuw i8, ptr %.329118604.us, i64 32
  %i.dcp = getelementptr inbounds nuw [4 x i8], ptr %i.dbf, i64 %indvars.iv10192
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dcp, i64 4
  %i.dcr = load i32, ptr %i.dcq, align 4, !tbaa !9
  %i.dcs = sext i32 %i.dcr to i64
  %i.dct = getelementptr inbounds i8, ptr %gep8625, i64 %i.dcs
  %i.dcu = load <8 x i8>, ptr %i.dct, align 1, !tbaa !44
  %i.dcv = sext <8 x i8> %i.dcu to <8 x i16>      ; 2 uses
  %i.dcw = load <4 x i64>, ptr %i.dco, align 32, !tbaa !44 ; 2 uses
  %i.dcx = bitcast <4 x i64> %i.dcw to <32 x i8>
  %i.dcy = shufflevector <32 x i8> %i.dcx, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dcz = sext <16 x i8> %i.dcy to <16 x i16>
  %i.dda = bitcast <4 x i64> %i.dcw to <32 x i8>
  %i.ddb = shufflevector <32 x i8> %i.dda, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ddc = sext <16 x i8> %i.ddb to <16 x i16>
  %i.ddd = bitcast <8 x i16> %i.dcv to <4 x i32>  ; 2 uses
  %i.dde = bitcast <8 x i16> %i.dcv to <4 x i32>  ; 2 uses
  %i.ddf = shufflevector <4 x i32> %i.dde, <4 x i32> %i.ddd, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.ddg = bitcast <8 x i32> %i.ddf to <16 x i16>
  %i.ddh = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dck, <16 x i16> %i.ddg, <16 x i16> %i.dcz) ; 3 uses
  %i.ddi = shufflevector <4 x i32> %i.dde, <4 x i32> %i.ddd, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.ddj = bitcast <8 x i32> %i.ddi to <16 x i16>
  %i.ddk = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dcn, <16 x i16> %i.ddj, <16 x i16> %i.ddc) ; 3 uses
  %i.ddl = getelementptr inbounds nuw i8, ptr %.329118604.us, i64 64 ; 2 uses
  %indvars.iv.next10193.1 = add nuw nsw i64 %indvars.iv10192, 2 ; 2 uses
  %niter11988.next.1 = add i64 %niter11988, 2     ; 2 uses
  %niter11988.ncmp.1 = icmp eq i64 %niter11988.next.1, %unroll_iter11987
  br i1 %niter11988.ncmp.1, label %._crit_edge8607.loopexit.unr-lcssa, label %.lr.ph8606.split.us, !llvm.loop !173

._crit_edge8607.loopexit.unr-lcssa:               ; preds = %.lr.ph8606.split.us
  br i1 %lcmp.mod11983.not, label %._crit_edge8607.loopexit, label %.lr.ph8606.split.us.epil.preheader

.lr.ph8606.split.us.epil.preheader:               ; preds = %._crit_edge8607.loopexit.unr-lcssa, %.lr.ph8606.split.us.preheader
  %indvars.iv10192.epil.init = phi i64 [ 0, %.lr.ph8606.split.us.preheader ], [ %indvars.iv.next10193.1, %._crit_edge8607.loopexit.unr-lcssa ]
  %.329118604.us.epil.init = phi ptr [ %.229108614, %.lr.ph8606.split.us.preheader ], [ %i.ddl, %._crit_edge8607.loopexit.unr-lcssa ]
  %.epil.init11980 = phi <8 x i32> [ %i.dbn, %.lr.ph8606.split.us.preheader ], [ %i.ddk, %._crit_edge8607.loopexit.unr-lcssa ]
  %.epil.init11982 = phi <8 x i32> [ %i.dbo, %.lr.ph8606.split.us.preheader ], [ %i.ddh, %._crit_edge8607.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod11986)
  %i.ddm = getelementptr inbounds nuw [4 x i8], ptr %i.dbf, i64 %indvars.iv10192.epil.init
  %i.ddn = load i32, ptr %i.ddm, align 4, !tbaa !9
  %i.ddo = sext i32 %i.ddn to i64
  %i.ddp = getelementptr inbounds i8, ptr %gep8625, i64 %i.ddo
  %i.ddq = load <8 x i8>, ptr %i.ddp, align 1, !tbaa !44
  %i.ddr = sext <8 x i8> %i.ddq to <8 x i16>      ; 2 uses
  %i.dds = load <4 x i64>, ptr %.329118604.us.epil.init, align 32, !tbaa !44 ; 2 uses
  %i.ddt = bitcast <4 x i64> %i.dds to <32 x i8>
  %i.ddu = shufflevector <32 x i8> %i.ddt, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ddv = sext <16 x i8> %i.ddu to <16 x i16>
  %i.ddw = bitcast <4 x i64> %i.dds to <32 x i8>
  %i.ddx = shufflevector <32 x i8> %i.ddw, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ddy = sext <16 x i8> %i.ddx to <16 x i16>
  %i.ddz = bitcast <8 x i16> %i.ddr to <4 x i32>  ; 2 uses
  %i.dea = bitcast <8 x i16> %i.ddr to <4 x i32>  ; 2 uses
  %i.deb = shufflevector <4 x i32> %i.dea, <4 x i32> %i.ddz, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.dec = bitcast <8 x i32> %i.deb to <16 x i16>
  %i.ded = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.epil.init11982, <16 x i16> %i.dec, <16 x i16> %i.ddv)
  %i.dee = shufflevector <4 x i32> %i.dea, <4 x i32> %i.ddz, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.def = bitcast <8 x i32> %i.dee to <16 x i16>
  %i.deg = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.epil.init11980, <16 x i16> %i.def, <16 x i16> %i.ddy)
  br label %._crit_edge8607.loopexit

._crit_edge8607.loopexit:                         ; preds = %._crit_edge8607.loopexit.unr-lcssa, %.lr.ph8606.split.us.epil.preheader
  %.lcssa11883 = phi <8 x i32> [ %i.ddh, %._crit_edge8607.loopexit.unr-lcssa ], [ %i.ded, %.lr.ph8606.split.us.epil.preheader ]
  %.lcssa11882 = phi <8 x i32> [ %i.ddk, %._crit_edge8607.loopexit.unr-lcssa ], [ %i.deg, %.lr.ph8606.split.us.epil.preheader ]
  %scevgep10194 = getelementptr i8, ptr %.229108614, i64 32
  %scevgep10195 = getelementptr i8, ptr %scevgep10194, i64 %i.dbj
  br label %._crit_edge8607

._crit_edge8607.loopexit9610.unr-lcssa:           ; preds = %.lr.ph8606.split
  br i1 %lcmp.mod11972.not, label %._crit_edge8607.loopexit9610, label %.lr.ph8606.split.epil.preheader

.lr.ph8606.split.epil.preheader:                  ; preds = %._crit_edge8607.loopexit9610.unr-lcssa, %.lr.ph8606.split.preheader
  %indvars.iv10185.epil.init = phi i64 [ 0, %.lr.ph8606.split.preheader ], [ %indvars.iv.next10186.1, %._crit_edge8607.loopexit9610.unr-lcssa ]
  %.329118604.epil.init = phi ptr [ %.229108614, %.lr.ph8606.split.preheader ], [ %i.dhc, %._crit_edge8607.loopexit9610.unr-lcssa ]
  %.epil.init11969 = phi <8 x i32> [ %i.dbn, %.lr.ph8606.split.preheader ], [ %i.dhb, %._crit_edge8607.loopexit9610.unr-lcssa ]
  %.epil.init11971 = phi <8 x i32> [ %i.dbo, %.lr.ph8606.split.preheader ], [ %i.dgy, %._crit_edge8607.loopexit9610.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod11975)
  %i.deh = getelementptr inbounds nuw [4 x i8], ptr %i.dbf, i64 %indvars.iv10185.epil.init
  %i.dei = load i32, ptr %i.deh, align 4, !tbaa !9
  %i.dej = sext i32 %i.dei to i64
  %i.dek = getelementptr inbounds i8, ptr %gep8625, i64 %i.dej
  %i.del = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.dek, <8 x i32> %i.cen, <8 x i32> splat (i32 -1), i8 1)
  %i.dem = trunc <8 x i32> %i.del to <8 x i8>
  %i.den = sext <8 x i8> %i.dem to <8 x i16>      ; 2 uses
  %i.deo = load <4 x i64>, ptr %.329118604.epil.init, align 32, !tbaa !44 ; 2 uses
  %i.dep = bitcast <4 x i64> %i.deo to <32 x i8>
  %i.deq = shufflevector <32 x i8> %i.dep, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.der = sext <16 x i8> %i.deq to <16 x i16>
  %i.des = bitcast <4 x i64> %i.deo to <32 x i8>
  %i.det = shufflevector <32 x i8> %i.des, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.deu = sext <16 x i8> %i.det to <16 x i16>
  %i.dev = bitcast <8 x i16> %i.den to <4 x i32>  ; 2 uses
  %i.dew = bitcast <8 x i16> %i.den to <4 x i32>  ; 2 uses
  %i.dex = shufflevector <4 x i32> %i.dew, <4 x i32> %i.dev, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.dey = bitcast <8 x i32> %i.dex to <16 x i16>
  %i.dez = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.epil.init11971, <16 x i16> %i.dey, <16 x i16> %i.der)
  %i.dfa = shufflevector <4 x i32> %i.dew, <4 x i32> %i.dev, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.dfb = bitcast <8 x i32> %i.dfa to <16 x i16>
  %i.dfc = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.epil.init11969, <16 x i16> %i.dfb, <16 x i16> %i.deu)
  br label %._crit_edge8607.loopexit9610

._crit_edge8607.loopexit9610:                     ; preds = %._crit_edge8607.loopexit9610.unr-lcssa, %.lr.ph8606.split.epil.preheader
  %.lcssa11881 = phi <8 x i32> [ %i.dgy, %._crit_edge8607.loopexit9610.unr-lcssa ], [ %i.dez, %.lr.ph8606.split.epil.preheader ]
  %.lcssa11880 = phi <8 x i32> [ %i.dhb, %._crit_edge8607.loopexit9610.unr-lcssa ], [ %i.dfc, %.lr.ph8606.split.epil.preheader ]
  %scevgep10187 = getelementptr i8, ptr %.229108614, i64 32
  %scevgep10188 = getelementptr i8, ptr %scevgep10187, i64 %i.dbj
  br label %._crit_edge8607

._crit_edge8607:                                  ; preds = %._crit_edge8607.loopexit9610, %._crit_edge8607.loopexit, %.noexc3529
  %.lcssa7790 = phi <8 x i32> [ %i.dbo, %.noexc3529 ], [ %.lcssa11883, %._crit_edge8607.loopexit ], [ %.lcssa11881, %._crit_edge8607.loopexit9610 ] ; 2 uses
  %.lcssa7789 = phi <8 x i32> [ %i.dbn, %.noexc3529 ], [ %.lcssa11882, %._crit_edge8607.loopexit ], [ %.lcssa11880, %._crit_edge8607.loopexit9610 ] ; 2 uses
  %.32911.lcssa = phi ptr [ %.229108614, %.noexc3529 ], [ %scevgep10195, %._crit_edge8607.loopexit ], [ %scevgep10188, %._crit_edge8607.loopexit9610 ] ; 2 uses
  %i.dfd = add nuw nsw i32 %.129058615, 8         ; 3 uses
  %i.dfe = or disjoint i32 %i.dfd, 7
  %i.dff = icmp slt i32 %i.dfe, %i.ctz
  br i1 %i.dff, label %.noexc3529, label %._crit_edge8616.loopexit, !llvm.loop !174

.lr.ph8606.split:                                 ; preds = %.lr.ph8606.split.preheader, %.lr.ph8606.split
  %indvars.iv10185 = phi i64 [ %indvars.iv.next10186.1, %.lr.ph8606.split ], [ 0, %.lr.ph8606.split.preheader ] ; 3 uses
  %.329118604 = phi ptr [ %i.dhc, %.lr.ph8606.split ], [ %.229108614, %.lr.ph8606.split.preheader ] ; 3 uses
  %i.dfg = phi <8 x i32> [ %i.dhb, %.lr.ph8606.split ], [ %i.dbn, %.lr.ph8606.split.preheader ]
  %i.dfh = phi <8 x i32> [ %i.dgy, %.lr.ph8606.split ], [ %i.dbo, %.lr.ph8606.split.preheader ]
  %niter11977 = phi i64 [ %niter11977.next.1, %.lr.ph8606.split ], [ 0, %.lr.ph8606.split.preheader ]
  %i.dfi = getelementptr inbounds nuw [4 x i8], ptr %i.dbf, i64 %indvars.iv10185
  %i.dfj = load i32, ptr %i.dfi, align 4, !tbaa !9
  %i.dfk = sext i32 %i.dfj to i64
  %i.dfl = getelementptr inbounds i8, ptr %gep8625, i64 %i.dfk
  %i.dfm = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.dfl, <8 x i32> %i.cen, <8 x i32> splat (i32 -1), i8 1)
  %i.dfn = trunc <8 x i32> %i.dfm to <8 x i8>
  %i.dfo = sext <8 x i8> %i.dfn to <8 x i16>      ; 2 uses
  %i.dfp = load <4 x i64>, ptr %.329118604, align 32, !tbaa !44 ; 2 uses
  %i.dfq = bitcast <4 x i64> %i.dfp to <32 x i8>
  %i.dfr = shufflevector <32 x i8> %i.dfq, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dfs = sext <16 x i8> %i.dfr to <16 x i16>
  %i.dft = bitcast <4 x i64> %i.dfp to <32 x i8>
  %i.dfu = shufflevector <32 x i8> %i.dft, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dfv = sext <16 x i8> %i.dfu to <16 x i16>
  %i.dfw = bitcast <8 x i16> %i.dfo to <4 x i32>  ; 2 uses
  %i.dfx = bitcast <8 x i16> %i.dfo to <4 x i32>  ; 2 uses
  %i.dfy = shufflevector <4 x i32> %i.dfx, <4 x i32> %i.dfw, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.dfz = bitcast <8 x i32> %i.dfy to <16 x i16>
  %i.dga = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dfh, <16 x i16> %i.dfz, <16 x i16> %i.dfs)
  %i.dgb = shufflevector <4 x i32> %i.dfx, <4 x i32> %i.dfw, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.dgc = bitcast <8 x i32> %i.dgb to <16 x i16>
  %i.dgd = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dfg, <16 x i16> %i.dgc, <16 x i16> %i.dfv)
  %i.dge = getelementptr inbounds nuw i8, ptr %.329118604, i64 32
  %i.dgf = getelementptr inbounds nuw [4 x i8], ptr %i.dbf, i64 %indvars.iv10185
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.dgf, i64 4
  %i.dgh = load i32, ptr %i.dgg, align 4, !tbaa !9
  %i.dgi = sext i32 %i.dgh to i64
  %i.dgj = getelementptr inbounds i8, ptr %gep8625, i64 %i.dgi
  %i.dgk = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.dgj, <8 x i32> %i.cen, <8 x i32> splat (i32 -1), i8 1)
  %i.dgl = trunc <8 x i32> %i.dgk to <8 x i8>
  %i.dgm = sext <8 x i8> %i.dgl to <8 x i16>      ; 2 uses
  %i.dgn = load <4 x i64>, ptr %i.dge, align 32, !tbaa !44 ; 2 uses
  %i.dgo = bitcast <4 x i64> %i.dgn to <32 x i8>
  %i.dgp = shufflevector <32 x i8> %i.dgo, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dgq = sext <16 x i8> %i.dgp to <16 x i16>
  %i.dgr = bitcast <4 x i64> %i.dgn to <32 x i8>
  %i.dgs = shufflevector <32 x i8> %i.dgr, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dgt = sext <16 x i8> %i.dgs to <16 x i16>
  %i.dgu = bitcast <8 x i16> %i.dgm to <4 x i32>  ; 2 uses
  %i.dgv = bitcast <8 x i16> %i.dgm to <4 x i32>  ; 2 uses
  %i.dgw = shufflevector <4 x i32> %i.dgv, <4 x i32> %i.dgu, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.dgx = bitcast <8 x i32> %i.dgw to <16 x i16>
  %i.dgy = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dga, <16 x i16> %i.dgx, <16 x i16> %i.dgq) ; 3 uses
  %i.dgz = shufflevector <4 x i32> %i.dgv, <4 x i32> %i.dgu, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.dha = bitcast <8 x i32> %i.dgz to <16 x i16>
  %i.dhb = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.dgd, <16 x i16> %i.dha, <16 x i16> %i.dgt) ; 3 uses
  %i.dhc = getelementptr inbounds nuw i8, ptr %.329118604, i64 64 ; 2 uses
  %indvars.iv.next10186.1 = add nuw nsw i64 %indvars.iv10185, 2 ; 2 uses
  %niter11977.next.1 = add i64 %niter11977, 2     ; 2 uses
  %niter11977.ncmp.1 = icmp eq i64 %niter11977.next.1, %unroll_iter11976
  br i1 %niter11977.ncmp.1, label %._crit_edge8607.loopexit9610.unr-lcssa, label %.lr.ph8606.split, !llvm.loop !173

._crit_edge8616.loopexit:                         ; preds = %._crit_edge8607
  %i.dhd = add <8 x i32> %.lcssa7789, %.lcssa7790
  br label %._crit_edge8616

._crit_edge8616:                                  ; preds = %._crit_edge8616.loopexit, %._crit_edge8582
  %.22910.lcssa = phi ptr [ %.02908.lcssa, %._crit_edge8582 ], [ %.32911.lcssa, %._crit_edge8616.loopexit ] ; 3 uses
  %.12905.lcssa = phi i32 [ %.02904.lcssa, %._crit_edge8582 ], [ %i.dfd, %._crit_edge8616.loopexit ] ; 6 uses
  %i.dhe = phi <8 x i32> [ zeroinitializer, %._crit_edge8582 ], [ %i.dhd, %._crit_edge8616.loopexit ] ; 2 uses
  %i.dhf = shufflevector <8 x i32> %i.dhe, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dhg = shufflevector <8 x i32> %i.dhe, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dhh = add <4 x i32> %i.dak, %i.dal
  %i.dhi = add <4 x i32> %i.dhh, %i.dhg
  %i.dhj = add <4 x i32> %i.dhi, %i.dhf           ; 3 uses
  %i.dhk = or disjoint i32 %.12905.lcssa, 1
  %i.dhl = icmp slt i32 %i.dhk, %i.ctz
  br i1 %i.dhl, label %.noexc3527.lr.ph, label %.preheader7709

.noexc3527.lr.ph:                                 ; preds = %._crit_edge8616
  %i.dhm = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !175
  %i.dhn = load ptr, ptr %0, align 8, !tbaa !32, !noalias !175
  %i.dho = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !175
  %i.dhp = load i64, ptr %i.cs, align 8, !tbaa !36, !noalias !175 ; 2 uses
  %factor.op.mul8637 = mul i64 %i.dho, %i.dhp
  %i.dhq = sext i32 %i.dhm to i64
  %i.dhr = load i32, ptr %i.b, align 4, !tbaa !9
  %i.dhs = mul nsw i32 %i.dhr, %i.cua
  %i.dht = sext i32 %i.dhs to i64
  %i.dhu = mul i64 %i.dhp, %i.dhq
  %i.dhv = mul i64 %i.dhu, %i.dht
  %invariant.gep8639 = getelementptr i8, ptr %i.dhn, i64 %i.dhv
  %i.dhw = load i32, ptr %i.a, align 4, !tbaa !9
  %i.dhx = mul nsw i32 %i.dhw, %i.cub
  %i.dhy = sext i32 %i.dhx to i64
  %invariant.gep8640 = getelementptr i8, ptr %invariant.gep8639, i64 %i.dhy
  %i.dhz = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.dia = icmp sgt i32 %i.dhz, 0
  %i.dib = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.dia, label %.noexc3527.us.preheader, label %.noexc3527.preheader

.noexc3527.preheader:                             ; preds = %.noexc3527.lr.ph
  %i.dic = add nuw i32 %.12905.lcssa, 2
  %13 = add nuw i32 %.12905.lcssa, 3
  %smax10199 = call i32 @llvm.smax.i32(i32 %i.ctz, i32 %13)
  %i.did = add nsw i32 %smax10199, -2
  %i.die = sub nsw i32 %i.did, %.12905.lcssa
  %i.dif = and i32 %i.die, -2
  %i.dig = add i32 %i.dic, %i.dif
  br label %.preheader7709

.noexc3527.us.preheader:                          ; preds = %.noexc3527.lr.ph
  %i.dih = add nsw i32 %i.dhz, -1
  %i.dii = zext nneg i32 %i.dih to i64
  %i.dij = shl nuw nsw i64 %i.dii, 3
  %i.dik = zext nneg i32 %.12905.lcssa to i64
  %wide.trip.count10205 = zext nneg i32 %i.dhz to i64 ; 2 uses
  %xtraiter11990 = and i64 %wide.trip.count10205, 1
  %i.dil = icmp eq i32 %i.dhz, 1
  %unroll_iter11996 = and i64 %wide.trip.count10205, 2147483646
  %lcmp.mod11993.not = icmp eq i64 %xtraiter11990, 0
  %lcmp.mod11995 = trunc i32 %i.dhz to i1
  br label %.noexc3527.us

.noexc3527.us:                                    ; preds = %.noexc3527.us.preheader, %._crit_edge8629.us
  %indvars.iv10207.a = phi i64 [ %i.dik, %.noexc3527.us.preheader ], [ %indvars.iv.next10208, %._crit_edge8629.us ] ; 2 uses
  %.429128632.us = phi ptr [ %.22910.lcssa, %.noexc3527.us.preheader ], [ %scevgep10203, %._crit_edge8629.us ] ; 3 uses
  %i.dim = phi <4 x i32> [ %i.dhj, %.noexc3527.us.preheader ], [ %.lcssa11885, %._crit_edge8629.us ] ; 2 uses
  %.reass8638.us = mul i64 %factor.op.mul8637, %indvars.iv10207.a
  %gep8641.us = getelementptr i8, ptr %invariant.gep8640, i64 %.reass8638.us ; 3 uses
  br i1 %i.dil, label %.epil.preheader11989, label %.noexc3527.us.new

.noexc3527.us.new:                                ; preds = %.noexc3527.us, %.noexc3527.us.new
  %indvars.iv10200 = phi i64 [ %indvars.iv.next10201.1, %.noexc3527.us.new ], [ 0, %.noexc3527.us ] ; 3 uses
  %.529138626.us = phi ptr [ %i.djs, %.noexc3527.us.new ], [ %.429128632.us, %.noexc3527.us ] ; 3 uses
  %i.din = phi <4 x i32> [ %i.djr, %.noexc3527.us.new ], [ %i.dim, %.noexc3527.us ]
  %niter11997 = phi i64 [ %niter11997.next.1, %.noexc3527.us.new ], [ 0, %.noexc3527.us ]
  %i.dio = getelementptr inbounds nuw [4 x i8], ptr %i.dib, i64 %indvars.iv10200
  %i.dip = load i32, ptr %i.dio, align 4, !tbaa !9
  %i.diq = sext i32 %i.dip to i64
  %i.dir = getelementptr inbounds i8, ptr %gep8641.us, i64 %i.diq ; 2 uses
  %i.dis = load i8, ptr %i.dir, align 1, !tbaa !44
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dir, i64 %i.bfi
  %i.diu = load i8, ptr %i.dit, align 1, !tbaa !44
  %i.div = insertelement <2 x i8> poison, i8 %i.dis, i64 0
  %i.diw = insertelement <2 x i8> %i.div, i8 %i.diu, i64 1
  %i.dix = shufflevector <2 x i8> %i.diw, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.diy = sext <8 x i8> %i.dix to <8 x i16>
  %i.diz = load <8 x i8>, ptr %.529138626.us, align 1, !tbaa !44
  %i.dja = sext <8 x i8> %i.diz to <8 x i16>
  %i.djb = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.din, <8 x i16> %i.diy, <8 x i16> %i.dja)
  %i.djc = getelementptr inbounds nuw i8, ptr %.529138626.us, i64 8
  %i.djd = getelementptr inbounds nuw [4 x i8], ptr %i.dib, i64 %indvars.iv10200
  %i.dje = getelementptr inbounds nuw i8, ptr %i.djd, i64 4
  %i.djf = load i32, ptr %i.dje, align 4, !tbaa !9
  %i.djg = sext i32 %i.djf to i64
  %i.djh = getelementptr inbounds i8, ptr %gep8641.us, i64 %i.djg ; 2 uses
  %i.dji = load i8, ptr %i.djh, align 1, !tbaa !44
  %i.djj = getelementptr inbounds nuw i8, ptr %i.djh, i64 %i.bfi
  %i.djk = load i8, ptr %i.djj, align 1, !tbaa !44
  %i.djl = insertelement <2 x i8> poison, i8 %i.dji, i64 0
  %i.djm = insertelement <2 x i8> %i.djl, i8 %i.djk, i64 1
  %i.djn = shufflevector <2 x i8> %i.djm, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.djo = sext <8 x i8> %i.djn to <8 x i16>
  %i.djp = load <8 x i8>, ptr %i.djc, align 1, !tbaa !44
  %i.djq = sext <8 x i8> %i.djp to <8 x i16>
  %i.djr = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.djb, <8 x i16> %i.djo, <8 x i16> %i.djq) ; 3 uses
  %i.djs = getelementptr inbounds nuw i8, ptr %.529138626.us, i64 16 ; 2 uses
  %indvars.iv.next10201.1 = add nuw nsw i64 %indvars.iv10200, 2 ; 2 uses
  %niter11997.next.1 = add i64 %niter11997, 2     ; 2 uses
  %niter11997.ncmp.1 = icmp eq i64 %niter11997.next.1, %unroll_iter11996
  br i1 %niter11997.ncmp.1, label %._crit_edge8629.us.unr-lcssa, label %.noexc3527.us.new, !llvm.loop !178

._crit_edge8629.us.unr-lcssa:                     ; preds = %.noexc3527.us.new
  br i1 %lcmp.mod11993.not, label %._crit_edge8629.us, label %.epil.preheader11989

.epil.preheader11989:                             ; preds = %._crit_edge8629.us.unr-lcssa, %.noexc3527.us
  %indvars.iv10200.epil.init = phi i64 [ 0, %.noexc3527.us ], [ %indvars.iv.next10201.1, %._crit_edge8629.us.unr-lcssa ]
  %.529138626.us.epil.init = phi ptr [ %.429128632.us, %.noexc3527.us ], [ %i.djs, %._crit_edge8629.us.unr-lcssa ]
  %.epil.init11992 = phi <4 x i32> [ %i.dim, %.noexc3527.us ], [ %i.djr, %._crit_edge8629.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod11995)
  %i.djt = getelementptr inbounds nuw [4 x i8], ptr %i.dib, i64 %indvars.iv10200.epil.init
  %i.dju = load i32, ptr %i.djt, align 4, !tbaa !9
  %i.djv = sext i32 %i.dju to i64
  %i.djw = getelementptr inbounds i8, ptr %gep8641.us, i64 %i.djv ; 2 uses
  %i.djx = load i8, ptr %i.djw, align 1, !tbaa !44
  %i.djy = getelementptr inbounds nuw i8, ptr %i.djw, i64 %i.bfi
  %i.djz = load i8, ptr %i.djy, align 1, !tbaa !44
  %i.dka = insertelement <2 x i8> poison, i8 %i.djx, i64 0
  %i.dkb = insertelement <2 x i8> %i.dka, i8 %i.djz, i64 1
  %i.dkc = shufflevector <2 x i8> %i.dkb, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dkd = sext <8 x i8> %i.dkc to <8 x i16>
  %i.dke = load <8 x i8>, ptr %.529138626.us.epil.init, align 1, !tbaa !44
  %i.dkf = sext <8 x i8> %i.dke to <8 x i16>
  %i.dkg = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.epil.init11992, <8 x i16> %i.dkd, <8 x i16> %i.dkf)
  br label %._crit_edge8629.us

._crit_edge8629.us:                               ; preds = %._crit_edge8629.us.unr-lcssa, %.epil.preheader11989
  %.lcssa11885 = phi <4 x i32> [ %i.djr, %._crit_edge8629.us.unr-lcssa ], [ %i.dkg, %.epil.preheader11989 ] ; 2 uses
  %scevgep10202 = getelementptr i8, ptr %.429128632.us, i64 8
  %scevgep10203 = getelementptr i8, ptr %scevgep10202, i64 %i.dij ; 2 uses
  %indvars.iv.next10208 = add nuw nsw i64 %indvars.iv10207.a, 2 ; 3 uses
  %i.dkh = trunc i64 %indvars.iv.next10208 to i32
  %i.dki = or i32 %i.dkh, 1
  %i.dkj = icmp slt i32 %i.dki, %i.ctz
  br i1 %i.dkj, label %.noexc3527.us, label %.preheader7709.loopexit, !llvm.loop !179

.preheader7709.loopexit:                          ; preds = %._crit_edge8629.us
  %i.dkk = trunc nuw i64 %indvars.iv.next10208 to i32
  br label %.preheader7709

.preheader7709:                                   ; preds = %.noexc3527.preheader, %.preheader7709.loopexit, %._crit_edge8616
  %.lcssa7794 = phi <4 x i32> [ %i.dhj, %._crit_edge8616 ], [ %.lcssa11885, %.preheader7709.loopexit ], [ %i.dhj, %.noexc3527.preheader ] ; 3 uses
  %.42912.lcssa = phi ptr [ %.22910.lcssa, %._crit_edge8616 ], [ %scevgep10203, %.preheader7709.loopexit ], [ %.22910.lcssa, %.noexc3527.preheader ]
  %.22906.lcssa = phi i32 [ %.12905.lcssa, %._crit_edge8616 ], [ %i.dkk, %.preheader7709.loopexit ], [ %i.dig, %.noexc3527.preheader ] ; 2 uses
  %i.dkl = icmp slt i32 %.22906.lcssa, %i.ctz
  br i1 %i.dkl, label %.noexc3525.lr.ph, label %._crit_edge8653

.noexc3525.lr.ph:                                 ; preds = %.preheader7709
  %i.dkm = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !180
  %i.dkn = load ptr, ptr %0, align 8, !tbaa !32, !noalias !180
  %i.dko = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !180
  %i.dkp = load i64, ptr %i.cs, align 8, !tbaa !36, !noalias !180 ; 2 uses
  %factor.op.mul8655 = mul i64 %i.dko, %i.dkp
  %i.dkq = sext i32 %i.dkm to i64
  %i.dkr = load i32, ptr %i.b, align 4, !tbaa !9
  %i.dks = mul nsw i32 %i.dkr, %i.cua
  %i.dkt = sext i32 %i.dks to i64
  %i.dku = mul i64 %i.dkp, %i.dkq
  %i.dkv = mul i64 %i.dku, %i.dkt
  %invariant.gep8657 = getelementptr i8, ptr %i.dkn, i64 %i.dkv
  %i.dkw = load i32, ptr %i.a, align 4, !tbaa !9
  %i.dkx = mul nsw i32 %i.dkw, %i.cub
  %i.dky = sext i32 %i.dkx to i64
  %invariant.gep8658 = getelementptr i8, ptr %invariant.gep8657, i64 %i.dky
  %i.dkz = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.dla = icmp sgt i32 %i.dkz, 0
  %i.dlb = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.dla, label %.noexc3525.us.preheader, label %._crit_edge8653

.noexc3525.us.preheader:                          ; preds = %.noexc3525.lr.ph
  %i.dlc = add nsw i32 %i.dkz, -1
  %i.dld = zext nneg i32 %i.dlc to i64
  %i.dle = shl nuw nsw i64 %i.dld, 2
  %i.dlf = zext i32 %.22906.lcssa to i64
  %wide.trip.count10215 = zext nneg i32 %i.dkz to i64 ; 2 uses
  %xtraiter11999 = and i64 %wide.trip.count10215, 1
  %i.dlg = icmp eq i32 %i.dkz, 1
  %unroll_iter12005.a = and i64 %wide.trip.count10215, 2147483646
  %lcmp.mod12002.not = icmp eq i64 %xtraiter11999, 0
  %lcmp.mod12004.a = trunc i32 %i.dkz to i1
  br label %.noexc3525.us

.noexc3525.us:                                    ; preds = %.noexc3525.us.preheader, %._crit_edge8648.us
  %indvars.iv10217 = phi i64 [ %i.dlf, %.noexc3525.us.preheader ], [ %indvars.iv.next10218, %._crit_edge8648.us ] ; 2 uses
  %.629148651.us = phi ptr [ %.42912.lcssa, %.noexc3525.us.preheader ], [ %scevgep10213, %._crit_edge8648.us ] ; 3 uses
  %i.dlh = phi <4 x i32> [ %.lcssa7794, %.noexc3525.us.preheader ], [ %.lcssa11886, %._crit_edge8648.us ] ; 2 uses
  %.reass8656.us = mul i64 %factor.op.mul8655, %indvars.iv10217
  %gep8659.us = getelementptr i8, ptr %invariant.gep8658, i64 %.reass8656.us ; 3 uses
  br i1 %i.dlg, label %.epil.preheader11998, label %.noexc3525.us.new

.noexc3525.us.new:                                ; preds = %.noexc3525.us, %.noexc3525.us.new
  %indvars.iv10210 = phi i64 [ %indvars.iv.next10211.1, %.noexc3525.us.new ], [ 0, %.noexc3525.us ] ; 3 uses
  %.729158645.us = phi ptr [ %i.dmp, %.noexc3525.us.new ], [ %.629148651.us, %.noexc3525.us ] ; 3 uses
  %i.dli = phi <4 x i32> [ %i.dmo, %.noexc3525.us.new ], [ %i.dlh, %.noexc3525.us ]
  %niter12006.a = phi i64 [ %niter12006.next.1.a, %.noexc3525.us.new ], [ 0, %.noexc3525.us ]
  %i.dlj = getelementptr inbounds nuw [4 x i8], ptr %i.dlb, i64 %indvars.iv10210
  %i.dlk = load i32, ptr %i.dlj, align 4, !tbaa !9
  %i.dll = sext i32 %i.dlk to i64
  %i.dlm = getelementptr inbounds i8, ptr %gep8659.us, i64 %i.dll
  %i.dln = load i8, ptr %i.dlm, align 1, !tbaa !44
  %i.dlo = sext i8 %i.dln to i16
  %i.dlp = insertelement <8 x i16> poison, i16 %i.dlo, i64 0
  %i.dlq = shufflevector <8 x i16> %i.dlp, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dlr = load <8 x i8>, ptr %.729158645.us, align 1, !tbaa !44
  %i.dls = sext <8 x i8> %i.dlr to <8 x i16>      ; 2 uses
  %i.dlt = mul <8 x i16> %i.dlq, %i.dls
  %i.dlu = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.dlq, <8 x i16> %i.dls)
  %i.dlv = shufflevector <8 x i16> %i.dlt, <8 x i16> %i.dlu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dlw = bitcast <8 x i16> %i.dlv to <4 x i32>
  %i.dlx = add <4 x i32> %i.dli, %i.dlw
  %i.dly = getelementptr inbounds nuw i8, ptr %.729158645.us, i64 4
  %i.dlz = getelementptr inbounds nuw [4 x i8], ptr %i.dlb, i64 %indvars.iv10210
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dlz, i64 4
  %i.dmb = load i32, ptr %i.dma, align 4, !tbaa !9
  %i.dmc = sext i32 %i.dmb to i64
  %i.dmd = getelementptr inbounds i8, ptr %gep8659.us, i64 %i.dmc
  %i.dme = load i8, ptr %i.dmd, align 1, !tbaa !44
  %i.dmf = sext i8 %i.dme to i16
  %i.dmg = insertelement <8 x i16> poison, i16 %i.dmf, i64 0
  %i.dmh = shufflevector <8 x i16> %i.dmg, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dmi = load <8 x i8>, ptr %i.dly, align 1, !tbaa !44
  %i.dmj = sext <8 x i8> %i.dmi to <8 x i16>      ; 2 uses
  %i.dmk = mul <8 x i16> %i.dmh, %i.dmj
  %i.dml = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.dmh, <8 x i16> %i.dmj)
  %i.dmm = shufflevector <8 x i16> %i.dmk, <8 x i16> %i.dml, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dmn = bitcast <8 x i16> %i.dmm to <4 x i32>
  %i.dmo = add <4 x i32> %i.dlx, %i.dmn           ; 3 uses
  %i.dmp = getelementptr inbounds nuw i8, ptr %.729158645.us, i64 8 ; 2 uses
  %indvars.iv.next10211.1 = add nuw nsw i64 %indvars.iv10210, 2 ; 2 uses
  %niter12006.next.1.a = add i64 %niter12006.a, 2 ; 2 uses
  %niter12006.ncmp.1.a = icmp eq i64 %niter12006.next.1.a, %unroll_iter12005.a
  br i1 %niter12006.ncmp.1.a, label %._crit_edge8648.us.unr-lcssa, label %.noexc3525.us.new, !llvm.loop !183

._crit_edge8648.us.unr-lcssa:                     ; preds = %.noexc3525.us.new
  br i1 %lcmp.mod12002.not, label %._crit_edge8648.us, label %.epil.preheader11998
end_hunk_3
begin_hunk_4_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.eqe = shufflevector <8 x i32> %i.eqa, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eqf = shufflevector <8 x i32> %i.eqa, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eqg = add <4 x i32> %i.eqe, %i.eqf           ; 2 uses
  %i.eqh = shufflevector <8 x i32> %i.eqd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eqi = shufflevector <8 x i32> %i.eqd, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eqj = add <4 x i32> %i.eqh, %i.eqi           ; 2 uses
  %i.eqk = shufflevector <8 x i32> %i.eqa, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %shift11612 = shufflevector <4 x i32> %i.eqg, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop11613 = add nsw <4 x i32> %i.eqg, %shift11612
  %i.eql = extractelement <4 x i32> %foldExtExtBinop11613, i64 2
  %i.eqm = shufflevector <8 x i32> %i.eqd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %shift11618 = shufflevector <4 x i32> %i.eqj, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop11619 = add nsw <4 x i32> %i.eqj, %shift11618
  %i.eqn = extractelement <4 x i32> %foldExtExtBinop11619, i64 2
  %i.eqo = or disjoint i32 %.02837.lcssa, 7
  %i.eqp = icmp slt i32 %i.eqo, %i.eke
  br i1 %i.eqp, label %.noexc3483.lr.ph, label %._crit_edge8932

.noexc3483.lr.ph:                                 ; preds = %._crit_edge8901
  %i.eqq = load i32, ptr %i.c, align 4, !tbaa !9  ; 4 uses
  %i.eqr = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !225
  %i.eqs = load ptr, ptr %0, align 8, !tbaa !32, !noalias !225 ; 2 uses
  %i.eqt = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !225
  %i.equ = load i64, ptr %i.bez, align 8, !tbaa !36, !noalias !225 ; 2 uses
  %factor.op.mul8937 = mul i64 %i.eqt, %i.equ
  %i.eqv = sext i32 %i.eqr to i64
  %i.eqw = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.eqx = mul nsw i32 %i.eqw, %i.eka
  %i.eqy = sext i32 %i.eqx to i64
  %i.eqz = mul i64 %i.equ, %i.eqv                 ; 2 uses
  %i.era = mul i64 %i.eqz, %i.eqy
  %invariant.gep8939 = getelementptr i8, ptr %i.eqs, i64 %i.era
  %i.erb = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.erc = mul i32 %i.eqq, %i.ekc
  %i.erd = mul i32 %i.erc, %i.erb
  %i.ere = sext i32 %i.erd to i64
  %invariant.gep8940 = getelementptr i8, ptr %invariant.gep8939, i64 %i.ere
  %i.erf = mul nsw i32 %i.eqw, %i.ekb
  %i.erg = sext i32 %i.erf to i64
  %i.erh = mul i64 %i.eqz, %i.erg
  %invariant.gep8944 = getelementptr i8, ptr %i.eqs, i64 %i.erh
  %i.eri = mul i32 %i.eqq, %i.ekd
  %i.erj = mul i32 %i.eri, %i.erb
  %i.erk = sext i32 %i.erj to i64
  %invariant.gep8945 = getelementptr i8, ptr %invariant.gep8944, i64 %i.erk
  %i.erl = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.erm = icmp sgt i32 %i.erl, 0
  %i.ern = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.ero = icmp eq i32 %i.eqq, 8
  %i.erp = add i32 %i.erl, -1
  %i.erq = zext i32 %i.erp to i64
  %i.err = shl nuw nsw i64 %i.erq, 4              ; 2 uses
  %wide.trip.count10302 = zext i32 %i.erl to i64  ; 3 uses
  %xtraiter12014.a = and i64 %wide.trip.count10302, 1
  %i.ers = icmp eq i32 %i.erl, 1
  %unroll_iter12019 = and i64 %wide.trip.count10302, 2147483646
  %lcmp.mod12015.not.a = icmp eq i64 %xtraiter12014.a, 0
  %lcmp.mod12018 = trunc i32 %i.erl to i1
  br label %.noexc3483

.noexc3483:                                       ; preds = %.noexc3483.lr.ph, %._crit_edge8921
  %.128388931 = phi i32 [ %.02837.lcssa, %.noexc3483.lr.ph ], [ %i.etv, %._crit_edge8921 ] ; 2 uses
  %.228438930 = phi ptr [ %.02841.lcssa, %.noexc3483.lr.ph ], [ %.32844.lcssa, %._crit_edge8921 ] ; 6 uses
  %i.ert = phi <8 x i32> [ zeroinitializer, %.noexc3483.lr.ph ], [ %i.etu, %._crit_edge8921 ] ; 4 uses
  %i.eru = phi <8 x i32> [ zeroinitializer, %.noexc3483.lr.ph ], [ %i.ett, %._crit_edge8921 ] ; 4 uses
  %i.erv = sdiv i32 %.128388931, %i.eqq
  %i.erw = sext i32 %i.erv to i64
  %.reass8938 = mul i64 %factor.op.mul8937, %i.erw ; 2 uses
  %gep8941 = getelementptr i8, ptr %invariant.gep8940, i64 %.reass8938 ; 4 uses
  %gep8946 = getelementptr i8, ptr %invariant.gep8945, i64 %.reass8938 ; 4 uses
  br i1 %i.erm, label %.lr.ph8920, label %._crit_edge8921

.lr.ph8920:                                       ; preds = %.noexc3483
  br i1 %i.ero, label %.lr.ph8920.split.us.preheader, label %.lr.ph8920.split

.lr.ph8920.split.us.preheader:                    ; preds = %.lr.ph8920
  br i1 %i.ers, label %.lr.ph8920.split.us.epil.preheader, label %.lr.ph8920.split.us

.lr.ph8920.split.us:                              ; preds = %.lr.ph8920.split.us.preheader, %.lr.ph8920.split.us
  %indvars.iv10304 = phi i64 [ %indvars.iv.next10305.1, %.lr.ph8920.split.us ], [ 0, %.lr.ph8920.split.us.preheader ] ; 3 uses
  %.328448918.us = phi ptr [ %i.etd, %.lr.ph8920.split.us ], [ %.228438930, %.lr.ph8920.split.us.preheader ] ; 3 uses
  %.174958917.us = phi <8 x i32> [ %i.etc, %.lr.ph8920.split.us ], [ %i.ert, %.lr.ph8920.split.us.preheader ]
  %.174978916.us = phi <8 x i32> [ %i.esz, %.lr.ph8920.split.us ], [ %i.eru, %.lr.ph8920.split.us.preheader ]
  %niter12020 = phi i64 [ %niter12020.next.1, %.lr.ph8920.split.us ], [ 0, %.lr.ph8920.split.us.preheader ]
  %i.erx = getelementptr inbounds nuw [4 x i8], ptr %i.ern, i64 %indvars.iv10304
  %i.ery = load i32, ptr %i.erx, align 4, !tbaa !9
  %i.erz = sext i32 %i.ery to i64                 ; 2 uses
  %i.esa = getelementptr inbounds i8, ptr %gep8941, i64 %i.erz
  %i.esb = getelementptr inbounds i8, ptr %gep8946, i64 %i.erz
  %i.esc = load <8 x i8>, ptr %i.esa, align 1, !tbaa !44
  %i.esd = load <8 x i8>, ptr %i.esb, align 1, !tbaa !44
  %i.ese = load <16 x i8>, ptr %.328448918.us, align 16, !tbaa !44
  %i.esf = sext <16 x i8> %i.ese to <16 x i16>    ; 2 uses
  %i.esg = shufflevector <8 x i8> %i.esc, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.esh = sext <16 x i8> %i.esg to <16 x i16>
  %i.esi = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174978916.us, <16 x i16> %i.esh, <16 x i16> %i.esf)
  %i.esj = shufflevector <8 x i8> %i.esd, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.esk = sext <16 x i8> %i.esj to <16 x i16>
  %i.esl = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174958917.us, <16 x i16> %i.esk, <16 x i16> %i.esf)
  %i.esm = getelementptr inbounds nuw i8, ptr %.328448918.us, i64 16
  %i.esn = getelementptr inbounds nuw [4 x i8], ptr %i.ern, i64 %indvars.iv10304
  %i.eso = getelementptr inbounds nuw i8, ptr %i.esn, i64 4
  %i.esp = load i32, ptr %i.eso, align 4, !tbaa !9
  %i.esq = sext i32 %i.esp to i64                 ; 2 uses
  %i.esr = getelementptr inbounds i8, ptr %gep8941, i64 %i.esq
  %i.ess = getelementptr inbounds i8, ptr %gep8946, i64 %i.esq
  %i.est = load <8 x i8>, ptr %i.esr, align 1, !tbaa !44
  %i.esu = load <8 x i8>, ptr %i.ess, align 1, !tbaa !44
  %i.esv = load <16 x i8>, ptr %i.esm, align 16, !tbaa !44
  %i.esw = sext <16 x i8> %i.esv to <16 x i16>    ; 2 uses
  %i.esx = shufflevector <8 x i8> %i.est, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.esy = sext <16 x i8> %i.esx to <16 x i16>
  %i.esz = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.esi, <16 x i16> %i.esy, <16 x i16> %i.esw) ; 3 uses
  %i.eta = shufflevector <8 x i8> %i.esu, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.etb = sext <16 x i8> %i.eta to <16 x i16>
  %i.etc = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.esl, <16 x i16> %i.etb, <16 x i16> %i.esw) ; 3 uses
  %i.etd = getelementptr inbounds nuw i8, ptr %.328448918.us, i64 32 ; 2 uses
  %indvars.iv.next10305.1 = add nuw nsw i64 %indvars.iv10304, 2 ; 2 uses
  %niter12020.next.1 = add i64 %niter12020, 2     ; 2 uses
  %niter12020.ncmp.1 = icmp eq i64 %niter12020.next.1, %unroll_iter12019
  br i1 %niter12020.ncmp.1, label %._crit_edge8921.loopexit.unr-lcssa, label %.lr.ph8920.split.us, !llvm.loop !228

._crit_edge8921.loopexit.unr-lcssa:               ; preds = %.lr.ph8920.split.us
  br i1 %lcmp.mod12015.not.a, label %._crit_edge8921.loopexit, label %.lr.ph8920.split.us.epil.preheader

.lr.ph8920.split.us.epil.preheader:               ; preds = %._crit_edge8921.loopexit.unr-lcssa, %.lr.ph8920.split.us.preheader
  %indvars.iv10304.epil.init = phi i64 [ 0, %.lr.ph8920.split.us.preheader ], [ %indvars.iv.next10305.1, %._crit_edge8921.loopexit.unr-lcssa ]
  %.328448918.us.epil.init = phi ptr [ %.228438930, %.lr.ph8920.split.us.preheader ], [ %i.etd, %._crit_edge8921.loopexit.unr-lcssa ]
  %.174958917.us.epil.init = phi <8 x i32> [ %i.ert, %.lr.ph8920.split.us.preheader ], [ %i.etc, %._crit_edge8921.loopexit.unr-lcssa ]
  %.174978916.us.epil.init = phi <8 x i32> [ %i.eru, %.lr.ph8920.split.us.preheader ], [ %i.esz, %._crit_edge8921.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12018)
  %i.ete = getelementptr inbounds nuw [4 x i8], ptr %i.ern, i64 %indvars.iv10304.epil.init
  %i.etf = load i32, ptr %i.ete, align 4, !tbaa !9
  %i.etg = sext i32 %i.etf to i64                 ; 2 uses
  %i.eth = getelementptr inbounds i8, ptr %gep8941, i64 %i.etg
  %i.eti = getelementptr inbounds i8, ptr %gep8946, i64 %i.etg
  %i.etj = load <8 x i8>, ptr %i.eth, align 1, !tbaa !44
  %i.etk = load <8 x i8>, ptr %i.eti, align 1, !tbaa !44
  %i.etl = load <16 x i8>, ptr %.328448918.us.epil.init, align 16, !tbaa !44
  %i.etm = sext <16 x i8> %i.etl to <16 x i16>    ; 2 uses
  %i.etn = shufflevector <8 x i8> %i.etj, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eto = sext <16 x i8> %i.etn to <16 x i16>
  %i.etp = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174978916.us.epil.init, <16 x i16> %i.eto, <16 x i16> %i.etm)
  %i.etq = shufflevector <8 x i8> %i.etk, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.etr = sext <16 x i8> %i.etq to <16 x i16>
  %i.ets = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174958917.us.epil.init, <16 x i16> %i.etr, <16 x i16> %i.etm)
  br label %._crit_edge8921.loopexit

._crit_edge8921.loopexit:                         ; preds = %._crit_edge8921.loopexit.unr-lcssa, %.lr.ph8920.split.us.epil.preheader
  %.lcssa11749 = phi <8 x i32> [ %i.esz, %._crit_edge8921.loopexit.unr-lcssa ], [ %i.etp, %.lr.ph8920.split.us.epil.preheader ]
  %.lcssa11748 = phi <8 x i32> [ %i.etc, %._crit_edge8921.loopexit.unr-lcssa ], [ %i.ets, %.lr.ph8920.split.us.epil.preheader ]
  %scevgep10306 = getelementptr i8, ptr %.228438930, i64 16
  %scevgep10307 = getelementptr i8, ptr %scevgep10306, i64 %i.err
  br label %._crit_edge8921

._crit_edge8921.loopexit9598:                     ; preds = %.lr.ph8920.split
  %scevgep10299 = getelementptr i8, ptr %.228438930, i64 16
  %scevgep10300 = getelementptr i8, ptr %scevgep10299, i64 %i.err
  br label %._crit_edge8921

._crit_edge8921:                                  ; preds = %._crit_edge8921.loopexit9598, %._crit_edge8921.loopexit, %.noexc3483
  %i.ett = phi <8 x i32> [ %i.eru, %.noexc3483 ], [ %.lcssa11749, %._crit_edge8921.loopexit ], [ %i.euk, %._crit_edge8921.loopexit9598 ] ; 2 uses
  %i.etu = phi <8 x i32> [ %i.ert, %.noexc3483 ], [ %.lcssa11748, %._crit_edge8921.loopexit ], [ %i.euo, %._crit_edge8921.loopexit9598 ] ; 2 uses
  %.32844.lcssa = phi ptr [ %.228438930, %.noexc3483 ], [ %scevgep10307, %._crit_edge8921.loopexit ], [ %scevgep10300, %._crit_edge8921.loopexit9598 ] ; 2 uses
  %i.etv = add nuw nsw i32 %.128388931, 8         ; 3 uses
  %i.etw = or disjoint i32 %i.etv, 7
  %i.etx = icmp slt i32 %i.etw, %i.eke
  br i1 %i.etx, label %.noexc3483, label %._crit_edge8932, !llvm.loop !229

.lr.ph8920.split:                                 ; preds = %.lr.ph8920, %.lr.ph8920.split
  %indvars.iv10297 = phi i64 [ %indvars.iv.next10298, %.lr.ph8920.split ], [ 0, %.lr.ph8920 ] ; 2 uses
  %.328448918 = phi ptr [ %i.eup, %.lr.ph8920.split ], [ %.228438930, %.lr.ph8920 ] ; 2 uses
  %.174958917 = phi <8 x i32> [ %i.euo, %.lr.ph8920.split ], [ %i.ert, %.lr.ph8920 ]
  %.174978916 = phi <8 x i32> [ %i.euk, %.lr.ph8920.split ], [ %i.eru, %.lr.ph8920 ]
  %i.ety = getelementptr inbounds nuw [4 x i8], ptr %i.ern, i64 %indvars.iv10297
  %i.etz = load i32, ptr %i.ety, align 4, !tbaa !9
  %i.eua = sext i32 %i.etz to i64                 ; 2 uses
  %i.eub = getelementptr inbounds i8, ptr %gep8941, i64 %i.eua
  %i.euc = getelementptr inbounds i8, ptr %gep8946, i64 %i.eua
  %i.eud = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.eub, <8 x i32> %i.drp, <8 x i32> splat (i32 -1), i8 1)
  %i.eue = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.euc, <8 x i32> %i.drp, <8 x i32> splat (i32 -1), i8 1)
  %i.euf = load <16 x i8>, ptr %.328448918, align 16, !tbaa !44
  %i.eug = sext <16 x i8> %i.euf to <16 x i16>    ; 2 uses
  %i.euh = shufflevector <8 x i32> %i.eud, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eui = trunc <16 x i32> %i.euh to <16 x i8>
  %i.euj = sext <16 x i8> %i.eui to <16 x i16>
  %i.euk = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174978916, <16 x i16> %i.euj, <16 x i16> %i.eug) ; 2 uses
  %i.eul = shufflevector <8 x i32> %i.eue, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eum = trunc <16 x i32> %i.eul to <16 x i8>
  %i.eun = sext <16 x i8> %i.eum to <16 x i16>
  %i.euo = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174958917, <16 x i16> %i.eun, <16 x i16> %i.eug) ; 2 uses
  %i.eup = getelementptr inbounds nuw i8, ptr %.328448918, i64 16
  %indvars.iv.next10298 = add nuw nsw i64 %indvars.iv10297, 1 ; 2 uses
  %exitcond10303.not = icmp eq i64 %indvars.iv.next10298, %wide.trip.count10302
  br i1 %exitcond10303.not, label %._crit_edge8921.loopexit9598, label %.lr.ph8920.split, !llvm.loop !228

._crit_edge8932:                                  ; preds = %._crit_edge8921, %._crit_edge8901
  %i.euq = phi <8 x i32> [ zeroinitializer, %._crit_edge8901 ], [ %i.ett, %._crit_edge8921 ] ; 2 uses
  %i.eur = phi <8 x i32> [ zeroinitializer, %._crit_edge8901 ], [ %i.etu, %._crit_edge8921 ] ; 2 uses
  %.22843.lcssa = phi ptr [ %.02841.lcssa, %._crit_edge8901 ], [ %.32844.lcssa, %._crit_edge8921 ] ; 3 uses
  %.12838.lcssa = phi i32 [ %.02837.lcssa, %._crit_edge8901 ], [ %i.etv, %._crit_edge8921 ] ; 6 uses
  %i.eus = shufflevector <8 x i32> %i.euq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eut = add <4 x i32> %i.eqk, %i.eus
  %i.euu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eut) ; 3 uses
  %i.euv = shufflevector <8 x i32> %i.euq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.euw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.euv)
  %i.eux = add nsw i32 %i.eql, %i.euw             ; 3 uses
  %i.euy = shufflevector <8 x i32> %i.eur, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.euz = shufflevector <8 x i32> %i.eur, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eva = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.euz)
  %i.evb = add <4 x i32> %i.eqm, %i.euy
  %i.evc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.evb) ; 3 uses
  %i.evd = add nsw i32 %i.eqn, %i.eva             ; 3 uses
  %i.eve = or disjoint i32 %.12838.lcssa, 1
  %i.evf = icmp slt i32 %i.eve, %i.eke
  br i1 %i.evf, label %.noexc3479.lr.ph, label %.preheader7705

.noexc3479.lr.ph:                                 ; preds = %._crit_edge8932
  %i.evg = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !230
  %i.evh = load ptr, ptr %0, align 8, !tbaa !32, !noalias !230 ; 2 uses
  %i.evi = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !230
  %i.evj = load i64, ptr %i.bez, align 8, !tbaa !36, !noalias !230 ; 2 uses
  %factor.op.mul8972 = mul i64 %i.evi, %i.evj
  %i.evk = sext i32 %i.evg to i64
  %i.evl = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.evm = mul nsw i32 %i.evl, %i.eka
  %i.evn = sext i32 %i.evm to i64
  %i.evo = mul i64 %i.evj, %i.evk                 ; 2 uses
  %i.evp = mul i64 %i.evo, %i.evn
  %invariant.gep8974 = getelementptr i8, ptr %i.evh, i64 %i.evp
  %i.evq = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.evr = mul nsw i32 %i.evq, %i.ekc
  %i.evs = sext i32 %i.evr to i64
  %invariant.gep8975 = getelementptr i8, ptr %invariant.gep8974, i64 %i.evs
  %i.evt = mul nsw i32 %i.evl, %i.ekb
  %i.evu = sext i32 %i.evt to i64
  %i.evv = mul i64 %i.evo, %i.evu
  %invariant.gep8979 = getelementptr i8, ptr %i.evh, i64 %i.evv
  %i.evw = mul nsw i32 %i.evq, %i.ekd
  %i.evx = sext i32 %i.evw to i64
  %invariant.gep8980 = getelementptr i8, ptr %invariant.gep8979, i64 %i.evx
  %i.evy = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.evz = icmp sgt i32 %i.evy, 0
  %i.ewa = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.evz, label %.noexc3479.us.preheader, label %.noexc3479.preheader

.noexc3479.preheader:                             ; preds = %.noexc3479.lr.ph
  %i.ewb = add nuw i32 %.12838.lcssa, 2
  %14 = add nuw i32 %.12838.lcssa, 3
  %smax10311 = call i32 @llvm.smax.i32(i32 %i.eke, i32 %14)
  %i.ewc = add nsw i32 %smax10311, -2
  %i.ewd = sub nsw i32 %i.ewc, %.12838.lcssa
  %i.ewe = and i32 %i.ewd, -2
  %i.ewf = add i32 %i.ewb, %i.ewe
  br label %.preheader7705

.noexc3479.us.preheader:                          ; preds = %.noexc3479.lr.ph
  %i.ewg = add nsw i32 %i.evy, -1
  %i.ewh = zext nneg i32 %i.ewg to i64
  %i.ewi = shl nuw nsw i64 %i.ewh, 2
  %i.ewj = zext nneg i32 %.12838.lcssa to i64
  %wide.trip.count10317 = zext nneg i32 %i.evy to i64 ; 6 uses
  %min.iters.check11356 = icmp ult i32 %i.evy, 8
  %min.iters.check11358 = icmp ult i32 %i.evy, 32
  %i.ewk = and i64 %wide.trip.count10317, 24
  %n.vec11360 = and i64 %wide.trip.count10317, 2147483616 ; 5 uses
  %i.ewl = shl nuw nsw i64 %n.vec11360, 2
  %cmp.n11391 = icmp eq i64 %n.vec11360, %wide.trip.count10317
  %min.epilog.iters.check11400 = icmp eq i64 %i.ewk, 0
  %n.vec11402 = and i64 %wide.trip.count10317, 2147483640 ; 4 uses
  %i.ewm = shl nuw nsw i64 %n.vec11402, 2
  %cmp.n11418 = icmp eq i64 %n.vec11402, %wide.trip.count10317
  br label %iter.check11397

iter.check11397:                                  ; preds = %.noexc3479.us.preheader, %._crit_edge8954.us
  %indvars.iv10319 = phi i64 [ %i.ewj, %.noexc3479.us.preheader ], [ %indvars.iv.next10320, %._crit_edge8954.us ] ; 2 uses
  %.428458964.us = phi ptr [ %.22843.lcssa, %.noexc3479.us.preheader ], [ %scevgep10315, %._crit_edge8954.us ] ; 7 uses
  %.028498963.us = phi i32 [ %i.evd, %.noexc3479.us.preheader ], [ %.lcssa11022.a, %._crit_edge8954.us ] ; 3 uses
  %.028538962.us = phi i32 [ %i.eux, %.noexc3479.us.preheader ], [ %.lcssa11024, %._crit_edge8954.us ] ; 3 uses
  %.028578961.us = phi i32 [ %i.evc, %.noexc3479.us.preheader ], [ %.lcssa11023, %._crit_edge8954.us ] ; 3 uses
  %.028618960.us = phi i32 [ %i.euu, %.noexc3479.us.preheader ], [ %.lcssa11025, %._crit_edge8954.us ] ; 3 uses
  %.reass8973.us = mul i64 %factor.op.mul8972, %indvars.iv10319 ; 2 uses
  %gep8976.us = getelementptr i8, ptr %invariant.gep8975, i64 %.reass8973.us ; 41 uses
  %gep8981.us = getelementptr i8, ptr %invariant.gep8980, i64 %.reass8973.us ; 41 uses
  br i1 %min.iters.check11356, label %vec.epilog.scalar.ph11398.preheader, label %vector.main.loop.iter.check11357

vector.main.loop.iter.check11357:                 ; preds = %iter.check11397
  br i1 %min.iters.check11358, label %vec.epilog.ph11401, label %vector.ph11359

vector.ph11359:                                   ; preds = %vector.main.loop.iter.check11357
  %i.ewn = getelementptr i8, ptr %.428458964.us, i64 %i.ewl
  %i.ewo = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028498963.us, i64 0
  %i.ewp = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028538962.us, i64 0
  %i.ewq = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028578961.us, i64 0
  %i.ewr = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028618960.us, i64 0
  br label %vector.body11361

vector.body11361:                                 ; preds = %vector.body11361, %vector.ph11359
  %index11362 = phi i64 [ 0, %vector.ph11359 ], [ %index.next11385, %vector.body11361 ] ; 3 uses
  %vec.phi11363.a = phi <16 x i32> [ %i.ewo, %vector.ph11359 ], [ %i.fos, %vector.body11361 ]
  %vec.phi11364 = phi <16 x i32> [ zeroinitializer, %vector.ph11359 ], [ %i.fot, %vector.body11361 ]
  %vec.phi11365 = phi <16 x i32> [ %i.ewp, %vector.ph11359 ], [ %i.fhu, %vector.body11361 ]
  %vec.phi11366 = phi <16 x i32> [ zeroinitializer, %vector.ph11359 ], [ %i.fhv, %vector.body11361 ]
  %vec.phi11367 = phi <16 x i32> [ %i.ewq, %vector.ph11359 ], [ %i.foo, %vector.body11361 ]
  %vec.phi11368 = phi <16 x i32> [ zeroinitializer, %vector.ph11359 ], [ %i.fop, %vector.body11361 ]
  %vec.phi11369 = phi <16 x i32> [ %i.ewr, %vector.ph11359 ], [ %i.fho, %vector.body11361 ]
  %vec.phi11370 = phi <16 x i32> [ zeroinitializer, %vector.ph11359 ], [ %i.fhp, %vector.body11361 ]
  %i.ews = shl i64 %index11362, 2                 ; 2 uses
  %next.gep11371 = getelementptr i8, ptr %.428458964.us, i64 %i.ews
  %i.ewt = getelementptr i8, ptr %.428458964.us, i64 %i.ews
  %next.gep11372 = getelementptr i8, ptr %i.ewt, i64 64
  %i.ewu = getelementptr inbounds nuw [4 x i8], ptr %i.ewa, i64 %index11362 ; 2 uses
  %i.ewv = getelementptr inbounds nuw i8, ptr %i.ewu, i64 64
  %wide.load11373 = load <16 x i32>, ptr %i.ewu, align 4, !tbaa !9
  %wide.load11374 = load <16 x i32>, ptr %i.ewv, align 4, !tbaa !9
  %i.eww = sext <16 x i32> %wide.load11373 to <16 x i64> ; 16 uses
  %i.ewx = sext <16 x i32> %wide.load11374 to <16 x i64> ; 16 uses
  %i.ewy = extractelement <16 x i64> %i.eww, i64 0 ; 2 uses
  %i.ewz = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.ewy ; 2 uses
  %i.exa = extractelement <16 x i64> %i.eww, i64 1 ; 2 uses
  %i.exb = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exa ; 2 uses
  %i.exc = extractelement <16 x i64> %i.eww, i64 2 ; 2 uses
  %i.exd = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exc ; 2 uses
  %i.exe = extractelement <16 x i64> %i.eww, i64 3 ; 2 uses
  %i.exf = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exe ; 2 uses
  %i.exg = extractelement <16 x i64> %i.eww, i64 4 ; 2 uses
  %i.exh = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exg ; 2 uses
  %i.exi = extractelement <16 x i64> %i.eww, i64 5 ; 2 uses
  %i.exj = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exi ; 2 uses
  %i.exk = extractelement <16 x i64> %i.eww, i64 6 ; 2 uses
  %i.exl = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exk ; 2 uses
  %i.exm = extractelement <16 x i64> %i.eww, i64 7 ; 2 uses
  %i.exn = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exm ; 2 uses
  %i.exo = extractelement <16 x i64> %i.eww, i64 8 ; 2 uses
  %i.exp = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exo ; 2 uses
  %i.exq = extractelement <16 x i64> %i.eww, i64 9 ; 2 uses
  %i.exr = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exq ; 2 uses
  %i.exs = extractelement <16 x i64> %i.eww, i64 10 ; 2 uses
  %i.ext = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exs ; 2 uses
  %i.exu = extractelement <16 x i64> %i.eww, i64 11 ; 2 uses
  %i.exv = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exu ; 2 uses
  %i.exw = extractelement <16 x i64> %i.eww, i64 12 ; 2 uses
  %i.exx = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exw ; 2 uses
  %i.exy = extractelement <16 x i64> %i.eww, i64 13 ; 2 uses
  %i.exz = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.exy ; 2 uses
  %i.eya = extractelement <16 x i64> %i.eww, i64 14 ; 2 uses
  %i.eyb = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eya ; 2 uses
  %i.eyc = extractelement <16 x i64> %i.eww, i64 15 ; 2 uses
  %i.eyd = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eyc ; 2 uses
  %i.eye = extractelement <16 x i64> %i.ewx, i64 0 ; 2 uses
  %i.eyf = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eye ; 2 uses
  %i.eyg = extractelement <16 x i64> %i.ewx, i64 1 ; 2 uses
  %i.eyh = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eyg ; 2 uses
  %i.eyi = extractelement <16 x i64> %i.ewx, i64 2 ; 2 uses
  %i.eyj = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eyi ; 2 uses
  %i.eyk = extractelement <16 x i64> %i.ewx, i64 3 ; 2 uses
  %i.eyl = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eyk ; 2 uses
  %i.eym = extractelement <16 x i64> %i.ewx, i64 4 ; 2 uses
  %i.eyn = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eym ; 2 uses
  %i.eyo = extractelement <16 x i64> %i.ewx, i64 5 ; 2 uses
  %i.eyp = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eyo ; 2 uses
  %i.eyq = extractelement <16 x i64> %i.ewx, i64 6 ; 2 uses
  %i.eyr = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eyq ; 2 uses
  %i.eys = extractelement <16 x i64> %i.ewx, i64 7 ; 2 uses
  %i.eyt = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eys ; 2 uses
  %i.eyu = extractelement <16 x i64> %i.ewx, i64 8 ; 2 uses
  %i.eyv = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eyu ; 2 uses
  %i.eyw = extractelement <16 x i64> %i.ewx, i64 9 ; 2 uses
  %i.eyx = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eyw ; 2 uses
  %i.eyy = extractelement <16 x i64> %i.ewx, i64 10 ; 2 uses
  %i.eyz = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eyy ; 2 uses
  %i.eza = extractelement <16 x i64> %i.ewx, i64 11 ; 2 uses
  %i.ezb = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eza ; 2 uses
  %i.ezc = extractelement <16 x i64> %i.ewx, i64 12 ; 2 uses
  %i.ezd = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.ezc ; 2 uses
  %i.eze = extractelement <16 x i64> %i.ewx, i64 13 ; 2 uses
  %i.ezf = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.eze ; 2 uses
  %i.ezg = extractelement <16 x i64> %i.ewx, i64 14 ; 2 uses
  %i.ezh = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.ezg ; 2 uses
  %i.ezi = extractelement <16 x i64> %i.ewx, i64 15 ; 2 uses
  %i.ezj = getelementptr inbounds i8, ptr %gep8976.us, i64 %i.ezi ; 2 uses
  %i.ezk = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.ewy ; 2 uses
  %i.ezl = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exa ; 2 uses
  %i.ezm = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exc ; 2 uses
  %i.ezn = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exe ; 2 uses
  %i.ezo = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exg ; 2 uses
  %i.ezp = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exi ; 2 uses
  %i.ezq = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exk ; 2 uses
  %i.ezr = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exm ; 2 uses
  %i.ezs = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exo ; 2 uses
  %i.ezt = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exq ; 2 uses
  %i.ezu = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exs ; 2 uses
  %i.ezv = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exu ; 2 uses
  %i.ezw = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exw ; 2 uses
  %i.ezx = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.exy ; 2 uses
  %i.ezy = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eya ; 2 uses
  %i.ezz = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eyc ; 2 uses
  %i.faa = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eye ; 2 uses
  %i.fab = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eyg ; 2 uses
  %i.fac = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eyi ; 2 uses
  %i.fad = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eyk ; 2 uses
  %i.fae = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eym ; 2 uses
  %i.faf = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eyo ; 2 uses
  %i.fag = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eyq ; 2 uses
  %i.fah = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eys ; 2 uses
  %i.fai = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eyu ; 2 uses
  %i.faj = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eyw ; 2 uses
  %i.fak = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eyy ; 2 uses
  %i.fal = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eza ; 2 uses
  %i.fam = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.ezc ; 2 uses
  %i.fan = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.eze ; 2 uses
  %i.fao = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.ezg ; 2 uses
  %i.fap = getelementptr inbounds i8, ptr %gep8981.us, i64 %i.ezi ; 2 uses
  %i.faq = load i8, ptr %i.ewz, align 1, !tbaa !44
  %i.far = load i8, ptr %i.exb, align 1, !tbaa !44
  %i.fas = load i8, ptr %i.exd, align 1, !tbaa !44
  %i.fat = load i8, ptr %i.exf, align 1, !tbaa !44
  %i.fau = load i8, ptr %i.exh, align 1, !tbaa !44
  %i.fav = load i8, ptr %i.exj, align 1, !tbaa !44
  %i.faw = load i8, ptr %i.exl, align 1, !tbaa !44
  %i.fax = load i8, ptr %i.exn, align 1, !tbaa !44
  %i.fay = load i8, ptr %i.exp, align 1, !tbaa !44
  %i.faz = load i8, ptr %i.exr, align 1, !tbaa !44
  %i.fba = load i8, ptr %i.ext, align 1, !tbaa !44
  %i.fbb = load i8, ptr %i.exv, align 1, !tbaa !44
  %i.fbc = load i8, ptr %i.exx, align 1, !tbaa !44
  %i.fbd = load i8, ptr %i.exz, align 1, !tbaa !44
  %i.fbe = load i8, ptr %i.eyb, align 1, !tbaa !44
  %i.fbf = load i8, ptr %i.eyd, align 1, !tbaa !44
  %i.fbg = insertelement <16 x i8> poison, i8 %i.faq, i64 0
  %i.fbh = insertelement <16 x i8> %i.fbg, i8 %i.far, i64 1
  %i.fbi = insertelement <16 x i8> %i.fbh, i8 %i.fas, i64 2
  %i.fbj = insertelement <16 x i8> %i.fbi, i8 %i.fat, i64 3
  %i.fbk = insertelement <16 x i8> %i.fbj, i8 %i.fau, i64 4
  %i.fbl = insertelement <16 x i8> %i.fbk, i8 %i.fav, i64 5
  %i.fbm = insertelement <16 x i8> %i.fbl, i8 %i.faw, i64 6
  %i.fbn = insertelement <16 x i8> %i.fbm, i8 %i.fax, i64 7
  %i.fbo = insertelement <16 x i8> %i.fbn, i8 %i.fay, i64 8
  %i.fbp = insertelement <16 x i8> %i.fbo, i8 %i.faz, i64 9
  %i.fbq = insertelement <16 x i8> %i.fbp, i8 %i.fba, i64 10
  %i.fbr = insertelement <16 x i8> %i.fbq, i8 %i.fbb, i64 11
  %i.fbs = insertelement <16 x i8> %i.fbr, i8 %i.fbc, i64 12
  %i.fbt = insertelement <16 x i8> %i.fbs, i8 %i.fbd, i64 13
  %i.fbu = insertelement <16 x i8> %i.fbt, i8 %i.fbe, i64 14
  %i.fbv = insertelement <16 x i8> %i.fbu, i8 %i.fbf, i64 15
  %i.fbw = load i8, ptr %i.eyf, align 1, !tbaa !44
  %i.fbx = load i8, ptr %i.eyh, align 1, !tbaa !44
  %i.fby = load i8, ptr %i.eyj, align 1, !tbaa !44
  %i.fbz = load i8, ptr %i.eyl, align 1, !tbaa !44
  %i.fca = load i8, ptr %i.eyn, align 1, !tbaa !44
  %i.fcb = load i8, ptr %i.eyp, align 1, !tbaa !44
end_hunk_4
begin_hunk_5_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.gsl = add <4 x i32> %i.gsj, %i.gsk           ; 2 uses
  %i.gsm = shufflevector <8 x i32> %i.gsi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %shift11624 = shufflevector <4 x i32> %i.gsl, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop11625 = add nsw <4 x i32> %i.gsl, %shift11624
  %i.gsn = extractelement <4 x i32> %foldExtExtBinop11625, i64 2
  %i.gso = or disjoint i32 %.02797.lcssa, 7
  %i.gsp = icmp slt i32 %i.gso, %i.glx
  br i1 %i.gsp, label %.noexc3467.lr.ph, label %._crit_edge9085

.noexc3467.lr.ph:                                 ; preds = %._crit_edge9053
  %i.gsq = load i32, ptr %i.c, align 4, !tbaa !9  ; 3 uses
  %i.gsr = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !251
  %i.gss = load ptr, ptr %0, align 8, !tbaa !32, !noalias !251
  %i.gst = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !251
  %i.gsu = load i64, ptr %i.bez, align 8, !tbaa !36, !noalias !251 ; 2 uses
  %factor.op.mul9089 = mul i64 %i.gst, %i.gsu
  %i.gsv = sext i32 %i.gsr to i64
  %i.gsw = load i32, ptr %i.b, align 4, !tbaa !9
  %i.gsx = mul nsw i32 %i.gsw, %i.glv
  %i.gsy = sext i32 %i.gsx to i64
  %i.gsz = mul i64 %i.gsu, %i.gsv
  %i.gta = mul i64 %i.gsz, %i.gsy
  %invariant.gep9091 = getelementptr i8, ptr %i.gss, i64 %i.gta
  %i.gtb = load i32, ptr %i.a, align 4, !tbaa !9
  %i.gtc = mul i32 %i.gsq, %i.glw
  %i.gtd = mul i32 %i.gtc, %i.gtb
  %i.gte = sext i32 %i.gtd to i64
  %invariant.gep9092 = getelementptr i8, ptr %invariant.gep9091, i64 %i.gte
  %i.gtf = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.gtg = icmp sgt i32 %i.gtf, 0
  %i.gth = load ptr, ptr %i.g, align 8            ; 6 uses
  %i.gti = icmp eq i32 %i.gsq, 8
  %i.gtj = add i32 %i.gtf, -1
  %i.gtk = zext i32 %i.gtj to i64
  %i.gtl = shl nuw nsw i64 %i.gtk, 4              ; 2 uses
  %wide.trip.count10358 = zext i32 %i.gtf to i64  ; 5 uses
  %i.gtm = add nsw i64 %wide.trip.count10358, -1  ; 2 uses
  %xtraiter12039 = and i64 %wide.trip.count10358, 1
  %i.gtn = icmp eq i64 %i.gtm, 0
  %unroll_iter12043 = and i64 %wide.trip.count10358, 2147483646
  %lcmp.mod12040.not = icmp eq i64 %xtraiter12039, 0
  %lcmp.mod12042 = trunc i32 %i.gtf to i1
  %xtraiter12045 = and i64 %wide.trip.count10358, 1
  %i.gto = icmp eq i64 %i.gtm, 0
  %unroll_iter12049.a = and i64 %wide.trip.count10358, 2147483646
  %lcmp.mod12046.not = icmp eq i64 %xtraiter12045, 0
  %lcmp.mod12048.a = trunc i32 %i.gtf to i1
  br label %.noexc3467

.noexc3467:                                       ; preds = %.noexc3467.lr.ph, %._crit_edge9077
  %.127989084 = phi i32 [ %.02797.lcssa, %.noexc3467.lr.ph ], [ %i.gvl, %._crit_edge9077 ] ; 2 uses
  %.228039083 = phi ptr [ %.02801.lcssa, %.noexc3467.lr.ph ], [ %.32804.lcssa, %._crit_edge9077 ] ; 7 uses
  %i.gtp = phi <8 x i32> [ zeroinitializer, %.noexc3467.lr.ph ], [ %i.gvk, %._crit_edge9077 ] ; 5 uses
  %i.gtq = sdiv i32 %.127989084, %i.gsq
  %i.gtr = sext i32 %i.gtq to i64
  %.reass9090 = mul i64 %factor.op.mul9089, %i.gtr
  %gep9093 = getelementptr i8, ptr %invariant.gep9092, i64 %.reass9090 ; 6 uses
  br i1 %i.gtg, label %.lr.ph9076, label %._crit_edge9077

.lr.ph9076:                                       ; preds = %.noexc3467
  br i1 %i.gti, label %.lr.ph9076.split.us.preheader, label %.lr.ph9076.split.preheader

.lr.ph9076.split.preheader:                       ; preds = %.lr.ph9076
  br i1 %i.gtn, label %.lr.ph9076.split.epil.preheader, label %.lr.ph9076.split

.lr.ph9076.split.us.preheader:                    ; preds = %.lr.ph9076
  br i1 %i.gto, label %.lr.ph9076.split.us.epil.preheader, label %.lr.ph9076.split.us

.lr.ph9076.split.us:                              ; preds = %.lr.ph9076.split.us.preheader, %.lr.ph9076.split.us
  %indvars.iv10360 = phi i64 [ %indvars.iv.next10361.1, %.lr.ph9076.split.us ], [ 0, %.lr.ph9076.split.us.preheader ] ; 3 uses
  %.328049074.us = phi ptr [ %i.guo, %.lr.ph9076.split.us ], [ %.228039083, %.lr.ph9076.split.us.preheader ] ; 3 uses
  %.174909073.us = phi <8 x i32> [ %i.gun, %.lr.ph9076.split.us ], [ %i.gtp, %.lr.ph9076.split.us.preheader ]
  %niter12050.a = phi i64 [ %niter12050.next.1.a, %.lr.ph9076.split.us ], [ 0, %.lr.ph9076.split.us.preheader ]
  %i.gts = getelementptr inbounds nuw [4 x i8], ptr %i.gth, i64 %indvars.iv10360
  %i.gtt = load i32, ptr %i.gts, align 4, !tbaa !9
  %i.gtu = sext i32 %i.gtt to i64
  %i.gtv = getelementptr inbounds i8, ptr %gep9093, i64 %i.gtu
  %i.gtw = load <8 x i8>, ptr %i.gtv, align 1, !tbaa !44
  %i.gtx = load <16 x i8>, ptr %.328049074.us, align 16, !tbaa !44
  %i.gty = sext <16 x i8> %i.gtx to <16 x i16>
  %i.gtz = shufflevector <8 x i8> %i.gtw, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gua = sext <16 x i8> %i.gtz to <16 x i16>
  %i.gub = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174909073.us, <16 x i16> %i.gua, <16 x i16> %i.gty)
  %i.guc = getelementptr inbounds nuw i8, ptr %.328049074.us, i64 16
  %i.gud = getelementptr inbounds nuw [4 x i8], ptr %i.gth, i64 %indvars.iv10360
  %i.gue = getelementptr inbounds nuw i8, ptr %i.gud, i64 4
  %i.guf = load i32, ptr %i.gue, align 4, !tbaa !9
  %i.gug = sext i32 %i.guf to i64
  %i.guh = getelementptr inbounds i8, ptr %gep9093, i64 %i.gug
  %i.gui = load <8 x i8>, ptr %i.guh, align 1, !tbaa !44
  %i.guj = load <16 x i8>, ptr %i.guc, align 16, !tbaa !44
  %i.guk = sext <16 x i8> %i.guj to <16 x i16>
  %i.gul = shufflevector <8 x i8> %i.gui, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gum = sext <16 x i8> %i.gul to <16 x i16>
  %i.gun = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.gub, <16 x i16> %i.gum, <16 x i16> %i.guk) ; 3 uses
  %i.guo = getelementptr inbounds nuw i8, ptr %.328049074.us, i64 32 ; 2 uses
  %indvars.iv.next10361.1 = add nuw nsw i64 %indvars.iv10360, 2 ; 2 uses
  %niter12050.next.1.a = add i64 %niter12050.a, 2 ; 2 uses
  %niter12050.ncmp.1.a = icmp eq i64 %niter12050.next.1.a, %unroll_iter12049.a
  br i1 %niter12050.ncmp.1.a, label %._crit_edge9077.loopexit.unr-lcssa, label %.lr.ph9076.split.us, !llvm.loop !254

._crit_edge9077.loopexit.unr-lcssa:               ; preds = %.lr.ph9076.split.us
  br i1 %lcmp.mod12046.not, label %._crit_edge9077.loopexit, label %.lr.ph9076.split.us.epil.preheader

.lr.ph9076.split.us.epil.preheader:               ; preds = %._crit_edge9077.loopexit.unr-lcssa, %.lr.ph9076.split.us.preheader
  %indvars.iv10360.epil.init = phi i64 [ 0, %.lr.ph9076.split.us.preheader ], [ %indvars.iv.next10361.1, %._crit_edge9077.loopexit.unr-lcssa ]
  %.328049074.us.epil.init = phi ptr [ %.228039083, %.lr.ph9076.split.us.preheader ], [ %i.guo, %._crit_edge9077.loopexit.unr-lcssa ]
  %.174909073.us.epil.init = phi <8 x i32> [ %i.gtp, %.lr.ph9076.split.us.preheader ], [ %i.gun, %._crit_edge9077.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12048.a)
  %i.gup = getelementptr inbounds nuw [4 x i8], ptr %i.gth, i64 %indvars.iv10360.epil.init
  %i.guq = load i32, ptr %i.gup, align 4, !tbaa !9
  %i.gur = sext i32 %i.guq to i64
  %i.gus = getelementptr inbounds i8, ptr %gep9093, i64 %i.gur
  %i.gut = load <8 x i8>, ptr %i.gus, align 1, !tbaa !44
  %i.guu = load <16 x i8>, ptr %.328049074.us.epil.init, align 16, !tbaa !44
  %i.guv = sext <16 x i8> %i.guu to <16 x i16>
  %i.guw = shufflevector <8 x i8> %i.gut, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gux = sext <16 x i8> %i.guw to <16 x i16>
  %i.guy = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174909073.us.epil.init, <16 x i16> %i.gux, <16 x i16> %i.guv)
  br label %._crit_edge9077.loopexit

._crit_edge9077.loopexit:                         ; preds = %._crit_edge9077.loopexit.unr-lcssa, %.lr.ph9076.split.us.epil.preheader
  %.lcssa11792 = phi <8 x i32> [ %i.gun, %._crit_edge9077.loopexit.unr-lcssa ], [ %i.guy, %.lr.ph9076.split.us.epil.preheader ]
  %scevgep10362 = getelementptr i8, ptr %.228039083, i64 16
  %scevgep10363 = getelementptr i8, ptr %scevgep10362, i64 %i.gtl
  br label %._crit_edge9077

._crit_edge9077.loopexit9595.unr-lcssa:           ; preds = %.lr.ph9076.split
  br i1 %lcmp.mod12040.not, label %._crit_edge9077.loopexit9595, label %.lr.ph9076.split.epil.preheader

.lr.ph9076.split.epil.preheader:                  ; preds = %._crit_edge9077.loopexit9595.unr-lcssa, %.lr.ph9076.split.preheader
  %indvars.iv10353.epil.init = phi i64 [ 0, %.lr.ph9076.split.preheader ], [ %indvars.iv.next10354.1, %._crit_edge9077.loopexit9595.unr-lcssa ]
  %.328049074.epil.init = phi ptr [ %.228039083, %.lr.ph9076.split.preheader ], [ %i.gwm, %._crit_edge9077.loopexit9595.unr-lcssa ]
  %.174909073.epil.init = phi <8 x i32> [ %i.gtp, %.lr.ph9076.split.preheader ], [ %i.gwl, %._crit_edge9077.loopexit9595.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12042)
  %i.guz = getelementptr inbounds nuw [4 x i8], ptr %i.gth, i64 %indvars.iv10353.epil.init
  %i.gva = load i32, ptr %i.guz, align 4, !tbaa !9
  %i.gvb = sext i32 %i.gva to i64
  %i.gvc = getelementptr inbounds i8, ptr %gep9093, i64 %i.gvb
  %i.gvd = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.gvc, <8 x i32> %i.ejy, <8 x i32> splat (i32 -1), i8 1)
  %i.gve = load <16 x i8>, ptr %.328049074.epil.init, align 16, !tbaa !44
  %i.gvf = sext <16 x i8> %i.gve to <16 x i16>
  %i.gvg = shufflevector <8 x i32> %i.gvd, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gvh = trunc <16 x i32> %i.gvg to <16 x i8>
  %i.gvi = sext <16 x i8> %i.gvh to <16 x i16>
  %i.gvj = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174909073.epil.init, <16 x i16> %i.gvi, <16 x i16> %i.gvf)
  br label %._crit_edge9077.loopexit9595

._crit_edge9077.loopexit9595:                     ; preds = %._crit_edge9077.loopexit9595.unr-lcssa, %.lr.ph9076.split.epil.preheader
  %.lcssa11791 = phi <8 x i32> [ %i.gwl, %._crit_edge9077.loopexit9595.unr-lcssa ], [ %i.gvj, %.lr.ph9076.split.epil.preheader ]
  %scevgep10355 = getelementptr i8, ptr %.228039083, i64 16
  %scevgep10356 = getelementptr i8, ptr %scevgep10355, i64 %i.gtl
  br label %._crit_edge9077

._crit_edge9077:                                  ; preds = %._crit_edge9077.loopexit9595, %._crit_edge9077.loopexit, %.noexc3467
  %i.gvk = phi <8 x i32> [ %i.gtp, %.noexc3467 ], [ %.lcssa11792, %._crit_edge9077.loopexit ], [ %.lcssa11791, %._crit_edge9077.loopexit9595 ] ; 2 uses
  %.32804.lcssa = phi ptr [ %.228039083, %.noexc3467 ], [ %scevgep10363, %._crit_edge9077.loopexit ], [ %scevgep10356, %._crit_edge9077.loopexit9595 ] ; 2 uses
  %i.gvl = add nuw nsw i32 %.127989084, 8         ; 3 uses
  %i.gvm = or disjoint i32 %i.gvl, 7
  %i.gvn = icmp slt i32 %i.gvm, %i.glx
  br i1 %i.gvn, label %.noexc3467, label %._crit_edge9085, !llvm.loop !255

.lr.ph9076.split:                                 ; preds = %.lr.ph9076.split.preheader, %.lr.ph9076.split
  %indvars.iv10353 = phi i64 [ %indvars.iv.next10354.1, %.lr.ph9076.split ], [ 0, %.lr.ph9076.split.preheader ] ; 3 uses
  %.328049074 = phi ptr [ %i.gwm, %.lr.ph9076.split ], [ %.228039083, %.lr.ph9076.split.preheader ] ; 3 uses
  %.174909073 = phi <8 x i32> [ %i.gwl, %.lr.ph9076.split ], [ %i.gtp, %.lr.ph9076.split.preheader ]
  %niter12044 = phi i64 [ %niter12044.next.1, %.lr.ph9076.split ], [ 0, %.lr.ph9076.split.preheader ]
  %i.gvo = getelementptr inbounds nuw [4 x i8], ptr %i.gth, i64 %indvars.iv10353
  %i.gvp = load i32, ptr %i.gvo, align 4, !tbaa !9
  %i.gvq = sext i32 %i.gvp to i64
  %i.gvr = getelementptr inbounds i8, ptr %gep9093, i64 %i.gvq
  %i.gvs = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.gvr, <8 x i32> %i.ejy, <8 x i32> splat (i32 -1), i8 1)
  %i.gvt = load <16 x i8>, ptr %.328049074, align 16, !tbaa !44
  %i.gvu = sext <16 x i8> %i.gvt to <16 x i16>
  %i.gvv = shufflevector <8 x i32> %i.gvs, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gvw = trunc <16 x i32> %i.gvv to <16 x i8>
  %i.gvx = sext <16 x i8> %i.gvw to <16 x i16>
  %i.gvy = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %.174909073, <16 x i16> %i.gvx, <16 x i16> %i.gvu)
  %i.gvz = getelementptr inbounds nuw i8, ptr %.328049074, i64 16
  %i.gwa = getelementptr inbounds nuw [4 x i8], ptr %i.gth, i64 %indvars.iv10353
  %i.gwb = getelementptr inbounds nuw i8, ptr %i.gwa, i64 4
  %i.gwc = load i32, ptr %i.gwb, align 4, !tbaa !9
  %i.gwd = sext i32 %i.gwc to i64
  %i.gwe = getelementptr inbounds i8, ptr %gep9093, i64 %i.gwd
  %i.gwf = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.gwe, <8 x i32> %i.ejy, <8 x i32> splat (i32 -1), i8 1)
  %i.gwg = load <16 x i8>, ptr %i.gvz, align 16, !tbaa !44
  %i.gwh = sext <16 x i8> %i.gwg to <16 x i16>
  %i.gwi = shufflevector <8 x i32> %i.gwf, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gwj = trunc <16 x i32> %i.gwi to <16 x i8>
  %i.gwk = sext <16 x i8> %i.gwj to <16 x i16>
  %i.gwl = call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.gvy, <16 x i16> %i.gwk, <16 x i16> %i.gwh) ; 3 uses
  %i.gwm = getelementptr inbounds nuw i8, ptr %.328049074, i64 32 ; 2 uses
  %indvars.iv.next10354.1 = add nuw nsw i64 %indvars.iv10353, 2 ; 2 uses
  %niter12044.next.1 = add i64 %niter12044, 2     ; 2 uses
  %niter12044.ncmp.1 = icmp eq i64 %niter12044.next.1, %unroll_iter12043
  br i1 %niter12044.ncmp.1, label %._crit_edge9077.loopexit9595.unr-lcssa, label %.lr.ph9076.split, !llvm.loop !254

._crit_edge9085:                                  ; preds = %._crit_edge9077, %._crit_edge9053
  %i.gwn = phi <8 x i32> [ zeroinitializer, %._crit_edge9053 ], [ %i.gvk, %._crit_edge9077 ] ; 2 uses
  %.22803.lcssa = phi ptr [ %.02801.lcssa, %._crit_edge9053 ], [ %.32804.lcssa, %._crit_edge9077 ] ; 3 uses
  %.12798.lcssa = phi i32 [ %.02797.lcssa, %._crit_edge9053 ], [ %i.gvl, %._crit_edge9077 ] ; 6 uses
  %i.gwo = shufflevector <8 x i32> %i.gwn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gwp = shufflevector <8 x i32> %i.gwn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gwq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gwp)
  %i.gwr = add <4 x i32> %i.gsm, %i.gwo
  %i.gws = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gwr) ; 3 uses
  %i.gwt = add nsw i32 %i.gsn, %i.gwq             ; 3 uses
  %i.gwu = or disjoint i32 %.12798.lcssa, 1
  %i.gwv = icmp slt i32 %i.gwu, %i.glx
  br i1 %i.gwv, label %.noexc3465.lr.ph, label %.preheader7704

.noexc3465.lr.ph:                                 ; preds = %._crit_edge9085
  %i.gww = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !256
  %i.gwx = load ptr, ptr %0, align 8, !tbaa !32, !noalias !256
  %i.gwy = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !256
  %i.gwz = load i64, ptr %i.bez, align 8, !tbaa !36, !noalias !256 ; 2 uses
  %factor.op.mul9111 = mul i64 %i.gwy, %i.gwz
  %i.gxa = sext i32 %i.gww to i64
  %i.gxb = load i32, ptr %i.b, align 4, !tbaa !9
  %i.gxc = mul nsw i32 %i.gxb, %i.glv
  %i.gxd = sext i32 %i.gxc to i64
  %i.gxe = mul i64 %i.gwz, %i.gxa
  %i.gxf = mul i64 %i.gxe, %i.gxd
  %invariant.gep9113 = getelementptr i8, ptr %i.gwx, i64 %i.gxf
  %i.gxg = load i32, ptr %i.a, align 4, !tbaa !9
  %i.gxh = mul nsw i32 %i.gxg, %i.glw
  %i.gxi = sext i32 %i.gxh to i64
  %invariant.gep9114 = getelementptr i8, ptr %invariant.gep9113, i64 %i.gxi
  %i.gxj = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.gxk = icmp sgt i32 %i.gxj, 0
  %i.gxl = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.gxk, label %.noexc3465.us.preheader, label %.noexc3465.preheader

.noexc3465.preheader:                             ; preds = %.noexc3465.lr.ph
  %i.gxm = add nuw i32 %.12798.lcssa, 2
  %15 = add nuw i32 %.12798.lcssa, 3
  %smax10367 = call i32 @llvm.smax.i32(i32 %i.glx, i32 %15)
  %i.gxn = add nsw i32 %smax10367, -2
  %i.gxo = sub nsw i32 %i.gxn, %.12798.lcssa
  %i.gxp = and i32 %i.gxo, -2
  %i.gxq = add i32 %i.gxm, %i.gxp
  br label %.preheader7704

.noexc3465.us.preheader:                          ; preds = %.noexc3465.lr.ph
  %i.gxr = add nsw i32 %i.gxj, -1
  %i.gxs = zext nneg i32 %i.gxr to i64
  %i.gxt = shl nuw nsw i64 %i.gxs, 2
  %i.gxu = zext nneg i32 %.12798.lcssa to i64
  %wide.trip.count10373 = zext nneg i32 %i.gxj to i64 ; 6 uses
  %min.iters.check11236 = icmp ult i32 %i.gxj, 8
  %min.iters.check11238 = icmp ult i32 %i.gxj, 32
  %i.gxv = and i64 %wide.trip.count10373, 24
  %n.vec11240 = and i64 %wide.trip.count10373, 2147483616 ; 5 uses
  %i.gxw = shl nuw nsw i64 %n.vec11240, 2
  %cmp.n11265 = icmp eq i64 %n.vec11240, %wide.trip.count10373
  %min.epilog.iters.check11272 = icmp eq i64 %i.gxv, 0
  %n.vec11274 = and i64 %wide.trip.count10373, 2147483640 ; 4 uses
  %i.gxx = shl nuw nsw i64 %n.vec11274, 2
  %cmp.n11288 = icmp eq i64 %n.vec11274, %wide.trip.count10373
  br label %iter.check11269

iter.check11269:                                  ; preds = %.noexc3465.us.preheader, %._crit_edge9099.us
  %indvars.iv10375 = phi i64 [ %i.gxu, %.noexc3465.us.preheader ], [ %indvars.iv.next10376, %._crit_edge9099.us ] ; 2 uses
  %.428059105.us = phi ptr [ %.22803.lcssa, %.noexc3465.us.preheader ], [ %scevgep10371, %._crit_edge9099.us ] ; 7 uses
  %.028099104.us = phi i32 [ %i.gwt, %.noexc3465.us.preheader ], [ %.lcssa11039, %._crit_edge9099.us ] ; 3 uses
  %.028139103.us = phi i32 [ %i.gws, %.noexc3465.us.preheader ], [ %.lcssa11040, %._crit_edge9099.us ] ; 3 uses
  %.reass9112.us = mul i64 %factor.op.mul9111, %indvars.iv10375
  %gep9115.us = getelementptr i8, ptr %invariant.gep9114, i64 %.reass9112.us ; 41 uses
  br i1 %min.iters.check11236, label %vec.epilog.scalar.ph11270.preheader, label %vector.main.loop.iter.check11237

vector.main.loop.iter.check11237:                 ; preds = %iter.check11269
  br i1 %min.iters.check11238, label %vec.epilog.ph11273, label %vector.ph11239

vector.ph11239:                                   ; preds = %vector.main.loop.iter.check11237
  %i.gxy = getelementptr i8, ptr %.428059105.us, i64 %i.gxw
  %i.gxz = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028099104.us, i64 0
  %i.gya = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.028139103.us, i64 0
  br label %vector.body11241

vector.body11241:                                 ; preds = %vector.body11241, %vector.ph11239
  %index11242 = phi i64 [ 0, %vector.ph11239 ], [ %index.next11261, %vector.body11241 ] ; 3 uses
  %vec.phi11243 = phi <16 x i32> [ %i.gxz, %vector.ph11239 ], [ %i.hhx, %vector.body11241 ]
  %vec.phi11244 = phi <16 x i32> [ zeroinitializer, %vector.ph11239 ], [ %i.hhy, %vector.body11241 ]
  %vec.phi11245 = phi <16 x i32> [ %i.gya, %vector.ph11239 ], [ %i.hhr, %vector.body11241 ]
  %vec.phi11246 = phi <16 x i32> [ zeroinitializer, %vector.ph11239 ], [ %i.hhs, %vector.body11241 ]
  %i.gyb = shl i64 %index11242, 2                 ; 2 uses
  %next.gep11247 = getelementptr i8, ptr %.428059105.us, i64 %i.gyb
  %i.gyc = getelementptr i8, ptr %.428059105.us, i64 %i.gyb
  %next.gep11248 = getelementptr i8, ptr %i.gyc, i64 64
  %i.gyd = getelementptr inbounds nuw [4 x i8], ptr %i.gxl, i64 %index11242 ; 2 uses
  %i.gye = getelementptr inbounds nuw i8, ptr %i.gyd, i64 64
  %wide.load11249 = load <16 x i32>, ptr %i.gyd, align 4, !tbaa !9
  %wide.load11250 = load <16 x i32>, ptr %i.gye, align 4, !tbaa !9
  %i.gyf = sext <16 x i32> %wide.load11249 to <16 x i64> ; 16 uses
  %i.gyg = sext <16 x i32> %wide.load11250 to <16 x i64> ; 16 uses
  %i.gyh = extractelement <16 x i64> %i.gyf, i64 0
  %i.gyi = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gyh ; 2 uses
  %i.gyj = extractelement <16 x i64> %i.gyf, i64 1
  %i.gyk = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gyj ; 2 uses
  %i.gyl = extractelement <16 x i64> %i.gyf, i64 2
  %i.gym = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gyl ; 2 uses
  %i.gyn = extractelement <16 x i64> %i.gyf, i64 3
  %i.gyo = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gyn ; 2 uses
  %i.gyp = extractelement <16 x i64> %i.gyf, i64 4
  %i.gyq = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gyp ; 2 uses
  %i.gyr = extractelement <16 x i64> %i.gyf, i64 5
  %i.gys = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gyr ; 2 uses
  %i.gyt = extractelement <16 x i64> %i.gyf, i64 6
  %i.gyu = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gyt ; 2 uses
  %i.gyv = extractelement <16 x i64> %i.gyf, i64 7
  %i.gyw = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gyv ; 2 uses
  %i.gyx = extractelement <16 x i64> %i.gyf, i64 8
  %i.gyy = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gyx ; 2 uses
  %i.gyz = extractelement <16 x i64> %i.gyf, i64 9
  %i.gza = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gyz ; 2 uses
  %i.gzb = extractelement <16 x i64> %i.gyf, i64 10
  %i.gzc = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzb ; 2 uses
  %i.gzd = extractelement <16 x i64> %i.gyf, i64 11
  %i.gze = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzd ; 2 uses
  %i.gzf = extractelement <16 x i64> %i.gyf, i64 12
  %i.gzg = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzf ; 2 uses
  %i.gzh = extractelement <16 x i64> %i.gyf, i64 13
  %i.gzi = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzh ; 2 uses
  %i.gzj = extractelement <16 x i64> %i.gyf, i64 14
  %i.gzk = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzj ; 2 uses
  %i.gzl = extractelement <16 x i64> %i.gyf, i64 15
  %i.gzm = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzl ; 2 uses
  %i.gzn = extractelement <16 x i64> %i.gyg, i64 0
  %i.gzo = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzn ; 2 uses
  %i.gzp = extractelement <16 x i64> %i.gyg, i64 1
  %i.gzq = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzp ; 2 uses
  %i.gzr = extractelement <16 x i64> %i.gyg, i64 2
  %i.gzs = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzr ; 2 uses
  %i.gzt = extractelement <16 x i64> %i.gyg, i64 3
  %i.gzu = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzt ; 2 uses
  %i.gzv = extractelement <16 x i64> %i.gyg, i64 4
  %i.gzw = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzv ; 2 uses
  %i.gzx = extractelement <16 x i64> %i.gyg, i64 5
  %i.gzy = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzx ; 2 uses
  %i.gzz = extractelement <16 x i64> %i.gyg, i64 6
  %i.haa = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.gzz ; 2 uses
  %i.hab = extractelement <16 x i64> %i.gyg, i64 7
  %i.hac = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hab ; 2 uses
  %i.had = extractelement <16 x i64> %i.gyg, i64 8
  %i.hae = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.had ; 2 uses
  %i.haf = extractelement <16 x i64> %i.gyg, i64 9
  %i.hag = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.haf ; 2 uses
  %i.hah = extractelement <16 x i64> %i.gyg, i64 10
  %i.hai = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hah ; 2 uses
  %i.haj = extractelement <16 x i64> %i.gyg, i64 11
  %i.hak = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.haj ; 2 uses
  %i.hal = extractelement <16 x i64> %i.gyg, i64 12
  %i.ham = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hal ; 2 uses
  %i.han = extractelement <16 x i64> %i.gyg, i64 13
  %i.hao = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.han ; 2 uses
  %i.hap = extractelement <16 x i64> %i.gyg, i64 14
  %i.haq = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.hap ; 2 uses
  %i.har = extractelement <16 x i64> %i.gyg, i64 15
  %i.has = getelementptr inbounds i8, ptr %gep9115.us, i64 %i.har ; 2 uses
  %i.hat = load i8, ptr %i.gyi, align 1, !tbaa !44
  %i.hau = load i8, ptr %i.gyk, align 1, !tbaa !44
  %i.hav = load i8, ptr %i.gym, align 1, !tbaa !44
  %i.haw = load i8, ptr %i.gyo, align 1, !tbaa !44
  %i.hax = load i8, ptr %i.gyq, align 1, !tbaa !44
  %i.hay = load i8, ptr %i.gys, align 1, !tbaa !44
  %i.haz = load i8, ptr %i.gyu, align 1, !tbaa !44
  %i.hba = load i8, ptr %i.gyw, align 1, !tbaa !44
  %i.hbb = load i8, ptr %i.gyy, align 1, !tbaa !44
  %i.hbc = load i8, ptr %i.gza, align 1, !tbaa !44
  %i.hbd = load i8, ptr %i.gzc, align 1, !tbaa !44
  %i.hbe = load i8, ptr %i.gze, align 1, !tbaa !44
  %i.hbf = load i8, ptr %i.gzg, align 1, !tbaa !44
  %i.hbg = load i8, ptr %i.gzi, align 1, !tbaa !44
  %i.hbh = load i8, ptr %i.gzk, align 1, !tbaa !44
  %i.hbi = load i8, ptr %i.gzm, align 1, !tbaa !44
  %i.hbj = insertelement <16 x i8> poison, i8 %i.hat, i64 0
  %i.hbk = insertelement <16 x i8> %i.hbj, i8 %i.hau, i64 1
  %i.hbl = insertelement <16 x i8> %i.hbk, i8 %i.hav, i64 2
  %i.hbm = insertelement <16 x i8> %i.hbl, i8 %i.haw, i64 3
  %i.hbn = insertelement <16 x i8> %i.hbm, i8 %i.hax, i64 4
  %i.hbo = insertelement <16 x i8> %i.hbn, i8 %i.hay, i64 5
  %i.hbp = insertelement <16 x i8> %i.hbo, i8 %i.haz, i64 6
  %i.hbq = insertelement <16 x i8> %i.hbp, i8 %i.hba, i64 7
  %i.hbr = insertelement <16 x i8> %i.hbq, i8 %i.hbb, i64 8
  %i.hbs = insertelement <16 x i8> %i.hbr, i8 %i.hbc, i64 9
  %i.hbt = insertelement <16 x i8> %i.hbs, i8 %i.hbd, i64 10
  %i.hbu = insertelement <16 x i8> %i.hbt, i8 %i.hbe, i64 11
  %i.hbv = insertelement <16 x i8> %i.hbu, i8 %i.hbf, i64 12
  %i.hbw = insertelement <16 x i8> %i.hbv, i8 %i.hbg, i64 13
  %i.hbx = insertelement <16 x i8> %i.hbw, i8 %i.hbh, i64 14
  %i.hby = insertelement <16 x i8> %i.hbx, i8 %i.hbi, i64 15
  %i.hbz = load i8, ptr %i.gzo, align 1, !tbaa !44
  %i.hca = load i8, ptr %i.gzq, align 1, !tbaa !44
  %i.hcb = load i8, ptr %i.gzs, align 1, !tbaa !44
  %i.hcc = load i8, ptr %i.gzu, align 1, !tbaa !44
  %i.hcd = load i8, ptr %i.gzw, align 1, !tbaa !44
  %i.hce = load i8, ptr %i.gzy, align 1, !tbaa !44
  %i.hcf = load i8, ptr %i.haa, align 1, !tbaa !44
  %i.hcg = load i8, ptr %i.hac, align 1, !tbaa !44
  %i.hch = load i8, ptr %i.hae, align 1, !tbaa !44
  %i.hci = load i8, ptr %i.hag, align 1, !tbaa !44
  %i.hcj = load i8, ptr %i.hai, align 1, !tbaa !44
  %i.hck = load i8, ptr %i.hak, align 1, !tbaa !44
  %i.hcl = load i8, ptr %i.ham, align 1, !tbaa !44
  %i.hcm = load i8, ptr %i.hao, align 1, !tbaa !44
  %i.hcn = load i8, ptr %i.haq, align 1, !tbaa !44
  %i.hco = load i8, ptr %i.has, align 1, !tbaa !44
  %i.hcp = insertelement <16 x i8> poison, i8 %i.hbz, i64 0
  %i.hcq = insertelement <16 x i8> %i.hcp, i8 %i.hca, i64 1
  %i.hcr = insertelement <16 x i8> %i.hcq, i8 %i.hcb, i64 2
  %i.hcs = insertelement <16 x i8> %i.hcr, i8 %i.hcc, i64 3
  %i.hct = insertelement <16 x i8> %i.hcs, i8 %i.hcd, i64 4
  %i.hcu = insertelement <16 x i8> %i.hct, i8 %i.hce, i64 5
  %i.hcv = insertelement <16 x i8> %i.hcu, i8 %i.hcf, i64 6
  %i.hcw = insertelement <16 x i8> %i.hcv, i8 %i.hcg, i64 7
  %i.hcx = insertelement <16 x i8> %i.hcw, i8 %i.hch, i64 8
  %i.hcy = insertelement <16 x i8> %i.hcx, i8 %i.hci, i64 9
  %i.hcz = insertelement <16 x i8> %i.hcy, i8 %i.hcj, i64 10
  %i.hda = insertelement <16 x i8> %i.hcz, i8 %i.hck, i64 11
  %i.hdb = insertelement <16 x i8> %i.hda, i8 %i.hcl, i64 12
  %i.hdc = insertelement <16 x i8> %i.hdb, i8 %i.hcm, i64 13
  %i.hdd = insertelement <16 x i8> %i.hdc, i8 %i.hcn, i64 14
  %i.hde = insertelement <16 x i8> %i.hdd, i8 %i.hco, i64 15
  %i.hdf = sext <16 x i8> %i.hby to <16 x i32>    ; 2 uses
  %i.hdg = sext <16 x i8> %i.hde to <16 x i32>    ; 2 uses
  %wide.vec11251 = load <64 x i8>, ptr %next.gep11247, align 1, !tbaa !44 ; 4 uses
  %strided.vec11252.a = shufflevector <64 x i8> %wide.vec11251, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec11253.a = shufflevector <64 x i8> %wide.vec11251, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec11254 = shufflevector <64 x i8> %wide.vec11251, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec11255 = shufflevector <64 x i8> %wide.vec11251, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec11256 = load <64 x i8>, ptr %next.gep11248, align 1, !tbaa !44 ; 4 uses
  %strided.vec11257 = shufflevector <64 x i8> %wide.vec11256, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec11258 = shufflevector <64 x i8> %wide.vec11256, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec11259 = shufflevector <64 x i8> %wide.vec11256, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec11260 = shufflevector <64 x i8> %wide.vec11256, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.hdh = sext <16 x i8> %strided.vec11252.a to <16 x i32>
  %i.hdi = sext <16 x i8> %strided.vec11257 to <16 x i32>
  %i.hdj = mul nsw <16 x i32> %i.hdh, %i.hdf
end_hunk_5
begin_hunk_6_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.jbq = add nsw i64 %wide.trip.count10473, -1  ; 2 uses
  %xtraiter12065.a = and i64 %wide.trip.count10473, 1
  %i.jbr = icmp eq i64 %i.jbq, 0
  %unroll_iter12070.a = and i64 %wide.trip.count10473, 2147483646
  %lcmp.mod12066.not.a = icmp eq i64 %xtraiter12065.a, 0
  %lcmp.mod12069.a = trunc i32 %i.jbj to i1
  %xtraiter12072.a = and i64 %wide.trip.count10473, 1
  %i.jbs = icmp eq i64 %i.jbq, 0
  %unroll_iter12077 = and i64 %wide.trip.count10473, 2147483646
  %lcmp.mod12073.not.a = icmp eq i64 %xtraiter12072.a, 0
  %lcmp.mod12076 = trunc i32 %i.jbj to i1
  br label %.noexc3421

.noexc3421:                                       ; preds = %.noexc3421.lr.ph, %._crit_edge9385
  %.127299395 = phi i32 [ %.02728.lcssa, %.noexc3421.lr.ph ], [ %i.jee, %._crit_edge9385 ] ; 2 uses
  %.227349394 = phi ptr [ %.02732.lcssa, %.noexc3421.lr.ph ], [ %.32735.lcssa, %._crit_edge9385 ] ; 7 uses
  %i.jbt = phi <4 x i32> [ zeroinitializer, %.noexc3421.lr.ph ], [ %i.jed, %._crit_edge9385 ] ; 5 uses
  %i.jbu = phi <4 x i32> [ zeroinitializer, %.noexc3421.lr.ph ], [ %i.jec, %._crit_edge9385 ] ; 5 uses
  %i.jbv = sdiv i32 %.127299395, %i.jao
  %i.jbw = sext i32 %i.jbv to i64
  %.reass9402 = mul i64 %factor.op.mul9401, %i.jbw ; 2 uses
  %gep9405 = getelementptr i8, ptr %invariant.gep9404, i64 %.reass9402 ; 6 uses
  %gep9410 = getelementptr i8, ptr %invariant.gep9409, i64 %.reass9402 ; 6 uses
  br i1 %i.jbk, label %.lr.ph9384, label %._crit_edge9385

.lr.ph9384:                                       ; preds = %.noexc3421
  br i1 %i.jbm, label %.lr.ph9384.split.us.preheader, label %.lr.ph9384.split.preheader

.lr.ph9384.split.preheader:                       ; preds = %.lr.ph9384
  br i1 %i.jbr, label %.lr.ph9384.split.epil.preheader, label %.lr.ph9384.split

.lr.ph9384.split.us.preheader:                    ; preds = %.lr.ph9384
  br i1 %i.jbs, label %.lr.ph9384.split.us.epil.preheader, label %.lr.ph9384.split.us

.lr.ph9384.split.us:                              ; preds = %.lr.ph9384.split.us.preheader, %.lr.ph9384.split.us
  %indvars.iv10475 = phi i64 [ %indvars.iv.next10476.1, %.lr.ph9384.split.us ], [ 0, %.lr.ph9384.split.us.preheader ] ; 3 uses
  %.327359382.us = phi ptr [ %i.jcz, %.lr.ph9384.split.us ], [ %.227349394, %.lr.ph9384.split.us.preheader ] ; 3 uses
  %.174519381.us = phi <4 x i32> [ %i.jcy, %.lr.ph9384.split.us ], [ %i.jbt, %.lr.ph9384.split.us.preheader ]
  %.174539380.us = phi <4 x i32> [ %i.jcx, %.lr.ph9384.split.us ], [ %i.jbu, %.lr.ph9384.split.us.preheader ]
  %niter12078 = phi i64 [ %niter12078.next.1, %.lr.ph9384.split.us ], [ 0, %.lr.ph9384.split.us.preheader ]
  %i.jbx = getelementptr inbounds nuw [4 x i8], ptr %i.jbl, i64 %indvars.iv10475
  %i.jby = load i32, ptr %i.jbx, align 4, !tbaa !9
  %i.jbz = sext i32 %i.jby to i64                 ; 2 uses
  %i.jca = getelementptr inbounds i8, ptr %gep9405, i64 %i.jbz
  %i.jcb = getelementptr inbounds i8, ptr %gep9410, i64 %i.jbz
  %i.jcc = load <8 x i8>, ptr %i.jca, align 1, !tbaa !44
  %i.jcd = load <8 x i8>, ptr %i.jcb, align 1, !tbaa !44
  %i.jce = sext <8 x i8> %i.jcc to <8 x i16>
  %i.jcf = sext <8 x i8> %i.jcd to <8 x i16>
  %i.jcg = load <8 x i8>, ptr %.327359382.us, align 1, !tbaa !44
  %i.jch = sext <8 x i8> %i.jcg to <8 x i16>      ; 2 uses
  %i.jci = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539380.us, <8 x i16> %i.jce, <8 x i16> %i.jch)
  %i.jcj = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174519381.us, <8 x i16> %i.jcf, <8 x i16> %i.jch)
  %i.jck = getelementptr inbounds nuw i8, ptr %.327359382.us, i64 8
  %i.jcl = getelementptr inbounds nuw [4 x i8], ptr %i.jbl, i64 %indvars.iv10475
  %i.jcm = getelementptr inbounds nuw i8, ptr %i.jcl, i64 4
  %i.jcn = load i32, ptr %i.jcm, align 4, !tbaa !9
  %i.jco = sext i32 %i.jcn to i64                 ; 2 uses
  %i.jcp = getelementptr inbounds i8, ptr %gep9405, i64 %i.jco
  %i.jcq = getelementptr inbounds i8, ptr %gep9410, i64 %i.jco
  %i.jcr = load <8 x i8>, ptr %i.jcp, align 1, !tbaa !44
  %i.jcs = load <8 x i8>, ptr %i.jcq, align 1, !tbaa !44
  %i.jct = sext <8 x i8> %i.jcr to <8 x i16>
  %i.jcu = sext <8 x i8> %i.jcs to <8 x i16>
  %i.jcv = load <8 x i8>, ptr %i.jck, align 1, !tbaa !44
  %i.jcw = sext <8 x i8> %i.jcv to <8 x i16>      ; 2 uses
  %i.jcx = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jci, <8 x i16> %i.jct, <8 x i16> %i.jcw) ; 3 uses
  %i.jcy = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jcj, <8 x i16> %i.jcu, <8 x i16> %i.jcw) ; 3 uses
  %i.jcz = getelementptr inbounds nuw i8, ptr %.327359382.us, i64 16 ; 2 uses
  %indvars.iv.next10476.1 = add nuw nsw i64 %indvars.iv10475, 2 ; 2 uses
  %niter12078.next.1 = add i64 %niter12078, 2     ; 2 uses
  %niter12078.ncmp.1 = icmp eq i64 %niter12078.next.1, %unroll_iter12077
  br i1 %niter12078.ncmp.1, label %._crit_edge9385.loopexit.unr-lcssa, label %.lr.ph9384.split.us, !llvm.loop !313

._crit_edge9385.loopexit.unr-lcssa:               ; preds = %.lr.ph9384.split.us
  br i1 %lcmp.mod12073.not.a, label %._crit_edge9385.loopexit, label %.lr.ph9384.split.us.epil.preheader

.lr.ph9384.split.us.epil.preheader:               ; preds = %._crit_edge9385.loopexit.unr-lcssa, %.lr.ph9384.split.us.preheader
  %indvars.iv10475.epil.init = phi i64 [ 0, %.lr.ph9384.split.us.preheader ], [ %indvars.iv.next10476.1, %._crit_edge9385.loopexit.unr-lcssa ]
  %.327359382.us.epil.init = phi ptr [ %.227349394, %.lr.ph9384.split.us.preheader ], [ %i.jcz, %._crit_edge9385.loopexit.unr-lcssa ]
  %.174519381.us.epil.init = phi <4 x i32> [ %i.jbt, %.lr.ph9384.split.us.preheader ], [ %i.jcy, %._crit_edge9385.loopexit.unr-lcssa ]
  %.174539380.us.epil.init = phi <4 x i32> [ %i.jbu, %.lr.ph9384.split.us.preheader ], [ %i.jcx, %._crit_edge9385.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12076)
  %i.jda = getelementptr inbounds nuw [4 x i8], ptr %i.jbl, i64 %indvars.iv10475.epil.init
  %i.jdb = load i32, ptr %i.jda, align 4, !tbaa !9
  %i.jdc = sext i32 %i.jdb to i64                 ; 2 uses
  %i.jdd = getelementptr inbounds i8, ptr %gep9405, i64 %i.jdc
  %i.jde = getelementptr inbounds i8, ptr %gep9410, i64 %i.jdc
  %i.jdf = load <8 x i8>, ptr %i.jdd, align 1, !tbaa !44
  %i.jdg = load <8 x i8>, ptr %i.jde, align 1, !tbaa !44
  %i.jdh = sext <8 x i8> %i.jdf to <8 x i16>
  %i.jdi = sext <8 x i8> %i.jdg to <8 x i16>
  %i.jdj = load <8 x i8>, ptr %.327359382.us.epil.init, align 1, !tbaa !44
  %i.jdk = sext <8 x i8> %i.jdj to <8 x i16>      ; 2 uses
  %i.jdl = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539380.us.epil.init, <8 x i16> %i.jdh, <8 x i16> %i.jdk)
  %i.jdm = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174519381.us.epil.init, <8 x i16> %i.jdi, <8 x i16> %i.jdk)
  br label %._crit_edge9385.loopexit

._crit_edge9385.loopexit:                         ; preds = %._crit_edge9385.loopexit.unr-lcssa, %.lr.ph9384.split.us.epil.preheader
  %.lcssa11665 = phi <4 x i32> [ %i.jcx, %._crit_edge9385.loopexit.unr-lcssa ], [ %i.jdl, %.lr.ph9384.split.us.epil.preheader ]
  %.lcssa11664 = phi <4 x i32> [ %i.jcy, %._crit_edge9385.loopexit.unr-lcssa ], [ %i.jdm, %.lr.ph9384.split.us.epil.preheader ]
  %scevgep10477 = getelementptr i8, ptr %.227349394, i64 8
  %scevgep10478 = getelementptr i8, ptr %scevgep10477, i64 %i.jbp
  br label %._crit_edge9385

._crit_edge9385.loopexit9583.unr-lcssa:           ; preds = %.lr.ph9384.split
  br i1 %lcmp.mod12066.not.a, label %._crit_edge9385.loopexit9583, label %.lr.ph9384.split.epil.preheader

.lr.ph9384.split.epil.preheader:                  ; preds = %._crit_edge9385.loopexit9583.unr-lcssa, %.lr.ph9384.split.preheader
  %indvars.iv10468.epil.init = phi i64 [ 0, %.lr.ph9384.split.preheader ], [ %indvars.iv.next10469.1, %._crit_edge9385.loopexit9583.unr-lcssa ]
  %.327359382.epil.init = phi ptr [ %.227349394, %.lr.ph9384.split.preheader ], [ %i.jfn, %._crit_edge9385.loopexit9583.unr-lcssa ]
  %.174519381.epil.init = phi <4 x i32> [ %i.jbt, %.lr.ph9384.split.preheader ], [ %i.jfm, %._crit_edge9385.loopexit9583.unr-lcssa ]
  %.174539380.epil.init = phi <4 x i32> [ %i.jbu, %.lr.ph9384.split.preheader ], [ %i.jfl, %._crit_edge9385.loopexit9583.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12069.a)
  %i.jdn = getelementptr inbounds nuw [4 x i8], ptr %i.jbl, i64 %indvars.iv10468.epil.init
  %i.jdo = load i32, ptr %i.jdn, align 4, !tbaa !9
  %i.jdp = sext i32 %i.jdo to i64                 ; 2 uses
  %i.jdq = getelementptr inbounds i8, ptr %gep9405, i64 %i.jdp
  %i.jdr = getelementptr inbounds i8, ptr %gep9410, i64 %i.jdp
  %i.jds = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jdq, <8 x i32> %i.dof, <8 x i32> splat (i32 -1), i8 1)
  %i.jdt = trunc <8 x i32> %i.jds to <8 x i8>
  %i.jdu = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jdr, <8 x i32> %i.dof, <8 x i32> splat (i32 -1), i8 1)
  %i.jdv = trunc <8 x i32> %i.jdu to <8 x i8>
  %i.jdw = sext <8 x i8> %i.jdt to <8 x i16>
  %i.jdx = sext <8 x i8> %i.jdv to <8 x i16>
  %i.jdy = load <8 x i8>, ptr %.327359382.epil.init, align 1, !tbaa !44
  %i.jdz = sext <8 x i8> %i.jdy to <8 x i16>      ; 2 uses
  %i.jea = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539380.epil.init, <8 x i16> %i.jdw, <8 x i16> %i.jdz)
  %i.jeb = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174519381.epil.init, <8 x i16> %i.jdx, <8 x i16> %i.jdz)
  br label %._crit_edge9385.loopexit9583

._crit_edge9385.loopexit9583:                     ; preds = %._crit_edge9385.loopexit9583.unr-lcssa, %.lr.ph9384.split.epil.preheader
  %.lcssa11663 = phi <4 x i32> [ %i.jfl, %._crit_edge9385.loopexit9583.unr-lcssa ], [ %i.jea, %.lr.ph9384.split.epil.preheader ]
  %.lcssa11662 = phi <4 x i32> [ %i.jfm, %._crit_edge9385.loopexit9583.unr-lcssa ], [ %i.jeb, %.lr.ph9384.split.epil.preheader ]
  %scevgep10470 = getelementptr i8, ptr %.227349394, i64 8
  %scevgep10471 = getelementptr i8, ptr %scevgep10470, i64 %i.jbp
  br label %._crit_edge9385

._crit_edge9385:                                  ; preds = %._crit_edge9385.loopexit9583, %._crit_edge9385.loopexit, %.noexc3421
  %i.jec = phi <4 x i32> [ %i.jbu, %.noexc3421 ], [ %.lcssa11665, %._crit_edge9385.loopexit ], [ %.lcssa11663, %._crit_edge9385.loopexit9583 ] ; 2 uses
  %i.jed = phi <4 x i32> [ %i.jbt, %.noexc3421 ], [ %.lcssa11664, %._crit_edge9385.loopexit ], [ %.lcssa11662, %._crit_edge9385.loopexit9583 ] ; 2 uses
  %.32735.lcssa = phi ptr [ %.227349394, %.noexc3421 ], [ %scevgep10478, %._crit_edge9385.loopexit ], [ %scevgep10471, %._crit_edge9385.loopexit9583 ] ; 2 uses
  %i.jee = add nuw nsw i32 %.127299395, 8         ; 3 uses
  %i.jef = or disjoint i32 %i.jee, 7
  %i.jeg = icmp slt i32 %i.jef, %i.iui
  br i1 %i.jeg, label %.noexc3421, label %._crit_edge9396.loopexit, !llvm.loop !314

.lr.ph9384.split:                                 ; preds = %.lr.ph9384.split.preheader, %.lr.ph9384.split
  %indvars.iv10468 = phi i64 [ %indvars.iv.next10469.1, %.lr.ph9384.split ], [ 0, %.lr.ph9384.split.preheader ] ; 3 uses
  %.327359382 = phi ptr [ %i.jfn, %.lr.ph9384.split ], [ %.227349394, %.lr.ph9384.split.preheader ] ; 3 uses
  %.174519381 = phi <4 x i32> [ %i.jfm, %.lr.ph9384.split ], [ %i.jbt, %.lr.ph9384.split.preheader ]
  %.174539380 = phi <4 x i32> [ %i.jfl, %.lr.ph9384.split ], [ %i.jbu, %.lr.ph9384.split.preheader ]
  %niter12071 = phi i64 [ %niter12071.next.1, %.lr.ph9384.split ], [ 0, %.lr.ph9384.split.preheader ]
  %i.jeh = getelementptr inbounds nuw [4 x i8], ptr %i.jbl, i64 %indvars.iv10468
  %i.jei = load i32, ptr %i.jeh, align 4, !tbaa !9
  %i.jej = sext i32 %i.jei to i64                 ; 2 uses
  %i.jek = getelementptr inbounds i8, ptr %gep9405, i64 %i.jej
  %i.jel = getelementptr inbounds i8, ptr %gep9410, i64 %i.jej
  %i.jem = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jek, <8 x i32> %i.dof, <8 x i32> splat (i32 -1), i8 1)
  %i.jen = trunc <8 x i32> %i.jem to <8 x i8>
  %i.jeo = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jel, <8 x i32> %i.dof, <8 x i32> splat (i32 -1), i8 1)
  %i.jep = trunc <8 x i32> %i.jeo to <8 x i8>
  %i.jeq = sext <8 x i8> %i.jen to <8 x i16>
  %i.jer = sext <8 x i8> %i.jep to <8 x i16>
  %i.jes = load <8 x i8>, ptr %.327359382, align 1, !tbaa !44
  %i.jet = sext <8 x i8> %i.jes to <8 x i16>      ; 2 uses
  %i.jeu = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174539380, <8 x i16> %i.jeq, <8 x i16> %i.jet)
  %i.jev = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174519381, <8 x i16> %i.jer, <8 x i16> %i.jet)
  %i.jew = getelementptr inbounds nuw i8, ptr %.327359382, i64 8
  %i.jex = getelementptr inbounds nuw [4 x i8], ptr %i.jbl, i64 %indvars.iv10468
  %i.jey = getelementptr inbounds nuw i8, ptr %i.jex, i64 4
  %i.jez = load i32, ptr %i.jey, align 4, !tbaa !9
  %i.jfa = sext i32 %i.jez to i64                 ; 2 uses
  %i.jfb = getelementptr inbounds i8, ptr %gep9405, i64 %i.jfa
  %i.jfc = getelementptr inbounds i8, ptr %gep9410, i64 %i.jfa
  %i.jfd = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jfb, <8 x i32> %i.dof, <8 x i32> splat (i32 -1), i8 1)
  %i.jfe = trunc <8 x i32> %i.jfd to <8 x i8>
  %i.jff = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.jfc, <8 x i32> %i.dof, <8 x i32> splat (i32 -1), i8 1)
  %i.jfg = trunc <8 x i32> %i.jff to <8 x i8>
  %i.jfh = sext <8 x i8> %i.jfe to <8 x i16>
  %i.jfi = sext <8 x i8> %i.jfg to <8 x i16>
  %i.jfj = load <8 x i8>, ptr %i.jew, align 1, !tbaa !44
  %i.jfk = sext <8 x i8> %i.jfj to <8 x i16>      ; 2 uses
  %i.jfl = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jeu, <8 x i16> %i.jfh, <8 x i16> %i.jfk) ; 3 uses
  %i.jfm = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.jev, <8 x i16> %i.jfi, <8 x i16> %i.jfk) ; 3 uses
  %i.jfn = getelementptr inbounds nuw i8, ptr %.327359382, i64 16 ; 2 uses
  %indvars.iv.next10469.1 = add nuw nsw i64 %indvars.iv10468, 2 ; 2 uses
  %niter12071.next.1 = add i64 %niter12071, 2     ; 2 uses
  %niter12071.ncmp.1 = icmp eq i64 %niter12071.next.1, %unroll_iter12070.a
  br i1 %niter12071.ncmp.1, label %._crit_edge9385.loopexit9583.unr-lcssa, label %.lr.ph9384.split, !llvm.loop !313

._crit_edge9396.loopexit:                         ; preds = %._crit_edge9385
  %i.jfo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jec)
  %i.jfp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jed)
  br label %._crit_edge9396

._crit_edge9396:                                  ; preds = %._crit_edge9396.loopexit, %._crit_edge9365
  %i.jfq = phi i32 [ 0, %._crit_edge9365 ], [ %i.jfo, %._crit_edge9396.loopexit ]
  %i.jfr = phi i32 [ 0, %._crit_edge9365 ], [ %i.jfp, %._crit_edge9396.loopexit ]
  %.22734.lcssa = phi ptr [ %.02732.lcssa, %._crit_edge9365 ], [ %.32735.lcssa, %._crit_edge9396.loopexit ] ; 3 uses
  %.12729.lcssa = phi i32 [ %.02728.lcssa, %._crit_edge9365 ], [ %i.jee, %._crit_edge9396.loopexit ] ; 6 uses
  %i.jfs = add nsw i32 %i.jfq, %i.jak             ; 3 uses
  %i.jft = add nsw i32 %i.jfr, %i.jal             ; 3 uses
  %i.jfu = or disjoint i32 %.12729.lcssa, 1
  %i.jfv = icmp slt i32 %i.jfu, %i.iui
  br i1 %i.jfv, label %.noexc3417.lr.ph, label %.preheader7700

.noexc3417.lr.ph:                                 ; preds = %._crit_edge9396
  %i.jfw = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !315
  %i.jfx = load ptr, ptr %0, align 8, !tbaa !32, !noalias !315 ; 2 uses
  %i.jfy = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !315
  %i.jfz = load i64, ptr %i.dny, align 8, !tbaa !36, !noalias !315 ; 2 uses
  %factor.op.mul9428 = mul i64 %i.jfy, %i.jfz
  %i.jga = sext i32 %i.jfw to i64
  %i.jgb = load i32, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.jgc = mul nsw i32 %i.jgb, %i.iue
  %i.jgd = sext i32 %i.jgc to i64
  %i.jge = mul i64 %i.jfz, %i.jga                 ; 2 uses
  %i.jgf = mul i64 %i.jge, %i.jgd
  %invariant.gep9430 = getelementptr i8, ptr %i.jfx, i64 %i.jgf
  %i.jgg = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.jgh = mul nsw i32 %i.jgg, %i.iug
  %i.jgi = sext i32 %i.jgh to i64
  %invariant.gep9431 = getelementptr i8, ptr %invariant.gep9430, i64 %i.jgi
  %i.jgj = mul nsw i32 %i.jgb, %i.iuf
  %i.jgk = sext i32 %i.jgj to i64
  %i.jgl = mul i64 %i.jge, %i.jgk
  %invariant.gep9435 = getelementptr i8, ptr %i.jfx, i64 %i.jgl
  %i.jgm = mul nsw i32 %i.jgg, %i.iuh
  %i.jgn = sext i32 %i.jgm to i64
  %invariant.gep9436 = getelementptr i8, ptr %invariant.gep9435, i64 %i.jgn
  %i.jgo = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.jgp = icmp sgt i32 %i.jgo, 0
  %i.jgq = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.jgp, label %.noexc3417.us.preheader, label %.noexc3417.preheader

.noexc3417.preheader:                             ; preds = %.noexc3417.lr.ph
  %i.jgr = add nuw i32 %.12729.lcssa, 2
  %16 = add nuw i32 %.12729.lcssa, 3
  %smax10482 = call i32 @llvm.smax.i32(i32 %i.iui, i32 %16)
  %i.jgs = add nsw i32 %smax10482, -2
  %i.jgt = sub nsw i32 %i.jgs, %.12729.lcssa
  %i.jgu = and i32 %i.jgt, -2
  %i.jgv = add i32 %i.jgr, %i.jgu
  br label %.preheader7700

.noexc3417.us.preheader:                          ; preds = %.noexc3417.lr.ph
  %i.jgw = add nsw i32 %i.jgo, -1
  %i.jgx = zext nneg i32 %i.jgw to i64
  %i.jgy = shl nuw nsw i64 %i.jgx, 1
  %i.jgz = zext nneg i32 %.12729.lcssa to i64
  %wide.trip.count10488 = zext nneg i32 %i.jgo to i64 ; 6 uses
  %min.iters.check11560 = icmp ult i32 %i.jgo, 16
  %min.iters.check11562 = icmp ult i32 %i.jgo, 32
  %i.jha = and i64 %wide.trip.count10488, 16
  %n.vec11564 = and i64 %wide.trip.count10488, 2147483616 ; 5 uses
  %i.jhb = shl nuw nsw i64 %n.vec11564, 1
  %cmp.n11585 = icmp eq i64 %n.vec11564, %wide.trip.count10488
  %min.epilog.iters.check11592.not.not = icmp eq i64 %i.jha, 0
  %n.vec11594 = and i64 %wide.trip.count10488, 2147483632 ; 4 uses
  %i.jhc = shl nuw nsw i64 %n.vec11594, 1
  %cmp.n11606 = icmp eq i64 %n.vec11594, %wide.trip.count10488
  br label %iter.check11589

iter.check11589:                                  ; preds = %.noexc3417.us.preheader, %._crit_edge9416.us
  %indvars.iv10490 = phi i64 [ %i.jgz, %.noexc3417.us.preheader ], [ %indvars.iv.next10491, %._crit_edge9416.us ] ; 2 uses
  %.427369422.us = phi ptr [ %.22734.lcssa, %.noexc3417.us.preheader ], [ %scevgep10486, %._crit_edge9416.us ] ; 7 uses
  %.027409421.us = phi i32 [ %i.jft, %.noexc3417.us.preheader ], [ %.lcssa10969, %._crit_edge9416.us ] ; 3 uses
  %.027449420.us = phi i32 [ %i.jfs, %.noexc3417.us.preheader ], [ %.lcssa10970, %._crit_edge9416.us ] ; 3 uses
  %.reass9429.us = mul i64 %factor.op.mul9428, %indvars.iv10490 ; 2 uses
  %gep9432.us = getelementptr i8, ptr %invariant.gep9431, i64 %.reass9429.us ; 49 uses
  %gep9437.us = getelementptr i8, ptr %invariant.gep9436, i64 %.reass9429.us ; 49 uses
  br i1 %min.iters.check11560, label %vec.epilog.scalar.ph11590.preheader, label %vector.main.loop.iter.check11561

vector.main.loop.iter.check11561:                 ; preds = %iter.check11589
  br i1 %min.iters.check11562, label %vec.epilog.ph11593, label %vector.ph11563

vector.ph11563:                                   ; preds = %vector.main.loop.iter.check11561
  %i.jhd = getelementptr i8, ptr %.427369422.us, i64 %i.jhb
  %i.jhe = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.027409421.us, i64 0
  %i.jhf = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.027449420.us, i64 0
  br label %vector.body11565

vector.body11565:                                 ; preds = %vector.body11565, %vector.ph11563
  %index11566 = phi i64 [ 0, %vector.ph11563 ], [ %index.next11581, %vector.body11565 ] ; 3 uses
  %vec.phi11567 = phi <16 x i32> [ %i.jhe, %vector.ph11563 ], [ %i.jym, %vector.body11565 ]
  %vec.phi11568 = phi <16 x i32> [ zeroinitializer, %vector.ph11563 ], [ %i.jyn, %vector.body11565 ]
  %vec.phi11569 = phi <16 x i32> [ %i.jhf, %vector.ph11563 ], [ %i.jrw, %vector.body11565 ]
  %vec.phi11570 = phi <16 x i32> [ zeroinitializer, %vector.ph11563 ], [ %i.jrx, %vector.body11565 ]
  %i.jhg = shl i64 %index11566, 1                 ; 2 uses
  %next.gep11571 = getelementptr i8, ptr %.427369422.us, i64 %i.jhg
  %i.jhh = getelementptr i8, ptr %.427369422.us, i64 %i.jhg
  %next.gep11572 = getelementptr i8, ptr %i.jhh, i64 32
  %i.jhi = getelementptr inbounds nuw [4 x i8], ptr %i.jgq, i64 %index11566 ; 2 uses
  %i.jhj = getelementptr inbounds nuw i8, ptr %i.jhi, i64 64
  %wide.load11573 = load <16 x i32>, ptr %i.jhi, align 4, !tbaa !9
  %wide.load11574 = load <16 x i32>, ptr %i.jhj, align 4, !tbaa !9
  %i.jhk = sext <16 x i32> %wide.load11573 to <16 x i64> ; 16 uses
  %i.jhl = sext <16 x i32> %wide.load11574 to <16 x i64> ; 16 uses
  %i.jhm = extractelement <16 x i64> %i.jhk, i64 0 ; 2 uses
  %i.jhn = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jhm ; 2 uses
  %i.jho = extractelement <16 x i64> %i.jhk, i64 1 ; 2 uses
  %i.jhp = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jho ; 2 uses
  %i.jhq = extractelement <16 x i64> %i.jhk, i64 2 ; 2 uses
  %i.jhr = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jhq ; 2 uses
  %i.jhs = extractelement <16 x i64> %i.jhk, i64 3 ; 2 uses
  %i.jht = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jhs ; 2 uses
  %i.jhu = extractelement <16 x i64> %i.jhk, i64 4 ; 2 uses
  %i.jhv = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jhu ; 2 uses
  %i.jhw = extractelement <16 x i64> %i.jhk, i64 5 ; 2 uses
  %i.jhx = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jhw ; 2 uses
  %i.jhy = extractelement <16 x i64> %i.jhk, i64 6 ; 2 uses
  %i.jhz = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jhy ; 2 uses
  %i.jia = extractelement <16 x i64> %i.jhk, i64 7 ; 2 uses
  %i.jib = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jia ; 2 uses
  %i.jic = extractelement <16 x i64> %i.jhk, i64 8 ; 2 uses
  %i.jid = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jic ; 2 uses
  %i.jie = extractelement <16 x i64> %i.jhk, i64 9 ; 2 uses
  %i.jif = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jie ; 2 uses
  %i.jig = extractelement <16 x i64> %i.jhk, i64 10 ; 2 uses
  %i.jih = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jig ; 2 uses
  %i.jii = extractelement <16 x i64> %i.jhk, i64 11 ; 2 uses
  %i.jij = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jii ; 2 uses
  %i.jik = extractelement <16 x i64> %i.jhk, i64 12 ; 2 uses
  %i.jil = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jik ; 2 uses
  %i.jim = extractelement <16 x i64> %i.jhk, i64 13 ; 2 uses
  %i.jin = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jim ; 2 uses
  %i.jio = extractelement <16 x i64> %i.jhk, i64 14 ; 2 uses
  %i.jip = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jio ; 2 uses
  %i.jiq = extractelement <16 x i64> %i.jhk, i64 15 ; 2 uses
  %i.jir = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jiq ; 2 uses
  %i.jis = extractelement <16 x i64> %i.jhl, i64 0 ; 2 uses
  %i.jit = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jis ; 2 uses
  %i.jiu = extractelement <16 x i64> %i.jhl, i64 1 ; 2 uses
  %i.jiv = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jiu ; 2 uses
  %i.jiw = extractelement <16 x i64> %i.jhl, i64 2 ; 2 uses
  %i.jix = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jiw ; 2 uses
  %i.jiy = extractelement <16 x i64> %i.jhl, i64 3 ; 2 uses
  %i.jiz = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jiy ; 2 uses
  %i.jja = extractelement <16 x i64> %i.jhl, i64 4 ; 2 uses
  %i.jjb = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jja ; 2 uses
  %i.jjc = extractelement <16 x i64> %i.jhl, i64 5 ; 2 uses
  %i.jjd = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jjc ; 2 uses
  %i.jje = extractelement <16 x i64> %i.jhl, i64 6 ; 2 uses
  %i.jjf = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jje ; 2 uses
  %i.jjg = extractelement <16 x i64> %i.jhl, i64 7 ; 2 uses
  %i.jjh = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jjg ; 2 uses
  %i.jji = extractelement <16 x i64> %i.jhl, i64 8 ; 2 uses
  %i.jjj = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jji ; 2 uses
  %i.jjk = extractelement <16 x i64> %i.jhl, i64 9 ; 2 uses
  %i.jjl = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jjk ; 2 uses
  %i.jjm = extractelement <16 x i64> %i.jhl, i64 10 ; 2 uses
  %i.jjn = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jjm ; 2 uses
  %i.jjo = extractelement <16 x i64> %i.jhl, i64 11 ; 2 uses
  %i.jjp = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jjo ; 2 uses
  %i.jjq = extractelement <16 x i64> %i.jhl, i64 12 ; 2 uses
  %i.jjr = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jjq ; 2 uses
  %i.jjs = extractelement <16 x i64> %i.jhl, i64 13 ; 2 uses
  %i.jjt = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jjs ; 2 uses
  %i.jju = extractelement <16 x i64> %i.jhl, i64 14 ; 2 uses
  %i.jjv = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jju ; 2 uses
  %i.jjw = extractelement <16 x i64> %i.jhl, i64 15 ; 2 uses
  %i.jjx = getelementptr inbounds i8, ptr %gep9432.us, i64 %i.jjw ; 2 uses
  %i.jjy = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jhm ; 2 uses
  %i.jjz = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jho ; 2 uses
  %i.jka = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jhq ; 2 uses
  %i.jkb = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jhs ; 2 uses
  %i.jkc = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jhu ; 2 uses
  %i.jkd = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jhw ; 2 uses
  %i.jke = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jhy ; 2 uses
  %i.jkf = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jia ; 2 uses
  %i.jkg = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jic ; 2 uses
  %i.jkh = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jie ; 2 uses
  %i.jki = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jig ; 2 uses
  %i.jkj = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jii ; 2 uses
  %i.jkk = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jik ; 2 uses
  %i.jkl = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jim ; 2 uses
  %i.jkm = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jio ; 2 uses
  %i.jkn = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jiq ; 2 uses
  %i.jko = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jis ; 2 uses
  %i.jkp = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jiu ; 2 uses
  %i.jkq = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jiw ; 2 uses
  %i.jkr = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jiy ; 2 uses
  %i.jks = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jja ; 2 uses
  %i.jkt = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jjc ; 2 uses
  %i.jku = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jje ; 2 uses
  %i.jkv = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jjg ; 2 uses
  %i.jkw = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jji ; 2 uses
  %i.jkx = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jjk ; 2 uses
  %i.jky = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jjm ; 2 uses
  %i.jkz = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jjo ; 2 uses
  %i.jla = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jjq ; 2 uses
  %i.jlb = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jjs ; 2 uses
  %i.jlc = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jju ; 2 uses
  %i.jld = getelementptr inbounds i8, ptr %gep9437.us, i64 %i.jjw ; 2 uses
  %i.jle = load i8, ptr %i.jhn, align 1, !tbaa !44
  %i.jlf = load i8, ptr %i.jhp, align 1, !tbaa !44
  %i.jlg = load i8, ptr %i.jhr, align 1, !tbaa !44
  %i.jlh = load i8, ptr %i.jht, align 1, !tbaa !44
  %i.jli = load i8, ptr %i.jhv, align 1, !tbaa !44
  %i.jlj = load i8, ptr %i.jhx, align 1, !tbaa !44
  %i.jlk = load i8, ptr %i.jhz, align 1, !tbaa !44
  %i.jll = load i8, ptr %i.jib, align 1, !tbaa !44
  %i.jlm = load i8, ptr %i.jid, align 1, !tbaa !44
  %i.jln = load i8, ptr %i.jif, align 1, !tbaa !44
  %i.jlo = load i8, ptr %i.jih, align 1, !tbaa !44
  %i.jlp = load i8, ptr %i.jij, align 1, !tbaa !44
  %i.jlq = load i8, ptr %i.jil, align 1, !tbaa !44
  %i.jlr = load i8, ptr %i.jin, align 1, !tbaa !44
  %i.jls = load i8, ptr %i.jip, align 1, !tbaa !44
  %i.jlt = load i8, ptr %i.jir, align 1, !tbaa !44
  %i.jlu = insertelement <16 x i8> poison, i8 %i.jle, i64 0
  %i.jlv = insertelement <16 x i8> %i.jlu, i8 %i.jlf, i64 1
  %i.jlw = insertelement <16 x i8> %i.jlv, i8 %i.jlg, i64 2
  %i.jlx = insertelement <16 x i8> %i.jlw, i8 %i.jlh, i64 3
  %i.jly = insertelement <16 x i8> %i.jlx, i8 %i.jli, i64 4
  %i.jlz = insertelement <16 x i8> %i.jly, i8 %i.jlj, i64 5
  %i.jma = insertelement <16 x i8> %i.jlz, i8 %i.jlk, i64 6
  %i.jmb = insertelement <16 x i8> %i.jma, i8 %i.jll, i64 7
  %i.jmc = insertelement <16 x i8> %i.jmb, i8 %i.jlm, i64 8
  %i.jmd = insertelement <16 x i8> %i.jmc, i8 %i.jln, i64 9
  %i.jme = insertelement <16 x i8> %i.jmd, i8 %i.jlo, i64 10
  %i.jmf = insertelement <16 x i8> %i.jme, i8 %i.jlp, i64 11
  %i.jmg = insertelement <16 x i8> %i.jmf, i8 %i.jlq, i64 12
  %i.jmh = insertelement <16 x i8> %i.jmg, i8 %i.jlr, i64 13
  %i.jmi = insertelement <16 x i8> %i.jmh, i8 %i.jls, i64 14
  %i.jmj = insertelement <16 x i8> %i.jmi, i8 %i.jlt, i64 15
  %i.jmk = load i8, ptr %i.jit, align 1, !tbaa !44
  %i.jml = load i8, ptr %i.jiv, align 1, !tbaa !44
  %i.jmm = load i8, ptr %i.jix, align 1, !tbaa !44
  %i.jmn = load i8, ptr %i.jiz, align 1, !tbaa !44
  %i.jmo = load i8, ptr %i.jjb, align 1, !tbaa !44
  %i.jmp = load i8, ptr %i.jjd, align 1, !tbaa !44
  %i.jmq = load i8, ptr %i.jjf, align 1, !tbaa !44
  %i.jmr = load i8, ptr %i.jjh, align 1, !tbaa !44
  %i.jms = load i8, ptr %i.jjj, align 1, !tbaa !44
  %i.jmt = load i8, ptr %i.jjl, align 1, !tbaa !44
  %i.jmu = load i8, ptr %i.jjn, align 1, !tbaa !44
  %i.jmv = load i8, ptr %i.jjp, align 1, !tbaa !44
  %i.jmw = load i8, ptr %i.jjr, align 1, !tbaa !44
  %i.jmx = load i8, ptr %i.jjt, align 1, !tbaa !44
end_hunk_6
begin_hunk_7_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.lcp = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %.us-phi9481.us.in)
  br label %._crit_edge9495

._crit_edge9495:                                  ; preds = %.noexc3407.preheader, %._crit_edge9495.loopexit, %.noexc3409
  %i.lcq = phi i32 [ 0, %.noexc3409 ], [ %i.lcp, %._crit_edge9495.loopexit ], [ 0, %.noexc3407.preheader ]
  %.02514.lcssa = phi ptr [ %i.iuc, %.noexc3409 ], [ %scevgep10506, %._crit_edge9495.loopexit ], [ %i.iuc, %.noexc3407.preheader ] ; 2 uses
  %.02513.lcssa = phi i32 [ 0, %.noexc3409 ], [ %i.lco, %._crit_edge9495.loopexit ], [ %i.kxw, %.noexc3407.preheader ] ; 3 uses
  %i.lcr = or disjoint i32 %.02513.lcssa, 7
  %i.lcs = icmp slt i32 %i.lcr, %i.kxc
  br i1 %i.lcs, label %.noexc3405.lr.ph, label %._crit_edge9527

.noexc3405.lr.ph:                                 ; preds = %._crit_edge9495
  %i.lct = load i32, ptr %i.c, align 4, !tbaa !9  ; 3 uses
  %i.lcu = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !336
  %i.lcv = load ptr, ptr %0, align 8, !tbaa !32, !noalias !336
  %i.lcw = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !336
  %i.lcx = load i64, ptr %i.dny, align 8, !tbaa !36, !noalias !336 ; 2 uses
  %factor.op.mul9531 = mul i64 %i.lcw, %i.lcx
  %i.lcy = sext i32 %i.lcu to i64
  %i.lcz = load i32, ptr %i.b, align 4, !tbaa !9
  %i.lda = mul nsw i32 %i.lcz, %i.kxa
  %i.ldb = sext i32 %i.lda to i64
  %i.ldc = mul i64 %i.lcx, %i.lcy
  %i.ldd = mul i64 %i.ldc, %i.ldb
  %invariant.gep9533 = getelementptr i8, ptr %i.lcv, i64 %i.ldd
  %i.lde = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ldf = mul i32 %i.lct, %i.kxb
  %i.ldg = mul i32 %i.ldf, %i.lde
  %i.ldh = sext i32 %i.ldg to i64
  %invariant.gep9534 = getelementptr i8, ptr %invariant.gep9533, i64 %i.ldh
  %i.ldi = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.ldj = icmp sgt i32 %i.ldi, 0
  %i.ldk = load ptr, ptr %i.g, align 8            ; 6 uses
  %i.ldl = icmp eq i32 %i.lct, 8
  %i.ldm = add i32 %i.ldi, -1
  %i.ldn = zext i32 %i.ldm to i64
  %i.ldo = shl nuw nsw i64 %i.ldn, 3              ; 2 uses
  %wide.trip.count10529 = zext i32 %i.ldi to i64  ; 5 uses
  %i.ldp = add nsw i64 %wide.trip.count10529, -1  ; 2 uses
  %xtraiter12097 = and i64 %wide.trip.count10529, 1
  %i.ldq = icmp eq i64 %i.ldp, 0
  %unroll_iter12101 = and i64 %wide.trip.count10529, 2147483646
  %lcmp.mod12098.not = icmp eq i64 %xtraiter12097, 0
  %lcmp.mod12100 = trunc i32 %i.ldi to i1
  %xtraiter12103 = and i64 %wide.trip.count10529, 1
  %i.ldr = icmp eq i64 %i.ldp, 0
  %unroll_iter12107 = and i64 %wide.trip.count10529, 2147483646
  %lcmp.mod12104.not = icmp eq i64 %xtraiter12103, 0
  %lcmp.mod12106 = trunc i32 %i.ldi to i1
  br label %.noexc3405

.noexc3405:                                       ; preds = %.noexc3405.lr.ph, %._crit_edge9519
  %.19526 = phi i32 [ %.02513.lcssa, %.noexc3405.lr.ph ], [ %i.lfk, %._crit_edge9519 ] ; 2 uses
  %.225169525 = phi ptr [ %.02514.lcssa, %.noexc3405.lr.ph ], [ %.32517.lcssa, %._crit_edge9519 ] ; 7 uses
  %i.lds = phi <4 x i32> [ zeroinitializer, %.noexc3405.lr.ph ], [ %i.lfj, %._crit_edge9519 ] ; 5 uses
  %i.ldt = sdiv i32 %.19526, %i.lct
  %i.ldu = sext i32 %i.ldt to i64
  %.reass9532 = mul i64 %factor.op.mul9531, %i.ldu
  %gep9535 = getelementptr i8, ptr %invariant.gep9534, i64 %.reass9532 ; 6 uses
  br i1 %i.ldj, label %.lr.ph9518, label %._crit_edge9519

.lr.ph9518:                                       ; preds = %.noexc3405
  br i1 %i.ldl, label %.lr.ph9518.split.us.preheader, label %.lr.ph9518.split.preheader

.lr.ph9518.split.preheader:                       ; preds = %.lr.ph9518
  br i1 %i.ldq, label %.lr.ph9518.split.epil.preheader, label %.lr.ph9518.split

.lr.ph9518.split.us.preheader:                    ; preds = %.lr.ph9518
  br i1 %i.ldr, label %.lr.ph9518.split.us.epil.preheader, label %.lr.ph9518.split.us

.lr.ph9518.split.us:                              ; preds = %.lr.ph9518.split.us.preheader, %.lr.ph9518.split.us
  %indvars.iv10531 = phi i64 [ %indvars.iv.next10532.1, %.lr.ph9518.split.us ], [ 0, %.lr.ph9518.split.us.preheader ] ; 3 uses
  %.325179516.us = phi ptr [ %i.lep, %.lr.ph9518.split.us ], [ %.225169525, %.lr.ph9518.split.us.preheader ] ; 3 uses
  %.174229515.us = phi <4 x i32> [ %i.leo, %.lr.ph9518.split.us ], [ %i.lds, %.lr.ph9518.split.us.preheader ]
  %niter12108 = phi i64 [ %niter12108.next.1, %.lr.ph9518.split.us ], [ 0, %.lr.ph9518.split.us.preheader ]
  %i.ldv = getelementptr inbounds nuw [4 x i8], ptr %i.ldk, i64 %indvars.iv10531
  %i.ldw = load i32, ptr %i.ldv, align 4, !tbaa !9
  %i.ldx = sext i32 %i.ldw to i64
  %i.ldy = getelementptr inbounds i8, ptr %gep9535, i64 %i.ldx
  %i.ldz = load <8 x i8>, ptr %i.ldy, align 1, !tbaa !44
  %i.lea = sext <8 x i8> %i.ldz to <8 x i16>
  %i.leb = load <8 x i8>, ptr %.325179516.us, align 1, !tbaa !44
  %i.lec = sext <8 x i8> %i.leb to <8 x i16>
  %i.led = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174229515.us, <8 x i16> %i.lea, <8 x i16> %i.lec)
  %i.lee = getelementptr inbounds nuw i8, ptr %.325179516.us, i64 8
  %i.lef = getelementptr inbounds nuw [4 x i8], ptr %i.ldk, i64 %indvars.iv10531
  %i.leg = getelementptr inbounds nuw i8, ptr %i.lef, i64 4
  %i.leh = load i32, ptr %i.leg, align 4, !tbaa !9
  %i.lei = sext i32 %i.leh to i64
  %i.lej = getelementptr inbounds i8, ptr %gep9535, i64 %i.lei
  %i.lek = load <8 x i8>, ptr %i.lej, align 1, !tbaa !44
  %i.lel = sext <8 x i8> %i.lek to <8 x i16>
  %i.lem = load <8 x i8>, ptr %i.lee, align 1, !tbaa !44
  %i.len = sext <8 x i8> %i.lem to <8 x i16>
  %i.leo = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.led, <8 x i16> %i.lel, <8 x i16> %i.len) ; 3 uses
  %i.lep = getelementptr inbounds nuw i8, ptr %.325179516.us, i64 16 ; 2 uses
  %indvars.iv.next10532.1 = add nuw nsw i64 %indvars.iv10531, 2 ; 2 uses
  %niter12108.next.1 = add i64 %niter12108, 2     ; 2 uses
  %niter12108.ncmp.1 = icmp eq i64 %niter12108.next.1, %unroll_iter12107
  br i1 %niter12108.ncmp.1, label %._crit_edge9519.loopexit.unr-lcssa, label %.lr.ph9518.split.us, !llvm.loop !339

._crit_edge9519.loopexit.unr-lcssa:               ; preds = %.lr.ph9518.split.us
  br i1 %lcmp.mod12104.not, label %._crit_edge9519.loopexit, label %.lr.ph9518.split.us.epil.preheader

.lr.ph9518.split.us.epil.preheader:               ; preds = %._crit_edge9519.loopexit.unr-lcssa, %.lr.ph9518.split.us.preheader
  %indvars.iv10531.epil.init = phi i64 [ 0, %.lr.ph9518.split.us.preheader ], [ %indvars.iv.next10532.1, %._crit_edge9519.loopexit.unr-lcssa ]
  %.325179516.us.epil.init = phi ptr [ %.225169525, %.lr.ph9518.split.us.preheader ], [ %i.lep, %._crit_edge9519.loopexit.unr-lcssa ]
  %.174229515.us.epil.init = phi <4 x i32> [ %i.lds, %.lr.ph9518.split.us.preheader ], [ %i.leo, %._crit_edge9519.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12106)
  %i.leq = getelementptr inbounds nuw [4 x i8], ptr %i.ldk, i64 %indvars.iv10531.epil.init
  %i.ler = load i32, ptr %i.leq, align 4, !tbaa !9
  %i.les = sext i32 %i.ler to i64
  %i.let = getelementptr inbounds i8, ptr %gep9535, i64 %i.les
  %i.leu = load <8 x i8>, ptr %i.let, align 1, !tbaa !44
  %i.lev = sext <8 x i8> %i.leu to <8 x i16>
  %i.lew = load <8 x i8>, ptr %.325179516.us.epil.init, align 1, !tbaa !44
  %i.lex = sext <8 x i8> %i.lew to <8 x i16>
  %i.ley = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174229515.us.epil.init, <8 x i16> %i.lev, <8 x i16> %i.lex)
  br label %._crit_edge9519.loopexit

._crit_edge9519.loopexit:                         ; preds = %._crit_edge9519.loopexit.unr-lcssa, %.lr.ph9518.split.us.epil.preheader
  %.lcssa11691 = phi <4 x i32> [ %i.leo, %._crit_edge9519.loopexit.unr-lcssa ], [ %i.ley, %.lr.ph9518.split.us.epil.preheader ]
  %scevgep10533 = getelementptr i8, ptr %.225169525, i64 8
  %scevgep10534.a = getelementptr i8, ptr %scevgep10533, i64 %i.ldo
  br label %._crit_edge9519

._crit_edge9519.loopexit9580.unr-lcssa:           ; preds = %.lr.ph9518.split
  br i1 %lcmp.mod12098.not, label %._crit_edge9519.loopexit9580, label %.lr.ph9518.split.epil.preheader

.lr.ph9518.split.epil.preheader:                  ; preds = %._crit_edge9519.loopexit9580.unr-lcssa, %.lr.ph9518.split.preheader
  %indvars.iv10524.epil.init = phi i64 [ 0, %.lr.ph9518.split.preheader ], [ %indvars.iv.next10525.1, %._crit_edge9519.loopexit9580.unr-lcssa ]
  %.325179516.epil.init = phi ptr [ %.225169525, %.lr.ph9518.split.preheader ], [ %i.lgj, %._crit_edge9519.loopexit9580.unr-lcssa ]
  %.174229515.epil.init = phi <4 x i32> [ %i.lds, %.lr.ph9518.split.preheader ], [ %i.lgi, %._crit_edge9519.loopexit9580.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod12100)
  %i.lez = getelementptr inbounds nuw [4 x i8], ptr %i.ldk, i64 %indvars.iv10524.epil.init
  %i.lfa = load i32, ptr %i.lez, align 4, !tbaa !9
  %i.lfb = sext i32 %i.lfa to i64
  %i.lfc = getelementptr inbounds i8, ptr %gep9535, i64 %i.lfb
  %i.lfd = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.lfc, <8 x i32> %i.dof, <8 x i32> splat (i32 -1), i8 1)
  %i.lfe = trunc <8 x i32> %i.lfd to <8 x i8>
  %i.lff = sext <8 x i8> %i.lfe to <8 x i16>
  %i.lfg = load <8 x i8>, ptr %.325179516.epil.init, align 1, !tbaa !44
  %i.lfh = sext <8 x i8> %i.lfg to <8 x i16>
  %i.lfi = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174229515.epil.init, <8 x i16> %i.lff, <8 x i16> %i.lfh)
  br label %._crit_edge9519.loopexit9580

._crit_edge9519.loopexit9580:                     ; preds = %._crit_edge9519.loopexit9580.unr-lcssa, %.lr.ph9518.split.epil.preheader
  %.lcssa11690 = phi <4 x i32> [ %i.lgi, %._crit_edge9519.loopexit9580.unr-lcssa ], [ %i.lfi, %.lr.ph9518.split.epil.preheader ]
  %scevgep10526 = getelementptr i8, ptr %.225169525, i64 8
  %scevgep10527 = getelementptr i8, ptr %scevgep10526, i64 %i.ldo
  br label %._crit_edge9519

._crit_edge9519:                                  ; preds = %._crit_edge9519.loopexit9580, %._crit_edge9519.loopexit, %.noexc3405
  %i.lfj = phi <4 x i32> [ %i.lds, %.noexc3405 ], [ %.lcssa11691, %._crit_edge9519.loopexit ], [ %.lcssa11690, %._crit_edge9519.loopexit9580 ] ; 2 uses
  %.32517.lcssa = phi ptr [ %.225169525, %.noexc3405 ], [ %scevgep10534.a, %._crit_edge9519.loopexit ], [ %scevgep10527, %._crit_edge9519.loopexit9580 ] ; 2 uses
  %i.lfk = add nuw nsw i32 %.19526, 8             ; 3 uses
  %i.lfl = or disjoint i32 %i.lfk, 7
  %i.lfm = icmp slt i32 %i.lfl, %i.kxc
  br i1 %i.lfm, label %.noexc3405, label %._crit_edge9527.loopexit, !llvm.loop !340

.lr.ph9518.split:                                 ; preds = %.lr.ph9518.split.preheader, %.lr.ph9518.split
  %indvars.iv10524 = phi i64 [ %indvars.iv.next10525.1, %.lr.ph9518.split ], [ 0, %.lr.ph9518.split.preheader ] ; 3 uses
  %.325179516 = phi ptr [ %i.lgj, %.lr.ph9518.split ], [ %.225169525, %.lr.ph9518.split.preheader ] ; 3 uses
  %.174229515 = phi <4 x i32> [ %i.lgi, %.lr.ph9518.split ], [ %i.lds, %.lr.ph9518.split.preheader ]
  %niter12102 = phi i64 [ %niter12102.next.1, %.lr.ph9518.split ], [ 0, %.lr.ph9518.split.preheader ]
  %i.lfn = getelementptr inbounds nuw [4 x i8], ptr %i.ldk, i64 %indvars.iv10524
  %i.lfo = load i32, ptr %i.lfn, align 4, !tbaa !9
  %i.lfp = sext i32 %i.lfo to i64
  %i.lfq = getelementptr inbounds i8, ptr %gep9535, i64 %i.lfp
  %i.lfr = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.lfq, <8 x i32> %i.dof, <8 x i32> splat (i32 -1), i8 1)
  %i.lfs = trunc <8 x i32> %i.lfr to <8 x i8>
  %i.lft = sext <8 x i8> %i.lfs to <8 x i16>
  %i.lfu = load <8 x i8>, ptr %.325179516, align 1, !tbaa !44
  %i.lfv = sext <8 x i8> %i.lfu to <8 x i16>
  %i.lfw = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %.174229515, <8 x i16> %i.lft, <8 x i16> %i.lfv)
  %i.lfx = getelementptr inbounds nuw i8, ptr %.325179516, i64 8
  %i.lfy = getelementptr inbounds nuw [4 x i8], ptr %i.ldk, i64 %indvars.iv10524
  %i.lfz = getelementptr inbounds nuw i8, ptr %i.lfy, i64 4
  %i.lga = load i32, ptr %i.lfz, align 4, !tbaa !9
  %i.lgb = sext i32 %i.lga to i64
  %i.lgc = getelementptr inbounds i8, ptr %gep9535, i64 %i.lgb
  %i.lgd = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.lgc, <8 x i32> %i.dof, <8 x i32> splat (i32 -1), i8 1)
  %i.lge = trunc <8 x i32> %i.lgd to <8 x i8>
  %i.lgf = sext <8 x i8> %i.lge to <8 x i16>
  %i.lgg = load <8 x i8>, ptr %i.lfx, align 1, !tbaa !44
  %i.lgh = sext <8 x i8> %i.lgg to <8 x i16>
  %i.lgi = call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.lfw, <8 x i16> %i.lgf, <8 x i16> %i.lgh) ; 3 uses
  %i.lgj = getelementptr inbounds nuw i8, ptr %.325179516, i64 16 ; 2 uses
  %indvars.iv.next10525.1 = add nuw nsw i64 %indvars.iv10524, 2 ; 2 uses
  %niter12102.next.1 = add i64 %niter12102, 2     ; 2 uses
  %niter12102.ncmp.1 = icmp eq i64 %niter12102.next.1, %unroll_iter12101
  br i1 %niter12102.ncmp.1, label %._crit_edge9519.loopexit9580.unr-lcssa, label %.lr.ph9518.split, !llvm.loop !339

._crit_edge9527.loopexit:                         ; preds = %._crit_edge9519
  %i.lgk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.lfj)
  br label %._crit_edge9527

._crit_edge9527:                                  ; preds = %._crit_edge9527.loopexit, %._crit_edge9495
  %i.lgl = phi i32 [ 0, %._crit_edge9495 ], [ %i.lgk, %._crit_edge9527.loopexit ]
  %.22516.lcssa = phi ptr [ %.02514.lcssa, %._crit_edge9495 ], [ %.32517.lcssa, %._crit_edge9527.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.02513.lcssa, %._crit_edge9495 ], [ %i.lfk, %._crit_edge9527.loopexit ] ; 6 uses
  %i.lgm = add nsw i32 %i.lgl, %i.lcq             ; 3 uses
  %i.lgn = or disjoint i32 %.1.lcssa, 1
  %i.lgo = icmp slt i32 %i.lgn, %i.kxc
  br i1 %i.lgo, label %.noexc3403.lr.ph, label %.preheader

.noexc3403.lr.ph:                                 ; preds = %._crit_edge9527
  %i.lgp = load i32, ptr %i.j, align 4, !tbaa !10, !noalias !341
  %i.lgq = load ptr, ptr %0, align 8, !tbaa !32, !noalias !341
  %i.lgr = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !341
  %i.lgs = load i64, ptr %i.dny, align 8, !tbaa !36, !noalias !341 ; 2 uses
  %factor.op.mul9549 = mul i64 %i.lgr, %i.lgs
  %i.lgt = sext i32 %i.lgp to i64
  %i.lgu = load i32, ptr %i.b, align 4, !tbaa !9
  %i.lgv = mul nsw i32 %i.lgu, %i.kxa
  %i.lgw = sext i32 %i.lgv to i64
  %i.lgx = mul i64 %i.lgs, %i.lgt
  %i.lgy = mul i64 %i.lgx, %i.lgw
  %invariant.gep9551 = getelementptr i8, ptr %i.lgq, i64 %i.lgy
  %i.lgz = load i32, ptr %i.a, align 4, !tbaa !9
  %i.lha = mul nsw i32 %i.lgz, %i.kxb
  %i.lhb = sext i32 %i.lha to i64
  %invariant.gep9552 = getelementptr i8, ptr %invariant.gep9551, i64 %i.lhb
  %i.lhc = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.lhd = icmp sgt i32 %i.lhc, 0
  %i.lhe = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.lhd, label %.noexc3403.us.preheader, label %.noexc3403.preheader

.noexc3403.preheader:                             ; preds = %.noexc3403.lr.ph
  %i.lhf = add nuw i32 %.1.lcssa, 2
  %17 = add nuw i32 %.1.lcssa, 3
  %smax10538 = call i32 @llvm.smax.i32(i32 %i.kxc, i32 %17)
  %i.lhg = add nsw i32 %smax10538, -2
  %i.lhh = sub nsw i32 %i.lhg, %.1.lcssa
  %i.lhi = and i32 %i.lhh, -2
  %i.lhj = add i32 %i.lhf, %i.lhi
  br label %.preheader

.noexc3403.us.preheader:                          ; preds = %.noexc3403.lr.ph
  %i.lhk = add nsw i32 %i.lhc, -1
  %i.lhl = zext nneg i32 %i.lhk to i64
  %i.lhm = shl nuw nsw i64 %i.lhl, 1
  %i.lhn = zext nneg i32 %.1.lcssa to i64
  %wide.trip.count10544 = zext nneg i32 %i.lhc to i64 ; 6 uses
  %min.iters.check11471 = icmp ult i32 %i.lhc, 8
  %min.iters.check11473 = icmp ult i32 %i.lhc, 32
  %i.lho = and i64 %wide.trip.count10544, 24
  %n.vec11475 = and i64 %wide.trip.count10544, 2147483616 ; 5 uses
  %i.lhp = shl nuw nsw i64 %n.vec11475, 1
  %cmp.n11493 = icmp eq i64 %n.vec11475, %wide.trip.count10544
  %min.epilog.iters.check11499 = icmp eq i64 %i.lho, 0
  %n.vec11501 = and i64 %wide.trip.count10544, 2147483640 ; 4 uses
  %i.lhq = shl nuw nsw i64 %n.vec11501, 1
  %cmp.n11512 = icmp eq i64 %n.vec11501, %wide.trip.count10544
  br label %iter.check11496

iter.check11496:                                  ; preds = %.noexc3403.us.preheader, %._crit_edge9540.us
  %indvars.iv10546 = phi i64 [ %i.lhn, %.noexc3403.us.preheader ], [ %indvars.iv.next10547, %._crit_edge9540.us ] ; 2 uses
  %.49544.us = phi ptr [ %.22516.lcssa, %.noexc3403.us.preheader ], [ %scevgep10542, %._crit_edge9540.us ] ; 7 uses
  %.025189543.us = phi i32 [ %i.lgm, %.noexc3403.us.preheader ], [ %.lcssa10981, %._crit_edge9540.us ] ; 3 uses
  %.reass9550.us = mul i64 %factor.op.mul9549, %indvars.iv10546
  %gep9553.us = getelementptr i8, ptr %invariant.gep9552, i64 %.reass9550.us ; 41 uses
  br i1 %min.iters.check11471, label %vec.epilog.scalar.ph11497.preheader, label %vector.main.loop.iter.check11472

vector.main.loop.iter.check11472:                 ; preds = %iter.check11496
  br i1 %min.iters.check11473, label %vec.epilog.ph11500, label %vector.ph11474

vector.ph11474:                                   ; preds = %vector.main.loop.iter.check11472
  %i.lhr = getelementptr i8, ptr %.49544.us, i64 %i.lhp
  %i.lhs = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.025189543.us, i64 0
  br label %vector.body11476

vector.body11476:                                 ; preds = %vector.body11476, %vector.ph11474
  %index11477 = phi i64 [ 0, %vector.ph11474 ], [ %index.next11490, %vector.body11476 ] ; 3 uses
  %vec.phi11478 = phi <16 x i32> [ %i.lhs, %vector.ph11474 ], [ %i.lrd, %vector.body11476 ]
  %vec.phi11479 = phi <16 x i32> [ zeroinitializer, %vector.ph11474 ], [ %i.lre, %vector.body11476 ]
  %i.lht = shl i64 %index11477, 1                 ; 2 uses
  %next.gep11480 = getelementptr i8, ptr %.49544.us, i64 %i.lht
  %i.lhu = getelementptr i8, ptr %.49544.us, i64 %i.lht
  %next.gep11481 = getelementptr i8, ptr %i.lhu, i64 32
  %i.lhv = getelementptr inbounds nuw [4 x i8], ptr %i.lhe, i64 %index11477 ; 2 uses
  %i.lhw = getelementptr inbounds nuw i8, ptr %i.lhv, i64 64
  %wide.load11482 = load <16 x i32>, ptr %i.lhv, align 4, !tbaa !9
  %wide.load11483 = load <16 x i32>, ptr %i.lhw, align 4, !tbaa !9
  %i.lhx = sext <16 x i32> %wide.load11482 to <16 x i64> ; 16 uses
  %i.lhy = sext <16 x i32> %wide.load11483 to <16 x i64> ; 16 uses
  %i.lhz = extractelement <16 x i64> %i.lhx, i64 0
  %i.lia = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lhz ; 2 uses
  %i.lib = extractelement <16 x i64> %i.lhx, i64 1
  %i.lic = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lib ; 2 uses
  %i.lid = extractelement <16 x i64> %i.lhx, i64 2
  %i.lie = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lid ; 2 uses
  %i.lif = extractelement <16 x i64> %i.lhx, i64 3
  %i.lig = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lif ; 2 uses
  %i.lih = extractelement <16 x i64> %i.lhx, i64 4
  %i.lii = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lih ; 2 uses
  %i.lij = extractelement <16 x i64> %i.lhx, i64 5
  %i.lik = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lij ; 2 uses
  %i.lil = extractelement <16 x i64> %i.lhx, i64 6
  %i.lim = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lil ; 2 uses
  %i.lin = extractelement <16 x i64> %i.lhx, i64 7
  %i.lio = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lin ; 2 uses
  %i.lip = extractelement <16 x i64> %i.lhx, i64 8
  %i.liq = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lip ; 2 uses
  %i.lir = extractelement <16 x i64> %i.lhx, i64 9
  %i.lis = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lir ; 2 uses
  %i.lit = extractelement <16 x i64> %i.lhx, i64 10
  %i.liu = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lit ; 2 uses
  %i.liv = extractelement <16 x i64> %i.lhx, i64 11
  %i.liw = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.liv ; 2 uses
  %i.lix = extractelement <16 x i64> %i.lhx, i64 12
  %i.liy = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lix ; 2 uses
  %i.liz = extractelement <16 x i64> %i.lhx, i64 13
  %i.lja = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.liz ; 2 uses
  %i.ljb = extractelement <16 x i64> %i.lhx, i64 14
  %i.ljc = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljb ; 2 uses
  %i.ljd = extractelement <16 x i64> %i.lhx, i64 15
  %i.lje = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljd ; 2 uses
  %i.ljf = extractelement <16 x i64> %i.lhy, i64 0
  %i.ljg = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljf ; 2 uses
  %i.ljh = extractelement <16 x i64> %i.lhy, i64 1
  %i.lji = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljh ; 2 uses
  %i.ljj = extractelement <16 x i64> %i.lhy, i64 2
  %i.ljk = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljj ; 2 uses
  %i.ljl = extractelement <16 x i64> %i.lhy, i64 3
  %i.ljm = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljl ; 2 uses
  %i.ljn = extractelement <16 x i64> %i.lhy, i64 4
  %i.ljo = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljn ; 2 uses
  %i.ljp = extractelement <16 x i64> %i.lhy, i64 5
  %i.ljq = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljp ; 2 uses
  %i.ljr = extractelement <16 x i64> %i.lhy, i64 6
  %i.ljs = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljr ; 2 uses
  %i.ljt = extractelement <16 x i64> %i.lhy, i64 7
  %i.lju = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljt ; 2 uses
  %i.ljv = extractelement <16 x i64> %i.lhy, i64 8
  %i.ljw = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljv ; 2 uses
  %i.ljx = extractelement <16 x i64> %i.lhy, i64 9
  %i.ljy = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljx ; 2 uses
  %i.ljz = extractelement <16 x i64> %i.lhy, i64 10
  %i.lka = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.ljz ; 2 uses
  %i.lkb = extractelement <16 x i64> %i.lhy, i64 11
  %i.lkc = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lkb ; 2 uses
  %i.lkd = extractelement <16 x i64> %i.lhy, i64 12
  %i.lke = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lkd ; 2 uses
  %i.lkf = extractelement <16 x i64> %i.lhy, i64 13
  %i.lkg = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lkf ; 2 uses
  %i.lkh = extractelement <16 x i64> %i.lhy, i64 14
  %i.lki = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lkh ; 2 uses
  %i.lkj = extractelement <16 x i64> %i.lhy, i64 15
  %i.lkk = getelementptr inbounds i8, ptr %gep9553.us, i64 %i.lkj ; 2 uses
  %i.lkl = load i8, ptr %i.lia, align 1, !tbaa !44
  %i.lkm = load i8, ptr %i.lic, align 1, !tbaa !44
  %i.lkn = load i8, ptr %i.lie, align 1, !tbaa !44
  %i.lko = load i8, ptr %i.lig, align 1, !tbaa !44
  %i.lkp = load i8, ptr %i.lii, align 1, !tbaa !44
  %i.lkq = load i8, ptr %i.lik, align 1, !tbaa !44
  %i.lkr = load i8, ptr %i.lim, align 1, !tbaa !44
  %i.lks = load i8, ptr %i.lio, align 1, !tbaa !44
  %i.lkt = load i8, ptr %i.liq, align 1, !tbaa !44
  %i.lku = load i8, ptr %i.lis, align 1, !tbaa !44
  %i.lkv = load i8, ptr %i.liu, align 1, !tbaa !44
  %i.lkw = load i8, ptr %i.liw, align 1, !tbaa !44
  %i.lkx = load i8, ptr %i.liy, align 1, !tbaa !44
  %i.lky = load i8, ptr %i.lja, align 1, !tbaa !44
  %i.lkz = load i8, ptr %i.ljc, align 1, !tbaa !44
  %i.lla = load i8, ptr %i.lje, align 1, !tbaa !44
  %i.llb = insertelement <16 x i8> poison, i8 %i.lkl, i64 0
  %i.llc = insertelement <16 x i8> %i.llb, i8 %i.lkm, i64 1
  %i.lld = insertelement <16 x i8> %i.llc, i8 %i.lkn, i64 2
  %i.lle = insertelement <16 x i8> %i.lld, i8 %i.lko, i64 3
  %i.llf = insertelement <16 x i8> %i.lle, i8 %i.lkp, i64 4
  %i.llg = insertelement <16 x i8> %i.llf, i8 %i.lkq, i64 5
  %i.llh = insertelement <16 x i8> %i.llg, i8 %i.lkr, i64 6
  %i.lli = insertelement <16 x i8> %i.llh, i8 %i.lks, i64 7
  %i.llj = insertelement <16 x i8> %i.lli, i8 %i.lkt, i64 8
  %i.llk = insertelement <16 x i8> %i.llj, i8 %i.lku, i64 9
  %i.lll = insertelement <16 x i8> %i.llk, i8 %i.lkv, i64 10
  %i.llm = insertelement <16 x i8> %i.lll, i8 %i.lkw, i64 11
  %i.lln = insertelement <16 x i8> %i.llm, i8 %i.lkx, i64 12
  %i.llo = insertelement <16 x i8> %i.lln, i8 %i.lky, i64 13
  %i.llp = insertelement <16 x i8> %i.llo, i8 %i.lkz, i64 14
  %i.llq = insertelement <16 x i8> %i.llp, i8 %i.lla, i64 15
  %i.llr = load i8, ptr %i.ljg, align 1, !tbaa !44
  %i.lls = load i8, ptr %i.lji, align 1, !tbaa !44
  %i.llt = load i8, ptr %i.ljk, align 1, !tbaa !44
  %i.llu = load i8, ptr %i.ljm, align 1, !tbaa !44
  %i.llv = load i8, ptr %i.ljo, align 1, !tbaa !44
  %i.llw = load i8, ptr %i.ljq, align 1, !tbaa !44
  %i.llx = load i8, ptr %i.ljs, align 1, !tbaa !44
  %i.lly = load i8, ptr %i.lju, align 1, !tbaa !44
  %i.llz = load i8, ptr %i.ljw, align 1, !tbaa !44
  %i.lma = load i8, ptr %i.ljy, align 1, !tbaa !44
  %i.lmb = load i8, ptr %i.lka, align 1, !tbaa !44
  %i.lmc = load i8, ptr %i.lkc, align 1, !tbaa !44
  %i.lmd = load i8, ptr %i.lke, align 1, !tbaa !44
  %i.lme = load i8, ptr %i.lkg, align 1, !tbaa !44
  %i.lmf = load i8, ptr %i.lki, align 1, !tbaa !44
  %i.lmg = load i8, ptr %i.lkk, align 1, !tbaa !44
  %i.lmh = insertelement <16 x i8> poison, i8 %i.llr, i64 0
  %i.lmi = insertelement <16 x i8> %i.lmh, i8 %i.lls, i64 1
  %i.lmj = insertelement <16 x i8> %i.lmi, i8 %i.llt, i64 2
  %i.lmk = insertelement <16 x i8> %i.lmj, i8 %i.llu, i64 3
  %i.lml = insertelement <16 x i8> %i.lmk, i8 %i.llv, i64 4
  %i.lmm = insertelement <16 x i8> %i.lml, i8 %i.llw, i64 5
  %i.lmn = insertelement <16 x i8> %i.lmm, i8 %i.llx, i64 6
  %i.lmo = insertelement <16 x i8> %i.lmn, i8 %i.lly, i64 7
  %i.lmp = insertelement <16 x i8> %i.lmo, i8 %i.llz, i64 8
  %i.lmq = insertelement <16 x i8> %i.lmp, i8 %i.lma, i64 9
  %i.lmr = insertelement <16 x i8> %i.lmq, i8 %i.lmb, i64 10
  %i.lms = insertelement <16 x i8> %i.lmr, i8 %i.lmc, i64 11
  %i.lmt = insertelement <16 x i8> %i.lms, i8 %i.lmd, i64 12
  %i.lmu = insertelement <16 x i8> %i.lmt, i8 %i.lme, i64 13
  %i.lmv = insertelement <16 x i8> %i.lmu, i8 %i.lmf, i64 14
  %i.lmw = insertelement <16 x i8> %i.lmv, i8 %i.lmg, i64 15
  %i.lmx = sext <16 x i8> %i.llq to <16 x i32>
  %i.lmy = sext <16 x i8> %i.lmw to <16 x i32>
  %wide.vec11484 = load <32 x i8>, ptr %next.gep11480, align 1, !tbaa !44 ; 2 uses
  %strided.vec11485 = shufflevector <32 x i8> %wide.vec11484, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec11486 = shufflevector <32 x i8> %wide.vec11484, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec11487 = load <32 x i8>, ptr %next.gep11481, align 1, !tbaa !44 ; 2 uses
  %strided.vec11488 = shufflevector <32 x i8> %wide.vec11487, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec11489 = shufflevector <32 x i8> %wide.vec11487, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.lmz = sext <16 x i8> %strided.vec11485 to <16 x i32>
  %i.lna = sext <16 x i8> %strided.vec11488 to <16 x i32>
  %i.lnb = mul nsw <16 x i32> %i.lmz, %i.lmx
  %i.lnc = mul nsw <16 x i32> %i.lna, %i.lmy
  %i.lnd = add <16 x i32> %i.lnb, %vec.phi11478
  %i.lne = add <16 x i32> %i.lnc, %vec.phi11479
  %i.lnf = getelementptr inbounds nuw i8, ptr %i.lia, i64 %i.t
  %i.lng = getelementptr inbounds nuw i8, ptr %i.lic, i64 %i.t
  %i.lnh = getelementptr inbounds nuw i8, ptr %i.lie, i64 %i.t
  %i.lni = getelementptr inbounds nuw i8, ptr %i.lig, i64 %i.t
  %i.lnj = getelementptr inbounds nuw i8, ptr %i.lii, i64 %i.t
end_hunk_7
begin_hunk_8_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.aew = mul i32 %i.aev, %i.aeu
  %i.aex = sext i32 %i.aew to i64
  %invariant.gep2430 = getelementptr i8, ptr %invariant.gep2429, i64 %i.aex
  %i.aey = mul nsw i32 %i.aep, %i.acv
  %i.aez = sext i32 %i.aey to i64
  %i.afa = mul i64 %i.aes, %i.aez
  %invariant.gep2434 = getelementptr i8, ptr %i.ael, i64 %i.afa
  %i.afb = mul i32 %i.aej, %i.acx
  %i.afc = mul i32 %i.afb, %i.aeu
  %i.afd = sext i32 %i.afc to i64
  %invariant.gep2435 = getelementptr i8, ptr %invariant.gep2434, i64 %i.afd
  %i.afe = load i32, ptr %11, align 4, !tbaa !9   ; 4 uses
  %i.aff = icmp sgt i32 %i.afe, 0
  %i.afg = add i32 %i.afe, -1
  %i.afh = zext i32 %i.afg to i64
  %i.afi = shl nuw nsw i64 %i.afh, 7              ; 2 uses
  %i.afj = icmp eq i32 %i.aej, 8
  %wide.trip.count2724 = zext nneg i32 %i.afe to i64
  %wide.trip.count2731 = zext nneg i32 %i.afe to i64
  br label %.noexc849

.noexc853:                                        ; preds = %.noexc853.lr.ph, %._crit_edge2381
  %.07422388 = phi i32 [ 0, %.noexc853.lr.ph ], [ %i.afr, %._crit_edge2381 ] ; 2 uses
  %.07462387 = phi ptr [ %i.add, %.noexc853.lr.ph ], [ %.1747.lcssa, %._crit_edge2381 ] ; 3 uses
  %i.afk = phi <16 x i32> [ zeroinitializer, %.noexc853.lr.ph ], [ %.lcssa2180, %._crit_edge2381 ] ; 2 uses
  %i.afl = phi <16 x i32> [ zeroinitializer, %.noexc853.lr.ph ], [ %.lcssa2181, %._crit_edge2381 ] ; 2 uses
  %i.afm = phi <16 x i32> [ zeroinitializer, %.noexc853.lr.ph ], [ %.lcssa2182, %._crit_edge2381 ] ; 2 uses
  %i.afn = phi <16 x i32> [ zeroinitializer, %.noexc853.lr.ph ], [ %.lcssa2183, %._crit_edge2381 ] ; 2 uses
  %i.afo = sdiv i32 %.07422388, %i.adg
  %i.afp = sext i32 %i.afo to i64
  %.reass2396 = mul i64 %factor.op.mul2395, %i.afp ; 2 uses
  %gep2399 = getelementptr i8, ptr %invariant.gep2398, i64 %.reass2396
  %gep2404 = getelementptr i8, ptr %invariant.gep2403, i64 %.reass2396
  br i1 %i.aec, label %.lr.ph2380, label %._crit_edge2381

.lr.ph2380:                                       ; preds = %.noexc853
  %i.afq = load ptr, ptr %12, align 8, !tbaa !20
  br label %bb.r

._crit_edge2381.loopexit:                         ; preds = %bb.v
  %scevgep2714 = getelementptr i8, ptr %.07462387, i64 256
  %scevgep2715 = getelementptr i8, ptr %scevgep2714, i64 %i.aef
  br label %._crit_edge2381

._crit_edge2381:                                  ; preds = %._crit_edge2381.loopexit, %.noexc853
  %.lcssa2183 = phi <16 x i32> [ %i.afn, %.noexc853 ], [ %i.aju, %._crit_edge2381.loopexit ] ; 2 uses
  %.lcssa2182 = phi <16 x i32> [ %i.afm, %.noexc853 ], [ %i.ajx, %._crit_edge2381.loopexit ] ; 2 uses
  %.lcssa2181 = phi <16 x i32> [ %i.afl, %.noexc853 ], [ %i.aka, %._crit_edge2381.loopexit ] ; 2 uses
  %.lcssa2180 = phi <16 x i32> [ %i.afk, %.noexc853 ], [ %i.akd, %._crit_edge2381.loopexit ] ; 2 uses
  %.1747.lcssa = phi ptr [ %.07462387, %.noexc853 ], [ %scevgep2715, %._crit_edge2381.loopexit ] ; 2 uses
  %i.afr = add nuw nsw i32 %.07422388, 16         ; 2 uses
  %i.afs = or disjoint i32 %i.afr, 15
  %i.aft = icmp slt i32 %i.afs, %i.ade
  br i1 %i.aft, label %.noexc853, label %.preheader2142.loopexit, !llvm.loop !394

bb.r:                                             ; preds = %.lr.ph2380, %bb.v
  %indvars.iv2712 = phi i64 [ 0, %.lr.ph2380 ], [ %indvars.iv.next2713, %bb.v ] ; 2 uses
  %.17472378 = phi ptr [ %.07462387, %.lr.ph2380 ], [ %i.ake, %bb.v ] ; 5 uses
  %i.afu = phi <16 x i32> [ %i.afk, %.lr.ph2380 ], [ %i.akd, %bb.v ]
  %i.afv = phi <16 x i32> [ %i.afl, %.lr.ph2380 ], [ %i.aka, %bb.v ]
  %i.afw = phi <16 x i32> [ %i.afm, %.lr.ph2380 ], [ %i.ajx, %bb.v ]
  %i.afx = phi <16 x i32> [ %i.afn, %.lr.ph2380 ], [ %i.aju, %bb.v ]
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afq, i64 %indvars.iv2712
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !9
  %i.aga = sext i32 %i.afz to i64                 ; 2 uses
  %i.agb = getelementptr inbounds i8, ptr %gep2399, i64 %i.aga ; 4 uses
  %i.agc = getelementptr inbounds i8, ptr %gep2404, i64 %i.aga ; 4 uses
  switch i32 %i.adg, label %bb.u [
    i32 16, label %bb.s
    i32 8, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.agd = load <2 x i64>, ptr %i.agb, align 16, !tbaa !44
  %i.age = load <2 x i64>, ptr %i.agc, align 16, !tbaa !44
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.agf = load i64, ptr %i.agb, align 1, !tbaa !44
  %i.agg = insertelement <2 x i64> poison, i64 %i.agf, i64 0
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agb, i64 %i.aa
  %i.agi = load i64, ptr %i.agh, align 1, !tbaa !44
  %i.agj = load i64, ptr %i.agc, align 1, !tbaa !44
  %i.agk = insertelement <2 x i64> poison, i64 %i.agj, i64 0
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agc, i64 %i.aa
  %i.agm = load i64, ptr %i.agl, align 1, !tbaa !44
  %i.agn = insertelement <2 x i64> %i.agg, i64 %i.agi, i64 1
  %i.ago = insertelement <2 x i64> %i.agk, i64 %i.agm, i64 1
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.agp = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.agb, <16 x i32> %i.bf, <16 x i1> splat (i1 true), i32 1)
  %i.agq = trunc <16 x i32> %i.agp to <16 x i8>
  %i.agr = bitcast <16 x i8> %i.agq to <2 x i64>
  %i.ags = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.agc, <16 x i32> %i.bf, <16 x i1> splat (i1 true), i32 1)
  %i.agt = trunc <16 x i32> %i.ags to <16 x i8>
  %i.agu = bitcast <16 x i8> %i.agt to <2 x i64>
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0740 = phi <2 x i64> [ %i.agd, %bb.s ], [ %i.agn, %bb.t ], [ %i.agr, %bb.u ]
  %.0739 = phi <2 x i64> [ %i.age, %bb.s ], [ %i.ago, %bb.t ], [ %i.agu, %bb.u ]
  %i.agv = bitcast <2 x i64> %.0740 to <16 x i8>
  %i.agw = sext <16 x i8> %i.agv to <16 x i16>    ; 2 uses
  %i.agx = bitcast <2 x i64> %.0739 to <16 x i8>
  %i.agy = sext <16 x i8> %i.agx to <16 x i16>    ; 2 uses
  %i.agz = load <8 x i64>, ptr %.17472378, align 64, !tbaa !44 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %.17472378, i64 64
  %i.ahb = load <8 x i64>, ptr %i.aha, align 64, !tbaa !44 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.17472378, i64 128
  %i.ahd = load <8 x i64>, ptr %i.ahc, align 64, !tbaa !44 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.17472378, i64 192
  %i.ahf = load <8 x i64>, ptr %i.ahe, align 64, !tbaa !44 ; 2 uses
  %i.ahg = bitcast <8 x i64> %i.agz to <64 x i8>
  %i.ahh = shufflevector <64 x i8> %i.ahg, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ahi = sext <32 x i8> %i.ahh to <32 x i16>    ; 2 uses
  %i.ahj = bitcast <8 x i64> %i.agz to <64 x i8>
  %i.ahk = shufflevector <64 x i8> %i.ahj, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ahl = sext <32 x i8> %i.ahk to <32 x i16>    ; 2 uses
  %i.ahm = bitcast <8 x i64> %i.ahb to <64 x i8>
  %i.ahn = shufflevector <64 x i8> %i.ahm, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aho = sext <32 x i8> %i.ahn to <32 x i16>    ; 2 uses
  %i.ahp = bitcast <8 x i64> %i.ahb to <64 x i8>
  %i.ahq = shufflevector <64 x i8> %i.ahp, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ahr = sext <32 x i8> %i.ahq to <32 x i16>    ; 2 uses
  %i.ahs = bitcast <8 x i64> %i.ahd to <64 x i8>
  %i.aht = shufflevector <64 x i8> %i.ahs, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ahu = sext <32 x i8> %i.aht to <32 x i16>    ; 2 uses
  %i.ahv = bitcast <8 x i64> %i.ahd to <64 x i8>
  %i.ahw = shufflevector <64 x i8> %i.ahv, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ahx = sext <32 x i8> %i.ahw to <32 x i16>    ; 2 uses
  %i.ahy = bitcast <8 x i64> %i.ahf to <64 x i8>
  %i.ahz = shufflevector <64 x i8> %i.ahy, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aia = sext <32 x i8> %i.ahz to <32 x i16>    ; 2 uses
  %i.aib = bitcast <8 x i64> %i.ahf to <64 x i8>
  %i.aic = shufflevector <64 x i8> %i.aib, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aid = sext <32 x i8> %i.aic to <32 x i16>    ; 2 uses
  %i.aie = bitcast <16 x i16> %i.agw to <8 x i32> ; 4 uses
  %i.aif = bitcast <16 x i16> %i.agw to <8 x i32> ; 4 uses
  %i.aig = bitcast <16 x i16> %i.agy to <8 x i32> ; 4 uses
  %i.aih = bitcast <16 x i16> %i.agy to <8 x i32> ; 4 uses
  %i.aii = shufflevector <8 x i32> %i.aie, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.aij = bitcast <16 x i32> %i.aii to <32 x i16>
  %i.aik = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.afx, <32 x i16> %i.aij, <32 x i16> %i.ahi)
  %i.ail = shufflevector <8 x i32> %i.aig, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.aim = bitcast <16 x i32> %i.ail to <32 x i16>
  %i.ain = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.afw, <32 x i16> %i.aim, <32 x i16> %i.ahi)
  %i.aio = shufflevector <8 x i32> %i.aie, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aip = bitcast <16 x i32> %i.aio to <32 x i16>
  %i.aiq = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.afv, <32 x i16> %i.aip, <32 x i16> %i.ahl)
  %i.air = shufflevector <8 x i32> %i.aig, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ais = bitcast <16 x i32> %i.air to <32 x i16>
  %i.ait = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.afu, <32 x i16> %i.ais, <32 x i16> %i.ahl)
  %i.aiu = shufflevector <8 x i32> %i.aie, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.aiv = bitcast <16 x i32> %i.aiu to <32 x i16>
  %i.aiw = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aik, <32 x i16> %i.aiv, <32 x i16> %i.aho)
  %i.aix = shufflevector <8 x i32> %i.aig, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.aiy = bitcast <16 x i32> %i.aix to <32 x i16>
  %i.aiz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ain, <32 x i16> %i.aiy, <32 x i16> %i.aho)
  %i.aja = shufflevector <8 x i32> %i.aie, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ajb = bitcast <16 x i32> %i.aja to <32 x i16>
  %i.ajc = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aiq, <32 x i16> %i.ajb, <32 x i16> %i.ahr)
  %i.ajd = shufflevector <8 x i32> %i.aig, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.aje = bitcast <16 x i32> %i.ajd to <32 x i16>
  %i.ajf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ait, <32 x i16> %i.aje, <32 x i16> %i.ahr)
  %i.ajg = shufflevector <8 x i32> %i.aif, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ajh = bitcast <16 x i32> %i.ajg to <32 x i16>
  %i.aji = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aiw, <32 x i16> %i.ajh, <32 x i16> %i.ahu)
  %i.ajj = shufflevector <8 x i32> %i.aih, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ajk = bitcast <16 x i32> %i.ajj to <32 x i16>
  %i.ajl = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aiz, <32 x i16> %i.ajk, <32 x i16> %i.ahu)
  %i.ajm = shufflevector <8 x i32> %i.aif, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.ajn = bitcast <16 x i32> %i.ajm to <32 x i16>
  %i.ajo = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajc, <32 x i16> %i.ajn, <32 x i16> %i.ahx)
  %i.ajp = shufflevector <8 x i32> %i.aih, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.ajq = bitcast <16 x i32> %i.ajp to <32 x i16>
  %i.ajr = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajf, <32 x i16> %i.ajq, <32 x i16> %i.ahx)
  %i.ajs = shufflevector <8 x i32> %i.aif, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.ajt = bitcast <16 x i32> %i.ajs to <32 x i16>
  %i.aju = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aji, <32 x i16> %i.ajt, <32 x i16> %i.aia) ; 2 uses
  %i.ajv = shufflevector <8 x i32> %i.aih, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.ajw = bitcast <16 x i32> %i.ajv to <32 x i16>
  %i.ajx = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajl, <32 x i16> %i.ajw, <32 x i16> %i.aia) ; 2 uses
  %i.ajy = shufflevector <8 x i32> %i.aif, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.ajz = bitcast <16 x i32> %i.ajy to <32 x i16>
  %i.aka = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajo, <32 x i16> %i.ajz, <32 x i16> %i.aid) ; 2 uses
  %i.akb = shufflevector <8 x i32> %i.aih, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.akc = bitcast <16 x i32> %i.akb to <32 x i16>
  %i.akd = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ajr, <32 x i16> %i.akc, <32 x i16> %i.aid) ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.17472378, i64 256
  %indvars.iv.next2713 = add nuw nsw i64 %indvars.iv2712, 1 ; 2 uses
  %exitcond2718.not = icmp eq i64 %indvars.iv.next2713, %wide.trip.count2717
  br i1 %exitcond2718.not, label %._crit_edge2381.loopexit, label %bb.r, !llvm.loop !395

.preheader2141:                                   ; preds = %._crit_edge2408, %.preheader2142
  %.lcssa2195 = phi <16 x i32> [ %.lcssa2187, %.preheader2142 ], [ %.lcssa2191, %._crit_edge2408 ] ; 3 uses
  %.lcssa2194 = phi <16 x i32> [ %.lcssa2186, %.preheader2142 ], [ %.lcssa2190, %._crit_edge2408 ] ; 3 uses
  %.lcssa2193 = phi <16 x i32> [ %.lcssa2185, %.preheader2142 ], [ %.lcssa2189, %._crit_edge2408 ]
  %.lcssa2192 = phi <16 x i32> [ %.lcssa2184, %.preheader2142 ], [ %.lcssa2188, %._crit_edge2408 ]
  %.2748.lcssa = phi ptr [ %.0746.lcssa, %.preheader2142 ], [ %.3749.lcssa, %._crit_edge2408 ] ; 3 uses
  %.1743.lcssa = phi i32 [ %.0742.lcssa, %.preheader2142 ], [ %i.aos, %._crit_edge2408 ] ; 6 uses
  %i.akf = or disjoint i32 %.1743.lcssa, 1
  %i.akg = icmp slt i32 %i.akf, %i.ade
  br i1 %i.akg, label %.noexc845.lr.ph, label %.preheader2140

.noexc845.lr.ph:                                  ; preds = %.preheader2141
  %i.akh = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !396
  %i.aki = load ptr, ptr %4, align 8, !tbaa !32, !noalias !396 ; 2 uses
  %i.akj = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !396
  %i.akk = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !396 ; 2 uses
  %factor.op.mul2450 = mul i64 %i.akj, %i.akk
  %i.akl = sext i32 %i.akh to i64
  %i.akm = load i32, ptr %9, align 4, !tbaa !9    ; 2 uses
  %i.akn = mul nsw i32 %i.akm, %i.acu
  %i.ako = sext i32 %i.akn to i64
  %i.akp = mul i64 %i.akk, %i.akl                 ; 2 uses
  %i.akq = mul i64 %i.akp, %i.ako
  %invariant.gep2452 = getelementptr i8, ptr %i.aki, i64 %i.akq
  %i.akr = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.aks = mul nsw i32 %i.akr, %i.acw
  %i.akt = sext i32 %i.aks to i64
  %invariant.gep2453 = getelementptr i8, ptr %invariant.gep2452, i64 %i.akt
  %i.aku = mul nsw i32 %i.akm, %i.acv
  %i.akv = sext i32 %i.aku to i64
  %i.akw = mul i64 %i.akp, %i.akv
  %invariant.gep2457 = getelementptr i8, ptr %i.aki, i64 %i.akw
  %i.akx = mul nsw i32 %i.akr, %i.acx
  %i.aky = sext i32 %i.akx to i64
  %invariant.gep2458 = getelementptr i8, ptr %invariant.gep2457, i64 %i.aky
  %i.akz = load i32, ptr %11, align 4, !tbaa !9   ; 3 uses
  %i.ala = icmp sgt i32 %i.akz, 0
  br i1 %i.ala, label %.noexc845.lr.ph.split.us, label %.noexc845.preheader

.noexc845.preheader:                              ; preds = %.noexc845.lr.ph
  %i.alb = add nuw i32 %.1743.lcssa, 2
  %13 = add nuw i32 %.1743.lcssa, 3
  %smax = call i32 @llvm.smax.i32(i32 %i.ade, i32 %13)
  %i.alc = add nsw i32 %smax, -2
  %i.ald = sub nsw i32 %i.alc, %.1743.lcssa
  %i.ale = and i32 %i.ald, -2
  %i.alf = add i32 %i.alb, %i.ale
  br label %.preheader2140

.noexc845.lr.ph.split.us:                         ; preds = %.noexc845.lr.ph
  %i.alg = load ptr, ptr %12, align 8, !tbaa !20
  %i.alh = add nsw i32 %i.akz, -1
  %i.ali = zext nneg i32 %i.alh to i64
  %i.alj = shl nuw nsw i64 %i.ali, 5
  %i.alk = zext nneg i32 %.1743.lcssa to i64
  %wide.trip.count2738 = zext nneg i32 %i.akz to i64
  br label %.noexc845.us

.noexc845.us:                                     ; preds = %._crit_edge2440.us, %.noexc845.lr.ph.split.us
  %indvars.iv2740 = phi i64 [ %indvars.iv.next2741, %._crit_edge2440.us ], [ %i.alk, %.noexc845.lr.ph.split.us ] ; 2 uses
  %.47502444.us = phi ptr [ %scevgep2736, %._crit_edge2440.us ], [ %.2748.lcssa, %.noexc845.lr.ph.split.us ] ; 2 uses
  %i.all = phi <16 x i32> [ %i.amn, %._crit_edge2440.us ], [ %.lcssa2194, %.noexc845.lr.ph.split.us ]
  %i.alm = phi <16 x i32> [ %i.aml, %._crit_edge2440.us ], [ %.lcssa2195, %.noexc845.lr.ph.split.us ]
  %.reass2451.us = mul i64 %factor.op.mul2450, %indvars.iv2740 ; 2 uses
  %gep2454.us = getelementptr i8, ptr %invariant.gep2453, i64 %.reass2451.us
  %gep2459.us = getelementptr i8, ptr %invariant.gep2458, i64 %.reass2451.us
  br label %bb.w

bb.w:                                             ; preds = %.noexc845.us, %bb.w
  %indvars.iv2733 = phi i64 [ 0, %.noexc845.us ], [ %indvars.iv.next2734, %bb.w ] ; 2 uses
  %.57512437.us = phi ptr [ %.47502444.us, %.noexc845.us ], [ %i.amo, %bb.w ] ; 2 uses
  %i.aln = phi <16 x i32> [ %i.all, %.noexc845.us ], [ %i.amn, %bb.w ]
  %i.alo = phi <16 x i32> [ %i.alm, %.noexc845.us ], [ %i.aml, %bb.w ]
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %indvars.iv2733
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !9
  %i.alr = sext i32 %i.alq to i64                 ; 2 uses
  %i.als = getelementptr inbounds i8, ptr %gep2454.us, i64 %i.alr ; 2 uses
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !44
  %i.alu = sext i8 %i.alt to i16
  %i.alv = getelementptr inbounds nuw i8, ptr %i.als, i64 %i.aa
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !44
  %i.alx = sext i8 %i.alw to i16
  %i.aly = insertelement <8 x i16> poison, i16 %i.alu, i64 0
  %i.alz = insertelement <8 x i16> %i.aly, i16 %i.alx, i64 1
  %i.ama = getelementptr inbounds i8, ptr %gep2459.us, i64 %i.alr ; 2 uses
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !44
  %i.amc = sext i8 %i.amb to i16
  %i.amd = getelementptr inbounds nuw i8, ptr %i.ama, i64 %i.aa
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !44
  %i.amf = sext i8 %i.ame to i16
  %i.amg = insertelement <8 x i16> poison, i16 %i.amc, i64 0
  %i.amh = insertelement <8 x i16> %i.amg, i16 %i.amf, i64 1
  %i.ami = load <32 x i8>, ptr %.57512437.us, align 32, !tbaa !44
  %i.amj = sext <32 x i8> %i.ami to <32 x i16>    ; 2 uses
  %i.amk = shufflevector <8 x i16> %i.alz, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aml = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.alo, <32 x i16> %i.amk, <32 x i16> %i.amj) ; 3 uses
  %i.amm = shufflevector <8 x i16> %i.amh, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.amn = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aln, <32 x i16> %i.amm, <32 x i16> %i.amj) ; 3 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.57512437.us, i64 32
  %indvars.iv.next2734 = add nuw nsw i64 %indvars.iv2733, 1 ; 2 uses
  %exitcond2739.not = icmp eq i64 %indvars.iv.next2734, %wide.trip.count2738
  br i1 %exitcond2739.not, label %._crit_edge2440.us, label %bb.w, !llvm.loop !399

._crit_edge2440.us:                               ; preds = %bb.w
  %scevgep2735 = getelementptr i8, ptr %.47502444.us, i64 32
  %scevgep2736 = getelementptr i8, ptr %scevgep2735, i64 %i.alj ; 2 uses
  %indvars.iv.next2741 = add nuw nsw i64 %indvars.iv2740, 2 ; 3 uses
  %i.amp = trunc i64 %indvars.iv.next2741 to i32
  %i.amq = or i32 %i.amp, 1
  %i.amr = icmp slt i32 %i.amq, %i.ade
  br i1 %i.amr, label %.noexc845.us, label %.preheader2140.loopexit, !llvm.loop !400

.noexc849:                                        ; preds = %.noexc849.lr.ph, %._crit_edge2408
  %.17432420 = phi i32 [ %.0742.lcssa, %.noexc849.lr.ph ], [ %i.aos, %._crit_edge2408 ] ; 2 uses
  %.27482419 = phi ptr [ %.0746.lcssa, %.noexc849.lr.ph ], [ %.3749.lcssa, %._crit_edge2408 ] ; 5 uses
  %i.ams = phi <16 x i32> [ %.lcssa2184, %.noexc849.lr.ph ], [ %.lcssa2188, %._crit_edge2408 ] ; 3 uses
  %i.amt = phi <16 x i32> [ %.lcssa2185, %.noexc849.lr.ph ], [ %.lcssa2189, %._crit_edge2408 ] ; 3 uses
  %i.amu = phi <16 x i32> [ %.lcssa2186, %.noexc849.lr.ph ], [ %.lcssa2190, %._crit_edge2408 ] ; 3 uses
  %i.amv = phi <16 x i32> [ %.lcssa2187, %.noexc849.lr.ph ], [ %.lcssa2191, %._crit_edge2408 ] ; 3 uses
  %i.amw = sdiv i32 %.17432420, %i.aej
  %i.amx = sext i32 %i.amw to i64
  %.reass2428 = mul i64 %factor.op.mul2427, %i.amx ; 2 uses
  %gep2431 = getelementptr i8, ptr %invariant.gep2430, i64 %.reass2428 ; 2 uses
  %gep2436 = getelementptr i8, ptr %invariant.gep2435, i64 %.reass2428 ; 2 uses
  br i1 %i.aff, label %.lr.ph2407, label %._crit_edge2408

.lr.ph2407:                                       ; preds = %.noexc849
  %i.amy = load ptr, ptr %12, align 8, !tbaa !20  ; 2 uses
  br i1 %i.afj, label %.lr.ph2407.split.us, label %.lr.ph2407.split

.lr.ph2407.split.us:                              ; preds = %.lr.ph2407, %.lr.ph2407.split.us
  %indvars.iv2726 = phi i64 [ %indvars.iv.next2727, %.lr.ph2407.split.us ], [ 0, %.lr.ph2407 ] ; 2 uses
  %.37492405.us = phi ptr [ %i.aor, %.lr.ph2407.split.us ], [ %.27482419, %.lr.ph2407 ] ; 3 uses
  %i.amz = phi <16 x i32> [ %i.aoq, %.lr.ph2407.split.us ], [ %i.ams, %.lr.ph2407 ]
  %i.ana = phi <16 x i32> [ %i.aoo, %.lr.ph2407.split.us ], [ %i.amt, %.lr.ph2407 ]
  %i.anb = phi <16 x i32> [ %i.aom, %.lr.ph2407.split.us ], [ %i.amu, %.lr.ph2407 ]
  %i.anc = phi <16 x i32> [ %i.aok, %.lr.ph2407.split.us ], [ %i.amv, %.lr.ph2407 ]
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %indvars.iv2726
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !9
  %i.anf = sext i32 %i.ane to i64                 ; 2 uses
  %i.ang = getelementptr inbounds i8, ptr %gep2431, i64 %i.anf
  %i.anh = getelementptr inbounds i8, ptr %gep2436, i64 %i.anf
  %i.ani = load <8 x i8>, ptr %i.ang, align 1, !tbaa !44
  %i.anj = load <8 x i8>, ptr %i.anh, align 1, !tbaa !44
  %i.ank = sext <8 x i8> %i.ani to <8 x i16>      ; 4 uses
  %i.anl = sext <8 x i8> %i.anj to <8 x i16>      ; 4 uses
  %i.anm = load <8 x i64>, ptr %.37492405.us, align 64, !tbaa !44 ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %.37492405.us, i64 64
  %i.ano = load <8 x i64>, ptr %i.ann, align 64, !tbaa !44 ; 2 uses
  %i.anp = bitcast <8 x i64> %i.anm to <64 x i8>
  %i.anq = shufflevector <64 x i8> %i.anp, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.anr = sext <32 x i8> %i.anq to <32 x i16>    ; 2 uses
  %i.ans = bitcast <8 x i64> %i.anm to <64 x i8>
  %i.ant = shufflevector <64 x i8> %i.ans, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.anu = sext <32 x i8> %i.ant to <32 x i16>    ; 2 uses
  %i.anv = bitcast <8 x i64> %i.ano to <64 x i8>
  %i.anw = shufflevector <64 x i8> %i.anv, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.anx = sext <32 x i8> %i.anw to <32 x i16>    ; 2 uses
  %i.any = bitcast <8 x i64> %i.ano to <64 x i8>
  %i.anz = shufflevector <64 x i8> %i.any, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aoa = sext <32 x i8> %i.anz to <32 x i16>    ; 2 uses
  %i.aob = shufflevector <8 x i16> %i.ank, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aoc = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.anc, <32 x i16> %i.aob, <32 x i16> %i.anr)
  %i.aod = shufflevector <8 x i16> %i.anl, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aoe = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.anb, <32 x i16> %i.aod, <32 x i16> %i.anr)
  %i.aof = shufflevector <8 x i16> %i.ank, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.aog = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ana, <32 x i16> %i.aof, <32 x i16> %i.anu)
  %i.aoh = shufflevector <8 x i16> %i.anl, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.aoi = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.amz, <32 x i16> %i.aoh, <32 x i16> %i.anu)
  %i.aoj = shufflevector <8 x i16> %i.ank, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.aok = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aoc, <32 x i16> %i.aoj, <32 x i16> %i.anx) ; 2 uses
  %i.aol = shufflevector <8 x i16> %i.anl, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.aom = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aoe, <32 x i16> %i.aol, <32 x i16> %i.anx) ; 2 uses
  %i.aon = shufflevector <8 x i16> %i.ank, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.aoo = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aog, <32 x i16> %i.aon, <32 x i16> %i.aoa) ; 2 uses
  %i.aop = shufflevector <8 x i16> %i.anl, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.aoq = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aoi, <32 x i16> %i.aop, <32 x i16> %i.aoa) ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %.37492405.us, i64 128
  %indvars.iv.next2727 = add nuw nsw i64 %indvars.iv2726, 1 ; 2 uses
  %exitcond2732.not = icmp eq i64 %indvars.iv.next2727, %wide.trip.count2731
  br i1 %exitcond2732.not, label %._crit_edge2408.loopexit, label %.lr.ph2407.split.us, !llvm.loop !401

._crit_edge2408.loopexit:                         ; preds = %.lr.ph2407.split.us
  %scevgep2728 = getelementptr i8, ptr %.27482419, i64 128
  %scevgep2729 = getelementptr i8, ptr %scevgep2728, i64 %i.afi
  br label %._crit_edge2408

._crit_edge2408.loopexit2589:                     ; preds = %.lr.ph2407.split
  %scevgep2721 = getelementptr i8, ptr %.27482419, i64 128
  %scevgep2722 = getelementptr i8, ptr %scevgep2721, i64 %i.afi
  br label %._crit_edge2408

._crit_edge2408:                                  ; preds = %._crit_edge2408.loopexit2589, %._crit_edge2408.loopexit, %.noexc849
  %.lcssa2191 = phi <16 x i32> [ %i.amv, %.noexc849 ], [ %i.aok, %._crit_edge2408.loopexit ], [ %i.aqi, %._crit_edge2408.loopexit2589 ] ; 2 uses
  %.lcssa2190 = phi <16 x i32> [ %i.amu, %.noexc849 ], [ %i.aom, %._crit_edge2408.loopexit ], [ %i.aqk, %._crit_edge2408.loopexit2589 ] ; 2 uses
  %.lcssa2189 = phi <16 x i32> [ %i.amt, %.noexc849 ], [ %i.aoo, %._crit_edge2408.loopexit ], [ %i.aqm, %._crit_edge2408.loopexit2589 ] ; 2 uses
  %.lcssa2188 = phi <16 x i32> [ %i.ams, %.noexc849 ], [ %i.aoq, %._crit_edge2408.loopexit ], [ %i.aqo, %._crit_edge2408.loopexit2589 ] ; 2 uses
  %.3749.lcssa = phi ptr [ %.27482419, %.noexc849 ], [ %scevgep2729, %._crit_edge2408.loopexit ], [ %scevgep2722, %._crit_edge2408.loopexit2589 ] ; 2 uses
  %i.aos = add nuw nsw i32 %.17432420, 8          ; 3 uses
  %i.aot = or disjoint i32 %i.aos, 7
  %i.aou = icmp slt i32 %i.aot, %i.ade
  br i1 %i.aou, label %.noexc849, label %.preheader2141, !llvm.loop !402

.lr.ph2407.split:                                 ; preds = %.lr.ph2407, %.lr.ph2407.split
  %indvars.iv2719 = phi i64 [ %indvars.iv.next2720, %.lr.ph2407.split ], [ 0, %.lr.ph2407 ] ; 2 uses
  %.37492405 = phi ptr [ %i.aqp, %.lr.ph2407.split ], [ %.27482419, %.lr.ph2407 ] ; 3 uses
  %i.aov = phi <16 x i32> [ %i.aqo, %.lr.ph2407.split ], [ %i.ams, %.lr.ph2407 ]
  %i.aow = phi <16 x i32> [ %i.aqm, %.lr.ph2407.split ], [ %i.amt, %.lr.ph2407 ]
  %i.aox = phi <16 x i32> [ %i.aqk, %.lr.ph2407.split ], [ %i.amu, %.lr.ph2407 ]
  %i.aoy = phi <16 x i32> [ %i.aqi, %.lr.ph2407.split ], [ %i.amv, %.lr.ph2407 ]
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %indvars.iv2719
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !9
  %i.apb = sext i32 %i.apa to i64                 ; 2 uses
  %i.apc = getelementptr inbounds i8, ptr %gep2431, i64 %i.apb
  %i.apd = getelementptr inbounds i8, ptr %gep2436, i64 %i.apb
  %i.ape = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.apc, <8 x i32> %i.bi, <8 x i32> splat (i32 -1), i8 1)
  %i.apf = trunc <8 x i32> %i.ape to <8 x i8>
  %i.apg = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.apd, <8 x i32> %i.bi, <8 x i32> splat (i32 -1), i8 1)
  %i.aph = trunc <8 x i32> %i.apg to <8 x i8>
  %i.api = sext <8 x i8> %i.apf to <8 x i16>      ; 4 uses
  %i.apj = sext <8 x i8> %i.aph to <8 x i16>      ; 4 uses
  %i.apk = load <8 x i64>, ptr %.37492405, align 64, !tbaa !44 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %.37492405, i64 64
  %i.apm = load <8 x i64>, ptr %i.apl, align 64, !tbaa !44 ; 2 uses
  %i.apn = bitcast <8 x i64> %i.apk to <64 x i8>
  %i.apo = shufflevector <64 x i8> %i.apn, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.app = sext <32 x i8> %i.apo to <32 x i16>    ; 2 uses
  %i.apq = bitcast <8 x i64> %i.apk to <64 x i8>
  %i.apr = shufflevector <64 x i8> %i.apq, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aps = sext <32 x i8> %i.apr to <32 x i16>    ; 2 uses
  %i.apt = bitcast <8 x i64> %i.apm to <64 x i8>
  %i.apu = shufflevector <64 x i8> %i.apt, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.apv = sext <32 x i8> %i.apu to <32 x i16>    ; 2 uses
  %i.apw = bitcast <8 x i64> %i.apm to <64 x i8>
  %i.apx = shufflevector <64 x i8> %i.apw, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.apy = sext <32 x i8> %i.apx to <32 x i16>    ; 2 uses
  %i.apz = shufflevector <8 x i16> %i.api, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aqa = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aoy, <32 x i16> %i.apz, <32 x i16> %i.app)
  %i.aqb = shufflevector <8 x i16> %i.apj, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aqc = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aox, <32 x i16> %i.aqb, <32 x i16> %i.app)
  %i.aqd = shufflevector <8 x i16> %i.api, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.aqe = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aow, <32 x i16> %i.aqd, <32 x i16> %i.aps)
  %i.aqf = shufflevector <8 x i16> %i.apj, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.aqg = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.aov, <32 x i16> %i.aqf, <32 x i16> %i.aps)
end_hunk_8
begin_hunk_9_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %factor.op.mul2509 = mul i64 %i.auv, %i.auw
  %i.aux = sext i32 %i.aut to i64
  %i.auy = load i32, ptr %9, align 4, !tbaa !9
  %i.auz = mul nsw i32 %i.auy, %i.aui
  %i.ava = sext i32 %i.auz to i64
  %i.avb = mul i64 %i.auw, %i.aux
  %i.avc = mul i64 %i.avb, %i.ava
  %invariant.gep2511 = getelementptr i8, ptr %i.auu, i64 %i.avc
  %i.avd = load i32, ptr %10, align 4, !tbaa !9
  %i.ave = mul i32 %i.aus, %i.auj
  %i.avf = mul i32 %i.ave, %i.avd
  %i.avg = sext i32 %i.avf to i64
  %invariant.gep2512 = getelementptr i8, ptr %invariant.gep2511, i64 %i.avg
  %i.avh = load i32, ptr %11, align 4, !tbaa !9   ; 3 uses
  %i.avi = icmp sgt i32 %i.avh, 0
  br i1 %i.avi, label %.noexc835.lr.ph.split.us, label %.noexc835.preheader

.noexc835.preheader:                              ; preds = %.noexc835.lr.ph
  %i.avj = and i32 %i.auq, 2147483632
  br label %.preheader2139

.noexc835.lr.ph.split.us:                         ; preds = %.noexc835.lr.ph
  %i.avk = load ptr, ptr %12, align 8, !tbaa !20
  %i.avl = add nsw i32 %i.avh, -1
  %i.avm = zext nneg i32 %i.avl to i64
  %i.avn = shl nuw nsw i64 %i.avm, 8
  %wide.trip.count2758 = zext nneg i32 %i.avh to i64
  br label %.noexc835.us

.noexc835.us:                                     ; preds = %._crit_edge2495.us, %.noexc835.lr.ph.split.us
  %.07292502.us = phi i32 [ 0, %.noexc835.lr.ph.split.us ], [ %i.ayt, %._crit_edge2495.us ] ; 2 uses
  %.07302501.us = phi ptr [ %i.aup, %.noexc835.lr.ph.split.us ], [ %scevgep2756, %._crit_edge2495.us ] ; 2 uses
  %i.avo = phi <16 x i32> [ zeroinitializer, %.noexc835.lr.ph.split.us ], [ %i.ayr, %._crit_edge2495.us ]
  %i.avp = phi <16 x i32> [ zeroinitializer, %.noexc835.lr.ph.split.us ], [ %i.ayo, %._crit_edge2495.us ]
  %i.avq = phi <16 x i32> [ zeroinitializer, %.noexc835.lr.ph.split.us ], [ %i.ayl, %._crit_edge2495.us ]
  %i.avr = phi <16 x i32> [ zeroinitializer, %.noexc835.lr.ph.split.us ], [ %i.ayi, %._crit_edge2495.us ]
  %i.avs = sdiv i32 %.07292502.us, %i.aus
  %i.avt = sext i32 %i.avs to i64
  %.reass2510.us = mul i64 %factor.op.mul2509, %i.avt
  %gep2513.us = getelementptr i8, ptr %invariant.gep2512, i64 %.reass2510.us
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc835.us, %bb.ak
  %indvars.iv2753 = phi i64 [ 0, %.noexc835.us ], [ %indvars.iv.next2754, %bb.ak ] ; 2 uses
  %.17312492.us = phi ptr [ %.07302501.us, %.noexc835.us ], [ %i.ays, %bb.ak ] ; 5 uses
  %i.avu = phi <16 x i32> [ %i.avo, %.noexc835.us ], [ %i.ayr, %bb.ak ]
  %i.avv = phi <16 x i32> [ %i.avp, %.noexc835.us ], [ %i.ayo, %bb.ak ]
  %i.avw = phi <16 x i32> [ %i.avq, %.noexc835.us ], [ %i.ayl, %bb.ak ]
  %i.avx = phi <16 x i32> [ %i.avr, %.noexc835.us ], [ %i.ayi, %bb.ak ]
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.avk, i64 %indvars.iv2753
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !9
  %i.awa = sext i32 %i.avz to i64
  %i.awb = getelementptr inbounds i8, ptr %gep2513.us, i64 %i.awa ; 4 uses
  switch i32 %i.aus, label %bb.aj [
    i32 16, label %bb.ai
    i32 8, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.awc = load i64, ptr %i.awb, align 1, !tbaa !44
  %i.awd = insertelement <2 x i64> poison, i64 %i.awc, i64 0
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.aa
  %i.awf = load i64, ptr %i.awe, align 1, !tbaa !44
  %i.awg = insertelement <2 x i64> %i.awd, i64 %i.awf, i64 1
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.awh = load <2 x i64>, ptr %i.awb, align 16, !tbaa !44
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.awi = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.awb, <16 x i32> %i.acl, <16 x i1> splat (i1 true), i32 1)
  %i.awj = trunc <16 x i32> %i.awi to <16 x i8>
  %i.awk = bitcast <16 x i8> %i.awj to <2 x i64>
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0727.us = phi <2 x i64> [ %i.awh, %bb.ai ], [ %i.awg, %bb.ah ], [ %i.awk, %bb.aj ]
  %i.awl = bitcast <2 x i64> %.0727.us to <16 x i8>
  %i.awm = sext <16 x i8> %i.awl to <16 x i16>    ; 2 uses
  %i.awn = load <8 x i64>, ptr %.17312492.us, align 64, !tbaa !44 ; 2 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %.17312492.us, i64 64
  %i.awp = load <8 x i64>, ptr %i.awo, align 64, !tbaa !44 ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %.17312492.us, i64 128
  %i.awr = load <8 x i64>, ptr %i.awq, align 64, !tbaa !44 ; 2 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.17312492.us, i64 192
  %i.awt = load <8 x i64>, ptr %i.aws, align 64, !tbaa !44 ; 2 uses
  %i.awu = bitcast <8 x i64> %i.awn to <64 x i8>
  %i.awv = shufflevector <64 x i8> %i.awu, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aww = sext <32 x i8> %i.awv to <32 x i16>
  %i.awx = bitcast <8 x i64> %i.awn to <64 x i8>
  %i.awy = shufflevector <64 x i8> %i.awx, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.awz = sext <32 x i8> %i.awy to <32 x i16>
  %i.axa = bitcast <8 x i64> %i.awp to <64 x i8>
  %i.axb = shufflevector <64 x i8> %i.axa, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.axc = sext <32 x i8> %i.axb to <32 x i16>
  %i.axd = bitcast <8 x i64> %i.awp to <64 x i8>
  %i.axe = shufflevector <64 x i8> %i.axd, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.axf = sext <32 x i8> %i.axe to <32 x i16>
  %i.axg = bitcast <8 x i64> %i.awr to <64 x i8>
  %i.axh = shufflevector <64 x i8> %i.axg, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.axi = sext <32 x i8> %i.axh to <32 x i16>
  %i.axj = bitcast <8 x i64> %i.awr to <64 x i8>
  %i.axk = shufflevector <64 x i8> %i.axj, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.axl = sext <32 x i8> %i.axk to <32 x i16>
  %i.axm = bitcast <8 x i64> %i.awt to <64 x i8>
  %i.axn = shufflevector <64 x i8> %i.axm, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.axo = sext <32 x i8> %i.axn to <32 x i16>
  %i.axp = bitcast <8 x i64> %i.awt to <64 x i8>
  %i.axq = shufflevector <64 x i8> %i.axp, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.axr = sext <32 x i8> %i.axq to <32 x i16>
  %i.axs = bitcast <16 x i16> %i.awm to <8 x i32> ; 4 uses
  %i.axt = bitcast <16 x i16> %i.awm to <8 x i32> ; 4 uses
  %i.axu = shufflevector <8 x i32> %i.axs, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.axv = bitcast <16 x i32> %i.axu to <32 x i16>
  %i.axw = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.avx, <32 x i16> %i.axv, <32 x i16> %i.aww)
  %i.axx = shufflevector <8 x i32> %i.axs, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.axy = bitcast <16 x i32> %i.axx to <32 x i16>
  %i.axz = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.avw, <32 x i16> %i.axy, <32 x i16> %i.awz)
  %i.aya = shufflevector <8 x i32> %i.axs, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ayb = bitcast <16 x i32> %i.aya to <32 x i16>
  %i.ayc = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.avv, <32 x i16> %i.ayb, <32 x i16> %i.axc)
  %i.ayd = shufflevector <8 x i32> %i.axs, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.aye = bitcast <16 x i32> %i.ayd to <32 x i16>
  %i.ayf = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.avu, <32 x i16> %i.aye, <32 x i16> %i.axf)
  %i.ayg = shufflevector <8 x i32> %i.axt, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ayh = bitcast <16 x i32> %i.ayg to <32 x i16>
  %i.ayi = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.axw, <32 x i16> %i.ayh, <32 x i16> %i.axi) ; 3 uses
  %i.ayj = shufflevector <8 x i32> %i.axt, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.ayk = bitcast <16 x i32> %i.ayj to <32 x i16>
  %i.ayl = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.axz, <32 x i16> %i.ayk, <32 x i16> %i.axl) ; 3 uses
  %i.aym = shufflevector <8 x i32> %i.axt, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.ayn = bitcast <16 x i32> %i.aym to <32 x i16>
  %i.ayo = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ayc, <32 x i16> %i.ayn, <32 x i16> %i.axo) ; 3 uses
  %i.ayp = shufflevector <8 x i32> %i.axt, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.ayq = bitcast <16 x i32> %i.ayp to <32 x i16>
  %i.ayr = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.ayf, <32 x i16> %i.ayq, <32 x i16> %i.axr) ; 3 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %.17312492.us, i64 256
  %indvars.iv.next2754 = add nuw nsw i64 %indvars.iv2753, 1 ; 2 uses
  %exitcond2759.not = icmp eq i64 %indvars.iv.next2754, %wide.trip.count2758
  br i1 %exitcond2759.not, label %._crit_edge2495.us, label %bb.ag, !llvm.loop !415

._crit_edge2495.us:                               ; preds = %bb.ak
  %scevgep2755 = getelementptr i8, ptr %.07302501.us, i64 256
  %scevgep2756 = getelementptr i8, ptr %scevgep2755, i64 %i.avn ; 2 uses
  %i.ayt = add nuw nsw i32 %.07292502.us, 16      ; 2 uses
  %i.ayu = or disjoint i32 %i.ayt, 15
  %i.ayv = icmp slt i32 %i.ayu, %i.auq
  br i1 %i.ayv, label %.noexc835.us, label %.preheader2139.loopexit, !llvm.loop !416

.preheader2139.loopexit:                          ; preds = %._crit_edge2495.us
  %i.ayw = and i32 %i.auq, 2147483632
  br label %.preheader2139

.preheader2139:                                   ; preds = %.noexc835.preheader, %.preheader2139.loopexit, %.noexc837
  %.lcssa2211 = phi <16 x i32> [ zeroinitializer, %.noexc837 ], [ %i.ayi, %.preheader2139.loopexit ], [ zeroinitializer, %.noexc835.preheader ] ; 2 uses
  %.lcssa2210 = phi <16 x i32> [ zeroinitializer, %.noexc837 ], [ %i.ayl, %.preheader2139.loopexit ], [ zeroinitializer, %.noexc835.preheader ] ; 2 uses
  %.lcssa2209 = phi <16 x i32> [ zeroinitializer, %.noexc837 ], [ %i.ayo, %.preheader2139.loopexit ], [ zeroinitializer, %.noexc835.preheader ] ; 2 uses
  %.lcssa2208 = phi <16 x i32> [ zeroinitializer, %.noexc837 ], [ %i.ayr, %.preheader2139.loopexit ], [ zeroinitializer, %.noexc835.preheader ] ; 2 uses
  %.0730.lcssa = phi ptr [ %i.aup, %.noexc837 ], [ %scevgep2756, %.preheader2139.loopexit ], [ %i.aup, %.noexc835.preheader ] ; 2 uses
  %.0729.lcssa = phi i32 [ 0, %.noexc837 ], [ %i.ayw, %.preheader2139.loopexit ], [ %i.avj, %.noexc835.preheader ] ; 3 uses
  %i.ayx = or disjoint i32 %.0729.lcssa, 7
  %i.ayy = icmp slt i32 %i.ayx, %i.auq
  br i1 %i.ayy, label %.noexc833.lr.ph, label %.preheader2138

.noexc833.lr.ph:                                  ; preds = %.preheader2139
  %i.ayz = load i32, ptr %5, align 4, !tbaa !9    ; 3 uses
  %i.aza = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !417
  %i.azb = load ptr, ptr %4, align 8, !tbaa !32, !noalias !417
  %i.azc = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !417
  %i.azd = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !417 ; 2 uses
  %factor.op.mul2542 = mul i64 %i.azc, %i.azd
  %i.aze = sext i32 %i.aza to i64
  %i.azf = load i32, ptr %9, align 4, !tbaa !9
  %i.azg = mul nsw i32 %i.azf, %i.aui
  %i.azh = sext i32 %i.azg to i64
  %i.azi = mul i64 %i.azd, %i.aze
  %i.azj = mul i64 %i.azi, %i.azh
  %invariant.gep2544 = getelementptr i8, ptr %i.azb, i64 %i.azj
  %i.azk = load i32, ptr %10, align 4, !tbaa !9
  %i.azl = mul i32 %i.ayz, %i.auj
  %i.azm = mul i32 %i.azl, %i.azk
  %i.azn = sext i32 %i.azm to i64
  %invariant.gep2545 = getelementptr i8, ptr %invariant.gep2544, i64 %i.azn
  %i.azo = load i32, ptr %11, align 4, !tbaa !9   ; 4 uses
  %i.azp = icmp sgt i32 %i.azo, 0
  %i.azq = add i32 %i.azo, -1
  %i.azr = zext i32 %i.azq to i64
  %i.azs = shl nuw nsw i64 %i.azr, 7              ; 2 uses
  %i.azt = icmp eq i32 %i.ayz, 8
  %wide.trip.count2765 = zext nneg i32 %i.azo to i64
  %wide.trip.count2772 = zext nneg i32 %i.azo to i64
  br label %.noexc833

.preheader2138:                                   ; preds = %._crit_edge2523, %.preheader2139
  %.lcssa2219 = phi <16 x i32> [ %.lcssa2211, %.preheader2139 ], [ %.lcssa2215, %._crit_edge2523 ] ; 3 uses
  %.lcssa2218 = phi <16 x i32> [ %.lcssa2210, %.preheader2139 ], [ %.lcssa2214, %._crit_edge2523 ]
  %.lcssa2217 = phi <16 x i32> [ %.lcssa2209, %.preheader2139 ], [ %.lcssa2213, %._crit_edge2523 ]
  %.lcssa2216 = phi <16 x i32> [ %.lcssa2208, %.preheader2139 ], [ %.lcssa2212, %._crit_edge2523 ]
  %.2732.lcssa = phi ptr [ %.0730.lcssa, %.preheader2139 ], [ %.3733.lcssa, %._crit_edge2523 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0729.lcssa, %.preheader2139 ], [ %i.bem, %._crit_edge2523 ] ; 6 uses
  %i.azu = or disjoint i32 %.1.lcssa, 1
  %i.azv = icmp slt i32 %i.azu, %i.auq
  br i1 %i.azv, label %.noexc831.lr.ph, label %.preheader

.noexc831.lr.ph:                                  ; preds = %.preheader2138
  %i.azw = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !420
  %i.azx = load ptr, ptr %4, align 8, !tbaa !32, !noalias !420
  %i.azy = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !420
  %i.azz = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !420 ; 2 uses
  %factor.op.mul2558 = mul i64 %i.azy, %i.azz
  %i.baa = sext i32 %i.azw to i64
  %i.bab = load i32, ptr %9, align 4, !tbaa !9
  %i.bac = mul nsw i32 %i.bab, %i.aui
  %i.bad = sext i32 %i.bac to i64
  %i.bae = mul i64 %i.azz, %i.baa
  %i.baf = mul i64 %i.bae, %i.bad
  %invariant.gep2560 = getelementptr i8, ptr %i.azx, i64 %i.baf
  %i.bag = load i32, ptr %10, align 4, !tbaa !9
  %i.bah = mul nsw i32 %i.bag, %i.auj
  %i.bai = sext i32 %i.bah to i64
  %invariant.gep2561 = getelementptr i8, ptr %invariant.gep2560, i64 %i.bai
  %i.baj = load i32, ptr %11, align 4, !tbaa !9   ; 5 uses
  %i.bak = icmp sgt i32 %i.baj, 0
  br i1 %i.bak, label %.noexc831.lr.ph.split.us, label %.noexc831.preheader

.noexc831.preheader:                              ; preds = %.noexc831.lr.ph
  %i.bal = add nuw i32 %.1.lcssa, 2
  %14 = add nuw i32 %.1.lcssa, 3
  %smax2774 = call i32 @llvm.smax.i32(i32 %i.auq, i32 %14)
  %i.bam = add nsw i32 %smax2774, -2
  %i.ban = sub nsw i32 %i.bam, %.1.lcssa
  %i.bao = and i32 %i.ban, -2
  %i.bap = add i32 %i.bal, %i.bao
  br label %.preheader

.noexc831.lr.ph.split.us:                         ; preds = %.noexc831.lr.ph
  %i.baq = load ptr, ptr %12, align 8, !tbaa !20  ; 3 uses
  %i.bar = add nsw i32 %i.baj, -1
  %i.bas = zext nneg i32 %i.bar to i64
  %i.bat = shl nuw nsw i64 %i.bas, 5
  %i.bau = zext nneg i32 %.1.lcssa to i64
  %wide.trip.count2780 = zext nneg i32 %i.baj to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count2780, 1
  %i.bav = icmp eq i32 %i.baj, 1
  %unroll_iter = and i64 %wide.trip.count2780, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod3005 = trunc i32 %i.baj to i1
  br label %.noexc831.us

.noexc831.us:                                     ; preds = %._crit_edge2550.us, %.noexc831.lr.ph.split.us
  %indvars.iv2782 = phi i64 [ %indvars.iv.next2783, %._crit_edge2550.us ], [ %i.bau, %.noexc831.lr.ph.split.us ] ; 2 uses
  %.42553.us = phi ptr [ %scevgep2778, %._crit_edge2550.us ], [ %.2732.lcssa, %.noexc831.lr.ph.split.us ] ; 3 uses
  %i.baw = phi <16 x i32> [ %.lcssa3002.a, %._crit_edge2550.us ], [ %.lcssa2219, %.noexc831.lr.ph.split.us ] ; 2 uses
  %.reass2559.us = mul i64 %factor.op.mul2558, %indvars.iv2782
  %gep2562.us = getelementptr i8, ptr %invariant.gep2561, i64 %.reass2559.us ; 3 uses
  br i1 %i.bav, label %.epil.preheader, label %.noexc831.us.new

.noexc831.us.new:                                 ; preds = %.noexc831.us, %.noexc831.us.new
  %indvars.iv2775 = phi i64 [ %indvars.iv.next2776.1, %.noexc831.us.new ], [ 0, %.noexc831.us ] ; 3 uses
  %.52547.us = phi ptr [ %i.bce, %.noexc831.us.new ], [ %.42553.us, %.noexc831.us ] ; 3 uses
  %i.bax = phi <16 x i32> [ %i.bcd, %.noexc831.us.new ], [ %i.baw, %.noexc831.us ]
  %niter = phi i64 [ %niter.next.1, %.noexc831.us.new ], [ 0, %.noexc831.us ]
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.baq, i64 %indvars.iv2775
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !9
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds i8, ptr %gep2562.us, i64 %i.bba ; 2 uses
  %i.bbc = load i8, ptr %i.bbb, align 1, !tbaa !44
  %i.bbd = sext i8 %i.bbc to i16
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbb, i64 %i.aa
  %i.bbf = load i8, ptr %i.bbe, align 1, !tbaa !44
  %i.bbg = sext i8 %i.bbf to i16
  %i.bbh = insertelement <8 x i16> poison, i16 %i.bbd, i64 0
  %i.bbi = insertelement <8 x i16> %i.bbh, i16 %i.bbg, i64 1
  %i.bbj = load <32 x i8>, ptr %.52547.us, align 32, !tbaa !44
  %i.bbk = sext <32 x i8> %i.bbj to <32 x i16>
  %i.bbl = shufflevector <8 x i16> %i.bbi, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bbm = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bax, <32 x i16> %i.bbl, <32 x i16> %i.bbk)
  %i.bbn = getelementptr inbounds nuw i8, ptr %.52547.us, i64 32
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %i.baq, i64 %indvars.iv2775
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 4
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !9
  %i.bbr = sext i32 %i.bbq to i64
  %i.bbs = getelementptr inbounds i8, ptr %gep2562.us, i64 %i.bbr ; 2 uses
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !44
  %i.bbu = sext i8 %i.bbt to i16
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbs, i64 %i.aa
  %i.bbw = load i8, ptr %i.bbv, align 1, !tbaa !44
  %i.bbx = sext i8 %i.bbw to i16
  %i.bby = insertelement <8 x i16> poison, i16 %i.bbu, i64 0
  %i.bbz = insertelement <8 x i16> %i.bby, i16 %i.bbx, i64 1
  %i.bca = load <32 x i8>, ptr %i.bbn, align 32, !tbaa !44
  %i.bcb = sext <32 x i8> %i.bca to <32 x i16>
  %i.bcc = shufflevector <8 x i16> %i.bbz, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bcd = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bbm, <32 x i16> %i.bcc, <32 x i16> %i.bcb) ; 3 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %.52547.us, i64 64 ; 2 uses
  %indvars.iv.next2776.1 = add nuw nsw i64 %indvars.iv2775, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge2550.us.unr-lcssa, label %.noexc831.us.new, !llvm.loop !423

._crit_edge2550.us.unr-lcssa:                     ; preds = %.noexc831.us.new
  br i1 %lcmp.mod.not, label %._crit_edge2550.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge2550.us.unr-lcssa, %.noexc831.us
  %indvars.iv2775.epil.init = phi i64 [ 0, %.noexc831.us ], [ %indvars.iv.next2776.1, %._crit_edge2550.us.unr-lcssa ]
  %.52547.us.epil.init = phi ptr [ %.42553.us, %.noexc831.us ], [ %i.bce, %._crit_edge2550.us.unr-lcssa ]
  %.epil.init = phi <16 x i32> [ %i.baw, %.noexc831.us ], [ %i.bcd, %._crit_edge2550.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3005)
  %i.bcf = getelementptr inbounds nuw [4 x i8], ptr %i.baq, i64 %indvars.iv2775.epil.init
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !9
  %i.bch = sext i32 %i.bcg to i64
  %i.bci = getelementptr inbounds i8, ptr %gep2562.us, i64 %i.bch ; 2 uses
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !44
  %i.bck = sext i8 %i.bcj to i16
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bci, i64 %i.aa
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !44
  %i.bcn = sext i8 %i.bcm to i16
  %i.bco = insertelement <8 x i16> poison, i16 %i.bck, i64 0
  %i.bcp = insertelement <8 x i16> %i.bco, i16 %i.bcn, i64 1
  %i.bcq = load <32 x i8>, ptr %.52547.us.epil.init, align 32, !tbaa !44
  %i.bcr = sext <32 x i8> %i.bcq to <32 x i16>
  %i.bcs = shufflevector <8 x i16> %i.bcp, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bct = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %.epil.init, <32 x i16> %i.bcs, <32 x i16> %i.bcr)
  br label %._crit_edge2550.us

._crit_edge2550.us:                               ; preds = %._crit_edge2550.us.unr-lcssa, %.epil.preheader
  %.lcssa3002.a = phi <16 x i32> [ %i.bcd, %._crit_edge2550.us.unr-lcssa ], [ %i.bct, %.epil.preheader ] ; 2 uses
  %scevgep2777.a = getelementptr i8, ptr %.42553.us, i64 32
  %scevgep2778 = getelementptr i8, ptr %scevgep2777.a, i64 %i.bat ; 2 uses
  %indvars.iv.next2783 = add nuw nsw i64 %indvars.iv2782, 2 ; 3 uses
  %i.bcu = trunc i64 %indvars.iv.next2783 to i32
  %i.bcv = or i32 %i.bcu, 1
  %i.bcw = icmp slt i32 %i.bcv, %i.auq
  br i1 %i.bcw, label %.noexc831.us, label %.preheader.loopexit, !llvm.loop !424

.noexc833:                                        ; preds = %.noexc833.lr.ph, %._crit_edge2523
  %.12535 = phi i32 [ %.0729.lcssa, %.noexc833.lr.ph ], [ %i.bem, %._crit_edge2523 ] ; 2 uses
  %.27322534 = phi ptr [ %.0730.lcssa, %.noexc833.lr.ph ], [ %.3733.lcssa, %._crit_edge2523 ] ; 5 uses
  %i.bcx = phi <16 x i32> [ %.lcssa2208, %.noexc833.lr.ph ], [ %.lcssa2212, %._crit_edge2523 ] ; 3 uses
  %i.bcy = phi <16 x i32> [ %.lcssa2209, %.noexc833.lr.ph ], [ %.lcssa2213, %._crit_edge2523 ] ; 3 uses
  %i.bcz = phi <16 x i32> [ %.lcssa2210, %.noexc833.lr.ph ], [ %.lcssa2214, %._crit_edge2523 ] ; 3 uses
  %i.bda = phi <16 x i32> [ %.lcssa2211, %.noexc833.lr.ph ], [ %.lcssa2215, %._crit_edge2523 ] ; 3 uses
  %i.bdb = sdiv i32 %.12535, %i.ayz
  %i.bdc = sext i32 %i.bdb to i64
  %.reass2543 = mul i64 %factor.op.mul2542, %i.bdc
  %gep2546 = getelementptr i8, ptr %invariant.gep2545, i64 %.reass2543 ; 2 uses
  br i1 %i.azp, label %.lr.ph2522, label %._crit_edge2523

.lr.ph2522:                                       ; preds = %.noexc833
  %i.bdd = load ptr, ptr %12, align 8, !tbaa !20  ; 2 uses
  br i1 %i.azt, label %.lr.ph2522.split.us, label %.lr.ph2522.split

.lr.ph2522.split.us:                              ; preds = %.lr.ph2522, %.lr.ph2522.split.us
  %indvars.iv2767 = phi i64 [ %indvars.iv.next2768, %.lr.ph2522.split.us ], [ 0, %.lr.ph2522 ] ; 2 uses
  %.37332520.us = phi ptr [ %i.bel, %.lr.ph2522.split.us ], [ %.27322534, %.lr.ph2522 ] ; 3 uses
  %i.bde = phi <16 x i32> [ %i.bek, %.lr.ph2522.split.us ], [ %i.bcx, %.lr.ph2522 ]
  %i.bdf = phi <16 x i32> [ %i.bei, %.lr.ph2522.split.us ], [ %i.bcy, %.lr.ph2522 ]
  %i.bdg = phi <16 x i32> [ %i.beg, %.lr.ph2522.split.us ], [ %i.bcz, %.lr.ph2522 ]
  %i.bdh = phi <16 x i32> [ %i.bee, %.lr.ph2522.split.us ], [ %i.bda, %.lr.ph2522 ]
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %i.bdd, i64 %indvars.iv2767
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !9
  %i.bdk = sext i32 %i.bdj to i64
  %i.bdl = getelementptr inbounds i8, ptr %gep2546, i64 %i.bdk
  %i.bdm = load <8 x i8>, ptr %i.bdl, align 1, !tbaa !44
  %i.bdn = sext <8 x i8> %i.bdm to <8 x i16>      ; 4 uses
  %i.bdo = load <8 x i64>, ptr %.37332520.us, align 64, !tbaa !44 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %.37332520.us, i64 64
  %i.bdq = load <8 x i64>, ptr %i.bdp, align 64, !tbaa !44 ; 2 uses
  %i.bdr = bitcast <8 x i64> %i.bdo to <64 x i8>
  %i.bds = shufflevector <64 x i8> %i.bdr, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bdt = sext <32 x i8> %i.bds to <32 x i16>
  %i.bdu = bitcast <8 x i64> %i.bdo to <64 x i8>
  %i.bdv = shufflevector <64 x i8> %i.bdu, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bdw = sext <32 x i8> %i.bdv to <32 x i16>
  %i.bdx = bitcast <8 x i64> %i.bdq to <64 x i8>
  %i.bdy = shufflevector <64 x i8> %i.bdx, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bdz = sext <32 x i8> %i.bdy to <32 x i16>
  %i.bea = bitcast <8 x i64> %i.bdq to <64 x i8>
  %i.beb = shufflevector <64 x i8> %i.bea, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bec = sext <32 x i8> %i.beb to <32 x i16>
  %i.bed = shufflevector <8 x i16> %i.bdn, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bee = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bdh, <32 x i16> %i.bed, <32 x i16> %i.bdt) ; 2 uses
  %i.bef = shufflevector <8 x i16> %i.bdn, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.beg = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bdg, <32 x i16> %i.bef, <32 x i16> %i.bdw) ; 2 uses
  %i.beh = shufflevector <8 x i16> %i.bdn, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.bei = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bdf, <32 x i16> %i.beh, <32 x i16> %i.bdz) ; 2 uses
  %i.bej = shufflevector <8 x i16> %i.bdn, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.bek = call <16 x i32> @llvm.x86.avx512.vpdpwssd.512(<16 x i32> %i.bde, <32 x i16> %i.bej, <32 x i16> %i.bec) ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %.37332520.us, i64 128
  %indvars.iv.next2768 = add nuw nsw i64 %indvars.iv2767, 1 ; 2 uses
  %exitcond2773.not = icmp eq i64 %indvars.iv.next2768, %wide.trip.count2772
  br i1 %exitcond2773.not, label %._crit_edge2523.loopexit, label %.lr.ph2522.split.us, !llvm.loop !425

._crit_edge2523.loopexit:                         ; preds = %.lr.ph2522.split.us
  %scevgep2769 = getelementptr i8, ptr %.27322534, i64 128
  %scevgep2770 = getelementptr i8, ptr %scevgep2769, i64 %i.azs
  br label %._crit_edge2523

._crit_edge2523.loopexit2588:                     ; preds = %.lr.ph2522.split
  %scevgep2762 = getelementptr i8, ptr %.27322534, i64 128
  %scevgep2763 = getelementptr i8, ptr %scevgep2762, i64 %i.azs
  br label %._crit_edge2523

._crit_edge2523:                                  ; preds = %._crit_edge2523.loopexit2588, %._crit_edge2523.loopexit, %.noexc833
  %.lcssa2215 = phi <16 x i32> [ %i.bda, %.noexc833 ], [ %i.bee, %._crit_edge2523.loopexit ], [ %i.bfq, %._crit_edge2523.loopexit2588 ] ; 2 uses
  %.lcssa2214 = phi <16 x i32> [ %i.bcz, %.noexc833 ], [ %i.beg, %._crit_edge2523.loopexit ], [ %i.bfs, %._crit_edge2523.loopexit2588 ] ; 2 uses
  %.lcssa2213 = phi <16 x i32> [ %i.bcy, %.noexc833 ], [ %i.bei, %._crit_edge2523.loopexit ], [ %i.bfu, %._crit_edge2523.loopexit2588 ] ; 2 uses
  %.lcssa2212 = phi <16 x i32> [ %i.bcx, %.noexc833 ], [ %i.bek, %._crit_edge2523.loopexit ], [ %i.bfw, %._crit_edge2523.loopexit2588 ] ; 2 uses
  %.3733.lcssa = phi ptr [ %.27322534, %.noexc833 ], [ %scevgep2770, %._crit_edge2523.loopexit ], [ %scevgep2763, %._crit_edge2523.loopexit2588 ] ; 2 uses
  %i.bem = add nuw nsw i32 %.12535, 8             ; 3 uses
  %i.ben = or disjoint i32 %i.bem, 7
  %i.beo = icmp slt i32 %i.ben, %i.auq
  br i1 %i.beo, label %.noexc833, label %.preheader2138, !llvm.loop !426

.lr.ph2522.split:                                 ; preds = %.lr.ph2522, %.lr.ph2522.split
  %indvars.iv2760 = phi i64 [ %indvars.iv.next2761, %.lr.ph2522.split ], [ 0, %.lr.ph2522 ] ; 2 uses
  %.37332520 = phi ptr [ %i.bfx, %.lr.ph2522.split ], [ %.27322534, %.lr.ph2522 ] ; 3 uses
  %i.bep = phi <16 x i32> [ %i.bfw, %.lr.ph2522.split ], [ %i.bcx, %.lr.ph2522 ]
  %i.beq = phi <16 x i32> [ %i.bfu, %.lr.ph2522.split ], [ %i.bcy, %.lr.ph2522 ]
  %i.ber = phi <16 x i32> [ %i.bfs, %.lr.ph2522.split ], [ %i.bcz, %.lr.ph2522 ]
  %i.bes = phi <16 x i32> [ %i.bfq, %.lr.ph2522.split ], [ %i.bda, %.lr.ph2522 ]
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.bdd, i64 %indvars.iv2760
  %i.beu = load i32, ptr %i.bet, align 4, !tbaa !9
  %i.bev = sext i32 %i.beu to i64
  %i.bew = getelementptr inbounds i8, ptr %gep2546, i64 %i.bev
  %i.bex = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bew, <8 x i32> %i.aco, <8 x i32> splat (i32 -1), i8 1)
  %i.bey = trunc <8 x i32> %i.bex to <8 x i8>
  %i.bez = sext <8 x i8> %i.bey to <8 x i16>      ; 4 uses
  %i.bfa = load <8 x i64>, ptr %.37332520, align 64, !tbaa !44 ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.37332520, i64 64
end_hunk_9
begin_hunk_10_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !542 ; 2 uses
  %.not.i38 = icmp eq ptr %i.db, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !541 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.de, null
  %i.df = load ptr, ptr %12, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !546
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !548

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.df, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.df) #4
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !542 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dl, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !541 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !546
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !548

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.dp, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dp) #4
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  %i.dv = add nsw i32 %.069, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.069, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable
}

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #17

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bu

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
  %.not162 = icmp sgt i32 %i.k, %i.j
  br i1 %.not162, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph165, %_ZN4ncnn3MatD2Ev.exit
  %.045163 = phi i32 [ %i.k, %.lr.ph165 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !9
  %i.at = mul nsw i32 %i.as, %.045163             ; 6 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.bv

.noexc46:                                         ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !32, !noalias !579
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !579
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !579
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 6 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !9
  %i.bd = sub nsw i32 %i.bc, %i.at
  %i.be = load i32, ptr %3, align 4, !tbaa !9
  %.sroa.speculated120 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd) ; 12 uses
  %i.bf = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.bh = icmp sgt i32 %.sroa.speculated120, 15
  %i.bi = and i32 %.sroa.speculated120, 2147483632
  %i.bj = zext nneg i32 %.sroa.speculated120 to i64
  %i.bk = sext i32 %.sroa.speculated120 to i64    ; 4 uses
  %invariant.op.i = add nsw i64 %i.bk, -7
  %invariant.op878.i = add nsw i64 %i.bk, -3
  %i.bl = sext i32 %i.at to i64                   ; 2 uses
  %invariant.op879.i = add nsw i64 %i.bk, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.bm = add nsw i32 %.045163, 1
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.045163, %i.bn
  br i1 %.not.not, label %bb.c, label %._crit_edge166

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.ael, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.aen, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044161 = phi i32 [ 0, %.lr.ph ], [ %i.aem, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 8 uses
  %i.bq = sub nsw i32 %i.bp, %.044161
  %.sroa.speculated116 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 29 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.noexc52.preheader, label %._crit_edge

.noexc52.preheader:                               ; preds = %bb.d
  %.pre169 = load i32, ptr %9, align 4, !tbaa !9
  br label %.noexc52

._crit_edge:                                      ; preds = %.noexc52, %bb.d
  %i.bt = load i32, ptr %i.an, align 4, !tbaa !10 ; 11 uses
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !19 ; 11 uses
  %i.bv = load i32, ptr %i.ap, align 8, !tbaa !16 ; 21 uses
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.bx = sext i32 %i.bv to i64
  %i.by = mul i64 %i.bw, %i.bx                    ; 13 uses
  %i.bz = add nsw i32 %i.bt, 1
  %i.ca = sdiv i32 %i.bz, 2                       ; 10 uses
  %factor.op.mul672.i = shl i32 %.sroa.speculated116, 4 ; 8 uses
  br i1 %i.bh, label %.lr.ph675.i, label %.preheader663.i

.lr.ph675.i:                                      ; preds = %._crit_edge
  %i.cb = icmp sgt i32 %.sroa.speculated116, 0
  %i.cc = sext i32 %factor.op.mul672.i to i64
  %i.cd = shl nsw i32 %.sroa.speculated116, 5
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul nsw i32 %.sroa.speculated116, 48
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i32 %.sroa.speculated116, 6
  %i.ci = sext i32 %i.ch to i64                   ; 12 uses
  %i.cj = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.bv)
  %i.ck = icmp eq i32 %i.cj, 1                    ; 2 uses
  %i.cl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bv, i1 true) ; 2 uses
  %.idx.i = shl i64 %i.by, 3                      ; 2 uses
  %.idx537.i = mul i64 %i.by, 12                  ; 2 uses
  %i.cm = icmp eq i32 %i.bv, 1                    ; 2 uses
  %i.cn = trunc i64 %i.by to i32
  %i.co = insertelement <16 x i32> poison, i32 %i.cn, i64 0
  %i.cp = shufflevector <16 x i32> %i.co, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cq = mul <16 x i32> %i.cp, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cr = mul nsw i32 %i.bv, %i.bt
  %i.cs = sext i32 %i.cr to i64
  br i1 %i.cb, label %.lr.ph.us.preheader.i, label %.preheader663.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph675.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv765.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next766.i, %._crit_edge.us.i ] ; 2 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv765.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul672.i, %i.ct
  %i.cu = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cv = add i32 %i.at, %i.ct
  %i.cw = sdiv i32 %i.cv, %i.bv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cu
  br label %_ZN4ncnn3MatD2Ev.exit545.us.i

_ZN4ncnn3MatD2Ev.exit545.us.i:                    ; preds = %bb.ae, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.ae ] ; 3 uses
  %.idx874.i.a = shl nuw nsw i64 %indvars.iv.i, 6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx874.i.a ; 5 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cc ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ce ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cg ; 2 uses
  %i.dd = load <16 x i32>, ptr %i.da, align 64, !tbaa !44 ; 2 uses
  %i.de = load <16 x i32>, ptr %i.db, align 64, !tbaa !44 ; 2 uses
  %i.df = load <16 x i32>, ptr %i.dc, align 64, !tbaa !44
  %i.dg = sub <16 x i32> %i.dd, %i.de
  %i.dh = add <16 x i32> %i.dg, %i.df
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ci ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ci ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ci ; 2 uses
  %i.dl = load <16 x i32>, ptr %i.di, align 64, !tbaa !44 ; 2 uses
  %i.dm = load <16 x i32>, ptr %i.dj, align 64, !tbaa !44 ; 2 uses
  %i.dn = load <16 x i32>, ptr %i.dk, align 64, !tbaa !44
  %i.do = sub <16 x i32> %i.dl, %i.dm
  %i.dp = add <16 x i32> %i.do, %i.dn             ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ci ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ci ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ci ; 2 uses
  %i.dt = load <16 x i32>, ptr %i.dq, align 64, !tbaa !44 ; 2 uses
  %i.du = load <16 x i32>, ptr %i.dr, align 64, !tbaa !44 ; 2 uses
  %i.dv = load <16 x i32>, ptr %i.ds, align 64, !tbaa !44
  %i.dw = sub <16 x i32> %i.dt, %i.du
  %i.dx = add <16 x i32> %i.dw, %i.dv             ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ci
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ci
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ci
  %i.eb = load <16 x i32>, ptr %i.dy, align 64, !tbaa !44 ; 2 uses
  %i.ec = load <16 x i32>, ptr %i.dz, align 64, !tbaa !44 ; 2 uses
  %i.ed = load <16 x i32>, ptr %i.ea, align 64, !tbaa !44
  %i.ee = trunc i64 %indvars.iv.i to i32
  %i.ef = add i32 %.044161, %i.ee                 ; 2 uses
  %i.eg = sdiv i32 %i.ef, %i.ca
  %i.eh = srem i32 %i.ef, %i.ca
  %i.ei = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !582
  %i.ej = load ptr, ptr %12, align 8, !tbaa !32, !noalias !582
  %i.ek = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !582
  %i.el = mul i64 %i.ek, %i.cx
  %i.em = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !582 ; 2 uses
  %i.en = mul i64 %i.el, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.en
  %i.ep = sext i32 %i.ei to i64
  %i.eq = shl nsw i32 %i.eg, 1                    ; 3 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = mul nsw i64 %i.ep, %i.er
  %i.et = mul i64 %i.es, %i.em
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.et
  %i.ev = shl nsw i32 %i.eh, 1                    ; 2 uses
  %i.ew = mul nsw i32 %i.ev, %i.bv
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ex ; 14 uses
  %i.ez = or disjoint i32 %i.ev, 1
  %i.fa = icmp slt i32 %i.ez, %i.bt               ; 8 uses
  %.not536.us.i = icmp slt i32 %i.eq, %i.bu
  br i1 %.not536.us.i, label %bb.e, label %bb.r

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit545.us.i
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ci ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ci ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ci
  %i.fe = load <16 x i32>, ptr %i.fd, align 64, !tbaa !44
  %i.ff = load <16 x i32>, ptr %i.fc, align 64, !tbaa !44
  %i.fg = add <16 x i32> %i.du, %i.dt
  %i.fh = add <16 x i32> %i.fg, %i.ff             ; 2 uses
  %i.fi = load <16 x i32>, ptr %i.fb, align 64, !tbaa !44
  %i.fj = add <16 x i32> %i.dm, %i.dl
  %i.fk = add <16 x i32> %i.fj, %i.fi             ; 2 uses
  %i.fl = load <16 x i32>, ptr %i.cz, align 64, !tbaa !44
  %i.fm = add <16 x i32> %i.de, %i.dd
  %i.fn = add <16 x i32> %i.fm, %i.fl
  %i.fo = add <16 x i32> %i.fn, %i.fh
  %i.fp = add <16 x i32> %i.fo, %i.fk
  %i.fq = add <16 x i32> %i.ec, %i.eb
  %i.fr = add <16 x i32> %i.fq, %i.fe
  %i.fs = sub <16 x i32> %i.fr, %i.fh
  %i.ft = add <16 x i32> %i.fs, %i.fk
  %i.fu = ashr <16 x i32> %i.fp, splat (i32 2)    ; 8 uses
  %i.fv = ashr <16 x i32> %i.ft, splat (i32 2)    ; 8 uses
  br i1 %i.ck, label %.split.us.i, label %bb.q

.split.us.i:                                      ; preds = %bb.e
  switch i32 %i.cl, label %bb.q [
    i32 4, label %bb.f
    i32 3, label %bb.i
    i32 2, label %bb.l
    i32 0, label %bb.o
  ]

bb.f:                                             ; preds = %.split.us.i
  store <16 x i32> %i.fu, ptr %i.ey, align 64, !tbaa !44
  br i1 %i.fa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  store <16 x i32> %i.fv, ptr %i.fw, align 64, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  switch i32 %i.bv, label %bb.q [
    i32 8, label %bb.i
    i32 4, label %bb.l
    i32 1, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h, %.split.us.i
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.by ; 2 uses
  %i.fy = shufflevector <16 x i32> %i.fu, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.fy, ptr %i.ey, align 32, !tbaa !44
  %i.fz = shufflevector <16 x i32> %i.fu, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.fz, ptr %i.fx, align 32, !tbaa !44
  br i1 %i.fa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.gb = shufflevector <16 x i32> %i.fv, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.gb, ptr %i.ga, align 32, !tbaa !44
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.gd = shufflevector <16 x i32> %i.fv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gd, ptr %i.gc, align 32, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  switch i32 %i.bv, label %bb.q [
    i32 4, label %bb.l
    i32 1, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k, %bb.h, %.split.us.i
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.by ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx.i ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx537.i ; 2 uses
  %i.gh = shufflevector <16 x i32> %i.fu, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.gh, ptr %i.ey, align 16, !tbaa !44
  %i.gi = shufflevector <16 x i32> %i.fu, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.gi, ptr %i.ge, align 16, !tbaa !44
  %i.gj = shufflevector <16 x i32> %i.fu, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.gj, ptr %i.gf, align 16, !tbaa !44
  %i.gk = shufflevector <16 x i32> %i.fu, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.gk, ptr %i.gg, align 16, !tbaa !44
  br i1 %i.fa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.gm = shufflevector <16 x i32> %i.fv, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.gm, ptr %i.gl, align 16, !tbaa !44
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.go = shufflevector <16 x i32> %i.fv, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.go, ptr %i.gn, align 16, !tbaa !44
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gq = shufflevector <16 x i32> %i.fv, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.gq, ptr %i.gp, align 16, !tbaa !44
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gs = shufflevector <16 x i32> %i.fv, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.gs, ptr %i.gr, align 16, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.cm, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.h, %.split.us.i
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %i.ey, <16 x i1> splat (i1 true), <16 x i32> %i.cq, <16 x i32> %i.fu, i32 4)
  br i1 %i.fa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.gt, <16 x i1> splat (i1 true), <16 x i32> %i.cq, <16 x i32> %i.fv, i32 4)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.k, %bb.h, %.split.us.i, %bb.e
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.cs
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4ncnn3MatD2Ev.exit545.us.i
  %.1525.us.i = phi ptr [ %i.ey, %_ZN4ncnn3MatD2Ev.exit545.us.i ], [ %i.gu, %bb.q ] ; 12 uses
  %i.gv = or disjoint i32 %i.eq, 1
  %.not536.us.1.i = icmp slt i32 %i.gv, %i.bu
  br i1 %.not536.us.1.i, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.gw = add <16 x i32> %i.dh, %i.dp
  %i.gx = add <16 x i32> %i.gw, %i.dx
  %i.gy = add <16 x i32> %i.dp, %i.eb
  %i.gz = add <16 x i32> %i.dx, %i.ec
  %i.ha = sub <16 x i32> %i.gy, %i.gz
  %i.hb = add <16 x i32> %i.ha, %i.ed
  %i.hc = ashr <16 x i32> %i.gx, splat (i32 2)    ; 8 uses
  %i.hd = ashr <16 x i32> %i.hb, splat (i32 2)    ; 8 uses
  br i1 %i.ck, label %.split.us.1.i, label %bb.ae

.split.us.1.i:                                    ; preds = %bb.s
  switch i32 %i.cl, label %bb.ae [
    i32 4, label %bb.t
    i32 3, label %bb.w
    i32 2, label %bb.z
    i32 0, label %bb.ac
  ]

bb.t:                                             ; preds = %.split.us.1.i
  store <16 x i32> %i.hc, ptr %.1525.us.i, align 64, !tbaa !44
  br i1 %i.fa, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.he = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 64
  store <16 x i32> %i.hd, ptr %i.he, align 64, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  switch i32 %i.bv, label %bb.ae [
    i32 8, label %bb.w
    i32 4, label %bb.z
    i32 1, label %bb.ac
  ]

bb.w:                                             ; preds = %bb.v, %.split.us.1.i
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.1525.us.i, i64 %i.by ; 2 uses
  %i.hg = shufflevector <16 x i32> %i.hc, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.hg, ptr %.1525.us.i, align 32, !tbaa !44
  %i.hh = shufflevector <16 x i32> %i.hc, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.hh, ptr %i.hf, align 32, !tbaa !44
  br i1 %i.fa, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hi = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 32
  %i.hj = shufflevector <16 x i32> %i.hd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.hj, ptr %i.hi, align 32, !tbaa !44
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hl = shufflevector <16 x i32> %i.hd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.hl, ptr %i.hk, align 32, !tbaa !44
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  switch i32 %i.bv, label %bb.ae [
    i32 4, label %bb.z
    i32 1, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y, %bb.v, %.split.us.1.i
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.1525.us.i, i64 %i.by ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 %.idx.i ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 %.idx537.i ; 2 uses
  %i.hp = shufflevector <16 x i32> %i.hc, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hp, ptr %.1525.us.i, align 16, !tbaa !44
  %i.hq = shufflevector <16 x i32> %i.hc, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hq, ptr %i.hm, align 16, !tbaa !44
  %i.hr = shufflevector <16 x i32> %i.hc, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.hr, ptr %i.hn, align 16, !tbaa !44
  %i.hs = shufflevector <16 x i32> %i.hc, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.hs, ptr %i.ho, align 16, !tbaa !44
  br i1 %i.fa, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ht = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 16
  %i.hu = shufflevector <16 x i32> %i.hd, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hu, ptr %i.ht, align 16, !tbaa !44
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hw = shufflevector <16 x i32> %i.hd, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hw, ptr %i.hv, align 16, !tbaa !44
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hy = shufflevector <16 x i32> %i.hd, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.hy, ptr %i.hx, align 16, !tbaa !44
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.ia = shufflevector <16 x i32> %i.hd, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.ia, ptr %i.hz, align 16, !tbaa !44
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.cm, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.y, %bb.v, %.split.us.1.i
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %.1525.us.i, <16 x i1> splat (i1 true), <16 x i32> %i.cq, <16 x i32> %i.hc, i32 4)
  br i1 %i.fa, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ib = getelementptr inbounds nuw i8, ptr %.1525.us.i, i64 4
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.ib, <16 x i1> splat (i1 true), <16 x i32> %i.cq, <16 x i32> %i.hd, i32 4)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.v, %.split.us.1.i, %bb.s, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit545.us.i, !llvm.loop !585

._crit_edge.us.i:                                 ; preds = %bb.ae
  %indvars.iv.next766.i = add nuw nsw i64 %indvars.iv765.i, 16 ; 3 uses
  %i.ic = or disjoint i64 %indvars.iv.next766.i, 15
  %i.id = icmp samesign ult i64 %i.ic, %i.bj
  br i1 %i.id, label %.lr.ph.us.i, label %.preheader663.loopexit.i, !llvm.loop !586

.preheader663.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.ie = trunc nsw i64 %indvars.iv.next766.i to i32
  br label %.preheader663.i

.preheader663.i:                                  ; preds = %.lr.ph675.i, %.preheader663.loopexit.i, %._crit_edge
  %.0502.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.ie, %.preheader663.loopexit.i ], [ %i.bi, %.lr.ph675.i ] ; 6 uses
  %i.if = or disjoint i32 %.0502.lcssa.i, 7
  %i.ig = icmp slt i32 %i.if, %.sroa.speculated120
  br i1 %i.ig, label %.lr.ph686.i, label %.preheader662.i

.lr.ph686.i:                                      ; preds = %.preheader663.i
  %i.ih = icmp sgt i32 %.sroa.speculated116, 0
  %i.ii = shl nsw i32 %.sroa.speculated116, 3
  %i.ij = sext i32 %i.ii to i64
  %i.ik = sext i32 %factor.op.mul672.i to i64
  %i.il = mul nsw i32 %.sroa.speculated116, 24
  %i.im = sext i32 %i.il to i64
  %i.in = shl nsw i32 %.sroa.speculated116, 5
  %i.io = sext i32 %i.in to i64                   ; 12 uses
  %i.ip = trunc i64 %i.by to i32
  %i.iq = insertelement <8 x i32> poison, i32 %i.ip, i64 0
  %i.ir = shufflevector <8 x i32> %i.iq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.is = mul <8 x i32> %i.ir, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.it = mul nsw i32 %i.bv, %i.bt
  %i.iu = sext i32 %i.it to i64
  br i1 %i.ih, label %.lr.ph.us689.preheader.i, label %.lr.ph686.split.preheader.i

.lr.ph686.split.preheader.i:                      ; preds = %.lr.ph686.i
  %15 = add i32 %.0502.lcssa.i, 15
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated120, i32 %15)
  %reass.sub = sub i32 %smax.i, %.0502.lcssa.i
  %16 = and i32 %reass.sub, -8
  %i.iv = add i32 %.0502.lcssa.i, %16
  br label %.preheader662.i

.lr.ph.us689.preheader.i:                         ; preds = %.lr.ph686.i
  %i.iw = sext i32 %.0502.lcssa.i to i64
  %wide.trip.count778.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us689.i

.lr.ph.us689.i:                                   ; preds = %._crit_edge.us690.i, %.lr.ph.us689.preheader.i
  %indvars.iv780.i = phi i64 [ %i.iw, %.lr.ph.us689.preheader.i ], [ %indvars.iv.next781.i, %._crit_edge.us690.i ] ; 2 uses
  %i.ix = trunc nsw i64 %indvars.iv780.i to i32   ; 2 uses
  %factor.op.mul.reass.us688.i = mul i32 %factor.op.mul672.i, %i.ix
  %i.iy = sext i32 %factor.op.mul.reass.us688.i to i64
  %i.iz = add i32 %i.at, %i.ix
  %i.ja = sdiv i32 %i.iz, %i.bv
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.iy
  br label %_ZN4ncnn3MatD2Ev.exit544.us.i

_ZN4ncnn3MatD2Ev.exit544.us.i:                    ; preds = %bb.av, %.lr.ph.us689.i
  %indvars.iv775.i = phi i64 [ 0, %.lr.ph.us689.i ], [ %indvars.iv.next776.i, %bb.av ] ; 3 uses
  %.idx875.i.a = shl nuw nsw i64 %indvars.iv775.i, 5
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.idx875.i.a ; 5 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.ij ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.ik ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.im ; 2 uses
  %i.jh = load <8 x i32>, ptr %i.je, align 32, !tbaa !44 ; 2 uses
  %i.ji = load <8 x i32>, ptr %i.jf, align 32, !tbaa !44 ; 2 uses
  %i.jj = load <8 x i32>, ptr %i.jg, align 32, !tbaa !44
  %i.jk = sub <8 x i32> %i.jh, %i.ji
  %i.jl = add <8 x i32> %i.jk, %i.jj
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.io ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.io ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.io ; 2 uses
  %i.jp = load <8 x i32>, ptr %i.jm, align 32, !tbaa !44 ; 2 uses
  %i.jq = load <8 x i32>, ptr %i.jn, align 32, !tbaa !44 ; 2 uses
  %i.jr = load <8 x i32>, ptr %i.jo, align 32, !tbaa !44
  %i.js = sub <8 x i32> %i.jp, %i.jq
  %i.jt = add <8 x i32> %i.js, %i.jr              ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.io ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.io ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.io ; 2 uses
  %i.jx = load <8 x i32>, ptr %i.ju, align 32, !tbaa !44 ; 2 uses
  %i.jy = load <8 x i32>, ptr %i.jv, align 32, !tbaa !44 ; 2 uses
  %i.jz = load <8 x i32>, ptr %i.jw, align 32, !tbaa !44
  %i.ka = sub <8 x i32> %i.jx, %i.jy
  %i.kb = add <8 x i32> %i.ka, %i.jz              ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.io
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.io
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.io
  %i.kf = load <8 x i32>, ptr %i.kc, align 32, !tbaa !44 ; 2 uses
  %i.kg = load <8 x i32>, ptr %i.kd, align 32, !tbaa !44 ; 2 uses
  %i.kh = load <8 x i32>, ptr %i.ke, align 32, !tbaa !44
  %i.ki = trunc i64 %indvars.iv775.i to i32
  %i.kj = add i32 %.044161, %i.ki                 ; 2 uses
  %i.kk = sdiv i32 %i.kj, %i.ca
  %i.kl = srem i32 %i.kj, %i.ca
  %i.km = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !587
  %i.kn = load ptr, ptr %12, align 8, !tbaa !32, !noalias !587
  %i.ko = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !587
  %i.kp = mul i64 %i.ko, %i.jb
  %i.kq = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !587 ; 2 uses
  %i.kr = mul i64 %i.kp, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kr
  %i.kt = sext i32 %i.km to i64
  %i.ku = shl nsw i32 %i.kk, 1                    ; 3 uses
  %i.kv = sext i32 %i.ku to i64
  %i.kw = mul nsw i64 %i.kt, %i.kv
  %i.kx = mul i64 %i.kw, %i.kq
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kx
  %i.kz = shl nsw i32 %i.kl, 1                    ; 2 uses
  %i.la = mul nsw i32 %i.kz, %i.bv
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.lb ; 9 uses
  %i.ld = or disjoint i32 %i.kz, 1
  %i.le = icmp slt i32 %i.ld, %i.bt               ; 6 uses
  %.not535.us.i = icmp slt i32 %i.ku, %i.bu
  br i1 %.not535.us.i, label %bb.af, label %bb.an

bb.af:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit544.us.i
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.io ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.io ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.io
  %i.li = load <8 x i32>, ptr %i.lh, align 32, !tbaa !44
  %i.lj = load <8 x i32>, ptr %i.lg, align 32, !tbaa !44
  %i.lk = add <8 x i32> %i.jy, %i.jx
  %i.ll = add <8 x i32> %i.lk, %i.lj              ; 2 uses
  %i.lm = load <8 x i32>, ptr %i.lf, align 32, !tbaa !44
  %i.ln = add <8 x i32> %i.jq, %i.jp
  %i.lo = add <8 x i32> %i.ln, %i.lm              ; 2 uses
  %i.lp = load <8 x i32>, ptr %i.jd, align 32, !tbaa !44
  %i.lq = add <8 x i32> %i.ji, %i.jh
  %i.lr = add <8 x i32> %i.lq, %i.lp
  %i.ls = add <8 x i32> %i.lr, %i.ll
  %i.lt = add <8 x i32> %i.ls, %i.lo
  %i.lu = add <8 x i32> %i.kg, %i.kf
  %i.lv = add <8 x i32> %i.lu, %i.li
  %i.lw = sub <8 x i32> %i.lv, %i.ll
  %i.lx = add <8 x i32> %i.lw, %i.lo
  %i.ly = ashr <8 x i32> %i.lt, splat (i32 2)     ; 3 uses
  %i.lz = ashr <8 x i32> %i.lx, splat (i32 2)     ; 3 uses
  %i.ma = bitcast <8 x i32> %i.lz to <4 x i64>    ; 2 uses
  switch i32 %i.bv, label %bb.am [
    i32 8, label %bb.ak
    i32 4, label %bb.ai
    i32 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %i.lc, <8 x i1> splat (i1 true), <8 x i32> %i.is, <8 x i32> %i.ly, i32 4)
  br i1 %i.le, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.mb, <8 x i1> splat (i1 true), <8 x i32> %i.is, <8 x i32> %i.lz, i32 4)
  br label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.mc = bitcast <8 x i32> %i.ly to <4 x i64>    ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.by ; 2 uses
  %i.me = shufflevector <4 x i64> %i.mc, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.me, ptr %i.lc, align 16, !tbaa !44
  %i.mf = shufflevector <4 x i64> %i.mc, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mf, ptr %i.md, align 16, !tbaa !44
  br i1 %i.le, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.mh = shufflevector <4 x i64> %i.ma, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mh, ptr %i.mg, align 16, !tbaa !44
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mj = shufflevector <4 x i64> %i.ma, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.mj, ptr %i.mi, align 16, !tbaa !44
  br label %bb.am

bb.ak:                                            ; preds = %bb.af
  store <8 x i32> %i.ly, ptr %i.lc, align 32, !tbaa !44
  br i1 %i.le, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  store <8 x i32> %i.lz, ptr %i.mk, align 32, !tbaa !44
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.iu
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN4ncnn3MatD2Ev.exit544.us.i
  %.1512.us.i = phi ptr [ %i.lc, %_ZN4ncnn3MatD2Ev.exit544.us.i ], [ %i.ml, %bb.am ] ; 7 uses
  %i.mm = or disjoint i32 %i.ku, 1
  %.not535.us.1.i = icmp slt i32 %i.mm, %i.bu
  br i1 %.not535.us.1.i, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.mn = add <8 x i32> %i.jl, %i.jt
  %i.mo = add <8 x i32> %i.mn, %i.kb
  %i.mp = add <8 x i32> %i.jt, %i.kf
  %i.mq = add <8 x i32> %i.kb, %i.kg
  %i.mr = sub <8 x i32> %i.mp, %i.mq
  %i.ms = add <8 x i32> %i.mr, %i.kh
  %i.mt = ashr <8 x i32> %i.mo, splat (i32 2)     ; 3 uses
  %i.mu = ashr <8 x i32> %i.ms, splat (i32 2)     ; 3 uses
  %i.mv = bitcast <8 x i32> %i.mu to <4 x i64>    ; 2 uses
  switch i32 %i.bv, label %bb.av [
    i32 8, label %bb.at
    i32 4, label %bb.ar
    i32 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %.1512.us.i, <8 x i1> splat (i1 true), <8 x i32> %i.is, <8 x i32> %i.mt, i32 4)
  br i1 %i.le, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.mw = getelementptr inbounds nuw i8, ptr %.1512.us.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.mw, <8 x i1> splat (i1 true), <8 x i32> %i.is, <8 x i32> %i.mu, i32 4)
  br label %bb.av

bb.ar:                                            ; preds = %bb.ao
  %i.mx = bitcast <8 x i32> %i.mt to <4 x i64>    ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.1512.us.i, i64 %i.by ; 2 uses
  %i.mz = shufflevector <4 x i64> %i.mx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.mz, ptr %.1512.us.i, align 16, !tbaa !44
  %i.na = shufflevector <4 x i64> %i.mx, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.na, ptr %i.my, align 16, !tbaa !44
  br i1 %i.le, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.nb = getelementptr inbounds nuw i8, ptr %.1512.us.i, i64 16
  %i.nc = shufflevector <4 x i64> %i.mv, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.nc, ptr %i.nb, align 16, !tbaa !44
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.ne = shufflevector <4 x i64> %i.mv, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.ne, ptr %i.nd, align 16, !tbaa !44
  br label %bb.av

bb.at:                                            ; preds = %bb.ao
  store <8 x i32> %i.mt, ptr %.1512.us.i, align 32, !tbaa !44
  br i1 %i.le, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nf = getelementptr inbounds nuw i8, ptr %.1512.us.i, i64 32
  store <8 x i32> %i.mu, ptr %i.nf, align 32, !tbaa !44
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %indvars.iv.next776.i = add nuw nsw i64 %indvars.iv775.i, 1 ; 2 uses
  %exitcond779.not.i = icmp eq i64 %indvars.iv.next776.i, %wide.trip.count778.i
  br i1 %exitcond779.not.i, label %._crit_edge.us690.i, label %_ZN4ncnn3MatD2Ev.exit544.us.i, !llvm.loop !590

._crit_edge.us690.i:                              ; preds = %bb.av
  %indvars.iv.next781.i = add nuw nsw i64 %indvars.iv780.i, 8 ; 3 uses
  %i.ng = icmp slt i64 %indvars.iv.next781.i, %invariant.op.i
  br i1 %i.ng, label %.lr.ph.us689.i, label %.preheader662.loopexit.i, !llvm.loop !591

.preheader662.loopexit.i:                         ; preds = %._crit_edge.us690.i
  %i.nh = trunc nsw i64 %indvars.iv.next781.i to i32
  br label %.preheader662.i

.preheader662.i:                                  ; preds = %.preheader662.loopexit.i, %.lr.ph686.split.preheader.i, %.preheader663.i
  %.1503.lcssa.i = phi i32 [ %.0502.lcssa.i, %.preheader663.i ], [ %i.nh, %.preheader662.loopexit.i ], [ %i.iv, %.lr.ph686.split.preheader.i ] ; 6 uses
  %i.ni = or disjoint i32 %.1503.lcssa.i, 3
  %i.nj = icmp slt i32 %i.ni, %.sroa.speculated120
  br i1 %i.nj, label %.lr.ph702.i, label %.preheader661.i

.lr.ph702.i:                                      ; preds = %.preheader662.i
  %i.nk = icmp sgt i32 %.sroa.speculated116, 0
  %i.nl = shl nsw i32 %.sroa.speculated116, 2
  %i.nm = sext i32 %i.nl to i64
  %i.nn = shl nsw i32 %.sroa.speculated116, 3
  %i.no = sext i32 %i.nn to i64
  %i.np = mul nsw i32 %.sroa.speculated116, 12
  %i.nq = sext i32 %i.np to i64
  %i.nr = sext i32 %factor.op.mul672.i to i64     ; 12 uses
  %i.ns = trunc i64 %i.by to i32
  %i.nt = insertelement <4 x i32> poison, i32 %i.ns, i64 0
  %i.nu = shufflevector <4 x i32> %i.nt, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.nv = mul <4 x i32> %i.nu, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.nw = mul nsw i32 %i.bv, %i.bt
  %i.nx = sext i32 %i.nw to i64
  br i1 %i.nk, label %.lr.ph.us705.preheader.i, label %.lr.ph702.split.preheader.i

.lr.ph702.split.preheader.i:                      ; preds = %.lr.ph702.i
  %17 = add i32 %.1503.lcssa.i, 7
  %smax783.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated120, i32 %17)
  %reass.sub167 = sub i32 %smax783.i, %.1503.lcssa.i
  %18 = and i32 %reass.sub167, -4
  %i.ny = add i32 %.1503.lcssa.i, %18
  br label %.preheader661.i

.lr.ph.us705.preheader.i:                         ; preds = %.lr.ph702.i
  %i.nz = sext i32 %.1503.lcssa.i to i64
  %wide.trip.count794.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us705.i

.lr.ph.us705.i:                                   ; preds = %._crit_edge.us706.i, %.lr.ph.us705.preheader.i
  %indvars.iv796.i = phi i64 [ %i.nz, %.lr.ph.us705.preheader.i ], [ %indvars.iv.next797.i, %._crit_edge.us706.i ] ; 2 uses
  %i.oa = trunc nsw i64 %indvars.iv796.i to i32   ; 2 uses
  %factor.op.mul.reass.us704.i = mul i32 %factor.op.mul672.i, %i.oa
  %i.ob = sext i32 %factor.op.mul.reass.us704.i to i64
  %i.oc = add i32 %i.at, %i.oa
  %i.od = sdiv i32 %i.oc, %i.bv
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ob
  br label %_ZN4ncnn3MatD2Ev.exit543.us.i

_ZN4ncnn3MatD2Ev.exit543.us.i:                    ; preds = %bb.bi, %.lr.ph.us705.i
  %indvars.iv791.i = phi i64 [ 0, %.lr.ph.us705.i ], [ %indvars.iv.next792.i, %bb.bi ] ; 3 uses
  %.idx876.i = shl nuw nsw i64 %indvars.iv791.i, 4
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 %.idx876.i ; 5 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.nm ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.no ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.nq ; 2 uses
  %i.ok = load <4 x i32>, ptr %i.oh, align 16, !tbaa !44 ; 2 uses
  %i.ol = load <4 x i32>, ptr %i.oi, align 16, !tbaa !44 ; 2 uses
  %i.om = load <4 x i32>, ptr %i.oj, align 16, !tbaa !44
  %i.on = sub <4 x i32> %i.ok, %i.ol
  %i.oo = add <4 x i32> %i.on, %i.om
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.nr ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.nr ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.nr ; 2 uses
  %i.os = load <4 x i32>, ptr %i.op, align 16, !tbaa !44 ; 2 uses
  %i.ot = load <4 x i32>, ptr %i.oq, align 16, !tbaa !44 ; 2 uses
  %i.ou = load <4 x i32>, ptr %i.or, align 16, !tbaa !44
  %i.ov = sub <4 x i32> %i.os, %i.ot
  %i.ow = add <4 x i32> %i.ov, %i.ou              ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.nr ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.nr ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.nr ; 2 uses
  %i.pa = load <4 x i32>, ptr %i.ox, align 16, !tbaa !44 ; 2 uses
  %i.pb = load <4 x i32>, ptr %i.oy, align 16, !tbaa !44 ; 2 uses
  %i.pc = load <4 x i32>, ptr %i.oz, align 16, !tbaa !44
  %i.pd = sub <4 x i32> %i.pa, %i.pb
  %i.pe = add <4 x i32> %i.pd, %i.pc              ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.nr
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.nr
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.nr
  %i.pi = load <4 x i32>, ptr %i.pf, align 16, !tbaa !44 ; 2 uses
  %i.pj = load <4 x i32>, ptr %i.pg, align 16, !tbaa !44 ; 2 uses
  %i.pk = load <4 x i32>, ptr %i.ph, align 16, !tbaa !44
  %i.pl = trunc i64 %indvars.iv791.i to i32
  %i.pm = add i32 %.044161, %i.pl                 ; 2 uses
  %i.pn = sdiv i32 %i.pm, %i.ca
  %i.po = srem i32 %i.pm, %i.ca
  %i.pp = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !592
  %i.pq = load ptr, ptr %12, align 8, !tbaa !32, !noalias !592
  %i.pr = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !592
  %i.ps = mul i64 %i.pr, %i.oe
  %i.pt = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !592 ; 2 uses
  %i.pu = mul i64 %i.ps, %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pu
  %i.pw = sext i32 %i.pp to i64
  %i.px = shl nsw i32 %i.pn, 1                    ; 3 uses
  %i.py = sext i32 %i.px to i64
  %i.pz = mul nsw i64 %i.pw, %i.py
  %i.qa = mul i64 %i.pz, %i.pt
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.qa
  %i.qc = shl nsw i32 %i.po, 1                    ; 2 uses
  %i.qd = mul nsw i32 %i.qc, %i.bv
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qe ; 6 uses
  %i.qg = or disjoint i32 %i.qc, 1
  %i.qh = icmp slt i32 %i.qg, %i.bt               ; 4 uses
  %.not534.us.i = icmp slt i32 %i.px, %i.bu
  br i1 %.not534.us.i, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit543.us.i
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.nr ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.nr ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.nr
  %i.ql = load <4 x i32>, ptr %i.qk, align 16, !tbaa !44
  %i.qm = load <4 x i32>, ptr %i.qj, align 16, !tbaa !44
  %i.qn = add <4 x i32> %i.pb, %i.pa
  %i.qo = add <4 x i32> %i.qn, %i.qm              ; 2 uses
  %i.qp = load <4 x i32>, ptr %i.qi, align 16, !tbaa !44
  %i.qq = add <4 x i32> %i.ot, %i.os
  %i.qr = add <4 x i32> %i.qq, %i.qp              ; 2 uses
  %i.qs = load <4 x i32>, ptr %i.og, align 16, !tbaa !44
  %i.qt = add <4 x i32> %i.ol, %i.ok
  %i.qu = add <4 x i32> %i.qt, %i.qs
  %i.qv = add <4 x i32> %i.qu, %i.qo
  %i.qw = add <4 x i32> %i.qv, %i.qr
  %i.qx = add <4 x i32> %i.pj, %i.pi
  %i.qy = add <4 x i32> %i.qx, %i.ql
  %i.qz = sub <4 x i32> %i.qy, %i.qo
  %i.ra = add <4 x i32> %i.qz, %i.qr
  %i.rb = ashr <4 x i32> %i.qw, splat (i32 2)     ; 2 uses
  %i.rc = ashr <4 x i32> %i.ra, splat (i32 2)     ; 2 uses
  switch i32 %i.bv, label %bb.bb [
    i32 4, label %bb.az
    i32 1, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr %i.qf, <4 x i1> splat (i1 true), <4 x i32> %i.nv, <4 x i32> %i.rb, i32 4)
  br i1 %i.qh, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.rd, <4 x i1> splat (i1 true), <4 x i32> %i.nv, <4 x i32> %i.rc, i32 4)
  br label %bb.bb

bb.az:                                            ; preds = %bb.aw
  store <4 x i32> %i.rb, ptr %i.qf, align 16, !tbaa !44
  br i1 %i.qh, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.re = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store <4 x i32> %i.rc, ptr %i.re, align 16, !tbaa !44
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.qf, i64 %i.nx
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN4ncnn3MatD2Ev.exit543.us.i
  %.1501.us.i = phi ptr [ %i.qf, %_ZN4ncnn3MatD2Ev.exit543.us.i ], [ %i.rf, %bb.bb ] ; 4 uses
  %i.rg = or disjoint i32 %i.px, 1
  %.not534.us.1.i = icmp slt i32 %i.rg, %i.bu
  br i1 %.not534.us.1.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.rh = add <4 x i32> %i.oo, %i.ow
  %i.ri = add <4 x i32> %i.rh, %i.pe
  %i.rj = add <4 x i32> %i.ow, %i.pi
  %i.rk = add <4 x i32> %i.pe, %i.pj
  %i.rl = sub <4 x i32> %i.rj, %i.rk
  %i.rm = add <4 x i32> %i.rl, %i.pk
  %i.rn = ashr <4 x i32> %i.ri, splat (i32 2)     ; 2 uses
  %i.ro = ashr <4 x i32> %i.rm, splat (i32 2)     ; 2 uses
  switch i32 %i.bv, label %bb.bi [
    i32 4, label %bb.bg
    i32 1, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr %.1501.us.i, <4 x i1> splat (i1 true), <4 x i32> %i.nv, <4 x i32> %i.rn, i32 4)
  br i1 %i.qh, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.rp = getelementptr inbounds nuw i8, ptr %.1501.us.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.rp, <4 x i1> splat (i1 true), <4 x i32> %i.nv, <4 x i32> %i.ro, i32 4)
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bd
  store <4 x i32> %i.rn, ptr %.1501.us.i, align 16, !tbaa !44
  br i1 %i.qh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.rq = getelementptr inbounds nuw i8, ptr %.1501.us.i, i64 16
  store <4 x i32> %i.ro, ptr %i.rq, align 16, !tbaa !44
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc
  %indvars.iv.next792.i = add nuw nsw i64 %indvars.iv791.i, 1 ; 2 uses
  %exitcond795.not.i = icmp eq i64 %indvars.iv.next792.i, %wide.trip.count794.i
  br i1 %exitcond795.not.i, label %._crit_edge.us706.i, label %_ZN4ncnn3MatD2Ev.exit543.us.i, !llvm.loop !595

._crit_edge.us706.i:                              ; preds = %bb.bi
  %indvars.iv.next797.i = add nuw nsw i64 %indvars.iv796.i, 4 ; 3 uses
  %i.rr = icmp slt i64 %indvars.iv.next797.i, %invariant.op878.i
  br i1 %i.rr, label %.lr.ph.us705.i, label %.preheader661.loopexit.i, !llvm.loop !596

.preheader661.loopexit.i:                         ; preds = %._crit_edge.us706.i
  %i.rs = trunc nsw i64 %indvars.iv.next797.i to i32
  br label %.preheader661.i

.preheader661.i:                                  ; preds = %.preheader661.loopexit.i, %.lr.ph702.split.preheader.i, %.preheader662.i
  %.2.lcssa.i = phi i32 [ %.1503.lcssa.i, %.preheader662.i ], [ %i.rs, %.preheader661.loopexit.i ], [ %i.ny, %.lr.ph702.split.preheader.i ] ; 6 uses
  %i.rt = or disjoint i32 %.2.lcssa.i, 1
  %i.ru = icmp slt i32 %i.rt, %.sroa.speculated120
  br i1 %i.ru, label %.lr.ph718.i, label %.preheader.i

.lr.ph718.i:                                      ; preds = %.preheader661.i
  %i.rv = icmp sgt i32 %.sroa.speculated116, 0
  %i.rw = shl nsw i32 %.sroa.speculated116, 1
  %i.rx = sext i32 %i.rw to i64
  %i.ry = shl nsw i32 %.sroa.speculated116, 2
  %i.rz = sext i32 %i.ry to i64
  %i.sa = mul nsw i32 %.sroa.speculated116, 6
  %i.sb = sext i32 %i.sa to i64
  %i.sc = shl nsw i32 %.sroa.speculated116, 3
  %i.sd = sext i32 %i.sc to i64                   ; 12 uses
  %i.se = sext i32 %i.bt to i64
  br i1 %i.rv, label %.lr.ph718.split.us.i, label %.lr.ph718.split.preheader.i

.lr.ph718.split.preheader.i:                      ; preds = %.lr.ph718.i
  %19 = add i32 %.2.lcssa.i, 3
  %smax799.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated120, i32 %19)
  %reass.sub168 = sub i32 %smax799.i, %.2.lcssa.i
  %20 = and i32 %reass.sub168, -2
  %i.sf = add i32 %.2.lcssa.i, %20
  br label %.preheader.i

.lr.ph718.split.us.i:                             ; preds = %.lr.ph718.i
  %i.sg = load ptr, ptr %12, align 8, !tbaa !32, !noalias !597
  %i.sh = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !597
  %i.si = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !597 ; 2 uses
  %factor.op.mul.i = mul i64 %i.si, %i.sh
  %i.sj = sext i32 %.2.lcssa.i to i64
  %wide.trip.count810.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us721.i

.lr.ph.us721.i:                                   ; preds = %._crit_edge.us722.i, %.lr.ph718.split.us.i
  %indvars.iv812.i = phi i64 [ %indvars.iv.next813.i, %._crit_edge.us722.i ], [ %i.sj, %.lr.ph718.split.us.i ] ; 3 uses
  %i.sk = trunc nsw i64 %indvars.iv812.i to i32
  %factor.op.mul.reass.us720.i = mul i32 %factor.op.mul672.i, %i.sk
  %i.sl = sext i32 %factor.op.mul.reass.us720.i to i64
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.sl
  %i.sn = add nsw i64 %indvars.iv812.i, %i.bl
  %.reass.i = mul i64 %factor.op.mul.i, %i.sn
  %i.so = getelementptr inbounds nuw i8, ptr %i.sg, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit542.us.i

_ZN4ncnn3MatD2Ev.exit542.us.i:                    ; preds = %bb.bp, %.lr.ph.us721.i
  %indvars.iv807.i = phi i64 [ 0, %.lr.ph.us721.i ], [ %indvars.iv.next808.i, %bb.bp ] ; 3 uses
  %.idx877.i = shl nuw nsw i64 %indvars.iv807.i, 3
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.idx877.i ; 6 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.rx ; 3 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.rz ; 3 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.sb ; 3 uses
  %i.st = load i32, ptr %i.sq, align 4, !tbaa !9  ; 2 uses
  %i.su = load i32, ptr %i.sr, align 4, !tbaa !9  ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !9  ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !9  ; 2 uses
  %i.sz = sub i32 %i.st, %i.su
  %i.ta = load i32, ptr %i.ss, align 4, !tbaa !9
  %i.tb = add nsw i32 %i.sz, %i.ta
  %i.tc = sub i32 %i.sw, %i.sy
  %i.td = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  %i.te = load i32, ptr %i.td, align 4, !tbaa !9
  %i.tf = add nsw i32 %i.tc, %i.te
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.sd ; 3 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.sd ; 3 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %i.sd ; 3 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.sd ; 3 uses
  %i.tk = load i32, ptr %i.tg, align 4, !tbaa !9
  %i.tl = load i32, ptr %i.th, align 4, !tbaa !9  ; 2 uses
  %i.tm = add nsw i32 %i.tl, %i.tk
  %i.tn = load i32, ptr %i.ti, align 4, !tbaa !9  ; 2 uses
  %i.to = add nsw i32 %i.tm, %i.tn                ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !9
  %i.tr = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !9  ; 2 uses
  %i.tt = add nsw i32 %i.ts, %i.tq
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !9  ; 2 uses
  %i.tw = add nsw i32 %i.tt, %i.tv                ; 2 uses
  %i.tx = sub i32 %i.tl, %i.tn
  %i.ty = load i32, ptr %i.tj, align 4, !tbaa !9
  %i.tz = add nsw i32 %i.ty, %i.tx                ; 2 uses
  %i.ua = sub i32 %i.ts, %i.tv
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tj, i64 4
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !9
  %i.ud = add nsw i32 %i.uc, %i.ua                ; 2 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.sd ; 3 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.sd ; 3 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.sd ; 3 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.sd ; 3 uses
  %i.ui = load i32, ptr %i.ue, align 4, !tbaa !9
  %i.uj = load i32, ptr %i.uf, align 4, !tbaa !9  ; 2 uses
  %i.uk = add nsw i32 %i.uj, %i.ui
  %i.ul = load i32, ptr %i.ug, align 4, !tbaa !9  ; 2 uses
  %i.um = add nsw i32 %i.uk, %i.ul                ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.ue, i64 4
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !9
  %i.up = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !9  ; 2 uses
  %i.ur = add nsw i32 %i.uq, %i.uo
  %i.us = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !9  ; 2 uses
  %i.uu = add nsw i32 %i.ur, %i.ut                ; 2 uses
  %i.uv = sub i32 %i.uj, %i.ul
  %i.uw = load i32, ptr %i.uh, align 4, !tbaa !9
  %i.ux = add nsw i32 %i.uw, %i.uv                ; 2 uses
  %i.uy = sub i32 %i.uq, %i.ut
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !9
  %i.vb = add nsw i32 %i.va, %i.uy                ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.sd ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %i.sd ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.sd ; 2 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.sd ; 2 uses
  %i.vg = load i32, ptr %i.vc, align 4, !tbaa !9
  %i.vh = load i32, ptr %i.vd, align 4, !tbaa !9  ; 2 uses
  %i.vi = load i32, ptr %i.ve, align 4, !tbaa !9  ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !9
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vd, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !9  ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !9  ; 2 uses
  %i.vp = load i32, ptr %i.vf, align 4, !tbaa !9
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !9
  %i.vs = trunc i64 %indvars.iv807.i to i32
  %i.vt = add i32 %.044161, %i.vs                 ; 2 uses
  %i.vu = sdiv i32 %i.vt, %i.ca
  %i.vv = srem i32 %i.vt, %i.ca
  %i.vw = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !597
  %i.vx = sext i32 %i.vw to i64
  %i.vy = shl nsw i32 %i.vu, 1                    ; 3 uses
  %i.vz = sext i32 %i.vy to i64
  %i.wa = mul i64 %i.si, %i.vz
  %i.wb = mul i64 %i.wa, %i.vx
  %i.wc = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.wb
  %i.wd = shl nsw i32 %i.vv, 1                    ; 2 uses
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.we ; 5 uses
  %i.wg = or disjoint i32 %i.wd, 1
  %i.wh = icmp slt i32 %i.wg, %i.bt               ; 2 uses
  %.not533.us.i = icmp slt i32 %i.vy, %i.bu
  br i1 %.not533.us.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit542.us.i
  %i.wi = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !9
  %i.wk = load i32, ptr %i.sp, align 4, !tbaa !9
  %i.wl = add i32 %i.su, %i.st
  %i.wm = add i32 %i.wl, %i.to
  %i.wn = add i32 %i.wm, %i.um
  %i.wo = add i32 %i.wn, %i.wk
  %i.wp = add i32 %i.sy, %i.sw
  %i.wq = add i32 %i.wp, %i.tw
  %i.wr = add i32 %i.wq, %i.uu
  %i.ws = add i32 %i.wr, %i.wj
  %i.wt = ashr i32 %i.wo, 2
  %i.wu = ashr i32 %i.ws, 2
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.by ; 2 uses
  store i32 %i.wt, ptr %i.wf, align 4, !tbaa !9
  store i32 %i.wu, ptr %i.wv, align 4, !tbaa !9
  br i1 %i.wh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ww = sub i32 %i.tw, %i.uu
  %i.wx = add i32 %i.ww, %i.vk
  %i.wy = add i32 %i.wx, %i.vm
  %i.wz = add i32 %i.wy, %i.vo
  %i.xa = ashr i32 %i.wz, 2
  %i.xb = sub i32 %i.to, %i.um
  %i.xc = add i32 %i.xb, %i.vg
  %i.xd = add i32 %i.xc, %i.vh
  %i.xe = add i32 %i.xd, %i.vi
  %i.xf = ashr i32 %i.xe, 2
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  store i32 %i.xf, ptr %i.xg, align 4, !tbaa !9
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  store i32 %i.xa, ptr %i.xh, align 4, !tbaa !9
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.wf, i64 %i.se
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZN4ncnn3MatD2Ev.exit542.us.i
  %.1492.us.i = phi ptr [ %i.wf, %_ZN4ncnn3MatD2Ev.exit542.us.i ], [ %i.xi, %bb.bl ] ; 3 uses
  %i.xj = or disjoint i32 %i.vy, 1
  %.not533.us.1.i = icmp slt i32 %i.xj, %i.bu
  br i1 %.not533.us.1.i, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.xk = add nsw i32 %i.tb, %i.tz
  %i.xl = add nsw i32 %i.xk, %i.ux
  %i.xm = add nsw i32 %i.tf, %i.ud
  %i.xn = add nsw i32 %i.xm, %i.vb
  %i.xo = ashr i32 %i.xl, 2
  %i.xp = ashr i32 %i.xn, 2
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.1492.us.i, i64 %i.by ; 2 uses
  store i32 %i.xo, ptr %.1492.us.i, align 4, !tbaa !9
  store i32 %i.xp, ptr %i.xq, align 4, !tbaa !9
  br i1 %i.wh, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.xr = add i32 %i.ud, %i.vm
  %i.xs = add i32 %i.vb, %i.vo
  %i.xt = sub i32 %i.xr, %i.xs
  %i.xu = add i32 %i.xt, %i.vr
  %i.xv = ashr i32 %i.xu, 2
  %i.xw = add i32 %i.tz, %i.vh
  %i.xx = add i32 %i.ux, %i.vi
  %i.xy = sub i32 %i.xw, %i.xx
  %i.xz = add i32 %i.xy, %i.vp
  %i.ya = ashr i32 %i.xz, 2
  %i.yb = getelementptr inbounds nuw i8, ptr %.1492.us.i, i64 4
  store i32 %i.ya, ptr %i.yb, align 4, !tbaa !9
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xq, i64 4
  store i32 %i.xv, ptr %i.yc, align 4, !tbaa !9
  br label %bb.bp

end_hunk_10
begin_hunk_11_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a

bb.p:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  %i.dv = add nsw i32 %.069, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.069, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #27
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [16 x i32]]], align 64  ; 27 uses
  %i.b = alloca [4 x [6 x [2 x i32]]], align 16   ; 50 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.hl

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 0, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %i.i, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 1, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 0, ptr %i.f, align 4, !tbaa !9
  %i.j = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, i32 1, i32 1)
  %i.k = load i32, ptr %i.d, align 4, !tbaa !9
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !9
  %i.m = load i32, ptr %i.c, align 4, !tbaa !9    ; 2 uses
  %.not132 = icmp sgt i32 %i.m, %i.l
  br i1 %.not132, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph135, %_ZN4ncnn3MatD2Ev.exit
  %.045133 = phi i32 [ %i.m, %.lr.ph135 ], [ %i.ef, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.dl = load i32, ptr %3, align 4, !tbaa !9
  %i.dm = mul nsw i32 %i.dl, %.045133             ; 6 uses
  %i.dn = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.hm

.noexc46:                                         ; preds = %bb.c
  %i.do = load ptr, ptr %4, align 8, !tbaa !32, !noalias !790
  %i.dp = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !790
  %i.dq = sext i32 %i.dn to i64
  %i.dr = mul i64 %i.dp, %i.dq
  %i.ds = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !790
  %i.dt = mul i64 %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dt ; 6 uses
  %i.dv = load i32, ptr %5, align 4, !tbaa !9
  %i.dw = sub nsw i32 %i.dv, %i.dm
  %i.dx = load i32, ptr %3, align 4, !tbaa !9
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.dx, i32 %i.dw) ; 12 uses
  %i.dy = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.ea = icmp sgt i32 %.sroa.speculated121, 15
  %i.eb = and i32 %.sroa.speculated121, 2147483632
  %i.ec = zext nneg i32 %.sroa.speculated121 to i64
  %i.ed = sext i32 %.sroa.speculated121 to i64    ; 4 uses
  %invariant.op.i = add nsw i64 %i.ed, -7
  %invariant.op560.i = add nsw i64 %i.ed, -3
  %i.ee = sext i32 %i.dm to i64                   ; 2 uses
  %invariant.op561.i = add nsw i64 %i.ed, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.ef = add nsw i32 %.045133, 1
  %i.eg = load i32, ptr %i.d, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.045133, %i.eg
  br i1 %.not.not, label %bb.c, label %._crit_edge136

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.eh = phi i32 [ %.pre, %.lr.ph ], [ %i.bxt, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.ei = phi i32 [ %i.dy, %.lr.ph ], [ %i.bxv, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044131 = phi i32 [ 0, %.lr.ph ], [ %i.bxu, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 8 uses
  %i.ej = sub nsw i32 %i.ei, %.044131
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.eh, i32 %i.ej) ; 42 uses
  %i.ek = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.noexc52, label %._crit_edge

._crit_edge:                                      ; preds = %.noexc52, %bb.d
  %i.em = load i32, ptr %i.ap, align 4, !tbaa !10 ; 21 uses
  %i.en = load i32, ptr %i.aq, align 8, !tbaa !19 ; 14 uses
  %i.eo = load i32, ptr %i.ar, align 8, !tbaa !16 ; 23 uses
  %i.ep = load i64, ptr %i.as, align 8, !tbaa !18
  %i.eq = sext i32 %i.eo to i64
  %i.er = mul i64 %i.ep, %i.eq                    ; 12 uses
  %i.es = add nsw i32 %i.em, 3
  %i.et = sdiv i32 %i.es, 4                       ; 10 uses
  %factor.op.mul107.i = mul i32 %.sroa.speculated117, 36 ; 5 uses
  br i1 %i.ea, label %.lr.ph110.i, label %.preheader86.i

.lr.ph110.i:                                      ; preds = %._crit_edge
  %i.eu = icmp sgt i32 %.sroa.speculated117, 0
  %i.ev = shl nsw i32 %.sroa.speculated117, 4
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i32 %.sroa.speculated117, 5
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul nsw i32 %.sroa.speculated117, 48
  %i.fa = sext i32 %i.ez to i64
  %i.fb = shl nsw i32 %.sroa.speculated117, 6
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul nsw i32 %.sroa.speculated117, 80
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul nsw i32 %.sroa.speculated117, 96
  %i.fg = sext i32 %i.ff to i64                   ; 30 uses
  %i.fh = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.eo)
  %i.fi = icmp eq i32 %i.fh, 1
  %i.fj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.eo, i1 true)
  %.idx.i = shl i64 %i.er, 3
  %.idx1218.i = mul i64 %i.er, 12
  %i.fk = icmp eq i32 %i.eo, 1
  %i.fl = trunc i64 %i.er to i32
  %i.fm = insertelement <16 x i32> poison, i32 %i.fl, i64 0
  %i.fn = shufflevector <16 x i32> %i.fm, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fo = mul <16 x i32> %i.fn, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.fp = mul nsw i32 %i.eo, %i.em
  %i.fq = sext i32 %i.fp to i64
  br i1 %i.eu, label %.lr.ph.us.preheader.i, label %.preheader86.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph110.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv432.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next433.i, %._crit_edge.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.fr = trunc nuw nsw i64 %indvars.iv432.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul107.i, %i.fr
  %i.fs = sext i32 %factor.op.mul.reass.us.i to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.fs
  %i.fu = add i32 %i.dm, %i.fr
  %i.fv = sdiv i32 %i.fu, %i.eo
  %i.fw = sext i32 %i.fv to i64
  br label %.preheader87.us.i

.preheader87.us.i:                                ; preds = %bb.aj, %.lr.ph.us.i
  %indvars.iv428.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next429.i, %bb.aj ] ; 3 uses
  %.idx556.i.a = shl nuw nsw i64 %indvars.iv428.i, 6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx556.i.a ; 7 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.ew ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.ey ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fa ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fc ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fe ; 2 uses
  %i.gd = load <16 x i32>, ptr %i.fx, align 64, !tbaa !44
  %i.ge = load <16 x i32>, ptr %i.fy, align 64, !tbaa !44 ; 2 uses
  %i.gf = load <16 x i32>, ptr %i.fz, align 64, !tbaa !44 ; 2 uses
  %i.gg = load <16 x i32>, ptr %i.ga, align 64, !tbaa !44 ; 2 uses
  %i.gh = load <16 x i32>, ptr %i.gb, align 64, !tbaa !44 ; 2 uses
  %i.gi = load <16 x i32>, ptr %i.gc, align 64, !tbaa !44
  %i.gj = add <16 x i32> %i.gf, %i.ge             ; 2 uses
  %i.gk = add <16 x i32> %i.gh, %i.gg             ; 2 uses
  %i.gl = sub <16 x i32> %i.ge, %i.gf             ; 2 uses
  %i.gm = sub <16 x i32> %i.gg, %i.gh             ; 2 uses
  %i.gn = add <16 x i32> %i.gj, %i.gd
  %i.go = add <16 x i32> %i.gn, %i.gk
  %i.gp = shl <16 x i32> %i.gm, splat (i32 1)
  %i.gq = add <16 x i32> %i.gp, %i.gl
  %i.gr = shl <16 x i32> %i.gk, splat (i32 2)
  %i.gs = add <16 x i32> %i.gr, %i.gj
  %i.gt = shl <16 x i32> %i.gm, splat (i32 3)
  %i.gu = add <16 x i32> %i.gt, %i.gl
  %i.gv = shl <16 x i32> %i.gi, splat (i32 2)
  %i.gw = add <16 x i32> %i.gu, %i.gv
  store <16 x i32> %i.go, ptr %i.a, align 64, !tbaa !44
  store <16 x i32> %i.gq, ptr %i.at, align 64, !tbaa !44
  store <16 x i32> %i.gs, ptr %i.au, align 64, !tbaa !44
  store <16 x i32> %i.gw, ptr %i.av, align 64, !tbaa !44
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fg ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fg ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fg ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fg ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.fg ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.fg ; 2 uses
  %i.hd = load <16 x i32>, ptr %i.gx, align 64, !tbaa !44
  %i.he = load <16 x i32>, ptr %i.gy, align 64, !tbaa !44 ; 2 uses
  %i.hf = load <16 x i32>, ptr %i.gz, align 64, !tbaa !44 ; 2 uses
  %i.hg = load <16 x i32>, ptr %i.ha, align 64, !tbaa !44 ; 2 uses
  %i.hh = load <16 x i32>, ptr %i.hb, align 64, !tbaa !44 ; 2 uses
  %i.hi = load <16 x i32>, ptr %i.hc, align 64, !tbaa !44
  %i.hj = add <16 x i32> %i.hf, %i.he             ; 2 uses
  %i.hk = add <16 x i32> %i.hh, %i.hg             ; 2 uses
  %i.hl = sub <16 x i32> %i.he, %i.hf             ; 2 uses
  %i.hm = sub <16 x i32> %i.hg, %i.hh             ; 2 uses
  %i.hn = add <16 x i32> %i.hj, %i.hd
  %i.ho = add <16 x i32> %i.hn, %i.hk
  %i.hp = shl <16 x i32> %i.hm, splat (i32 1)
  %i.hq = add <16 x i32> %i.hp, %i.hl
  %i.hr = shl <16 x i32> %i.hk, splat (i32 2)
  %i.hs = add <16 x i32> %i.hr, %i.hj
  %i.ht = shl <16 x i32> %i.hm, splat (i32 3)
  %i.hu = add <16 x i32> %i.ht, %i.hl
  %i.hv = shl <16 x i32> %i.hi, splat (i32 2)
  %i.hw = add <16 x i32> %i.hu, %i.hv
  store <16 x i32> %i.ho, ptr %i.bb, align 64, !tbaa !44
  store <16 x i32> %i.hq, ptr %i.bc, align 64, !tbaa !44
  store <16 x i32> %i.hs, ptr %i.bd, align 64, !tbaa !44
  store <16 x i32> %i.hw, ptr %i.be, align 64, !tbaa !44
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.fg ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.fg ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.fg ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.fg ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.fg ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.fg ; 2 uses
  %i.id = load <16 x i32>, ptr %i.hx, align 64, !tbaa !44
  %i.ie = load <16 x i32>, ptr %i.hy, align 64, !tbaa !44 ; 2 uses
  %i.if = load <16 x i32>, ptr %i.hz, align 64, !tbaa !44 ; 2 uses
  %i.ig = load <16 x i32>, ptr %i.ia, align 64, !tbaa !44 ; 2 uses
  %i.ih = load <16 x i32>, ptr %i.ib, align 64, !tbaa !44 ; 2 uses
  %i.ii = load <16 x i32>, ptr %i.ic, align 64, !tbaa !44
  %i.ij = add <16 x i32> %i.if, %i.ie             ; 2 uses
  %i.ik = add <16 x i32> %i.ih, %i.ig             ; 2 uses
  %i.il = sub <16 x i32> %i.ie, %i.if             ; 2 uses
  %i.im = sub <16 x i32> %i.ig, %i.ih             ; 2 uses
  %i.in = add <16 x i32> %i.ij, %i.id
  %i.io = add <16 x i32> %i.in, %i.ik
  %i.ip = shl <16 x i32> %i.im, splat (i32 1)
  %i.iq = add <16 x i32> %i.ip, %i.il
  %i.ir = shl <16 x i32> %i.ik, splat (i32 2)
  %i.is = add <16 x i32> %i.ir, %i.ij
  %i.it = shl <16 x i32> %i.im, splat (i32 3)
  %i.iu = add <16 x i32> %i.it, %i.il
  %i.iv = shl <16 x i32> %i.ii, splat (i32 2)
  %i.iw = add <16 x i32> %i.iu, %i.iv
  store <16 x i32> %i.io, ptr %i.bf, align 64, !tbaa !44
  store <16 x i32> %i.iq, ptr %i.bg, align 64, !tbaa !44
  store <16 x i32> %i.is, ptr %i.bh, align 64, !tbaa !44
  store <16 x i32> %i.iw, ptr %i.bi, align 64, !tbaa !44
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.fg ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.fg ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.fg ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.fg ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.fg ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.fg ; 2 uses
  %i.jd = load <16 x i32>, ptr %i.ix, align 64, !tbaa !44
  %i.je = load <16 x i32>, ptr %i.iy, align 64, !tbaa !44 ; 2 uses
  %i.jf = load <16 x i32>, ptr %i.iz, align 64, !tbaa !44 ; 2 uses
  %i.jg = load <16 x i32>, ptr %i.ja, align 64, !tbaa !44 ; 2 uses
  %i.jh = load <16 x i32>, ptr %i.jb, align 64, !tbaa !44 ; 2 uses
  %i.ji = load <16 x i32>, ptr %i.jc, align 64, !tbaa !44
  %i.jj = add <16 x i32> %i.jf, %i.je             ; 2 uses
  %i.jk = add <16 x i32> %i.jh, %i.jg             ; 2 uses
  %i.jl = sub <16 x i32> %i.je, %i.jf             ; 2 uses
  %i.jm = sub <16 x i32> %i.jg, %i.jh             ; 2 uses
  %i.jn = add <16 x i32> %i.jj, %i.jd
  %i.jo = add <16 x i32> %i.jn, %i.jk
  %i.jp = shl <16 x i32> %i.jm, splat (i32 1)
  %i.jq = add <16 x i32> %i.jp, %i.jl
  %i.jr = shl <16 x i32> %i.jk, splat (i32 2)
  %i.js = add <16 x i32> %i.jr, %i.jj
  %i.jt = shl <16 x i32> %i.jm, splat (i32 3)
  %i.ju = add <16 x i32> %i.jt, %i.jl
  %i.jv = shl <16 x i32> %i.ji, splat (i32 2)
  %i.jw = add <16 x i32> %i.ju, %i.jv
  store <16 x i32> %i.jo, ptr %i.bj, align 64, !tbaa !44
  store <16 x i32> %i.jq, ptr %i.bk, align 64, !tbaa !44
  store <16 x i32> %i.js, ptr %i.bl, align 64, !tbaa !44
  store <16 x i32> %i.jw, ptr %i.bm, align 64, !tbaa !44
end_hunk_11
begin_hunk_12_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a

bb.g:                                             ; preds = %.split.us.i
  store <16 x i32> %i.oe, ptr %.01155105.us.i, align 64, !tbaa !44
  br i1 %i.mw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.oo = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 64
  store <16 x i32> %i.oh, ptr %i.oo, align 64, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.my, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.op = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 128
  store <16 x i32> %i.ok, ptr %i.op, align 64, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.na, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.oq = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 192
  store <16 x i32> %i.on, ptr %i.oq, align 64, !tbaa !44
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  switch i32 %i.eo, label %bb.ah [
    i32 8, label %bb.n
    i32 4, label %bb.u
    i32 1, label %bb.ab
  ]

bb.n:                                             ; preds = %bb.m, %.split.us.i
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.01155105.us.i, i64 %i.er ; 4 uses
  %i.os = shufflevector <16 x i32> %i.oe, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.os, ptr %.01155105.us.i, align 32, !tbaa !44
  %i.ot = shufflevector <16 x i32> %i.oe, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ot, ptr %i.or, align 32, !tbaa !44
  br i1 %i.mw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ou = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 32
  %i.ov = shufflevector <16 x i32> %i.oh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.ov, ptr %i.ou, align 32, !tbaa !44
  %i.ow = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ox = shufflevector <16 x i32> %i.oh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ox, ptr %i.ow, align 32, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.my, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.oy = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 64
  %i.oz = shufflevector <16 x i32> %i.ok, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.oz, ptr %i.oy, align 32, !tbaa !44
  %i.pa = getelementptr inbounds nuw i8, ptr %i.or, i64 64
  %i.pb = shufflevector <16 x i32> %i.ok, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.pb, ptr %i.pa, align 32, !tbaa !44
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.na, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.pc = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 96
  %i.pd = shufflevector <16 x i32> %i.on, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %i.pd, ptr %i.pc, align 32, !tbaa !44
  %i.pe = getelementptr inbounds nuw i8, ptr %i.or, i64 96
  %i.pf = shufflevector <16 x i32> %i.on, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.pf, ptr %i.pe, align 32, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  switch i32 %i.eo, label %bb.ah [
    i32 4, label %bb.u
    i32 1, label %bb.ab
  ]

bb.u:                                             ; preds = %bb.t, %bb.m, %.split.us.i
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.01155105.us.i, i64 %i.er ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 %.idx.i ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 %.idx1218.i ; 4 uses
  %i.pj = shufflevector <16 x i32> %i.oe, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.pj, ptr %.01155105.us.i, align 16, !tbaa !44
  %i.pk = shufflevector <16 x i32> %i.oe, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.pk, ptr %i.pg, align 16, !tbaa !44
  %i.pl = shufflevector <16 x i32> %i.oe, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.pl, ptr %i.ph, align 16, !tbaa !44
  %i.pm = shufflevector <16 x i32> %i.oe, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.pm, ptr %i.pi, align 16, !tbaa !44
  br i1 %i.mw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.pn = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 16
  %i.po = shufflevector <16 x i32> %i.oh, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.po, ptr %i.pn, align 16, !tbaa !44
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pq = shufflevector <16 x i32> %i.oh, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.pq, ptr %i.pp, align 16, !tbaa !44
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.ps = shufflevector <16 x i32> %i.oh, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.ps, ptr %i.pr, align 16, !tbaa !44
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pu = shufflevector <16 x i32> %i.oh, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.pu, ptr %i.pt, align 16, !tbaa !44
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.my, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.pv = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 32
  %i.pw = shufflevector <16 x i32> %i.ok, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.pw, ptr %i.pv, align 16, !tbaa !44
  %i.px = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  %i.py = shufflevector <16 x i32> %i.ok, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.py, ptr %i.px, align 16, !tbaa !44
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.qa = shufflevector <16 x i32> %i.ok, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.qa, ptr %i.pz, align 16, !tbaa !44
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %i.qc = shufflevector <16 x i32> %i.ok, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.qc, ptr %i.qb, align 16, !tbaa !44
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.na, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.qd = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 48
  %i.qe = shufflevector <16 x i32> %i.on, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.qe, ptr %i.qd, align 16, !tbaa !44
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  %i.qg = shufflevector <16 x i32> %i.on, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.qg, ptr %i.qf, align 16, !tbaa !44
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ph, i64 48
  %i.qi = shufflevector <16 x i32> %i.on, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.qi, ptr %i.qh, align 16, !tbaa !44
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pi, i64 48
  %i.qk = shufflevector <16 x i32> %i.on, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.qk, ptr %i.qj, align 16, !tbaa !44
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.fk, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa, %bb.t, %bb.m, %.split.us.i
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr %.01155105.us.i, <16 x i1> splat (i1 true), <16 x i32> %i.fo, <16 x i32> %i.oe, i32 4)
  br i1 %i.mw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ql = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 4
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.ql, <16 x i1> splat (i1 true), <16 x i32> %i.fo, <16 x i32> %i.oh, i32 4)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.my, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.qm = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 8
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.qm, <16 x i1> splat (i1 true), <16 x i32> %i.fo, <16 x i32> %i.ok, i32 4)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.na, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.qn = getelementptr inbounds nuw i8, ptr %.01155105.us.i, i64 12
  call void @llvm.x86.avx512.mask.scatter.dpi.512(ptr nonnull %i.qn, <16 x i1> splat (i1 true), <16 x i32> %i.fo, <16 x i32> %i.on, i32 4)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.aa, %bb.t, %bb.m, %.split.us.i, %bb.f
  %i.qo = getelementptr inbounds [4 x i8], ptr %.01155105.us.i, i64 %i.fq
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.e
  %.11156.us.i = phi ptr [ %.01155105.us.i, %bb.e ], [ %i.qo, %bb.ah ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.aj, label %bb.e, !llvm.loop !796

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next429.i = add nuw nsw i64 %indvars.iv428.i, 1 ; 2 uses
  %exitcond431.not.i = icmp eq i64 %indvars.iv.next429.i, %wide.trip.count.i
  br i1 %exitcond431.not.i, label %._crit_edge.us.i, label %.preheader87.us.i, !llvm.loop !797

._crit_edge.us.i:                                 ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %indvars.iv.next433.i = add nuw nsw i64 %indvars.iv432.i, 16 ; 3 uses
  %i.qp = or disjoint i64 %indvars.iv.next433.i, 15
  %i.qq = icmp samesign ult i64 %i.qp, %i.ec
  br i1 %i.qq, label %.lr.ph.us.i, label %.preheader86.loopexit.i, !llvm.loop !798

.preheader86.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.qr = trunc nsw i64 %indvars.iv.next433.i to i32
  br label %.preheader86.i

.preheader86.i:                                   ; preds = %.lr.ph110.i, %.preheader86.loopexit.i, %._crit_edge
  %.01120.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.qr, %.preheader86.loopexit.i ], [ %i.eb, %.lr.ph110.i ] ; 6 uses
  %i.qs = or disjoint i32 %.01120.lcssa.i, 7
  %i.qt = icmp slt i32 %i.qs, %.sroa.speculated121
  br i1 %i.qt, label %.lr.ph157.i, label %.preheader84.i

.lr.ph157.i:                                      ; preds = %.preheader86.i
  %i.qu = icmp sgt i32 %.sroa.speculated117, 0
  %i.qv = shl nsw i32 %.sroa.speculated117, 3
  %i.qw = sext i32 %i.qv to i64
  %i.qx = shl nsw i32 %.sroa.speculated117, 4
  %i.qy = sext i32 %i.qx to i64
  %i.qz = mul nsw i32 %.sroa.speculated117, 24
  %i.ra = sext i32 %i.qz to i64
  %i.rb = shl nsw i32 %.sroa.speculated117, 5
  %i.rc = sext i32 %i.rb to i64
  %i.rd = mul nsw i32 %.sroa.speculated117, 40
  %i.re = sext i32 %i.rd to i64
  %i.rf = mul nsw i32 %.sroa.speculated117, 48
  %i.rg = sext i32 %i.rf to i64                   ; 30 uses
  %i.rh = trunc i64 %i.er to i32
  %i.ri = insertelement <8 x i32> poison, i32 %i.rh, i64 0
  %i.rj = shufflevector <8 x i32> %i.ri, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.rk = mul <8 x i32> %i.rj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 16 uses
  %i.rl = mul nsw i32 %i.eo, %i.em
  %i.rm = sext i32 %i.rl to i64                   ; 3 uses
  br i1 %i.qu, label %.lr.ph.us160.preheader.i, label %.lr.ph157.split.preheader.i

.lr.ph157.split.preheader.i:                      ; preds = %.lr.ph157.i
  %15 = add i32 %.01120.lcssa.i, 15
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated121, i32 %15)
  %reass.sub = sub i32 %smax.i, %.01120.lcssa.i
  %16 = and i32 %reass.sub, -8
  %i.rn = add i32 %.01120.lcssa.i, %16
  br label %.preheader84.i

.lr.ph.us160.preheader.i:                         ; preds = %.lr.ph157.i
  %i.ro = sext i32 %.01120.lcssa.i to i64
  %wide.trip.count446.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us160.i

.lr.ph.us160.i:                                   ; preds = %._crit_edge.us161.i, %.lr.ph.us160.preheader.i
  %indvars.iv448.i = phi i64 [ %i.ro, %.lr.ph.us160.preheader.i ], [ %indvars.iv.next449.i, %._crit_edge.us161.i ] ; 2 uses
  %i.rp = trunc nsw i64 %indvars.iv448.i to i32   ; 2 uses
  %factor.op.mul.reass.us159.i = mul i32 %factor.op.mul107.i, %i.rp
  %i.rq = sext i32 %factor.op.mul.reass.us159.i to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.rq
  %i.rs = add i32 %i.dm, %i.rp
  %i.rt = sdiv i32 %i.rs, %i.eo
  %i.ru = sext i32 %i.rt to i64
  br label %.preheader85.us.i

.preheader85.us.i:                                ; preds = %bb.do, %.lr.ph.us160.i
  %indvars.iv443.i = phi i64 [ 0, %.lr.ph.us160.i ], [ %indvars.iv.next444.i, %bb.do ] ; 3 uses
  %.idx557.i.a = shl nuw nsw i64 %indvars.iv443.i, 5
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rr, i64 %.idx557.i.a ; 7 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.qw ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.qy ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.ra ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.rc ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.re ; 2 uses
  %i.sb = load <8 x i32>, ptr %i.rw, align 32, !tbaa !44 ; 2 uses
  %i.sc = load <8 x i32>, ptr %i.rx, align 32, !tbaa !44 ; 2 uses
  %i.sd = load <8 x i32>, ptr %i.ry, align 32, !tbaa !44 ; 2 uses
  %i.se = load <8 x i32>, ptr %i.rz, align 32, !tbaa !44 ; 2 uses
  %i.sf = load <8 x i32>, ptr %i.sa, align 32, !tbaa !44
  %i.sg = add <8 x i32> %i.sc, %i.sb              ; 2 uses
  %i.sh = add <8 x i32> %i.se, %i.sd              ; 2 uses
  %i.si = sub <8 x i32> %i.sb, %i.sc              ; 2 uses
  %i.sj = sub <8 x i32> %i.sd, %i.se              ; 2 uses
  %i.sk = shl <8 x i32> %i.sj, splat (i32 1)
  %i.sl = add <8 x i32> %i.sk, %i.si
  %i.sm = shl <8 x i32> %i.sh, splat (i32 2)
  %i.sn = add <8 x i32> %i.sm, %i.sg
  %i.so = shl <8 x i32> %i.sj, splat (i32 3)
  %i.sp = add <8 x i32> %i.so, %i.si
  %i.sq = shl <8 x i32> %i.sf, splat (i32 2)
  %i.sr = add <8 x i32> %i.sp, %i.sq
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.rg ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.rg ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.rg ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.rg ; 2 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.rg ; 2 uses
  %i.sx = load <8 x i32>, ptr %i.ss, align 32, !tbaa !44 ; 2 uses
  %i.sy = load <8 x i32>, ptr %i.st, align 32, !tbaa !44 ; 2 uses
  %i.sz = load <8 x i32>, ptr %i.su, align 32, !tbaa !44 ; 2 uses
  %i.ta = load <8 x i32>, ptr %i.sv, align 32, !tbaa !44 ; 2 uses
  %i.tb = load <8 x i32>, ptr %i.sw, align 32, !tbaa !44
  %i.tc = add <8 x i32> %i.sy, %i.sx              ; 2 uses
  %i.td = add <8 x i32> %i.ta, %i.sz              ; 2 uses
  %i.te = sub <8 x i32> %i.sx, %i.sy              ; 2 uses
  %i.tf = sub <8 x i32> %i.sz, %i.ta              ; 2 uses
  %i.tg = shl <8 x i32> %i.tf, splat (i32 1)
  %i.th = add <8 x i32> %i.tg, %i.te              ; 2 uses
  %i.ti = shl <8 x i32> %i.td, splat (i32 2)
  %i.tj = add <8 x i32> %i.ti, %i.tc              ; 2 uses
  %i.tk = shl <8 x i32> %i.tf, splat (i32 3)
  %i.tl = add <8 x i32> %i.tk, %i.te
  %i.tm = shl <8 x i32> %i.tb, splat (i32 2)
  %i.tn = add <8 x i32> %i.tl, %i.tm              ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.rg ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %i.rg ; 2 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %i.rg ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.rg ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.rg ; 2 uses
  %i.tt = load <8 x i32>, ptr %i.to, align 32, !tbaa !44 ; 2 uses
  %i.tu = load <8 x i32>, ptr %i.tp, align 32, !tbaa !44 ; 2 uses
  %i.tv = load <8 x i32>, ptr %i.tq, align 32, !tbaa !44 ; 2 uses
  %i.tw = load <8 x i32>, ptr %i.tr, align 32, !tbaa !44 ; 2 uses
  %i.tx = load <8 x i32>, ptr %i.ts, align 32, !tbaa !44
  %i.ty = add <8 x i32> %i.tu, %i.tt              ; 2 uses
  %i.tz = add <8 x i32> %i.tw, %i.tv              ; 2 uses
  %i.ua = sub <8 x i32> %i.tt, %i.tu              ; 2 uses
  %i.ub = sub <8 x i32> %i.tv, %i.tw              ; 2 uses
  %i.uc = shl <8 x i32> %i.ub, splat (i32 1)
  %i.ud = add <8 x i32> %i.uc, %i.ua              ; 2 uses
  %i.ue = shl <8 x i32> %i.tz, splat (i32 2)
  %i.uf = add <8 x i32> %i.ue, %i.ty              ; 2 uses
  %i.ug = shl <8 x i32> %i.ub, splat (i32 3)
  %i.uh = add <8 x i32> %i.ug, %i.ua
  %i.ui = shl <8 x i32> %i.tx, splat (i32 2)
  %i.uj = add <8 x i32> %i.uh, %i.ui              ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.rg ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.rg ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.rg ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.rg ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.rg ; 2 uses
  %i.up = load <8 x i32>, ptr %i.uk, align 32, !tbaa !44 ; 2 uses
  %i.uq = load <8 x i32>, ptr %i.ul, align 32, !tbaa !44 ; 2 uses
  %i.ur = load <8 x i32>, ptr %i.um, align 32, !tbaa !44 ; 2 uses
  %i.us = load <8 x i32>, ptr %i.un, align 32, !tbaa !44 ; 2 uses
  %i.ut = load <8 x i32>, ptr %i.uo, align 32, !tbaa !44
  %i.uu = add <8 x i32> %i.uq, %i.up              ; 2 uses
  %i.uv = add <8 x i32> %i.us, %i.ur              ; 2 uses
  %i.uw = sub <8 x i32> %i.up, %i.uq              ; 2 uses
  %i.ux = sub <8 x i32> %i.ur, %i.us              ; 2 uses
  %i.uy = shl <8 x i32> %i.ux, splat (i32 1)
  %i.uz = add <8 x i32> %i.uy, %i.uw              ; 2 uses
  %i.va = shl <8 x i32> %i.uv, splat (i32 2)
  %i.vb = add <8 x i32> %i.va, %i.uu              ; 2 uses
  %i.vc = shl <8 x i32> %i.ux, splat (i32 3)
  %i.vd = add <8 x i32> %i.vc, %i.uw
  %i.ve = shl <8 x i32> %i.ut, splat (i32 2)
  %i.vf = add <8 x i32> %i.vd, %i.ve              ; 2 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.rg ; 2 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.rg ; 2 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.rg ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.rg ; 2 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.rg ; 2 uses
  %i.vl = load <8 x i32>, ptr %i.vg, align 32, !tbaa !44 ; 2 uses
  %i.vm = load <8 x i32>, ptr %i.vh, align 32, !tbaa !44 ; 2 uses
  %i.vn = load <8 x i32>, ptr %i.vi, align 32, !tbaa !44 ; 2 uses
  %i.vo = load <8 x i32>, ptr %i.vj, align 32, !tbaa !44 ; 2 uses
  %i.vp = load <8 x i32>, ptr %i.vk, align 32, !tbaa !44
  %i.vq = add <8 x i32> %i.vm, %i.vl              ; 2 uses
  %i.vr = add <8 x i32> %i.vo, %i.vn              ; 2 uses
  %i.vs = sub <8 x i32> %i.vl, %i.vm              ; 2 uses
  %i.vt = sub <8 x i32> %i.vn, %i.vo              ; 2 uses
  %i.vu = shl <8 x i32> %i.vt, splat (i32 1)
  %i.vv = add <8 x i32> %i.vu, %i.vs              ; 2 uses
  %i.vw = shl <8 x i32> %i.vr, splat (i32 2)
  %i.vx = add <8 x i32> %i.vw, %i.vq              ; 2 uses
  %i.vy = shl <8 x i32> %i.vt, splat (i32 3)
  %i.vz = add <8 x i32> %i.vy, %i.vs
  %i.wa = shl <8 x i32> %i.vp, splat (i32 2)
  %i.wb = add <8 x i32> %i.vz, %i.wa              ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.rg
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.rg
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.rg
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.rg
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.rg
  %i.wh = trunc i64 %indvars.iv443.i to i32
  %i.wi = add i32 %.044131, %i.wh                 ; 2 uses
  %i.wj = sdiv i32 %i.wi, %i.et
  %i.wk = srem i32 %i.wi, %i.et
  %i.wl = load <8 x i32>, ptr %i.wc, align 32, !tbaa !44 ; 2 uses
  %i.wm = load <8 x i32>, ptr %i.wd, align 32, !tbaa !44 ; 2 uses
  %i.wn = load <8 x i32>, ptr %i.we, align 32, !tbaa !44 ; 2 uses
  %i.wo = load <8 x i32>, ptr %i.wf, align 32, !tbaa !44 ; 2 uses
  %i.wp = load <8 x i32>, ptr %i.wg, align 32, !tbaa !44
  %i.wq = add <8 x i32> %i.wm, %i.wl              ; 2 uses
  %i.wr = add <8 x i32> %i.wo, %i.wn              ; 2 uses
  %i.ws = sub <8 x i32> %i.wl, %i.wm
  %i.wt = sub <8 x i32> %i.wn, %i.wo              ; 2 uses
  %i.wu = shl <8 x i32> %i.wt, splat (i32 3)
  %i.wv = shl <8 x i32> %i.ws, splat (i32 2)      ; 2 uses
  %i.ww = shl <8 x i32> %i.wr, splat (i32 4)
  %i.wx = shl <8 x i32> %i.wq, splat (i32 2)
  %i.wy = shl <8 x i32> %i.wp, splat (i32 4)
  %i.wz = shl <8 x i32> %i.wt, splat (i32 5)
  %i.xa = load i32, ptr %i.ap, align 4, !tbaa !10, !noalias !799
  %i.xb = load ptr, ptr %12, align 8, !tbaa !32, !noalias !799
  %i.xc = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !799
  %i.xd = mul i64 %i.xc, %i.ru
  %i.xe = load i64, ptr %i.ba, align 8, !tbaa !36, !noalias !799 ; 2 uses
  %i.xf = mul i64 %i.xd, %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.xf
  %i.xh = sext i32 %i.xa to i64
  %i.xi = shl nsw i32 %i.wj, 2                    ; 5 uses
  %i.xj = sext i32 %i.xi to i64
  %i.xk = mul nsw i64 %i.xh, %i.xj
  %i.xl = mul i64 %i.xk, %i.xe
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xl
  %i.xn = shl nsw i32 %i.wk, 2                    ; 4 uses
  %i.xo = mul nsw i32 %i.xn, %i.eo
  %i.xp = sext i32 %i.xo to i64
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.xp ; 15 uses
  %i.xr = or disjoint i32 %i.xn, 1
  %i.xs = icmp slt i32 %i.xr, %i.em               ; 12 uses
  %i.xt = or disjoint i32 %i.xn, 2
  %i.xu = icmp slt i32 %i.xt, %i.em               ; 12 uses
  %i.xv = or disjoint i32 %i.xn, 3
  %i.xw = icmp slt i32 %i.xv, %i.em               ; 12 uses
  %.not1216.us.i = icmp slt i32 %i.xi, %i.en
  br i1 %.not1216.us.i, label %bb.ak, label %bb.be

bb.ak:                                            ; preds = %.preheader85.us.i
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.rg ; 2 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %i.rg ; 2 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.rg ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.rg ; 2 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.rg
  %i.yc = load <8 x i32>, ptr %i.yb, align 32, !tbaa !44
  %i.yd = add <8 x i32> %i.wr, %i.wq
  %i.ye = add <8 x i32> %i.yd, %i.yc
  %i.yf = shl <8 x i32> %i.ye, splat (i32 2)
  %i.yg = load <8 x i32>, ptr %i.ya, align 32, !tbaa !44
  %i.yh = add <8 x i32> %i.vr, %i.vq
  %i.yi = add <8 x i32> %i.yh, %i.yg              ; 2 uses
  %i.yj = load <8 x i32>, ptr %i.xz, align 32, !tbaa !44
  %i.yk = add <8 x i32> %i.uv, %i.uu
  %i.yl = add <8 x i32> %i.yk, %i.yj              ; 2 uses
  %i.ym = load <8 x i32>, ptr %i.xy, align 32, !tbaa !44
  %i.yn = add <8 x i32> %i.tz, %i.ty
end_hunk_12
begin_hunk_13_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
bb.ck:                                            ; preds = %bb.cj
  %i.aek = getelementptr inbounds nuw i8, ptr %.11192.us.1.i, i64 32
  %i.ael = shufflevector <4 x i64> %i.adu, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ael, ptr %i.aek, align 16, !tbaa !44
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aed, i64 32
  %i.aen = shufflevector <4 x i64> %i.adu, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.aen, ptr %i.aem, align 16, !tbaa !44
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  br i1 %i.xw, label %bb.cm, label %bb.ct

bb.cm:                                            ; preds = %bb.cl
  %i.aeo = getelementptr inbounds nuw i8, ptr %.11192.us.1.i, i64 48
  %i.aep = shufflevector <4 x i64> %i.ady, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.aep, ptr %i.aeo, align 16, !tbaa !44
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aed, i64 48
  %i.aer = shufflevector <4 x i64> %i.ady, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.aer, ptr %i.aeq, align 16, !tbaa !44
  br label %bb.ct

bb.cn:                                            ; preds = %bb.ca
  store <8 x i32> %i.adm, ptr %.11192.us.1.i, align 32, !tbaa !44
  br i1 %i.xs, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.aes = getelementptr inbounds nuw i8, ptr %.11192.us.1.i, i64 32
  store <8 x i32> %i.adp, ptr %i.aes, align 32, !tbaa !44
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br i1 %i.xu, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.aet = getelementptr inbounds nuw i8, ptr %.11192.us.1.i, i64 64
  store <8 x i32> %i.adt, ptr %i.aet, align 32, !tbaa !44
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  br i1 %i.xw, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.aeu = getelementptr inbounds nuw i8, ptr %.11192.us.1.i, i64 96
  store <8 x i32> %i.adx, ptr %i.aeu, align 32, !tbaa !44
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cm, %bb.cl, %bb.cg, %bb.cf, %bb.ca
  %i.aev = getelementptr inbounds [4 x i8], ptr %.11192.us.1.i, i64 %i.rm
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.bz
  %.11192.us.2.i = phi ptr [ %.11192.us.1.i, %bb.bz ], [ %i.aev, %bb.ct ] ; 13 uses
  %i.aew = or disjoint i32 %i.xi, 3
  %.not1216.us.3.i = icmp slt i32 %i.aew, %i.en
  br i1 %.not1216.us.3.i, label %bb.cv, label %bb.do

bb.cv:                                            ; preds = %bb.cu
  %i.aex = add <8 x i32> %i.uj, %i.tn             ; 2 uses
  %i.aey = add <8 x i32> %i.wb, %i.vf             ; 2 uses
  %i.aez = sub <8 x i32> %i.tn, %i.uj             ; 2 uses
  %i.afa = sub <8 x i32> %i.vf, %i.wb             ; 2 uses
  %i.afb = add <8 x i32> %i.sr, %i.aex
  %i.afc = add <8 x i32> %i.afb, %i.aey
  %i.afd = shl <8 x i32> %i.afa, splat (i32 1)
  %i.afe = add <8 x i32> %i.afd, %i.aez
  %i.aff = shl <8 x i32> %i.aey, splat (i32 2)
  %i.afg = add <8 x i32> %i.aff, %i.aex
  %i.afh = shl <8 x i32> %i.afa, splat (i32 3)
  %i.afi = add <8 x i32> %i.afh, %i.aez
  %i.afj = add <8 x i32> %i.afi, %i.wv
  %i.afk = add <8 x i32> %i.afj, %i.wz
  %i.afl = add <8 x i32> %i.afk, %i.wy
  %i.afm = sitofp fast <8 x i32> %i.afc to <8 x float>
  %i.afn = fmul fast <8 x float> %i.afm, splat (float f0x3AE38E39)
  %i.afo = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afn) ; 3 uses
  %i.afp = sitofp fast <8 x i32> %i.afe to <8 x float>
  %i.afq = fmul fast <8 x float> %i.afp, splat (float f0x3AE38E39)
  %i.afr = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afq) ; 3 uses
  %i.afs = bitcast <8 x i32> %i.afr to <4 x i64>  ; 2 uses
  %i.aft = sitofp fast <8 x i32> %i.afg to <8 x float>
  %i.afu = fmul fast <8 x float> %i.aft, splat (float f0x3AE38E39)
  %i.afv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afu) ; 3 uses
  %i.afw = bitcast <8 x i32> %i.afv to <4 x i64>  ; 2 uses
  %i.afx = sitofp fast <8 x i32> %i.afl to <8 x float>
  %i.afy = fmul fast <8 x float> %i.afx, splat (float f0x3AE38E39)
  %i.afz = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afy) ; 3 uses
  %i.aga = bitcast <8 x i32> %i.afz to <4 x i64>  ; 2 uses
  switch i32 %i.eo, label %bb.do [
    i32 8, label %bb.di
    i32 4, label %bb.dc
    i32 1, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %.11192.us.2.i, <8 x i1> splat (i1 true), <8 x i32> %i.rk, <8 x i32> %i.afo, i32 4)
  br i1 %i.xs, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.agb = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.agb, <8 x i1> splat (i1 true), <8 x i32> %i.rk, <8 x i32> %i.afr, i32 4)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  br i1 %i.xu, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.agc = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 8
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.agc, <8 x i1> splat (i1 true), <8 x i32> %i.rk, <8 x i32> %i.afv, i32 4)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %i.xw, label %bb.db, label %bb.do

bb.db:                                            ; preds = %bb.da
  %i.agd = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 12
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr nonnull %i.agd, <8 x i1> splat (i1 true), <8 x i32> %i.rk, <8 x i32> %i.afz, i32 4)
  br label %bb.do

bb.dc:                                            ; preds = %bb.cv
  %i.age = bitcast <8 x i32> %i.afo to <4 x i64>  ; 2 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %.11192.us.2.i, i64 %i.er ; 4 uses
  %i.agg = shufflevector <4 x i64> %i.age, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.agg, ptr %.11192.us.2.i, align 16, !tbaa !44
  %i.agh = shufflevector <4 x i64> %i.age, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.agh, ptr %i.agf, align 16, !tbaa !44
  br i1 %i.xs, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.agi = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 16
  %i.agj = shufflevector <4 x i64> %i.afs, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.agj, ptr %i.agi, align 16, !tbaa !44
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  %i.agl = shufflevector <4 x i64> %i.afs, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.agl, ptr %i.agk, align 16, !tbaa !44
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  br i1 %i.xu, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.agm = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 32
  %i.agn = shufflevector <4 x i64> %i.afw, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.agn, ptr %i.agm, align 16, !tbaa !44
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agf, i64 32
  %i.agp = shufflevector <4 x i64> %i.afw, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.agp, ptr %i.ago, align 16, !tbaa !44
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  br i1 %i.xw, label %bb.dh, label %bb.do

bb.dh:                                            ; preds = %bb.dg
  %i.agq = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 48
  %i.agr = shufflevector <4 x i64> %i.aga, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.agr, ptr %i.agq, align 16, !tbaa !44
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agf, i64 48
  %i.agt = shufflevector <4 x i64> %i.aga, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.agt, ptr %i.ags, align 16, !tbaa !44
  br label %bb.do

bb.di:                                            ; preds = %bb.cv
  store <8 x i32> %i.afo, ptr %.11192.us.2.i, align 32, !tbaa !44
  br i1 %i.xs, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.agu = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 32
  store <8 x i32> %i.afr, ptr %i.agu, align 32, !tbaa !44
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br i1 %i.xu, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.agv = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 64
  store <8 x i32> %i.afv, ptr %i.agv, align 32, !tbaa !44
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  br i1 %i.xw, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.agw = getelementptr inbounds nuw i8, ptr %.11192.us.2.i, i64 96
  store <8 x i32> %i.afz, ptr %i.agw, align 32, !tbaa !44
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dh, %bb.dg, %bb.db, %bb.da, %bb.cv, %bb.cu
  %indvars.iv.next444.i = add nuw nsw i64 %indvars.iv443.i, 1 ; 2 uses
  %exitcond447.not.i = icmp eq i64 %indvars.iv.next444.i, %wide.trip.count446.i
  br i1 %exitcond447.not.i, label %._crit_edge.us161.i, label %.preheader85.us.i, !llvm.loop !802

._crit_edge.us161.i:                              ; preds = %bb.do
  %indvars.iv.next449.i = add nuw nsw i64 %indvars.iv448.i, 8 ; 3 uses
  %i.agx = icmp slt i64 %indvars.iv.next449.i, %invariant.op.i
  br i1 %i.agx, label %.lr.ph.us160.i, label %.preheader84.loopexit.i, !llvm.loop !803

.preheader84.loopexit.i:                          ; preds = %._crit_edge.us161.i
  %i.agy = trunc nsw i64 %indvars.iv.next449.i to i32
  br label %.preheader84.i

.preheader84.i:                                   ; preds = %.preheader84.loopexit.i, %.lr.ph157.split.preheader.i, %.preheader86.i
  %.11121.lcssa.i = phi i32 [ %.01120.lcssa.i, %.preheader86.i ], [ %i.agy, %.preheader84.loopexit.i ], [ %i.rn, %.lr.ph157.split.preheader.i ] ; 6 uses
  %i.agz = or disjoint i32 %.11121.lcssa.i, 3
  %i.aha = icmp slt i32 %i.agz, %.sroa.speculated121
  br i1 %i.aha, label %.lr.ph209.i, label %.preheader82.i

.lr.ph209.i:                                      ; preds = %.preheader84.i
  %i.ahb = icmp sgt i32 %.sroa.speculated117, 0
  %i.ahc = shl nsw i32 %.sroa.speculated117, 2
  %i.ahd = sext i32 %i.ahc to i64
  %i.ahe = shl nsw i32 %.sroa.speculated117, 3
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = mul nsw i32 %.sroa.speculated117, 12
  %i.ahh = sext i32 %i.ahg to i64
  %i.ahi = shl nsw i32 %.sroa.speculated117, 4
  %i.ahj = sext i32 %i.ahi to i64
  %i.ahk = mul nsw i32 %.sroa.speculated117, 20
  %i.ahl = sext i32 %i.ahk to i64
  %i.ahm = mul nsw i32 %.sroa.speculated117, 24
  %i.ahn = sext i32 %i.ahm to i64                 ; 30 uses
  %i.aho = trunc i64 %i.er to i32
  %i.ahp = insertelement <4 x i32> poison, i32 %i.aho, i64 0
  %i.ahq = shufflevector <4 x i32> %i.ahp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ahr = mul <4 x i32> %i.ahq, <i32 0, i32 1, i32 2, i32 3> ; 16 uses
  %i.ahs = mul nsw i32 %i.eo, %i.em
  %i.aht = sext i32 %i.ahs to i64                 ; 3 uses
  br i1 %i.ahb, label %.lr.ph.us212.preheader.i, label %.lr.ph209.split.preheader.i

.lr.ph209.split.preheader.i:                      ; preds = %.lr.ph209.i
  %17 = add i32 %.11121.lcssa.i, 7
  %smax451.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated121, i32 %17)
  %reass.sub137 = sub i32 %smax451.i, %.11121.lcssa.i
  %18 = and i32 %reass.sub137, -4
  %i.ahu = add i32 %.11121.lcssa.i, %18
  br label %.preheader82.i

.lr.ph.us212.preheader.i:                         ; preds = %.lr.ph209.i
  %i.ahv = sext i32 %.11121.lcssa.i to i64
  %wide.trip.count463.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us212.i

.lr.ph.us212.i:                                   ; preds = %._crit_edge.us213.i, %.lr.ph.us212.preheader.i
  %indvars.iv465.i = phi i64 [ %i.ahv, %.lr.ph.us212.preheader.i ], [ %indvars.iv.next466.i, %._crit_edge.us213.i ] ; 2 uses
  %i.ahw = trunc nsw i64 %indvars.iv465.i to i32  ; 2 uses
  %factor.op.mul.reass.us211.i = mul i32 %factor.op.mul107.i, %i.ahw
  %i.ahx = sext i32 %factor.op.mul.reass.us211.i to i64
  %i.ahy = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ahx
  %i.ahz = add i32 %i.dm, %i.ahw
  %i.aia = sdiv i32 %i.ahz, %i.eo
  %i.aib = sext i32 %i.aia to i64
  br label %.preheader83.us.i

.preheader83.us.i:                                ; preds = %bb.fv, %.lr.ph.us212.i
  %indvars.iv460.i = phi i64 [ 0, %.lr.ph.us212.i ], [ %indvars.iv.next461.i, %bb.fv ] ; 3 uses
  %.idx558.i = shl nuw nsw i64 %indvars.iv460.i, 4
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahy, i64 %.idx558.i ; 7 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ahd ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ahf ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ahh ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ahj ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ahl ; 2 uses
  %i.aii = load <4 x i32>, ptr %i.aid, align 16, !tbaa !44 ; 2 uses
  %i.aij = load <4 x i32>, ptr %i.aie, align 16, !tbaa !44 ; 2 uses
  %i.aik = load <4 x i32>, ptr %i.aif, align 16, !tbaa !44 ; 2 uses
  %i.ail = load <4 x i32>, ptr %i.aig, align 16, !tbaa !44 ; 2 uses
  %i.aim = load <4 x i32>, ptr %i.aih, align 16, !tbaa !44
  %i.ain = add <4 x i32> %i.aij, %i.aii           ; 2 uses
  %i.aio = add <4 x i32> %i.ail, %i.aik           ; 2 uses
  %i.aip = sub <4 x i32> %i.aii, %i.aij           ; 2 uses
  %i.aiq = sub <4 x i32> %i.aik, %i.ail           ; 2 uses
  %i.air = shl <4 x i32> %i.aiq, splat (i32 1)
  %i.ais = add <4 x i32> %i.air, %i.aip
  %i.ait = shl <4 x i32> %i.aio, splat (i32 2)
  %i.aiu = add <4 x i32> %i.ait, %i.ain
  %i.aiv = shl <4 x i32> %i.aiq, splat (i32 3)
  %i.aiw = add <4 x i32> %i.aiv, %i.aip
  %i.aix = shl <4 x i32> %i.aim, splat (i32 2)
  %i.aiy = add <4 x i32> %i.aiw, %i.aix
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.ahn ; 2 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.ahn ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.ahn ; 2 uses
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.ahn ; 2 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %i.ahn ; 2 uses
  %i.aje = load <4 x i32>, ptr %i.aiz, align 16, !tbaa !44 ; 2 uses
  %i.ajf = load <4 x i32>, ptr %i.aja, align 16, !tbaa !44 ; 2 uses
  %i.ajg = load <4 x i32>, ptr %i.ajb, align 16, !tbaa !44 ; 2 uses
  %i.ajh = load <4 x i32>, ptr %i.ajc, align 16, !tbaa !44 ; 2 uses
  %i.aji = load <4 x i32>, ptr %i.ajd, align 16, !tbaa !44
  %i.ajj = add <4 x i32> %i.ajf, %i.aje           ; 2 uses
  %i.ajk = add <4 x i32> %i.ajh, %i.ajg           ; 2 uses
  %i.ajl = sub <4 x i32> %i.aje, %i.ajf           ; 2 uses
  %i.ajm = sub <4 x i32> %i.ajg, %i.ajh           ; 2 uses
  %i.ajn = shl <4 x i32> %i.ajm, splat (i32 1)
  %i.ajo = add <4 x i32> %i.ajn, %i.ajl           ; 2 uses
  %i.ajp = shl <4 x i32> %i.ajk, splat (i32 2)
  %i.ajq = add <4 x i32> %i.ajp, %i.ajj           ; 2 uses
  %i.ajr = shl <4 x i32> %i.ajm, splat (i32 3)
  %i.ajs = add <4 x i32> %i.ajr, %i.ajl
  %i.ajt = shl <4 x i32> %i.aji, splat (i32 2)
  %i.aju = add <4 x i32> %i.ajs, %i.ajt           ; 2 uses
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %i.ahn ; 2 uses
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %i.ahn ; 2 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %i.ahn ; 2 uses
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.ahn ; 2 uses
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.ahn ; 2 uses
  %i.aka = load <4 x i32>, ptr %i.ajv, align 16, !tbaa !44 ; 2 uses
  %i.akb = load <4 x i32>, ptr %i.ajw, align 16, !tbaa !44 ; 2 uses
  %i.akc = load <4 x i32>, ptr %i.ajx, align 16, !tbaa !44 ; 2 uses
  %i.akd = load <4 x i32>, ptr %i.ajy, align 16, !tbaa !44 ; 2 uses
  %i.ake = load <4 x i32>, ptr %i.ajz, align 16, !tbaa !44
  %i.akf = add <4 x i32> %i.akb, %i.aka           ; 2 uses
  %i.akg = add <4 x i32> %i.akd, %i.akc           ; 2 uses
  %i.akh = sub <4 x i32> %i.aka, %i.akb           ; 2 uses
  %i.aki = sub <4 x i32> %i.akc, %i.akd           ; 2 uses
  %i.akj = shl <4 x i32> %i.aki, splat (i32 1)
  %i.akk = add <4 x i32> %i.akj, %i.akh           ; 2 uses
  %i.akl = shl <4 x i32> %i.akg, splat (i32 2)
  %i.akm = add <4 x i32> %i.akl, %i.akf           ; 2 uses
  %i.akn = shl <4 x i32> %i.aki, splat (i32 3)
  %i.ako = add <4 x i32> %i.akn, %i.akh
  %i.akp = shl <4 x i32> %i.ake, splat (i32 2)
  %i.akq = add <4 x i32> %i.ako, %i.akp           ; 2 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.ahn ; 2 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.ahn ; 2 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.ahn ; 2 uses
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.ajy, i64 %i.ahn ; 2 uses
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %i.ahn ; 2 uses
  %i.akw = load <4 x i32>, ptr %i.akr, align 16, !tbaa !44 ; 2 uses
  %i.akx = load <4 x i32>, ptr %i.aks, align 16, !tbaa !44 ; 2 uses
  %i.aky = load <4 x i32>, ptr %i.akt, align 16, !tbaa !44 ; 2 uses
  %i.akz = load <4 x i32>, ptr %i.aku, align 16, !tbaa !44 ; 2 uses
  %i.ala = load <4 x i32>, ptr %i.akv, align 16, !tbaa !44
  %i.alb = add <4 x i32> %i.akx, %i.akw           ; 2 uses
  %i.alc = add <4 x i32> %i.akz, %i.aky           ; 2 uses
  %i.ald = sub <4 x i32> %i.akw, %i.akx           ; 2 uses
  %i.ale = sub <4 x i32> %i.aky, %i.akz           ; 2 uses
  %i.alf = shl <4 x i32> %i.ale, splat (i32 1)
  %i.alg = add <4 x i32> %i.alf, %i.ald           ; 2 uses
  %i.alh = shl <4 x i32> %i.alc, splat (i32 2)
  %i.ali = add <4 x i32> %i.alh, %i.alb           ; 2 uses
  %i.alj = shl <4 x i32> %i.ale, splat (i32 3)
  %i.alk = add <4 x i32> %i.alj, %i.ald
  %i.all = shl <4 x i32> %i.ala, splat (i32 2)
  %i.alm = add <4 x i32> %i.alk, %i.all           ; 2 uses
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.akr, i64 %i.ahn ; 2 uses
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.aks, i64 %i.ahn ; 2 uses
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.akt, i64 %i.ahn ; 2 uses
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.ahn ; 2 uses
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.ahn ; 2 uses
  %i.als = load <4 x i32>, ptr %i.aln, align 16, !tbaa !44 ; 2 uses
  %i.alt = load <4 x i32>, ptr %i.alo, align 16, !tbaa !44 ; 2 uses
  %i.alu = load <4 x i32>, ptr %i.alp, align 16, !tbaa !44 ; 2 uses
  %i.alv = load <4 x i32>, ptr %i.alq, align 16, !tbaa !44 ; 2 uses
  %i.alw = load <4 x i32>, ptr %i.alr, align 16, !tbaa !44
  %i.alx = add <4 x i32> %i.alt, %i.als           ; 2 uses
  %i.aly = add <4 x i32> %i.alv, %i.alu           ; 2 uses
  %i.alz = sub <4 x i32> %i.als, %i.alt           ; 2 uses
  %i.ama = sub <4 x i32> %i.alu, %i.alv           ; 2 uses
  %i.amb = shl <4 x i32> %i.ama, splat (i32 1)
  %i.amc = add <4 x i32> %i.amb, %i.alz           ; 2 uses
  %i.amd = shl <4 x i32> %i.aly, splat (i32 2)
  %i.ame = add <4 x i32> %i.amd, %i.alx           ; 2 uses
  %i.amf = shl <4 x i32> %i.ama, splat (i32 3)
  %i.amg = add <4 x i32> %i.amf, %i.alz
  %i.amh = shl <4 x i32> %i.alw, splat (i32 2)
  %i.ami = add <4 x i32> %i.amg, %i.amh           ; 2 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.aln, i64 %i.ahn
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.alo, i64 %i.ahn
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.alp, i64 %i.ahn
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.alq, i64 %i.ahn
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.alr, i64 %i.ahn
  %i.amo = trunc i64 %indvars.iv460.i to i32
  %i.amp = add i32 %.044131, %i.amo               ; 2 uses
  %i.amq = sdiv i32 %i.amp, %i.et
  %i.amr = srem i32 %i.amp, %i.et
  %i.ams = load <4 x i32>, ptr %i.amj, align 16, !tbaa !44 ; 2 uses
  %i.amt = load <4 x i32>, ptr %i.amk, align 16, !tbaa !44 ; 2 uses
  %i.amu = load <4 x i32>, ptr %i.aml, align 16, !tbaa !44 ; 2 uses
  %i.amv = load <4 x i32>, ptr %i.amm, align 16, !tbaa !44 ; 2 uses
  %i.amw = load <4 x i32>, ptr %i.amn, align 16, !tbaa !44
  %i.amx = add <4 x i32> %i.amt, %i.ams           ; 2 uses
  %i.amy = add <4 x i32> %i.amv, %i.amu           ; 2 uses
  %i.amz = sub <4 x i32> %i.ams, %i.amt
  %i.ana = sub <4 x i32> %i.amu, %i.amv           ; 2 uses
  %i.anb = shl <4 x i32> %i.ana, splat (i32 3)
  %i.anc = shl <4 x i32> %i.amz, splat (i32 2)    ; 2 uses
  %i.and = shl <4 x i32> %i.amy, splat (i32 4)
  %i.ane = shl <4 x i32> %i.amx, splat (i32 2)
  %i.anf = shl <4 x i32> %i.amw, splat (i32 4)
  %i.ang = shl <4 x i32> %i.ana, splat (i32 5)
  %i.anh = load i32, ptr %i.ap, align 4, !tbaa !10, !noalias !804
  %i.ani = load ptr, ptr %12, align 8, !tbaa !32, !noalias !804
  %i.anj = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !804
  %i.ank = mul i64 %i.anj, %i.aib
  %i.anl = load i64, ptr %i.ba, align 8, !tbaa !36, !noalias !804 ; 2 uses
  %i.anm = mul i64 %i.ank, %i.anl
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ani, i64 %i.anm
  %i.ano = sext i32 %i.anh to i64
  %i.anp = shl nsw i32 %i.amq, 2                  ; 5 uses
  %i.anq = sext i32 %i.anp to i64
  %i.anr = mul nsw i64 %i.ano, %i.anq
  %i.ans = mul i64 %i.anr, %i.anl
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ann, i64 %i.ans
  %i.anu = shl nsw i32 %i.amr, 2                  ; 4 uses
  %i.anv = mul nsw i32 %i.anu, %i.eo
  %i.anw = sext i32 %i.anv to i64
  %i.anx = getelementptr inbounds [4 x i8], ptr %i.ant, i64 %i.anw ; 10 uses
  %i.any = or disjoint i32 %i.anu, 1
  %i.anz = icmp slt i32 %i.any, %i.em             ; 8 uses
  %i.aoa = or disjoint i32 %i.anu, 2
  %i.aob = icmp slt i32 %i.aoa, %i.em             ; 8 uses
  %i.aoc = or disjoint i32 %i.anu, 3
  %i.aod = icmp slt i32 %i.aoc, %i.em             ; 8 uses
  %.not1215.us.i = icmp slt i32 %i.anp, %i.en
  br i1 %.not1215.us.i, label %bb.dp, label %bb.ed

bb.dp:                                            ; preds = %.preheader83.us.i
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ahn ; 2 uses
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.aoe, i64 %i.ahn ; 2 uses
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %i.aof, i64 %i.ahn ; 2 uses
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %i.ahn ; 2 uses
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %i.ahn
  %i.aoj = load <4 x i32>, ptr %i.aoi, align 16, !tbaa !44
  %i.aok = add <4 x i32> %i.amy, %i.amx
  %i.aol = add <4 x i32> %i.aok, %i.aoj
  %i.aom = shl <4 x i32> %i.aol, splat (i32 2)
  %i.aon = load <4 x i32>, ptr %i.aoh, align 16, !tbaa !44
  %i.aoo = add <4 x i32> %i.aly, %i.alx
  %i.aop = add <4 x i32> %i.aoo, %i.aon           ; 2 uses
  %i.aoq = load <4 x i32>, ptr %i.aog, align 16, !tbaa !44
  %i.aor = add <4 x i32> %i.alc, %i.alb
  %i.aos = add <4 x i32> %i.aor, %i.aoq           ; 2 uses
  %i.aot = load <4 x i32>, ptr %i.aof, align 16, !tbaa !44
  %i.aou = add <4 x i32> %i.akg, %i.akf
end_hunk_13
begin_hunk_14_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.ek, %bb.ej, %bb.ee
  %i.arp = getelementptr inbounds [4 x i8], ptr %.11188.us.i, i64 %i.aht
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.ed
  %.11188.us.1.i = phi ptr [ %.11188.us.i, %bb.ed ], [ %i.arp, %bb.er ] ; 10 uses
  %i.arq = or disjoint i32 %i.anp, 2
  %.not1215.us.2.i = icmp slt i32 %i.arq, %i.en
  br i1 %.not1215.us.2.i, label %bb.et, label %bb.fh

bb.et:                                            ; preds = %bb.es
  %i.arr = add <4 x i32> %i.akm, %i.ajq           ; 2 uses
  %i.ars = add <4 x i32> %i.ame, %i.ali           ; 2 uses
  %i.art = sub <4 x i32> %i.ajq, %i.akm           ; 2 uses
  %i.aru = sub <4 x i32> %i.ali, %i.ame           ; 2 uses
  %i.arv = add <4 x i32> %i.aiu, %i.arr
  %i.arw = add <4 x i32> %i.arv, %i.ars
  %i.arx = shl <4 x i32> %i.aru, splat (i32 1)
  %i.ary = add <4 x i32> %i.arx, %i.art
  %i.arz = shl <4 x i32> %i.ars, splat (i32 2)
  %i.asa = add <4 x i32> %i.arz, %i.arr
  %i.asb = shl <4 x i32> %i.aru, splat (i32 3)
  %i.asc = add <4 x i32> %i.asb, %i.art
  %i.asd = add <4 x i32> %i.asc, %i.ane
  %i.ase = add <4 x i32> %i.asd, %i.and
  %i.asf = sitofp fast <4 x i32> %i.arw to <4 x float>
  %i.asg = fmul fast <4 x float> %i.asf, splat (float f0x3AE38E39)
  %i.ash = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.asg) ; 2 uses
  %i.asi = sitofp fast <4 x i32> %i.ary to <4 x float>
  %i.asj = fmul fast <4 x float> %i.asi, splat (float f0x3AE38E39)
  %i.ask = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.asj) ; 2 uses
  %i.asl = sitofp fast <4 x i32> %i.asa to <4 x float>
  %i.asm = fmul fast <4 x float> %i.asl, splat (float f0x3AE38E39)
  %i.asn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.asm) ; 2 uses
  %i.aso = sitofp fast <4 x i32> %i.ase to <4 x float>
  %i.asp = fmul fast <4 x float> %i.aso, splat (float f0x3AE38E39)
  %i.asq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.asp) ; 2 uses
  switch i32 %i.eo, label %bb.fg [
    i32 4, label %bb.fa
    i32 1, label %bb.eu
  ]

bb.eu:                                            ; preds = %bb.et
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr %.11188.us.1.i, <4 x i1> splat (i1 true), <4 x i32> %i.ahr, <4 x i32> %i.ash, i32 4)
  br i1 %i.anz, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.asr = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.asr, <4 x i1> splat (i1 true), <4 x i32> %i.ahr, <4 x i32> %i.ask, i32 4)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  br i1 %i.aob, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ass = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 8
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.ass, <4 x i1> splat (i1 true), <4 x i32> %i.ahr, <4 x i32> %i.asn, i32 4)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  br i1 %i.aod, label %bb.ez, label %bb.fg

bb.ez:                                            ; preds = %bb.ey
  %i.ast = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 12
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.ast, <4 x i1> splat (i1 true), <4 x i32> %i.ahr, <4 x i32> %i.asq, i32 4)
  br label %bb.fg

bb.fa:                                            ; preds = %bb.et
  store <4 x i32> %i.ash, ptr %.11188.us.1.i, align 16, !tbaa !44
  br i1 %i.anz, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.asu = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 16
  store <4 x i32> %i.ask, ptr %i.asu, align 16, !tbaa !44
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  br i1 %i.aob, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.asv = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 32
  store <4 x i32> %i.asn, ptr %i.asv, align 16, !tbaa !44
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  br i1 %i.aod, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.asw = getelementptr inbounds nuw i8, ptr %.11188.us.1.i, i64 48
  store <4 x i32> %i.asq, ptr %i.asw, align 16, !tbaa !44
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.ez, %bb.ey, %bb.et
  %i.asx = getelementptr inbounds [4 x i8], ptr %.11188.us.1.i, i64 %i.aht
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.es
  %.11188.us.2.i = phi ptr [ %.11188.us.1.i, %bb.es ], [ %i.asx, %bb.fg ] ; 8 uses
  %i.asy = or disjoint i32 %i.anp, 3
  %.not1215.us.3.i = icmp slt i32 %i.asy, %i.en
  br i1 %.not1215.us.3.i, label %bb.fi, label %bb.fv

bb.fi:                                            ; preds = %bb.fh
  %i.asz = add <4 x i32> %i.akq, %i.aju           ; 2 uses
  %i.ata = add <4 x i32> %i.ami, %i.alm           ; 2 uses
  %i.atb = sub <4 x i32> %i.aju, %i.akq           ; 2 uses
  %i.atc = sub <4 x i32> %i.alm, %i.ami           ; 2 uses
  %i.atd = add <4 x i32> %i.aiy, %i.asz
  %i.ate = add <4 x i32> %i.atd, %i.ata
  %i.atf = shl <4 x i32> %i.atc, splat (i32 1)
  %i.atg = add <4 x i32> %i.atf, %i.atb
  %i.ath = shl <4 x i32> %i.ata, splat (i32 2)
  %i.ati = add <4 x i32> %i.ath, %i.asz
  %i.atj = shl <4 x i32> %i.atc, splat (i32 3)
  %i.atk = add <4 x i32> %i.atj, %i.atb
  %i.atl = add <4 x i32> %i.atk, %i.anc
  %i.atm = add <4 x i32> %i.atl, %i.ang
  %i.atn = add <4 x i32> %i.atm, %i.anf
  %i.ato = sitofp fast <4 x i32> %i.ate to <4 x float>
  %i.atp = fmul fast <4 x float> %i.ato, splat (float f0x3AE38E39)
  %i.atq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.atp) ; 2 uses
  %i.atr = sitofp fast <4 x i32> %i.atg to <4 x float>
  %i.ats = fmul fast <4 x float> %i.atr, splat (float f0x3AE38E39)
  %i.att = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ats) ; 2 uses
  %i.atu = sitofp fast <4 x i32> %i.ati to <4 x float>
  %i.atv = fmul fast <4 x float> %i.atu, splat (float f0x3AE38E39)
  %i.atw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.atv) ; 2 uses
  %i.atx = sitofp fast <4 x i32> %i.atn to <4 x float>
  %i.aty = fmul fast <4 x float> %i.atx, splat (float f0x3AE38E39)
  %i.atz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aty) ; 2 uses
  switch i32 %i.eo, label %bb.fv [
    i32 4, label %bb.fp
    i32 1, label %bb.fj
  ]

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr %.11188.us.2.i, <4 x i1> splat (i1 true), <4 x i32> %i.ahr, <4 x i32> %i.atq, i32 4)
  br i1 %i.anz, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.aua = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 4
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.aua, <4 x i1> splat (i1 true), <4 x i32> %i.ahr, <4 x i32> %i.att, i32 4)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  br i1 %i.aob, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.aub = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 8
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.aub, <4 x i1> splat (i1 true), <4 x i32> %i.ahr, <4 x i32> %i.atw, i32 4)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  br i1 %i.aod, label %bb.fo, label %bb.fv

bb.fo:                                            ; preds = %bb.fn
  %i.auc = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 12
  call void @llvm.x86.avx512.mask.scattersiv4.si(ptr nonnull %i.auc, <4 x i1> splat (i1 true), <4 x i32> %i.ahr, <4 x i32> %i.atz, i32 4)
  br label %bb.fv

bb.fp:                                            ; preds = %bb.fi
  store <4 x i32> %i.atq, ptr %.11188.us.2.i, align 16, !tbaa !44
  br i1 %i.anz, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.aud = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 16
  store <4 x i32> %i.att, ptr %i.aud, align 16, !tbaa !44
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  br i1 %i.aob, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aue = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 32
  store <4 x i32> %i.atw, ptr %i.aue, align 16, !tbaa !44
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  br i1 %i.aod, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.auf = getelementptr inbounds nuw i8, ptr %.11188.us.2.i, i64 48
  store <4 x i32> %i.atz, ptr %i.auf, align 16, !tbaa !44
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fo, %bb.fn, %bb.fi, %bb.fh
  %indvars.iv.next461.i = add nuw nsw i64 %indvars.iv460.i, 1 ; 2 uses
  %exitcond464.not.i = icmp eq i64 %indvars.iv.next461.i, %wide.trip.count463.i
  br i1 %exitcond464.not.i, label %._crit_edge.us213.i, label %.preheader83.us.i, !llvm.loop !807

._crit_edge.us213.i:                              ; preds = %bb.fv
  %indvars.iv.next466.i = add nuw nsw i64 %indvars.iv465.i, 4 ; 3 uses
  %i.aug = icmp slt i64 %indvars.iv.next466.i, %invariant.op560.i
  br i1 %i.aug, label %.lr.ph.us212.i, label %.preheader82.loopexit.i, !llvm.loop !808

.preheader82.loopexit.i:                          ; preds = %._crit_edge.us213.i
  %i.auh = trunc nsw i64 %indvars.iv.next466.i to i32
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %.preheader82.loopexit.i, %.lr.ph209.split.preheader.i, %.preheader84.i
  %.2.lcssa.i = phi i32 [ %.11121.lcssa.i, %.preheader84.i ], [ %i.auh, %.preheader82.loopexit.i ], [ %i.ahu, %.lr.ph209.split.preheader.i ] ; 6 uses
  %i.aui = or disjoint i32 %.2.lcssa.i, 1
  %i.auj = icmp slt i32 %i.aui, %.sroa.speculated121
  br i1 %i.auj, label %.lr.ph265.i, label %.preheader80.i

.lr.ph265.i:                                      ; preds = %.preheader82.i
  %i.auk = icmp sgt i32 %.sroa.speculated117, 0
  %i.aul = shl nsw i32 %.sroa.speculated117, 1
  %i.aum = sext i32 %i.aul to i64
  %i.aun = shl nsw i32 %.sroa.speculated117, 2
  %i.auo = sext i32 %i.aun to i64
  %i.aup = mul nsw i32 %.sroa.speculated117, 6
  %i.auq = sext i32 %i.aup to i64
  %i.aur = shl nsw i32 %.sroa.speculated117, 3
  %i.aus = sext i32 %i.aur to i64
  %i.aut = mul nsw i32 %.sroa.speculated117, 10
  %i.auu = sext i32 %i.aut to i64
  %i.auv = mul nsw i32 %.sroa.speculated117, 12
  %i.auw = sext i32 %i.auv to i64                 ; 30 uses
  %i.aux = sext i32 %i.em to i64
  br i1 %i.auk, label %.lr.ph265.split.us.i, label %.lr.ph265.split.preheader.i

.lr.ph265.split.preheader.i:                      ; preds = %.lr.ph265.i
  %19 = add i32 %.2.lcssa.i, 3
  %smax468.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated121, i32 %19)
  %reass.sub138 = sub i32 %smax468.i, %.2.lcssa.i
  %20 = and i32 %reass.sub138, -2
  %i.auy = add i32 %.2.lcssa.i, %20
  br label %.preheader80.i

.lr.ph265.split.us.i:                             ; preds = %.lr.ph265.i
  %i.auz = load ptr, ptr %12, align 8, !tbaa !32, !noalias !809
  %i.ava = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !809
  %i.avb = load i64, ptr %i.ba, align 8, !tbaa !36, !noalias !809 ; 2 uses
  %factor.op.mul.i = mul i64 %i.avb, %i.ava
  %i.avc = sext i32 %.2.lcssa.i to i64
  %wide.trip.count480.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us268.i

.lr.ph.us268.i:                                   ; preds = %._crit_edge.us269.i, %.lr.ph265.split.us.i
  %indvars.iv482.i = phi i64 [ %indvars.iv.next483.i, %._crit_edge.us269.i ], [ %i.avc, %.lr.ph265.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.avd = trunc nsw i64 %indvars.iv482.i to i32
  %factor.op.mul.reass.us267.i = mul i32 %factor.op.mul107.i, %i.avd
  %i.ave = sext i32 %factor.op.mul.reass.us267.i to i64
  %i.avf = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ave
  %i.avg = add nsw i64 %indvars.iv482.i, %i.ee
  %.reass.i = mul i64 %factor.op.mul.i, %i.avg
  %i.avh = getelementptr inbounds nuw i8, ptr %i.auz, i64 %.reass.i
  br label %.preheader81.us.i

.preheader81.us.i:                                ; preds = %bb.gf, %.lr.ph.us268.i
  %indvars.iv477.i = phi i64 [ 0, %.lr.ph.us268.i ], [ %indvars.iv.next478.i, %bb.gf ] ; 3 uses
  %.idx559.i = shl nuw nsw i64 %indvars.iv477.i, 3
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avf, i64 %.idx559.i ; 8 uses
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %i.aum ; 3 uses
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %i.auo ; 3 uses
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %i.auq ; 3 uses
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %i.aus ; 3 uses
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %i.auu ; 3 uses
  %i.avo = load i32, ptr %i.avj, align 4, !tbaa !9 ; 2 uses
  %i.avp = load i32, ptr %i.avk, align 4, !tbaa !9 ; 2 uses
  %i.avq = add nsw i32 %i.avp, %i.avo             ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avj, i64 4
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !9 ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avk, i64 4
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !9 ; 2 uses
  %i.avv = add nsw i32 %i.avu, %i.avs             ; 2 uses
  %i.avw = load i32, ptr %i.avl, align 4, !tbaa !9 ; 2 uses
  %i.avx = load i32, ptr %i.avm, align 4, !tbaa !9 ; 2 uses
  %i.avy = add nsw i32 %i.avx, %i.avw             ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avl, i64 4
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !9 ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avm, i64 4
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !9 ; 2 uses
  %i.awd = add nsw i32 %i.awc, %i.awa             ; 2 uses
  %i.awe = sub nsw i32 %i.avo, %i.avp             ; 2 uses
  %i.awf = sub nsw i32 %i.avs, %i.avu             ; 2 uses
  %i.awg = sub nsw i32 %i.avw, %i.avx             ; 2 uses
  %i.awh = sub nsw i32 %i.awa, %i.awc             ; 2 uses
  %i.awi = add nsw i32 %i.avy, %i.avq
  %i.awj = load i32, ptr %i.avi, align 4, !tbaa !9
  %i.awk = add nsw i32 %i.awi, %i.awj
  %i.awl = add nsw i32 %i.awd, %i.avv
  %i.awm = getelementptr inbounds nuw i8, ptr %i.avi, i64 4
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !9
  %i.awo = add nsw i32 %i.awl, %i.awn
  %i.awp = shl nsw i32 %i.awg, 1
  %i.awq = add nsw i32 %i.awp, %i.awe
  %i.awr = shl nsw i32 %i.awh, 1
  %i.aws = add nsw i32 %i.awr, %i.awf
  %i.awt = shl nsw i32 %i.avy, 2
  %i.awu = add nsw i32 %i.awt, %i.avq
  %i.awv = shl nsw i32 %i.awd, 2
  %i.aww = add nsw i32 %i.awv, %i.avv
  %i.awx = shl nsw i32 %i.awg, 3
  %i.awy = add nsw i32 %i.awx, %i.awe
  %i.awz = load i32, ptr %i.avn, align 4, !tbaa !9
  %i.axa = shl nsw i32 %i.awz, 2
  %i.axb = add nsw i32 %i.awy, %i.axa
  %i.axc = shl nsw i32 %i.awh, 3
  %i.axd = add nsw i32 %i.axc, %i.awf
  %i.axe = getelementptr inbounds nuw i8, ptr %i.avn, i64 4
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !9
  %i.axg = shl nsw i32 %i.axf, 2
  %i.axh = add nsw i32 %i.axd, %i.axg
  store i32 %i.awk, ptr %i.b, align 16, !tbaa !9
  store i32 %i.awo, ptr %i.cb, align 4, !tbaa !9
  store i32 %i.awq, ptr %i.br, align 16, !tbaa !9
  store i32 %i.aws, ptr %i.cc, align 4, !tbaa !9
  store i32 %i.awu, ptr %i.bs, align 16, !tbaa !9
  store i32 %i.aww, ptr %i.cd, align 4, !tbaa !9
  store i32 %i.axb, ptr %i.bt, align 16, !tbaa !9
  store i32 %i.axh, ptr %i.ce, align 4, !tbaa !9
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %i.auw ; 3 uses
  %i.axj = getelementptr inbounds nuw [4 x i8], ptr %i.avj, i64 %i.auw ; 3 uses
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.avk, i64 %i.auw ; 3 uses
  %i.axl = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %i.auw ; 3 uses
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %i.avm, i64 %i.auw ; 3 uses
  %i.axn = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %i.auw ; 3 uses
  %i.axo = load i32, ptr %i.axj, align 4, !tbaa !9 ; 2 uses
  %i.axp = load i32, ptr %i.axk, align 4, !tbaa !9 ; 2 uses
  %i.axq = add nsw i32 %i.axp, %i.axo             ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axj, i64 4
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !9 ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axk, i64 4
  %i.axu = load i32, ptr %i.axt, align 4, !tbaa !9 ; 2 uses
  %i.axv = add nsw i32 %i.axu, %i.axs             ; 2 uses
  %i.axw = load i32, ptr %i.axl, align 4, !tbaa !9 ; 2 uses
  %i.axx = load i32, ptr %i.axm, align 4, !tbaa !9 ; 2 uses
  %i.axy = add nsw i32 %i.axx, %i.axw             ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axl, i64 4
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !9 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axm, i64 4
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !9 ; 2 uses
  %i.ayd = add nsw i32 %i.ayc, %i.aya             ; 2 uses
  %i.aye = sub nsw i32 %i.axo, %i.axp             ; 2 uses
  %i.ayf = sub nsw i32 %i.axs, %i.axu             ; 2 uses
  %i.ayg = sub nsw i32 %i.axw, %i.axx             ; 2 uses
  %i.ayh = sub nsw i32 %i.aya, %i.ayc             ; 2 uses
  %i.ayi = add nsw i32 %i.axy, %i.axq
  %i.ayj = load i32, ptr %i.axi, align 4, !tbaa !9
  %i.ayk = add nsw i32 %i.ayi, %i.ayj
  %i.ayl = add nsw i32 %i.ayd, %i.axv
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axi, i64 4
  %i.ayn = load i32, ptr %i.aym, align 4, !tbaa !9
  %i.ayo = add nsw i32 %i.ayl, %i.ayn
  %i.ayp = shl nsw i32 %i.ayg, 1
  %i.ayq = add nsw i32 %i.ayp, %i.aye
  %i.ayr = shl nsw i32 %i.ayh, 1
  %i.ays = add nsw i32 %i.ayr, %i.ayf
  %i.ayt = shl nsw i32 %i.axy, 2
  %i.ayu = add nsw i32 %i.ayt, %i.axq
  %i.ayv = shl nsw i32 %i.ayd, 2
  %i.ayw = add nsw i32 %i.ayv, %i.axv
  %i.ayx = shl nsw i32 %i.ayg, 3
  %i.ayy = add nsw i32 %i.ayx, %i.aye
  %i.ayz = load i32, ptr %i.axn, align 4, !tbaa !9
  %i.aza = shl nsw i32 %i.ayz, 2
  %i.azb = add nsw i32 %i.ayy, %i.aza
  %i.azc = shl nsw i32 %i.ayh, 3
  %i.azd = add nsw i32 %i.azc, %i.ayf
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axn, i64 4
  %i.azf = load i32, ptr %i.aze, align 4, !tbaa !9
  %i.azg = shl nsw i32 %i.azf, 2
  %i.azh = add nsw i32 %i.azd, %i.azg
  store i32 %i.ayk, ptr %i.cf, align 8, !tbaa !9
  store i32 %i.ayo, ptr %i.cg, align 4, !tbaa !9
  store i32 %i.ayq, ptr %i.ch, align 8, !tbaa !9
  store i32 %i.ays, ptr %i.ci, align 4, !tbaa !9
  store i32 %i.ayu, ptr %i.cj, align 8, !tbaa !9
  store i32 %i.ayw, ptr %i.ck, align 4, !tbaa !9
  store i32 %i.azb, ptr %i.cl, align 8, !tbaa !9
  store i32 %i.azh, ptr %i.cm, align 4, !tbaa !9
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %i.auw ; 3 uses
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.axj, i64 %i.auw ; 3 uses
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %i.auw ; 3 uses
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.axl, i64 %i.auw ; 3 uses
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %i.axm, i64 %i.auw ; 3 uses
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.axn, i64 %i.auw ; 3 uses
  %i.azo = load i32, ptr %i.azj, align 4, !tbaa !9 ; 2 uses
  %i.azp = load i32, ptr %i.azk, align 4, !tbaa !9 ; 2 uses
  %i.azq = add nsw i32 %i.azp, %i.azo             ; 2 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azj, i64 4
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !9 ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azk, i64 4
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !9 ; 2 uses
  %i.azv = add nsw i32 %i.azu, %i.azs             ; 2 uses
  %i.azw = load i32, ptr %i.azl, align 4, !tbaa !9 ; 2 uses
  %i.azx = load i32, ptr %i.azm, align 4, !tbaa !9 ; 2 uses
  %i.azy = add nsw i32 %i.azx, %i.azw             ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azl, i64 4
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !9 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azm, i64 4
  %i.bac = load i32, ptr %i.bab, align 4, !tbaa !9 ; 2 uses
  %i.bad = add nsw i32 %i.bac, %i.baa             ; 2 uses
  %i.bae = sub nsw i32 %i.azo, %i.azp             ; 2 uses
  %i.baf = sub nsw i32 %i.azs, %i.azu             ; 2 uses
  %i.bag = sub nsw i32 %i.azw, %i.azx             ; 2 uses
  %i.bah = sub nsw i32 %i.baa, %i.bac             ; 2 uses
  %i.bai = add nsw i32 %i.azy, %i.azq
  %i.baj = load i32, ptr %i.azi, align 4, !tbaa !9
  %i.bak = add nsw i32 %i.bai, %i.baj
  %i.bal = add nsw i32 %i.bad, %i.azv
  %i.bam = getelementptr inbounds nuw i8, ptr %i.azi, i64 4
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !9
  %i.bao = add nsw i32 %i.bal, %i.ban
  %i.bap = shl nsw i32 %i.bag, 1
  %i.baq = add nsw i32 %i.bap, %i.bae
  %i.bar = shl nsw i32 %i.bah, 1
  %i.bas = add nsw i32 %i.bar, %i.baf
  %i.bat = shl nsw i32 %i.azy, 2
  %i.bau = add nsw i32 %i.bat, %i.azq
  %i.bav = shl nsw i32 %i.bad, 2
  %i.baw = add nsw i32 %i.bav, %i.azv
  %i.bax = shl nsw i32 %i.bag, 3
  %i.bay = add nsw i32 %i.bax, %i.bae
  %i.baz = load i32, ptr %i.azn, align 4, !tbaa !9
  %i.bba = shl nsw i32 %i.baz, 2
  %i.bbb = add nsw i32 %i.bay, %i.bba
  %i.bbc = shl nsw i32 %i.bah, 3
  %i.bbd = add nsw i32 %i.bbc, %i.baf
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.azn, i64 4
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !9
  %i.bbg = shl nsw i32 %i.bbf, 2
  %i.bbh = add nsw i32 %i.bbd, %i.bbg
  store i32 %i.bak, ptr %i.cn, align 16, !tbaa !9
  store i32 %i.bao, ptr %i.co, align 4, !tbaa !9
end_hunk_14
begin_hunk_15_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.akp = shl nsw <16 x i16> %i.ako, splat (i16 1) ; 2 uses
  %i.akq = sub nsw <16 x i16> %i.acu, %i.rq       ; 2 uses
  %i.akr = shl nsw <16 x i16> %i.gm, splat (i16 2)
  %.neg.1 = mul nsw <16 x i16> %i.rq, splat (i16 -5)
  %i.aks = add nsw <16 x i16> %.neg.1, %i.akr
  %i.akt = add nsw <16 x i16> %i.aks, %i.acu
  %i.aku = add nsw <16 x i16> %i.akn, %i.akl
  %i.akv = sub nsw <16 x i16> %i.akn, %i.akl
  %i.akw = add nsw <16 x i16> %i.akq, %i.akp
  %i.akx = sub nsw <16 x i16> %i.akq, %i.akp
  %.neg245.1 = mul nsw <16 x i16> %i.xf, splat (i16 -5)
  %i.aky = add nsw <16 x i16> %.neg245.1, %i.akk
  %i.akz = add nsw <16 x i16> %i.aky, %i.aij
  store <16 x i16> %i.akt, ptr %i.ake, align 32, !tbaa !44
  store <16 x i16> %i.aku, ptr %i.akf, align 32, !tbaa !44
  store <16 x i16> %i.akv, ptr %i.akg, align 32, !tbaa !44
  store <16 x i16> %i.akw, ptr %i.akh, align 32, !tbaa !44
  store <16 x i16> %i.akx, ptr %i.aki, align 32, !tbaa !44
  store <16 x i16> %i.akz, ptr %i.akj, align 32, !tbaa !44
  %i.ala = load i32, ptr %3, align 4, !tbaa !9
  %i.alb = mul nsw i32 %i.ala, 96
  %i.alc = sext i32 %i.alb to i64                 ; 6 uses
  %i.ald = getelementptr inbounds [2 x i8], ptr %i.ake, i64 %i.alc ; 2 uses
  %i.ale = getelementptr inbounds [2 x i8], ptr %i.akf, i64 %i.alc ; 2 uses
  %i.alf = getelementptr inbounds [2 x i8], ptr %i.akg, i64 %i.alc ; 2 uses
  %i.alg = getelementptr inbounds [2 x i8], ptr %i.akh, i64 %i.alc ; 2 uses
  %i.alh = getelementptr inbounds [2 x i8], ptr %i.aki, i64 %i.alc ; 2 uses
  %i.ali = getelementptr inbounds [2 x i8], ptr %i.akj, i64 %i.alc ; 2 uses
  %i.alj = shl nsw <16 x i16> %i.mc, splat (i16 2) ; 2 uses
  %i.alk = sub nsw <16 x i16> %i.xg, %i.alj       ; 2 uses
  %i.all = shl nsw <16 x i16> %i.rr, splat (i16 2)
  %i.alm = sub nsw <16 x i16> %i.acv, %i.all      ; 2 uses
  %i.aln = sub nsw <16 x i16> %i.xg, %i.mc
  %i.alo = shl nsw <16 x i16> %i.aln, splat (i16 1) ; 2 uses
  %i.alp = sub nsw <16 x i16> %i.acv, %i.rr       ; 2 uses
  %i.alq = shl nsw <16 x i16> %i.gn, splat (i16 2)
  %.neg.2 = mul nsw <16 x i16> %i.rr, splat (i16 -5)
  %i.alr = add nsw <16 x i16> %.neg.2, %i.alq
  %i.als = add nsw <16 x i16> %i.alr, %i.acv
  %i.alt = add nsw <16 x i16> %i.alm, %i.alk
  %i.alu = sub nsw <16 x i16> %i.alm, %i.alk
  %i.alv = add nsw <16 x i16> %i.alp, %i.alo
  %i.alw = sub nsw <16 x i16> %i.alp, %i.alo
  %.neg245.2 = mul nsw <16 x i16> %i.xg, splat (i16 -5)
  %i.alx = add nsw <16 x i16> %.neg245.2, %i.alj
  %i.aly = add nsw <16 x i16> %i.alx, %i.aik
  store <16 x i16> %i.als, ptr %i.ald, align 32, !tbaa !44
  store <16 x i16> %i.alt, ptr %i.ale, align 32, !tbaa !44
  store <16 x i16> %i.alu, ptr %i.alf, align 32, !tbaa !44
  store <16 x i16> %i.alv, ptr %i.alg, align 32, !tbaa !44
  store <16 x i16> %i.alw, ptr %i.alh, align 32, !tbaa !44
  store <16 x i16> %i.aly, ptr %i.ali, align 32, !tbaa !44
  %i.alz = load i32, ptr %3, align 4, !tbaa !9
  %i.ama = mul nsw i32 %i.alz, 96
  %i.amb = sext i32 %i.ama to i64                 ; 6 uses
  %i.amc = getelementptr inbounds [2 x i8], ptr %i.ald, i64 %i.amb ; 2 uses
  %i.amd = getelementptr inbounds [2 x i8], ptr %i.ale, i64 %i.amb ; 2 uses
  %i.ame = getelementptr inbounds [2 x i8], ptr %i.alf, i64 %i.amb ; 2 uses
  %i.amf = getelementptr inbounds [2 x i8], ptr %i.alg, i64 %i.amb ; 2 uses
  %i.amg = getelementptr inbounds [2 x i8], ptr %i.alh, i64 %i.amb ; 2 uses
  %i.amh = getelementptr inbounds [2 x i8], ptr %i.ali, i64 %i.amb ; 2 uses
  %i.ami = shl nsw <16 x i16> %i.md, splat (i16 2) ; 2 uses
  %i.amj = sub nsw <16 x i16> %i.xh, %i.ami       ; 2 uses
  %i.amk = shl nsw <16 x i16> %i.rs, splat (i16 2)
  %i.aml = sub nsw <16 x i16> %i.acw, %i.amk      ; 2 uses
  %i.amm = sub nsw <16 x i16> %i.xh, %i.md
  %i.amn = shl nsw <16 x i16> %i.amm, splat (i16 1) ; 2 uses
  %i.amo = sub nsw <16 x i16> %i.acw, %i.rs       ; 2 uses
  %i.amp = shl nsw <16 x i16> %i.go, splat (i16 2)
  %.neg.3 = mul nsw <16 x i16> %i.rs, splat (i16 -5)
  %i.amq = add nsw <16 x i16> %.neg.3, %i.amp
  %i.amr = add nsw <16 x i16> %i.amq, %i.acw
  %i.ams = add nsw <16 x i16> %i.aml, %i.amj
  %i.amt = sub nsw <16 x i16> %i.aml, %i.amj
  %i.amu = add nsw <16 x i16> %i.amo, %i.amn
  %i.amv = sub nsw <16 x i16> %i.amo, %i.amn
  %.neg245.3 = mul nsw <16 x i16> %i.xh, splat (i16 -5)
  %i.amw = add nsw <16 x i16> %.neg245.3, %i.ami
  %i.amx = add nsw <16 x i16> %i.amw, %i.ail
  store <16 x i16> %i.amr, ptr %i.amc, align 32, !tbaa !44
  store <16 x i16> %i.ams, ptr %i.amd, align 32, !tbaa !44
  store <16 x i16> %i.amt, ptr %i.ame, align 32, !tbaa !44
  store <16 x i16> %i.amu, ptr %i.amf, align 32, !tbaa !44
  store <16 x i16> %i.amv, ptr %i.amg, align 32, !tbaa !44
  store <16 x i16> %i.amx, ptr %i.amh, align 32, !tbaa !44
  %i.amy = load i32, ptr %3, align 4, !tbaa !9
  %i.amz = mul nsw i32 %i.amy, 96
  %i.ana = sext i32 %i.amz to i64                 ; 6 uses
  %i.anb = getelementptr inbounds [2 x i8], ptr %i.amc, i64 %i.ana ; 2 uses
  %i.anc = getelementptr inbounds [2 x i8], ptr %i.amd, i64 %i.ana ; 2 uses
  %i.and = getelementptr inbounds [2 x i8], ptr %i.ame, i64 %i.ana ; 2 uses
  %i.ane = getelementptr inbounds [2 x i8], ptr %i.amf, i64 %i.ana ; 2 uses
  %i.anf = getelementptr inbounds [2 x i8], ptr %i.amg, i64 %i.ana ; 2 uses
  %i.ang = getelementptr inbounds [2 x i8], ptr %i.amh, i64 %i.ana ; 2 uses
  %i.anh = shl nsw <16 x i16> %i.me, splat (i16 2) ; 2 uses
  %i.ani = sub nsw <16 x i16> %i.xi, %i.anh       ; 2 uses
  %i.anj = shl nsw <16 x i16> %i.rt, splat (i16 2)
  %i.ank = sub nsw <16 x i16> %i.acx, %i.anj      ; 2 uses
  %i.anl = sub nsw <16 x i16> %i.xi, %i.me
  %i.anm = shl nsw <16 x i16> %i.anl, splat (i16 1) ; 2 uses
  %i.ann = sub nsw <16 x i16> %i.acx, %i.rt       ; 2 uses
  %i.ano = shl nsw <16 x i16> %i.gp, splat (i16 2)
  %.neg.4 = mul nsw <16 x i16> %i.rt, splat (i16 -5)
  %i.anp = add nsw <16 x i16> %.neg.4, %i.ano
  %i.anq = add nsw <16 x i16> %i.anp, %i.acx
  %i.anr = add nsw <16 x i16> %i.ank, %i.ani
  %i.ans = sub nsw <16 x i16> %i.ank, %i.ani
  %i.ant = add nsw <16 x i16> %i.ann, %i.anm
  %i.anu = sub nsw <16 x i16> %i.ann, %i.anm
  %.neg245.4 = mul nsw <16 x i16> %i.xi, splat (i16 -5)
  %i.anv = add nsw <16 x i16> %.neg245.4, %i.anh
  %i.anw = add nsw <16 x i16> %i.anv, %i.aim
  store <16 x i16> %i.anq, ptr %i.anb, align 32, !tbaa !44
  store <16 x i16> %i.anr, ptr %i.anc, align 32, !tbaa !44
  store <16 x i16> %i.ans, ptr %i.and, align 32, !tbaa !44
  store <16 x i16> %i.ant, ptr %i.ane, align 32, !tbaa !44
  store <16 x i16> %i.anu, ptr %i.anf, align 32, !tbaa !44
  store <16 x i16> %i.anw, ptr %i.ang, align 32, !tbaa !44
  %i.anx = load i32, ptr %3, align 4, !tbaa !9
  %i.any = mul nsw i32 %i.anx, 96
  %i.anz = sext i32 %i.any to i64                 ; 6 uses
  %i.aoa = getelementptr inbounds [2 x i8], ptr %i.anb, i64 %i.anz
  %i.aob = getelementptr inbounds [2 x i8], ptr %i.anc, i64 %i.anz
  %i.aoc = getelementptr inbounds [2 x i8], ptr %i.and, i64 %i.anz
  %i.aod = getelementptr inbounds [2 x i8], ptr %i.ane, i64 %i.anz
  %i.aoe = getelementptr inbounds [2 x i8], ptr %i.anf, i64 %i.anz
  %i.aof = getelementptr inbounds [2 x i8], ptr %i.ang, i64 %i.anz
  %i.aog = shl nsw <16 x i16> %i.mg, splat (i16 2) ; 2 uses
  %i.aoh = sub nsw <16 x i16> %i.xk, %i.aog       ; 2 uses
  %i.aoi = shl nsw <16 x i16> %i.rv, splat (i16 2)
  %i.aoj = sub nsw <16 x i16> %i.acz, %i.aoi      ; 2 uses
  %i.aok = sub nsw <16 x i16> %i.xk, %i.mg
  %i.aol = shl nsw <16 x i16> %i.aok, splat (i16 1) ; 2 uses
  %i.aom = sub nsw <16 x i16> %i.acz, %i.rv       ; 2 uses
  %i.aon = shl <16 x i16> %i.gr, splat (i16 2)
  %.neg.5 = mul nsw <16 x i16> %i.rv, splat (i16 -5)
  %i.aoo = add <16 x i16> %.neg.5, %i.aon
  %i.aop = add <16 x i16> %i.aoo, %i.acz
  %i.aoq = add nsw <16 x i16> %i.aoj, %i.aoh
  %i.aor = sub nsw <16 x i16> %i.aoj, %i.aoh
  %i.aos = add nsw <16 x i16> %i.aom, %i.aol
  %i.aot = sub nsw <16 x i16> %i.aom, %i.aol
  %.neg245.5 = mul nsw <16 x i16> %i.xk, splat (i16 -5)
  %i.aou = add nsw <16 x i16> %.neg245.5, %i.aog
  %i.aov = add nsw <16 x i16> %i.aou, %i.aio
  store <16 x i16> %i.aop, ptr %i.aoa, align 32, !tbaa !44
  store <16 x i16> %i.aoq, ptr %i.aob, align 32, !tbaa !44
  store <16 x i16> %i.aor, ptr %i.aoc, align 32, !tbaa !44
  store <16 x i16> %i.aos, ptr %i.aod, align 32, !tbaa !44
  store <16 x i16> %i.aot, ptr %i.aoe, align 32, !tbaa !44
  store <16 x i16> %i.aov, ptr %i.aof, align 32, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aow = load i32, ptr %3, align 4, !tbaa !9    ; 3 uses
  %i.aox = sext i32 %i.aow to i64
  %i.aoy = icmp slt i64 %indvars.iv.next, %i.aox
  br i1 %i.aoy, label %.noexc, label %._crit_edge, !llvm.loop !837

._crit_edge:                                      ; preds = %.thread238.5, %.lr.ph.split
  %i.aoz = phi i32 [ %i.q, %.lr.ph.split ], [ %i.aow, %.thread238.5 ]
  %i.apa = add i32 %.0259, 1
  %exitcond.not = icmp eq i32 %.0259, %i.j
  br i1 %exitcond.not, label %._crit_edge261, label %.lr.ph.split, !llvm.loop !838

._crit_edge261:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.gg

bb.gg:                                            ; preds = %._crit_edge261, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i8> @llvm.masked.load.v3i8.p0(ptr captures(none), <3 x i1>, <3 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !6, i64 44}
!11 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !6, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !14, i64 64}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!11, !6, i64 24}
!17 = !{!11, !6, i64 56}
!18 = !{!11, !14, i64 64}
!19 = !{!11, !6, i64 48}
!20 = !{!13, !13, i64 0}
!21 = distinct !{!21, !22, !23, !24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 8, i32 56}
!26 = distinct !{!26, !22, !23, !24}
!27 = !{!28, !6, i64 4}
!28 = !{!"_ZTSN4ncnn6OptionE", !29, i64 0, !29, i64 1, !29, i64 2, !29, i64 3, !6, i64 4, !15, i64 8, !15, i64 16, !6, i64 24, !29, i64 28, !29, i64 29, !29, i64 30, !29, i64 31, !29, i64 32, !29, i64 33, !29, i64 34, !29, i64 35, !29, i64 36, !29, i64 37, !29, i64 38, !29, i64 39, !6, i64 40, !29, i64 44, !29, i64 45, !29, i64 46, !29, i64 47, !7, i64 48, !29, i64 49, !29, i64 50, !29, i64 51, !29, i64 52, !29, i64 53, !29, i64 54, !29, i64 55, !29, i64 56, !29, i64 57, !29, i64 58, !29, i64 59, !29, i64 60, !29, i64 61, !29, i64 62, !29, i64 63}
!29 = !{!"bool", !7, i64 0}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22, !24, !23}
!32 = !{!11, !12, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!35 = distinct !{!35, !"_ZN4ncnn3Mat7channelEi"}
!36 = !{!11, !14, i64 16}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!39 = distinct !{!39, !"_ZNK4ncnn3Mat7channelEi"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!42 = distinct !{!42, !"_ZNK4ncnn3Mat7channelEi"}
!43 = distinct !{!43, !22}
!44 = !{!7, !7, i64 0}
!45 = distinct !{!45, !22}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!48 = distinct !{!48, !"_ZNK4ncnn3Mat7channelEi"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!51 = distinct !{!51, !"_ZNK4ncnn3Mat7channelEi"}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!56 = distinct !{!56, !"_ZNK4ncnn3Mat7channelEi"}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!64 = distinct !{!64, !"_ZNK4ncnn3Mat7channelEi"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!67 = distinct !{!67, !"_ZNK4ncnn3Mat7channelEi"}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!72 = distinct !{!72, !"_ZNK4ncnn3Mat7channelEi"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!75 = distinct !{!75, !"_ZNK4ncnn3Mat7channelEi"}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!82 = distinct !{!82, !"_ZNK4ncnn3Mat7channelEi"}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!88 = distinct !{!88, !"_ZNK4ncnn3Mat7channelEi"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!91 = distinct !{!91, !"_ZNK4ncnn3Mat7channelEi"}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!96 = distinct !{!96, !"_ZNK4ncnn3Mat7channelEi"}
!97 = distinct !{!97, !22}
!98 = distinct !{!98, !22}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!101 = distinct !{!101, !"_ZNK4ncnn3Mat7channelEi"}
!102 = distinct !{!102, !22}
!103 = distinct !{!103, !22}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!106 = distinct !{!106, !"_ZNK4ncnn3Mat7channelEi"}
!107 = distinct !{!107, !22}
!108 = distinct !{!108, !22}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, !22}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!113 = distinct !{!113, !"_ZN4ncnn3Mat7channelEi"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!116 = distinct !{!116, !"_ZNK4ncnn3Mat7channelEi"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!119 = distinct !{!119, !"_ZNK4ncnn3Mat7channelEi"}
!120 = distinct !{!120, !22}
!121 = distinct !{!121, !22}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!124 = distinct !{!124, !"_ZNK4ncnn3Mat7channelEi"}
!125 = distinct !{!125, !22}
!126 = distinct !{!126, !22}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!129 = distinct !{!129, !"_ZNK4ncnn3Mat7channelEi"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!132 = distinct !{!132, !"_ZNK4ncnn3Mat7channelEi"}
!133 = distinct !{!133, !22}
!134 = distinct !{!134, !22}
!135 = distinct !{!135, !22}
!136 = distinct !{!136, !22}
!137 = distinct !{!137, !22}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!140 = distinct !{!140, !"_ZNK4ncnn3Mat7channelEi"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!143 = distinct !{!143, !"_ZNK4ncnn3Mat7channelEi"}
!144 = distinct !{!144, !22}
!145 = distinct !{!145, !22}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
end_hunk_15
