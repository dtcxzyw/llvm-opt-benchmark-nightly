Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder_avx2?download=true
inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjb:bb.a

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.089.i887 = phi <4 x i64> [ %i.adf, %bb.bi ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.bh ]
  %.not94.i888 = icmp eq i16 %i.abz, 0
  br i1 %.not94.i888, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.adg = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %12)
  %i.adh = load i32, ptr %i.sj, align 8, !tbaa !29
  %i.adi = sub i32 %i.adh, %i.aca
  store i32 %i.adi, ptr %i.sj, align 8, !tbaa !29
  %i.adj = lshr i32 %i.aca, 3
  %i.adk = and i32 %i.adj, 24
  %i.adl = zext nneg i32 %i.adk to i64
  %i.adm = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.adl ; 2 uses
  %i.adn = and i32 %i.aca, 63                     ; 2 uses
  %i.ado = load <2 x i64>, ptr %i.adm, align 8, !tbaa !10 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %i.adq = load <2 x i64>, ptr %i.adp, align 8, !tbaa !10 ; 3 uses
  %i.adr = zext nneg i32 %i.adn to i64
  %i.ads = insertelement <2 x i64> poison, i64 %i.adr, i64 0
  %i.adt = shufflevector <2 x i64> %i.ads, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adu = lshr <2 x i64> %i.ado, %i.adt
  %i.adv = shufflevector <2 x i64> %i.ado, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.adw = sub nuw nsw i32 64, %i.adn
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = insertelement <2 x i64> poison, i64 %i.adx, i64 0
  %i.adz = shufflevector <2 x i64> %i.ady, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aea = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.adv, <2 x i64> %i.adz)
  %i.aeb = or <2 x i64> %i.aea, %i.adu
  %i.aec = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.adq, <2 x i32> <i32 1, i32 2>
  %i.aed = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aec, <2 x i64> %i.adz)
  %i.aee = or <2 x i64> %i.aeb, %i.aed
  store <2 x i64> %i.aee, ptr %i.sk, align 8, !tbaa !10
  %i.aef = lshr <2 x i64> %i.adq, %i.adt
  %i.aeg = shufflevector <2 x i64> %i.adq, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aeh = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aeg, <2 x i64> %i.adz)
  %i.aei = or <2 x i64> %i.aeh, %i.aef
  store <2 x i64> %i.aei, ptr %i.sl, align 8, !tbaa !10
  %i.aej = shufflevector <2 x i64> %i.adg, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.090.i889 = phi <4 x i64> [ %i.aej, %bb.bk ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.bj ]
  %i.aek = shufflevector <4 x i64> %.089.i887, <4 x i64> %.090.i889, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ael = bitcast <8 x i32> %i.abw to <32 x i8>
  %i.aem = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.ael, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59> ; 2 uses
  %i.aen = bitcast <32 x i8> %i.aem to <8 x i32>
  %i.aeo = lshr <8 x i32> %i.aen, splat (i32 3)
  %i.aep = bitcast <32 x i8> %i.aem to <4 x i64>
  %i.aeq = and <4 x i64> %i.aep, splat (i64 30064771079) ; 2 uses
  %i.aer = bitcast <8 x i32> %i.aeo to <32 x i8>
  %i.aes = shufflevector <32 x i8> %i.aer, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.aet = bitcast <32 x i8> %i.aes to <8 x i32>  ; 2 uses
  %i.aeu = add <8 x i32> %i.aet, splat (i32 50462976)
  %i.aev = bitcast <4 x i64> %i.aek to <32 x i8>  ; 2 uses
  %i.aew = bitcast <8 x i32> %i.aeu to <32 x i8>
  %i.aex = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aev, <32 x i8> %i.aew)
  %i.aey = add <8 x i32> %i.aet, splat (i32 67305985)
  %i.aez = bitcast <8 x i32> %i.aey to <32 x i8>
  %i.afa = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.aev, <32 x i8> %i.aez)
  %i.afb = bitcast <4 x i64> %i.aeq to <8 x i32>
  %i.afc = shl nuw nsw <8 x i32> %i.afb, splat (i32 16)
  %i.afd = bitcast <8 x i32> %i.afc to <4 x i64>
  %i.afe = or disjoint <4 x i64> %i.aeq, %i.afd
  %i.aff = bitcast <4 x i64> %i.afe to <32 x i8>
  %i.afg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.aff)
  %i.afh = bitcast <32 x i8> %i.afg to <16 x i16>
  %i.afi = add <16 x i16> %i.afh, splat (i16 257) ; 2 uses
  %i.afj = bitcast <32 x i8> %i.aex to <16 x i16>
  %i.afk = mul <16 x i16> %i.afi, %i.afj
  %i.afl = lshr <16 x i16> %i.afk, splat (i16 8)
  %i.afm = bitcast <32 x i8> %i.afa to <16 x i16>
  %i.afn = mul <16 x i16> %i.afi, %i.afm
  %.inner1652 = and <16 x i16> %i.afn, splat (i16 -256)
  %.inner1653 = or disjoint <16 x i16> %.inner1652, %i.afl
  %i.afo = bitcast <16 x i16> %.inner1653 to <4 x i64>
  %i.afp = add <8 x i32> %i.abd, <i32 31, i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison>
  %i.afq = and <8 x i32> %i.afp, <i32 31, i32 poison, i32 poison, i32 poison, i32 31, i32 poison, i32 poison, i32 poison>
  %i.afr = shufflevector <8 x i32> %i.afq, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.afs = sub nuw nsw <8 x i32> splat (i32 2), %i.abp
  %i.aft = shl <8 x i32> %i.afs, %i.afr           ; 2 uses
  %i.afu = add <8 x i32> %i.aft, splat (i32 -1)
  %i.afv = bitcast <8 x i32> %i.afu to <4 x i64>
  %i.afw = and <4 x i64> %i.afo, %i.afv
  %i.afx = bitcast <16 x i16> %i.abn to <8 x i32>
  %i.afy = and <8 x i32> %i.afx, splat (i32 2048)
  %.not95.i890 = icmp eq <8 x i32> %i.afy, zeroinitializer
  %i.afz = select <8 x i1> %.not95.i890, <8 x i32> zeroinitializer, <8 x i32> %i.aft
  %i.aga = bitcast <8 x i32> %i.afz to <4 x i64>
  %i.agb = or <4 x i64> %i.afw, %i.aga            ; 2 uses
  %i.agc = bitcast <4 x i64> %i.agb to <8 x i32>
  %i.agd = shl <8 x i32> %i.agc, splat (i32 31)
  %i.age = or <4 x i64> %i.agb, splat (i64 4294967297) ; 2 uses
  %i.agf = bitcast <4 x i64> %i.age to <8 x i32>
  %i.agg = add <8 x i32> %i.agf, splat (i32 2)
  %i.agh = shl <8 x i32> %i.agg, %.splat.i.i892
  %i.agi = or <8 x i32> %i.agh, %i.agd
  %i.agj = and <4 x i64> %i.age, %i.abs
  %i.agk = bitcast <4 x i64> %i.agj to <32 x i8>
  %i.agl = shufflevector <32 x i8> %i.agk, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48>
  %i.agm = bitcast <32 x i8> %i.agl to <4 x i64>  ; 2 uses
  %i.agn = shufflevector <4 x i64> %i.agm, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ago = or <2 x i64> %i.agn, splat (i64 8589934594)
  %i.agp = shufflevector <4 x i64> %i.agm, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.agq = or <2 x i64> %i.ago, %i.agp
  %i.agr = bitcast <4 x i64> %i.abs to <8 x i32>
  %i.ags = and <8 x i32> %i.agi, %i.agr
  %i.agt = shufflevector <8 x i32> %i.ags, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.agu = bitcast <8 x i32> %i.agt to <4 x i64>
  br label %_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894

