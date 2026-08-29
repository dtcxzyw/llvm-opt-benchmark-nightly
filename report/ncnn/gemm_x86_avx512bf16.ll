Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512bf16?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.aba = bitcast <2 x i64> %i.aay to <8 x i16>
  %i.abb = bitcast <2 x i64> %i.aay to <8 x i16>
  %i.abc = shufflevector <8 x i16> %i.aba, <8 x i16> %i.abb, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.abd = bitcast <2 x i64> %i.aaz to <8 x i16>
  %i.abe = bitcast <2 x i64> %i.aaz to <8 x i16>
  %i.abf = shufflevector <8 x i16> %i.abd, <8 x i16> %i.abe, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.abc, ptr %.17111.i, align 1, !tbaa !17
  %i.abg = getelementptr inbounds nuw i8, ptr %.17111.i, i64 16
  store <8 x i16> %i.abf, ptr %i.abg, align 1, !tbaa !17
  %i.abh = getelementptr inbounds nuw i8, ptr %.17111.i, i64 32
  %i.abi = getelementptr inbounds nuw i8, ptr %.3407108.i, i64 16
  %i.abj = getelementptr inbounds nuw i8, ptr %.0394109.i, i64 16
  %i.abk = load <2 x i64>, ptr %i.abi, align 1, !tbaa !17 ; 2 uses
  %i.abl = load <2 x i64>, ptr %i.abj, align 1, !tbaa !17 ; 2 uses
  %i.abm = bitcast <2 x i64> %i.abk to <8 x i16>
  %i.abn = bitcast <2 x i64> %i.abk to <8 x i16>
  %i.abo = shufflevector <8 x i16> %i.abm, <8 x i16> %i.abn, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.abp = bitcast <2 x i64> %i.abl to <8 x i16>
  %i.abq = bitcast <2 x i64> %i.abl to <8 x i16>
  %i.abr = shufflevector <8 x i16> %i.abp, <8 x i16> %i.abq, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.abo, ptr %i.abh, align 1, !tbaa !17
  %i.abs = getelementptr inbounds nuw i8, ptr %.17111.i, i64 48
  store <8 x i16> %i.abr, ptr %i.abs, align 1, !tbaa !17
  %i.abt = getelementptr inbounds nuw i8, ptr %.17111.i, i64 64 ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.3407108.i, i64 32 ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.0394109.i, i64 32 ; 3 uses
  %niter860.next.1 = add nuw nsw i32 %niter860, 2 ; 2 uses
  %niter860.ncmp.1.not = icmp eq i32 %niter860.next.1, %unroll_iter859
  br i1 %niter860.ncmp.1.not, label %.preheader14.i.loopexit.unr-lcssa, label %.lr.ph112.i, !llvm.loop !103

.lr.ph121.i:                                      ; preds = %.lr.ph121.i.prol.loopexit, %.lr.ph121.i
  %.18120.i = phi ptr [ %i.acr, %.lr.ph121.i ], [ %.18120.i.unr, %.lr.ph121.i.prol.loopexit ] ; 9 uses
  %.1393119.i = phi i32 [ %i.acu, %.lr.ph121.i ], [ %.1393119.i.unr, %.lr.ph121.i.prol.loopexit ]
  %.1395118.i = phi ptr [ %i.act, %.lr.ph121.i ], [ %.1395118.i.unr, %.lr.ph121.i.prol.loopexit ] ; 5 uses
  %.4408117.i = phi ptr [ %i.acs, %.lr.ph121.i ], [ %.4408117.i.unr, %.lr.ph121.i.prol.loopexit ] ; 5 uses
  %i.abw = load i64, ptr %.4408117.i, align 1, !tbaa !17
  store i64 %i.abw, ptr %.18120.i, align 1, !tbaa !17
  %i.abx = getelementptr inbounds nuw i8, ptr %.18120.i, i64 8
  %i.aby = load i64, ptr %.1395118.i, align 1, !tbaa !17
  store i64 %i.aby, ptr %i.abx, align 1, !tbaa !17
  %i.abz = getelementptr inbounds nuw i8, ptr %.18120.i, i64 16
  %i.aca = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 8
  %i.acb = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 8
  %i.acc = load i64, ptr %i.aca, align 1, !tbaa !17
  store i64 %i.acc, ptr %i.abz, align 1, !tbaa !17
  %i.acd = getelementptr inbounds nuw i8, ptr %.18120.i, i64 24
  %i.ace = load i64, ptr %i.acb, align 1, !tbaa !17
  store i64 %i.ace, ptr %i.acd, align 1, !tbaa !17
  %i.acf = getelementptr inbounds nuw i8, ptr %.18120.i, i64 32
  %i.acg = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 16
  %i.ach = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 16
  %i.aci = load i64, ptr %i.acg, align 1, !tbaa !17
  store i64 %i.aci, ptr %i.acf, align 1, !tbaa !17
  %i.acj = getelementptr inbounds nuw i8, ptr %.18120.i, i64 40
  %i.ack = load i64, ptr %i.ach, align 1, !tbaa !17
  store i64 %i.ack, ptr %i.acj, align 1, !tbaa !17
  %i.acl = getelementptr inbounds nuw i8, ptr %.18120.i, i64 48
  %i.acm = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 24
  %i.acn = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 24
  %i.aco = load i64, ptr %i.acm, align 1, !tbaa !17
  store i64 %i.aco, ptr %i.acl, align 1, !tbaa !17
  %i.acp = getelementptr inbounds nuw i8, ptr %.18120.i, i64 56
  %i.acq = load i64, ptr %i.acn, align 1, !tbaa !17
  store i64 %i.acq, ptr %i.acp, align 1, !tbaa !17
  %i.acr = getelementptr inbounds nuw i8, ptr %.18120.i, i64 64 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 32
  %i.act = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 32
  %i.acu = add nuw nsw i32 %.1393119.i, 4         ; 2 uses
  %exitcond306.not.i.3 = icmp eq i32 %i.acu, %5
  br i1 %exitcond306.not.i.3, label %.loopexit13.i, label %.lr.ph121.i, !llvm.loop !104

bb.h:                                             ; preds = %bb.f
  br i1 %i.ki, label %.lr.ph127.i.preheader, label %.preheader12.i

.lr.ph127.i.preheader:                            ; preds = %bb.h
  br i1 %i.ku, label %.lr.ph127.i.epil.preheader, label %.lr.ph127.i

.preheader12.i.loopexit.unr-lcssa:                ; preds = %.lr.ph127.i
  br i1 %lcmp.mod843.not, label %.preheader12.i, label %.lr.ph127.i.epil.preheader

.lr.ph127.i.epil.preheader:                       ; preds = %.preheader12.i.loopexit.unr-lcssa, %.lr.ph127.i.preheader
  %.20126.i.epil.init = phi ptr [ %.13137.i, %.lr.ph127.i.preheader ], [ %i.adr, %.preheader12.i.loopexit.unr-lcssa ]
  %.6410124.i.epil.init = phi ptr [ %i.xb, %.lr.ph127.i.preheader ], [ %i.ads, %.preheader12.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod846)
  br label %.lr.ph127.i.epil

.lr.ph127.i.epil:                                 ; preds = %.lr.ph127.i.epil, %.lr.ph127.i.epil.preheader
  %.20126.i.epil = phi ptr [ %i.acw, %.lr.ph127.i.epil ], [ %.20126.i.epil.init, %.lr.ph127.i.epil.preheader ] ; 2 uses
  %.6410124.i.epil = phi ptr [ %i.acx, %.lr.ph127.i.epil ], [ %.6410124.i.epil.init, %.lr.ph127.i.epil.preheader ] ; 2 uses
  %epil.iter842 = phi i32 [ %epil.iter842.next, %.lr.ph127.i.epil ], [ 0, %.lr.ph127.i.epil.preheader ]
  %i.acv = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.6410124.i.epil, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.acv, ptr %.20126.i.epil, align 1, !tbaa !17
  %i.acw = getelementptr inbounds nuw i8, ptr %.20126.i.epil, i64 32 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.6410124.i.epil, i64 4 ; 2 uses
  %epil.iter842.next = add i32 %epil.iter842, 1   ; 2 uses
  %epil.iter842.cmp.not = icmp eq i32 %epil.iter842.next, %xtraiter841
  br i1 %epil.iter842.cmp.not, label %.preheader12.i, label %.lr.ph127.i.epil, !llvm.loop !105

.preheader12.i:                                   ; preds = %.preheader12.i.loopexit.unr-lcssa, %.lr.ph127.i.epil, %bb.h
  %.6410.lcssa.i = phi ptr [ %i.xb, %bb.h ], [ %i.ads, %.preheader12.i.loopexit.unr-lcssa ], [ %i.acx, %.lr.ph127.i.epil ] ; 2 uses
  %.0384.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.kn, %.lr.ph127.i.epil ], [ %i.kn, %.preheader12.i.loopexit.unr-lcssa ] ; 5 uses
  %.20.lcssa.i = phi ptr [ %.13137.i, %bb.h ], [ %i.adr, %.preheader12.i.loopexit.unr-lcssa ], [ %i.acw, %.lr.ph127.i.epil ] ; 3 uses
  %i.acy = icmp slt i32 %.0384.lcssa.i, %5
  br i1 %i.acy, label %.lr.ph134.i.preheader, label %.loopexit13.i

.lr.ph134.i.preheader:                            ; preds = %.preheader12.i
  %i.acz = sub i32 %5, %.0384.lcssa.i
  %xtraiter849 = and i32 %i.acz, 3                ; 2 uses
  %lcmp.mod850.not = icmp eq i32 %xtraiter849, 0
  br i1 %lcmp.mod850.not, label %.lr.ph134.i.prol.loopexit, label %.lr.ph134.i.prol

.lr.ph134.i.prol:                                 ; preds = %.lr.ph134.i.preheader, %.lr.ph134.i.prol
  %.21133.i.prol = phi ptr [ %i.adc, %.lr.ph134.i.prol ], [ %.20.lcssa.i, %.lr.ph134.i.preheader ] ; 2 uses
  %.1385132.i.prol = phi i32 [ %i.ade, %.lr.ph134.i.prol ], [ %.0384.lcssa.i, %.lr.ph134.i.preheader ]
  %.7411131.i.prol = phi ptr [ %i.add, %.lr.ph134.i.prol ], [ %.6410.lcssa.i, %.lr.ph134.i.preheader ] ; 2 uses
  %prol.iter851 = phi i32 [ %prol.iter851.next, %.lr.ph134.i.prol ], [ 0, %.lr.ph134.i.preheader ]
  %i.ada = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.7411131.i.prol, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  %i.adb = trunc <8 x i32> %i.ada to <8 x i16>
  store <8 x i16> %i.adb, ptr %.21133.i.prol, align 1, !tbaa !17
  %i.adc = getelementptr inbounds nuw i8, ptr %.21133.i.prol, i64 16 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.7411131.i.prol, i64 2 ; 2 uses
  %i.ade = add nuw nsw i32 %.1385132.i.prol, 1    ; 2 uses
  %prol.iter851.next = add i32 %prol.iter851, 1   ; 2 uses
  %prol.iter851.cmp.not = icmp eq i32 %prol.iter851.next, %xtraiter849
  br i1 %prol.iter851.cmp.not, label %.lr.ph134.i.prol.loopexit, label %.lr.ph134.i.prol, !llvm.loop !106

.lr.ph134.i.prol.loopexit:                        ; preds = %.lr.ph134.i.prol, %.lr.ph134.i.preheader
  %.lcssa782.unr = phi ptr [ poison, %.lr.ph134.i.preheader ], [ %i.adc, %.lr.ph134.i.prol ]
  %.21133.i.unr = phi ptr [ %.20.lcssa.i, %.lr.ph134.i.preheader ], [ %i.adc, %.lr.ph134.i.prol ]
  %.1385132.i.unr = phi i32 [ %.0384.lcssa.i, %.lr.ph134.i.preheader ], [ %i.ade, %.lr.ph134.i.prol ]
  %.7411131.i.unr = phi ptr [ %.6410.lcssa.i, %.lr.ph134.i.preheader ], [ %i.add, %.lr.ph134.i.prol ]
  %i.adf = sub i32 %.0384.lcssa.i, %5
  %i.adg = icmp ugt i32 %i.adf, -4
  br i1 %i.adg, label %.loopexit13.i, label %.lr.ph134.i

.lr.ph127.i:                                      ; preds = %.lr.ph127.i.preheader, %.lr.ph127.i
  %.20126.i = phi ptr [ %i.adr, %.lr.ph127.i ], [ %.13137.i, %.lr.ph127.i.preheader ] ; 5 uses
  %.6410124.i = phi ptr [ %i.ads, %.lr.ph127.i ], [ %i.xb, %.lr.ph127.i.preheader ] ; 5 uses
  %niter848 = phi i32 [ %niter848.next.3, %.lr.ph127.i ], [ 0, %.lr.ph127.i.preheader ]
  %i.adh = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.6410124.i, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.adh, ptr %.20126.i, align 1, !tbaa !17
  %i.adi = getelementptr inbounds nuw i8, ptr %.20126.i, i64 32
  %i.adj = getelementptr inbounds nuw i8, ptr %.6410124.i, i64 4
  %i.adk = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.adj, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.adk, ptr %i.adi, align 1, !tbaa !17
  %i.adl = getelementptr inbounds nuw i8, ptr %.20126.i, i64 64
  %i.adm = getelementptr inbounds nuw i8, ptr %.6410124.i, i64 8
  %i.adn = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.adm, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.adn, ptr %i.adl, align 1, !tbaa !17
  %i.ado = getelementptr inbounds nuw i8, ptr %.20126.i, i64 96
  %i.adp = getelementptr inbounds nuw i8, ptr %.6410124.i, i64 12
  %i.adq = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.adp, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.adq, ptr %i.ado, align 1, !tbaa !17
  %i.adr = getelementptr inbounds nuw i8, ptr %.20126.i, i64 128 ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.6410124.i, i64 16 ; 3 uses
  %niter848.next.3 = add i32 %niter848, 4         ; 2 uses
  %niter848.ncmp.3.not = icmp eq i32 %niter848.next.3, %unroll_iter847
  br i1 %niter848.ncmp.3.not, label %.preheader12.i.loopexit.unr-lcssa, label %.lr.ph127.i, !llvm.loop !107

.lr.ph134.i:                                      ; preds = %.lr.ph134.i.prol.loopexit, %.lr.ph134.i
  %.21133.i = phi ptr [ %i.aeh, %.lr.ph134.i ], [ %.21133.i.unr, %.lr.ph134.i.prol.loopexit ] ; 5 uses
  %.1385132.i = phi i32 [ %i.aej, %.lr.ph134.i ], [ %.1385132.i.unr, %.lr.ph134.i.prol.loopexit ]
  %.7411131.i = phi ptr [ %i.aei, %.lr.ph134.i ], [ %.7411131.i.unr, %.lr.ph134.i.prol.loopexit ] ; 5 uses
  %i.adt = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.7411131.i, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  %i.adu = trunc <8 x i32> %i.adt to <8 x i16>
  store <8 x i16> %i.adu, ptr %.21133.i, align 1, !tbaa !17
  %i.adv = getelementptr inbounds nuw i8, ptr %.21133.i, i64 16
  %i.adw = getelementptr inbounds nuw i8, ptr %.7411131.i, i64 2
  %i.adx = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.adw, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  %i.ady = trunc <8 x i32> %i.adx to <8 x i16>
  store <8 x i16> %i.ady, ptr %i.adv, align 1, !tbaa !17
  %i.adz = getelementptr inbounds nuw i8, ptr %.21133.i, i64 32
  %i.aea = getelementptr inbounds nuw i8, ptr %.7411131.i, i64 4
  %i.aeb = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.aea, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  %i.aec = trunc <8 x i32> %i.aeb to <8 x i16>
  store <8 x i16> %i.aec, ptr %i.adz, align 1, !tbaa !17
  %i.aed = getelementptr inbounds nuw i8, ptr %.21133.i, i64 48
  %i.aee = getelementptr inbounds nuw i8, ptr %.7411131.i, i64 6
  %i.aef = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.aee, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  %i.aeg = trunc <8 x i32> %i.aef to <8 x i16>
  store <8 x i16> %i.aeg, ptr %i.aed, align 1, !tbaa !17
  %i.aeh = getelementptr inbounds nuw i8, ptr %.21133.i, i64 64 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.7411131.i, i64 8
  %i.aej = add nuw nsw i32 %.1385132.i, 4         ; 2 uses
  %exitcond307.not.i.3 = icmp eq i32 %i.aej, %5
  br i1 %exitcond307.not.i.3, label %.loopexit13.i, label %.lr.ph134.i, !llvm.loop !108

.loopexit13.i:                                    ; preds = %.lr.ph134.i.prol.loopexit, %.lr.ph134.i, %.lr.ph121.i.prol.loopexit, %.lr.ph121.i, %.lr.ph105.i.prol.loopexit, %.lr.ph105.i, %middle.block277, %.preheader12.i, %.preheader14.i, %.preheader16.i, %bb.f
  %.22.i = phi ptr [ %.13137.i, %bb.f ], [ %.20.lcssa.i, %.preheader12.i ], [ %i.ze, %.lr.ph105.i ], [ %i.acr, %.lr.ph121.i ], [ %.17.lcssa.i, %.preheader14.i ], [ %.14.lcssa.i, %.preheader16.i ], [ %i.aaf, %middle.block277 ], [ %.lcssa789.unr, %.lr.ph105.i.prol.loopexit ], [ %.lcssa786.unr, %.lr.ph121.i.prol.loopexit ], [ %.lcssa782.unr, %.lr.ph134.i.prol.loopexit ], [ %i.aeh, %.lr.ph134.i ] ; 2 uses
  %indvars.iv.next309.i = add nuw nsw i64 %indvars.iv308.i, 8 ; 3 uses
  %i.aek = icmp slt i64 %indvars.iv.next309.i, %invariant.op.i
  br i1 %i.aek, label %bb.f, label %.preheader11.loopexit.i, !llvm.loop !109

.preheader6.loopexit.i:                           ; preds = %.loopexit.i.us59, %.loopexit.i.us, %.loopexit.i.preheader
  %.us-phi54 = phi ptr [ %.13.lcssa.i, %.loopexit.i.preheader ], [ %.29.i.us, %.loopexit.i.us ], [ %.29.i.us60, %.loopexit.i.us59 ]
  %.us-phi55 = phi i64 [ %i.ls, %.loopexit.i.preheader ], [ %indvars.iv.next314.i.us, %.loopexit.i.us ], [ %indvars.iv.next314.i.us61, %.loopexit.i.us59 ]
  %i.ael = trunc nsw i64 %.us-phi55 to i32
  br label %.preheader6.i

.preheader6.i:                                    ; preds = %.preheader6.loopexit.i, %.preheader11.i
  %.2370.lcssa.i = phi i32 [ %.1369.lcssa.i, %.preheader11.i ], [ %i.ael, %.preheader6.loopexit.i ] ; 7 uses
  %.23.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader11.i ], [ %.us-phi54, %.preheader6.loopexit.i ] ; 11 uses
  %i.aem = or disjoint i32 %.2370.lcssa.i, 1
  %i.aen = icmp slt i32 %i.aem, %3
  br i1 %i.aen, label %.lr.ph197.i, label %.preheader4.i

.lr.ph197.i:                                      ; preds = %.preheader6.i
  %i.aeo = load ptr, ptr %0, align 8, !tbaa !9    ; 12 uses
  %i.aep = sext i32 %4 to i64                     ; 5 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.aeo, i64 %i.aep ; 18 uses
  %i.aeq = icmp sgt i32 %5, 1
  br i1 %i.aeq, label %.lr.ph184.us.preheader.i, label %.lr.ph197.split.i

.lr.ph184.us.preheader.i:                         ; preds = %.lr.ph197.i
  %i.aer = and i32 %5, 2147483646                 ; 7 uses
  %i.aes = sext i32 %.2370.lcssa.i to i64         ; 4 uses
  %i.aet = sext i32 %2 to i64                     ; 2 uses
  %i.aeu = sext i32 %3 to i64
  %.not = icmp eq i32 %i.aer, %5
  %invariant.op403.i = add nsw i64 %i.aeu, -1     ; 2 uses
  %i.aev = xor i32 %i.aer, -1
  %i.aew = add nsw i32 %5, %i.aev
  %i.aex = zext i32 %i.aew to i64                 ; 2 uses
  %i.aey = shl nuw nsw i64 %i.aex, 2
  %i.aez = add nsw i64 %i.aes, %i.aet             ; 2 uses
  %i.afa = shl nsw i64 %i.aez, 1                  ; 3 uses
  %i.afb = add nsw i64 %i.afa, 2
  %i.afc = mul i64 %i.k, %i.afb                   ; 2 uses
  %i.afd = shl nsw i64 %i.aep, 1                  ; 6 uses
  %i.afe = shl nuw nsw i64 %i.aex, 1              ; 2 uses
  %i.aff = shl i64 %i.k, 2                        ; 2 uses
  %i.afg = mul i64 %i.k, %i.aez
  %i.afh = shl i64 %i.afg, 1                      ; 2 uses
  %i.afi = xor i32 %i.aer, -1
  %i.afj = add nsw i32 %5, %i.afi                 ; 3 uses
  %i.afk = zext i32 %i.afj to i64
  %i.afl = add nuw nsw i64 %i.afk, 1              ; 5 uses
  %i.afm = add nsw i32 %5, -2
  %i.afn = lshr i32 %i.afm, 1
  %i.afo = zext nneg i32 %i.afn to i64            ; 2 uses
  %i.afp = shl nuw nsw i64 %i.afo, 3
  %i.afq = getelementptr i8, ptr %i.aeo, i64 %i.afc
  %scevgep591 = getelementptr i8, ptr %i.afq, i64 %i.afd
  %i.afr = add nsw i64 %i.aes, 2
  %smax592 = tail call i64 @llvm.smax.i64(i64 %invariant.op403.i, i64 %i.afr)
  %i.afs = xor i64 %i.aes, -1
  %i.aft = add i64 %smax592, %i.afs
  %i.afu = shl i64 %i.aft, 1
  %i.afv = and i64 %i.afu, -4                     ; 2 uses
  %i.afw = add i64 %i.afv, %i.afa
  %i.afx = add i64 %i.afw, 2
  %i.afy = mul i64 %i.k, %i.afx
  %i.afz = shl nuw nsw i64 %i.afo, 2              ; 2 uses
  %i.aga = getelementptr i8, ptr %i.aeo, i64 %i.afy
  %i.agb = getelementptr i8, ptr %i.aga, i64 %i.afz
  %i.agc = getelementptr i8, ptr %i.agb, i64 %i.afd
  %scevgep593 = getelementptr i8, ptr %i.agc, i64 4
  %i.agd = getelementptr i8, ptr %i.aeo, i64 %i.afh
  %scevgep594 = getelementptr i8, ptr %i.agd, i64 %i.afd
  %i.age = add i64 %i.afv, %i.afa
  %i.agf = mul i64 %i.k, %i.age
  %i.agg = getelementptr i8, ptr %i.aeo, i64 %i.agf
  %i.agh = getelementptr i8, ptr %i.agg, i64 %i.afz
  %i.agi = getelementptr i8, ptr %i.agh, i64 %i.afd
  %scevgep595 = getelementptr i8, ptr %i.agi, i64 4
  %i.agj = add nsw i32 %5, -2                     ; 3 uses
  %i.agk = lshr i32 %i.agj, 1
  %narrow754 = add nuw i32 %i.agk, 1
  %i.agl = zext i32 %narrow754 to i64             ; 5 uses
  %min.iters.check606 = icmp ult i32 %i.agj, 14
  %stride.check603 = icmp slt i64 %i.aff, 0
  %min.iters.check608 = icmp ult i32 %i.agj, 62
  %i.agm = and i64 %i.agl, 24
  %n.vec610 = and i64 %i.agl, 4294967264          ; 8 uses
  %i.agn = trunc nuw i64 %n.vec610 to i32
  %i.ago = shl i32 %i.agn, 1
  %i.agp = shl nuw nsw i64 %n.vec610, 2           ; 2 uses
  %i.agq = shl nuw nsw i64 %n.vec610, 3
  %ind.escape = add nsw i64 %n.vec610, -1
  %cmp.n625 = icmp eq i64 %n.vec610, %i.agl
  %min.epilog.iters.check634 = icmp eq i64 %i.agm, 0
  %n.vec636 = and i64 %i.agl, 4294967288          ; 7 uses
  %i.agr = trunc nuw i64 %n.vec636 to i32
  %i.ags = shl i32 %i.agr, 1
  %i.agt = shl nuw nsw i64 %n.vec636, 2           ; 2 uses
  %i.agu = shl nuw nsw i64 %n.vec636, 3
  %ind.escape651 = add nsw i64 %n.vec636, -1
  %cmp.n652 = icmp eq i64 %n.vec636, %i.agl
  %min.iters.check547 = icmp ult i32 %i.afj, 7
  %invariant.gep978 = getelementptr i8, ptr %i.aeo, i64 %i.afc
  %invariant.gep980 = getelementptr i8, ptr %invariant.gep978, i64 %i.afd
  %invariant.gep982 = getelementptr i8, ptr %invariant.gep980, i64 %i.afe
  %invariant.gep984 = getelementptr i8, ptr %i.aeo, i64 %i.afh
  %invariant.gep986 = getelementptr i8, ptr %invariant.gep984, i64 %i.afd
  %invariant.gep988 = getelementptr i8, ptr %invariant.gep986, i64 %i.afe
  %min.iters.check549 = icmp ult i32 %i.afj, 31
  %i.agv = and i64 %i.afl, 24
  %n.vec551 = and i64 %i.afl, 8589934560          ; 6 uses
  %i.agw = trunc i64 %n.vec551 to i32
  %i.agx = add i32 %i.aer, %i.agw
  %i.agy = shl nuw nsw i64 %n.vec551, 1           ; 2 uses
  %i.agz = shl nuw nsw i64 %n.vec551, 2
  %cmp.n562 = icmp eq i64 %i.afl, %n.vec551
  %min.epilog.iters.check571 = icmp eq i64 %i.agv, 0
  %n.vec573 = and i64 %i.afl, 8589934584          ; 5 uses
  %i.aha = trunc i64 %n.vec573 to i32
  %i.ahb = add i32 %i.aer, %i.aha
  %i.ahc = shl nuw nsw i64 %n.vec573, 1           ; 2 uses
  %i.ahd = shl nuw nsw i64 %n.vec573, 2
  %cmp.n584 = icmp eq i64 %i.afl, %n.vec573
  br label %iter.check631

iter.check631:                                    ; preds = %._crit_edge.us.i, %.lr.ph184.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph184.us.preheader.i ] ; 2 uses
  %indvars.iv320.i = phi i64 [ %indvars.iv.next321.i, %._crit_edge.us.i ], [ %i.aes, %.lr.ph184.us.preheader.i ] ; 2 uses
  %.30196.us.i = phi ptr [ %.32.lcssa.us.i, %._crit_edge.us.i ], [ %.23.lcssa.i, %.lr.ph184.us.preheader.i ] ; 11 uses
  %.30196.us.i533 = ptrtoaddr ptr %.30196.us.i to i64
  %i.ahe = mul i64 %i.aff, %indvar                ; 2 uses
  %i.ahf = add nsw i64 %indvars.iv320.i, %i.aet
  %i.ahg = mul i64 %i.ahf, %i.k
  %gep.us.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.ahg ; 7 uses
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %gep.us.i, i64 %i.k ; 6 uses
  br i1 %min.iters.check606, label %vec.epilog.scalar.ph632.preheader, label %vector.memcheck589

vector.memcheck589:                               ; preds = %iter.check631
  %i.ahi = getelementptr i8, ptr %.30196.us.i, i64 %i.afp
  %scevgep590 = getelementptr i8, ptr %i.ahi, i64 8 ; 2 uses
  %bound0596 = icmp ult ptr %.30196.us.i, %scevgep593
  %bound1597 = icmp ult ptr %scevgep591, %scevgep590
  %found.conflict598 = and i1 %bound0596, %bound1597
  %bound0600 = icmp ult ptr %.30196.us.i, %scevgep595
  %bound1601 = icmp ult ptr %scevgep594, %scevgep590
  %found.conflict602 = and i1 %bound0600, %bound1601
  %i.ahj = or i1 %found.conflict602, %stride.check603
  %conflict.rdx604 = or i1 %found.conflict598, %i.ahj
  br i1 %conflict.rdx604, label %vec.epilog.scalar.ph632.preheader, label %vector.main.loop.iter.check607

vector.main.loop.iter.check607:                   ; preds = %vector.memcheck589
  br i1 %min.iters.check608, label %vec.epilog.ph635, label %vector.ph609

vector.ph609:                                     ; preds = %vector.main.loop.iter.check607
  %i.ahk = getelementptr i8, ptr %i.ahh, i64 %i.agp ; 2 uses
  %i.ahl = getelementptr i8, ptr %gep.us.i, i64 %i.agp ; 2 uses
  %i.ahm = getelementptr i8, ptr %.30196.us.i, i64 %i.agq ; 2 uses
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph609
  %index612 = phi i64 [ 0, %vector.ph609 ], [ %index.next623, %vector.body611 ] ; 3 uses
  %i.ahn = shl i64 %index612, 2                   ; 2 uses
  %next.gep613 = getelementptr i8, ptr %i.ahh, i64 %i.ahn
  %next.gep614 = getelementptr i8, ptr %gep.us.i, i64 %i.ahn
  %i.aho = shl i64 %index612, 3
  %next.gep615 = getelementptr i8, ptr %.30196.us.i, i64 %i.aho
  %wide.vec616 = load <64 x i16>, ptr %next.gep614, align 2, !tbaa !57, !alias.scope !110
  %wide.vec619 = load <64 x i16>, ptr %next.gep613, align 2, !tbaa !57, !alias.scope !113
  %interleaved.vec622 = shufflevector <64 x i16> %wide.vec616, <64 x i16> %wide.vec619, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i16> %interleaved.vec622, ptr %next.gep615, align 2, !tbaa !57, !alias.scope !115, !noalias !117
  %index.next623 = add nuw i64 %index612, 32      ; 2 uses
  %i.ahp = icmp eq i64 %index.next623, %n.vec610
  br i1 %i.ahp, label %middle.block624, label %vector.body611, !llvm.loop !118

middle.block624:                                  ; preds = %vector.body611
  br i1 %cmp.n625, label %..preheader5_crit_edge.us.i, label %vec.epilog.iter.check633

vec.epilog.iter.check633:                         ; preds = %middle.block624
  br i1 %min.epilog.iters.check634, label %vec.epilog.scalar.ph632.preheader, label %vec.epilog.ph635, !prof !52

vec.epilog.ph635:                                 ; preds = %vector.main.loop.iter.check607, %vec.epilog.iter.check633
  %vec.epilog.resume.val626 = phi i64 [ %n.vec610, %vec.epilog.iter.check633 ], [ 0, %vector.main.loop.iter.check607 ]
  %i.ahq = getelementptr i8, ptr %i.ahh, i64 %i.agt ; 2 uses
  %i.ahr = getelementptr i8, ptr %gep.us.i, i64 %i.agt ; 2 uses
  %i.ahs = getelementptr i8, ptr %.30196.us.i, i64 %i.agu ; 2 uses
  br label %vec.epilog.vector.body637

vec.epilog.vector.body637:                        ; preds = %vec.epilog.vector.body637, %vec.epilog.ph635
  %index638 = phi i64 [ %vec.epilog.resume.val626, %vec.epilog.ph635 ], [ %index.next649, %vec.epilog.vector.body637 ] ; 3 uses
  %i.aht = shl i64 %index638, 2                   ; 2 uses
  %next.gep639 = getelementptr i8, ptr %i.ahh, i64 %i.aht
  %next.gep640 = getelementptr i8, ptr %gep.us.i, i64 %i.aht
  %i.ahu = shl i64 %index638, 3
  %next.gep641 = getelementptr i8, ptr %.30196.us.i, i64 %i.ahu
  %wide.vec642 = load <16 x i16>, ptr %next.gep640, align 2, !tbaa !57, !alias.scope !110
  %wide.vec645 = load <16 x i16>, ptr %next.gep639, align 2, !tbaa !57, !alias.scope !113
  %interleaved.vec648 = shufflevector <16 x i16> %wide.vec642, <16 x i16> %wide.vec645, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i16> %interleaved.vec648, ptr %next.gep641, align 2, !tbaa !57, !alias.scope !115, !noalias !117
  %index.next649 = add nuw i64 %index638, 8       ; 2 uses
  %i.ahv = icmp eq i64 %index.next649, %n.vec636
  br i1 %i.ahv, label %vec.epilog.middle.block650, label %vec.epilog.vector.body637, !llvm.loop !119

