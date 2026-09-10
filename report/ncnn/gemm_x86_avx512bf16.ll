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
  br i1 %niter860.ncmp.1.not, label %.preheader14.i.loopexit.unr-lcssa, label %.lr.ph112.i, !llvm.loop !83

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
  br i1 %exitcond306.not.i.3, label %.loopexit13.i, label %.lr.ph121.i, !llvm.loop !84

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
  br i1 %epil.iter842.cmp.not, label %.preheader12.i, label %.lr.ph127.i.epil, !llvm.loop !85

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
  br i1 %prol.iter851.cmp.not, label %.lr.ph134.i.prol.loopexit, label %.lr.ph134.i.prol, !llvm.loop !86

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
  br i1 %niter848.ncmp.3.not, label %.preheader12.i.loopexit.unr-lcssa, label %.lr.ph127.i, !llvm.loop !87

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
  br i1 %exitcond307.not.i.3, label %.loopexit13.i, label %.lr.ph134.i, !llvm.loop !88

.loopexit13.i:                                    ; preds = %.lr.ph134.i.prol.loopexit, %.lr.ph134.i, %.lr.ph121.i.prol.loopexit, %.lr.ph121.i, %.lr.ph105.i.prol.loopexit, %.lr.ph105.i, %middle.block277, %.preheader12.i, %.preheader14.i, %.preheader16.i, %bb.f
  %.22.i = phi ptr [ %.13137.i, %bb.f ], [ %.20.lcssa.i, %.preheader12.i ], [ %i.ze, %.lr.ph105.i ], [ %i.acr, %.lr.ph121.i ], [ %.17.lcssa.i, %.preheader14.i ], [ %.14.lcssa.i, %.preheader16.i ], [ %i.aaf, %middle.block277 ], [ %.lcssa789.unr, %.lr.ph105.i.prol.loopexit ], [ %.lcssa786.unr, %.lr.ph121.i.prol.loopexit ], [ %.lcssa782.unr, %.lr.ph134.i.prol.loopexit ], [ %i.aeh, %.lr.ph134.i ] ; 2 uses
  %indvars.iv.next309.i = add nuw nsw i64 %indvars.iv308.i, 8 ; 3 uses
  %i.aek = icmp slt i64 %indvars.iv.next309.i, %invariant.op.i
  br i1 %i.aek, label %bb.f, label %.preheader11.loopexit.i, !llvm.loop !89

.preheader6.loopexit.i:                           ; preds = %.loopexit.i.us59, %.loopexit.i.us, %.loopexit.i.preheader
  %.us-phi54 = phi ptr [ %.13.lcssa.i, %.loopexit.i.preheader ], [ %.29.i.us, %.loopexit.i.us ], [ %.29.i.us60, %.loopexit.i.us59 ]
  %.us-phi55 = phi i64 [ %i.ls, %.loopexit.i.preheader ], [ %indvars.iv.next314.i.us, %.loopexit.i.us ], [ %indvars.iv.next314.i.us61, %.loopexit.i.us59 ]
  %i.ael = trunc nsw i64 %.us-phi55 to i32
  br label %.preheader6.i

.preheader6.i:                                    ; preds = %.preheader6.loopexit.i, %.preheader11.i
  %.2370.lcssa.i = phi i32 [ %.1369.lcssa.i, %.preheader11.i ], [ %i.ael, %.preheader6.loopexit.i ] ; 6 uses
  %.23.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader11.i ], [ %.us-phi54, %.preheader6.loopexit.i ] ; 11 uses
  %i.aem = or disjoint i32 %.2370.lcssa.i, 1
  %i.aen = icmp slt i32 %i.aem, %3
  br i1 %i.aen, label %.lr.ph197.i, label %.preheader4.i

.lr.ph197.i:                                      ; preds = %.preheader6.i
  %i.aeo = load ptr, ptr %0, align 8, !tbaa !14   ; 12 uses
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
  %wide.vec616 = load <64 x i16>, ptr %next.gep614, align 2, !tbaa !24, !alias.scope !145
  %wide.vec619 = load <64 x i16>, ptr %next.gep613, align 2, !tbaa !24, !alias.scope !146
  %interleaved.vec622 = shufflevector <64 x i16> %wide.vec616, <64 x i16> %wide.vec619, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i16> %interleaved.vec622, ptr %next.gep615, align 2, !tbaa !24, !alias.scope !147, !noalias !148
  %index.next623 = add nuw i64 %index612, 32      ; 2 uses
  %i.ahp = icmp eq i64 %index.next623, %n.vec610
  br i1 %i.ahp, label %middle.block624, label %vector.body611, !llvm.loop !94

middle.block624:                                  ; preds = %vector.body611
  br i1 %cmp.n625, label %..preheader5_crit_edge.us.i, label %vec.epilog.iter.check633

vec.epilog.iter.check633:                         ; preds = %middle.block624
  br i1 %min.epilog.iters.check634, label %vec.epilog.scalar.ph632.preheader, label %vec.epilog.ph635, !prof !22

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
  %wide.vec642 = load <16 x i16>, ptr %next.gep640, align 2, !tbaa !24, !alias.scope !145
  %wide.vec645 = load <16 x i16>, ptr %next.gep639, align 2, !tbaa !24, !alias.scope !146
  %interleaved.vec648 = shufflevector <16 x i16> %wide.vec642, <16 x i16> %wide.vec645, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i16> %interleaved.vec648, ptr %next.gep641, align 2, !tbaa !24, !alias.scope !147, !noalias !148
  %index.next649 = add nuw i64 %index638, 8       ; 2 uses
  %i.ahv = icmp eq i64 %index.next649, %n.vec636
  br i1 %i.ahv, label %vec.epilog.middle.block650, label %vec.epilog.vector.body637, !llvm.loop !95

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
  store i16 %i.ahw, ptr %.31180.us.i, align 2, !tbaa !24
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0349181.us.i, i64 2
  %i.ahy = load i16, ptr %i.ahx, align 2, !tbaa !24
  %i.ahz = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 2
  store i16 %i.ahy, ptr %i.ahz, align 2, !tbaa !24
  %i.aia = load i16, ptr %.0347182.us.i, align 2, !tbaa !24
  %i.aib = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 4
  store i16 %i.aia, ptr %i.aib, align 2, !tbaa !24
  %i.aic = getelementptr inbounds nuw i8, ptr %.0347182.us.i, i64 2
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !24
  %i.aie = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 6
  store i16 %i.aid, ptr %i.aie, align 2, !tbaa !24
  %i.aif = getelementptr i8, ptr %.31180.us.i, i64 8 ; 2 uses
  %i.aig = getelementptr i8, ptr %.0349181.us.i, i64 4 ; 2 uses
  %i.aih = getelementptr i8, ptr %.0347182.us.i, i64 4 ; 2 uses
  %i.aii = add nuw nsw i32 %.0345183.us.i, 2      ; 2 uses
  %i.aij = or disjoint i32 %i.aii, 1
  %i.aik = icmp slt i32 %i.aij, %5
  %indvar.next536 = add i64 %indvar535, 1
  br i1 %i.aik, label %vec.epilog.scalar.ph632, label %..preheader5_crit_edge.us.i, !llvm.loop !96