_ZN4ojph5localL22decode_two_quad32_avx2EDv4_xS1_PNS0_16frwd_struct_avx2EjRDv2_x.exit894: ; preds = %.lr.ph1052, %bb.bl
  %.0919 = phi <2 x i64> [ splat (i64 8589934594), %.lr.ph1052 ], [ %i.agq, %bb.bl ]
  %.0.i893 = phi <4 x i64> [ zeroinitializer, %.lr.ph1052 ], [ %i.agu, %bb.bl ] ; 2 uses
  %i.agv = shufflevector <4 x i64> %.0.i893, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.agv, ptr %.08041049, align 16, !tbaa !10
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.08041049, i64 %i.sn
  %i.agx = shufflevector <4 x i64> %.0.i893, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.agx, ptr %i.agw, align 16, !tbaa !10
  %i.agy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aau, i64 0
  %i.agz = bitcast <4 x i32> %i.agy to <2 x i64>
  %i.aha = or <2 x i64> %.0919, %i.agz            ; 2 uses
  store <2 x i64> %i.aha, ptr %.08061047, align 1, !tbaa !10
  %i.ahb = add i32 %.08031050, 4                  ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.08051048, i64 8
  %i.ahd = getelementptr inbounds nuw i8, ptr %.08061047, i64 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %.08041049, i64 16
  %i.ahf = icmp ult i32 %i.ahb, %6
  %bc1277 = bitcast <2 x i64> %i.aha to <4 x i32>
  %i.ahg = extractelement <4 x i32> %bc1277, i64 2
  br i1 %i.ahf, label %.lr.ph1052, label %.critedge, !llvm.loop !49

.critedge860.thread928:                           ; preds = %bb.aw, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ei

.critedge860:                                     ; preds = %.critedge, %.critedge.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.cd

bb.bm:                                            ; preds = %._crit_edge1015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1056) %i.c, i8 0, i64 1056, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2112) %i.d, i8 0, i64 2112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.ahh = sub nuw nsw i32 %4, %i.ap
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_16frwd_struct_avx2EPKhi(ptr noundef %13, ptr noundef nonnull %0, i32 noundef %i.ahh)
  store i16 2, ptr %i.c, align 16, !tbaa !66
  br i1 %.not1155, label %.critedge862.preheader, label %.lr.ph1022

.lr.ph1022:                                       ; preds = %bb.bm
  %i.ahi = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.ahj = shufflevector <4 x i32> %i.ahi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ahk = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 4 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ahn = zext i32 %8 to i64
  %i.aho = trunc nuw nsw i32 %2 to i16
  %i.ahp = sub nuw nsw i16 13, %i.aho
  %.splatinsert = insertelement <16 x i16> poison, i16 %i.ahp, i64 0
  %.splat = shufflevector <16 x i16> %.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.bn

.critedge862.preheader:                           ; preds = %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit, %bb.bm
  br i1 %i.be, label %.lr.ph1036, label %.critedge862._crit_edge

.lr.ph1036:                                       ; preds = %.critedge862.preheader
  %i.ahq = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %i.ahr = shufflevector <8 x i32> %i.ahq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ahs = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ahv = zext i32 %8 to i64
  %i.ahw = trunc nuw nsw i32 %2 to i16
  %i.ahx = sub nuw nsw i16 13, %i.ahw
  %.splatinsert1158 = insertelement <16 x i16> poison, i16 %i.ahx, i64 0
  %.splat1159 = shufflevector <16 x i16> %.splatinsert1158, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.bu