vec.epilog.middle.block650:                       ; preds = %vec.epilog.vector.body637
  br i1 %cmp.n652, label %..preheader5_crit_edge.us.i, label %vec.epilog.scalar.ph632.preheader

vec.epilog.scalar.ph632.preheader:                ; preds = %vector.memcheck589, %iter.check631, %vec.epilog.iter.check633, %vec.epilog.middle.block650
  %indvar535.ph = phi i64 [ 0, %iter.check631 ], [ 0, %vector.memcheck589 ], [ %n.vec610, %vec.epilog.iter.check633 ], [ %n.vec636, %vec.epilog.middle.block650 ]
  %.0345183.us.i.ph = phi i32 [ 0, %iter.check631 ], [ 0, %vector.memcheck589 ], [ %i.ago, %vec.epilog.iter.check633 ], [ %i.ags, %vec.epilog.middle.block650 ]
  %.0347182.us.i.ph = phi ptr [ %i.ahh, %iter.check631 ], [ %i.ahh, %vector.memcheck589 ], [ %i.ahk, %vec.epilog.iter.check633 ], [ %i.ahq, %vec.epilog.middle.block650 ]
  %.0349181.us.i.ph = phi ptr [ %gep.us.i, %iter.check631 ], [ %gep.us.i, %vector.memcheck589 ], [ %i.ahl, %vec.epilog.iter.check633 ], [ %i.ahr, %vec.epilog.middle.block650 ]
  %.31180.us.i.ph = phi ptr [ %.30196.us.i, %iter.check631 ], [ %.30196.us.i, %vector.memcheck589 ], [ %i.ahm, %vec.epilog.iter.check633 ], [ %i.ahs, %vec.epilog.middle.block650 ]
  br label %vec.epilog.scalar.ph632

vec.epilog.scalar.ph632:                          ; preds = %vec.epilog.scalar.ph632.preheader, %vec.epilog.scalar.ph632
end_hunk_0
begin_hunk_1_@_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  store i16 %i.ahw, ptr %.31180.us.i, align 2, !tbaa !57
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0349181.us.i, i64 2
  %i.ahy = load i16, ptr %i.ahx, align 2, !tbaa !57
  %i.ahz = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 2
  store i16 %i.ahy, ptr %i.ahz, align 2, !tbaa !57
  %i.aia = load i16, ptr %.0347182.us.i, align 2, !tbaa !57
  %i.aib = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 4
  store i16 %i.aia, ptr %i.aib, align 2, !tbaa !57
  %i.aic = getelementptr inbounds nuw i8, ptr %.0347182.us.i, i64 2
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !57
  %i.aie = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 6
  store i16 %i.aid, ptr %i.aie, align 2, !tbaa !57
  %i.aif = getelementptr i8, ptr %.31180.us.i, i64 8 ; 2 uses
  %i.aig = getelementptr i8, ptr %.0349181.us.i, i64 4 ; 2 uses
  %i.aih = getelementptr i8, ptr %.0347182.us.i, i64 4 ; 2 uses
  %i.aii = add nuw nsw i32 %.0345183.us.i, 2      ; 2 uses
  %i.aij = or disjoint i32 %i.aii, 1
  %i.aik = icmp slt i32 %i.aij, %5
  %indvar.next536 = add i64 %indvar535, 1
  br i1 %i.aik, label %vec.epilog.scalar.ph632, label %..preheader5_crit_edge.us.i, !llvm.loop !120

.lr.ph193.us.i:                                   ; preds = %.lr.ph193.us.i.prol.loopexit, %.lr.ph193.us.i
  %.1346192.us.i = phi i32 [ %i.ajj, %.lr.ph193.us.i ], [ %.1346192.us.i.unr, %.lr.ph193.us.i.prol.loopexit ]
  %.1348191.us.i = phi ptr [ %i.aji, %.lr.ph193.us.i ], [ %.1348191.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 5 uses
  %.1350190.us.i = phi ptr [ %i.ajh, %.lr.ph193.us.i ], [ %.1350190.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 5 uses
  %.32189.us.i = phi ptr [ %i.ajg, %.lr.ph193.us.i ], [ %.32189.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 9 uses
  %i.ail = load i16, ptr %.1350190.us.i, align 2, !tbaa !57
  store i16 %i.ail, ptr %.32189.us.i, align 2, !tbaa !57
  %i.aim = load i16, ptr %.1348191.us.i, align 2, !tbaa !57
  %i.ain = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 2
  store i16 %i.aim, ptr %i.ain, align 2, !tbaa !57
  %i.aio = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 4
  %i.aip = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 2
  %i.aiq = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 2
  %i.air = load i16, ptr %i.aip, align 2, !tbaa !57
  store i16 %i.air, ptr %i.aio, align 2, !tbaa !57
  %i.ais = load i16, ptr %i.aiq, align 2, !tbaa !57
  %i.ait = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 6
  store i16 %i.ais, ptr %i.ait, align 2, !tbaa !57
  %i.aiu = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 8
  %i.aiv = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 4
  %i.aiw = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 4
  %i.aix = load i16, ptr %i.aiv, align 2, !tbaa !57
  store i16 %i.aix, ptr %i.aiu, align 2, !tbaa !57
  %i.aiy = load i16, ptr %i.aiw, align 2, !tbaa !57
  %i.aiz = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 10
  store i16 %i.aiy, ptr %i.aiz, align 2, !tbaa !57
  %i.aja = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 12
  %i.ajb = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 6
  %i.ajc = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 6
  %i.ajd = load i16, ptr %i.ajb, align 2, !tbaa !57
  store i16 %i.ajd, ptr %i.aja, align 2, !tbaa !57
  %i.aje = load i16, ptr %i.ajc, align 2, !tbaa !57
  %i.ajf = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 14
  store i16 %i.aje, ptr %i.ajf, align 2, !tbaa !57
  %i.ajg = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 16 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 8
  %i.aji = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 8
  %i.ajj = add nuw nsw i32 %.1346192.us.i, 4      ; 2 uses
  %exitcond319.not.i.3 = icmp eq i32 %i.ajj, %5
  br i1 %exitcond319.not.i.3, label %._crit_edge.us.i, label %.lr.ph193.us.i, !llvm.loop !121

._crit_edge.us.i:                                 ; preds = %.lr.ph193.us.i.prol.loopexit, %.lr.ph193.us.i, %middle.block561, %vec.epilog.middle.block583, %..preheader5_crit_edge.us.i
  %.32.lcssa.us.i = phi ptr [ %.lcssa180, %..preheader5_crit_edge.us.i ], [ %i.ajz, %vec.epilog.middle.block583 ], [ %i.ajt, %middle.block561 ], [ %.lcssa764.unr, %.lr.ph193.us.i.prol.loopexit ], [ %i.ajg, %.lr.ph193.us.i ] ; 2 uses
  %indvars.iv.next321.i = add nuw nsw i64 %indvars.iv320.i, 2 ; 3 uses
  %i.ajk = icmp slt i64 %indvars.iv.next321.i, %invariant.op403.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ajk, label %iter.check631, label %.preheader4.loopexit.i, !llvm.loop !122

..preheader5_crit_edge.us.i:                      ; preds = %vec.epilog.scalar.ph632, %vec.epilog.middle.block650, %middle.block624
  %indvar535.lcssa = phi i64 [ %ind.escape651, %vec.epilog.middle.block650 ], [ %ind.escape, %middle.block624 ], [ %indvar535, %vec.epilog.scalar.ph632 ]
  %.lcssa180 = phi ptr [ %i.ahs, %vec.epilog.middle.block650 ], [ %i.ahm, %middle.block624 ], [ %i.aif, %vec.epilog.scalar.ph632 ] ; 10 uses
  %.lcssa179 = phi ptr [ %i.ahr, %vec.epilog.middle.block650 ], [ %i.ahl, %middle.block624 ], [ %i.aig, %vec.epilog.scalar.ph632 ] ; 7 uses
  %.lcssa178 = phi ptr [ %i.ahq, %vec.epilog.middle.block650 ], [ %i.ahk, %middle.block624 ], [ %i.aih, %vec.epilog.scalar.ph632 ] ; 7 uses
  br i1 %.not, label %._crit_edge.us.i, label %iter.check568

iter.check568:                                    ; preds = %..preheader5_crit_edge.us.i
  br i1 %min.iters.check547, label %.lr.ph193.us.i.preheader, label %vector.memcheck532

vector.memcheck532:                               ; preds = %iter.check568
  %i.ajl = ptrtoaddr ptr %.lcssa180 to i64
  %reass.sub755 = sub i64 %i.ajl, %.30196.us.i533
  %i.ajm = getelementptr i8, ptr %.30196.us.i, i64 %i.aey
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 %reass.sub755
  %scevgep534 = getelementptr i8, ptr %i.ajn, i64 4 ; 2 uses
  %i.ajo = shl nuw nsw i64 %indvar535.lcssa, 2    ; 2 uses
  %gep983 = getelementptr i8, ptr %invariant.gep982, i64 %i.ajo
  %i.ajp = getelementptr i8, ptr %gep983, i64 6
  %scevgep537 = getelementptr i8, ptr %i.ajp, i64 %i.ahe
  %gep989 = getelementptr i8, ptr %invariant.gep988, i64 %i.ajo
  %i.ajq = getelementptr i8, ptr %gep989, i64 6
  %scevgep538 = getelementptr i8, ptr %i.ajq, i64 %i.ahe
  %bound0539 = icmp ult ptr %.lcssa180, %scevgep537
  %bound1540 = icmp ult ptr %.lcssa178, %scevgep534
  %found.conflict541 = and i1 %bound0539, %bound1540
  %bound0542 = icmp ult ptr %.lcssa180, %scevgep538
  %bound1543 = icmp ult ptr %.lcssa179, %scevgep534
  %found.conflict544 = and i1 %bound0542, %bound1543
  %conflict.rdx545 = or i1 %found.conflict541, %found.conflict544
  br i1 %conflict.rdx545, label %.lr.ph193.us.i.preheader, label %vector.main.loop.iter.check548

vector.main.loop.iter.check548:                   ; preds = %vector.memcheck532
  br i1 %min.iters.check549, label %vec.epilog.ph572, label %vector.ph550

vector.ph550:                                     ; preds = %vector.main.loop.iter.check548
  %i.ajr = getelementptr i8, ptr %.lcssa178, i64 %i.agy
  %i.ajs = getelementptr i8, ptr %.lcssa179, i64 %i.agy
  %i.ajt = getelementptr i8, ptr %.lcssa180, i64 %i.agz ; 2 uses
  br label %vector.body552

vector.body552:                                   ; preds = %vector.body552, %vector.ph550
  %index553 = phi i64 [ 0, %vector.ph550 ], [ %index.next560, %vector.body552 ] ; 3 uses
  %i.aju = shl i64 %index553, 1                   ; 2 uses
  %next.gep554 = getelementptr i8, ptr %.lcssa178, i64 %i.aju
  %next.gep555 = getelementptr i8, ptr %.lcssa179, i64 %i.aju
  %i.ajv = shl i64 %index553, 2
  %next.gep556 = getelementptr i8, ptr %.lcssa180, i64 %i.ajv
  %wide.load557 = load <32 x i16>, ptr %next.gep555, align 2, !tbaa !57, !alias.scope !123
  %wide.load558 = load <32 x i16>, ptr %next.gep554, align 2, !tbaa !57, !alias.scope !126
  %interleaved.vec559 = shufflevector <32 x i16> %wide.load557, <32 x i16> %wide.load558, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec559, ptr %next.gep556, align 2, !tbaa !57, !alias.scope !128, !noalias !130
  %index.next560 = add nuw i64 %index553, 32      ; 2 uses
  %i.ajw = icmp eq i64 %index.next560, %n.vec551
  br i1 %i.ajw, label %middle.block561, label %vector.body552, !llvm.loop !131

middle.block561:                                  ; preds = %vector.body552
  br i1 %cmp.n562, label %._crit_edge.us.i, label %vec.epilog.iter.check570

vec.epilog.iter.check570:                         ; preds = %middle.block561
  br i1 %min.epilog.iters.check571, label %.lr.ph193.us.i.preheader, label %vec.epilog.ph572, !prof !52

vec.epilog.ph572:                                 ; preds = %vector.main.loop.iter.check548, %vec.epilog.iter.check570
  %vec.epilog.resume.val563 = phi i64 [ %n.vec551, %vec.epilog.iter.check570 ], [ 0, %vector.main.loop.iter.check548 ]
  %i.ajx = getelementptr i8, ptr %.lcssa178, i64 %i.ahc
  %i.ajy = getelementptr i8, ptr %.lcssa179, i64 %i.ahc
  %i.ajz = getelementptr i8, ptr %.lcssa180, i64 %i.ahd ; 2 uses
  br label %vec.epilog.vector.body574

vec.epilog.vector.body574:                        ; preds = %vec.epilog.vector.body574, %vec.epilog.ph572
  %index575 = phi i64 [ %vec.epilog.resume.val563, %vec.epilog.ph572 ], [ %index.next582, %vec.epilog.vector.body574 ] ; 3 uses
  %i.aka = shl i64 %index575, 1                   ; 2 uses
  %next.gep576 = getelementptr i8, ptr %.lcssa178, i64 %i.aka
  %next.gep577 = getelementptr i8, ptr %.lcssa179, i64 %i.aka
  %i.akb = shl i64 %index575, 2
  %next.gep578 = getelementptr i8, ptr %.lcssa180, i64 %i.akb
  %wide.load579 = load <8 x i16>, ptr %next.gep577, align 2, !tbaa !57, !alias.scope !123
  %wide.load580 = load <8 x i16>, ptr %next.gep576, align 2, !tbaa !57, !alias.scope !126
  %interleaved.vec581 = shufflevector <8 x i16> %wide.load579, <8 x i16> %wide.load580, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i16> %interleaved.vec581, ptr %next.gep578, align 2, !tbaa !57, !alias.scope !128, !noalias !130
  %index.next582 = add nuw i64 %index575, 8       ; 2 uses
  %i.akc = icmp eq i64 %index.next582, %n.vec573
  br i1 %i.akc, label %vec.epilog.middle.block583, label %vec.epilog.vector.body574, !llvm.loop !132

vec.epilog.middle.block583:                       ; preds = %vec.epilog.vector.body574
  br i1 %cmp.n584, label %._crit_edge.us.i, label %.lr.ph193.us.i.preheader

.lr.ph193.us.i.preheader:                         ; preds = %vector.memcheck532, %iter.check568, %vec.epilog.iter.check570, %vec.epilog.middle.block583
  %.1346192.us.i.ph = phi i32 [ %i.aer, %iter.check568 ], [ %i.aer, %vector.memcheck532 ], [ %i.agx, %vec.epilog.iter.check570 ], [ %i.ahb, %vec.epilog.middle.block583 ] ; 4 uses
  %.1348191.us.i.ph = phi ptr [ %.lcssa178, %iter.check568 ], [ %.lcssa178, %vector.memcheck532 ], [ %i.ajr, %vec.epilog.iter.check570 ], [ %i.ajx, %vec.epilog.middle.block583 ] ; 2 uses
  %.1350190.us.i.ph = phi ptr [ %.lcssa179, %iter.check568 ], [ %.lcssa179, %vector.memcheck532 ], [ %i.ajs, %vec.epilog.iter.check570 ], [ %i.ajy, %vec.epilog.middle.block583 ] ; 2 uses
  %.32189.us.i.ph = phi ptr [ %.lcssa180, %iter.check568 ], [ %.lcssa180, %vector.memcheck532 ], [ %i.ajt, %vec.epilog.iter.check570 ], [ %i.ajz, %vec.epilog.middle.block583 ] ; 2 uses
  %i.akd = sub i32 %5, %.1346192.us.i.ph
  %xtraiter889 = and i32 %i.akd, 3                ; 2 uses
  %lcmp.mod890.not = icmp eq i32 %xtraiter889, 0
  br i1 %lcmp.mod890.not, label %.lr.ph193.us.i.prol.loopexit, label %.lr.ph193.us.i.prol

.lr.ph193.us.i.prol:                              ; preds = %.lr.ph193.us.i.preheader, %.lr.ph193.us.i.prol
  %.1346192.us.i.prol = phi i32 [ %i.akk, %.lr.ph193.us.i.prol ], [ %.1346192.us.i.ph, %.lr.ph193.us.i.preheader ]
  %.1348191.us.i.prol = phi ptr [ %i.akj, %.lr.ph193.us.i.prol ], [ %.1348191.us.i.ph, %.lr.ph193.us.i.preheader ] ; 2 uses
  %.1350190.us.i.prol = phi ptr [ %i.aki, %.lr.ph193.us.i.prol ], [ %.1350190.us.i.ph, %.lr.ph193.us.i.preheader ] ; 2 uses
  %.32189.us.i.prol = phi ptr [ %i.akh, %.lr.ph193.us.i.prol ], [ %.32189.us.i.ph, %.lr.ph193.us.i.preheader ] ; 3 uses
  %prol.iter891 = phi i32 [ %prol.iter891.next, %.lr.ph193.us.i.prol ], [ 0, %.lr.ph193.us.i.preheader ]
  %i.ake = load i16, ptr %.1350190.us.i.prol, align 2, !tbaa !57
  store i16 %i.ake, ptr %.32189.us.i.prol, align 2, !tbaa !57
  %i.akf = load i16, ptr %.1348191.us.i.prol, align 2, !tbaa !57
  %i.akg = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 2
  store i16 %i.akf, ptr %i.akg, align 2, !tbaa !57
  %i.akh = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 4 ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.1350190.us.i.prol, i64 2 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.1348191.us.i.prol, i64 2 ; 2 uses
  %i.akk = add nuw nsw i32 %.1346192.us.i.prol, 1 ; 2 uses
  %prol.iter891.next = add i32 %prol.iter891, 1   ; 2 uses
  %prol.iter891.cmp.not = icmp eq i32 %prol.iter891.next, %xtraiter889
  br i1 %prol.iter891.cmp.not, label %.lr.ph193.us.i.prol.loopexit, label %.lr.ph193.us.i.prol, !llvm.loop !133

.lr.ph193.us.i.prol.loopexit:                     ; preds = %.lr.ph193.us.i.prol, %.lr.ph193.us.i.preheader
  %.lcssa764.unr = phi ptr [ poison, %.lr.ph193.us.i.preheader ], [ %i.akh, %.lr.ph193.us.i.prol ]
  %.1346192.us.i.unr = phi i32 [ %.1346192.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.akk, %.lr.ph193.us.i.prol ]
  %.1348191.us.i.unr = phi ptr [ %.1348191.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.akj, %.lr.ph193.us.i.prol ]
  %.1350190.us.i.unr = phi ptr [ %.1350190.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.aki, %.lr.ph193.us.i.prol ]
  %.32189.us.i.unr = phi ptr [ %.32189.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.akh, %.lr.ph193.us.i.prol ]
  %i.akl = sub i32 %.1346192.us.i.ph, %5
  %i.akm = icmp ugt i32 %i.akl, -4
  br i1 %i.akm, label %._crit_edge.us.i, label %.lr.ph193.us.i

.lr.ph197.split.i:                                ; preds = %.lr.ph197.i
  %i.akn = icmp eq i32 %5, 1
  br i1 %i.akn, label %.preheader5.us201.preheader.i, label %.preheader5.preheader.i

.preheader5.preheader.i:                          ; preds = %.lr.ph197.split.i
  %i.ako = add i32 %.2370.lcssa.i, 3
  %smax.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.ako)
  %reass.sub = sub i32 %smax.i, %.2370.lcssa.i
  %6 = and i32 %reass.sub, -2
  %i.akp = add i32 %.2370.lcssa.i, %6
  br label %.preheader4.i

.preheader5.us201.preheader.i:                    ; preds = %.lr.ph197.split.i
  %i.akq = sext i32 %.2370.lcssa.i to i64         ; 13 uses
  %i.akr = sext i32 %2 to i64                     ; 4 uses
  %i.aks = sext i32 %3 to i64
  %invariant.op402.i = add nsw i64 %i.aks, -1     ; 4 uses
  %i.akt = add nsw i64 %i.akq, 2
  %i.aku = tail call i64 @llvm.smax.i64(i64 %invariant.op402.i, i64 %i.akt)
  %i.akv = xor i64 %i.akq, -1
  %i.akw = add i64 %i.aku, %i.akv                 ; 2 uses
  %i.akx = lshr i64 %i.akw, 1
  %i.aky = add nuw i64 %i.akx, 1                  ; 2 uses
  %min.iters.check516 = icmp ult i64 %i.akw, 734
  br i1 %min.iters.check516, label %._crit_edge.us211.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader5.us201.preheader.i
  %i.akz = add nsw i64 %i.akq, 2
  %smax494 = tail call i64 @llvm.smax.i64(i64 %invariant.op402.i, i64 %i.akz)
  %i.ala = xor i64 %i.akq, -1
  %i.alb = add i64 %smax494, %i.ala
  %i.alc = lshr i64 %i.alb, 1
  %i.ald = shl i64 %i.k, 2                        ; 2 uses
  %i.ale = mul i64 %i.k, -4
  %i.alf = add nsw i64 %i.akq, %i.akr
  %i.alg = mul i64 %i.k, %i.alf
  %i.alh = add i64 %i.alg, %i.aep
  %i.ali = shl i64 %i.alh, 1
  %scevgep495 = getelementptr i8, ptr %i.aeo, i64 %i.ali ; 4 uses
  %i.alj = icmp slt i64 %i.ald, 0                 ; 2 uses
  %i.alk = select i1 %i.alj, i64 %i.ale, i64 %i.ald
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.alk, i64 %i.alc) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.all = sub i64 0, %mul.result
  %i.alm = getelementptr i8, ptr %scevgep495, i64 %mul.result
  %i.aln = getelementptr i8, ptr %scevgep495, i64 %i.all
  %i.alo = icmp ult ptr %i.alm, %scevgep495
  %i.alp = icmp ugt ptr %i.aln, %scevgep495
  %i.alq = select i1 %i.alj, i1 %i.alp, i1 %i.alo
  %i.alr = or i1 %i.alq, %mul.overflow
  br i1 %i.alr, label %._crit_edge.us211.i.preheader, label %vector.memcheck496

vector.memcheck496:                               ; preds = %vector.scevcheck
  %i.als = add nsw i64 %i.akq, 2
  %smax497 = tail call i64 @llvm.smax.i64(i64 %invariant.op402.i, i64 %i.als)
  %i.alt = xor i64 %i.akq, -1
  %i.alu = add i64 %smax497, %i.alt
  %i.alv = shl i64 %i.alu, 1
  %i.alw = and i64 %i.alv, -4                     ; 3 uses
  %i.alx = getelementptr i8, ptr %.23.lcssa.i, i64 %i.alw
  %scevgep498 = getelementptr i8, ptr %i.alx, i64 4 ; 2 uses
  %i.aly = add nsw i64 %i.akq, %i.akr             ; 2 uses
  %i.alz = shl nsw i64 %i.aly, 1                  ; 3 uses
  %i.ama = add i64 %i.alw, %i.alz
  %i.amb = add i64 %i.ama, 2
  %i.amc = mul i64 %i.k, %i.amb
  %i.amd = shl nsw i64 %i.aep, 1                  ; 3 uses
  %i.ame = getelementptr i8, ptr %i.aeo, i64 %i.amc
  %scevgep499 = getelementptr i8, ptr %i.ame, i64 %i.amd ; 4 uses
  %i.amf = add nsw i64 %i.alz, 2
  %i.amg = mul i64 %i.k, %i.amf
  %i.amh = getelementptr i8, ptr %i.aeo, i64 %i.amg
  %scevgep500 = getelementptr i8, ptr %i.amh, i64 %i.amd ; 4 uses
  %i.ami = icmp ult ptr %scevgep499, %scevgep500
  %umin = select i1 %i.ami, ptr %scevgep499, ptr %scevgep500
  %i.amj = icmp ugt ptr %scevgep499, %scevgep500
  %umax501 = select i1 %i.amj, ptr %scevgep499, ptr %scevgep500
  %scevgep502 = getelementptr i8, ptr %umax501, i64 2
  %i.amk = mul i64 %i.k, %i.aly
  %i.aml = add i64 %i.amk, %i.aep
  %i.amm = shl i64 %i.aml, 1
  %scevgep503 = getelementptr i8, ptr %i.aeo, i64 %i.amm ; 4 uses
  %i.amn = add i64 %i.alw, %i.alz
  %i.amo = mul i64 %i.k, %i.amn
  %i.amp = getelementptr i8, ptr %i.aeo, i64 %i.amo
  %scevgep504 = getelementptr i8, ptr %i.amp, i64 %i.amd ; 4 uses
  %i.amq = icmp ult ptr %scevgep503, %scevgep504
  %umin505 = select i1 %i.amq, ptr %scevgep503, ptr %scevgep504
  %i.amr = icmp ugt ptr %scevgep503, %scevgep504
  %umax506 = select i1 %i.amr, ptr %scevgep503, ptr %scevgep504
  %scevgep507 = getelementptr i8, ptr %umax506, i64 2
  %bound0508 = icmp ult ptr %.23.lcssa.i, %scevgep502
  %bound1509 = icmp ult ptr %umin, %scevgep498
  %found.conflict510 = and i1 %bound0508, %bound1509
  %bound0511 = icmp ult ptr %.23.lcssa.i, %scevgep507
  %bound1512 = icmp ult ptr %umin505, %scevgep498
  %found.conflict513 = and i1 %bound0511, %bound1512
  %conflict.rdx514 = or i1 %found.conflict510, %found.conflict513
  br i1 %conflict.rdx514, label %._crit_edge.us211.i.preheader, label %vector.ph517

vector.ph517:                                     ; preds = %vector.memcheck496
  %n.vec518 = and i64 %i.aky, -16                 ; 4 uses
  %i.ams = shl i64 %n.vec518, 1
  %i.amt = add i64 %i.ams, %i.akq                 ; 2 uses
  %i.amu = shl i64 %n.vec518, 2
  %i.amv = getelementptr i8, ptr %.23.lcssa.i, i64 %i.amu ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.akr, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <16 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat520 = shufflevector <16 x i64> %broadcast.splatinsert519, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert521 = insertelement <16 x i64> poison, i64 %i.akq, i64 0
  %broadcast.splat522 = shufflevector <16 x i64> %broadcast.splatinsert521, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat522, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14, i64 16, i64 18, i64 20, i64 22, i64 24, i64 26, i64 28, i64 30>
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph517
  %index524 = phi i64 [ 0, %vector.ph517 ], [ %index.next527, %vector.body523 ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph517 ], [ %vec.ind.next, %vector.body523 ] ; 2 uses
  %i.amw = shl i64 %index524, 2
  %next.gep525 = getelementptr i8, ptr %.23.lcssa.i, i64 %i.amw
  %i.amx = add nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.amy = mul <16 x i64> %i.amx, %broadcast.splat520 ; 16 uses
  %i.amz = extractelement <16 x i64> %i.amy, i64 0
  %i.ana = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.amz ; 2 uses
  %i.anb = extractelement <16 x i64> %i.amy, i64 1
  %i.anc = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anb ; 2 uses
  %i.and = extractelement <16 x i64> %i.amy, i64 2
  %i.ane = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.and ; 2 uses
  %i.anf = extractelement <16 x i64> %i.amy, i64 3
  %i.ang = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anf ; 2 uses
  %i.anh = extractelement <16 x i64> %i.amy, i64 4
  %i.ani = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anh ; 2 uses
  %i.anj = extractelement <16 x i64> %i.amy, i64 5
  %i.ank = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anj ; 2 uses
  %i.anl = extractelement <16 x i64> %i.amy, i64 6
  %i.anm = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anl ; 2 uses
  %i.ann = extractelement <16 x i64> %i.amy, i64 7
  %i.ano = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.ann ; 2 uses
  %i.anp = extractelement <16 x i64> %i.amy, i64 8
  %i.anq = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anp ; 2 uses
  %i.anr = extractelement <16 x i64> %i.amy, i64 9
  %i.ans = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anr ; 2 uses
  %i.ant = extractelement <16 x i64> %i.amy, i64 10
  %i.anu = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.ant ; 2 uses
  %i.anv = extractelement <16 x i64> %i.amy, i64 11
  %i.anw = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anv ; 2 uses
  %i.anx = extractelement <16 x i64> %i.amy, i64 12
  %i.any = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anx ; 2 uses
  %i.anz = extractelement <16 x i64> %i.amy, i64 13
  %i.aoa = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anz ; 2 uses
  %i.aob = extractelement <16 x i64> %i.amy, i64 14
  %i.aoc = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.aob ; 2 uses
  %i.aod = extractelement <16 x i64> %i.amy, i64 15
  %i.aoe = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.aod ; 2 uses
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %i.ana, i64 %i.k
  %i.aog = getelementptr inbounds nuw [2 x i8], ptr %i.anc, i64 %i.k
  %i.aoh = getelementptr inbounds nuw [2 x i8], ptr %i.ane, i64 %i.k
  %i.aoi = getelementptr inbounds nuw [2 x i8], ptr %i.ang, i64 %i.k
  %i.aoj = getelementptr inbounds nuw [2 x i8], ptr %i.ani, i64 %i.k
  %i.aok = getelementptr inbounds nuw [2 x i8], ptr %i.ank, i64 %i.k
  %i.aol = getelementptr inbounds nuw [2 x i8], ptr %i.anm, i64 %i.k
  %i.aom = getelementptr inbounds nuw [2 x i8], ptr %i.ano, i64 %i.k
  %i.aon = getelementptr inbounds nuw [2 x i8], ptr %i.anq, i64 %i.k
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.ans, i64 %i.k
  %i.aop = getelementptr inbounds nuw [2 x i8], ptr %i.anu, i64 %i.k
  %i.aoq = getelementptr inbounds nuw [2 x i8], ptr %i.anw, i64 %i.k
  %i.aor = getelementptr inbounds nuw [2 x i8], ptr %i.any, i64 %i.k
  %i.aos = getelementptr inbounds nuw [2 x i8], ptr %i.aoa, i64 %i.k
  %i.aot = getelementptr inbounds nuw [2 x i8], ptr %i.aoc, i64 %i.k
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %i.aoe, i64 %i.k
  %i.aov = load i16, ptr %i.ana, align 2, !tbaa !57, !alias.scope !134
  %i.aow = load i16, ptr %i.anc, align 2, !tbaa !57, !alias.scope !134
  %i.aox = load i16, ptr %i.ane, align 2, !tbaa !57, !alias.scope !134
  %i.aoy = load i16, ptr %i.ang, align 2, !tbaa !57, !alias.scope !134
  %i.aoz = load i16, ptr %i.ani, align 2, !tbaa !57, !alias.scope !134
  %i.apa = load i16, ptr %i.ank, align 2, !tbaa !57, !alias.scope !134
  %i.apb = load i16, ptr %i.anm, align 2, !tbaa !57, !alias.scope !134
  %i.apc = load i16, ptr %i.ano, align 2, !tbaa !57, !alias.scope !134
  %i.apd = load i16, ptr %i.anq, align 2, !tbaa !57, !alias.scope !134
  %i.ape = load i16, ptr %i.ans, align 2, !tbaa !57, !alias.scope !134
  %i.apf = load i16, ptr %i.anu, align 2, !tbaa !57, !alias.scope !134
  %i.apg = load i16, ptr %i.anw, align 2, !tbaa !57, !alias.scope !134
  %i.aph = load i16, ptr %i.any, align 2, !tbaa !57, !alias.scope !134
  %i.api = load i16, ptr %i.aoa, align 2, !tbaa !57, !alias.scope !134
  %i.apj = load i16, ptr %i.aoc, align 2, !tbaa !57, !alias.scope !134
  %i.apk = load i16, ptr %i.aoe, align 2, !tbaa !57, !alias.scope !134
  %i.apl = insertelement <16 x i16> poison, i16 %i.aov, i64 0
  %i.apm = insertelement <16 x i16> %i.apl, i16 %i.aow, i64 1
  %i.apn = insertelement <16 x i16> %i.apm, i16 %i.aox, i64 2
  %i.apo = insertelement <16 x i16> %i.apn, i16 %i.aoy, i64 3
  %i.app = insertelement <16 x i16> %i.apo, i16 %i.aoz, i64 4
  %i.apq = insertelement <16 x i16> %i.app, i16 %i.apa, i64 5
  %i.apr = insertelement <16 x i16> %i.apq, i16 %i.apb, i64 6
  %i.aps = insertelement <16 x i16> %i.apr, i16 %i.apc, i64 7
  %i.apt = insertelement <16 x i16> %i.aps, i16 %i.apd, i64 8
  %i.apu = insertelement <16 x i16> %i.apt, i16 %i.ape, i64 9
  %i.apv = insertelement <16 x i16> %i.apu, i16 %i.apf, i64 10
  %i.apw = insertelement <16 x i16> %i.apv, i16 %i.apg, i64 11
  %i.apx = insertelement <16 x i16> %i.apw, i16 %i.aph, i64 12
  %i.apy = insertelement <16 x i16> %i.apx, i16 %i.api, i64 13
  %i.apz = insertelement <16 x i16> %i.apy, i16 %i.apj, i64 14
  %i.aqa = insertelement <16 x i16> %i.apz, i16 %i.apk, i64 15
  %i.aqb = load i16, ptr %i.aof, align 2, !tbaa !57, !alias.scope !137
  %i.aqc = load i16, ptr %i.aog, align 2, !tbaa !57, !alias.scope !137
  %i.aqd = load i16, ptr %i.aoh, align 2, !tbaa !57, !alias.scope !137
  %i.aqe = load i16, ptr %i.aoi, align 2, !tbaa !57, !alias.scope !137
  %i.aqf = load i16, ptr %i.aoj, align 2, !tbaa !57, !alias.scope !137
  %i.aqg = load i16, ptr %i.aok, align 2, !tbaa !57, !alias.scope !137
  %i.aqh = load i16, ptr %i.aol, align 2, !tbaa !57, !alias.scope !137
end_hunk_1
begin_hunk_2_@_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.aba = bitcast <2 x i64> %i.aay to <8 x i16>
  %i.abb = bitcast <2 x i64> %i.aay to <8 x i16>
  %i.abc = shufflevector <8 x i16> %i.aba, <8 x i16> %i.abb, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.abd = bitcast <2 x i64> %i.aaz to <8 x i16>
  %i.abe = bitcast <2 x i64> %i.aaz to <8 x i16>
  %i.abf = shufflevector <8 x i16> %i.abd, <8 x i16> %i.abe, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.abc, ptr %.17111.i, align 1, !tbaa !17
  %i.abg = getelementptr inbounds nuw i8, ptr %.17111.i, i64 16
  store <8 x i16> %i.abf, ptr %i.abg, align 1, !tbaa !17
  %i.abh = getelementptr inbounds nuw i8, ptr %.17111.i, i64 32
  %i.abi = getelementptr inbounds nuw i8, ptr %.3407108.i, i64 16
  %i.abj = getelementptr inbounds nuw i8, ptr %.0394109.i, i64 16
  %i.abk = load <2 x i64>, ptr %i.abi, align 1, !tbaa !17 ; 2 uses
  %i.abl = load <2 x i64>, ptr %i.abj, align 1, !tbaa !17 ; 2 uses
  %i.abm = bitcast <2 x i64> %i.abk to <8 x i16>
  %i.abn = bitcast <2 x i64> %i.abk to <8 x i16>
  %i.abo = shufflevector <8 x i16> %i.abm, <8 x i16> %i.abn, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.abp = bitcast <2 x i64> %i.abl to <8 x i16>
  %i.abq = bitcast <2 x i64> %i.abl to <8 x i16>
  %i.abr = shufflevector <8 x i16> %i.abp, <8 x i16> %i.abq, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.abo, ptr %i.abh, align 1, !tbaa !17
  %i.abs = getelementptr inbounds nuw i8, ptr %.17111.i, i64 48
  store <8 x i16> %i.abr, ptr %i.abs, align 1, !tbaa !17
  %i.abt = getelementptr inbounds nuw i8, ptr %.17111.i, i64 64 ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.3407108.i, i64 32 ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.0394109.i, i64 32 ; 3 uses
  %niter860.next.1 = add nuw nsw i32 %niter860, 2 ; 2 uses
  %niter860.ncmp.1.not = icmp eq i32 %niter860.next.1, %unroll_iter859
  br i1 %niter860.ncmp.1.not, label %.preheader14.i.loopexit.unr-lcssa, label %.lr.ph112.i, !llvm.loop !270

.lr.ph121.i:                                      ; preds = %.lr.ph121.i.prol.loopexit, %.lr.ph121.i
  %.18120.i = phi ptr [ %i.acr, %.lr.ph121.i ], [ %.18120.i.unr, %.lr.ph121.i.prol.loopexit ] ; 9 uses
  %.1393119.i = phi i32 [ %i.acu, %.lr.ph121.i ], [ %.1393119.i.unr, %.lr.ph121.i.prol.loopexit ]
  %.1395118.i = phi ptr [ %i.act, %.lr.ph121.i ], [ %.1395118.i.unr, %.lr.ph121.i.prol.loopexit ] ; 5 uses
  %.4408117.i = phi ptr [ %i.acs, %.lr.ph121.i ], [ %.4408117.i.unr, %.lr.ph121.i.prol.loopexit ] ; 5 uses
  %i.abw = load i64, ptr %.4408117.i, align 1, !tbaa !17
  store i64 %i.abw, ptr %.18120.i, align 1, !tbaa !17
  %i.abx = getelementptr inbounds nuw i8, ptr %.18120.i, i64 8
  %i.aby = load i64, ptr %.1395118.i, align 1, !tbaa !17
  store i64 %i.aby, ptr %i.abx, align 1, !tbaa !17
  %i.abz = getelementptr inbounds nuw i8, ptr %.18120.i, i64 16
  %i.aca = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 8
  %i.acb = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 8
  %i.acc = load i64, ptr %i.aca, align 1, !tbaa !17
  store i64 %i.acc, ptr %i.abz, align 1, !tbaa !17
  %i.acd = getelementptr inbounds nuw i8, ptr %.18120.i, i64 24
  %i.ace = load i64, ptr %i.acb, align 1, !tbaa !17
  store i64 %i.ace, ptr %i.acd, align 1, !tbaa !17
  %i.acf = getelementptr inbounds nuw i8, ptr %.18120.i, i64 32
  %i.acg = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 16
  %i.ach = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 16
  %i.aci = load i64, ptr %i.acg, align 1, !tbaa !17
  store i64 %i.aci, ptr %i.acf, align 1, !tbaa !17
  %i.acj = getelementptr inbounds nuw i8, ptr %.18120.i, i64 40
  %i.ack = load i64, ptr %i.ach, align 1, !tbaa !17
  store i64 %i.ack, ptr %i.acj, align 1, !tbaa !17
  %i.acl = getelementptr inbounds nuw i8, ptr %.18120.i, i64 48
  %i.acm = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 24
  %i.acn = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 24
  %i.aco = load i64, ptr %i.acm, align 1, !tbaa !17
  store i64 %i.aco, ptr %i.acl, align 1, !tbaa !17
  %i.acp = getelementptr inbounds nuw i8, ptr %.18120.i, i64 56
  %i.acq = load i64, ptr %i.acn, align 1, !tbaa !17
  store i64 %i.acq, ptr %i.acp, align 1, !tbaa !17
  %i.acr = getelementptr inbounds nuw i8, ptr %.18120.i, i64 64 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.4408117.i, i64 32
  %i.act = getelementptr inbounds nuw i8, ptr %.1395118.i, i64 32
  %i.acu = add nuw nsw i32 %.1393119.i, 4         ; 2 uses
  %exitcond306.not.i.3 = icmp eq i32 %i.acu, %5
  br i1 %exitcond306.not.i.3, label %.loopexit13.i, label %.lr.ph121.i, !llvm.loop !271

bb.h:                                             ; preds = %bb.f
  br i1 %i.ki, label %.lr.ph127.i.preheader, label %.preheader12.i

.lr.ph127.i.preheader:                            ; preds = %bb.h
  br i1 %i.ku, label %.lr.ph127.i.epil.preheader, label %.lr.ph127.i

.preheader12.i.loopexit.unr-lcssa:                ; preds = %.lr.ph127.i
  br i1 %lcmp.mod843.not, label %.preheader12.i, label %.lr.ph127.i.epil.preheader

.lr.ph127.i.epil.preheader:                       ; preds = %.preheader12.i.loopexit.unr-lcssa, %.lr.ph127.i.preheader
  %.20126.i.epil.init = phi ptr [ %.13137.i, %.lr.ph127.i.preheader ], [ %i.adr, %.preheader12.i.loopexit.unr-lcssa ]
  %.6410124.i.epil.init = phi ptr [ %i.xb, %.lr.ph127.i.preheader ], [ %i.ads, %.preheader12.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod846)
  br label %.lr.ph127.i.epil

.lr.ph127.i.epil:                                 ; preds = %.lr.ph127.i.epil, %.lr.ph127.i.epil.preheader
  %.20126.i.epil = phi ptr [ %i.acw, %.lr.ph127.i.epil ], [ %.20126.i.epil.init, %.lr.ph127.i.epil.preheader ] ; 2 uses
  %.6410124.i.epil = phi ptr [ %i.acx, %.lr.ph127.i.epil ], [ %.6410124.i.epil.init, %.lr.ph127.i.epil.preheader ] ; 2 uses
  %epil.iter842 = phi i32 [ %epil.iter842.next, %.lr.ph127.i.epil ], [ 0, %.lr.ph127.i.epil.preheader ]
  %i.acv = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.6410124.i.epil, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.acv, ptr %.20126.i.epil, align 1, !tbaa !17
  %i.acw = getelementptr inbounds nuw i8, ptr %.20126.i.epil, i64 32 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.6410124.i.epil, i64 4 ; 2 uses
  %epil.iter842.next = add i32 %epil.iter842, 1   ; 2 uses
  %epil.iter842.cmp.not = icmp eq i32 %epil.iter842.next, %xtraiter841
  br i1 %epil.iter842.cmp.not, label %.preheader12.i, label %.lr.ph127.i.epil, !llvm.loop !272

.preheader12.i:                                   ; preds = %.preheader12.i.loopexit.unr-lcssa, %.lr.ph127.i.epil, %bb.h
  %.6410.lcssa.i = phi ptr [ %i.xb, %bb.h ], [ %i.ads, %.preheader12.i.loopexit.unr-lcssa ], [ %i.acx, %.lr.ph127.i.epil ] ; 2 uses
  %.0384.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.kn, %.lr.ph127.i.epil ], [ %i.kn, %.preheader12.i.loopexit.unr-lcssa ] ; 5 uses
  %.20.lcssa.i = phi ptr [ %.13137.i, %bb.h ], [ %i.adr, %.preheader12.i.loopexit.unr-lcssa ], [ %i.acw, %.lr.ph127.i.epil ] ; 3 uses
  %i.acy = icmp slt i32 %.0384.lcssa.i, %5
  br i1 %i.acy, label %.lr.ph134.i.preheader, label %.loopexit13.i