.lr.ph193.us.i:                                   ; preds = %.lr.ph193.us.i.prol.loopexit, %.lr.ph193.us.i
  %.1346192.us.i = phi i32 [ %i.ajj, %.lr.ph193.us.i ], [ %.1346192.us.i.unr, %.lr.ph193.us.i.prol.loopexit ]
  %.1348191.us.i = phi ptr [ %i.aji, %.lr.ph193.us.i ], [ %.1348191.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 5 uses
  %.1350190.us.i = phi ptr [ %i.ajh, %.lr.ph193.us.i ], [ %.1350190.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 5 uses
  %.32189.us.i = phi ptr [ %i.ajg, %.lr.ph193.us.i ], [ %.32189.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 9 uses
  %i.ail = load i16, ptr %.1350190.us.i, align 2, !tbaa !24
  store i16 %i.ail, ptr %.32189.us.i, align 2, !tbaa !24
  %i.aim = load i16, ptr %.1348191.us.i, align 2, !tbaa !24
  %i.ain = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 2
  store i16 %i.aim, ptr %i.ain, align 2, !tbaa !24
  %i.aio = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 4
  %i.aip = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 2
  %i.aiq = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 2
  %i.air = load i16, ptr %i.aip, align 2, !tbaa !24
  store i16 %i.air, ptr %i.aio, align 2, !tbaa !24
  %i.ais = load i16, ptr %i.aiq, align 2, !tbaa !24
  %i.ait = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 6
  store i16 %i.ais, ptr %i.ait, align 2, !tbaa !24
  %i.aiu = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 8
  %i.aiv = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 4
  %i.aiw = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 4
  %i.aix = load i16, ptr %i.aiv, align 2, !tbaa !24
  store i16 %i.aix, ptr %i.aiu, align 2, !tbaa !24
  %i.aiy = load i16, ptr %i.aiw, align 2, !tbaa !24
  %i.aiz = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 10
  store i16 %i.aiy, ptr %i.aiz, align 2, !tbaa !24
  %i.aja = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 12
  %i.ajb = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 6
  %i.ajc = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 6
  %i.ajd = load i16, ptr %i.ajb, align 2, !tbaa !24
  store i16 %i.ajd, ptr %i.aja, align 2, !tbaa !24
  %i.aje = load i16, ptr %i.ajc, align 2, !tbaa !24
  %i.ajf = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 14
  store i16 %i.aje, ptr %i.ajf, align 2, !tbaa !24
  %i.ajg = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 16 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 8
  %i.aji = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 8
  %i.ajj = add nuw nsw i32 %.1346192.us.i, 4      ; 2 uses
  %exitcond319.not.i.3 = icmp eq i32 %i.ajj, %5
  br i1 %exitcond319.not.i.3, label %._crit_edge.us.i, label %.lr.ph193.us.i, !llvm.loop !97

._crit_edge.us.i:                                 ; preds = %.lr.ph193.us.i.prol.loopexit, %.lr.ph193.us.i, %middle.block561, %vec.epilog.middle.block583, %..preheader5_crit_edge.us.i
  %.32.lcssa.us.i = phi ptr [ %.lcssa180, %..preheader5_crit_edge.us.i ], [ %i.ajz, %vec.epilog.middle.block583 ], [ %i.ajt, %middle.block561 ], [ %.lcssa764.unr, %.lr.ph193.us.i.prol.loopexit ], [ %i.ajg, %.lr.ph193.us.i ] ; 2 uses
  %indvars.iv.next321.i = add nuw nsw i64 %indvars.iv320.i, 2 ; 3 uses
  %i.ajk = icmp slt i64 %indvars.iv.next321.i, %invariant.op403.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ajk, label %iter.check631, label %.preheader4.loopexit.i, !llvm.loop !98

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
  %wide.load557 = load <32 x i16>, ptr %next.gep555, align 2, !tbaa !24, !alias.scope !149
  %wide.load558 = load <32 x i16>, ptr %next.gep554, align 2, !tbaa !24, !alias.scope !150
  %interleaved.vec559 = shufflevector <32 x i16> %wide.load557, <32 x i16> %wide.load558, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec559, ptr %next.gep556, align 2, !tbaa !24, !alias.scope !151, !noalias !152
  %index.next560 = add nuw i64 %index553, 32      ; 2 uses
  %i.ajw = icmp eq i64 %index.next560, %n.vec551
  br i1 %i.ajw, label %middle.block561, label %vector.body552, !llvm.loop !103

middle.block561:                                  ; preds = %vector.body552
  br i1 %cmp.n562, label %._crit_edge.us.i, label %vec.epilog.iter.check570

vec.epilog.iter.check570:                         ; preds = %middle.block561
  br i1 %min.epilog.iters.check571, label %.lr.ph193.us.i.preheader, label %vec.epilog.ph572, !prof !22

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
  %wide.load579 = load <8 x i16>, ptr %next.gep577, align 2, !tbaa !24, !alias.scope !149
  %wide.load580 = load <8 x i16>, ptr %next.gep576, align 2, !tbaa !24, !alias.scope !150
  %interleaved.vec581 = shufflevector <8 x i16> %wide.load579, <8 x i16> %wide.load580, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i16> %interleaved.vec581, ptr %next.gep578, align 2, !tbaa !24, !alias.scope !151, !noalias !152
  %index.next582 = add nuw i64 %index575, 8       ; 2 uses
  %i.akc = icmp eq i64 %index.next582, %n.vec573
  br i1 %i.akc, label %vec.epilog.middle.block583, label %vec.epilog.vector.body574, !llvm.loop !104

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
  %i.ake = load i16, ptr %.1350190.us.i.prol, align 2, !tbaa !24
  store i16 %i.ake, ptr %.32189.us.i.prol, align 2, !tbaa !24
  %i.akf = load i16, ptr %.1348191.us.i.prol, align 2, !tbaa !24
  %i.akg = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 2
  store i16 %i.akf, ptr %i.akg, align 2, !tbaa !24
  %i.akh = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 4 ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.1350190.us.i.prol, i64 2 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.1348191.us.i.prol, i64 2 ; 2 uses
  %i.akk = add nuw nsw i32 %.1346192.us.i.prol, 1 ; 2 uses
  %prol.iter891.next = add i32 %prol.iter891, 1   ; 2 uses
  %prol.iter891.cmp.not = icmp eq i32 %prol.iter891.next, %xtraiter889
  br i1 %prol.iter891.cmp.not, label %.lr.ph193.us.i.prol.loopexit, label %.lr.ph193.us.i.prol, !llvm.loop !105

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
  %i.ako = add i32 %3, -2
  %6 = sub i32 %i.ako, %.2370.lcssa.i
  %7 = and i32 %6, -2
  %8 = add i32 %.2370.lcssa.i, 2
  %i.akp = add i32 %8, %7
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
  %min.iters.check516 = icmp ult i64 %i.akw, 1086
  br i1 %min.iters.check516, label %._crit_edge.us210.i.preheader, label %vector.scevcheck

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
  br i1 %i.alr, label %._crit_edge.us210.i.preheader, label %vector.memcheck496

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
  br i1 %conflict.rdx514, label %._crit_edge.us210.i.preheader, label %vector.ph517

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
  %i.aov = load i16, ptr %i.ana, align 2, !tbaa !24, !alias.scope !153
  %i.aow = load i16, ptr %i.anc, align 2, !tbaa !24, !alias.scope !153
  %i.aox = load i16, ptr %i.ane, align 2, !tbaa !24, !alias.scope !153
  %i.aoy = load i16, ptr %i.ang, align 2, !tbaa !24, !alias.scope !153
  %i.aoz = load i16, ptr %i.ani, align 2, !tbaa !24, !alias.scope !153
  %i.apa = load i16, ptr %i.ank, align 2, !tbaa !24, !alias.scope !153
  %i.apb = load i16, ptr %i.anm, align 2, !tbaa !24, !alias.scope !153
  %i.apc = load i16, ptr %i.ano, align 2, !tbaa !24, !alias.scope !153
  %i.apd = load i16, ptr %i.anq, align 2, !tbaa !24, !alias.scope !153
  %i.ape = load i16, ptr %i.ans, align 2, !tbaa !24, !alias.scope !153
  %i.apf = load i16, ptr %i.anu, align 2, !tbaa !24, !alias.scope !153
  %i.apg = load i16, ptr %i.anw, align 2, !tbaa !24, !alias.scope !153
  %i.aph = load i16, ptr %i.any, align 2, !tbaa !24, !alias.scope !153
  %i.api = load i16, ptr %i.aoa, align 2, !tbaa !24, !alias.scope !153
  %i.apj = load i16, ptr %i.aoc, align 2, !tbaa !24, !alias.scope !153
  %i.apk = load i16, ptr %i.aoe, align 2, !tbaa !24, !alias.scope !153
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
  %i.aqb = load i16, ptr %i.aof, align 2, !tbaa !24, !alias.scope !154
  %i.aqc = load i16, ptr %i.aog, align 2, !tbaa !24, !alias.scope !154
  %i.aqd = load i16, ptr %i.aoh, align 2, !tbaa !24, !alias.scope !154
  %i.aqe = load i16, ptr %i.aoi, align 2, !tbaa !24, !alias.scope !154
  %i.aqf = load i16, ptr %i.aoj, align 2, !tbaa !24, !alias.scope !154
  %i.aqg = load i16, ptr %i.aok, align 2, !tbaa !24, !alias.scope !154
  %i.aqh = load i16, ptr %i.aol, align 2, !tbaa !24, !alias.scope !154
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
  br i1 %niter860.ncmp.1.not, label %.preheader14.i.loopexit.unr-lcssa, label %.lr.ph112.i, !llvm.loop !248

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
  br i1 %exitcond306.not.i.3, label %.loopexit13.i, label %.lr.ph121.i, !llvm.loop !249

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
  br i1 %epil.iter842.cmp.not, label %.preheader12.i, label %.lr.ph127.i.epil, !llvm.loop !250

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
  br i1 %prol.iter851.cmp.not, label %.lr.ph134.i.prol.loopexit, label %.lr.ph134.i.prol, !llvm.loop !251

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
  br i1 %niter848.ncmp.3.not, label %.preheader12.i.loopexit.unr-lcssa, label %.lr.ph127.i, !llvm.loop !252

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
  br i1 %exitcond307.not.i.3, label %.loopexit13.i, label %.lr.ph134.i, !llvm.loop !253

.loopexit13.i:                                    ; preds = %.lr.ph134.i.prol.loopexit, %.lr.ph134.i, %.lr.ph121.i.prol.loopexit, %.lr.ph121.i, %.lr.ph105.i.prol.loopexit, %.lr.ph105.i, %middle.block277, %.preheader12.i, %.preheader14.i, %.preheader16.i, %bb.f
  %.22.i = phi ptr [ %.13137.i, %bb.f ], [ %.20.lcssa.i, %.preheader12.i ], [ %i.ze, %.lr.ph105.i ], [ %i.acr, %.lr.ph121.i ], [ %.17.lcssa.i, %.preheader14.i ], [ %.14.lcssa.i, %.preheader16.i ], [ %i.aaf, %middle.block277 ], [ %.lcssa789.unr, %.lr.ph105.i.prol.loopexit ], [ %.lcssa786.unr, %.lr.ph121.i.prol.loopexit ], [ %.lcssa782.unr, %.lr.ph134.i.prol.loopexit ], [ %i.aeh, %.lr.ph134.i ] ; 2 uses
  %indvars.iv.next309.i = add nuw nsw i64 %indvars.iv308.i, 8 ; 3 uses
  %i.aek = icmp slt i64 %indvars.iv.next309.i, %invariant.op.i
  br i1 %i.aek, label %bb.f, label %.preheader11.loopexit.i, !llvm.loop !254

.preheader6.loopexit.i:                           ; preds = %.loopexit.i.us59, %.loopexit.i.us, %.loopexit.i.preheader
  %.us-phi54 = phi ptr [ %.13.lcssa.i, %.loopexit.i.preheader ], [ %.29.i.us, %.loopexit.i.us ], [ %.29.i.us60, %.loopexit.i.us59 ]
  %.us-phi55 = phi i64 [ %i.ls, %.loopexit.i.preheader ], [ %indvars.iv.next314.i.us, %.loopexit.i.us ], [ %indvars.iv.next314.i.us61, %.loopexit.i.us59 ]
  %i.ael = trunc nsw i64 %.us-phi55 to i32
  br label %.preheader6.i

.preheader6.i:                                    ; preds = %.preheader6.loopexit.i, %.preheader11.i
  %.2370.lcssa.i = phi i32 [ %.1369.lcssa.i, %.preheader11.i ], [ %i.ael, %.preheader6.loopexit.i ] ; 6 uses
  %.23.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader11.i ], [ %.us-phi54, %.preheader6.loopexit.i ] ; 11 uses
  %i.aem = or disjoint i32 %.2370.lcssa.i, 1
  %i.aen = icmp slt i32 %i.aem, %3
  br i1 %i.aen, label %.lr.ph197.i, label %.preheader4.i

.lr.ph197.i:                                      ; preds = %.preheader6.i
  %i.aeo = load ptr, ptr %0, align 8, !tbaa !14   ; 12 uses
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
  %wide.vec616 = load <64 x i16>, ptr %next.gep614, align 2, !tbaa !24, !alias.scope !310
  %wide.vec619 = load <64 x i16>, ptr %next.gep613, align 2, !tbaa !24, !alias.scope !311
  %interleaved.vec622 = shufflevector <64 x i16> %wide.vec616, <64 x i16> %wide.vec619, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i16> %interleaved.vec622, ptr %next.gep615, align 2, !tbaa !24, !alias.scope !312, !noalias !313
  %index.next623 = add nuw i64 %index612, 32      ; 2 uses
  %i.ahp = icmp eq i64 %index.next623, %n.vec610
  br i1 %i.ahp, label %middle.block624, label %vector.body611, !llvm.loop !259

middle.block624:                                  ; preds = %vector.body611
  br i1 %cmp.n625, label %..preheader5_crit_edge.us.i, label %vec.epilog.iter.check633

vec.epilog.iter.check633:                         ; preds = %middle.block624
  br i1 %min.epilog.iters.check634, label %vec.epilog.scalar.ph632.preheader, label %vec.epilog.ph635, !prof !22

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
  %wide.vec642 = load <16 x i16>, ptr %next.gep640, align 2, !tbaa !24, !alias.scope !310
  %wide.vec645 = load <16 x i16>, ptr %next.gep639, align 2, !tbaa !24, !alias.scope !311
  %interleaved.vec648 = shufflevector <16 x i16> %wide.vec642, <16 x i16> %wide.vec645, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i16> %interleaved.vec648, ptr %next.gep641, align 2, !tbaa !24, !alias.scope !312, !noalias !313
  %index.next649 = add nuw i64 %index638, 8       ; 2 uses
  %i.ahv = icmp eq i64 %index.next649, %n.vec636
  br i1 %i.ahv, label %vec.epilog.middle.block650, label %vec.epilog.vector.body637, !llvm.loop !260

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
  store i16 %i.ahw, ptr %.31180.us.i, align 2, !tbaa !24
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0349181.us.i, i64 2
  %i.ahy = load i16, ptr %i.ahx, align 2, !tbaa !24
  %i.ahz = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 2
  store i16 %i.ahy, ptr %i.ahz, align 2, !tbaa !24
  %i.aia = load i16, ptr %.0347182.us.i, align 2, !tbaa !24
  %i.aib = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 4
  store i16 %i.aia, ptr %i.aib, align 2, !tbaa !24
  %i.aic = getelementptr inbounds nuw i8, ptr %.0347182.us.i, i64 2
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !24
  %i.aie = getelementptr inbounds nuw i8, ptr %.31180.us.i, i64 6
  store i16 %i.aid, ptr %i.aie, align 2, !tbaa !24
  %i.aif = getelementptr i8, ptr %.31180.us.i, i64 8 ; 2 uses
  %i.aig = getelementptr i8, ptr %.0349181.us.i, i64 4 ; 2 uses
  %i.aih = getelementptr i8, ptr %.0347182.us.i, i64 4 ; 2 uses
  %i.aii = add nuw nsw i32 %.0345183.us.i, 2      ; 2 uses
  %i.aij = or disjoint i32 %i.aii, 1
  %i.aik = icmp slt i32 %i.aij, %5
  %indvar.next536 = add i64 %indvar535, 1
  br i1 %i.aik, label %vec.epilog.scalar.ph632, label %..preheader5_crit_edge.us.i, !llvm.loop !261

.lr.ph193.us.i:                                   ; preds = %.lr.ph193.us.i.prol.loopexit, %.lr.ph193.us.i
  %.1346192.us.i = phi i32 [ %i.ajj, %.lr.ph193.us.i ], [ %.1346192.us.i.unr, %.lr.ph193.us.i.prol.loopexit ]
  %.1348191.us.i = phi ptr [ %i.aji, %.lr.ph193.us.i ], [ %.1348191.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 5 uses
  %.1350190.us.i = phi ptr [ %i.ajh, %.lr.ph193.us.i ], [ %.1350190.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 5 uses
  %.32189.us.i = phi ptr [ %i.ajg, %.lr.ph193.us.i ], [ %.32189.us.i.unr, %.lr.ph193.us.i.prol.loopexit ] ; 9 uses
  %i.ail = load i16, ptr %.1350190.us.i, align 2, !tbaa !24
  store i16 %i.ail, ptr %.32189.us.i, align 2, !tbaa !24
  %i.aim = load i16, ptr %.1348191.us.i, align 2, !tbaa !24
  %i.ain = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 2
  store i16 %i.aim, ptr %i.ain, align 2, !tbaa !24
  %i.aio = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 4
  %i.aip = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 2
  %i.aiq = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 2
  %i.air = load i16, ptr %i.aip, align 2, !tbaa !24
  store i16 %i.air, ptr %i.aio, align 2, !tbaa !24
  %i.ais = load i16, ptr %i.aiq, align 2, !tbaa !24
  %i.ait = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 6
  store i16 %i.ais, ptr %i.ait, align 2, !tbaa !24
  %i.aiu = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 8
  %i.aiv = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 4
  %i.aiw = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 4
  %i.aix = load i16, ptr %i.aiv, align 2, !tbaa !24
  store i16 %i.aix, ptr %i.aiu, align 2, !tbaa !24
  %i.aiy = load i16, ptr %i.aiw, align 2, !tbaa !24
  %i.aiz = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 10
  store i16 %i.aiy, ptr %i.aiz, align 2, !tbaa !24
  %i.aja = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 12
  %i.ajb = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 6
  %i.ajc = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 6
  %i.ajd = load i16, ptr %i.ajb, align 2, !tbaa !24
  store i16 %i.ajd, ptr %i.aja, align 2, !tbaa !24
  %i.aje = load i16, ptr %i.ajc, align 2, !tbaa !24
  %i.ajf = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 14
  store i16 %i.aje, ptr %i.ajf, align 2, !tbaa !24
  %i.ajg = getelementptr inbounds nuw i8, ptr %.32189.us.i, i64 16 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.1350190.us.i, i64 8
  %i.aji = getelementptr inbounds nuw i8, ptr %.1348191.us.i, i64 8
  %i.ajj = add nuw nsw i32 %.1346192.us.i, 4      ; 2 uses
  %exitcond319.not.i.3 = icmp eq i32 %i.ajj, %5
  br i1 %exitcond319.not.i.3, label %._crit_edge.us.i, label %.lr.ph193.us.i, !llvm.loop !262

._crit_edge.us.i:                                 ; preds = %.lr.ph193.us.i.prol.loopexit, %.lr.ph193.us.i, %middle.block561, %vec.epilog.middle.block583, %..preheader5_crit_edge.us.i
  %.32.lcssa.us.i = phi ptr [ %.lcssa180, %..preheader5_crit_edge.us.i ], [ %i.ajz, %vec.epilog.middle.block583 ], [ %i.ajt, %middle.block561 ], [ %.lcssa764.unr, %.lr.ph193.us.i.prol.loopexit ], [ %i.ajg, %.lr.ph193.us.i ] ; 2 uses
  %indvars.iv.next321.i = add nuw nsw i64 %indvars.iv320.i, 2 ; 3 uses
  %i.ajk = icmp slt i64 %indvars.iv.next321.i, %invariant.op403.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ajk, label %iter.check631, label %.preheader4.loopexit.i, !llvm.loop !263

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
  %wide.load557 = load <32 x i16>, ptr %next.gep555, align 2, !tbaa !24, !alias.scope !314
  %wide.load558 = load <32 x i16>, ptr %next.gep554, align 2, !tbaa !24, !alias.scope !315
  %interleaved.vec559 = shufflevector <32 x i16> %wide.load557, <32 x i16> %wide.load558, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec559, ptr %next.gep556, align 2, !tbaa !24, !alias.scope !316, !noalias !317
  %index.next560 = add nuw i64 %index553, 32      ; 2 uses
  %i.ajw = icmp eq i64 %index.next560, %n.vec551
  br i1 %i.ajw, label %middle.block561, label %vector.body552, !llvm.loop !268

middle.block561:                                  ; preds = %vector.body552
  br i1 %cmp.n562, label %._crit_edge.us.i, label %vec.epilog.iter.check570

vec.epilog.iter.check570:                         ; preds = %middle.block561
  br i1 %min.epilog.iters.check571, label %.lr.ph193.us.i.preheader, label %vec.epilog.ph572, !prof !22

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
  %wide.load579 = load <8 x i16>, ptr %next.gep577, align 2, !tbaa !24, !alias.scope !314
  %wide.load580 = load <8 x i16>, ptr %next.gep576, align 2, !tbaa !24, !alias.scope !315
  %interleaved.vec581 = shufflevector <8 x i16> %wide.load579, <8 x i16> %wide.load580, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i16> %interleaved.vec581, ptr %next.gep578, align 2, !tbaa !24, !alias.scope !316, !noalias !317
  %index.next582 = add nuw i64 %index575, 8       ; 2 uses
  %i.akc = icmp eq i64 %index.next582, %n.vec573
  br i1 %i.akc, label %vec.epilog.middle.block583, label %vec.epilog.vector.body574, !llvm.loop !269

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
  %i.ake = load i16, ptr %.1350190.us.i.prol, align 2, !tbaa !24
  store i16 %i.ake, ptr %.32189.us.i.prol, align 2, !tbaa !24
  %i.akf = load i16, ptr %.1348191.us.i.prol, align 2, !tbaa !24
  %i.akg = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 2
  store i16 %i.akf, ptr %i.akg, align 2, !tbaa !24
  %i.akh = getelementptr inbounds nuw i8, ptr %.32189.us.i.prol, i64 4 ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.1350190.us.i.prol, i64 2 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.1348191.us.i.prol, i64 2 ; 2 uses
  %i.akk = add nuw nsw i32 %.1346192.us.i.prol, 1 ; 2 uses
  %prol.iter891.next = add i32 %prol.iter891, 1   ; 2 uses
  %prol.iter891.cmp.not = icmp eq i32 %prol.iter891.next, %xtraiter889
  br i1 %prol.iter891.cmp.not, label %.lr.ph193.us.i.prol.loopexit, label %.lr.ph193.us.i.prol, !llvm.loop !270

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
  %i.ako = add i32 %3, -2
  %6 = sub i32 %i.ako, %.2370.lcssa.i
  %7 = and i32 %6, -2
  %8 = add i32 %.2370.lcssa.i, 2
  %i.akp = add i32 %8, %7
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
  %min.iters.check516 = icmp ult i64 %i.akw, 1086
  br i1 %min.iters.check516, label %._crit_edge.us210.i.preheader, label %vector.scevcheck

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
  br i1 %i.alr, label %._crit_edge.us210.i.preheader, label %vector.memcheck496

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
  br i1 %conflict.rdx514, label %._crit_edge.us210.i.preheader, label %vector.ph517

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
  %i.aov = load i16, ptr %i.ana, align 2, !tbaa !24, !alias.scope !318
  %i.aow = load i16, ptr %i.anc, align 2, !tbaa !24, !alias.scope !318
  %i.aox = load i16, ptr %i.ane, align 2, !tbaa !24, !alias.scope !318
  %i.aoy = load i16, ptr %i.ang, align 2, !tbaa !24, !alias.scope !318
  %i.aoz = load i16, ptr %i.ani, align 2, !tbaa !24, !alias.scope !318
  %i.apa = load i16, ptr %i.ank, align 2, !tbaa !24, !alias.scope !318
  %i.apb = load i16, ptr %i.anm, align 2, !tbaa !24, !alias.scope !318
  %i.apc = load i16, ptr %i.ano, align 2, !tbaa !24, !alias.scope !318
  %i.apd = load i16, ptr %i.anq, align 2, !tbaa !24, !alias.scope !318
  %i.ape = load i16, ptr %i.ans, align 2, !tbaa !24, !alias.scope !318
  %i.apf = load i16, ptr %i.anu, align 2, !tbaa !24, !alias.scope !318
  %i.apg = load i16, ptr %i.anw, align 2, !tbaa !24, !alias.scope !318
  %i.aph = load i16, ptr %i.any, align 2, !tbaa !24, !alias.scope !318
  %i.api = load i16, ptr %i.aoa, align 2, !tbaa !24, !alias.scope !318
  %i.apj = load i16, ptr %i.aoc, align 2, !tbaa !24, !alias.scope !318
  %i.apk = load i16, ptr %i.aoe, align 2, !tbaa !24, !alias.scope !318
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
  %i.aqb = load i16, ptr %i.aof, align 2, !tbaa !24, !alias.scope !319
  %i.aqc = load i16, ptr %i.aog, align 2, !tbaa !24, !alias.scope !319
  %i.aqd = load i16, ptr %i.aoh, align 2, !tbaa !24, !alias.scope !319
  %i.aqe = load i16, ptr %i.aoi, align 2, !tbaa !24, !alias.scope !319
  %i.aqf = load i16, ptr %i.aoj, align 2, !tbaa !24, !alias.scope !319
  %i.aqg = load i16, ptr %i.aok, align 2, !tbaa !24, !alias.scope !319
  %i.aqh = load i16, ptr %i.aol, align 2, !tbaa !24, !alias.scope !319
end_hunk_3
begin_hunk_4_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %index1420 = phi i64 [ 0, %vector.ph1417 ], [ %index.next1435, %vector.body1419 ] ; 2 uses
  %vec.phi1421 = phi <16 x float> [ %i.dxd, %vector.ph1417 ], [ %i.dyn, %vector.body1419 ]
  %vec.phi1422 = phi <16 x float> [ zeroinitializer, %vector.ph1417 ], [ %i.dyo, %vector.body1419 ]
  %vec.phi1423 = phi <16 x float> [ zeroinitializer, %vector.ph1417 ], [ %i.dyp, %vector.body1419 ]
  %vec.phi1424 = phi <16 x float> [ zeroinitializer, %vector.ph1417 ], [ %i.dyq, %vector.body1419 ]
  %i.dxe = shl i64 %index1420, 1                  ; 2 uses
  %next.gep1425 = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.dxe ; 4 uses
  %next.gep1426 = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.dxe ; 4 uses
  %i.dxf = getelementptr i8, ptr %next.gep1425, i64 32
  %i.dxg = getelementptr i8, ptr %next.gep1425, i64 64
  %i.dxh = getelementptr i8, ptr %next.gep1425, i64 96
  %wide.load1427 = load <16 x i16>, ptr %next.gep1425, align 2, !tbaa !24
  %wide.load1428 = load <16 x i16>, ptr %i.dxf, align 2, !tbaa !24
  %wide.load1429 = load <16 x i16>, ptr %i.dxg, align 2, !tbaa !24
  %wide.load1430 = load <16 x i16>, ptr %i.dxh, align 2, !tbaa !24
  %i.dxi = zext <16 x i16> %wide.load1427 to <16 x i32>
  %i.dxj = zext <16 x i16> %wide.load1428 to <16 x i32>
  %i.dxk = zext <16 x i16> %wide.load1429 to <16 x i32>
  %i.dxl = zext <16 x i16> %wide.load1430 to <16 x i32>
  %i.dxm = shl nuw <16 x i32> %i.dxi, splat (i32 16)
  %i.dxn = shl nuw <16 x i32> %i.dxj, splat (i32 16)
  %i.dxo = shl nuw <16 x i32> %i.dxk, splat (i32 16)
  %i.dxp = shl nuw <16 x i32> %i.dxl, splat (i32 16)
  %i.dxq = bitcast <16 x i32> %i.dxm to <16 x float>
  %i.dxr = bitcast <16 x i32> %i.dxn to <16 x float>
  %i.dxs = bitcast <16 x i32> %i.dxo to <16 x float>
  %i.dxt = bitcast <16 x i32> %i.dxp to <16 x float>
  %i.dxu = getelementptr i8, ptr %next.gep1426, i64 32
  %i.dxv = getelementptr i8, ptr %next.gep1426, i64 64
  %i.dxw = getelementptr i8, ptr %next.gep1426, i64 96
  %wide.load1431 = load <16 x i16>, ptr %next.gep1426, align 2, !tbaa !24
  %wide.load1432 = load <16 x i16>, ptr %i.dxu, align 2, !tbaa !24
  %wide.load1433 = load <16 x i16>, ptr %i.dxv, align 2, !tbaa !24
  %wide.load1434 = load <16 x i16>, ptr %i.dxw, align 2, !tbaa !24
  %i.dxx = zext <16 x i16> %wide.load1431 to <16 x i32>
  %i.dxy = zext <16 x i16> %wide.load1432 to <16 x i32>
  %i.dxz = zext <16 x i16> %wide.load1433 to <16 x i32>
  %i.dya = zext <16 x i16> %wide.load1434 to <16 x i32>
  %i.dyb = shl nuw <16 x i32> %i.dxx, splat (i32 16)
  %i.dyc = shl nuw <16 x i32> %i.dxy, splat (i32 16)
  %i.dyd = shl nuw <16 x i32> %i.dxz, splat (i32 16)
  %i.dye = shl nuw <16 x i32> %i.dya, splat (i32 16)
  %i.dyf = bitcast <16 x i32> %i.dyb to <16 x float>
  %i.dyg = bitcast <16 x i32> %i.dyc to <16 x float>
  %i.dyh = bitcast <16 x i32> %i.dyd to <16 x float>
  %i.dyi = bitcast <16 x i32> %i.dye to <16 x float>
  %i.dyj = fmul fast <16 x float> %i.dyf, %i.dxq
  %i.dyk = fmul fast <16 x float> %i.dyg, %i.dxr
  %i.dyl = fmul fast <16 x float> %i.dyh, %i.dxs
  %i.dym = fmul fast <16 x float> %i.dyi, %i.dxt
  %i.dyn = fadd fast <16 x float> %i.dyj, %vec.phi1421 ; 2 uses
  %i.dyo = fadd fast <16 x float> %i.dyk, %vec.phi1422 ; 2 uses
  %i.dyp = fadd fast <16 x float> %i.dyl, %vec.phi1423 ; 2 uses
  %i.dyq = fadd fast <16 x float> %i.dym, %vec.phi1424 ; 2 uses
  %index.next1435 = add nuw i64 %index1420, 64    ; 2 uses
  %i.dyr = icmp eq i64 %index.next1435, %n.vec1418
  br i1 %i.dyr, label %middle.block1436, label %vector.body1419, !llvm.loop !454

middle.block1436:                                 ; preds = %vector.body1419
  %bin.rdx1437 = fadd fast <16 x float> %i.dyo, %i.dyn
  %bin.rdx1438 = fadd fast <16 x float> %i.dyp, %bin.rdx1437
  %bin.rdx1439 = fadd fast <16 x float> %i.dyq, %bin.rdx1438
  %i.dys = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1439) ; 3 uses
  %cmp.n1440 = icmp eq i64 %i.dww, %n.vec1418
  br i1 %cmp.n1440, label %._crit_edge1411.i, label %vec.epilog.iter.check1447

vec.epilog.iter.check1447:                        ; preds = %middle.block1436
  %min.epilog.iters.check1448 = icmp eq i64 %i.dwx, 0
  br i1 %min.epilog.iters.check1448, label %.lr.ph1410.i.preheader, label %vec.epilog.ph1449, !prof !26

vec.epilog.ph1449:                                ; preds = %vector.main.loop.iter.check1415, %vec.epilog.iter.check1447
  %vec.epilog.resume.val1441 = phi i64 [ %n.vec1418, %vec.epilog.iter.check1447 ], [ 0, %vector.main.loop.iter.check1415 ]
  %bc.merge.rdx1442 = phi float [ %i.dys, %vec.epilog.iter.check1447 ], [ %.11395.lcssa.i, %vector.main.loop.iter.check1415 ]
  %n.vec1450 = and i64 %i.dww, 8589934584         ; 4 uses
  %i.dyt = trunc i64 %n.vec1450 to i32
  %i.dyu = add i32 %.01391.lcssa.i, %i.dyt
  %i.dyv = shl nuw nsw i64 %n.vec1450, 1          ; 2 uses
  %i.dyw = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.dyv
  %i.dyx = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.dyv ; 2 uses
  %i.dyy = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1442, i64 0
  br label %vec.epilog.vector.body1451

vec.epilog.vector.body1451:                       ; preds = %vec.epilog.vector.body1451, %vec.epilog.ph1449
  %index1452 = phi i64 [ %vec.epilog.resume.val1441, %vec.epilog.ph1449 ], [ %index.next1458, %vec.epilog.vector.body1451 ] ; 2 uses
  %vec.phi1453 = phi <8 x float> [ %i.dyy, %vec.epilog.ph1449 ], [ %i.dzh, %vec.epilog.vector.body1451 ]
  %i.dyz = shl i64 %index1452, 1                  ; 2 uses
  %next.gep1454 = getelementptr i8, ptr %.01397.lcssa.i, i64 %i.dyz
  %next.gep1455 = getelementptr i8, ptr %.171559.lcssa.i, i64 %i.dyz
  %wide.load1456 = load <8 x i16>, ptr %next.gep1454, align 2, !tbaa !24
  %i.dza = zext <8 x i16> %wide.load1456 to <8 x i32>
  %i.dzb = shl nuw <8 x i32> %i.dza, splat (i32 16)
  %i.dzc = bitcast <8 x i32> %i.dzb to <8 x float>
  %wide.load1457 = load <8 x i16>, ptr %next.gep1455, align 2, !tbaa !24
  %i.dzd = zext <8 x i16> %wide.load1457 to <8 x i32>
  %i.dze = shl nuw <8 x i32> %i.dzd, splat (i32 16)
  %i.dzf = bitcast <8 x i32> %i.dze to <8 x float>
  %i.dzg = fmul fast <8 x float> %i.dzf, %i.dzc
  %i.dzh = fadd fast <8 x float> %i.dzg, %vec.phi1453 ; 2 uses
  %index.next1458 = add nuw i64 %index1452, 8     ; 2 uses
  %i.dzi = icmp eq i64 %index.next1458, %n.vec1450
  br i1 %i.dzi, label %vec.epilog.middle.block1459, label %vec.epilog.vector.body1451, !llvm.loop !455

vec.epilog.middle.block1459:                      ; preds = %vec.epilog.vector.body1451
  %i.dzj = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dzh) ; 2 uses
  %cmp.n1460 = icmp eq i64 %i.dww, %n.vec1450
  br i1 %cmp.n1460, label %._crit_edge1411.i, label %.lr.ph1410.i.preheader

.lr.ph1410.i.preheader:                           ; preds = %iter.check1445, %vec.epilog.iter.check1447, %vec.epilog.middle.block1459
  %.213931408.i.ph = phi i32 [ %.01391.lcssa.i, %iter.check1445 ], [ %i.dwz, %vec.epilog.iter.check1447 ], [ %i.dyu, %vec.epilog.middle.block1459 ]
  %.213961407.i.ph = phi float [ %.11395.lcssa.i, %iter.check1445 ], [ %i.dys, %vec.epilog.iter.check1447 ], [ %i.dzj, %vec.epilog.middle.block1459 ]
  %.213991406.i.ph = phi ptr [ %.01397.lcssa.i, %iter.check1445 ], [ %i.dxb, %vec.epilog.iter.check1447 ], [ %i.dyw, %vec.epilog.middle.block1459 ]
  %.1915611405.i.ph = phi ptr [ %.171559.lcssa.i, %iter.check1445 ], [ %i.dxc, %vec.epilog.iter.check1447 ], [ %i.dyx, %vec.epilog.middle.block1459 ]
  br label %.lr.ph1410.i

.lr.ph1384.i:                                     ; preds = %.lr.ph1384.i.preheader, %.lr.ph1384.i
  %.013911382.i = phi i32 [ %i.dzz, %.lr.ph1384.i ], [ %.013911382.i.ph, %.lr.ph1384.i.preheader ]
  %.113951381.i = phi float [ %i.dzw, %.lr.ph1384.i ], [ %.113951381.i.ph, %.lr.ph1384.i.preheader ]
  %.013971380.i = phi ptr [ %i.dzx, %.lr.ph1384.i ], [ %.013971380.i.ph, %.lr.ph1384.i.preheader ] ; 2 uses
  %.1715591379.i = phi ptr [ %i.dzy, %.lr.ph1384.i ], [ %.1715591379.i.ph, %.lr.ph1384.i.preheader ] ; 2 uses
  %i.dzk = load <2 x i16>, ptr %.013971380.i, align 2, !tbaa !24
  %i.dzl = zext <2 x i16> %i.dzk to <2 x i32>
  %i.dzm = shl nuw <2 x i32> %i.dzl, splat (i32 16)
  %i.dzn = bitcast <2 x i32> %i.dzm to <2 x float>
  %i.dzo = load <2 x i16>, ptr %.1715591379.i, align 2, !tbaa !24
  %i.dzp = zext <2 x i16> %i.dzo to <2 x i32>
  %i.dzq = shl nuw <2 x i32> %i.dzp, splat (i32 16)
  %i.dzr = bitcast <2 x i32> %i.dzq to <2 x float>
  %i.dzs = fmul fast <2 x float> %i.dzr, %i.dzn   ; 2 uses
  %i.dzt = extractelement <2 x float> %i.dzs, i64 0
  %i.dzu = fadd fast float %.113951381.i, %i.dzt
  %i.dzv = extractelement <2 x float> %i.dzs, i64 1
  %i.dzw = fadd fast float %i.dzu, %i.dzv         ; 2 uses
  %i.dzx = getelementptr inbounds nuw i8, ptr %.013971380.i, i64 4
  %i.dzy = getelementptr inbounds nuw i8, ptr %.1715591379.i, i64 4
  %i.dzz = add nuw nsw i32 %.013911382.i, 2       ; 2 uses
  %i.eaa = or disjoint i32 %i.dzz, 1
  %i.eab = icmp slt i32 %i.eaa, %8
  br i1 %i.eab, label %.lr.ph1384.i, label %.preheader.loopexit.i, !llvm.loop !456

.lr.ph1410.i:                                     ; preds = %.lr.ph1410.i.preheader, %.lr.ph1410.i
  %.213931408.i = phi i32 [ %i.eao, %.lr.ph1410.i ], [ %.213931408.i.ph, %.lr.ph1410.i.preheader ]
  %.213961407.i = phi float [ %i.eal, %.lr.ph1410.i ], [ %.213961407.i.ph, %.lr.ph1410.i.preheader ]
  %.213991406.i = phi ptr [ %i.eam, %.lr.ph1410.i ], [ %.213991406.i.ph, %.lr.ph1410.i.preheader ] ; 2 uses
  %.1915611405.i = phi ptr [ %i.ean, %.lr.ph1410.i ], [ %.1915611405.i.ph, %.lr.ph1410.i.preheader ] ; 2 uses
  %i.eac = load i16, ptr %.213991406.i, align 2, !tbaa !24
  %i.ead = zext i16 %i.eac to i32
  %i.eae = shl nuw i32 %i.ead, 16
  %i.eaf = bitcast i32 %i.eae to float
  %i.eag = load i16, ptr %.1915611405.i, align 2, !tbaa !24
  %i.eah = zext i16 %i.eag to i32
  %i.eai = shl nuw i32 %i.eah, 16
  %i.eaj = bitcast i32 %i.eai to float
  %i.eak = fmul fast float %i.eaj, %i.eaf
  %i.eal = fadd fast float %i.eak, %.213961407.i  ; 2 uses
  %i.eam = getelementptr inbounds nuw i8, ptr %.213991406.i, i64 2
  %i.ean = getelementptr inbounds nuw i8, ptr %.1915611405.i, i64 2 ; 2 uses
  %i.eao = add nuw nsw i32 %.213931408.i, 1       ; 2 uses
  %exitcond1807.not.i = icmp eq i32 %i.eao, %8
  br i1 %exitcond1807.not.i, label %._crit_edge1411.i, label %.lr.ph1410.i, !llvm.loop !457

._crit_edge1411.i:                                ; preds = %.lr.ph1410.i, %middle.block1436, %vec.epilog.middle.block1459, %.preheader.i
  %.191561.lcssa.i = phi ptr [ %.171559.lcssa.i, %.preheader.i ], [ %i.dyx, %vec.epilog.middle.block1459 ], [ %i.dxc, %middle.block1436 ], [ %i.ean, %.lr.ph1410.i ]
  %.21396.lcssa.i = phi float [ %.11395.lcssa.i, %.preheader.i ], [ %i.dzj, %vec.epilog.middle.block1459 ], [ %i.dys, %middle.block1436 ], [ %i.eal, %.lr.ph1410.i ]
  store float %.21396.lcssa.i, ptr %.291419.i, align 4, !tbaa !464
  %i.eap = getelementptr inbounds nuw i8, ptr %.291419.i, i64 4 ; 2 uses
  %i.eaq = add nuw nsw i32 %.415411418.i, 1       ; 2 uses
  %exitcond1808.not.i = icmp eq i32 %i.eaq, %6
  br i1 %exitcond1808.not.i, label %._crit_edge1421.i, label %.lr.ph1420.i, !llvm.loop !458

._crit_edge1421.i:                                ; preds = %._crit_edge1411.i, %.preheader377.i
  %.29.lcssa.i = phi ptr [ %.28.lcssa.i, %.preheader377.i ], [ %i.eap, %._crit_edge1411.i ]
  %i.ear = getelementptr inbounds [2 x i8], ptr %.41425.i, i64 %i.bje
  %i.eas = add nuw nsw i32 %.413901423.i, 1       ; 2 uses
  %exitcond1809.not.i = icmp eq i32 %i.eas, %4
  %scevgep556 = getelementptr i8, ptr %indvars.iv555, i64 %i.bjt
  br i1 %exitcond1809.not.i, label %_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii.exit, label %.preheader381.i, !llvm.loop !459

_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %._crit_edge1421.i, %.preheader382.i
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTSN4ncnn9AllocatorE", !9, i64 0}
!13 = !{!"_ZTSN4ncnn3MatE", !9, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !11, i64 64}
!14 = !{!13, !9, i64 0}
!15 = !{!13, !6, i64 24}
!16 = !{!13, !6, i64 40}
!17 = !{!5, !5, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 8, i32 24}
!23 = !{!"short", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"branch_weights", i32 4, i32 28}
!26 = !{!"branch_weights", i32 8, i32 56}
!27 = !{!"branch_weights", i32 16, i32 112}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !18, !20, !21}
!40 = distinct !{!40, !18, !20}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !18, !20, !21}
!52 = distinct !{!52, !18, !20, !21}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !18, !20}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !56}
!61 = distinct !{!61, !56}
!62 = distinct !{!62, !18, !20, !21}
!63 = distinct !{!63, !18, !20, !21}
!64 = distinct !{!64, !18, !20}
!65 = distinct !{!65, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !65}
!69 = distinct !{!69, !65}
!70 = distinct !{!70, !65}
!71 = distinct !{!71, !18, !20, !21}
!72 = distinct !{!72, !18, !20, !21}
!73 = distinct !{!73, !18, !20}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !"LVerDomain"}
!78 = distinct !{!78, !77}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !77}
!81 = distinct !{!81, !18, !20, !21}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !18, !20}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !18}
!88 = distinct !{!88, !18}
!89 = distinct !{!89, !18}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !18, !20, !21}
!95 = distinct !{!95, !18, !20, !21}
!96 = distinct !{!96, !18, !20}
!97 = distinct !{!97, !18, !20}
!98 = distinct !{!98, !18}
!99 = distinct !{!99, !"LVerDomain"}
!100 = distinct !{!100, !99}
!101 = distinct !{!101, !99}
!102 = distinct !{!102, !99}
!103 = distinct !{!103, !18, !20, !21}
!104 = distinct !{!104, !18, !20, !21}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !"LVerDomain"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !106}
!110 = distinct !{!110, !18, !20, !21}
!111 = distinct !{!111, !18, !20}
!112 = distinct !{!112, !"LVerDomain"}
!113 = distinct !{!113, !112}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !18, !20, !21}
!116 = distinct !{!116, !18, !20, !21}
!117 = distinct !{!117, !18, !20, !21}
!118 = distinct !{!118, !18, !20, !21}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !18, !20}
!121 = distinct !{!121, !18, !20}
!122 = distinct !{!122, !18}
!123 = !{!34}
!124 = !{!35}
!125 = !{!36}
!126 = !{!37}
!127 = !{!38}
!128 = !{!37, !36, !35, !34}
!129 = !{!57}
!130 = !{!58}
!131 = !{!59}
!132 = !{!60}
!133 = !{!61}
!134 = !{!60, !59, !58, !57}
!135 = !{!66}
!136 = !{!67}
!137 = !{!68}
!138 = !{!69}
!139 = !{!70}
!140 = !{!69, !68, !67, !66}
!141 = !{!78}
!142 = !{!79}
!143 = !{!80}
!144 = !{!79, !78}
!145 = !{!91}
!146 = !{!92}
!147 = !{!93}
!148 = !{!92, !91}
!149 = !{!100}
!150 = !{!101}
!151 = !{!102}
!152 = !{!101, !100}
!153 = !{!107}
!154 = !{!108}
!155 = !{!109}
!156 = !{!108, !107}
!157 = !{!113}
!158 = !{!114}
!159 = distinct !{!159, !18}
!160 = distinct !{!160, !19}
!161 = distinct !{!161, !18}
!162 = distinct !{!162, !18}
!163 = distinct !{!163, !18}
!164 = distinct !{!164, !18}
end_hunk_4