bb.bn:                                            ; preds = %.lr.ph1022, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit
  %i.ahy = phi i32 [ 2, %.lr.ph1022 ], [ %i.aoj, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ]
  %.07981020 = phi i32 [ 0, %.lr.ph1022 ], [ %i.aof, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ]
  %.07991019 = phi ptr [ %1, %.lr.ph1022 ], [ %i.aoi, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 3 uses
  %.08001018 = phi ptr [ %i.c, %.lr.ph1022 ], [ %i.aoh, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 2 uses
  %.08011017 = phi ptr [ %i.a, %.lr.ph1022 ], [ %i.aog, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 2 uses
  %i.ahz = load <2 x i64>, ptr %.08011017, align 1, !tbaa !10 ; 2 uses
  %i.aia = bitcast <2 x i64> %i.ahz to <4 x i32>
  %i.aib = lshr <4 x i32> %i.aia, splat (i32 16)  ; 3 uses
  %i.aic = icmp sgt <4 x i32> %i.aib, %i.ahj
  %i.aid = sext <4 x i1> %i.aic to <4 x i32>
  %i.aie = bitcast <4 x i32> %i.aid to <2 x i64>  ; 2 uses
  %i.aif = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.aie, <2 x i64> %i.aie)
  %.not.not = icmp eq i32 %i.aif, 0
  br i1 %.not.not, label %.thread933, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %16 = bitcast <2 x i64> %i.ahz to <16 x i8>
  %17 = shufflevector <16 x i8> %16, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5, i32 8, i32 9, i32 8, i32 9, i32 12, i32 13, i32 12, i32 13>
  %i.aig = bitcast <16 x i8> %17 to <8 x i16>
  %18 = shufflevector <8 x i16> %i.aig, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 4, i32 5, i32 4, i32 5, i32 6, i32 7, i32 6, i32 7>
  %i.aih = and <16 x i16> %18, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.aii = icmp eq <16 x i16> %i.aih, zeroinitializer ; 4 uses
  %i.aij = sext <16 x i1> %i.aii to <16 x i16>
  %i.aik = bitcast <16 x i16> %i.aij to <32 x i8>
  %i.ail = icmp sgt <32 x i8> %i.aik, splat (i8 -1)
  %i.aim = bitcast <32 x i1> %i.ail to i32
  %.not.i895 = icmp eq i32 %i.aim, 0
  br i1 %.not.i895, label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ain = bitcast <4 x i32> %i.aib to <16 x i8>
  %i.aio = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.ain, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.aip = bitcast <16 x i8> %i.aio to <4 x i32>
  %i.aiq = or disjoint <4 x i32> %i.aib, %i.aip
  %i.air = shufflevector <4 x i32> %i.aiq, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ais = shl <16 x i16> %i.aih, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.ait = lshr <16 x i16> %i.ais, splat (i16 15) ; 2 uses
  %i.aiu = bitcast <8 x i32> %i.air to <16 x i16>
  %i.aiv = sub <16 x i16> %i.aiu, %i.ait
  %.inner1656 = select <16 x i1> %i.aii, <16 x i16> zeroinitializer, <16 x i16> %i.aiv ; 2 uses
  %i.aiw = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <16 x i16> %.inner1656, <16 x i32> <i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.aix = add <16 x i16> %i.aiw, %.inner1656     ; 2 uses
  %i.aiy = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <16 x i16> %i.aix, <16 x i32> <i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.aiz = add <16 x i16> %i.aix, %i.aiy          ; 2 uses
  %i.aja = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.aiz, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  %i.ajb = add <16 x i16> %i.aiz, %i.aja          ; 3 uses
  %i.ajc = extractelement <16 x i16> %i.ajb, i64 7 ; 2 uses
  %i.ajd = extractelement <16 x i16> %i.ajb, i64 15 ; 2 uses
  %i.aje = zext i16 %i.ajd to i32                 ; 3 uses
  %i.ajf = bitcast <16 x i16> %i.ajb to <32 x i8>
  %i.ajg = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.ajf, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %.not116.i = icmp eq i16 %i.ajc, 0
  br i1 %.not116.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ajh = zext i16 %i.ajc to i32                 ; 3 uses
  %i.aji = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.ajj = load i32, ptr %i.ahk, align 8, !tbaa !29
  %i.ajk = sub i32 %i.ajj, %i.ajh
  store i32 %i.ajk, ptr %i.ahk, align 8, !tbaa !29
  %i.ajl = lshr i32 %i.ajh, 3
  %i.ajm = and i32 %i.ajl, 24
  %i.ajn = zext nneg i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.ajn ; 2 uses
  %i.ajp = and i32 %i.ajh, 63                     ; 2 uses
  %i.ajq = load <2 x i64>, ptr %i.ajo, align 8, !tbaa !10 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajo, i64 16
  %i.ajs = load <2 x i64>, ptr %i.ajr, align 8, !tbaa !10 ; 3 uses
  %i.ajt = zext nneg i32 %i.ajp to i64
  %i.aju = insertelement <2 x i64> poison, i64 %i.ajt, i64 0
  %i.ajv = shufflevector <2 x i64> %i.aju, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ajw = lshr <2 x i64> %i.ajq, %i.ajv
  %i.ajx = shufflevector <2 x i64> %i.ajq, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ajy = sub nuw nsw i32 64, %i.ajp
  %i.ajz = zext nneg i32 %i.ajy to i64
  %i.aka = insertelement <2 x i64> poison, i64 %i.ajz, i64 0
  %i.akb = shufflevector <2 x i64> %i.aka, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.akc = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ajx, <2 x i64> %i.akb)
  %i.akd = or <2 x i64> %i.akc, %i.ajw
  %i.ake = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ajs, <2 x i32> <i32 1, i32 2>
  %i.akf = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ake, <2 x i64> %i.akb)
  %i.akg = or <2 x i64> %i.akd, %i.akf
  store <2 x i64> %i.akg, ptr %i.ahl, align 8, !tbaa !10
  %i.akh = lshr <2 x i64> %i.ajs, %i.ajv
  %i.aki = shufflevector <2 x i64> %i.ajs, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.akj = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aki, <2 x i64> %i.akb)
  %i.akk = or <2 x i64> %i.akj, %i.akh
  store <2 x i64> %i.akk, ptr %i.ahm, align 8, !tbaa !10
  %i.akl = shufflevector <2 x i64> %i.aji, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0112.i = phi <4 x i64> [ %i.akl, %bb.bq ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.bp ]
  %.not117.i = icmp eq i16 %i.ajd, 0
  br i1 %.not117.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.akm = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.akn = load i32, ptr %i.ahk, align 8, !tbaa !29
  %i.ako = sub i32 %i.akn, %i.aje
  store i32 %i.ako, ptr %i.ahk, align 8, !tbaa !29
  %i.akp = lshr i32 %i.aje, 3
  %i.akq = and i32 %i.akp, 24
  %i.akr = zext nneg i32 %i.akq to i64
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.akr ; 2 uses
  %i.akt = and i32 %i.aje, 63                     ; 2 uses
  %i.aku = load <2 x i64>, ptr %i.aks, align 8, !tbaa !10 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aks, i64 16
  %i.akw = load <2 x i64>, ptr %i.akv, align 8, !tbaa !10 ; 3 uses
  %i.akx = zext nneg i32 %i.akt to i64
  %i.aky = insertelement <2 x i64> poison, i64 %i.akx, i64 0
  %i.akz = shufflevector <2 x i64> %i.aky, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ala = lshr <2 x i64> %i.aku, %i.akz
  %i.alb = shufflevector <2 x i64> %i.aku, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.alc = sub nuw nsw i32 64, %i.akt
  %i.ald = zext nneg i32 %i.alc to i64
  %i.ale = insertelement <2 x i64> poison, i64 %i.ald, i64 0
  %i.alf = shufflevector <2 x i64> %i.ale, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.alg = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.alb, <2 x i64> %i.alf)
  %i.alh = or <2 x i64> %i.alg, %i.ala
  %i.ali = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.akw, <2 x i32> <i32 1, i32 2>
  %i.alj = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ali, <2 x i64> %i.alf)
  %i.alk = or <2 x i64> %i.alh, %i.alj
  store <2 x i64> %i.alk, ptr %i.ahl, align 8, !tbaa !10
  %i.all = lshr <2 x i64> %i.akw, %i.akz
  %i.alm = shufflevector <2 x i64> %i.akw, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aln = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.alm, <2 x i64> %i.alf)
  %i.alo = or <2 x i64> %i.aln, %i.all
  store <2 x i64> %i.alo, ptr %i.ahm, align 8, !tbaa !10
  %i.alp = shufflevector <2 x i64> %i.akm, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0113.i = phi <4 x i64> [ %i.alp, %bb.bs ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.br ]
  %i.alq = shufflevector <4 x i64> %.0112.i, <4 x i64> %.0113.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.alr = bitcast <32 x i8> %i.ajg to <16 x i16>
  %i.als = lshr <16 x i16> %i.alr, splat (i16 3)
  %i.alt = bitcast <16 x i16> %i.als to <32 x i8>
  %i.alu = shufflevector <32 x i8> %i.alt, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14, i32 16, i32 16, i32 18, i32 18, i32 20, i32 20, i32 22, i32 22, i32 24, i32 24, i32 26, i32 26, i32 28, i32 28, i32 30, i32 30>
  %i.alv = bitcast <32 x i8> %i.alu to <16 x i16> ; 2 uses
  %i.alw = add <16 x i16> %i.alv, splat (i16 256)
  %i.alx = bitcast <4 x i64> %i.alq to <32 x i8>  ; 2 uses
  %i.aly = bitcast <16 x i16> %i.alw to <32 x i8>
  %i.alz = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.alx, <32 x i8> %i.aly)
  %i.ama = add <16 x i16> %i.alv, splat (i16 513)
  %i.amb = bitcast <16 x i16> %i.ama to <32 x i8>
  %i.amc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.alx, <32 x i8> %i.amb)
  %i.amd = and <32 x i8> %i.ajg, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.ame = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.amd)
  %i.amf = bitcast <32 x i8> %i.ame to <16 x i16>
  %i.amg = add <16 x i16> %i.amf, splat (i16 257) ; 2 uses
  %i.amh = bitcast <32 x i8> %i.alz to <16 x i16>
  %i.ami = mul <16 x i16> %i.amg, %i.amh
  %i.amj = lshr <16 x i16> %i.ami, splat (i16 8)
  %i.amk = bitcast <32 x i8> %i.amc to <16 x i16>
  %i.aml = mul <16 x i16> %i.amg, %i.amk
  %.inner1657 = and <16 x i16> %i.aml, splat (i16 -256)
  %.inner1658 = or disjoint <16 x i16> %.inner1657, %i.amj
  %i.amm = add <8 x i32> %i.air, splat (i32 -65537) ; 2 uses
  %.inner1659 = and <8 x i32> %i.amm, <i32 31, i32 0, i32 0, i32 0, i32 31, i32 0, i32 0, i32 0> ; 2 uses
  %i.amn = bitcast <8 x i32> %i.amm to <32 x i8>
  %i.amo = shufflevector <32 x i8> %i.amn, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %i.amp = sub nuw nsw <16 x i16> splat (i16 2), %i.ait ; 2 uses
  %.inner1660 = and <16 x i16> %i.amp, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0> ; 2 uses
  %.inner1661 = and <16 x i16> %i.amp, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1> ; 2 uses
  %i.amq = shufflevector <16 x i16> %.inner1660, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amr = bitcast <8 x i32> %.inner1659 to <16 x i16>
  %i.ams = shufflevector <16 x i16> %i.amr, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amt = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.amq, <8 x i16> %i.ams)
  %i.amu = shufflevector <16 x i16> %.inner1660, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amv = bitcast <8 x i32> %.inner1659 to <16 x i16>
  %i.amw = shufflevector <16 x i16> %i.amv, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amx = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.amu, <8 x i16> %i.amw)
  %i.amy = shufflevector <8 x i16> %i.amt, <8 x i16> %i.amx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amz = shufflevector <16 x i16> %.inner1661, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ana = bitcast <32 x i8> %i.amo to <16 x i16>
  %i.anb = shufflevector <16 x i16> %i.ana, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.anc = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.amz, <8 x i16> %i.anb)
  %i.and = shufflevector <16 x i16> %.inner1661, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ane = bitcast <32 x i8> %i.amo to <16 x i16>
  %i.anf = shufflevector <16 x i16> %i.ane, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ang = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.and, <8 x i16> %i.anf)
  %i.anh = shufflevector <8 x i16> %i.anc, <8 x i16> %i.ang, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.inner1662 = or <16 x i16> %i.anh, %i.amy      ; 2 uses
  %i.ani = add <16 x i16> %.inner1662, splat (i16 -1)
  %.inner1663 = and <16 x i16> %.inner1658, %i.ani
  %i.anj = and <16 x i16> %i.ais, splat (i16 2048)
  %.not1689 = icmp eq <16 x i16> %i.anj, zeroinitializer
  %.inner1664 = select <16 x i1> %.not1689, <16 x i16> zeroinitializer, <16 x i16> %.inner1662
  %.inner1665 = or <16 x i16> %.inner1663, %.inner1664 ; 2 uses
  %i.ank = shl <16 x i16> %.inner1665, splat (i16 15)
  %.inner1666 = or <16 x i16> %.inner1665, splat (i16 1) ; 2 uses
  %i.anl = add <16 x i16> %.inner1666, splat (i16 2)
  %i.anm = shl <16 x i16> %i.anl, %.splat
  %i.ann = or <16 x i16> %i.ank, %i.anm
  %.inner1667 = select <16 x i1> %i.aii, <16 x i16> zeroinitializer, <16 x i16> %i.ann
  %.inner1668 = select <16 x i1> %i.aii, <16 x i16> zeroinitializer, <16 x i16> %.inner1666
  %i.ano = bitcast <16 x i16> %.inner1668 to <32 x i8> ; 2 uses
  %i.anp = shufflevector <32 x i8> %i.ano, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 6, i32 7, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 18, i32 19, i32 22, i32 23, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.anq = shufflevector <32 x i8> %i.ano, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 10, i32 11, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 26, i32 27, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.anr = or <32 x i8> %i.anp, %i.anq
  %i.ans = bitcast <32 x i8> %i.anr to <4 x i64>  ; 2 uses
  %i.ant = shufflevector <4 x i64> %i.ans, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.anu = or <2 x i64> %i.ant, splat (i64 562958543486978)
  %i.anv = shufflevector <4 x i64> %i.ans, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.anw = or <2 x i64> %i.anu, %i.anv
  %i.anx = bitcast <16 x i16> %.inner1667 to <32 x i8>
  br label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit

_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit: ; preds = %bb.bo, %bb.bt
  %.0918 = phi <2 x i64> [ splat (i64 562958543486978), %bb.bo ], [ %i.anw, %bb.bt ]
  %.0.i896 = phi <32 x i8> [ zeroinitializer, %bb.bo ], [ %i.anx, %bb.bt ] ; 2 uses
  %i.any = and i32 %i.ahy, 65535
  %i.anz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.any, i64 0
  %i.aoa = bitcast <4 x i32> %i.anz to <2 x i64>
  %i.aob = or <2 x i64> %.0918, %i.aoa            ; 2 uses
  store <2 x i64> %i.aob, ptr %.08001018, align 1, !tbaa !10
  %i.aoc = shufflevector <32 x i8> %.0.i896, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 0, i32 1, i32 32, i32 32, i32 4, i32 5, i32 32, i32 32, i32 8, i32 9, i32 32, i32 32, i32 12, i32 13, i32 48, i32 48, i32 16, i32 17, i32 48, i32 48, i32 20, i32 21, i32 48, i32 48, i32 24, i32 25, i32 48, i32 48, i32 28, i32 29>
  %i.aod = shufflevector <32 x i8> %.0.i896, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 2, i32 3, i32 32, i32 32, i32 6, i32 7, i32 32, i32 32, i32 10, i32 11, i32 32, i32 32, i32 14, i32 15, i32 48, i32 48, i32 18, i32 19, i32 48, i32 48, i32 22, i32 23, i32 48, i32 48, i32 26, i32 27, i32 48, i32 48, i32 30, i32 31>
  store <32 x i8> %i.aoc, ptr %.07991019, align 1, !tbaa !10
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %.07991019, i64 %i.ahn
  store <32 x i8> %i.aod, ptr %i.aoe, align 1, !tbaa !10
  %i.aof = add i32 %.07981020, 8                  ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.08011017, i64 16
  %i.aoh = getelementptr inbounds nuw i8, ptr %.08001018, i64 8
  %i.aoi = getelementptr inbounds nuw i8, ptr %.07991019, i64 32
  %.not = icmp ult i32 %i.aof, %6
  %bc = bitcast <2 x i64> %i.aob to <4 x i32>
  %i.aoj = extractelement <4 x i32> %bc, i64 2
  br i1 %.not, label %bb.bn, label %.critedge862.preheader, !llvm.loop !50