.lr.ph134.i.preheader:                            ; preds = %.preheader12.i
  %i.acz = sub i32 %5, %.0384.lcssa.i
  %xtraiter849 = and i32 %i.acz, 3                ; 2 uses
  %lcmp.mod850.not = icmp eq i32 %xtraiter849, 0
  br i1 %lcmp.mod850.not, label %.lr.ph134.i.prol.loopexit, label %.lr.ph134.i.prol

.lr.ph134.i.prol:                                 ; preds = %.lr.ph134.i.preheader, %.lr.ph134.i.prol
  %.21133.i.prol = phi ptr [ %i.adc, %.lr.ph134.i.prol ], [ %.20.lcssa.i, %.lr.ph134.i.preheader ] ; 2 uses
  %.1385132.i.prol = phi i32 [ %i.ade, %.lr.ph134.i.prol ], [ %.0384.lcssa.i, %.lr.ph134.i.preheader ]
  %.7411131.i.prol = phi ptr [ %i.add, %.lr.ph134.i.prol ], [ %.6410.lcssa.i, %.lr.ph134.i.preheader ] ; 2 uses
  %prol.iter851 = phi i32 [ %prol.iter851.next, %.lr.ph134.i.prol ], [ 0, %.lr.ph134.i.preheader ]
  %i.ada = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.7411131.i.prol, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  %i.adb = trunc <8 x i32> %i.ada to <8 x i16>
  store <8 x i16> %i.adb, ptr %.21133.i.prol, align 1, !tbaa !17
  %i.adc = getelementptr inbounds nuw i8, ptr %.21133.i.prol, i64 16 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.7411131.i.prol, i64 2 ; 2 uses
  %i.ade = add nuw nsw i32 %.1385132.i.prol, 1    ; 2 uses
  %prol.iter851.next = add i32 %prol.iter851, 1   ; 2 uses
  %prol.iter851.cmp.not = icmp eq i32 %prol.iter851.next, %xtraiter849
  br i1 %prol.iter851.cmp.not, label %.lr.ph134.i.prol.loopexit, label %.lr.ph134.i.prol, !llvm.loop !273

.lr.ph134.i.prol.loopexit:                        ; preds = %.lr.ph134.i.prol, %.lr.ph134.i.preheader
  %.lcssa782.unr = phi ptr [ poison, %.lr.ph134.i.preheader ], [ %i.adc, %.lr.ph134.i.prol ]
  %.21133.i.unr = phi ptr [ %.20.lcssa.i, %.lr.ph134.i.preheader ], [ %i.adc, %.lr.ph134.i.prol ]
  %.1385132.i.unr = phi i32 [ %.0384.lcssa.i, %.lr.ph134.i.preheader ], [ %i.ade, %.lr.ph134.i.prol ]
  %.7411131.i.unr = phi ptr [ %.6410.lcssa.i, %.lr.ph134.i.preheader ], [ %i.add, %.lr.ph134.i.prol ]
  %i.adf = sub i32 %.0384.lcssa.i, %5
  %i.adg = icmp ugt i32 %i.adf, -4
  br i1 %i.adg, label %.loopexit13.i, label %.lr.ph134.i

.lr.ph127.i:                                      ; preds = %.lr.ph127.i.preheader, %.lr.ph127.i
  %.20126.i = phi ptr [ %i.adr, %.lr.ph127.i ], [ %.13137.i, %.lr.ph127.i.preheader ] ; 5 uses
  %.6410124.i = phi ptr [ %i.ads, %.lr.ph127.i ], [ %i.xb, %.lr.ph127.i.preheader ] ; 5 uses
  %niter848 = phi i32 [ %niter848.next.3, %.lr.ph127.i ], [ 0, %.lr.ph127.i.preheader ]
  %i.adh = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.6410124.i, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.adh, ptr %.20126.i, align 1, !tbaa !17
  %i.adi = getelementptr inbounds nuw i8, ptr %.20126.i, i64 32
  %i.adj = getelementptr inbounds nuw i8, ptr %.6410124.i, i64 4
  %i.adk = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.adj, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.adk, ptr %i.adi, align 1, !tbaa !17
  %i.adl = getelementptr inbounds nuw i8, ptr %.20126.i, i64 64
  %i.adm = getelementptr inbounds nuw i8, ptr %.6410124.i, i64 8
  %i.adn = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.adm, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.adn, ptr %i.adl, align 1, !tbaa !17
  %i.ado = getelementptr inbounds nuw i8, ptr %.20126.i, i64 96
  %i.adp = getelementptr inbounds nuw i8, ptr %.6410124.i, i64 12
  %i.adq = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.adp, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  store <8 x i32> %i.adq, ptr %i.ado, align 1, !tbaa !17
  %i.adr = getelementptr inbounds nuw i8, ptr %.20126.i, i64 128 ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.6410124.i, i64 16 ; 3 uses
  %niter848.next.3 = add i32 %niter848, 4         ; 2 uses
  %niter848.ncmp.3.not = icmp eq i32 %niter848.next.3, %unroll_iter847
  br i1 %niter848.ncmp.3.not, label %.preheader12.i.loopexit.unr-lcssa, label %.lr.ph127.i, !llvm.loop !274

.lr.ph134.i:                                      ; preds = %.lr.ph134.i.prol.loopexit, %.lr.ph134.i
  %.21133.i = phi ptr [ %i.aeh, %.lr.ph134.i ], [ %.21133.i.unr, %.lr.ph134.i.prol.loopexit ] ; 5 uses
  %.1385132.i = phi i32 [ %i.aej, %.lr.ph134.i ], [ %.1385132.i.unr, %.lr.ph134.i.prol.loopexit ]
  %.7411131.i = phi ptr [ %i.aei, %.lr.ph134.i ], [ %.7411131.i.unr, %.lr.ph134.i.prol.loopexit ] ; 5 uses
  %i.adt = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %.7411131.i, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  %i.adu = trunc <8 x i32> %i.adt to <8 x i16>
  store <8 x i16> %i.adu, ptr %.21133.i, align 1, !tbaa !17
  %i.adv = getelementptr inbounds nuw i8, ptr %.21133.i, i64 16
  %i.adw = getelementptr inbounds nuw i8, ptr %.7411131.i, i64 2
  %i.adx = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.adw, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  %i.ady = trunc <8 x i32> %i.adx to <8 x i16>
  store <8 x i16> %i.ady, ptr %i.adv, align 1, !tbaa !17
  %i.adz = getelementptr inbounds nuw i8, ptr %.21133.i, i64 32
  %i.aea = getelementptr inbounds nuw i8, ptr %.7411131.i, i64 4
  %i.aeb = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.aea, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  %i.aec = trunc <8 x i32> %i.aeb to <8 x i16>
  store <8 x i16> %i.aec, ptr %i.adz, align 1, !tbaa !17
  %i.aed = getelementptr inbounds nuw i8, ptr %.21133.i, i64 48
  %i.aee = getelementptr inbounds nuw i8, ptr %.7411131.i, i64 6
  %i.aef = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.aee, <8 x i32> %i.km, <8 x i32> splat (i32 -1), i8 2)
  %i.aeg = trunc <8 x i32> %i.aef to <8 x i16>
  store <8 x i16> %i.aeg, ptr %i.aed, align 1, !tbaa !17
  %i.aeh = getelementptr inbounds nuw i8, ptr %.21133.i, i64 64 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.7411131.i, i64 8
  %i.aej = add nuw nsw i32 %.1385132.i, 4         ; 2 uses
  %exitcond307.not.i.3 = icmp eq i32 %i.aej, %5
  br i1 %exitcond307.not.i.3, label %.loopexit13.i, label %.lr.ph134.i, !llvm.loop !275

.loopexit13.i:                                    ; preds = %.lr.ph134.i.prol.loopexit, %.lr.ph134.i, %.lr.ph121.i.prol.loopexit, %.lr.ph121.i, %.lr.ph105.i.prol.loopexit, %.lr.ph105.i, %middle.block277, %.preheader12.i, %.preheader14.i, %.preheader16.i, %bb.f
  %.22.i = phi ptr [ %.13137.i, %bb.f ], [ %.20.lcssa.i, %.preheader12.i ], [ %i.ze, %.lr.ph105.i ], [ %i.acr, %.lr.ph121.i ], [ %.17.lcssa.i, %.preheader14.i ], [ %.14.lcssa.i, %.preheader16.i ], [ %i.aaf, %middle.block277 ], [ %.lcssa789.unr, %.lr.ph105.i.prol.loopexit ], [ %.lcssa786.unr, %.lr.ph121.i.prol.loopexit ], [ %.lcssa782.unr, %.lr.ph134.i.prol.loopexit ], [ %i.aeh, %.lr.ph134.i ] ; 2 uses
  %indvars.iv.next309.i = add nuw nsw i64 %indvars.iv308.i, 8 ; 3 uses
  %i.aek = icmp slt i64 %indvars.iv.next309.i, %invariant.op.i
  br i1 %i.aek, label %bb.f, label %.preheader11.loopexit.i, !llvm.loop !276

.preheader6.loopexit.i:                           ; preds = %.loopexit.i.us59, %.loopexit.i.us, %.loopexit.i.preheader
  %.us-phi54 = phi ptr [ %.13.lcssa.i, %.loopexit.i.preheader ], [ %.29.i.us, %.loopexit.i.us ], [ %.29.i.us60, %.loopexit.i.us59 ]
  %.us-phi55 = phi i64 [ %i.ls, %.loopexit.i.preheader ], [ %indvars.iv.next314.i.us, %.loopexit.i.us ], [ %indvars.iv.next314.i.us61, %.loopexit.i.us59 ]
  %i.ael = trunc nsw i64 %.us-phi55 to i32
  br label %.preheader6.i

.preheader6.i:                                    ; preds = %.preheader6.loopexit.i, %.preheader11.i
  %.2370.lcssa.i = phi i32 [ %.1369.lcssa.i, %.preheader11.i ], [ %i.ael, %.preheader6.loopexit.i ] ; 7 uses
  %.23.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader11.i ], [ %.us-phi54, %.preheader6.loopexit.i ] ; 11 uses
  %i.aem = or disjoint i32 %.2370.lcssa.i, 1
  %i.aen = icmp slt i32 %i.aem, %3
  br i1 %i.aen, label %.lr.ph197.i, label %.preheader4.i

.lr.ph197.i:                                      ; preds = %.preheader6.i
  %i.aeo = load ptr, ptr %0, align 8, !tbaa !9    ; 12 uses
  %i.aep = sext i32 %4 to i64                     ; 5 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.aeo, i64 %i.aep ; 18 uses
  %i.aeq = icmp sgt i32 %5, 1
  br i1 %i.aeq, label %.lr.ph184.us.preheader.i, label %.lr.ph197.split.i

.lr.ph184.us.preheader.i:                         ; preds = %.lr.ph197.i
  %i.aer = and i32 %5, 2147483646                 ; 7 uses
  %i.aes = sext i32 %.2370.lcssa.i to i64         ; 4 uses
  %i.aet = sext i32 %2 to i64                     ; 2 uses
  %i.aeu = sext i32 %3 to i64
  %.not = icmp eq i32 %i.aer, %5
  %invariant.op403.i = add nsw i64 %i.aeu, -1     ; 2 uses
  %i.aev = xor i32 %i.aer, -1
  %i.aew = add nsw i32 %5, %i.aev
  %i.aex = zext i32 %i.aew to i64                 ; 2 uses
  %i.aey = shl nuw nsw i64 %i.aex, 2
  %i.aez = add nsw i64 %i.aes, %i.aet             ; 2 uses
  %i.afa = shl nsw i64 %i.aez, 1                  ; 3 uses
  %i.afb = add nsw i64 %i.afa, 2
  %i.afc = mul i64 %i.k, %i.afb                   ; 2 uses
  %i.afd = shl nsw i64 %i.aep, 1                  ; 6 uses
  %i.afe = shl nuw nsw i64 %i.aex, 1              ; 2 uses
  %i.aff = shl i64 %i.k, 2                        ; 2 uses
  %i.afg = mul i64 %i.k, %i.aez
  %i.afh = shl i64 %i.afg, 1                      ; 2 uses
  %i.afi = xor i32 %i.aer, -1
  %i.afj = add nsw i32 %5, %i.afi                 ; 3 uses
  %i.afk = zext i32 %i.afj to i64
  %i.afl = add nuw nsw i64 %i.afk, 1              ; 5 uses
  %i.afm = add nsw i32 %5, -2
  %i.afn = lshr i32 %i.afm, 1
  %i.afo = zext nneg i32 %i.afn to i64            ; 2 uses
  %i.afp = shl nuw nsw i64 %i.afo, 3
  %i.afq = getelementptr i8, ptr %i.aeo, i64 %i.afc
  %scevgep591 = getelementptr i8, ptr %i.afq, i64 %i.afd
  %i.afr = add nsw i64 %i.aes, 2
  %smax592 = tail call i64 @llvm.smax.i64(i64 %invariant.op403.i, i64 %i.afr)
  %i.afs = xor i64 %i.aes, -1
  %i.aft = add i64 %smax592, %i.afs
  %i.afu = shl i64 %i.aft, 1
  %i.afv = and i64 %i.afu, -4                     ; 2 uses
  %i.afw = add i64 %i.afv, %i.afa
  %i.afx = add i64 %i.afw, 2
  %i.afy = mul i64 %i.k, %i.afx
  %i.afz = shl nuw nsw i64 %i.afo, 2              ; 2 uses
  %i.aga = getelementptr i8, ptr %i.aeo, i64 %i.afy
  %i.agb = getelementptr i8, ptr %i.aga, i64 %i.afz
  %i.agc = getelementptr i8, ptr %i.agb, i64 %i.afd
  %scevgep593 = getelementptr i8, ptr %i.agc, i64 4
  %i.agd = getelementptr i8, ptr %i.aeo, i64 %i.afh
  %scevgep594 = getelementptr i8, ptr %i.agd, i64 %i.afd
  %i.age = add i64 %i.afv, %i.afa
  %i.agf = mul i64 %i.k, %i.age
  %i.agg = getelementptr i8, ptr %i.aeo, i64 %i.agf
  %i.agh = getelementptr i8, ptr %i.agg, i64 %i.afz
  %i.agi = getelementptr i8, ptr %i.agh, i64 %i.afd
  %scevgep595 = getelementptr i8, ptr %i.agi, i64 4
  %i.agj = add nsw i32 %5, -2                     ; 3 uses
  %i.agk = lshr i32 %i.agj, 1
  %narrow754 = add nuw i32 %i.agk, 1
  %i.agl = zext i32 %narrow754 to i64             ; 5 uses
  %min.iters.check606 = icmp ult i32 %i.agj, 14
  %stride.check603 = icmp slt i64 %i.aff, 0
  %min.iters.check608 = icmp ult i32 %i.agj, 62
  %i.agm = and i64 %i.agl, 24
  %n.vec610 = and i64 %i.agl, 4294967264          ; 8 uses
  %i.agn = trunc nuw i64 %n.vec610 to i32
  %i.ago = shl i32 %i.agn, 1
  %i.agp = shl nuw nsw i64 %n.vec610, 2           ; 2 uses
  %i.agq = shl nuw nsw i64 %n.vec610, 3
  %ind.escape = add nsw i64 %n.vec610, -1
  %cmp.n625 = icmp eq i64 %n.vec610, %i.agl
  %min.epilog.iters.check634 = icmp eq i64 %i.agm, 0
  %n.vec636 = and i64 %i.agl, 4294967288          ; 7 uses
  %i.agr = trunc nuw i64 %n.vec636 to i32
  %i.ags = shl i32 %i.agr, 1
  %i.agt = shl nuw nsw i64 %n.vec636, 2           ; 2 uses
  %i.agu = shl nuw nsw i64 %n.vec636, 3
  %ind.escape651 = add nsw i64 %n.vec636, -1
  %cmp.n652 = icmp eq i64 %n.vec636, %i.agl
  %min.iters.check547 = icmp ult i32 %i.afj, 7
  %invariant.gep978 = getelementptr i8, ptr %i.aeo, i64 %i.afc
  %invariant.gep980 = getelementptr i8, ptr %invariant.gep978, i64 %i.afd
  %invariant.gep982 = getelementptr i8, ptr %invariant.gep980, i64 %i.afe
  %invariant.gep984 = getelementptr i8, ptr %i.aeo, i64 %i.afh
  %invariant.gep986 = getelementptr i8, ptr %invariant.gep984, i64 %i.afd
  %invariant.gep988 = getelementptr i8, ptr %invariant.gep986, i64 %i.afe
  %min.iters.check549 = icmp ult i32 %i.afj, 31
  %i.agv = and i64 %i.afl, 24
  %n.vec551 = and i64 %i.afl, 8589934560          ; 6 uses
  %i.agw = trunc i64 %n.vec551 to i32
  %i.agx = add i32 %i.aer, %i.agw
  %i.agy = shl nuw nsw i64 %n.vec551, 1           ; 2 uses
  %i.agz = shl nuw nsw i64 %n.vec551, 2
  %cmp.n562 = icmp eq i64 %i.afl, %n.vec551
  %min.epilog.iters.check571 = icmp eq i64 %i.agv, 0
  %n.vec573 = and i64 %i.afl, 8589934584          ; 5 uses
  %i.aha = trunc i64 %n.vec573 to i32
  %i.ahb = add i32 %i.aer, %i.aha
  %i.ahc = shl nuw nsw i64 %n.vec573, 1           ; 2 uses
  %i.ahd = shl nuw nsw i64 %n.vec573, 2
  %cmp.n584 = icmp eq i64 %i.afl, %n.vec573
  br label %iter.check631

iter.check631:                                    ; preds = %._crit_edge.us.i, %.lr.ph184.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph184.us.preheader.i ] ; 2 uses
  %indvars.iv320.i = phi i64 [ %indvars.iv.next321.i, %._crit_edge.us.i ], [ %i.aes, %.lr.ph184.us.preheader.i ] ; 2 uses
  %.30196.us.i = phi ptr [ %.32.lcssa.us.i, %._crit_edge.us.i ], [ %.23.lcssa.i, %.lr.ph184.us.preheader.i ] ; 11 uses
  %.30196.us.i533 = ptrtoaddr ptr %.30196.us.i to i64
  %i.ahe = mul i64 %i.aff, %indvar                ; 2 uses
  %i.ahf = add nsw i64 %indvars.iv320.i, %i.aet
  %i.ahg = mul i64 %i.ahf, %i.k
  %gep.us.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.ahg ; 7 uses
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %gep.us.i, i64 %i.k ; 6 uses
  br i1 %min.iters.check606, label %vec.epilog.scalar.ph632.preheader, label %vector.memcheck589

vector.memcheck589:                               ; preds = %iter.check631
  %i.ahi = getelementptr i8, ptr %.30196.us.i, i64 %i.afp
  %scevgep590 = getelementptr i8, ptr %i.ahi, i64 8 ; 2 uses
  %bound0596 = icmp ult ptr %.30196.us.i, %scevgep593
  %bound1597 = icmp ult ptr %scevgep591, %scevgep590
  %found.conflict598 = and i1 %bound0596, %bound1597
  %bound0600 = icmp ult ptr %.30196.us.i, %scevgep595
  %bound1601 = icmp ult ptr %scevgep594, %scevgep590
  %found.conflict602 = and i1 %bound0600, %bound1601
  %i.ahj = or i1 %found.conflict602, %stride.check603
  %conflict.rdx604 = or i1 %found.conflict598, %i.ahj
  br i1 %conflict.rdx604, label %vec.epilog.scalar.ph632.preheader, label %vector.main.loop.iter.check607

vector.main.loop.iter.check607:                   ; preds = %vector.memcheck589
  br i1 %min.iters.check608, label %vec.epilog.ph635, label %vector.ph609

vector.ph609:                                     ; preds = %vector.main.loop.iter.check607
  %i.ahk = getelementptr i8, ptr %i.ahh, i64 %i.agp ; 2 uses
  %i.ahl = getelementptr i8, ptr %gep.us.i, i64 %i.agp ; 2 uses
  %i.ahm = getelementptr i8, ptr %.30196.us.i, i64 %i.agq ; 2 uses
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph609
  %index612 = phi i64 [ 0, %vector.ph609 ], [ %index.next623, %vector.body611 ] ; 3 uses
  %i.ahn = shl i64 %index612, 2                   ; 2 uses
  %next.gep613 = getelementptr i8, ptr %i.ahh, i64 %i.ahn
  %next.gep614 = getelementptr i8, ptr %gep.us.i, i64 %i.ahn
  %i.aho = shl i64 %index612, 3
  %next.gep615 = getelementptr i8, ptr %.30196.us.i, i64 %i.aho
  %wide.vec616 = load <64 x i16>, ptr %next.gep614, align 2, !tbaa !57, !alias.scope !277
  %wide.vec619 = load <64 x i16>, ptr %next.gep613, align 2, !tbaa !57, !alias.scope !280
  %interleaved.vec622 = shufflevector <64 x i16> %wide.vec616, <64 x i16> %wide.vec619, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i16> %interleaved.vec622, ptr %next.gep615, align 2, !tbaa !57, !alias.scope !282, !noalias !284
  %index.next623 = add nuw i64 %index612, 32      ; 2 uses
  %i.ahp = icmp eq i64 %index.next623, %n.vec610
  br i1 %i.ahp, label %middle.block624, label %vector.body611, !llvm.loop !285