bb.bu:                                            ; preds = %.lr.ph1036, %.critedge862
  %.07941035 = phi i32 [ 2, %.lr.ph1036 ], [ %i.aqb, %.critedge862 ] ; 3 uses
  %i.aok = lshr exact i32 %.07941035, 1
  %i.aol = mul i32 %i.aok, %i.au
  %i.aom = zext i32 %i.aol to i64
  %i.aon = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aom ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bw
  %.07901026 = phi i32 [ 0, %bb.bu ], [ %i.apu, %bb.bw ]
  %.07911025 = phi ptr [ %i.aon, %bb.bu ], [ %i.apw, %bb.bw ] ; 2 uses
  %.07921024 = phi ptr [ %i.d, %bb.bu ], [ %i.apx, %bb.bw ] ; 2 uses
  %.07931023 = phi ptr [ %i.c, %bb.bu ], [ %i.apv, %bb.bw ] ; 3 uses
  %i.aoo = load <2 x i64>, ptr %.07931023, align 1, !tbaa !10
  %i.aop = getelementptr inbounds nuw i8, ptr %.07931023, i64 2
  %i.aoq = load <2 x i64>, ptr %i.aop, align 1, !tbaa !10
  %i.aor = or <2 x i64> %i.aoq, %i.aoo
  %i.aos = bitcast <2 x i64> %i.aor to <8 x i16>
  %i.aot = zext <8 x i16> %i.aos to <8 x i32>     ; 2 uses
  %i.aou = lshr <8 x i32> %i.aot, splat (i32 8)
  %i.aov = xor <8 x i32> %i.aou, splat (i32 -1)
  %i.aow = and <8 x i32> %i.aov, %i.aot
  %i.aox = uitofp nneg <8 x i32> %i.aow to <8 x float>
  %i.aoy = bitcast <8 x float> %i.aox to <8 x i32>
  %i.aoz = lshr <8 x i32> %i.aoy, splat (i32 23)
  %i.apa = bitcast <8 x i32> %i.aoz to <16 x i16>
  %i.apb = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.apa)
  %i.apc = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.apb, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.apd = bitcast <16 x i16> %i.apc to <8 x i32>
  %i.ape = sub nsw <8 x i32> splat (i32 31), %i.apd
  %i.apf = load <4 x i64>, ptr %.07911025, align 1, !tbaa !10 ; 3 uses
  %i.apg = bitcast <4 x i64> %i.apf to <8 x i32>
  %i.aph = bitcast <4 x i64> %i.apf to <8 x i32>
  %i.api = and <8 x i32> %i.aph, splat (i32 240)
  %i.apj = add <8 x i32> %i.apg, splat (i32 240)
  %i.apk = and <8 x i32> %i.apj, %i.api
  %.not942 = icmp eq <8 x i32> %i.apk, zeroinitializer
  %i.apl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ape, <8 x i32> splat (i32 1))
  %i.apm = select <8 x i1> %.not942, <8 x i32> splat (i32 1), <8 x i32> %i.apl
  %i.apn = bitcast <4 x i64> %i.apf to <8 x i32>
  %i.apo = lshr <8 x i32> %i.apn, splat (i32 16)
  %i.app = add nuw <8 x i32> %i.apm, %i.apo       ; 2 uses
  %i.apq = icmp sgt <8 x i32> %i.app, %i.ahr
  %i.apr = sext <8 x i1> %i.apq to <8 x i32>
  %i.aps = bitcast <8 x i32> %i.apr to <4 x i64>  ; 2 uses
  %i.apt = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.aps, <4 x i64> %i.aps)
  %.not838.not = icmp eq i32 %i.apt, 0
  br i1 %.not838.not, label %.thread933, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store <8 x i32> %i.app, ptr %.07921024, align 1, !tbaa !10
  %i.apu = add i32 %.07901026, 16                 ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %.07931023, i64 16
  %i.apw = getelementptr inbounds nuw i8, ptr %.07911025, i64 32
  %i.apx = getelementptr inbounds nuw i8, ptr %.07921024, i64 32
  %.not837 = icmp ugt i32 %i.apu, %6
  br i1 %.not837, label %bb.bx, label %bb.bv, !llvm.loop !51