middle.block624:                                  ; preds = %vector.body611
  br i1 %cmp.n625, label %..preheader5_crit_edge.us.i, label %vec.epilog.iter.check633

vec.epilog.iter.check633:                         ; preds = %middle.block624
  br i1 %min.epilog.iters.check634, label %vec.epilog.scalar.ph632.preheader, label %vec.epilog.ph635, !prof !52

vec.epilog.ph635:                                 ; preds = %vector.main.loop.iter.check607, %vec.epilog.iter.check633
  %vec.epilog.resume.val626 = phi i64 [ %n.vec610, %vec.epilog.iter.check633 ], [ 0, %vector.main.loop.iter.check607 ]
  %i.ahq = getelementptr i8, ptr %i.ahh, i64 %i.agt ; 2 uses
  %i.ahr = getelementptr i8, ptr %gep.us.i, i64 %i.agt ; 2 uses
  %i.ahs = getelementptr i8, ptr %.30196.us.i, i64 %i.agu ; 2 uses
  br label %vec.epilog.vector.body637

vec.epilog.vector.body637:                        ; preds = %vec.epilog.vector.body637, %vec.epilog.ph635
  %index638 = phi i64 [ %vec.epilog.resume.val626, %vec.epilog.ph635 ], [ %index.next649, %vec.epilog.vector.body637 ] ; 3 uses
  %i.aht = shl i64 %index638, 2                   ; 2 uses
  %next.gep639 = getelementptr i8, ptr %i.ahh, i64 %i.aht
  %next.gep640 = getelementptr i8, ptr %gep.us.i, i64 %i.aht
  %i.ahu = shl i64 %index638, 3
  %next.gep641 = getelementptr i8, ptr %.30196.us.i, i64 %i.ahu
  %wide.vec642 = load <16 x i16>, ptr %next.gep640, align 2, !tbaa !57, !alias.scope !277
  %wide.vec645 = load <16 x i16>, ptr %next.gep639, align 2, !tbaa !57, !alias.scope !280
  %interleaved.vec648 = shufflevector <16 x i16> %wide.vec642, <16 x i16> %wide.vec645, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i16> %interleaved.vec648, ptr %next.gep641, align 2, !tbaa !57, !alias.scope !282, !noalias !284
  %index.next649 = add nuw i64 %index638, 8       ; 2 uses
  %i.ahv = icmp eq i64 %index.next649, %n.vec636
  br i1 %i.ahv, label %vec.epilog.middle.block650, label %vec.epilog.vector.body637, !llvm.loop !286

vec.epilog.middle.block650:                       ; preds = %vec.epilog.vector.body637
  br i1 %cmp.n652, label %..preheader5_crit_edge.us.i, label %vec.epilog.scalar.ph632.preheader

vec.epilog.scalar.ph632.preheader:                ; preds = %vector.memcheck589, %iter.check631, %vec.epilog.iter.check633, %vec.epilog.middle.block650
  %indvar535.ph = phi i64 [ 0, %iter.check631 ], [ 0, %vector.memcheck589 ], [ %n.vec610, %vec.epilog.iter.check633 ], [ %n.vec636, %vec.epilog.middle.block650 ]
  %.0345183.us.i.ph = phi i32 [ 0, %iter.check631 ], [ 0, %vector.memcheck589 ], [ %i.ago, %vec.epilog.iter.check633 ], [ %i.ags, %vec.epilog.middle.block650 ]
  %.0347182.us.i.ph = phi ptr [ %i.ahh, %iter.check631 ], [ %i.ahh, %vector.memcheck589 ], [ %i.ahk, %vec.epilog.iter.check633 ], [ %i.ahq, %vec.epilog.middle.block650 ]
  %.0349181.us.i.ph = phi ptr [ %gep.us.i, %iter.check631 ], [ %gep.us.i, %vector.memcheck589 ], [ %i.ahl, %vec.epilog.iter.check633 ], [ %i.ahr, %vec.epilog.middle.block650 ]
  %.31180.us.i.ph = phi ptr [ %.30196.us.i, %iter.check631 ], [ %.30196.us.i, %vector.memcheck589 ], [ %i.ahm, %vec.epilog.iter.check633 ], [ %i.ahs, %vec.epilog.middle.block650 ]
  br label %vec.epilog.scalar.ph632

vec.epilog.scalar.ph632:                          ; preds = %vec.epilog.scalar.ph632.preheader, %vec.epilog.scalar.ph632
end_hunk_2
begin_hunk_3_@_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  store i16 %i.ahw, ptr %.31180.us.i, align 2, !tbaa !57
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0349181.us.i, i64 2
  %i.ahy = load i16, ptr %i.ahx, align 2, !tbaa !57
  %i.ahz = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 2
  store i16 %i.ahy, ptr %i.ahz, align 2, !tbaa !57
  %i.aia = load i16, ptr %.0347182.us.i, align 2, !tbaa !57
  %i.aib = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 4
  store i16 %i.aia, ptr %i.aib, align 2, !tbaa !57
  %i.aic = getelementptr inbounds nuw i8, ptr %.0347182.us.i, i64 2
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !57
  %i.aie = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 6
  store i16 %i.aid, ptr %i.aie, align 2, !tbaa !57
  %i.aif = getelementptr i8, ptr %.31180.us.i, i64 8 ; 2 uses
  %i.aig = getelementptr i8, ptr %.0349181.us.i, i64 4 ; 2 uses
  %i.aih = getelementptr i8, ptr %.0347182.us.i, i64 4 ; 2 uses
  %i.aii = add nuw nsw i32 %.0345183.us.i, 2      ; 2 uses
  %i.aij = or disjoint i32 %i.aii, 1
  %i.aik = icmp slt i32 %i.aij, %5
  %indvar.next536 = add i64 %indvar535, 1
  br i1 %i.aik, label %vec.epilog.scalar.ph632, label %..preheader5_crit_edge.us.i, !llvm.loop !287

.lr.ph193.us.i:                                   ; preds = %.lr.ph193.us.i.prol.loopexit, %.lr.ph193.us.i
  %.1346192.us.i = phi i32 [ %i.ajj, %.lr.ph193.us.i ], [ %.1346192.us.i.unr, %.lr.ph193.us.i.prol.loopexit ]
  %.1348191.us.i = phi ptr [ %i.aji, %.lr.ph193.us.i ], [ %.1348191.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 5 uses
  %.1350190.us.i = phi ptr [ %i.ajh, %.lr.ph193.us.i ], [ %.1350190.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 5 uses
  %.32189.us.i = phi ptr [ %i.ajg, %.lr.ph193.us.i ], [ %.32189.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 9 uses
  %i.ail = load i16, ptr %.1350190.us.i, align 2, !tbaa !57
  store i16 %i.ail, ptr %.32189.us.i, align 2, !tbaa !57
  %i.aim = load i16, ptr %.1348191.us.i, align 2, !tbaa !57
  %i.ain = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 2
  store i16 %i.aim, ptr %i.ain, align 2, !tbaa !57
  %i.aio = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 4
  %i.aip = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 2
  %i.aiq = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 2
  %i.air = load i16, ptr %i.aip, align 2, !tbaa !57
  store i16 %i.air, ptr %i.aio, align 2, !tbaa !57
  %i.ais = load i16, ptr %i.aiq, align 2, !tbaa !57
  %i.ait = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 6
  store i16 %i.ais, ptr %i.ait, align 2, !tbaa !57
  %i.aiu = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 8
  %i.aiv = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 4
  %i.aiw = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 4
  %i.aix = load i16, ptr %i.aiv, align 2, !tbaa !57
  store i16 %i.aix, ptr %i.aiu, align 2, !tbaa !57
  %i.aiy = load i16, ptr %i.aiw, align 2, !tbaa !57
  %i.aiz = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 10
  store i16 %i.aiy, ptr %i.aiz, align 2, !tbaa !57
  %i.aja = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 12
  %i.ajb = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 6
  %i.ajc = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 6
  %i.ajd = load i16, ptr %i.ajb, align 2, !tbaa !57
  store i16 %i.ajd, ptr %i.aja, align 2, !tbaa !57
  %i.aje = load i16, ptr %i.ajc, align 2, !tbaa !57
  %i.ajf = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 14
  store i16 %i.aje, ptr %i.ajf, align 2, !tbaa !57
  %i.ajg = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 16 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 8
  %i.aji = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 8
  %i.ajj = add nuw nsw i32 %.1346192.us.i, 4      ; 2 uses
  %exitcond319.not.i.3 = icmp eq i32 %i.ajj, %5
  br i1 %exitcond319.not.i.3, label %._crit_edge.us.i, label %.lr.ph193.us.i, !llvm.loop !288

._crit_edge.us.i:                                 ; preds = %.lr.ph193.us.i.prol.loopexit, %.lr.ph193.us.i, %middle.block561, %vec.epilog.middle.block583, %..preheader5_crit_edge.us.i
  %.32.lcssa.us.i = phi ptr [ %.lcssa180, %..preheader5_crit_edge.us.i ], [ %i.ajz, %vec.epilog.middle.block583 ], [ %i.ajt, %middle.block561 ], [ %.lcssa764.unr, %.lr.ph193.us.i.prol.loopexit ], [ %i.ajg, %.lr.ph193.us.i ] ; 2 uses
  %indvars.iv.next321.i = add nuw nsw i64 %indvars.iv320.i, 2 ; 3 uses
  %i.ajk = icmp slt i64 %indvars.iv.next321.i, %invariant.op403.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ajk, label %iter.check631, label %.preheader4.loopexit.i, !llvm.loop !289

..preheader5_crit_edge.us.i:                      ; preds = %vec.epilog.scalar.ph632, %vec.epilog.middle.block650, %middle.block624
  %indvar535.lcssa = phi i64 [ %ind.escape651, %vec.epilog.middle.block650 ], [ %ind.escape, %middle.block624 ], [ %indvar535, %vec.epilog.scalar.ph632 ]
  %.lcssa180 = phi ptr [ %i.ahs, %vec.epilog.middle.block650 ], [ %i.ahm, %middle.block624 ], [ %i.aif, %vec.epilog.scalar.ph632 ] ; 10 uses
  %.lcssa179 = phi ptr [ %i.ahr, %vec.epilog.middle.block650 ], [ %i.ahl, %middle.block624 ], [ %i.aig, %vec.epilog.scalar.ph632 ] ; 7 uses
  %.lcssa178 = phi ptr [ %i.ahq, %vec.epilog.middle.block650 ], [ %i.ahk, %middle.block624 ], [ %i.aih, %vec.epilog.scalar.ph632 ] ; 7 uses
  br i1 %.not, label %._crit_edge.us.i, label %iter.check568

iter.check568:                                    ; preds = %..preheader5_crit_edge.us.i
  br i1 %min.iters.check547, label %.lr.ph193.us.i.preheader, label %vector.memcheck532

vector.memcheck532:                               ; preds = %iter.check568
  %i.ajl = ptrtoaddr ptr %.lcssa180 to i64
  %reass.sub755 = sub i64 %i.ajl, %.30196.us.i533
  %i.ajm = getelementptr i8, ptr %.30196.us.i, i64 %i.aey
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 %reass.sub755
  %scevgep534 = getelementptr i8, ptr %i.ajn, i64 4 ; 2 uses
  %i.ajo = shl nuw nsw i64 %indvar535.lcssa, 2    ; 2 uses
  %gep983 = getelementptr i8, ptr %invariant.gep982, i64 %i.ajo
  %i.ajp = getelementptr i8, ptr %gep983, i64 6
  %scevgep537 = getelementptr i8, ptr %i.ajp, i64 %i.ahe
  %gep989 = getelementptr i8, ptr %invariant.gep988, i64 %i.ajo
  %i.ajq = getelementptr i8, ptr %gep989, i64 6
  %scevgep538 = getelementptr i8, ptr %i.ajq, i64 %i.ahe
  %bound0539 = icmp ult ptr %.lcssa180, %scevgep537
  %bound1540 = icmp ult ptr %.lcssa178, %scevgep534
  %found.conflict541 = and i1 %bound0539, %bound1540
  %bound0542 = icmp ult ptr %.lcssa180, %scevgep538
  %bound1543 = icmp ult ptr %.lcssa179, %scevgep534
  %found.conflict544 = and i1 %bound0542, %bound1543
  %conflict.rdx545 = or i1 %found.conflict541, %found.conflict544
  br i1 %conflict.rdx545, label %.lr.ph193.us.i.preheader, label %vector.main.loop.iter.check548

vector.main.loop.iter.check548:                   ; preds = %vector.memcheck532
  br i1 %min.iters.check549, label %vec.epilog.ph572, label %vector.ph550

vector.ph550:                                     ; preds = %vector.main.loop.iter.check548
  %i.ajr = getelementptr i8, ptr %.lcssa178, i64 %i.agy
  %i.ajs = getelementptr i8, ptr %.lcssa179, i64 %i.agy
  %i.ajt = getelementptr i8, ptr %.lcssa180, i64 %i.agz ; 2 uses
  br label %vector.body552

vector.body552:                                   ; preds = %vector.body552, %vector.ph550
  %index553 = phi i64 [ 0, %vector.ph550 ], [ %index.next560, %vector.body552 ] ; 3 uses
  %i.aju = shl i64 %index553, 1                   ; 2 uses
  %next.gep554 = getelementptr i8, ptr %.lcssa178, i64 %i.aju
  %next.gep555 = getelementptr i8, ptr %.lcssa179, i64 %i.aju
  %i.ajv = shl i64 %index553, 2
  %next.gep556 = getelementptr i8, ptr %.lcssa180, i64 %i.ajv
  %wide.load557 = load <32 x i16>, ptr %next.gep555, align 2, !tbaa !57, !alias.scope !290
  %wide.load558 = load <32 x i16>, ptr %next.gep554, align 2, !tbaa !57, !alias.scope !293
  %interleaved.vec559 = shufflevector <32 x i16> %wide.load557, <32 x i16> %wide.load558, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec559, ptr %next.gep556, align 2, !tbaa !57, !alias.scope !295, !noalias !297
  %index.next560 = add nuw i64 %index553, 32      ; 2 uses
  %i.ajw = icmp eq i64 %index.next560, %n.vec551
  br i1 %i.ajw, label %middle.block561, label %vector.body552, !llvm.loop !298

middle.block561:                                  ; preds = %vector.body552
  br i1 %cmp.n562, label %._crit_edge.us.i, label %vec.epilog.iter.check570

vec.epilog.iter.check570:                         ; preds = %middle.block561
  br i1 %min.epilog.iters.check571, label %.lr.ph193.us.i.preheader, label %vec.epilog.ph572, !prof !52

vec.epilog.ph572:                                 ; preds = %vector.main.loop.iter.check548, %vec.epilog.iter.check570
  %vec.epilog.resume.val563 = phi i64 [ %n.vec551, %vec.epilog.iter.check570 ], [ 0, %vector.main.loop.iter.check548 ]
  %i.ajx = getelementptr i8, ptr %.lcssa178, i64 %i.ahc
  %i.ajy = getelementptr i8, ptr %.lcssa179, i64 %i.ahc
  %i.ajz = getelementptr i8, ptr %.lcssa180, i64 %i.ahd ; 2 uses
  br label %vec.epilog.vector.body574

vec.epilog.vector.body574:                        ; preds = %vec.epilog.vector.body574, %vec.epilog.ph572
  %index575 = phi i64 [ %vec.epilog.resume.val563, %vec.epilog.ph572 ], [ %index.next582, %vec.epilog.vector.body574 ] ; 3 uses
  %i.aka = shl i64 %index575, 1                   ; 2 uses
  %next.gep576 = getelementptr i8, ptr %.lcssa178, i64 %i.aka
  %next.gep577 = getelementptr i8, ptr %.lcssa179, i64 %i.aka
  %i.akb = shl i64 %index575, 2
  %next.gep578 = getelementptr i8, ptr %.lcssa180, i64 %i.akb
  %wide.load579 = load <8 x i16>, ptr %next.gep577, align 2, !tbaa !57, !alias.scope !290
  %wide.load580 = load <8 x i16>, ptr %next.gep576, align 2, !tbaa !57, !alias.scope !293
  %interleaved.vec581 = shufflevector <8 x i16> %wide.load579, <8 x i16> %wide.load580, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i16> %interleaved.vec581, ptr %next.gep578, align 2, !tbaa !57, !alias.scope !295, !noalias !297
  %index.next582 = add nuw i64 %index575, 8       ; 2 uses
  %i.akc = icmp eq i64 %index.next582, %n.vec573
  br i1 %i.akc, label %vec.epilog.middle.block583, label %vec.epilog.vector.body574, !llvm.loop !299

vec.epilog.middle.block583:                       ; preds = %vec.epilog.vector.body574
  br i1 %cmp.n584, label %._crit_edge.us.i, label %.lr.ph193.us.i.preheader

.lr.ph193.us.i.preheader:                         ; preds = %vector.memcheck532, %iter.check568, %vec.epilog.iter.check570, %vec.epilog.middle.block583
  %.1346192.us.i.ph = phi i32 [ %i.aer, %iter.check568 ], [ %i.aer, %vector.memcheck532 ], [ %i.agx, %vec.epilog.iter.check570 ], [ %i.ahb, %vec.epilog.middle.block583 ] ; 4 uses
  %.1348191.us.i.ph = phi ptr [ %.lcssa178, %iter.check568 ], [ %.lcssa178, %vector.memcheck532 ], [ %i.ajr, %vec.epilog.iter.check570 ], [ %i.ajx, %vec.epilog.middle.block583 ] ; 2 uses
  %.1350190.us.i.ph = phi ptr [ %.lcssa179, %iter.check568 ], [ %.lcssa179, %vector.memcheck532 ], [ %i.ajs, %vec.epilog.iter.check570 ], [ %i.ajy, %vec.epilog.middle.block583 ] ; 2 uses
  %.32189.us.i.ph = phi ptr [ %.lcssa180, %iter.check568 ], [ %.lcssa180, %vector.memcheck532 ], [ %i.ajt, %vec.epilog.iter.check570 ], [ %i.ajz, %vec.epilog.middle.block583 ] ; 2 uses
  %i.akd = sub i32 %5, %.1346192.us.i.ph
  %xtraiter889 = and i32 %i.akd, 3                ; 2 uses
  %lcmp.mod890.not = icmp eq i32 %xtraiter889, 0
  br i1 %lcmp.mod890.not, label %.lr.ph193.us.i.prol.loopexit, label %.lr.ph193.us.i.prol

.lr.ph193.us.i.prol:                              ; preds = %.lr.ph193.us.i.preheader, %.lr.ph193.us.i.prol
  %.1346192.us.i.prol = phi i32 [ %i.akk, %.lr.ph193.us.i.prol ], [ %.1346192.us.i.ph, %.lr.ph193.us.i.preheader ]
  %.1348191.us.i.prol = phi ptr [ %i.akj, %.lr.ph193.us.i.prol ], [ %.1348191.us.i.ph, %.lr.ph193.us.i.preheader ] ; 2 uses
  %.1350190.us.i.prol = phi ptr [ %i.aki, %.lr.ph193.us.i.prol ], [ %.1350190.us.i.ph, %.lr.ph193.us.i.preheader ] ; 2 uses
  %.32189.us.i.prol = phi ptr [ %i.akh, %.lr.ph193.us.i.prol ], [ %.32189.us.i.ph, %.lr.ph193.us.i.preheader ] ; 3 uses
  %prol.iter891 = phi i32 [ %prol.iter891.next, %.lr.ph193.us.i.prol ], [ 0, %.lr.ph193.us.i.preheader ]
  %i.ake = load i16, ptr %.1350190.us.i.prol, align 2, !tbaa !57
  store i16 %i.ake, ptr %.32189.us.i.prol, align 2, !tbaa !57
  %i.akf = load i16, ptr %.1348191.us.i.prol, align 2, !tbaa !57
  %i.akg = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 2
  store i16 %i.akf, ptr %i.akg, align 2, !tbaa !57
  %i.akh = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 4 ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.1350190.us.i.prol, i64 2 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.1348191.us.i.prol, i64 2 ; 2 uses
  %i.akk = add nuw nsw i32 %.1346192.us.i.prol, 1 ; 2 uses
  %prol.iter891.next = add i32 %prol.iter891, 1   ; 2 uses
  %prol.iter891.cmp.not = icmp eq i32 %prol.iter891.next, %xtraiter889
  br i1 %prol.iter891.cmp.not, label %.lr.ph193.us.i.prol.loopexit, label %.lr.ph193.us.i.prol, !llvm.loop !300

.lr.ph193.us.i.prol.loopexit:                     ; preds = %.lr.ph193.us.i.prol, %.lr.ph193.us.i.preheader
  %.lcssa764.unr = phi ptr [ poison, %.lr.ph193.us.i.preheader ], [ %i.akh, %.lr.ph193.us.i.prol ]
  %.1346192.us.i.unr = phi i32 [ %.1346192.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.akk, %.lr.ph193.us.i.prol ]
  %.1348191.us.i.unr = phi ptr [ %.1348191.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.akj, %.lr.ph193.us.i.prol ]
  %.1350190.us.i.unr = phi ptr [ %.1350190.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.aki, %.lr.ph193.us.i.prol ]
  %.32189.us.i.unr = phi ptr [ %.32189.us.i.ph, %.lr.ph193.us.i.preheader ], [ %i.akh, %.lr.ph193.us.i.prol ]
  %i.akl = sub i32 %.1346192.us.i.ph, %5
  %i.akm = icmp ugt i32 %i.akl, -4
  br i1 %i.akm, label %._crit_edge.us.i, label %.lr.ph193.us.i

.lr.ph197.split.i:                                ; preds = %.lr.ph197.i
  %i.akn = icmp eq i32 %5, 1
  br i1 %i.akn, label %.preheader5.us201.preheader.i, label %.preheader5.preheader.i

.preheader5.preheader.i:                          ; preds = %.lr.ph197.split.i
  %i.ako = add i32 %.2370.lcssa.i, 3
  %smax.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %i.ako)
  %reass.sub = sub i32 %smax.i, %.2370.lcssa.i
  %6 = and i32 %reass.sub, -2
  %i.akp = add i32 %.2370.lcssa.i, %6
  br label %.preheader4.i

.preheader5.us201.preheader.i:                    ; preds = %.lr.ph197.split.i
  %i.akq = sext i32 %.2370.lcssa.i to i64         ; 13 uses
  %i.akr = sext i32 %2 to i64                     ; 4 uses
  %i.aks = sext i32 %3 to i64
  %invariant.op402.i = add nsw i64 %i.aks, -1     ; 4 uses
  %i.akt = add nsw i64 %i.akq, 2
  %i.aku = tail call i64 @llvm.smax.i64(i64 %invariant.op402.i, i64 %i.akt)
  %i.akv = xor i64 %i.akq, -1
  %i.akw = add i64 %i.aku, %i.akv                 ; 2 uses
  %i.akx = lshr i64 %i.akw, 1
  %i.aky = add nuw i64 %i.akx, 1                  ; 2 uses
  %min.iters.check516 = icmp ult i64 %i.akw, 734
  br i1 %min.iters.check516, label %._crit_edge.us211.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader5.us201.preheader.i
  %i.akz = add nsw i64 %i.akq, 2
  %smax494 = tail call i64 @llvm.smax.i64(i64 %invariant.op402.i, i64 %i.akz)
  %i.ala = xor i64 %i.akq, -1
  %i.alb = add i64 %smax494, %i.ala
  %i.alc = lshr i64 %i.alb, 1
  %i.ald = shl i64 %i.k, 2                        ; 2 uses
  %i.ale = mul i64 %i.k, -4
  %i.alf = add nsw i64 %i.akq, %i.akr
  %i.alg = mul i64 %i.k, %i.alf
  %i.alh = add i64 %i.alg, %i.aep
  %i.ali = shl i64 %i.alh, 1
  %scevgep495 = getelementptr i8, ptr %i.aeo, i64 %i.ali ; 4 uses
  %i.alj = icmp slt i64 %i.ald, 0                 ; 2 uses
  %i.alk = select i1 %i.alj, i64 %i.ale, i64 %i.ald
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.alk, i64 %i.alc) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.all = sub i64 0, %mul.result
  %i.alm = getelementptr i8, ptr %scevgep495, i64 %mul.result
  %i.aln = getelementptr i8, ptr %scevgep495, i64 %i.all
  %i.alo = icmp ult ptr %i.alm, %scevgep495
  %i.alp = icmp ugt ptr %i.aln, %scevgep495
  %i.alq = select i1 %i.alj, i1 %i.alp, i1 %i.alo
  %i.alr = or i1 %i.alq, %mul.overflow
  br i1 %i.alr, label %._crit_edge.us211.i.preheader, label %vector.memcheck496

vector.memcheck496:                               ; preds = %vector.scevcheck
  %i.als = add nsw i64 %i.akq, 2
  %smax497 = tail call i64 @llvm.smax.i64(i64 %invariant.op402.i, i64 %i.als)
  %i.alt = xor i64 %i.akq, -1
  %i.alu = add i64 %smax497, %i.alt
  %i.alv = shl i64 %i.alu, 1
  %i.alw = and i64 %i.alv, -4                     ; 3 uses
  %i.alx = getelementptr i8, ptr %.23.lcssa.i, i64 %i.alw
  %scevgep498 = getelementptr i8, ptr %i.alx, i64 4 ; 2 uses
  %i.aly = add nsw i64 %i.akq, %i.akr             ; 2 uses
  %i.alz = shl nsw i64 %i.aly, 1                  ; 3 uses
  %i.ama = add i64 %i.alw, %i.alz
  %i.amb = add i64 %i.ama, 2
  %i.amc = mul i64 %i.k, %i.amb
  %i.amd = shl nsw i64 %i.aep, 1                  ; 3 uses
  %i.ame = getelementptr i8, ptr %i.aeo, i64 %i.amc
  %scevgep499 = getelementptr i8, ptr %i.ame, i64 %i.amd ; 4 uses
  %i.amf = add nsw i64 %i.alz, 2
  %i.amg = mul i64 %i.k, %i.amf
  %i.amh = getelementptr i8, ptr %i.aeo, i64 %i.amg
  %scevgep500 = getelementptr i8, ptr %i.amh, i64 %i.amd ; 4 uses
  %i.ami = icmp ult ptr %scevgep499, %scevgep500
  %umin = select i1 %i.ami, ptr %scevgep499, ptr %scevgep500
  %i.amj = icmp ugt ptr %scevgep499, %scevgep500
  %umax501 = select i1 %i.amj, ptr %scevgep499, ptr %scevgep500
  %scevgep502 = getelementptr i8, ptr %umax501, i64 2
  %i.amk = mul i64 %i.k, %i.aly
  %i.aml = add i64 %i.amk, %i.aep
  %i.amm = shl i64 %i.aml, 1
  %scevgep503 = getelementptr i8, ptr %i.aeo, i64 %i.amm ; 4 uses
  %i.amn = add i64 %i.alw, %i.alz
  %i.amo = mul i64 %i.k, %i.amn
  %i.amp = getelementptr i8, ptr %i.aeo, i64 %i.amo
  %scevgep504 = getelementptr i8, ptr %i.amp, i64 %i.amd ; 4 uses
  %i.amq = icmp ult ptr %scevgep503, %scevgep504
  %umin505 = select i1 %i.amq, ptr %scevgep503, ptr %scevgep504
  %i.amr = icmp ugt ptr %scevgep503, %scevgep504
  %umax506 = select i1 %i.amr, ptr %scevgep503, ptr %scevgep504
  %scevgep507 = getelementptr i8, ptr %umax506, i64 2
  %bound0508 = icmp ult ptr %.23.lcssa.i, %scevgep502
  %bound1509 = icmp ult ptr %umin, %scevgep498
  %found.conflict510 = and i1 %bound0508, %bound1509
  %bound0511 = icmp ult ptr %.23.lcssa.i, %scevgep507
  %bound1512 = icmp ult ptr %umin505, %scevgep498
  %found.conflict513 = and i1 %bound0511, %bound1512
  %conflict.rdx514 = or i1 %found.conflict510, %found.conflict513
  br i1 %conflict.rdx514, label %._crit_edge.us211.i.preheader, label %vector.ph517

vector.ph517:                                     ; preds = %vector.memcheck496
  %n.vec518 = and i64 %i.aky, -16                 ; 4 uses
  %i.ams = shl i64 %n.vec518, 1
  %i.amt = add i64 %i.ams, %i.akq                 ; 2 uses
  %i.amu = shl i64 %n.vec518, 2
  %i.amv = getelementptr i8, ptr %.23.lcssa.i, i64 %i.amu ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.akr, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <16 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat520 = shufflevector <16 x i64> %broadcast.splatinsert519, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert521 = insertelement <16 x i64> poison, i64 %i.akq, i64 0
  %broadcast.splat522 = shufflevector <16 x i64> %broadcast.splatinsert521, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat522, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14, i64 16, i64 18, i64 20, i64 22, i64 24, i64 26, i64 28, i64 30>
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph517
  %index524 = phi i64 [ 0, %vector.ph517 ], [ %index.next527, %vector.body523 ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph517 ], [ %vec.ind.next, %vector.body523 ] ; 2 uses
  %i.amw = shl i64 %index524, 2
  %next.gep525 = getelementptr i8, ptr %.23.lcssa.i, i64 %i.amw
  %i.amx = add nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.amy = mul <16 x i64> %i.amx, %broadcast.splat520 ; 16 uses
  %i.amz = extractelement <16 x i64> %i.amy, i64 0
  %i.ana = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.amz ; 2 uses
  %i.anb = extractelement <16 x i64> %i.amy, i64 1
  %i.anc = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anb ; 2 uses
  %i.and = extractelement <16 x i64> %i.amy, i64 2
  %i.ane = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.and ; 2 uses
  %i.anf = extractelement <16 x i64> %i.amy, i64 3
  %i.ang = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anf ; 2 uses
  %i.anh = extractelement <16 x i64> %i.amy, i64 4
  %i.ani = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anh ; 2 uses
  %i.anj = extractelement <16 x i64> %i.amy, i64 5
  %i.ank = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anj ; 2 uses
  %i.anl = extractelement <16 x i64> %i.amy, i64 6
  %i.anm = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anl ; 2 uses
  %i.ann = extractelement <16 x i64> %i.amy, i64 7
  %i.ano = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.ann ; 2 uses
  %i.anp = extractelement <16 x i64> %i.amy, i64 8
  %i.anq = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anp ; 2 uses
  %i.anr = extractelement <16 x i64> %i.amy, i64 9
  %i.ans = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anr ; 2 uses
  %i.ant = extractelement <16 x i64> %i.amy, i64 10
  %i.anu = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.ant ; 2 uses
  %i.anv = extractelement <16 x i64> %i.amy, i64 11
  %i.anw = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anv ; 2 uses
  %i.anx = extractelement <16 x i64> %i.amy, i64 12
  %i.any = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anx ; 2 uses
  %i.anz = extractelement <16 x i64> %i.amy, i64 13
  %i.aoa = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.anz ; 2 uses
  %i.aob = extractelement <16 x i64> %i.amy, i64 14
  %i.aoc = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.aob ; 2 uses
  %i.aod = extractelement <16 x i64> %i.amy, i64 15
  %i.aoe = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.aod ; 2 uses
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %i.ana, i64 %i.k
  %i.aog = getelementptr inbounds nuw [2 x i8], ptr %i.anc, i64 %i.k
  %i.aoh = getelementptr inbounds nuw [2 x i8], ptr %i.ane, i64 %i.k
  %i.aoi = getelementptr inbounds nuw [2 x i8], ptr %i.ang, i64 %i.k
  %i.aoj = getelementptr inbounds nuw [2 x i8], ptr %i.ani, i64 %i.k
  %i.aok = getelementptr inbounds nuw [2 x i8], ptr %i.ank, i64 %i.k
  %i.aol = getelementptr inbounds nuw [2 x i8], ptr %i.anm, i64 %i.k
  %i.aom = getelementptr inbounds nuw [2 x i8], ptr %i.ano, i64 %i.k
  %i.aon = getelementptr inbounds nuw [2 x i8], ptr %i.anq, i64 %i.k
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.ans, i64 %i.k
  %i.aop = getelementptr inbounds nuw [2 x i8], ptr %i.anu, i64 %i.k
  %i.aoq = getelementptr inbounds nuw [2 x i8], ptr %i.anw, i64 %i.k
  %i.aor = getelementptr inbounds nuw [2 x i8], ptr %i.any, i64 %i.k
  %i.aos = getelementptr inbounds nuw [2 x i8], ptr %i.aoa, i64 %i.k
  %i.aot = getelementptr inbounds nuw [2 x i8], ptr %i.aoc, i64 %i.k
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %i.aoe, i64 %i.k
  %i.aov = load i16, ptr %i.ana, align 2, !tbaa !57, !alias.scope !301
  %i.aow = load i16, ptr %i.anc, align 2, !tbaa !57, !alias.scope !301
  %i.aox = load i16, ptr %i.ane, align 2, !tbaa !57, !alias.scope !301
  %i.aoy = load i16, ptr %i.ang, align 2, !tbaa !57, !alias.scope !301
  %i.aoz = load i16, ptr %i.ani, align 2, !tbaa !57, !alias.scope !301
  %i.apa = load i16, ptr %i.ank, align 2, !tbaa !57, !alias.scope !301
  %i.apb = load i16, ptr %i.anm, align 2, !tbaa !57, !alias.scope !301
  %i.apc = load i16, ptr %i.ano, align 2, !tbaa !57, !alias.scope !301
  %i.apd = load i16, ptr %i.anq, align 2, !tbaa !57, !alias.scope !301
  %i.ape = load i16, ptr %i.ans, align 2, !tbaa !57, !alias.scope !301
  %i.apf = load i16, ptr %i.anu, align 2, !tbaa !57, !alias.scope !301
  %i.apg = load i16, ptr %i.anw, align 2, !tbaa !57, !alias.scope !301
  %i.aph = load i16, ptr %i.any, align 2, !tbaa !57, !alias.scope !301
  %i.api = load i16, ptr %i.aoa, align 2, !tbaa !57, !alias.scope !301
  %i.apj = load i16, ptr %i.aoc, align 2, !tbaa !57, !alias.scope !301
  %i.apk = load i16, ptr %i.aoe, align 2, !tbaa !57, !alias.scope !301
  %i.apl = insertelement <16 x i16> poison, i16 %i.aov, i64 0
  %i.apm = insertelement <16 x i16> %i.apl, i16 %i.aow, i64 1
  %i.apn = insertelement <16 x i16> %i.apm, i16 %i.aox, i64 2
  %i.apo = insertelement <16 x i16> %i.apn, i16 %i.aoy, i64 3
  %i.app = insertelement <16 x i16> %i.apo, i16 %i.aoz, i64 4
  %i.apq = insertelement <16 x i16> %i.app, i16 %i.apa, i64 5
  %i.apr = insertelement <16 x i16> %i.apq, i16 %i.apb, i64 6
  %i.aps = insertelement <16 x i16> %i.apr, i16 %i.apc, i64 7
  %i.apt = insertelement <16 x i16> %i.aps, i16 %i.apd, i64 8
  %i.apu = insertelement <16 x i16> %i.apt, i16 %i.ape, i64 9
  %i.apv = insertelement <16 x i16> %i.apu, i16 %i.apf, i64 10
  %i.apw = insertelement <16 x i16> %i.apv, i16 %i.apg, i64 11
  %i.apx = insertelement <16 x i16> %i.apw, i16 %i.aph, i64 12
  %i.apy = insertelement <16 x i16> %i.apx, i16 %i.api, i64 13
  %i.apz = insertelement <16 x i16> %i.apy, i16 %i.apj, i64 14
  %i.aqa = insertelement <16 x i16> %i.apz, i16 %i.apk, i64 15
  %i.aqb = load i16, ptr %i.aof, align 2, !tbaa !57, !alias.scope !304
  %i.aqc = load i16, ptr %i.aog, align 2, !tbaa !57, !alias.scope !304
  %i.aqd = load i16, ptr %i.aoh, align 2, !tbaa !57, !alias.scope !304
  %i.aqe = load i16, ptr %i.aoi, align 2, !tbaa !57, !alias.scope !304
  %i.aqf = load i16, ptr %i.aoj, align 2, !tbaa !57, !alias.scope !304
  %i.aqg = load i16, ptr %i.aok, align 2, !tbaa !57, !alias.scope !304
  %i.aqh = load i16, ptr %i.aol, align 2, !tbaa !57, !alias.scope !304
end_hunk_3
begin_hunk_4_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod2587)
  br label %.lr.ph1003.i.epil

.lr.ph1003.i.epil:                                ; preds = %.lr.ph1003.i.epil, %.lr.ph1003.i.epil.preheader
  %.017231000.i.epil = phi ptr [ %i.bfr, %.lr.ph1003.i.epil ], [ %.017231000.i.epil.init, %.lr.ph1003.i.epil.preheader ] ; 2 uses
  %.131752999.i.epil = phi ptr [ %i.bfs, %.lr.ph1003.i.epil ], [ %.131752999.i.epil.init, %.lr.ph1003.i.epil.preheader ] ; 2 uses
  %.1352998.i.epil = phi <4 x float> [ %i.bfq, %.lr.ph1003.i.epil ], [ %.1352998.i.epil.init, %.lr.ph1003.i.epil.preheader ]
  %epil.iter2584 = phi i32 [ %epil.iter2584.next, %.lr.ph1003.i.epil ], [ 0, %.lr.ph1003.i.epil.preheader ]
  %i.bfl = load <8 x bfloat>, ptr %.017231000.i.epil, align 1, !tbaa !17
  %i.bfm = load i32, ptr %.131752999.i.epil, align 4, !tbaa !369
  %i.bfn = insertelement <4 x i32> poison, i32 %i.bfm, i64 0
  %i.bfo = bitcast <4 x i32> %i.bfn to <8 x bfloat>
  %i.bfp = shufflevector <8 x bfloat> %i.bfo, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bfq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1352998.i.epil, <8 x bfloat> nofpclass(nan inf) %i.bfl, <8 x bfloat> nofpclass(nan inf) %i.bfp) ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %.017231000.i.epil, i64 16
  %i.bfs = getelementptr inbounds nuw i8, ptr %.131752999.i.epil, i64 4
  %epil.iter2584.next = add i32 %epil.iter2584, 1 ; 2 uses
  %epil.iter2584.cmp.not = icmp eq i32 %epil.iter2584.next, %xtraiter2583
  br i1 %epil.iter2584.cmp.not, label %.preheader394.loopexit.i, label %.lr.ph1003.i.epil, !llvm.loop !407

.preheader394.loopexit.i:                         ; preds = %.lr.ph1003.i.epil, %.preheader394.loopexit.i.unr-lcssa
  %.lcssa2335 = phi <4 x float> [ %i.bhp, %.preheader394.loopexit.i.unr-lcssa ], [ %i.bfq, %.lr.ph1003.i.epil ]
  %i.bft = getelementptr i8, ptr %.1217511017.i, i64 %i.up
  %scevgep1806.i = getelementptr i8, ptr %i.bft, i64 4
  br label %.preheader394.i

.preheader394.i:                                  ; preds = %.preheader394.loopexit.i, %bb.ae
  %.1352.lcssa.i = phi <4 x float> [ %.0351.i, %bb.ae ], [ %.lcssa2335, %.preheader394.loopexit.i ] ; 3 uses
  %.131752.lcssa.i = phi ptr [ %.1217511017.i, %bb.ae ], [ %scevgep1806.i, %.preheader394.loopexit.i ] ; 4 uses
  %.01723.lcssa.i = phi ptr [ %.21024.i, %bb.ae ], [ %indvars.iv1802.i, %.preheader394.loopexit.i ] ; 3 uses
  %.01721.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.ug, %.preheader394.loopexit.i ] ; 5 uses
  %i.bfu = icmp slt i32 %.01721.lcssa.i, %8
  br i1 %i.bfu, label %.lr.ph1012.i.preheader, label %._crit_edge1013.i

.lr.ph1012.i.preheader:                           ; preds = %.preheader394.i
  %i.bfv = sub i32 %8, %.01721.lcssa.i
  %.neg2664.a = add i32 %.01721.lcssa.i, 1
  %xtraiter2590 = and i32 %i.bfv, 1
  %lcmp.mod2591.not = icmp eq i32 %xtraiter2590, 0
  br i1 %lcmp.mod2591.not, label %.lr.ph1012.i.prol.loopexit, label %.lr.ph1012.i.prol

.lr.ph1012.i.prol:                                ; preds = %.lr.ph1012.i.preheader
  %i.bfw = load i64, ptr %.01723.lcssa.i, align 1, !tbaa !17
  %i.bfx = insertelement <2 x i64> poison, i64 %i.bfw, i64 0
  %i.bfy = bitcast <2 x i64> %i.bfx to <8 x i16>
  %i.bfz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bfy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bga = bitcast <8 x i16> %i.bfz to <4 x float>
  %i.bgb = load i16, ptr %.131752.lcssa.i, align 2, !tbaa !57
  %i.bgc = zext i16 %i.bgb to i32
  %i.bgd = shl nuw i32 %i.bgc, 16
  %i.bge = insertelement <4 x i32> poison, i32 %i.bgd, i64 0
  %i.bgf = bitcast <4 x i32> %i.bge to <4 x float>
  %i.bgg = shufflevector <4 x float> %i.bgf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bgh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bga, <4 x float> nofpclass(nan inf) %i.bgg, <4 x float> nofpclass(nan inf) %.1352.lcssa.i) ; 2 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr %.01723.lcssa.i, i64 8
  %i.bgj = getelementptr inbounds nuw i8, ptr %.131752.lcssa.i, i64 2 ; 2 uses
  %i.bgk = add nuw nsw i32 %.01721.lcssa.i, 1
  br label %.lr.ph1012.i.prol.loopexit

.lr.ph1012.i.prol.loopexit:                       ; preds = %.lr.ph1012.i.prol, %.lr.ph1012.i.preheader
  %.lcssa2337.unr = phi <4 x float> [ poison, %.lr.ph1012.i.preheader ], [ %i.bgh, %.lr.ph1012.i.prol ]
  %.lcssa2336.unr = phi ptr [ poison, %.lr.ph1012.i.preheader ], [ %i.bgj, %.lr.ph1012.i.prol ]
  %.117221011.i.unr = phi i32 [ %.01721.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bgk, %.lr.ph1012.i.prol ]
  %.117241010.i.unr = phi ptr [ %.01723.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bgi, %.lr.ph1012.i.prol ]
  %.1417531009.i.unr = phi ptr [ %.131752.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bgj, %.lr.ph1012.i.prol ]
  %.23531008.i.unr = phi <4 x float> [ %.1352.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bgh, %.lr.ph1012.i.prol ]
  %i.bgl = icmp eq i32 %8, %.neg2664.a
  br i1 %i.bgl, label %._crit_edge1013.i, label %.lr.ph1012.i

.lr.ph1003.i:                                     ; preds = %.lr.ph1003.i.preheader, %.lr.ph1003.i
  %.017231000.i = phi ptr [ %i.bhq, %.lr.ph1003.i ], [ %.21024.i, %.lr.ph1003.i.preheader ] ; 5 uses
  %.131752999.i = phi ptr [ %i.bhr, %.lr.ph1003.i ], [ %.1217511017.i, %.lr.ph1003.i.preheader ] ; 5 uses
  %.1352998.i = phi <4 x float> [ %i.bhp, %.lr.ph1003.i ], [ %.0351.i, %.lr.ph1003.i.preheader ]
  %niter2589 = phi i32 [ %niter2589.next.3, %.lr.ph1003.i ], [ 0, %.lr.ph1003.i.preheader ]
  %i.bgm = load <8 x bfloat>, ptr %.017231000.i, align 1, !tbaa !17
  %i.bgn = load i32, ptr %.131752999.i, align 4, !tbaa !369
  %i.bgo = insertelement <4 x i32> poison, i32 %i.bgn, i64 0
  %i.bgp = bitcast <4 x i32> %i.bgo to <8 x bfloat>
  %i.bgq = shufflevector <8 x bfloat> %i.bgp, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bgr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1352998.i, <8 x bfloat> nofpclass(nan inf) %i.bgm, <8 x bfloat> nofpclass(nan inf) %i.bgq)
  %i.bgs = getelementptr inbounds nuw i8, ptr %.017231000.i, i64 16
  %i.bgt = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 4
  %i.bgu = load <8 x bfloat>, ptr %i.bgs, align 1, !tbaa !17
  %i.bgv = load i32, ptr %i.bgt, align 4, !tbaa !369
  %i.bgw = insertelement <4 x i32> poison, i32 %i.bgv, i64 0
  %i.bgx = bitcast <4 x i32> %i.bgw to <8 x bfloat>
  %i.bgy = shufflevector <8 x bfloat> %i.bgx, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bgz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bgr, <8 x bfloat> nofpclass(nan inf) %i.bgu, <8 x bfloat> nofpclass(nan inf) %i.bgy)
  %i.bha = getelementptr inbounds nuw i8, ptr %.017231000.i, i64 32
  %i.bhb = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 8
  %i.bhc = load <8 x bfloat>, ptr %i.bha, align 1, !tbaa !17
  %i.bhd = load i32, ptr %i.bhb, align 4, !tbaa !369
  %i.bhe = insertelement <4 x i32> poison, i32 %i.bhd, i64 0
  %i.bhf = bitcast <4 x i32> %i.bhe to <8 x bfloat>
  %i.bhg = shufflevector <8 x bfloat> %i.bhf, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bhh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bgz, <8 x bfloat> nofpclass(nan inf) %i.bhc, <8 x bfloat> nofpclass(nan inf) %i.bhg)
  %i.bhi = getelementptr inbounds nuw i8, ptr %.017231000.i, i64 48
  %i.bhj = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 12
  %i.bhk = load <8 x bfloat>, ptr %i.bhi, align 1, !tbaa !17
  %i.bhl = load i32, ptr %i.bhj, align 4, !tbaa !369
  %i.bhm = insertelement <4 x i32> poison, i32 %i.bhl, i64 0
  %i.bhn = bitcast <4 x i32> %i.bhm to <8 x bfloat>
  %i.bho = shufflevector <8 x bfloat> %i.bhn, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bhp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bhh, <8 x bfloat> nofpclass(nan inf) %i.bhk, <8 x bfloat> nofpclass(nan inf) %i.bho) ; 3 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %.017231000.i, i64 64 ; 2 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 16 ; 2 uses
  %niter2589.next.3 = add i32 %niter2589, 4       ; 2 uses
  %niter2589.ncmp.3.not = icmp eq i32 %niter2589.next.3, %unroll_iter2588
  br i1 %niter2589.ncmp.3.not, label %.preheader394.loopexit.i.unr-lcssa, label %.lr.ph1003.i, !llvm.loop !408

.lr.ph1012.i:                                     ; preds = %.lr.ph1012.i.prol.loopexit, %.lr.ph1012.i
  %.117221011.i = phi i32 [ %i.biu, %.lr.ph1012.i ], [ %.117221011.i.unr, %.lr.ph1012.i.prol.loopexit ]
  %.117241010.i = phi ptr [ %i.bis, %.lr.ph1012.i ], [ %.117241010.i.unr, %.lr.ph1012.i.prol.loopexit ] ; 3 uses
  %.1417531009.i = phi ptr [ %i.bit, %.lr.ph1012.i ], [ %.1417531009.i.unr, %.lr.ph1012.i.prol.loopexit ] ; 3 uses
  %.23531008.i = phi <4 x float> [ %i.bir, %.lr.ph1012.i ], [ %.23531008.i.unr, %.lr.ph1012.i.prol.loopexit ]
  %i.bhs = load i64, ptr %.117241010.i, align 1, !tbaa !17
  %i.bht = insertelement <2 x i64> poison, i64 %i.bhs, i64 0
  %i.bhu = bitcast <2 x i64> %i.bht to <8 x i16>
  %i.bhv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bhu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bhw = bitcast <8 x i16> %i.bhv to <4 x float>
  %i.bhx = load i16, ptr %.1417531009.i, align 2, !tbaa !57
  %i.bhy = zext i16 %i.bhx to i32
  %i.bhz = shl nuw i32 %i.bhy, 16
  %i.bia = insertelement <4 x i32> poison, i32 %i.bhz, i64 0
  %i.bib = bitcast <4 x i32> %i.bia to <4 x float>
  %i.bic = shufflevector <4 x float> %i.bib, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bid = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bhw, <4 x float> nofpclass(nan inf) %i.bic, <4 x float> nofpclass(nan inf) %.23531008.i)
  %i.bie = getelementptr inbounds nuw i8, ptr %.117241010.i, i64 8
  %i.bif = getelementptr inbounds nuw i8, ptr %.1417531009.i, i64 2
  %i.big = load i64, ptr %i.bie, align 1, !tbaa !17
  %i.bih = insertelement <2 x i64> poison, i64 %i.big, i64 0
  %i.bii = bitcast <2 x i64> %i.bih to <8 x i16>
  %i.bij = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bii, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bik = bitcast <8 x i16> %i.bij to <4 x float>
  %i.bil = load i16, ptr %i.bif, align 2, !tbaa !57
  %i.bim = zext i16 %i.bil to i32
  %i.bin = shl nuw i32 %i.bim, 16
  %i.bio = insertelement <4 x i32> poison, i32 %i.bin, i64 0
  %i.bip = bitcast <4 x i32> %i.bio to <4 x float>
  %i.biq = shufflevector <4 x float> %i.bip, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bir = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bik, <4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bid) ; 2 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %.117241010.i, i64 16
  %i.bit = getelementptr inbounds nuw i8, ptr %.1417531009.i, i64 4 ; 2 uses
  %i.biu = add nuw nsw i32 %.117221011.i, 2       ; 2 uses
  %exitcond1807.not.i.1 = icmp eq i32 %i.biu, %8
  br i1 %exitcond1807.not.i.1, label %._crit_edge1013.i, label %.lr.ph1012.i, !llvm.loop !409

._crit_edge1013.i:                                ; preds = %.lr.ph1012.i.prol.loopexit, %.lr.ph1012.i, %.preheader394.i
  %.2353.lcssa.i = phi <4 x float> [ %.1352.lcssa.i, %.preheader394.i ], [ %.lcssa2337.unr, %.lr.ph1012.i.prol.loopexit ], [ %i.bir, %.lr.ph1012.i ]
  %.141753.lcssa.i = phi ptr [ %.131752.lcssa.i, %.preheader394.i ], [ %.lcssa2336.unr, %.lr.ph1012.i.prol.loopexit ], [ %i.bit, %.lr.ph1012.i ]
  store <4 x float> %.2353.lcssa.i, ptr %.171018.i, align 16, !tbaa !17
  %i.biv = getelementptr inbounds nuw i8, ptr %.171018.i, i64 16 ; 2 uses
  %i.biw = add nuw nsw i32 %.417581016.i, 1       ; 2 uses
  %exitcond1808.not.i = icmp eq i32 %i.biw, %6
  br i1 %exitcond1808.not.i, label %._crit_edge1020.i, label %.lr.ph1019.i, !llvm.loop !410

._crit_edge1020.i:                                ; preds = %._crit_edge1013.i, %.preheader399.i
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader399.i ], [ %i.biv, %._crit_edge1013.i ] ; 2 uses
  %i.bix = getelementptr inbounds [2 x i8], ptr %.21024.i, i64 %i.ud ; 2 uses
  %i.biy = add nuw nsw i32 %.213881022.i, 4       ; 3 uses
  %i.biz = or disjoint i32 %i.biy, 3
  %i.bja = icmp slt i32 %i.biz, %4
  %scevgep1803.i = getelementptr i8, ptr %indvars.iv1802.i, i64 %i.un
  br i1 %i.bja, label %.preheader403.i, label %.preheader393.i, !llvm.loop !411

.preheader392.i:                                  ; preds = %._crit_edge1178.i, %.preheader392.lr.ph.i
  %indvars.iv1817.i = phi ptr [ %scevgep1816.i, %.preheader392.lr.ph.i ], [ %scevgep1818.i, %._crit_edge1178.i ] ; 3 uses
  %.31182.i = phi ptr [ %.2.lcssa.i, %.preheader392.lr.ph.i ], [ %i.cvh, %._crit_edge1178.i ] ; 26 uses
  %.181181.i = phi ptr [ %.12.lcssa.i, %.preheader392.lr.ph.i ], [ %.23.lcssa.i, %._crit_edge1178.i ] ; 2 uses
  %.313891180.i = phi i32 [ %.21388.lcssa.i, %.preheader392.lr.ph.i ], [ %i.cvi, %._crit_edge1178.i ]
  br i1 %i.amn, label %.lr.ph1053.i, label %.preheader391.i

.preheader382.i:                                  ; preds = %._crit_edge1178.i, %.preheader393.i
  %.31389.lcssa.i = phi i32 [ %.21388.lcssa.i, %.preheader393.i ], [ %i.cvi, %._crit_edge1178.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader393.i ], [ %.23.lcssa.i, %._crit_edge1178.i ]
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader393.i ], [ %i.cvh, %._crit_edge1178.i ] ; 2 uses
  %i.bjb = icmp slt i32 %.31389.lcssa.i, %4
  br i1 %i.bjb, label %.preheader381.lr.ph.i, label %_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii.exit

.preheader381.lr.ph.i:                            ; preds = %.preheader382.i
  %i.bjc = icmp sgt i32 %6, 15
  %.not1791.i = icmp eq i32 %7, 0                 ; 5 uses
  %i.bjd = icmp sgt i32 %8, 1                     ; 5 uses
  %i.bje = sext i32 %8 to i64                     ; 2 uses
  %i.bjf = add i32 %8, -2                         ; 7 uses
  %i.bjg = and i32 %i.bjf, -2
  %i.bjh = add i32 %i.bjg, 2                      ; 5 uses
  %i.bji = and i32 %6, -16
  %i.bjj = lshr i32 %i.bjf, 1
  %i.bjk = zext nneg i32 %i.bjj to i64            ; 5 uses
  %i.bjl = shl nuw nsw i64 %i.bjk, 5
  %i.bjm = shl nuw nsw i64 %i.bjk, 4
  %i.bjn = shl nuw nsw i64 %i.bjk, 3
  %i.bjo = shl nuw nsw i64 %i.bjk, 2              ; 2 uses
  %i.bjp = lshr i32 %i.bjf, 1
  %i.bjq = zext nneg i32 %i.bjp to i64
  %i.bjr = shl nuw nsw i64 %i.bjq, 6
  %i.bjs = getelementptr i8, ptr %.3.lcssa.i, i64 %i.bjo
  %scevgep632 = getelementptr i8, ptr %i.bjs, i64 4
  %i.bjt = shl nsw i64 %i.bje, 1
  %i.bju = add nuw nsw i64 %i.bjk, 1              ; 10 uses
  %i.bjv = add i32 %8, -2                         ; 4 uses
  %i.bjw = lshr i32 %i.bjv, 1
  %i.bjx = add nuw i32 %i.bjw, 1                  ; 6 uses
  %xtraiter2625 = and i32 %i.bjx, 3               ; 3 uses
  %i.bjy = icmp ult i32 %i.bjv, 6
  %unroll_iter2631 = and i32 %i.bjx, -4
  %lcmp.mod2627.not = icmp eq i32 %xtraiter2625, 0
  %lcmp.mod2630 = icmp ne i32 %xtraiter2625, 0
  %xtraiter2635 = and i32 %i.bjx, 3               ; 3 uses
  %i.bjz = icmp ult i32 %i.bjv, 6
  %unroll_iter2641 = and i32 %i.bjx, -4
  %lcmp.mod2637.not = icmp eq i32 %xtraiter2635, 0
  %lcmp.mod2640 = icmp ne i32 %xtraiter2635, 0
  %xtraiter2645 = and i32 %i.bjx, 3               ; 3 uses
  %i.bka = icmp ult i32 %i.bjv, 6
  %unroll_iter2651 = and i32 %i.bjx, -4
  %lcmp.mod2647.not = icmp eq i32 %xtraiter2645, 0
  %lcmp.mod2650 = icmp ne i32 %xtraiter2645, 0
  %min.iters.check1951 = icmp ult i32 %i.bjf, 14
  %min.iters.check1953 = icmp ult i32 %i.bjf, 126
  %i.bkb = and i64 %i.bju, 56
  %n.vec1955 = and i64 %i.bju, 4294967232         ; 6 uses
  %i.bkc = trunc nuw i64 %n.vec1955 to i32
  %i.bkd = shl i32 %i.bkc, 1
  %i.bke = shl nuw nsw i64 %n.vec1955, 2
  %i.bkf = shl nuw nsw i64 %n.vec1955, 3
  %cmp.n2014 = icmp eq i64 %i.bju, %n.vec1955
  %min.epilog.iters.check2023 = icmp eq i64 %i.bkb, 0
  %n.vec2025 = and i64 %i.bju, 4294967288         ; 5 uses
  %i.bkg = trunc nuw i64 %n.vec2025 to i32
  %i.bkh = shl i32 %i.bkg, 1
  %i.bki = shl nuw nsw i64 %n.vec2025, 2
  %i.bkj = shl nuw nsw i64 %n.vec2025, 3
  %cmp.n2042 = icmp eq i64 %i.bju, %n.vec2025
  %min.iters.check1708 = icmp ult i32 %i.bjf, 14
  %min.iters.check1710 = icmp ult i32 %i.bjf, 126
  %i.bkk = and i64 %i.bju, 56
  %n.vec1712 = and i64 %i.bju, 4294967232         ; 5 uses
  %i.bkl = trunc nuw i64 %n.vec1712 to i32
  %i.bkm = shl i32 %i.bkl, 1
  %i.bkn = shl nuw nsw i64 %n.vec1712, 2          ; 2 uses
  %cmp.n1756 = icmp eq i64 %i.bju, %n.vec1712
  %min.epilog.iters.check1764 = icmp eq i64 %i.bkk, 0
  %n.vec1766 = and i64 %i.bju, 4294967288         ; 4 uses
  %i.bko = trunc nuw i64 %n.vec1766 to i32
  %i.bkp = shl i32 %i.bko, 1
  %i.bkq = shl nuw nsw i64 %n.vec1766, 2          ; 2 uses
  %cmp.n1780 = icmp eq i64 %i.bju, %n.vec1766
  br label %.preheader381.i

.preheader391.i:                                  ; preds = %._crit_edge1046.i, %.preheader392.i
  %.01704.lcssa.i = phi ptr [ %.val8, %.preheader392.i ], [ %.21706.lcssa.i, %._crit_edge1046.i ] ; 2 uses
  %.01699.lcssa.i = phi i32 [ 0, %.preheader392.i ], [ %i.amu, %._crit_edge1046.i ] ; 3 uses
  %.19.lcssa.i = phi ptr [ %.181181.i, %.preheader392.i ], [ %i.boc, %._crit_edge1046.i ] ; 2 uses
  %i.bkr = or disjoint i32 %.01699.lcssa.i, 7
  %i.bks = icmp slt i32 %i.bkr, %6
  br i1 %i.bks, label %.lr.ph1082.i, label %.preheader390.i

.lr.ph1053.i:                                     ; preds = %.preheader392.i, %._crit_edge1046.i
  %.191052.i = phi ptr [ %i.boc, %._crit_edge1046.i ], [ %.181181.i, %.preheader392.i ] ; 5 uses
  %.016991051.i = phi i32 [ %i.bod, %._crit_edge1046.i ], [ 0, %.preheader392.i ]
  %.017041050.i = phi ptr [ %.21706.lcssa.i, %._crit_edge1046.i ], [ %.val8, %.preheader392.i ] ; 4 uses
  br i1 %.not1796.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph1053.i
  %i.bkt = load <16 x float>, ptr %.191052.i, align 1, !tbaa !17
  %i.bku = getelementptr inbounds nuw i8, ptr %.191052.i, i64 64
  %i.bkv = load <16 x float>, ptr %i.bku, align 1, !tbaa !17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph1053.i
  %.01696.i = phi nsz <16 x float> [ %i.bkt, %bb.af ], [ zeroinitializer, %.lr.ph1053.i ] ; 3 uses
  %.01693.i = phi nsz <16 x float> [ %i.bkv, %bb.af ], [ zeroinitializer, %.lr.ph1053.i ] ; 3 uses
  br i1 %i.amo, label %.lr.ph1034.i.preheader, label %.preheader387.i

.lr.ph1034.i.preheader:                           ; preds = %bb.ag
  br i1 %i.ank, label %.lr.ph1034.i.epil.preheader, label %.lr.ph1034.i

.preheader387.i.loopexit.unr-lcssa:               ; preds = %.lr.ph1034.i
  br i1 %lcmp.mod2594.not.not, label %.lr.ph1034.i.epil.preheader, label %.preheader387.i.loopexit

.lr.ph1034.i.epil.preheader:                      ; preds = %.preheader387.i.loopexit.unr-lcssa, %.lr.ph1034.i.preheader
  %.016911031.i.epil.init = phi ptr [ %.31182.i, %.lr.ph1034.i.preheader ], [ %i.bna, %.preheader387.i.loopexit.unr-lcssa ] ; 2 uses
  %.116941030.i.epil.init = phi <16 x float> [ %.01693.i, %.lr.ph1034.i.preheader ], [ %i.bmz, %.preheader387.i.loopexit.unr-lcssa ]
  %.116971029.i.epil.init = phi <16 x float> [ %.01696.i, %.lr.ph1034.i.preheader ], [ %i.bmx, %.preheader387.i.loopexit.unr-lcssa ]
  %.117051028.i.epil.init = phi ptr [ %.017041050.i, %.lr.ph1034.i.preheader ], [ %i.bnb, %.preheader387.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2598)
  %i.bkw = load double, ptr %.016911031.i.epil.init, align 8, !tbaa !367
  %i.bkx = insertelement <8 x double> poison, double %i.bkw, i64 0
  %i.bky = bitcast <8 x double> %i.bkx to <8 x i64>
  %i.bkz = shufflevector <8 x i64> %i.bky, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bla = load <8 x i64>, ptr %.117051028.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.blb = bitcast <8 x i64> %i.bla to <16 x i32>
  %i.blc = shufflevector <16 x i32> %i.blb, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bld = bitcast <8 x i64> %i.bkz to <32 x bfloat> ; 2 uses
  %i.ble = bitcast <8 x i64> %i.bla to <32 x bfloat>
  %i.blf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.116971029.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.bld, <32 x bfloat> nofpclass(nan inf) %i.ble)
  %i.blg = bitcast <16 x i32> %i.blc to <32 x bfloat>
  %i.blh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.116941030.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.bld, <32 x bfloat> nofpclass(nan inf) %i.blg)
  %i.bli = getelementptr inbounds nuw i8, ptr %.016911031.i.epil.init, i64 8
  br label %.preheader387.i.loopexit

.preheader387.i.loopexit:                         ; preds = %.preheader387.i.loopexit.unr-lcssa, %.lr.ph1034.i.epil.preheader
  %.lcssa2215 = phi <16 x float> [ %i.bmx, %.preheader387.i.loopexit.unr-lcssa ], [ %i.blf, %.lr.ph1034.i.epil.preheader ]
  %.lcssa2214 = phi <16 x float> [ %i.bmz, %.preheader387.i.loopexit.unr-lcssa ], [ %i.blh, %.lr.ph1034.i.epil.preheader ]
  %.lcssa2213 = phi ptr [ %i.bna, %.preheader387.i.loopexit.unr-lcssa ], [ %i.bli, %.lr.ph1034.i.epil.preheader ]
  %i.blj = getelementptr i8, ptr %.017041050.i, i64 %i.anf
  %scevgep630 = getelementptr i8, ptr %i.blj, i64 64
  br label %.preheader387.i

.preheader387.i:                                  ; preds = %.preheader387.i.loopexit, %bb.ag
  %.11705.lcssa.i = phi ptr [ %.017041050.i, %bb.ag ], [ %scevgep630, %.preheader387.i.loopexit ] ; 4 uses
  %.11697.lcssa.i = phi <16 x float> [ %.01696.i, %bb.ag ], [ %.lcssa2215, %.preheader387.i.loopexit ] ; 3 uses
  %.11694.lcssa.i = phi <16 x float> [ %.01693.i, %bb.ag ], [ %.lcssa2214, %.preheader387.i.loopexit ] ; 3 uses
  %.01691.lcssa.i = phi ptr [ %.31182.i, %bb.ag ], [ %.lcssa2213, %.preheader387.i.loopexit ] ; 3 uses
  %.01689.lcssa.i = phi i32 [ 0, %bb.ag ], [ %i.amt, %.preheader387.i.loopexit ] ; 5 uses
  %i.blk = icmp slt i32 %.01689.lcssa.i, %8
  br i1 %i.blk, label %.lr.ph1045.i.preheader, label %._crit_edge1046.i