bb.bx:                                            ; preds = %bb.bw
  store i16 2, ptr %i.c, align 16, !tbaa !66
  br i1 %.not1155, label %.critedge862, label %.lr.ph1033.preheader

.lr.ph1033.preheader:                             ; preds = %bb.bx
  %i.apy = mul i32 %.07941035, %8
  %i.apz = zext i32 %i.apy to i64
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.apz
  br label %.lr.ph1033

.critedge862:                                     ; preds = %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903, %bb.bx
  %i.aqb = add i32 %.07941035, 2                  ; 2 uses
  %i.aqc = icmp ult i32 %i.aqb, %7
  br i1 %i.aqc, label %bb.bu, label %.critedge862._crit_edge, !llvm.loop !52

.lr.ph1033:                                       ; preds = %.lr.ph1033.preheader, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903
  %i.aqd = phi i32 [ %i.awk, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ 2, %.lr.ph1033.preheader ]
  %.07851031 = phi i32 [ %i.awe, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ 0, %.lr.ph1033.preheader ]
  %.07861030 = phi ptr [ %i.awh, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.aqa, %.lr.ph1033.preheader ] ; 3 uses
  %.07871029 = phi ptr [ %i.awf, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.aon, %.lr.ph1033.preheader ] ; 2 uses
  %.07881028 = phi ptr [ %i.awi, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.d, %.lr.ph1033.preheader ] ; 2 uses
  %.07891027 = phi ptr [ %i.awg, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.c, %.lr.ph1033.preheader ] ; 2 uses
  %19 = load <16 x i8>, ptr %.07871029, align 1, !tbaa !10
  %20 = shufflevector <16 x i8> %19, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5, i32 8, i32 9, i32 8, i32 9, i32 12, i32 13, i32 12, i32 13>
  %21 = bitcast <16 x i8> %20 to <8 x i16>
  %22 = shufflevector <8 x i16> %21, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 4, i32 5, i32 4, i32 5, i32 6, i32 7, i32 6, i32 7>
  %i.aqe = and <16 x i16> %22, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.aqf = icmp eq <16 x i16> %i.aqe, zeroinitializer ; 4 uses
  %i.aqg = sext <16 x i1> %i.aqf to <16 x i16>
  %i.aqh = bitcast <16 x i16> %i.aqg to <32 x i8>
  %i.aqi = icmp sgt <32 x i8> %i.aqh, splat (i8 -1)
  %i.aqj = bitcast <32 x i1> %i.aqi to i32
  %.not.i897 = icmp eq i32 %i.aqj, 0
  br i1 %.not.i897, label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903, label %bb.by