.lr.ph1045.i.preheader:                           ; preds = %.preheader387.i
  %i.bll = sub i32 %8, %.01689.lcssa.i
  %.neg2665.a = add i32 %.01689.lcssa.i, 1
  %xtraiter2601 = and i32 %i.bll, 1
  %lcmp.mod2602.not = icmp eq i32 %xtraiter2601, 0
  br i1 %lcmp.mod2602.not, label %.lr.ph1045.i.prol.loopexit, label %.lr.ph1045.i.prol

.lr.ph1045.i.prol:                                ; preds = %.lr.ph1045.i.preheader
  %i.blm = load i32, ptr %.01691.lcssa.i, align 4, !tbaa !369
  %i.bln = insertelement <8 x i32> poison, i32 %i.blm, i64 0
  %i.blo = shufflevector <8 x i32> %i.bln, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.blp = bitcast <8 x i32> %i.blo to <16 x bfloat>
  %i.blq = fpext fast <16 x bfloat> %i.blp to <16 x float> ; 2 uses
  %i.blr = load <16 x bfloat>, ptr %.11705.lcssa.i, align 1, !tbaa !17
  %i.bls = fpext fast <16 x bfloat> %i.blr to <16 x float> ; 2 uses
  %i.blt = shufflevector <16 x float> %i.bls, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.blu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.blq, <16 x float> nofpclass(nan inf) %i.bls, <16 x float> nofpclass(nan inf) %.11697.lcssa.i) ; 2 uses
  %i.blv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.blq, <16 x float> nofpclass(nan inf) %i.blt, <16 x float> nofpclass(nan inf) %.11694.lcssa.i) ; 2 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %.01691.lcssa.i, i64 4
  %i.blx = getelementptr inbounds nuw i8, ptr %.11705.lcssa.i, i64 32 ; 2 uses
  %i.bly = add nuw nsw i32 %.01689.lcssa.i, 1
  br label %.lr.ph1045.i.prol.loopexit

.lr.ph1045.i.prol.loopexit:                       ; preds = %.lr.ph1045.i.prol, %.lr.ph1045.i.preheader
  %.lcssa2218.unr = phi <16 x float> [ poison, %.lr.ph1045.i.preheader ], [ %i.blu, %.lr.ph1045.i.prol ]
  %.lcssa2217.unr = phi <16 x float> [ poison, %.lr.ph1045.i.preheader ], [ %i.blv, %.lr.ph1045.i.prol ]
  %.lcssa2216.unr = phi ptr [ poison, %.lr.ph1045.i.preheader ], [ %i.blx, %.lr.ph1045.i.prol ]
  %.116901044.i.unr = phi i32 [ %.01689.lcssa.i, %.lr.ph1045.i.preheader ], [ %i.bly, %.lr.ph1045.i.prol ]
  %.116921043.i.unr = phi ptr [ %.01691.lcssa.i, %.lr.ph1045.i.preheader ], [ %i.blw, %.lr.ph1045.i.prol ]
  %.216951042.i.unr = phi <16 x float> [ %.11694.lcssa.i, %.lr.ph1045.i.preheader ], [ %i.blv, %.lr.ph1045.i.prol ]
  %.216981041.i.unr = phi <16 x float> [ %.11697.lcssa.i, %.lr.ph1045.i.preheader ], [ %i.blu, %.lr.ph1045.i.prol ]
  %.217061040.i.unr = phi ptr [ %.11705.lcssa.i, %.lr.ph1045.i.preheader ], [ %i.blx, %.lr.ph1045.i.prol ]
  %i.blz = icmp eq i32 %8, %.neg2665.a
  br i1 %i.blz, label %._crit_edge1046.i, label %.lr.ph1045.i

.lr.ph1034.i:                                     ; preds = %.lr.ph1034.i.preheader, %.lr.ph1034.i
  %.016911031.i = phi ptr [ %i.bna, %.lr.ph1034.i ], [ %.31182.i, %.lr.ph1034.i.preheader ] ; 3 uses
  %.116941030.i = phi <16 x float> [ %i.bmz, %.lr.ph1034.i ], [ %.01693.i, %.lr.ph1034.i.preheader ]
  %.116971029.i = phi <16 x float> [ %i.bmx, %.lr.ph1034.i ], [ %.01696.i, %.lr.ph1034.i.preheader ]
  %.117051028.i = phi ptr [ %i.bnb, %.lr.ph1034.i ], [ %.017041050.i, %.lr.ph1034.i.preheader ] ; 3 uses
  %niter2600 = phi i32 [ %niter2600.next.1, %.lr.ph1034.i ], [ 0, %.lr.ph1034.i.preheader ]
  %i.bma = load double, ptr %.016911031.i, align 8, !tbaa !367
  %i.bmb = insertelement <8 x double> poison, double %i.bma, i64 0
  %i.bmc = bitcast <8 x double> %i.bmb to <8 x i64>
  %i.bmd = shufflevector <8 x i64> %i.bmc, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bme = load <8 x i64>, ptr %.117051028.i, align 1, !tbaa !17 ; 2 uses
  %i.bmf = bitcast <8 x i64> %i.bme to <16 x i32>
  %i.bmg = shufflevector <16 x i32> %i.bmf, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bmh = bitcast <8 x i64> %i.bmd to <32 x bfloat> ; 2 uses
  %i.bmi = bitcast <8 x i64> %i.bme to <32 x bfloat>
  %i.bmj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.116971029.i, <32 x bfloat> nofpclass(nan inf) %i.bmh, <32 x bfloat> nofpclass(nan inf) %i.bmi)
  %i.bmk = bitcast <16 x i32> %i.bmg to <32 x bfloat>
  %i.bml = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.116941030.i, <32 x bfloat> nofpclass(nan inf) %i.bmh, <32 x bfloat> nofpclass(nan inf) %i.bmk)
  %i.bmm = getelementptr inbounds nuw i8, ptr %.016911031.i, i64 8
  %i.bmn = getelementptr inbounds nuw i8, ptr %.117051028.i, i64 64
  %i.bmo = load double, ptr %i.bmm, align 8, !tbaa !367
  %i.bmp = insertelement <8 x double> poison, double %i.bmo, i64 0
  %i.bmq = bitcast <8 x double> %i.bmp to <8 x i64>
  %i.bmr = shufflevector <8 x i64> %i.bmq, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bms = load <8 x i64>, ptr %i.bmn, align 1, !tbaa !17 ; 2 uses
  %i.bmt = bitcast <8 x i64> %i.bms to <16 x i32>
  %i.bmu = shufflevector <16 x i32> %i.bmt, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bmv = bitcast <8 x i64> %i.bmr to <32 x bfloat> ; 2 uses
  %i.bmw = bitcast <8 x i64> %i.bms to <32 x bfloat>
  %i.bmx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.bmj, <32 x bfloat> nofpclass(nan inf) %i.bmv, <32 x bfloat> nofpclass(nan inf) %i.bmw) ; 3 uses
  %i.bmy = bitcast <16 x i32> %i.bmu to <32 x bfloat>
  %i.bmz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.bml, <32 x bfloat> nofpclass(nan inf) %i.bmv, <32 x bfloat> nofpclass(nan inf) %i.bmy) ; 3 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %.016911031.i, i64 16 ; 3 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %.117051028.i, i64 128 ; 2 uses
  %niter2600.next.1 = add nuw nsw i32 %niter2600, 2 ; 2 uses
  %niter2600.ncmp.1.not = icmp eq i32 %niter2600.next.1, %unroll_iter2599
  br i1 %niter2600.ncmp.1.not, label %.preheader387.i.loopexit.unr-lcssa, label %.lr.ph1034.i, !llvm.loop !412

.lr.ph1045.i:                                     ; preds = %.lr.ph1045.i.prol.loopexit, %.lr.ph1045.i
  %.116901044.i = phi i32 [ %i.boa, %.lr.ph1045.i ], [ %.116901044.i.unr, %.lr.ph1045.i.prol.loopexit ]
  %.116921043.i = phi ptr [ %i.bny, %.lr.ph1045.i ], [ %.116921043.i.unr, %.lr.ph1045.i.prol.loopexit ] ; 3 uses
  %.216951042.i = phi <16 x float> [ %i.bnx, %.lr.ph1045.i ], [ %.216951042.i.unr, %.lr.ph1045.i.prol.loopexit ]
  %.216981041.i = phi <16 x float> [ %i.bnw, %.lr.ph1045.i ], [ %.216981041.i.unr, %.lr.ph1045.i.prol.loopexit ]
  %.217061040.i = phi ptr [ %i.bnz, %.lr.ph1045.i ], [ %.217061040.i.unr, %.lr.ph1045.i.prol.loopexit ] ; 3 uses
  %i.bnc = load i32, ptr %.116921043.i, align 4, !tbaa !369
  %i.bnd = insertelement <8 x i32> poison, i32 %i.bnc, i64 0
end_hunk_4
begin_hunk_5_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.dmg = bitcast <16 x i32> %i.dlr to <16 x float> ; 2 uses
  %i.dmh = bitcast <16 x i32> %i.dlv to <16 x float> ; 2 uses
  %wide.vec1986 = load <64 x i16>, ptr %next.gep1970.a, align 2, !tbaa !57 ; 4 uses
  %strided.vec1987.a = shufflevector <64 x i16> %wide.vec1986, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1988.a = shufflevector <64 x i16> %wide.vec1986, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1989.a = shufflevector <64 x i16> %wide.vec1986, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1990 = shufflevector <64 x i16> %wide.vec1986, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1991 = load <64 x i16>, ptr %next.gep1971.a, align 2, !tbaa !57 ; 4 uses
  %strided.vec1992.a = shufflevector <64 x i16> %wide.vec1991, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1993.a = shufflevector <64 x i16> %wide.vec1991, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1994.a = shufflevector <64 x i16> %wide.vec1991, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1995 = shufflevector <64 x i16> %wide.vec1991, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1996 = load <64 x i16>, ptr %next.gep1972.a, align 2, !tbaa !57 ; 4 uses
  %strided.vec1997.a = shufflevector <64 x i16> %wide.vec1996, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1998.a = shufflevector <64 x i16> %wide.vec1996, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1999.a = shufflevector <64 x i16> %wide.vec1996, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2000 = shufflevector <64 x i16> %wide.vec1996, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec2001 = load <64 x i16>, ptr %next.gep1973, align 2, !tbaa !57 ; 4 uses
  %strided.vec2002.a = shufflevector <64 x i16> %wide.vec2001, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec2003.a = shufflevector <64 x i16> %wide.vec2001, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec2004.a = shufflevector <64 x i16> %wide.vec2001, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec2005 = shufflevector <64 x i16> %wide.vec2001, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.dmi = zext <16 x i16> %strided.vec1987.a to <16 x i32>
  %i.dmj = zext <16 x i16> %strided.vec1992.a to <16 x i32>
  %i.dmk = zext <16 x i16> %strided.vec1997.a to <16 x i32>
  %i.dml = zext <16 x i16> %strided.vec2002.a to <16 x i32>
  %i.dmm = shl nuw <16 x i32> %i.dmi, splat (i32 16)
  %i.dmn = shl nuw <16 x i32> %i.dmj, splat (i32 16)
  %i.dmo = shl nuw <16 x i32> %i.dmk, splat (i32 16)
  %i.dmp = shl nuw <16 x i32> %i.dml, splat (i32 16)
  %i.dmq = bitcast <16 x i32> %i.dmm to <16 x float>
  %i.dmr = bitcast <16 x i32> %i.dmn to <16 x float>
  %i.dms = bitcast <16 x i32> %i.dmo to <16 x float>
  %i.dmt = bitcast <16 x i32> %i.dmp to <16 x float>
  %i.dmu = zext <16 x i16> %strided.vec1988.a to <16 x i32>
  %i.dmv = zext <16 x i16> %strided.vec1993.a to <16 x i32>
  %i.dmw = zext <16 x i16> %strided.vec1998.a to <16 x i32>
  %i.dmx = zext <16 x i16> %strided.vec2003.a to <16 x i32>
  %i.dmy = shl nuw <16 x i32> %i.dmu, splat (i32 16)
  %i.dmz = shl nuw <16 x i32> %i.dmv, splat (i32 16)
  %i.dna = shl nuw <16 x i32> %i.dmw, splat (i32 16)
  %i.dnb = shl nuw <16 x i32> %i.dmx, splat (i32 16)
  %i.dnc = bitcast <16 x i32> %i.dmy to <16 x float>
  %i.dnd = bitcast <16 x i32> %i.dmz to <16 x float>
  %i.dne = bitcast <16 x i32> %i.dna to <16 x float>
  %i.dnf = bitcast <16 x i32> %i.dnb to <16 x float>
  %i.dng = zext <16 x i16> %strided.vec1989.a to <16 x i32>
  %i.dnh = zext <16 x i16> %strided.vec1994.a to <16 x i32>
  %i.dni = zext <16 x i16> %strided.vec1999.a to <16 x i32>
  %i.dnj = zext <16 x i16> %strided.vec2004.a to <16 x i32>
  %i.dnk = shl nuw <16 x i32> %i.dng, splat (i32 16)
  %i.dnl = shl nuw <16 x i32> %i.dnh, splat (i32 16)
  %i.dnm = shl nuw <16 x i32> %i.dni, splat (i32 16)
  %i.dnn = shl nuw <16 x i32> %i.dnj, splat (i32 16)
  %i.dno = bitcast <16 x i32> %i.dnk to <16 x float>
  %i.dnp = bitcast <16 x i32> %i.dnl to <16 x float>
  %i.dnq = bitcast <16 x i32> %i.dnm to <16 x float>
  %i.dnr = bitcast <16 x i32> %i.dnn to <16 x float>
  %i.dns = zext <16 x i16> %strided.vec1990 to <16 x i32>
  %i.dnt = zext <16 x i16> %strided.vec1995 to <16 x i32>
  %i.dnu = zext <16 x i16> %strided.vec2000 to <16 x i32>
  %i.dnv = zext <16 x i16> %strided.vec2005 to <16 x i32>
  %i.dnw = shl nuw <16 x i32> %i.dns, splat (i32 16)
  %i.dnx = shl nuw <16 x i32> %i.dnt, splat (i32 16)
  %i.dny = shl nuw <16 x i32> %i.dnu, splat (i32 16)
  %i.dnz = shl nuw <16 x i32> %i.dnv, splat (i32 16)
  %i.doa = bitcast <16 x i32> %i.dnw to <16 x float>
  %i.dob = bitcast <16 x i32> %i.dnx to <16 x float>
  %i.doc = bitcast <16 x i32> %i.dny to <16 x float>
  %i.dod = bitcast <16 x i32> %i.dnz to <16 x float>
  %i.doe = fmul fast <16 x float> %i.dmq, %i.dma
  %i.dof = fmul fast <16 x float> %i.dmr, %i.dmb
  %i.dog = fmul fast <16 x float> %i.dms, %i.dmc
  %i.doh = fmul fast <16 x float> %i.dmt, %i.dmd
  %i.doi = fmul fast <16 x float> %i.dnc, %i.dme
  %i.doj = fmul fast <16 x float> %i.dnd, %i.dmf
  %i.dok = fmul fast <16 x float> %i.dne, %i.dmg
  %i.dol = fmul fast <16 x float> %i.dnf, %i.dmh
  %i.dom = fadd fast <16 x float> %vec.phi1962.a, %i.doe
  %i.don = fadd fast <16 x float> %vec.phi1963.a, %i.dof
  %i.doo = fadd fast <16 x float> %vec.phi1964.a, %i.dog
  %i.dop = fadd fast <16 x float> %vec.phi1965, %i.doh
  %i.doq = fadd fast <16 x float> %i.dom, %i.doi  ; 2 uses
  %i.dor = fadd fast <16 x float> %i.don, %i.doj  ; 2 uses
  %i.dos = fadd fast <16 x float> %i.doo, %i.dok  ; 2 uses
  %i.dot = fadd fast <16 x float> %i.dop, %i.dol  ; 2 uses
  %i.dou = fmul fast <16 x float> %i.dno, %i.dma
  %i.dov = fmul fast <16 x float> %i.dnp, %i.dmb
  %i.dow = fmul fast <16 x float> %i.dnq, %i.dmc
  %i.dox = fmul fast <16 x float> %i.dnr, %i.dmd
  %i.doy = fmul fast <16 x float> %i.doa, %i.dme
  %i.doz = fmul fast <16 x float> %i.dob, %i.dmf
  %i.dpa = fmul fast <16 x float> %i.doc, %i.dmg
  %i.dpb = fmul fast <16 x float> %i.dod, %i.dmh
  %i.dpc = fadd fast <16 x float> %vec.phi1958.a, %i.dou
  %i.dpd = fadd fast <16 x float> %vec.phi1959.a, %i.dov
  %i.dpe = fadd fast <16 x float> %vec.phi1960.a, %i.dow
  %i.dpf = fadd fast <16 x float> %vec.phi1961.a, %i.dox
  %i.dpg = fadd fast <16 x float> %i.dpc, %i.doy  ; 2 uses
  %i.dph = fadd fast <16 x float> %i.dpd, %i.doz  ; 2 uses
  %i.dpi = fadd fast <16 x float> %i.dpe, %i.dpa  ; 2 uses
  %i.dpj = fadd fast <16 x float> %i.dpf, %i.dpb  ; 2 uses
  %index.next2006 = add nuw i64 %index1957, 64    ; 2 uses
  %i.dpk = icmp eq i64 %index.next2006, %n.vec1955
  br i1 %i.dpk, label %middle.block2007, label %vector.body1956, !llvm.loop !453

middle.block2007:                                 ; preds = %vector.body1956
  %bin.rdx2008.a = fadd fast <16 x float> %i.dph, %i.dpg
  %bin.rdx2009.a = fadd fast <16 x float> %i.dpi, %bin.rdx2008.a
  %bin.rdx2010.a = fadd fast <16 x float> %i.dpj, %bin.rdx2009.a
  %i.dpl = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx2010.a) ; 2 uses
  %bin.rdx2011.a = fadd fast <16 x float> %i.dor, %i.doq
  %bin.rdx2012.a = fadd fast <16 x float> %i.dos, %bin.rdx2011.a
  %bin.rdx2013 = fadd fast <16 x float> %i.dot, %bin.rdx2012.a
  %i.dpm = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx2013) ; 2 uses
  %i.dpn = insertelement <2 x float> poison, float %i.dpm, i64 0
  %i.dpo = insertelement <2 x float> %i.dpn, float %i.dpl, i64 1 ; 2 uses
  br i1 %cmp.n2014, label %.preheader373.loopexit.i, label %vec.epilog.iter.check2022

vec.epilog.iter.check2022:                        ; preds = %middle.block2007
  br i1 %min.epilog.iters.check2023, label %.lr.ph1318.i.preheader, label %vec.epilog.ph2024, !prof !150

vec.epilog.ph2024:                                ; preds = %vector.main.loop.iter.check1952, %vec.epilog.iter.check2022
  %vec.epilog.resume.val2015 = phi i64 [ %n.vec1955, %vec.epilog.iter.check2022 ], [ 0, %vector.main.loop.iter.check1952 ]
  %bc.merge.rdx2017.a = phi float [ %i.dpl, %vec.epilog.iter.check2022 ], [ %i.dkt, %vector.main.loop.iter.check1952 ]
  %bc.merge.rdx2018 = phi float [ %i.dpm, %vec.epilog.iter.check2022 ], [ %i.dks, %vector.main.loop.iter.check1952 ]
  %i.dpp = getelementptr i8, ptr %.1215541359.i, i64 %i.bkj
  %i.dpq = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx2017.a, i64 0
  %i.dpr = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx2018, i64 0
  br label %vec.epilog.vector.body2026

vec.epilog.vector.body2026:                       ; preds = %vec.epilog.vector.body2026, %vec.epilog.ph2024
  %index2027 = phi i64 [ %vec.epilog.resume.val2015, %vec.epilog.ph2024 ], [ %index.next2040, %vec.epilog.vector.body2026 ] ; 3 uses
  %vec.phi2028.a = phi <8 x float> [ %i.dpq, %vec.epilog.ph2024 ], [ %i.dqu, %vec.epilog.vector.body2026 ]
  %vec.phi2029 = phi <8 x float> [ %i.dpr, %vec.epilog.ph2024 ], [ %i.dqq, %vec.epilog.vector.body2026 ]
  %i.dps = shl i64 %index2027, 2
  %next.gep2030.a = getelementptr i8, ptr %.41409.i, i64 %i.dps
  %i.dpt = shl i64 %index2027, 3
  %next.gep2031 = getelementptr i8, ptr %.1215541359.i, i64 %i.dpt
  %wide.vec2032 = load <16 x i16>, ptr %next.gep2030.a, align 2, !tbaa !57
  %i.dpu = freeze <16 x i16> %wide.vec2032        ; 2 uses
  %i.dpv = bitcast <16 x i16> %i.dpu to <8 x i32>
  %i.dpw = bitcast <16 x i16> %i.dpu to <8 x i32>
  %i.dpx = and <8 x i32> %i.dpw, splat (i32 -65536)
  %i.dpy = shl <8 x i32> %i.dpv, splat (i32 16)
  %i.dpz = bitcast <8 x i32> %i.dpy to <8 x float> ; 2 uses
  %i.dqa = bitcast <8 x i32> %i.dpx to <8 x float> ; 2 uses
  %wide.vec2035 = load <32 x i16>, ptr %next.gep2031, align 2, !tbaa !57 ; 4 uses
  %strided.vec2036.a = shufflevector <32 x i16> %wide.vec2035, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec2037.a = shufflevector <32 x i16> %wide.vec2035, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec2038.a = shufflevector <32 x i16> %wide.vec2035, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec2039 = shufflevector <32 x i16> %wide.vec2035, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.dqb = zext <8 x i16> %strided.vec2036.a to <8 x i32>
  %i.dqc = shl nuw <8 x i32> %i.dqb, splat (i32 16)
  %i.dqd = bitcast <8 x i32> %i.dqc to <8 x float>
  %i.dqe = zext <8 x i16> %strided.vec2037.a to <8 x i32>
  %i.dqf = shl nuw <8 x i32> %i.dqe, splat (i32 16)
  %i.dqg = bitcast <8 x i32> %i.dqf to <8 x float>
  %i.dqh = zext <8 x i16> %strided.vec2038.a to <8 x i32>
  %i.dqi = shl nuw <8 x i32> %i.dqh, splat (i32 16)
  %i.dqj = bitcast <8 x i32> %i.dqi to <8 x float>
  %i.dqk = zext <8 x i16> %strided.vec2039 to <8 x i32>
  %i.dql = shl nuw <8 x i32> %i.dqk, splat (i32 16)
  %i.dqm = bitcast <8 x i32> %i.dql to <8 x float>
  %i.dqn = fmul fast <8 x float> %i.dqd, %i.dpz
  %i.dqo = fmul fast <8 x float> %i.dqg, %i.dqa
  %i.dqp = fadd fast <8 x float> %vec.phi2029, %i.dqn
  %i.dqq = fadd fast <8 x float> %i.dqp, %i.dqo   ; 2 uses
  %i.dqr = fmul fast <8 x float> %i.dqj, %i.dpz
  %i.dqs = fmul fast <8 x float> %i.dqm, %i.dqa
  %i.dqt = fadd fast <8 x float> %vec.phi2028.a, %i.dqr
  %i.dqu = fadd fast <8 x float> %i.dqt, %i.dqs   ; 2 uses
  %index.next2040 = add nuw i64 %index2027, 8     ; 2 uses
  %i.dqv = icmp eq i64 %index.next2040, %n.vec2025
  br i1 %i.dqv, label %vec.epilog.middle.block2041, label %vec.epilog.vector.body2026, !llvm.loop !454

vec.epilog.middle.block2041:                      ; preds = %vec.epilog.vector.body2026
  %i.dqw = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dqu)
  %i.dqx = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dqq)
  %i.dqy = insertelement <2 x float> poison, float %i.dqx, i64 0
  %i.dqz = insertelement <2 x float> %i.dqy, float %i.dqw, i64 1 ; 2 uses
  br i1 %cmp.n2042, label %.preheader373.loopexit.i, label %.lr.ph1318.i.preheader

.lr.ph1318.i.preheader:                           ; preds = %iter.check2020, %vec.epilog.iter.check2022, %vec.epilog.middle.block2041
  %.014541316.i.ph = phi i32 [ 0, %iter.check2020 ], [ %i.bkd, %vec.epilog.iter.check2022 ], [ %i.bkh, %vec.epilog.middle.block2041 ]
  %.014571315.i.ph = phi ptr [ %.41409.i, %iter.check2020 ], [ %i.dez, %vec.epilog.iter.check2022 ], [ %i.dfa, %vec.epilog.middle.block2041 ]
  %.1315551312.i.ph = phi ptr [ %.1215541359.i, %iter.check2020 ], [ %i.dku, %vec.epilog.iter.check2022 ], [ %i.dpp, %vec.epilog.middle.block2041 ]
  %.ph2092 = phi <2 x float> [ %i.dkr, %iter.check2020 ], [ %i.dpo, %vec.epilog.iter.check2022 ], [ %i.dqz, %vec.epilog.middle.block2041 ]
  br label %.lr.ph1318.i

.preheader373.loopexit.i:                         ; preds = %.lr.ph1318.i, %vec.epilog.middle.block2041, %middle.block2007
  %.lcssa1003 = phi ptr [ %i.dfa, %vec.epilog.middle.block2041 ], [ %i.dez, %middle.block2007 ], [ %i.dyl, %.lr.ph1318.i ]
  %i.dra = phi <2 x float> [ %i.dqz, %vec.epilog.middle.block2041 ], [ %i.dpo, %middle.block2007 ], [ %i.dyk, %.lr.ph1318.i ]
  %i.drb = getelementptr i8, ptr %.1215541359.i, i64 %i.bjn
  %scevgep1827.i = getelementptr i8, ptr %i.drb, i64 8
  br label %.preheader373.i

.preheader373.i:                                  ; preds = %.preheader373.loopexit.i, %bb.aw
  %.131555.lcssa.i = phi ptr [ %.1215541359.i, %bb.aw ], [ %scevgep1827.i, %.preheader373.loopexit.i ] ; 6 uses
  %.01457.lcssa.i = phi ptr [ %.41409.i, %bb.aw ], [ %.lcssa1003, %.preheader373.loopexit.i ] ; 6 uses
  %.01454.lcssa.i = phi i32 [ 0, %bb.aw ], [ %i.bjh, %.preheader373.loopexit.i ] ; 7 uses
  %i.drc = phi <2 x float> [ %i.dkr, %bb.aw ], [ %i.dra, %.preheader373.loopexit.i ] ; 2 uses
  %i.drd = add nuw nsw i32 %.01454.lcssa.i, 3
  %i.dre = icmp slt i32 %i.drd, %8
  br i1 %i.dre, label %iter.check1905, label %._crit_edge1336.i

iter.check1905:                                   ; preds = %.preheader373.i
  %9 = add i32 %.01454.lcssa.i, 7
  %smax1859 = tail call i32 @llvm.smax.i32(i32 %8, i32 %9)
  %10 = add i32 %smax1859, -4
  %i.drf = sub i32 %10, %.01454.lcssa.i           ; 3 uses
  %i.drg = lshr i32 %i.drf, 2
  %narrow = add nuw nsw i32 %i.drg, 1
  %i.drh = zext nneg i32 %narrow to i64           ; 5 uses
  %min.iters.check1860 = icmp ult i32 %i.drf, 12
  br i1 %min.iters.check1860, label %.lr.ph1335.i.preheader, label %vector.main.loop.iter.check1861

vector.main.loop.iter.check1861:                  ; preds = %iter.check1905
  %min.iters.check1862 = icmp ult i32 %i.drf, 60
  br i1 %min.iters.check1862, label %vec.epilog.ph1909, label %vector.ph1863

vector.ph1863:                                    ; preds = %vector.main.loop.iter.check1861
  %i.dri = and i64 %i.drh, 12
  %n.vec1864 = and i64 %i.drh, 2147483632         ; 6 uses
  %i.drj = trunc nuw nsw i64 %n.vec1864 to i32
  %i.drk = shl i32 %i.drj, 2
  %i.drl = add i32 %.01454.lcssa.i, %i.drk        ; 2 uses
  %i.drm = shl nuw nsw i64 %n.vec1864, 3
  %i.drn = getelementptr i8, ptr %.01457.lcssa.i, i64 %i.drm ; 2 uses
  %i.dro = shl nuw nsw i64 %n.vec1864, 4
  %i.drp = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.dro ; 2 uses
  br label %vector.body1865