bb.by:                                            ; preds = %.lr.ph1033
  %i.aqk = load <2 x i64>, ptr %.07881028, align 1, !tbaa !10 ; 2 uses
  %i.aql = bitcast <2 x i64> %i.aqk to <16 x i8>
  %i.aqm = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.aql, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.aqn = bitcast <16 x i8> %i.aqm to <2 x i64>
  %i.aqo = or <2 x i64> %i.aqk, %i.aqn
  %i.aqp = bitcast <2 x i64> %i.aqo to <4 x i32>
  %i.aqq = shufflevector <4 x i32> %i.aqp, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.aqr = shl <16 x i16> %i.aqe, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.aqs = lshr <16 x i16> %i.aqr, splat (i16 15) ; 2 uses
  %i.aqt = bitcast <8 x i32> %i.aqq to <16 x i16>
  %i.aqu = sub <16 x i16> %i.aqt, %i.aqs
  %.inner1671 = select <16 x i1> %i.aqf, <16 x i16> zeroinitializer, <16 x i16> %i.aqu ; 2 uses
  %i.aqv = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <16 x i16> %.inner1671, <16 x i32> <i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.aqw = add <16 x i16> %i.aqv, %.inner1671     ; 2 uses
  %i.aqx = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <16 x i16> %i.aqw, <16 x i32> <i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.aqy = add <16 x i16> %i.aqw, %i.aqx          ; 2 uses
  %i.aqz = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.aqy, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  %i.ara = add <16 x i16> %i.aqy, %i.aqz          ; 3 uses
  %i.arb = extractelement <16 x i16> %i.ara, i64 7 ; 2 uses
  %i.arc = extractelement <16 x i16> %i.ara, i64 15 ; 2 uses
  %i.ard = zext i16 %i.arc to i32                 ; 3 uses
  %i.are = bitcast <16 x i16> %i.ara to <32 x i8>
  %i.arf = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.are, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %.not116.i898 = icmp eq i16 %i.arb, 0
  br i1 %.not116.i898, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.arg = zext i16 %i.arb to i32                 ; 3 uses
  %i.arh = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.ari = load i32, ptr %i.ahs, align 8, !tbaa !29
  %i.arj = sub i32 %i.ari, %i.arg
  store i32 %i.arj, ptr %i.ahs, align 8, !tbaa !29
  %i.ark = lshr i32 %i.arg, 3
  %i.arl = and i32 %i.ark, 24
  %i.arm = zext nneg i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.arm ; 2 uses
  %i.aro = and i32 %i.arg, 63                     ; 2 uses
  %i.arp = load <2 x i64>, ptr %i.arn, align 8, !tbaa !10 ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arn, i64 16
  %i.arr = load <2 x i64>, ptr %i.arq, align 8, !tbaa !10 ; 3 uses
  %i.ars = zext nneg i32 %i.aro to i64
  %i.art = insertelement <2 x i64> poison, i64 %i.ars, i64 0
  %i.aru = shufflevector <2 x i64> %i.art, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.arv = lshr <2 x i64> %i.arp, %i.aru
  %i.arw = shufflevector <2 x i64> %i.arp, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.arx = sub nuw nsw i32 64, %i.aro
  %i.ary = zext nneg i32 %i.arx to i64
  %i.arz = insertelement <2 x i64> poison, i64 %i.ary, i64 0
  %i.asa = shufflevector <2 x i64> %i.arz, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.asb = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.arw, <2 x i64> %i.asa)
  %i.asc = or <2 x i64> %i.asb, %i.arv
  %i.asd = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.arr, <2 x i32> <i32 1, i32 2>
  %i.ase = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.asd, <2 x i64> %i.asa)
  %i.asf = or <2 x i64> %i.asc, %i.ase
  store <2 x i64> %i.asf, ptr %i.aht, align 8, !tbaa !10
  %i.asg = lshr <2 x i64> %i.arr, %i.aru
  %i.ash = shufflevector <2 x i64> %i.arr, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.asi = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ash, <2 x i64> %i.asa)
  %i.asj = or <2 x i64> %i.asi, %i.asg
  store <2 x i64> %i.asj, ptr %i.ahu, align 8, !tbaa !10
  %i.ask = shufflevector <2 x i64> %i.arh, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0112.i899 = phi <4 x i64> [ %i.ask, %bb.bz ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.by ]
  %.not117.i900 = icmp eq i16 %i.arc, 0
  br i1 %.not117.i900, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.asl = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.asm = load i32, ptr %i.ahs, align 8, !tbaa !29
  %i.asn = sub i32 %i.asm, %i.ard
  store i32 %i.asn, ptr %i.ahs, align 8, !tbaa !29
  %i.aso = lshr i32 %i.ard, 3
  %i.asp = and i32 %i.aso, 24
  %i.asq = zext nneg i32 %i.asp to i64
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.asq ; 2 uses
  %i.ass = and i32 %i.ard, 63                     ; 2 uses
  %i.ast = load <2 x i64>, ptr %i.asr, align 8, !tbaa !10 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asr, i64 16
  %i.asv = load <2 x i64>, ptr %i.asu, align 8, !tbaa !10 ; 3 uses
  %i.asw = zext nneg i32 %i.ass to i64
  %i.asx = insertelement <2 x i64> poison, i64 %i.asw, i64 0
  %i.asy = shufflevector <2 x i64> %i.asx, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.asz = lshr <2 x i64> %i.ast, %i.asy
  %i.ata = shufflevector <2 x i64> %i.ast, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.atb = sub nuw nsw i32 64, %i.ass
  %i.atc = zext nneg i32 %i.atb to i64
  %i.atd = insertelement <2 x i64> poison, i64 %i.atc, i64 0
  %i.ate = shufflevector <2 x i64> %i.atd, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.atf = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ata, <2 x i64> %i.ate)
  %i.atg = or <2 x i64> %i.atf, %i.asz
  %i.ath = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.asv, <2 x i32> <i32 1, i32 2>
  %i.ati = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ath, <2 x i64> %i.ate)
  %i.atj = or <2 x i64> %i.atg, %i.ati
  store <2 x i64> %i.atj, ptr %i.aht, align 8, !tbaa !10
  %i.atk = lshr <2 x i64> %i.asv, %i.asy
  %i.atl = shufflevector <2 x i64> %i.asv, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.atm = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.atl, <2 x i64> %i.ate)
  %i.atn = or <2 x i64> %i.atm, %i.atk
  store <2 x i64> %i.atn, ptr %i.ahu, align 8, !tbaa !10
  %i.ato = shufflevector <2 x i64> %i.asl, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0113.i901 = phi <4 x i64> [ %i.ato, %bb.cb ], [ <i64 0, i64 0, i64 poison, i64 poison>, %bb.ca ]
  %i.atp = shufflevector <4 x i64> %.0112.i899, <4 x i64> %.0113.i901, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.atq = bitcast <32 x i8> %i.arf to <16 x i16>
  %i.atr = lshr <16 x i16> %i.atq, splat (i16 3)
  %i.ats = bitcast <16 x i16> %i.atr to <32 x i8>
  %i.att = shufflevector <32 x i8> %i.ats, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14, i32 16, i32 16, i32 18, i32 18, i32 20, i32 20, i32 22, i32 22, i32 24, i32 24, i32 26, i32 26, i32 28, i32 28, i32 30, i32 30>
  %i.atu = bitcast <32 x i8> %i.att to <16 x i16> ; 2 uses
  %i.atv = add <16 x i16> %i.atu, splat (i16 256)
  %i.atw = bitcast <4 x i64> %i.atp to <32 x i8>  ; 2 uses
  %i.atx = bitcast <16 x i16> %i.atv to <32 x i8>
  %i.aty = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.atw, <32 x i8> %i.atx)
  %i.atz = add <16 x i16> %i.atu, splat (i16 513)
  %i.aua = bitcast <16 x i16> %i.atz to <32 x i8>
  %i.aub = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.atw, <32 x i8> %i.aua)
  %i.auc = and <32 x i8> %i.arf, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.aud = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.auc)
  %i.aue = bitcast <32 x i8> %i.aud to <16 x i16>
  %i.auf = add <16 x i16> %i.aue, splat (i16 257) ; 2 uses
  %i.aug = bitcast <32 x i8> %i.aty to <16 x i16>
  %i.auh = mul <16 x i16> %i.auf, %i.aug
  %i.aui = lshr <16 x i16> %i.auh, splat (i16 8)
  %i.auj = bitcast <32 x i8> %i.aub to <16 x i16>
  %i.auk = mul <16 x i16> %i.auf, %i.auj
  %.inner1672 = and <16 x i16> %i.auk, splat (i16 -256)
  %.inner1673 = or disjoint <16 x i16> %.inner1672, %i.aui
  %i.aul = add <8 x i32> %i.aqq, splat (i32 -65537) ; 2 uses
  %.inner1674 = and <8 x i32> %i.aul, <i32 31, i32 0, i32 0, i32 0, i32 31, i32 0, i32 0, i32 0> ; 2 uses
  %i.aum = bitcast <8 x i32> %i.aul to <32 x i8>
  %i.aun = shufflevector <32 x i8> %i.aum, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %i.auo = sub nuw nsw <16 x i16> splat (i16 2), %i.aqs ; 2 uses
  %.inner1675 = and <16 x i16> %i.auo, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0> ; 2 uses
  %.inner1676 = and <16 x i16> %i.auo, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1> ; 2 uses
  %i.aup = shufflevector <16 x i16> %.inner1675, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.auq = bitcast <8 x i32> %.inner1674 to <16 x i16>
  %i.aur = shufflevector <16 x i16> %i.auq, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aus = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.aup, <8 x i16> %i.aur)
  %i.aut = shufflevector <16 x i16> %.inner1675, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.auu = bitcast <8 x i32> %.inner1674 to <16 x i16>
  %i.auv = shufflevector <16 x i16> %i.auu, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.auw = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.aut, <8 x i16> %i.auv)
  %i.aux = shufflevector <8 x i16> %i.aus, <8 x i16> %i.auw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.auy = shufflevector <16 x i16> %.inner1676, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.auz = bitcast <32 x i8> %i.aun to <16 x i16>
  %i.ava = shufflevector <16 x i16> %i.auz, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avb = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.auy, <8 x i16> %i.ava)
  %i.avc = shufflevector <16 x i16> %.inner1676, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avd = bitcast <32 x i8> %i.aun to <16 x i16>
  %i.ave = shufflevector <16 x i16> %i.avd, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avf = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.avc, <8 x i16> %i.ave)
  %i.avg = shufflevector <8 x i16> %i.avb, <8 x i16> %i.avf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.inner1677 = or <16 x i16> %i.avg, %i.aux      ; 2 uses
  %i.avh = add <16 x i16> %.inner1677, splat (i16 -1)
  %.inner1678 = and <16 x i16> %.inner1673, %i.avh
  %i.avi = and <16 x i16> %i.aqr, splat (i16 2048)
  %.not1690 = icmp eq <16 x i16> %i.avi, zeroinitializer
  %.inner1679 = select <16 x i1> %.not1690, <16 x i16> zeroinitializer, <16 x i16> %.inner1677
  %.inner1680 = or <16 x i16> %.inner1678, %.inner1679 ; 2 uses
  %i.avj = shl <16 x i16> %.inner1680, splat (i16 15)
  %.inner1681 = or <16 x i16> %.inner1680, splat (i16 1) ; 2 uses
  %i.avk = add <16 x i16> %.inner1681, splat (i16 2)
  %i.avl = shl <16 x i16> %i.avk, %.splat1159
  %i.avm = or <16 x i16> %i.avj, %i.avl
  %.inner1682 = select <16 x i1> %i.aqf, <16 x i16> zeroinitializer, <16 x i16> %i.avm
  %.inner1683 = select <16 x i1> %i.aqf, <16 x i16> zeroinitializer, <16 x i16> %.inner1681
  %i.avn = bitcast <16 x i16> %.inner1683 to <32 x i8> ; 2 uses
  %i.avo = shufflevector <32 x i8> %i.avn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 6, i32 7, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 18, i32 19, i32 22, i32 23, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.avp = shufflevector <32 x i8> %i.avn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 10, i32 11, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 26, i32 27, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.avq = or <32 x i8> %i.avo, %i.avp
  %i.avr = bitcast <32 x i8> %i.avq to <4 x i64>  ; 2 uses
  %i.avs = shufflevector <4 x i64> %i.avr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.avt = or <2 x i64> %i.avs, splat (i64 562958543486978)
  %i.avu = shufflevector <4 x i64> %i.avr, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.avv = or <2 x i64> %i.avt, %i.avu
  %i.avw = bitcast <16 x i16> %.inner1682 to <32 x i8>
  br label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903