vector.body1865:                                  ; preds = %vector.body1865, %vector.ph1863
  %index1866 = phi i64 [ 0, %vector.ph1863 ], [ %index.next1891, %vector.body1865 ] ; 3 uses
  %vec.phi1867.a = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dtr, %vector.body1865 ]
  %vec.phi1868.a = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dth, %vector.body1865 ]
  %vec.phi1869.a = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dsx, %vector.body1865 ]
  %vec.phi1870.a = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dsn, %vector.body1865 ]
  %vec.phi1871.a = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dtm, %vector.body1865 ]
  %vec.phi1872.a = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dtc, %vector.body1865 ]
  %vec.phi1873.a = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dss, %vector.body1865 ]
  %vec.phi1874 = phi <16 x float> [ zeroinitializer, %vector.ph1863 ], [ %i.dsi, %vector.body1865 ]
  %i.drq = shl i64 %index1866, 3
  %next.gep1875.a = getelementptr i8, ptr %.01457.lcssa.i, i64 %i.drq
  %i.drr = shl i64 %index1866, 4
  %next.gep1876 = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.drr
  %wide.vec1877 = load <64 x i16>, ptr %next.gep1875.a, align 2, !tbaa !57 ; 4 uses
  %strided.vec1878.a = shufflevector <64 x i16> %wide.vec1877, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1879.a = shufflevector <64 x i16> %wide.vec1877, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1880.a = shufflevector <64 x i16> %wide.vec1877, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1881 = shufflevector <64 x i16> %wide.vec1877, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.drs = zext <16 x i16> %strided.vec1878.a to <16 x i32>
  %i.drt = shl nuw <16 x i32> %i.drs, splat (i32 16)
  %i.dru = bitcast <16 x i32> %i.drt to <16 x float> ; 2 uses
  %i.drv = zext <16 x i16> %strided.vec1879.a to <16 x i32>
  %i.drw = shl nuw <16 x i32> %i.drv, splat (i32 16)
  %i.drx = bitcast <16 x i32> %i.drw to <16 x float> ; 2 uses
  %i.dry = zext <16 x i16> %strided.vec1880.a to <16 x i32>
  %i.drz = shl nuw <16 x i32> %i.dry, splat (i32 16)
  %i.dsa = bitcast <16 x i32> %i.drz to <16 x float> ; 2 uses
  %i.dsb = zext <16 x i16> %strided.vec1881 to <16 x i32>
  %i.dsc = shl nuw <16 x i32> %i.dsb, splat (i32 16)
  %i.dsd = bitcast <16 x i32> %i.dsc to <16 x float> ; 2 uses
  %wide.vec1882 = load <128 x i16>, ptr %next.gep1876, align 2, !tbaa !57 ; 8 uses
  %strided.vec1883.a = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  %strided.vec1884.a = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 65, i32 73, i32 81, i32 89, i32 97, i32 105, i32 113, i32 121>
  %strided.vec1885.a = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 66, i32 74, i32 82, i32 90, i32 98, i32 106, i32 114, i32 122>
  %strided.vec1886.a = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 67, i32 75, i32 83, i32 91, i32 99, i32 107, i32 115, i32 123>
  %strided.vec1887.a = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 68, i32 76, i32 84, i32 92, i32 100, i32 108, i32 116, i32 124>
  %strided.vec1888.a = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 69, i32 77, i32 85, i32 93, i32 101, i32 109, i32 117, i32 125>
  %strided.vec1889.a = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 70, i32 78, i32 86, i32 94, i32 102, i32 110, i32 118, i32 126>
  %strided.vec1890 = shufflevector <128 x i16> %wide.vec1882, <128 x i16> poison, <16 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63, i32 71, i32 79, i32 87, i32 95, i32 103, i32 111, i32 119, i32 127>
  %i.dse = zext <16 x i16> %strided.vec1883.a to <16 x i32>
  %i.dsf = shl nuw <16 x i32> %i.dse, splat (i32 16)
  %i.dsg = bitcast <16 x i32> %i.dsf to <16 x float>
  %i.dsh = fmul fast <16 x float> %i.dsg, %i.dru
  %i.dsi = fadd fast <16 x float> %i.dsh, %vec.phi1874 ; 2 uses
  %i.dsj = zext <16 x i16> %strided.vec1884.a to <16 x i32>
  %i.dsk = shl nuw <16 x i32> %i.dsj, splat (i32 16)
  %i.dsl = bitcast <16 x i32> %i.dsk to <16 x float>
  %i.dsm = fmul fast <16 x float> %i.dsl, %i.dru
  %i.dsn = fadd fast <16 x float> %i.dsm, %vec.phi1870.a ; 2 uses
  %i.dso = zext <16 x i16> %strided.vec1885.a to <16 x i32>
  %i.dsp = shl nuw <16 x i32> %i.dso, splat (i32 16)
  %i.dsq = bitcast <16 x i32> %i.dsp to <16 x float>
  %i.dsr = fmul fast <16 x float> %i.dsq, %i.drx
  %i.dss = fadd fast <16 x float> %i.dsr, %vec.phi1873.a ; 2 uses
  %i.dst = zext <16 x i16> %strided.vec1886.a to <16 x i32>
  %i.dsu = shl nuw <16 x i32> %i.dst, splat (i32 16)
  %i.dsv = bitcast <16 x i32> %i.dsu to <16 x float>
  %i.dsw = fmul fast <16 x float> %i.dsv, %i.drx
  %i.dsx = fadd fast <16 x float> %i.dsw, %vec.phi1869.a ; 2 uses
  %i.dsy = zext <16 x i16> %strided.vec1887.a to <16 x i32>
  %i.dsz = shl nuw <16 x i32> %i.dsy, splat (i32 16)
  %i.dta = bitcast <16 x i32> %i.dsz to <16 x float>
  %i.dtb = fmul fast <16 x float> %i.dta, %i.dsa
  %i.dtc = fadd fast <16 x float> %i.dtb, %vec.phi1872.a ; 2 uses
  %i.dtd = zext <16 x i16> %strided.vec1888.a to <16 x i32>
  %i.dte = shl nuw <16 x i32> %i.dtd, splat (i32 16)
  %i.dtf = bitcast <16 x i32> %i.dte to <16 x float>
  %i.dtg = fmul fast <16 x float> %i.dtf, %i.dsa
  %i.dth = fadd fast <16 x float> %i.dtg, %vec.phi1868.a ; 2 uses
  %i.dti = zext <16 x i16> %strided.vec1889.a to <16 x i32>
  %i.dtj = shl nuw <16 x i32> %i.dti, splat (i32 16)
  %i.dtk = bitcast <16 x i32> %i.dtj to <16 x float>
  %i.dtl = fmul fast <16 x float> %i.dtk, %i.dsd
  %i.dtm = fadd fast <16 x float> %i.dtl, %vec.phi1871.a ; 2 uses
  %i.dtn = zext <16 x i16> %strided.vec1890 to <16 x i32>
  %i.dto = shl nuw <16 x i32> %i.dtn, splat (i32 16)
  %i.dtp = bitcast <16 x i32> %i.dto to <16 x float>
  %i.dtq = fmul fast <16 x float> %i.dtp, %i.dsd
  %i.dtr = fadd fast <16 x float> %i.dtq, %vec.phi1867.a ; 2 uses
  %index.next1891 = add nuw i64 %index1866, 16    ; 2 uses
  %i.dts = icmp eq i64 %index.next1891, %n.vec1864
  br i1 %i.dts, label %middle.block1892, label %vector.body1865, !llvm.loop !455

middle.block1892:                                 ; preds = %vector.body1865
  %i.dtt = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dtr) ; 2 uses
  %i.dtu = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dth) ; 2 uses
  %i.dtv = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dsx) ; 2 uses
  %i.dtw = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dsn) ; 2 uses
  %i.dtx = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dtm) ; 2 uses
  %i.dty = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dtc) ; 2 uses
  %i.dtz = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dss) ; 2 uses
  %i.dua = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.dsi) ; 2 uses
  %cmp.n1893 = icmp eq i64 %n.vec1864, %i.drh
  %i.dub = insertelement <2 x float> poison, float %i.dua, i64 0
  %i.duc = insertelement <2 x float> %i.dub, float %i.dtw, i64 1 ; 2 uses
  %i.dud = insertelement <2 x float> poison, float %i.dtz, i64 0
  %i.due = insertelement <2 x float> %i.dud, float %i.dtv, i64 1 ; 2 uses
  %i.duf = insertelement <2 x float> poison, float %i.dty, i64 0
  %i.dug = insertelement <2 x float> %i.duf, float %i.dtu, i64 1 ; 2 uses
  %i.duh = insertelement <2 x float> poison, float %i.dtx, i64 0
  %i.dui = insertelement <2 x float> %i.duh, float %i.dtt, i64 1 ; 2 uses
  br i1 %cmp.n1893, label %._crit_edge1336.loopexit.i, label %vec.epilog.iter.check1907

vec.epilog.iter.check1907:                        ; preds = %middle.block1892
  %min.epilog.iters.check1908 = icmp eq i64 %i.dri, 0
  br i1 %min.epilog.iters.check1908, label %.lr.ph1335.i.preheader, label %vec.epilog.ph1909, !prof !456

vec.epilog.ph1909:                                ; preds = %vector.main.loop.iter.check1861, %vec.epilog.iter.check1907
  %vec.epilog.resume.val1894 = phi i64 [ %n.vec1864, %vec.epilog.iter.check1907 ], [ 0, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1895.a = phi float [ %i.dtt, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1896.a = phi float [ %i.dtu, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1897.a = phi float [ %i.dtv, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1898.a = phi float [ %i.dtw, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1899.a = phi float [ %i.dtx, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1900.a = phi float [ %i.dty, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1901.a = phi float [ %i.dtz, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %bc.merge.rdx1902 = phi float [ %i.dua, %vec.epilog.iter.check1907 ], [ 0.000000e+00, %vector.main.loop.iter.check1861 ]
  %n.vec1910 = and i64 %i.drh, 2147483644         ; 5 uses
  %i.duj = trunc nuw nsw i64 %n.vec1910 to i32
  %i.duk = shl i32 %i.duj, 2
  %i.dul = add i32 %.01454.lcssa.i, %i.duk        ; 2 uses
  %i.dum = shl nuw nsw i64 %n.vec1910, 3
  %i.dun = getelementptr i8, ptr %.01457.lcssa.i, i64 %i.dum ; 2 uses
  %i.duo = shl nuw nsw i64 %n.vec1910, 4
  %i.dup = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.duo ; 2 uses
  %i.duq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1895.a, i64 0
  %i.dur = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1896.a, i64 0
  %i.dus = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1897.a, i64 0
  %i.dut = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1898.a, i64 0
  %i.duu = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1899.a, i64 0
  %i.duv = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1900.a, i64 0
  %i.duw = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1901.a, i64 0
  %i.dux = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1902, i64 0
  br label %vec.epilog.vector.body1911

vec.epilog.vector.body1911:                       ; preds = %vec.epilog.vector.body1911, %vec.epilog.ph1909
  %index1912 = phi i64 [ %vec.epilog.resume.val1894, %vec.epilog.ph1909 ], [ %index.next1937, %vec.epilog.vector.body1911 ] ; 3 uses
  %vec.phi1913.a = phi <4 x float> [ %i.duq, %vec.epilog.ph1909 ], [ %i.dwz, %vec.epilog.vector.body1911 ]
  %vec.phi1914.a = phi <4 x float> [ %i.dur, %vec.epilog.ph1909 ], [ %i.dwp, %vec.epilog.vector.body1911 ]
  %vec.phi1915.a = phi <4 x float> [ %i.dus, %vec.epilog.ph1909 ], [ %i.dwf, %vec.epilog.vector.body1911 ]
  %vec.phi1916.a = phi <4 x float> [ %i.dut, %vec.epilog.ph1909 ], [ %i.dvv, %vec.epilog.vector.body1911 ]
  %vec.phi1917.a = phi <4 x float> [ %i.duu, %vec.epilog.ph1909 ], [ %i.dwu, %vec.epilog.vector.body1911 ]
  %vec.phi1918.a = phi <4 x float> [ %i.duv, %vec.epilog.ph1909 ], [ %i.dwk, %vec.epilog.vector.body1911 ]
  %vec.phi1919.a = phi <4 x float> [ %i.duw, %vec.epilog.ph1909 ], [ %i.dwa, %vec.epilog.vector.body1911 ]
  %vec.phi1920 = phi <4 x float> [ %i.dux, %vec.epilog.ph1909 ], [ %i.dvq, %vec.epilog.vector.body1911 ]
  %i.duy = shl i64 %index1912, 3
  %next.gep1921.a = getelementptr i8, ptr %.01457.lcssa.i, i64 %i.duy
  %i.duz = shl i64 %index1912, 4
  %next.gep1922 = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.duz
  %wide.vec1923 = load <16 x i16>, ptr %next.gep1921.a, align 2, !tbaa !57 ; 4 uses
  %strided.vec1924.a = shufflevector <16 x i16> %wide.vec1923, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1925.a = shufflevector <16 x i16> %wide.vec1923, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1926.a = shufflevector <16 x i16> %wide.vec1923, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec1927 = shufflevector <16 x i16> %wide.vec1923, <16 x i16> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.dva = zext <4 x i16> %strided.vec1924.a to <4 x i32>
  %i.dvb = shl nuw <4 x i32> %i.dva, splat (i32 16)
  %i.dvc = bitcast <4 x i32> %i.dvb to <4 x float> ; 2 uses
  %i.dvd = zext <4 x i16> %strided.vec1925.a to <4 x i32>
  %i.dve = shl nuw <4 x i32> %i.dvd, splat (i32 16)
  %i.dvf = bitcast <4 x i32> %i.dve to <4 x float> ; 2 uses
  %i.dvg = zext <4 x i16> %strided.vec1926.a to <4 x i32>
  %i.dvh = shl nuw <4 x i32> %i.dvg, splat (i32 16)
  %i.dvi = bitcast <4 x i32> %i.dvh to <4 x float> ; 2 uses
  %i.dvj = zext <4 x i16> %strided.vec1927 to <4 x i32>
  %i.dvk = shl nuw <4 x i32> %i.dvj, splat (i32 16)
  %i.dvl = bitcast <4 x i32> %i.dvk to <4 x float> ; 2 uses
  %wide.vec1928 = load <32 x i16>, ptr %next.gep1922, align 2, !tbaa !57 ; 8 uses
  %strided.vec1929.a = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %strided.vec1930.a = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %strided.vec1931.a = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %strided.vec1932.a = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec1933.a = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec1934.a = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec1935.a = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec1936 = shufflevector <32 x i16> %wide.vec1928, <32 x i16> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.dvm = zext <4 x i16> %strided.vec1929.a to <4 x i32>
end_hunk_5
begin_hunk_6_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.efy = add nuw nsw i32 %.315401360.i, 2       ; 3 uses
  %i.efz = or disjoint i32 %i.efy, 1
  %i.ega = icmp slt i32 %i.efz, %6
  br i1 %i.ega, label %.lr.ph1362.i, label %.preheader377.i, !llvm.loop !463

.lr.ph1404.i:                                     ; preds = %.lr.ph1404.i.preheader, %._crit_edge1398.i
  %.291403.i = phi ptr [ %i.etz, %._crit_edge1398.i ], [ %.28.lcssa.i, %.lr.ph1404.i.preheader ] ; 3 uses
  %.415411402.i = phi i32 [ %i.eua, %._crit_edge1398.i ], [ %.31540.lcssa.i, %.lr.ph1404.i.preheader ]
  %.1615581401.i = phi ptr [ %.191561.lcssa.i, %._crit_edge1398.i ], [ %.121554.lcssa.i, %.lr.ph1404.i.preheader ] ; 10 uses
  br i1 %.not1791.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1404.i
  %i.egb = load float, ptr %.291403.i, align 4, !tbaa !421
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph1404.i
  %.01394.i = phi nsz float [ %i.egb, %bb.ax ], [ 0.000000e+00, %.lr.ph1404.i ] ; 4 uses
  br i1 %i.bjd, label %iter.check1761, label %.preheader.i

iter.check1761:                                   ; preds = %bb.ay
  br i1 %min.iters.check1708, label %.lr.ph1371.i.preheader, label %vector.main.loop.iter.check1709

vector.main.loop.iter.check1709:                  ; preds = %iter.check1761
  br i1 %min.iters.check1710, label %vec.epilog.ph1765, label %vector.ph1711

vector.ph1711:                                    ; preds = %vector.main.loop.iter.check1709
  %i.egc = getelementptr i8, ptr %.1615581401.i, i64 %i.bkn
  %i.egd = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.01394.i, i64 0
  br label %vector.body1713

vector.body1713:                                  ; preds = %vector.body1713, %vector.ph1711
  %index1714 = phi i64 [ 0, %vector.ph1711 ], [ %index.next1751, %vector.body1713 ] ; 2 uses
  %vec.phi1715 = phi <16 x float> [ %i.egd, %vector.ph1711 ], [ %i.eiy, %vector.body1713 ]
  %vec.phi1716 = phi <16 x float> [ zeroinitializer, %vector.ph1711 ], [ %i.eiz, %vector.body1713 ]
  %vec.phi1717 = phi <16 x float> [ zeroinitializer, %vector.ph1711 ], [ %i.eja, %vector.body1713 ]
  %vec.phi1718 = phi <16 x float> [ zeroinitializer, %vector.ph1711 ], [ %i.ejb, %vector.body1713 ]
  %i.ege = shl i64 %index1714, 2                  ; 5 uses
  %i.egf = or disjoint i64 %i.ege, 64             ; 2 uses
  %i.egg = or disjoint i64 %i.ege, 128            ; 2 uses
  %i.egh = or disjoint i64 %i.ege, 192            ; 2 uses
  %next.gep1719 = getelementptr i8, ptr %.41409.i, i64 %i.ege
  %next.gep1720 = getelementptr i8, ptr %.41409.i, i64 %i.egf
  %next.gep1721 = getelementptr i8, ptr %.41409.i, i64 %i.egg
  %next.gep1722 = getelementptr i8, ptr %.41409.i, i64 %i.egh
  %next.gep1723 = getelementptr i8, ptr %.1615581401.i, i64 %i.ege
  %next.gep1724 = getelementptr i8, ptr %.1615581401.i, i64 %i.egf
  %next.gep1725 = getelementptr i8, ptr %.1615581401.i, i64 %i.egg
  %next.gep1726 = getelementptr i8, ptr %.1615581401.i, i64 %i.egh
  %wide.vec1727 = load <32 x i16>, ptr %next.gep1719, align 2, !tbaa !57
  %i.egi = freeze <32 x i16> %wide.vec1727        ; 2 uses
  %i.egj = bitcast <32 x i16> %i.egi to <16 x i32>
  %i.egk = bitcast <32 x i16> %i.egi to <16 x i32>
  %i.egl = and <16 x i32> %i.egk, splat (i32 -65536)
  %wide.vec1730 = load <32 x i16>, ptr %next.gep1720, align 2, !tbaa !57
  %i.egm = freeze <32 x i16> %wide.vec1730        ; 2 uses
  %i.egn = bitcast <32 x i16> %i.egm to <16 x i32>
  %i.ego = bitcast <32 x i16> %i.egm to <16 x i32>
  %i.egp = and <16 x i32> %i.ego, splat (i32 -65536)
  %wide.vec1733 = load <32 x i16>, ptr %next.gep1721, align 2, !tbaa !57
  %i.egq = freeze <32 x i16> %wide.vec1733        ; 2 uses
  %i.egr = bitcast <32 x i16> %i.egq to <16 x i32>
  %i.egs = bitcast <32 x i16> %i.egq to <16 x i32>
  %i.egt = and <16 x i32> %i.egs, splat (i32 -65536)
  %wide.vec1736 = load <32 x i16>, ptr %next.gep1722, align 2, !tbaa !57
  %i.egu = freeze <32 x i16> %wide.vec1736        ; 2 uses
  %i.egv = bitcast <32 x i16> %i.egu to <16 x i32>
  %i.egw = bitcast <32 x i16> %i.egu to <16 x i32>
  %i.egx = and <16 x i32> %i.egw, splat (i32 -65536)
  %i.egy = shl <16 x i32> %i.egj, splat (i32 16)
  %i.egz = shl <16 x i32> %i.egn, splat (i32 16)
  %i.eha = shl <16 x i32> %i.egr, splat (i32 16)
  %i.ehb = shl <16 x i32> %i.egv, splat (i32 16)
  %i.ehc = bitcast <16 x i32> %i.egy to <16 x float>
  %i.ehd = bitcast <16 x i32> %i.egz to <16 x float>
  %i.ehe = bitcast <16 x i32> %i.eha to <16 x float>
  %i.ehf = bitcast <16 x i32> %i.ehb to <16 x float>
  %i.ehg = bitcast <16 x i32> %i.egl to <16 x float>
  %i.ehh = bitcast <16 x i32> %i.egp to <16 x float>
  %i.ehi = bitcast <16 x i32> %i.egt to <16 x float>
  %i.ehj = bitcast <16 x i32> %i.egx to <16 x float>
  %wide.vec1739 = load <32 x i16>, ptr %next.gep1723, align 2, !tbaa !57
  %i.ehk = freeze <32 x i16> %wide.vec1739        ; 2 uses
  %i.ehl = bitcast <32 x i16> %i.ehk to <16 x i32>
  %i.ehm = bitcast <32 x i16> %i.ehk to <16 x i32>
  %i.ehn = and <16 x i32> %i.ehm, splat (i32 -65536)
  %wide.vec1742 = load <32 x i16>, ptr %next.gep1724, align 2, !tbaa !57
  %i.eho = freeze <32 x i16> %wide.vec1742        ; 2 uses
  %i.ehp = bitcast <32 x i16> %i.eho to <16 x i32>
  %i.ehq = bitcast <32 x i16> %i.eho to <16 x i32>
  %i.ehr = and <16 x i32> %i.ehq, splat (i32 -65536)
  %wide.vec1745 = load <32 x i16>, ptr %next.gep1725, align 2, !tbaa !57
  %i.ehs = freeze <32 x i16> %wide.vec1745        ; 2 uses
  %i.eht = bitcast <32 x i16> %i.ehs to <16 x i32>
  %i.ehu = bitcast <32 x i16> %i.ehs to <16 x i32>
  %i.ehv = and <16 x i32> %i.ehu, splat (i32 -65536)
  %wide.vec1748 = load <32 x i16>, ptr %next.gep1726, align 2, !tbaa !57
  %i.ehw = freeze <32 x i16> %wide.vec1748        ; 2 uses
  %i.ehx = bitcast <32 x i16> %i.ehw to <16 x i32>
  %i.ehy = bitcast <32 x i16> %i.ehw to <16 x i32>
  %i.ehz = and <16 x i32> %i.ehy, splat (i32 -65536)
  %i.eia = shl <16 x i32> %i.ehl, splat (i32 16)
  %i.eib = shl <16 x i32> %i.ehp, splat (i32 16)
  %i.eic = shl <16 x i32> %i.eht, splat (i32 16)
  %i.eid = shl <16 x i32> %i.ehx, splat (i32 16)
  %i.eie = bitcast <16 x i32> %i.eia to <16 x float>
  %i.eif = bitcast <16 x i32> %i.eib to <16 x float>
  %i.eig = bitcast <16 x i32> %i.eic to <16 x float>
  %i.eih = bitcast <16 x i32> %i.eid to <16 x float>
  %i.eii = bitcast <16 x i32> %i.ehn to <16 x float>
  %i.eij = bitcast <16 x i32> %i.ehr to <16 x float>
  %i.eik = bitcast <16 x i32> %i.ehv to <16 x float>
  %i.eil = bitcast <16 x i32> %i.ehz to <16 x float>
  %i.eim = fmul fast <16 x float> %i.eie, %i.ehc
  %i.ein = fmul fast <16 x float> %i.eif, %i.ehd
  %i.eio = fmul fast <16 x float> %i.eig, %i.ehe
  %i.eip = fmul fast <16 x float> %i.eih, %i.ehf
  %i.eiq = fmul fast <16 x float> %i.eii, %i.ehg
  %i.eir = fmul fast <16 x float> %i.eij, %i.ehh
  %i.eis = fmul fast <16 x float> %i.eik, %i.ehi
  %i.eit = fmul fast <16 x float> %i.eil, %i.ehj
  %i.eiu = fadd fast <16 x float> %vec.phi1715, %i.eim
  %i.eiv = fadd fast <16 x float> %vec.phi1716, %i.ein
  %i.eiw = fadd fast <16 x float> %vec.phi1717, %i.eio
  %i.eix = fadd fast <16 x float> %vec.phi1718, %i.eip
  %i.eiy = fadd fast <16 x float> %i.eiu, %i.eiq  ; 2 uses
  %i.eiz = fadd fast <16 x float> %i.eiv, %i.eir  ; 2 uses
  %i.eja = fadd fast <16 x float> %i.eiw, %i.eis  ; 2 uses
  %i.ejb = fadd fast <16 x float> %i.eix, %i.eit  ; 2 uses
  %index.next1751 = add nuw i64 %index1714, 64    ; 2 uses
  %i.ejc = icmp eq i64 %index.next1751, %n.vec1712
  br i1 %i.ejc, label %middle.block1752, label %vector.body1713, !llvm.loop !464

middle.block1752:                                 ; preds = %vector.body1713
  %bin.rdx1753 = fadd fast <16 x float> %i.eiz, %i.eiy
  %bin.rdx1754 = fadd fast <16 x float> %i.eja, %bin.rdx1753
  %bin.rdx1755 = fadd fast <16 x float> %i.ejb, %bin.rdx1754
  %i.ejd = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1755) ; 3 uses
  br i1 %cmp.n1756, label %.preheader.loopexit.i, label %vec.epilog.iter.check1763

vec.epilog.iter.check1763:                        ; preds = %middle.block1752
  br i1 %min.epilog.iters.check1764, label %.lr.ph1371.i.preheader, label %vec.epilog.ph1765, !prof !150

vec.epilog.ph1765:                                ; preds = %vector.main.loop.iter.check1709, %vec.epilog.iter.check1763
  %vec.epilog.resume.val1757 = phi i64 [ %n.vec1712, %vec.epilog.iter.check1763 ], [ 0, %vector.main.loop.iter.check1709 ]
  %bc.merge.rdx1758 = phi float [ %i.ejd, %vec.epilog.iter.check1763 ], [ %.01394.i, %vector.main.loop.iter.check1709 ]
  %i.eje = getelementptr i8, ptr %.1615581401.i, i64 %i.bkq
  %i.ejf = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1758, i64 0
  br label %vec.epilog.vector.body1767

vec.epilog.vector.body1767:                       ; preds = %vec.epilog.vector.body1767, %vec.epilog.ph1765
  %index1768 = phi i64 [ %vec.epilog.resume.val1757, %vec.epilog.ph1765 ], [ %index.next1778, %vec.epilog.vector.body1767 ] ; 2 uses
  %vec.phi1769 = phi <8 x float> [ %i.ejf, %vec.epilog.ph1765 ], [ %i.ejy, %vec.epilog.vector.body1767 ]
  %i.ejg = shl i64 %index1768, 2                  ; 2 uses
  %next.gep1770 = getelementptr i8, ptr %.41409.i, i64 %i.ejg
  %next.gep1771 = getelementptr i8, ptr %.1615581401.i, i64 %i.ejg
  %wide.vec1772 = load <16 x i16>, ptr %next.gep1770, align 2, !tbaa !57
  %i.ejh = freeze <16 x i16> %wide.vec1772        ; 2 uses
  %i.eji = bitcast <16 x i16> %i.ejh to <8 x i32>
  %i.ejj = bitcast <16 x i16> %i.ejh to <8 x i32>
  %i.ejk = and <8 x i32> %i.ejj, splat (i32 -65536)
  %i.ejl = shl <8 x i32> %i.eji, splat (i32 16)
  %i.ejm = bitcast <8 x i32> %i.ejl to <8 x float>
  %i.ejn = bitcast <8 x i32> %i.ejk to <8 x float>
  %wide.vec1775 = load <16 x i16>, ptr %next.gep1771, align 2, !tbaa !57
  %i.ejo = freeze <16 x i16> %wide.vec1775        ; 2 uses
  %i.ejp = bitcast <16 x i16> %i.ejo to <8 x i32>
  %i.ejq = bitcast <16 x i16> %i.ejo to <8 x i32>
  %i.ejr = and <8 x i32> %i.ejq, splat (i32 -65536)
  %i.ejs = shl <8 x i32> %i.ejp, splat (i32 16)
  %i.ejt = bitcast <8 x i32> %i.ejs to <8 x float>
  %i.eju = bitcast <8 x i32> %i.ejr to <8 x float>
  %i.ejv = fmul fast <8 x float> %i.ejt, %i.ejm
  %i.ejw = fmul fast <8 x float> %i.eju, %i.ejn
  %i.ejx = fadd fast <8 x float> %vec.phi1769, %i.ejv
  %i.ejy = fadd fast <8 x float> %i.ejx, %i.ejw   ; 2 uses
  %index.next1778 = add nuw i64 %index1768, 8     ; 2 uses
  %i.ejz = icmp eq i64 %index.next1778, %n.vec1766
  br i1 %i.ejz, label %vec.epilog.middle.block1779, label %vec.epilog.vector.body1767, !llvm.loop !465

vec.epilog.middle.block1779:                      ; preds = %vec.epilog.vector.body1767
  %i.eka = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ejy) ; 2 uses
  br i1 %cmp.n1780, label %.preheader.loopexit.i, label %.lr.ph1371.i.preheader

.lr.ph1371.i.preheader:                           ; preds = %iter.check1761, %vec.epilog.iter.check1763, %vec.epilog.middle.block1779
  %.013911369.i.ph = phi i32 [ 0, %iter.check1761 ], [ %i.bkm, %vec.epilog.iter.check1763 ], [ %i.bkp, %vec.epilog.middle.block1779 ]
  %.113951368.i.ph = phi float [ %.01394.i, %iter.check1761 ], [ %i.ejd, %vec.epilog.iter.check1763 ], [ %i.eka, %vec.epilog.middle.block1779 ]
  %.013971367.i.ph = phi ptr [ %.41409.i, %iter.check1761 ], [ %i.dko, %vec.epilog.iter.check1763 ], [ %i.dkp, %vec.epilog.middle.block1779 ]
  %.1715591366.i.ph = phi ptr [ %.1615581401.i, %iter.check1761 ], [ %i.egc, %vec.epilog.iter.check1763 ], [ %i.eje, %vec.epilog.middle.block1779 ]
  br label %.lr.ph1371.i

.preheader.loopexit.i:                            ; preds = %.lr.ph1371.i, %vec.epilog.middle.block1779, %middle.block1752
  %.lcssa1022 = phi float [ %i.eka, %vec.epilog.middle.block1779 ], [ %i.ejd, %middle.block1752 ], [ %i.epx, %.lr.ph1371.i ]
  %i.ekb = getelementptr i8, ptr %.1615581401.i, i64 %i.bjo
  %scevgep1829.i = getelementptr i8, ptr %i.ekb, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ay
  %.171559.lcssa.i = phi ptr [ %.1615581401.i, %bb.ay ], [ %scevgep1829.i, %.preheader.loopexit.i ] ; 7 uses
  %.01397.lcssa.i = phi ptr [ %.41409.i, %bb.ay ], [ %indvars.iv633, %.preheader.loopexit.i ] ; 7 uses
  %.11395.lcssa.i = phi float [ %.01394.i, %bb.ay ], [ %.lcssa1022, %.preheader.loopexit.i ] ; 2 uses
  %.01391.lcssa.i = phi i32 [ 0, %bb.ay ], [ %i.bjh, %.preheader.loopexit.i ] ; 7 uses
  %i.ekc = add nuw nsw i32 %.01391.lcssa.i, 3
  %i.ekd = icmp slt i32 %i.ekc, %8
  br i1 %i.ekd, label %iter.check1674, label %._crit_edge1384.i

iter.check1674:                                   ; preds = %.preheader.i
  %11 = add i32 %.01391.lcssa.i, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %8, i32 %11)
  %12 = add i32 %smax, -4
  %i.eke = sub i32 %12, %.01391.lcssa.i           ; 3 uses
  %i.ekf = lshr i32 %i.eke, 2
  %narrow2048 = add nuw nsw i32 %i.ekf, 1
  %i.ekg = zext nneg i32 %narrow2048 to i64       ; 5 uses
  %min.iters.check1621 = icmp ult i32 %i.eke, 28
  br i1 %min.iters.check1621, label %.lr.ph1383.i.preheader, label %vector.main.loop.iter.check1622

vector.main.loop.iter.check1622:                  ; preds = %iter.check1674
  %min.iters.check1623 = icmp ult i32 %i.eke, 124
  br i1 %min.iters.check1623, label %vec.epilog.ph1678, label %vector.ph1624

vector.ph1624:                                    ; preds = %vector.main.loop.iter.check1622
  %i.ekh = and i64 %i.ekg, 24
  %n.vec1625 = and i64 %i.ekg, 2147483616         ; 5 uses
  %i.eki = trunc nuw nsw i64 %n.vec1625 to i32
  %i.ekj = shl i32 %i.eki, 2
  %i.ekk = add i32 %.01391.lcssa.i, %i.ekj        ; 2 uses
  %i.ekl = shl nuw nsw i64 %n.vec1625, 3          ; 2 uses
  %i.ekm = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.ekl ; 2 uses
  %i.ekn = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.ekl ; 2 uses
  br label %vector.body1626

vector.body1626:                                  ; preds = %vector.body1626, %vector.ph1624
  %index1627 = phi i64 [ 0, %vector.ph1624 ], [ %index.next1660, %vector.body1626 ] ; 2 uses
  %vec.phi1628 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.ena, %vector.body1626 ]
  %vec.phi1629 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.enb, %vector.body1626 ]
  %vec.phi1630 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.emk, %vector.body1626 ]
  %vec.phi1631 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.eml, %vector.body1626 ]
  %vec.phi1632 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.elu, %vector.body1626 ]
  %vec.phi1633 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.elv, %vector.body1626 ]
  %vec.phi1634 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.ele, %vector.body1626 ]
  %vec.phi1635 = phi <16 x float> [ zeroinitializer, %vector.ph1624 ], [ %i.elf, %vector.body1626 ]
  %i.eko = shl i64 %index1627, 3                  ; 3 uses
  %i.ekp = or disjoint i64 %i.eko, 128            ; 2 uses
  %next.gep1636 = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.eko
  %next.gep1637 = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.ekp
  %next.gep1638 = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.eko
  %next.gep1639 = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.ekp
  %wide.vec1640 = load <64 x i16>, ptr %next.gep1636, align 2, !tbaa !57 ; 4 uses
  %strided.vec1641 = shufflevector <64 x i16> %wide.vec1640, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1642 = shufflevector <64 x i16> %wide.vec1640, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1643 = shufflevector <64 x i16> %wide.vec1640, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1644 = shufflevector <64 x i16> %wide.vec1640, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1645 = load <64 x i16>, ptr %next.gep1637, align 2, !tbaa !57 ; 4 uses
  %strided.vec1646 = shufflevector <64 x i16> %wide.vec1645, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1647 = shufflevector <64 x i16> %wide.vec1645, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1648 = shufflevector <64 x i16> %wide.vec1645, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1649 = shufflevector <64 x i16> %wide.vec1645, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.ekq = zext <16 x i16> %strided.vec1641 to <16 x i32>
  %i.ekr = zext <16 x i16> %strided.vec1646 to <16 x i32>
  %i.eks = shl nuw <16 x i32> %i.ekq, splat (i32 16)
  %i.ekt = shl nuw <16 x i32> %i.ekr, splat (i32 16)
  %i.eku = bitcast <16 x i32> %i.eks to <16 x float>
  %i.ekv = bitcast <16 x i32> %i.ekt to <16 x float>
  %wide.vec1650 = load <64 x i16>, ptr %next.gep1638, align 2, !tbaa !57 ; 4 uses
  %strided.vec1651 = shufflevector <64 x i16> %wide.vec1650, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1652 = shufflevector <64 x i16> %wide.vec1650, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1653 = shufflevector <64 x i16> %wide.vec1650, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1654 = shufflevector <64 x i16> %wide.vec1650, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1655 = load <64 x i16>, ptr %next.gep1639, align 2, !tbaa !57 ; 4 uses
  %strided.vec1656 = shufflevector <64 x i16> %wide.vec1655, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1657 = shufflevector <64 x i16> %wide.vec1655, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1658 = shufflevector <64 x i16> %wide.vec1655, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1659 = shufflevector <64 x i16> %wide.vec1655, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.ekw = zext <16 x i16> %strided.vec1651 to <16 x i32>
  %i.ekx = zext <16 x i16> %strided.vec1656 to <16 x i32>
  %i.eky = shl nuw <16 x i32> %i.ekw, splat (i32 16)
  %i.ekz = shl nuw <16 x i32> %i.ekx, splat (i32 16)
  %i.ela = bitcast <16 x i32> %i.eky to <16 x float>
  %i.elb = bitcast <16 x i32> %i.ekz to <16 x float>
  %i.elc = fmul fast <16 x float> %i.ela, %i.eku
  %i.eld = fmul fast <16 x float> %i.elb, %i.ekv
  %i.ele = fadd fast <16 x float> %i.elc, %vec.phi1634 ; 2 uses
  %i.elf = fadd fast <16 x float> %i.eld, %vec.phi1635 ; 2 uses
  %i.elg = zext <16 x i16> %strided.vec1642 to <16 x i32>
  %i.elh = zext <16 x i16> %strided.vec1647 to <16 x i32>
  %i.eli = shl nuw <16 x i32> %i.elg, splat (i32 16)
  %i.elj = shl nuw <16 x i32> %i.elh, splat (i32 16)
  %i.elk = bitcast <16 x i32> %i.eli to <16 x float>
  %i.ell = bitcast <16 x i32> %i.elj to <16 x float>
  %i.elm = zext <16 x i16> %strided.vec1652 to <16 x i32>
  %i.eln = zext <16 x i16> %strided.vec1657 to <16 x i32>
  %i.elo = shl nuw <16 x i32> %i.elm, splat (i32 16)
  %i.elp = shl nuw <16 x i32> %i.eln, splat (i32 16)
  %i.elq = bitcast <16 x i32> %i.elo to <16 x float>
  %i.elr = bitcast <16 x i32> %i.elp to <16 x float>
  %i.els = fmul fast <16 x float> %i.elq, %i.elk
  %i.elt = fmul fast <16 x float> %i.elr, %i.ell
  %i.elu = fadd fast <16 x float> %i.els, %vec.phi1632 ; 2 uses
  %i.elv = fadd fast <16 x float> %i.elt, %vec.phi1633 ; 2 uses
  %i.elw = zext <16 x i16> %strided.vec1643 to <16 x i32>
  %i.elx = zext <16 x i16> %strided.vec1648 to <16 x i32>
  %i.ely = shl nuw <16 x i32> %i.elw, splat (i32 16)
  %i.elz = shl nuw <16 x i32> %i.elx, splat (i32 16)
  %i.ema = bitcast <16 x i32> %i.ely to <16 x float>
  %i.emb = bitcast <16 x i32> %i.elz to <16 x float>
  %i.emc = zext <16 x i16> %strided.vec1653 to <16 x i32>
  %i.emd = zext <16 x i16> %strided.vec1658 to <16 x i32>
  %i.eme = shl nuw <16 x i32> %i.emc, splat (i32 16)
  %i.emf = shl nuw <16 x i32> %i.emd, splat (i32 16)
  %i.emg = bitcast <16 x i32> %i.eme to <16 x float>
  %i.emh = bitcast <16 x i32> %i.emf to <16 x float>
  %i.emi = fmul fast <16 x float> %i.emg, %i.ema
  %i.emj = fmul fast <16 x float> %i.emh, %i.emb
  %i.emk = fadd fast <16 x float> %i.emi, %vec.phi1630 ; 2 uses
  %i.eml = fadd fast <16 x float> %i.emj, %vec.phi1631 ; 2 uses
  %i.emm = zext <16 x i16> %strided.vec1644 to <16 x i32>
  %i.emn = zext <16 x i16> %strided.vec1649 to <16 x i32>
  %i.emo = shl nuw <16 x i32> %i.emm, splat (i32 16)
  %i.emp = shl nuw <16 x i32> %i.emn, splat (i32 16)
  %i.emq = bitcast <16 x i32> %i.emo to <16 x float>
  %i.emr = bitcast <16 x i32> %i.emp to <16 x float>
  %i.ems = zext <16 x i16> %strided.vec1654 to <16 x i32>
  %i.emt = zext <16 x i16> %strided.vec1659 to <16 x i32>
  %i.emu = shl nuw <16 x i32> %i.ems, splat (i32 16)
  %i.emv = shl nuw <16 x i32> %i.emt, splat (i32 16)
  %i.emw = bitcast <16 x i32> %i.emu to <16 x float>
  %i.emx = bitcast <16 x i32> %i.emv to <16 x float>
  %i.emy = fmul fast <16 x float> %i.emw, %i.emq
  %i.emz = fmul fast <16 x float> %i.emx, %i.emr
  %i.ena = fadd fast <16 x float> %i.emy, %vec.phi1628 ; 2 uses
  %i.enb = fadd fast <16 x float> %i.emz, %vec.phi1629 ; 2 uses
  %index.next1660 = add nuw i64 %index1627, 32    ; 2 uses
  %i.enc = icmp eq i64 %index.next1660, %n.vec1625
  br i1 %i.enc, label %middle.block1661, label %vector.body1626, !llvm.loop !466