_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903: ; preds = %.lr.ph1033, %bb.cc
  %.0 = phi <2 x i64> [ splat (i64 562958543486978), %.lr.ph1033 ], [ %i.avv, %bb.cc ]
  %.0.i902 = phi <32 x i8> [ zeroinitializer, %.lr.ph1033 ], [ %i.avw, %bb.cc ] ; 2 uses
  %i.avx = and i32 %i.aqd, 65535
  %i.avy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.avx, i64 0
  %i.avz = bitcast <4 x i32> %i.avy to <2 x i64>
  %i.awa = or <2 x i64> %.0, %i.avz               ; 2 uses
  store <2 x i64> %i.awa, ptr %.07891027, align 1, !tbaa !10
  %i.awb = shufflevector <32 x i8> %.0.i902, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 0, i32 1, i32 32, i32 32, i32 4, i32 5, i32 32, i32 32, i32 8, i32 9, i32 32, i32 32, i32 12, i32 13, i32 48, i32 48, i32 16, i32 17, i32 48, i32 48, i32 20, i32 21, i32 48, i32 48, i32 24, i32 25, i32 48, i32 48, i32 28, i32 29>
  %i.awc = shufflevector <32 x i8> %.0.i902, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 2, i32 3, i32 32, i32 32, i32 6, i32 7, i32 32, i32 32, i32 10, i32 11, i32 32, i32 32, i32 14, i32 15, i32 48, i32 48, i32 18, i32 19, i32 48, i32 48, i32 22, i32 23, i32 48, i32 48, i32 26, i32 27, i32 48, i32 48, i32 30, i32 31>
end_hunk_0