middle.block1661:                                 ; preds = %vector.body1626
  %bin.rdx1662 = fadd fast <16 x float> %i.enb, %i.ena
  %i.end = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1662) ; 2 uses
  %bin.rdx1663 = fadd fast <16 x float> %i.eml, %i.emk
  %i.ene = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1663) ; 2 uses
  %bin.rdx1664 = fadd fast <16 x float> %i.elv, %i.elu
  %i.enf = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1664) ; 2 uses
  %bin.rdx1665 = fadd fast <16 x float> %i.elf, %i.ele
  %i.eng = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1665) ; 2 uses
  %cmp.n1666 = icmp eq i64 %n.vec1625, %i.ekg
  %i.enh = insertelement <4 x float> poison, float %i.eng, i64 0
  %i.eni = insertelement <4 x float> %i.enh, float %i.enf, i64 1
  %i.enj = insertelement <4 x float> %i.eni, float %i.ene, i64 2
  %i.enk = insertelement <4 x float> %i.enj, float %i.end, i64 3 ; 2 uses
  br i1 %cmp.n1666, label %._crit_edge1384.loopexit.i, label %vec.epilog.iter.check1676

vec.epilog.iter.check1676:                        ; preds = %middle.block1661
  %min.epilog.iters.check1677 = icmp eq i64 %i.ekh, 0
  br i1 %min.epilog.iters.check1677, label %.lr.ph1383.i.preheader, label %vec.epilog.ph1678, !prof !52

vec.epilog.ph1678:                                ; preds = %vector.main.loop.iter.check1622, %vec.epilog.iter.check1676
  %vec.epilog.resume.val1667 = phi i64 [ %n.vec1625, %vec.epilog.iter.check1676 ], [ 0, %vector.main.loop.iter.check1622 ]
  %bc.merge.rdx1668 = phi float [ %i.end, %vec.epilog.iter.check1676 ], [ 0.000000e+00, %vector.main.loop.iter.check1622 ]
  %bc.merge.rdx1669 = phi float [ %i.ene, %vec.epilog.iter.check1676 ], [ 0.000000e+00, %vector.main.loop.iter.check1622 ]
  %bc.merge.rdx1670 = phi float [ %i.enf, %vec.epilog.iter.check1676 ], [ 0.000000e+00, %vector.main.loop.iter.check1622 ]
  %bc.merge.rdx1671 = phi float [ %i.eng, %vec.epilog.iter.check1676 ], [ 0.000000e+00, %vector.main.loop.iter.check1622 ]
  %n.vec1679 = and i64 %i.ekg, 2147483640         ; 4 uses
  %i.enl = trunc nuw nsw i64 %n.vec1679 to i32
  %i.enm = shl i32 %i.enl, 2
  %i.enn = add i32 %.01391.lcssa.i, %i.enm        ; 2 uses
  %i.eno = shl nuw nsw i64 %n.vec1679, 3          ; 2 uses
  %i.enp = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.eno ; 2 uses
  %i.enq = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.eno ; 2 uses
  %i.enr = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1668, i64 0
  %i.ens = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1669, i64 0
  %i.ent = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1670, i64 0
  %i.enu = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1671, i64 0
  br label %vec.epilog.vector.body1680

vec.epilog.vector.body1680:                       ; preds = %vec.epilog.vector.body1680, %vec.epilog.ph1678
  %index1681 = phi i64 [ %vec.epilog.resume.val1667, %vec.epilog.ph1678 ], [ %index.next1698, %vec.epilog.vector.body1680 ] ; 2 uses
  %vec.phi1682 = phi <8 x float> [ %i.enr, %vec.epilog.ph1678 ], [ %i.epb, %vec.epilog.vector.body1680 ]
  %vec.phi1683 = phi <8 x float> [ %i.ens, %vec.epilog.ph1678 ], [ %i.eot, %vec.epilog.vector.body1680 ]
  %vec.phi1684 = phi <8 x float> [ %i.ent, %vec.epilog.ph1678 ], [ %i.eol, %vec.epilog.vector.body1680 ]
  %vec.phi1685 = phi <8 x float> [ %i.enu, %vec.epilog.ph1678 ], [ %i.eod, %vec.epilog.vector.body1680 ]
  %i.env = shl i64 %index1681, 3                  ; 2 uses
  %next.gep1686 = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.env
  %next.gep1687 = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.env
  %wide.vec1688 = load <32 x i16>, ptr %next.gep1686, align 2, !tbaa !57 ; 4 uses
  %strided.vec1689 = shufflevector <32 x i16> %wide.vec1688, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1690 = shufflevector <32 x i16> %wide.vec1688, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1691 = shufflevector <32 x i16> %wide.vec1688, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1692 = shufflevector <32 x i16> %wide.vec1688, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.enw = zext <8 x i16> %strided.vec1689 to <8 x i32>
  %i.enx = shl nuw <8 x i32> %i.enw, splat (i32 16)
  %i.eny = bitcast <8 x i32> %i.enx to <8 x float>
  %wide.vec1693 = load <32 x i16>, ptr %next.gep1687, align 2, !tbaa !57 ; 4 uses
  %strided.vec1694 = shufflevector <32 x i16> %wide.vec1693, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1695 = shufflevector <32 x i16> %wide.vec1693, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1696 = shufflevector <32 x i16> %wide.vec1693, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1697 = shufflevector <32 x i16> %wide.vec1693, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.enz = zext <8 x i16> %strided.vec1694 to <8 x i32>
  %i.eoa = shl nuw <8 x i32> %i.enz, splat (i32 16)
  %i.eob = bitcast <8 x i32> %i.eoa to <8 x float>
  %i.eoc = fmul fast <8 x float> %i.eob, %i.eny
  %i.eod = fadd fast <8 x float> %i.eoc, %vec.phi1685 ; 2 uses
  %i.eoe = zext <8 x i16> %strided.vec1690 to <8 x i32>
  %i.eof = shl nuw <8 x i32> %i.eoe, splat (i32 16)
  %i.eog = bitcast <8 x i32> %i.eof to <8 x float>
  %i.eoh = zext <8 x i16> %strided.vec1695 to <8 x i32>
  %i.eoi = shl nuw <8 x i32> %i.eoh, splat (i32 16)
  %i.eoj = bitcast <8 x i32> %i.eoi to <8 x float>
  %i.eok = fmul fast <8 x float> %i.eoj, %i.eog
  %i.eol = fadd fast <8 x float> %i.eok, %vec.phi1684 ; 2 uses
  %i.eom = zext <8 x i16> %strided.vec1691 to <8 x i32>
end_hunk_6
begin_hunk_7_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a

iter.check1601:                                   ; preds = %._crit_edge1384.i
  %i.eqv = xor i32 %.11392.lcssa.i, -1
  %i.eqw = add i32 %8, %i.eqv                     ; 3 uses
  %i.eqx = zext i32 %i.eqw to i64
  %i.eqy = add nuw nsw i64 %i.eqx, 1              ; 5 uses
  %min.iters.check1570 = icmp ult i32 %i.eqw, 7
  br i1 %min.iters.check1570, label %.lr.ph1397.i.preheader, label %vector.main.loop.iter.check1571

vector.main.loop.iter.check1571:                  ; preds = %iter.check1601
  %min.iters.check1572 = icmp ult i32 %i.eqw, 63
  br i1 %min.iters.check1572, label %vec.epilog.ph1605, label %vector.ph1573

vector.ph1573:                                    ; preds = %vector.main.loop.iter.check1571
  %i.eqz = and i64 %i.eqy, 56
  %n.vec1574 = and i64 %i.eqy, 8589934528         ; 5 uses
  %i.era = trunc i64 %n.vec1574 to i32
  %i.erb = add i32 %.11392.lcssa.i, %i.era
  %i.erc = shl nuw nsw i64 %n.vec1574, 1          ; 2 uses
  %i.erd = getelementptr i8, ptr %.11398.lcssa.i, i64 %i.erc
  %i.ere = getelementptr i8, ptr %.181560.lcssa.i, i64 %i.erc ; 2 uses
  %i.erf = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.01379.lcssa.i, i64 0
  br label %vector.body1575

vector.body1575:                                  ; preds = %vector.body1575, %vector.ph1573
  %index1576 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1591, %vector.body1575 ] ; 2 uses
  %vec.phi1577 = phi <16 x float> [ %i.erf, %vector.ph1573 ], [ %i.esp, %vector.body1575 ]
  %vec.phi1578 = phi <16 x float> [ zeroinitializer, %vector.ph1573 ], [ %i.esq, %vector.body1575 ]
  %vec.phi1579 = phi <16 x float> [ zeroinitializer, %vector.ph1573 ], [ %i.esr, %vector.body1575 ]
  %vec.phi1580 = phi <16 x float> [ zeroinitializer, %vector.ph1573 ], [ %i.ess, %vector.body1575 ]
  %i.erg = shl i64 %index1576, 1                  ; 2 uses
  %next.gep1581 = getelementptr i8, ptr %.11398.lcssa.i, i64 %i.erg ; 4 uses
  %next.gep1582 = getelementptr i8, ptr %.181560.lcssa.i, i64 %i.erg ; 4 uses
  %i.erh = getelementptr i8, ptr %next.gep1581, i64 32
  %i.eri = getelementptr i8, ptr %next.gep1581, i64 64
  %i.erj = getelementptr i8, ptr %next.gep1581, i64 96
  %wide.load1583 = load <16 x i16>, ptr %next.gep1581, align 2, !tbaa !57
  %wide.load1584 = load <16 x i16>, ptr %i.erh, align 2, !tbaa !57
  %wide.load1585 = load <16 x i16>, ptr %i.eri, align 2, !tbaa !57
  %wide.load1586 = load <16 x i16>, ptr %i.erj, align 2, !tbaa !57
  %i.erk = zext <16 x i16> %wide.load1583 to <16 x i32>
  %i.erl = zext <16 x i16> %wide.load1584 to <16 x i32>
  %i.erm = zext <16 x i16> %wide.load1585 to <16 x i32>
  %i.ern = zext <16 x i16> %wide.load1586 to <16 x i32>
  %i.ero = shl nuw <16 x i32> %i.erk, splat (i32 16)
  %i.erp = shl nuw <16 x i32> %i.erl, splat (i32 16)
  %i.erq = shl nuw <16 x i32> %i.erm, splat (i32 16)
  %i.err = shl nuw <16 x i32> %i.ern, splat (i32 16)
  %i.ers = bitcast <16 x i32> %i.ero to <16 x float>
  %i.ert = bitcast <16 x i32> %i.erp to <16 x float>
  %i.eru = bitcast <16 x i32> %i.erq to <16 x float>
  %i.erv = bitcast <16 x i32> %i.err to <16 x float>
  %i.erw = getelementptr i8, ptr %next.gep1582, i64 32
  %i.erx = getelementptr i8, ptr %next.gep1582, i64 64
  %i.ery = getelementptr i8, ptr %next.gep1582, i64 96
  %wide.load1587 = load <16 x i16>, ptr %next.gep1582, align 2, !tbaa !57
  %wide.load1588 = load <16 x i16>, ptr %i.erw, align 2, !tbaa !57
  %wide.load1589 = load <16 x i16>, ptr %i.erx, align 2, !tbaa !57
  %wide.load1590 = load <16 x i16>, ptr %i.ery, align 2, !tbaa !57
  %i.erz = zext <16 x i16> %wide.load1587 to <16 x i32>
  %i.esa = zext <16 x i16> %wide.load1588 to <16 x i32>
  %i.esb = zext <16 x i16> %wide.load1589 to <16 x i32>
  %i.esc = zext <16 x i16> %wide.load1590 to <16 x i32>
  %i.esd = shl nuw <16 x i32> %i.erz, splat (i32 16)
  %i.ese = shl nuw <16 x i32> %i.esa, splat (i32 16)
  %i.esf = shl nuw <16 x i32> %i.esb, splat (i32 16)
  %i.esg = shl nuw <16 x i32> %i.esc, splat (i32 16)
  %i.esh = bitcast <16 x i32> %i.esd to <16 x float>
  %i.esi = bitcast <16 x i32> %i.ese to <16 x float>
  %i.esj = bitcast <16 x i32> %i.esf to <16 x float>
  %i.esk = bitcast <16 x i32> %i.esg to <16 x float>
  %i.esl = fmul fast <16 x float> %i.esh, %i.ers
  %i.esm = fmul fast <16 x float> %i.esi, %i.ert
  %i.esn = fmul fast <16 x float> %i.esj, %i.eru
  %i.eso = fmul fast <16 x float> %i.esk, %i.erv
  %i.esp = fadd fast <16 x float> %i.esl, %vec.phi1577 ; 2 uses
  %i.esq = fadd fast <16 x float> %i.esm, %vec.phi1578 ; 2 uses
  %i.esr = fadd fast <16 x float> %i.esn, %vec.phi1579 ; 2 uses
  %i.ess = fadd fast <16 x float> %i.eso, %vec.phi1580 ; 2 uses
  %index.next1591 = add nuw i64 %index1576, 64    ; 2 uses
  %i.est = icmp eq i64 %index.next1591, %n.vec1574
  br i1 %i.est, label %middle.block1592, label %vector.body1575, !llvm.loop !470

middle.block1592:                                 ; preds = %vector.body1575
  %bin.rdx1593 = fadd fast <16 x float> %i.esq, %i.esp
  %bin.rdx1594 = fadd fast <16 x float> %i.esr, %bin.rdx1593
  %bin.rdx1595 = fadd fast <16 x float> %i.ess, %bin.rdx1594
  %i.esu = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1595) ; 3 uses
  %cmp.n1596 = icmp eq i64 %i.eqy, %n.vec1574
  br i1 %cmp.n1596, label %._crit_edge1398.i, label %vec.epilog.iter.check1603

vec.epilog.iter.check1603:                        ; preds = %middle.block1592
  %min.epilog.iters.check1604 = icmp eq i64 %i.eqz, 0
  br i1 %min.epilog.iters.check1604, label %.lr.ph1397.i.preheader, label %vec.epilog.ph1605, !prof !150

vec.epilog.ph1605:                                ; preds = %vector.main.loop.iter.check1571, %vec.epilog.iter.check1603
  %vec.epilog.resume.val1597 = phi i64 [ %n.vec1574, %vec.epilog.iter.check1603 ], [ 0, %vector.main.loop.iter.check1571 ]
  %bc.merge.rdx1598 = phi float [ %i.esu, %vec.epilog.iter.check1603 ], [ %.01379.lcssa.i, %vector.main.loop.iter.check1571 ]
  %n.vec1606 = and i64 %i.eqy, 8589934584         ; 4 uses
  %i.esv = trunc i64 %n.vec1606 to i32
  %i.esw = add i32 %.11392.lcssa.i, %i.esv
  %i.esx = shl nuw nsw i64 %n.vec1606, 1          ; 2 uses
  %i.esy = getelementptr i8, ptr %.11398.lcssa.i, i64 %i.esx
  %i.esz = getelementptr i8, ptr %.181560.lcssa.i, i64 %i.esx ; 2 uses
  %i.eta = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1598, i64 0
  br label %vec.epilog.vector.body1607

vec.epilog.vector.body1607:                       ; preds = %vec.epilog.vector.body1607, %vec.epilog.ph1605
  %index1608 = phi i64 [ %vec.epilog.resume.val1597, %vec.epilog.ph1605 ], [ %index.next1614, %vec.epilog.vector.body1607 ] ; 2 uses
  %vec.phi1609 = phi <8 x float> [ %i.eta, %vec.epilog.ph1605 ], [ %i.etj, %vec.epilog.vector.body1607 ]
  %i.etb = shl i64 %index1608, 1                  ; 2 uses
  %next.gep1610 = getelementptr i8, ptr %.11398.lcssa.i, i64 %i.etb
  %next.gep1611 = getelementptr i8, ptr %.181560.lcssa.i, i64 %i.etb
  %wide.load1612 = load <8 x i16>, ptr %next.gep1610, align 2, !tbaa !57
  %i.etc = zext <8 x i16> %wide.load1612 to <8 x i32>
  %i.etd = shl nuw <8 x i32> %i.etc, splat (i32 16)
  %i.ete = bitcast <8 x i32> %i.etd to <8 x float>
  %wide.load1613 = load <8 x i16>, ptr %next.gep1611, align 2, !tbaa !57
  %i.etf = zext <8 x i16> %wide.load1613 to <8 x i32>
  %i.etg = shl nuw <8 x i32> %i.etf, splat (i32 16)
  %i.eth = bitcast <8 x i32> %i.etg to <8 x float>
  %i.eti = fmul fast <8 x float> %i.eth, %i.ete
  %i.etj = fadd fast <8 x float> %i.eti, %vec.phi1609 ; 2 uses
  %index.next1614 = add nuw i64 %index1608, 8     ; 2 uses
  %i.etk = icmp eq i64 %index.next1614, %n.vec1606
  br i1 %i.etk, label %vec.epilog.middle.block1615, label %vec.epilog.vector.body1607, !llvm.loop !471

vec.epilog.middle.block1615:                      ; preds = %vec.epilog.vector.body1607
  %i.etl = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.etj) ; 2 uses
  %cmp.n1616 = icmp eq i64 %i.eqy, %n.vec1606
  br i1 %cmp.n1616, label %._crit_edge1398.i, label %.lr.ph1397.i.preheader

.lr.ph1397.i.preheader:                           ; preds = %iter.check1601, %vec.epilog.iter.check1603, %vec.epilog.middle.block1615
  %.213931395.i.ph = phi i32 [ %.11392.lcssa.i, %iter.check1601 ], [ %i.erb, %vec.epilog.iter.check1603 ], [ %i.esw, %vec.epilog.middle.block1615 ]
  %.213961394.i.ph = phi float [ %.01379.lcssa.i, %iter.check1601 ], [ %i.esu, %vec.epilog.iter.check1603 ], [ %i.etl, %vec.epilog.middle.block1615 ]
  %.213991393.i.ph = phi ptr [ %.11398.lcssa.i, %iter.check1601 ], [ %i.erd, %vec.epilog.iter.check1603 ], [ %i.esy, %vec.epilog.middle.block1615 ]
  %.1915611392.i.ph = phi ptr [ %.181560.lcssa.i, %iter.check1601 ], [ %i.ere, %vec.epilog.iter.check1603 ], [ %i.esz, %vec.epilog.middle.block1615 ]
  br label %.lr.ph1397.i

.lr.ph1397.i:                                     ; preds = %.lr.ph1397.i.preheader, %.lr.ph1397.i
  %.213931395.i = phi i32 [ %i.ety, %.lr.ph1397.i ], [ %.213931395.i.ph, %.lr.ph1397.i.preheader ]
  %.213961394.i = phi float [ %i.etv, %.lr.ph1397.i ], [ %.213961394.i.ph, %.lr.ph1397.i.preheader ]
  %.213991393.i = phi ptr [ %i.etw, %.lr.ph1397.i ], [ %.213991393.i.ph, %.lr.ph1397.i.preheader ] ; 2 uses
  %.1915611392.i = phi ptr [ %i.etx, %.lr.ph1397.i ], [ %.1915611392.i.ph, %.lr.ph1397.i.preheader ] ; 2 uses
  %i.etm = load i16, ptr %.213991393.i, align 2, !tbaa !57
  %i.etn = zext i16 %i.etm to i32
  %i.eto = shl nuw i32 %i.etn, 16
  %i.etp = bitcast i32 %i.eto to float
  %i.etq = load i16, ptr %.1915611392.i, align 2, !tbaa !57
  %i.etr = zext i16 %i.etq to i32
  %i.ets = shl nuw i32 %i.etr, 16
  %i.ett = bitcast i32 %i.ets to float
  %i.etu = fmul fast float %i.ett, %i.etp
  %i.etv = fadd fast float %i.etu, %.213961394.i  ; 2 uses
  %i.etw = getelementptr inbounds nuw i8, ptr %.213991393.i, i64 2
  %i.etx = getelementptr inbounds nuw i8, ptr %.1915611392.i, i64 2 ; 2 uses
  %i.ety = add nuw nsw i32 %.213931395.i, 1       ; 2 uses
  %exitcond1830.not.i = icmp eq i32 %i.ety, %8
  br i1 %exitcond1830.not.i, label %._crit_edge1398.i, label %.lr.ph1397.i, !llvm.loop !472

._crit_edge1398.i:                                ; preds = %.lr.ph1397.i, %middle.block1592, %vec.epilog.middle.block1615, %._crit_edge1384.i
  %.191561.lcssa.i = phi ptr [ %.181560.lcssa.i, %._crit_edge1384.i ], [ %i.esz, %vec.epilog.middle.block1615 ], [ %i.ere, %middle.block1592 ], [ %i.etx, %.lr.ph1397.i ]
  %.21396.lcssa.i = phi float [ %.01379.lcssa.i, %._crit_edge1384.i ], [ %i.etl, %vec.epilog.middle.block1615 ], [ %i.esu, %middle.block1592 ], [ %i.etv, %.lr.ph1397.i ]
  store float %.21396.lcssa.i, ptr %.291403.i, align 4, !tbaa !421
  %i.etz = getelementptr inbounds nuw i8, ptr %.291403.i, i64 4 ; 2 uses
  %i.eua = add nuw nsw i32 %.415411402.i, 1       ; 2 uses
  %exitcond1831.not.i = icmp eq i32 %i.eua, %6
  br i1 %exitcond1831.not.i, label %._crit_edge1405.i, label %.lr.ph1404.i, !llvm.loop !473

._crit_edge1405.i:                                ; preds = %._crit_edge1398.i, %.preheader377.i
  %.29.lcssa.i = phi ptr [ %.28.lcssa.i, %.preheader377.i ], [ %i.etz, %._crit_edge1398.i ]
  %i.eub = getelementptr inbounds [2 x i8], ptr %.41409.i, i64 %i.bje
  %i.euc = add nuw nsw i32 %.413901407.i, 1       ; 2 uses
  %exitcond1832.not.i = icmp eq i32 %i.euc, %4
  %scevgep634 = getelementptr i8, ptr %indvars.iv633, i64 %i.bjt
  br i1 %exitcond1832.not.i, label %_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii.exit, label %.preheader381.i, !llvm.loop !474

_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %._crit_edge1405.i, %.preheader382.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float>, <32 x bfloat>, <32 x bfloat>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float>, <16 x bfloat>, <16 x bfloat>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float>, <8 x bfloat>, <8 x bfloat>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!10, !6, i64 24}
!16 = !{!10, !6, i64 40}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = !{!31}
!31 = distinct !{!31, !27}
!32 = !{!33}
!33 = distinct !{!33, !27}
!34 = !{!35}
!35 = distinct !{!35, !27}
!36 = !{!33, !31, !29, !26}
!37 = distinct !{!37, !19, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !19, !38}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !19, !38, !39}
!52 = !{!"branch_weights", i32 8, i32 24}
!53 = distinct !{!53, !19, !38, !39}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !19, !38}
!56 = distinct !{!56, !19}
!57 = !{!58, !58, i64 0}
!58 = !{!"short", !7, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61}
!61 = distinct !{!61, !"LVerDomain"}
!62 = !{!63}
!63 = distinct !{!63, !61}
!64 = !{!65}
!65 = distinct !{!65, !61}
!66 = !{!67}
!67 = distinct !{!67, !61}
!68 = !{!69}
!69 = distinct !{!69, !61}
!70 = !{!67, !65, !63, !60}
!71 = distinct !{!71, !19, !38, !39}
!72 = !{!"branch_weights", i32 4, i32 28}
!73 = distinct !{!73, !19, !38, !39}
!74 = distinct !{!74, !19, !38}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79}
!79 = distinct !{!79, !77}
!80 = !{!81}
!81 = distinct !{!81, !77}
!82 = !{!83}
!83 = distinct !{!83, !77}
!84 = !{!85}
!85 = distinct !{!85, !77}
!86 = !{!83, !81, !79, !76}
!87 = distinct !{!87, !19, !38, !39}
!88 = distinct !{!88, !19, !38, !39}
!89 = distinct !{!89, !19, !38}
!90 = distinct !{!90, !21}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97}
!97 = distinct !{!97, !95}
!98 = !{!99}
!99 = distinct !{!99, !95}
!100 = !{!97, !94}
!101 = distinct !{!101, !19, !38, !39}
!102 = distinct !{!102, !21}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19, !38}
!105 = distinct !{!105, !21}
!106 = distinct !{!106, !21}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19}
!110 = !{!111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!114}
!114 = distinct !{!114, !112}
!115 = !{!116}
!116 = distinct !{!116, !112}
!117 = !{!114, !111}
!118 = distinct !{!118, !19, !38, !39}
!119 = distinct !{!119, !19, !38, !39}
!120 = distinct !{!120, !19, !38}
!121 = distinct !{!121, !19, !38}
!122 = distinct !{!122, !19}
!123 = !{!124}
!124 = distinct !{!124, !125}
!125 = distinct !{!125, !"LVerDomain"}
!126 = !{!127}
!127 = distinct !{!127, !125}
!128 = !{!129}
!129 = distinct !{!129, !125}
!130 = !{!127, !124}
!131 = distinct !{!131, !19, !38, !39}
!132 = distinct !{!132, !19, !38, !39}
!133 = distinct !{!133, !21}
!134 = !{!135}
!135 = distinct !{!135, !136}
!136 = distinct !{!136, !"LVerDomain"}
!137 = !{!138}
!138 = distinct !{!138, !136}
!139 = !{!140}
!140 = distinct !{!140, !136}
!141 = !{!138, !135}
!142 = distinct !{!142, !19, !38, !39}
!143 = distinct !{!143, !19, !38}
!144 = !{!145}
!145 = distinct !{!145, !146}
!146 = distinct !{!146, !"LVerDomain"}
!147 = !{!148}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !19, !38, !39}
!150 = !{!"branch_weights", i32 8, i32 56}
!151 = distinct !{!151, !19, !38, !39}
!152 = distinct !{!152, !19, !38, !39}
!153 = !{!"branch_weights", i32 16, i32 112}
!154 = distinct !{!154, !19, !38, !39}
!155 = distinct !{!155, !21}
!156 = distinct !{!156, !19, !38}
!157 = distinct !{!157, !19, !38}
!158 = distinct !{!158, !19}
!159 = distinct !{!159, !19}
!160 = distinct !{!160, !21}
!161 = distinct !{!161, !19}
end_hunk_7
