Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx2?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.aap = sext <8 x i8> %i.aao to <8 x i16>
  %i.aaq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aam, <8 x i16> %i.aap)
  %i.aar = add <4 x i32> %i.aaq, %.epil.init1282
  br label %.preheader1230.loopexit.i

.preheader1230.loopexit.i:                        ; preds = %.preheader1230.loopexit.i.unr-lcssa, %.lr.ph1512.i.epil.preheader
  %.lcssa1201 = phi <4 x i32> [ %i.ace, %.preheader1230.loopexit.i.unr-lcssa ], [ %i.aar, %.lr.ph1512.i.epil.preheader ]
  %i.aas = getelementptr i8, ptr %.98791525.i, i64 %i.at
  %scevgep2002.i = getelementptr i8, ptr %i.aas, i64 2
  br label %.preheader1230.i

.preheader1230.i:                                 ; preds = %.preheader1230.loopexit.i, %bb.u
  %.lcssa1278.i = phi <4 x i32> [ %i.aai, %bb.u ], [ %.lcssa1201, %.preheader1230.loopexit.i ] ; 3 uses
  %.0904.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.am, %.preheader1230.loopexit.i ] ; 5 uses
  %.0902.lcssa.i = phi ptr [ %.17771532.i, %bb.u ], [ %indvars.iv1998.i, %.preheader1230.loopexit.i ] ; 3 uses
  %.10880.lcssa.i = phi ptr [ %.98791525.i, %bb.u ], [ %scevgep2002.i, %.preheader1230.loopexit.i ] ; 4 uses
  %i.aat = icmp slt i32 %.0904.lcssa.i, %8
  br i1 %i.aat, label %.lr.ph1520.i.preheader, label %._crit_edge1521.i

.lr.ph1520.i.preheader:                           ; preds = %.preheader1230.i
  %i.aau = sub i32 %8, %.0904.lcssa.i
  %.neg1342 = add i32 %.0904.lcssa.i, 1
  %xtraiter1288 = and i32 %i.aau, 1
  %lcmp.mod1289.not = icmp eq i32 %xtraiter1288, 0
  br i1 %lcmp.mod1289.not, label %.lr.ph1520.i.prol.loopexit, label %.lr.ph1520.i.prol

.lr.ph1520.i.prol:                                ; preds = %.lr.ph1520.i.preheader
  %i.aav = load <8 x i8>, ptr %.0902.lcssa.i, align 1, !tbaa !17
  %i.aaw = load i8, ptr %.10880.lcssa.i, align 1, !tbaa !17
  %i.aax = sext i8 %i.aaw to i16
  %i.aay = insertelement <8 x i16> poison, i16 %i.aax, i64 0
  %i.aaz = shufflevector <8 x i16> %i.aay, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aba = sext <8 x i8> %i.aav to <8 x i16>      ; 2 uses
  %i.abb = mul <8 x i16> %i.aaz, %i.aba
  %i.abc = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.aba, <8 x i16> %i.aaz)
  %i.abd = shufflevector <8 x i16> %i.abb, <8 x i16> %i.abc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abe = bitcast <8 x i16> %i.abd to <4 x i32>
  %i.abf = add <4 x i32> %.lcssa1278.i, %i.abe    ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.0902.lcssa.i, i64 4
  %i.abh = getelementptr inbounds nuw i8, ptr %.10880.lcssa.i, i64 1 ; 2 uses
  %i.abi = add nuw nsw i32 %.0904.lcssa.i, 1
  br label %.lr.ph1520.i.prol.loopexit

.lr.ph1520.i.prol.loopexit:                       ; preds = %.lr.ph1520.i.prol, %.lr.ph1520.i.preheader
  %.lcssa1203.unr = phi <4 x i32> [ poison, %.lr.ph1520.i.preheader ], [ %i.abf, %.lr.ph1520.i.prol ]
  %.lcssa1202.unr = phi ptr [ poison, %.lr.ph1520.i.preheader ], [ %i.abh, %.lr.ph1520.i.prol ]
  %.118811519.i.unr = phi ptr [ %.10880.lcssa.i, %.lr.ph1520.i.preheader ], [ %i.abh, %.lr.ph1520.i.prol ]
  %.19031518.i.unr = phi ptr [ %.0902.lcssa.i, %.lr.ph1520.i.preheader ], [ %i.abg, %.lr.ph1520.i.prol ]
  %.19051517.i.unr = phi i32 [ %.0904.lcssa.i, %.lr.ph1520.i.preheader ], [ %i.abi, %.lr.ph1520.i.prol ]
  %.unr1290 = phi <4 x i32> [ %.lcssa1278.i, %.lr.ph1520.i.preheader ], [ %i.abf, %.lr.ph1520.i.prol ]
  %i.abj = icmp eq i32 %8, %.neg1342
  br i1 %i.abj, label %._crit_edge1521.i, label %.lr.ph1520.i

.lr.ph1512.i:                                     ; preds = %.lr.ph1512.i.preheader, %.lr.ph1512.i
  %.108801510.i = phi ptr [ %i.acg, %.lr.ph1512.i ], [ %.98791525.i, %.lr.ph1512.i.preheader ] ; 3 uses
  %.09021509.i = phi ptr [ %i.acf, %.lr.ph1512.i ], [ %.17771532.i, %.lr.ph1512.i.preheader ] ; 3 uses
  %i.abk = phi <4 x i32> [ %i.ace, %.lr.ph1512.i ], [ %i.aai, %.lr.ph1512.i.preheader ]
  %niter1287 = phi i32 [ %niter1287.next.1, %.lr.ph1512.i ], [ 0, %.lr.ph1512.i.preheader ]
  %i.abl = load <8 x i8>, ptr %.09021509.i, align 1, !tbaa !17
  %i.abm = load i16, ptr %.108801510.i, align 2, !tbaa !276
  %i.abn = insertelement <8 x i16> poison, i16 %i.abm, i64 0
  %i.abo = sext <8 x i8> %i.abl to <8 x i16>
  %i.abp = bitcast <8 x i16> %i.abn to <16 x i8>
  %i.abq = shufflevector <16 x i8> %i.abp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.abr = sext <8 x i8> %i.abq to <8 x i16>
  %i.abs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.abo, <8 x i16> %i.abr)
  %i.abt = add <4 x i32> %i.abs, %i.abk
  %i.abu = getelementptr inbounds nuw i8, ptr %.09021509.i, i64 8
  %i.abv = getelementptr inbounds nuw i8, ptr %.108801510.i, i64 2
  %i.abw = load <8 x i8>, ptr %i.abu, align 1, !tbaa !17
  %i.abx = load i16, ptr %i.abv, align 2, !tbaa !276
  %i.aby = insertelement <8 x i16> poison, i16 %i.abx, i64 0
  %i.abz = sext <8 x i8> %i.abw to <8 x i16>
  %i.aca = bitcast <8 x i16> %i.aby to <16 x i8>
  %i.acb = shufflevector <16 x i8> %i.aca, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.acc = sext <8 x i8> %i.acb to <8 x i16>
  %i.acd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.abz, <8 x i16> %i.acc)
  %i.ace = add <4 x i32> %i.acd, %i.abt           ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.09021509.i, i64 16 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.108801510.i, i64 4 ; 2 uses
  %niter1287.next.1 = add nuw nsw i32 %niter1287, 2 ; 2 uses
  %niter1287.ncmp.1.not = icmp eq i32 %niter1287.next.1, %unroll_iter1286
  br i1 %niter1287.ncmp.1.not, label %.preheader1230.loopexit.i.unr-lcssa, label %.lr.ph1512.i, !llvm.loop !294

.lr.ph1520.i:                                     ; preds = %.lr.ph1520.i.prol.loopexit, %.lr.ph1520.i
  %.118811519.i = phi ptr [ %i.adh, %.lr.ph1520.i ], [ %.118811519.i.unr, %.lr.ph1520.i.prol.loopexit ] ; 3 uses
  %.19031518.i = phi ptr [ %i.adg, %.lr.ph1520.i ], [ %.19031518.i.unr, %.lr.ph1520.i.prol.loopexit ] ; 3 uses
  %.19051517.i = phi i32 [ %i.adi, %.lr.ph1520.i ], [ %.19051517.i.unr, %.lr.ph1520.i.prol.loopexit ]
  %i.ach = phi <4 x i32> [ %i.adf, %.lr.ph1520.i ], [ %.unr1290, %.lr.ph1520.i.prol.loopexit ]
  %i.aci = load <8 x i8>, ptr %.19031518.i, align 1, !tbaa !17
  %i.acj = load i8, ptr %.118811519.i, align 1, !tbaa !17
  %i.ack = sext i8 %i.acj to i16
  %i.acl = insertelement <8 x i16> poison, i16 %i.ack, i64 0
  %i.acm = shufflevector <8 x i16> %i.acl, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.acn = sext <8 x i8> %i.aci to <8 x i16>      ; 2 uses
  %i.aco = mul <8 x i16> %i.acm, %i.acn
  %i.acp = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.acn, <8 x i16> %i.acm)
  %i.acq = shufflevector <8 x i16> %i.aco, <8 x i16> %i.acp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acr = bitcast <8 x i16> %i.acq to <4 x i32>
  %i.acs = add <4 x i32> %i.ach, %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %.19031518.i, i64 4
  %i.acu = getelementptr inbounds nuw i8, ptr %.118811519.i, i64 1
  %i.acv = load <8 x i8>, ptr %i.act, align 1, !tbaa !17
  %i.acw = load i8, ptr %i.acu, align 1, !tbaa !17
  %i.acx = sext i8 %i.acw to i16
  %i.acy = insertelement <8 x i16> poison, i16 %i.acx, i64 0
  %i.acz = shufflevector <8 x i16> %i.acy, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ada = sext <8 x i8> %i.acv to <8 x i16>      ; 2 uses
  %i.adb = mul <8 x i16> %i.acz, %i.ada
  %i.adc = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ada, <8 x i16> %i.acz)
  %i.add = shufflevector <8 x i16> %i.adb, <8 x i16> %i.adc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ade = bitcast <8 x i16> %i.add to <4 x i32>
  %i.adf = add <4 x i32> %i.acs, %i.ade           ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %.19031518.i, i64 8
  %i.adh = getelementptr inbounds nuw i8, ptr %.118811519.i, i64 2 ; 2 uses
  %i.adi = add nuw nsw i32 %.19051517.i, 2        ; 2 uses
  %exitcond2003.not.i.1 = icmp eq i32 %i.adi, %8
  br i1 %exitcond2003.not.i.1, label %._crit_edge1521.i, label %.lr.ph1520.i, !llvm.loop !295

._crit_edge1521.i:                                ; preds = %.lr.ph1520.i.prol.loopexit, %.lr.ph1520.i, %.preheader1230.i
  %.lcssa1279.i = phi <4 x i32> [ %.lcssa1278.i, %.preheader1230.i ], [ %.lcssa1203.unr, %.lr.ph1520.i.prol.loopexit ], [ %i.adf, %.lr.ph1520.i ]
  %.11881.lcssa.i = phi ptr [ %.10880.lcssa.i, %.preheader1230.i ], [ %.lcssa1202.unr, %.lr.ph1520.i.prol.loopexit ], [ %i.adh, %.lr.ph1520.i ]
  store <4 x i32> %.lcssa1279.i, ptr %.91526.i, align 16, !tbaa !17
  %i.adj = getelementptr inbounds nuw i8, ptr %.91526.i, i64 16 ; 2 uses
  %i.adk = add nuw nsw i32 %.38851524.i, 1        ; 2 uses
  %exitcond2004.not.i = icmp eq i32 %i.adk, %6
  br i1 %exitcond2004.not.i, label %._crit_edge1528.i, label %.lr.ph1527.i, !llvm.loop !296

._crit_edge1528.i:                                ; preds = %._crit_edge1521.i, %.preheader1234.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader1234.i ], [ %i.adj, %._crit_edge1521.i ] ; 2 uses
  %i.adl = getelementptr inbounds i8, ptr %.17771532.i, i64 %i.aj ; 2 uses
  %i.adm = add nuw nsw i32 %.17841530.i, 4        ; 3 uses
  %i.adn = or disjoint i32 %i.adm, 3
  %i.ado = icmp slt i32 %i.adn, %4
  %scevgep1999.i = getelementptr i8, ptr %indvars.iv1998.i, i64 %i.aj
  br i1 %i.ado, label %.preheader1237.i, label %.preheader1229.i, !llvm.loop !297

.preheader1228.i:                                 ; preds = %._crit_edge1649.i, %.preheader1228.lr.ph.i
  %indvars.iv2009.i = phi ptr [ %scevgep2008.i, %.preheader1228.lr.ph.i ], [ %scevgep2010.i, %._crit_edge1649.i ] ; 4 uses
  %.27781653.i = phi ptr [ %.1777.lcssa.i, %.preheader1228.lr.ph.i ], [ %i.ayk, %._crit_edge1649.i ] ; 18 uses
  %.101652.i = phi ptr [ %.5.lcssa.i, %.preheader1228.lr.ph.i ], [ %.14.lcssa.i, %._crit_edge1649.i ] ; 2 uses
  %.27851651.i = phi i32 [ %.1784.lcssa.i, %.preheader1228.lr.ph.i ], [ %i.ayl, %._crit_edge1649.i ]
  br i1 %i.pz, label %.lr.ph1557.i, label %.preheader1227.i

.preheader1220.i:                                 ; preds = %._crit_edge1649.i, %.preheader1229.i
  %.2785.lcssa.i = phi i32 [ %.1784.lcssa.i, %.preheader1229.i ], [ %i.ayl, %._crit_edge1649.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader1229.i ], [ %.14.lcssa.i, %._crit_edge1649.i ]
  %.2778.lcssa.i = phi ptr [ %.1777.lcssa.i, %.preheader1229.i ], [ %i.ayk, %._crit_edge1649.i ] ; 2 uses
  %i.adp = icmp slt i32 %.2785.lcssa.i, %4
  br i1 %i.adp, label %.preheader1219.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader1219.lr.ph.i:                           ; preds = %.preheader1220.i
  %i.adq = icmp sgt i32 %6, 7
  %i.adr = icmp eq i32 %7, 0                      ; 4 uses
  %i.ads = icmp sgt i32 %8, 1                     ; 3 uses
  %i.adt = icmp sgt i32 %8, 3
  %i.adu = sext i32 %8 to i64                     ; 2 uses
  %i.adv = add i32 %8, -2                         ; 4 uses
  %i.adw = and i32 %i.adv, -2
  %i.adx = add i32 %i.adw, 2                      ; 3 uses
  %i.ady = and i32 %6, -8
  %i.adz = zext i32 %i.adv to i64                 ; 2 uses
  %i.aea = lshr i64 %i.adz, 1                     ; 4 uses
  %i.aeb = shl nuw nsw i64 %i.aea, 3
  %i.aec = and i64 %i.adz, 4294967294
  %i.aed = getelementptr i8, ptr %.2778.lcssa.i, i64 %i.aec
  %scevgep2019.i = getelementptr i8, ptr %i.aed, i64 2
  %i.aee = shl nuw nsw i64 %i.aea, 2
  %i.aef = and i32 %8, -4                         ; 2 uses
  %i.aeg = shl nuw nsw i64 %i.aea, 4
  %i.aeh = add nuw nsw i64 %i.aea, 1              ; 5 uses
  %i.aei = add i32 %8, -2                         ; 3 uses
  %i.aej = lshr i32 %i.aei, 1                     ; 3 uses
  %i.aek = add nuw i32 %i.aej, 1                  ; 4 uses
  %i.ael = icmp eq i32 %i.aej, 0
  %unroll_iter1325 = and i32 %i.aek, -2
  %i.aem = and i32 %i.aei, 2
  %lcmp.mod1321.not.not = icmp eq i32 %i.aem, 0
  %lcmp.mod1324 = trunc i32 %i.aek to i1
  %i.aen = icmp eq i32 %i.aej, 0
  %unroll_iter1336 = and i32 %i.aek, -2
  %i.aeo = and i32 %i.aei, 2
  %lcmp.mod1333.not.not = icmp eq i32 %i.aeo, 0
  %lcmp.mod1335 = trunc i32 %i.aek to i1
  %min.iters.check981 = icmp ult i32 %i.adv, 6
  %min.iters.check983 = icmp ult i32 %i.adv, 30
  %i.aep = and i64 %i.aeh, 12
  %n.vec985 = and i64 %i.aeh, 4294967280          ; 6 uses
  %i.aeq = trunc nuw i64 %n.vec985 to i32
  %i.aer = shl i32 %i.aeq, 1
  %i.aes = shl nuw nsw i64 %n.vec985, 1
  %i.aet = shl nuw nsw i64 %n.vec985, 2
  %cmp.n1016 = icmp eq i64 %i.aeh, %n.vec985
  %min.epilog.iters.check1026 = icmp eq i64 %i.aep, 0
  %n.vec1028 = and i64 %i.aeh, 4294967292         ; 5 uses
  %i.aeu = trunc nuw i64 %n.vec1028 to i32
  %i.aev = shl i32 %i.aeu, 1
  %i.aew = shl nuw nsw i64 %n.vec1028, 1
  %i.aex = shl nuw nsw i64 %n.vec1028, 2
  %cmp.n1045 = icmp eq i64 %i.aeh, %n.vec1028
  %i.aey = add nsw i32 %8, -4                     ; 2 uses
  %i.aez = lshr i32 %i.aey, 2
  %narrow1051 = add nuw nsw i32 %i.aez, 1
  %i.afa = zext nneg i32 %narrow1051 to i64       ; 2 uses
  %min.iters.check849 = icmp ult i32 %i.aey, 28
  %n.vec851 = and i64 %i.afa, 2147483640          ; 4 uses
  %i.afb = trunc nuw nsw i64 %n.vec851 to i32
  %i.afc = shl i32 %i.afb, 2
  %i.afd = shl nuw nsw i64 %n.vec851, 2           ; 2 uses
  %cmp.n872 = icmp eq i64 %n.vec851, %i.afa
  br label %.preheader1219.i

.preheader1227.i:                                 ; preds = %._crit_edge1550.i, %.preheader1228.i
  %.0918.lcssa.i = phi i32 [ 0, %.preheader1228.i ], [ %i.qh, %._crit_edge1550.i ] ; 3 uses
  %.0906.lcssa.i = phi ptr [ %i.d, %.preheader1228.i ], [ %.2908.lcssa.i, %._crit_edge1550.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.101652.i, %.preheader1228.i ], [ %i.ajh, %._crit_edge1550.i ] ; 2 uses
  %i.afe = or disjoint i32 %.0918.lcssa.i, 3
  %i.aff = icmp slt i32 %i.afe, %6
  br i1 %i.aff, label %.lr.ph1582.i, label %.preheader1226.i

.lr.ph1557.i:                                     ; preds = %.preheader1228.i, %._crit_edge1550.i
  %.111556.i = phi ptr [ %i.ajh, %._crit_edge1550.i ], [ %.101652.i, %.preheader1228.i ] ; 5 uses
  %.09061555.i = phi ptr [ %.2908.lcssa.i, %._crit_edge1550.i ], [ %i.d, %.preheader1228.i ] ; 4 uses
  %.09181554.i = phi i32 [ %i.aji, %._crit_edge1550.i ], [ 0, %.preheader1228.i ]
  br i1 %i.qa, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph1557.i
  %i.afg = load <8 x i32>, ptr %.111556.i, align 1, !tbaa !17
  %i.afh = getelementptr inbounds nuw i8, ptr %.111556.i, i64 32
  %i.afi = load <8 x i32>, ptr %i.afh, align 1, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph1557.i
  %i.afj = phi <8 x i32> [ %i.afg, %bb.v ], [ zeroinitializer, %.lr.ph1557.i ] ; 3 uses
  %i.afk = phi <8 x i32> [ %i.afi, %bb.v ], [ zeroinitializer, %.lr.ph1557.i ] ; 3 uses
  br i1 %i.qb, label %.lr.ph1540.i.preheader, label %.preheader1224.i

.lr.ph1540.i.preheader:                           ; preds = %bb.w
  br i1 %i.qt, label %.lr.ph1540.i.epil.preheader, label %.lr.ph1540.i

.preheader1224.i.loopexit.unr-lcssa:              ; preds = %.lr.ph1540.i
  br i1 %lcmp.mod1296.not.not, label %.lr.ph1540.i.epil.preheader, label %.preheader1224.i.loopexit

.lr.ph1540.i.epil.preheader:                      ; preds = %.preheader1224.i.loopexit.unr-lcssa, %.lr.ph1540.i.preheader
  %.19071538.i.epil.init = phi ptr [ %.09061555.i, %.lr.ph1540.i.preheader ], [ %i.ahw, %.preheader1224.i.loopexit.unr-lcssa ]
  %.09221537.i.epil.init = phi ptr [ %.27781653.i, %.lr.ph1540.i.preheader ], [ %i.ahv, %.preheader1224.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init1293 = phi <8 x i32> [ %i.afk, %.lr.ph1540.i.preheader ], [ %i.ahu, %.preheader1224.i.loopexit.unr-lcssa ]
  %.epil.init1295 = phi <8 x i32> [ %i.afj, %.lr.ph1540.i.preheader ], [ %i.ahr, %.preheader1224.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1300)
  %i.afl = load float, ptr %.09221537.i.epil.init, align 1, !tbaa !17
  %i.afm = insertelement <4 x float> poison, float %i.afl, i64 0
  %i.afn = load <16 x i8>, ptr %.19071538.i.epil.init, align 1, !tbaa !17
  %i.afo = bitcast <4 x float> %i.afm to <16 x i8>
  %i.afp = shufflevector <16 x i8> %i.afo, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.afq = sext <16 x i8> %i.afp to <16 x i16>    ; 2 uses
  %i.afr = sext <16 x i8> %i.afn to <16 x i16>    ; 2 uses
  %i.afs = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.afq, <16 x i16> %i.afr)
  %i.aft = add <8 x i32> %i.afs, %.epil.init1295
  %i.afu = shufflevector <16 x i16> %i.afq, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.afv = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.afu, <16 x i16> %i.afr)
  %i.afw = add <8 x i32> %i.afv, %.epil.init1293
  %i.afx = getelementptr inbounds nuw i8, ptr %.09221537.i.epil.init, i64 4
  br label %.preheader1224.i.loopexit

.preheader1224.i.loopexit:                        ; preds = %.preheader1224.i.loopexit.unr-lcssa, %.lr.ph1540.i.epil.preheader
  %.lcssa1121 = phi <8 x i32> [ %i.ahr, %.preheader1224.i.loopexit.unr-lcssa ], [ %i.aft, %.lr.ph1540.i.epil.preheader ]
  %.lcssa1120 = phi <8 x i32> [ %i.ahu, %.preheader1224.i.loopexit.unr-lcssa ], [ %i.afw, %.lr.ph1540.i.epil.preheader ]
  %.lcssa1119 = phi ptr [ %i.ahv, %.preheader1224.i.loopexit.unr-lcssa ], [ %i.afx, %.lr.ph1540.i.epil.preheader ]
  %i.afy = getelementptr i8, ptr %.09061555.i, i64 %i.qo
  %scevgep317 = getelementptr i8, ptr %i.afy, i64 16
  br label %.preheader1224.i

.preheader1224.i:                                 ; preds = %.preheader1224.i.loopexit, %bb.w
  %.lcssa1251.i = phi <8 x i32> [ %i.afj, %bb.w ], [ %.lcssa1121, %.preheader1224.i.loopexit ] ; 3 uses
  %.lcssa1250.i = phi <8 x i32> [ %i.afk, %bb.w ], [ %.lcssa1120, %.preheader1224.i.loopexit ] ; 3 uses
  %.0924.lcssa.i = phi i32 [ 0, %bb.w ], [ %i.qg, %.preheader1224.i.loopexit ] ; 5 uses
  %.0922.lcssa.i = phi ptr [ %.27781653.i, %bb.w ], [ %.lcssa1119, %.preheader1224.i.loopexit ] ; 3 uses
  %.1907.lcssa.i = phi ptr [ %.09061555.i, %bb.w ], [ %scevgep317, %.preheader1224.i.loopexit ] ; 4 uses
  %i.afz = icmp slt i32 %.0924.lcssa.i, %8
  br i1 %i.afz, label %.lr.ph1549.i.preheader, label %._crit_edge1550.i

.lr.ph1549.i.preheader:                           ; preds = %.preheader1224.i
  %i.aga = sub i32 %8, %.0924.lcssa.i
  %.neg1343 = add i32 %.0924.lcssa.i, 1
  %xtraiter1303 = and i32 %i.aga, 1
  %lcmp.mod1304.not = icmp eq i32 %xtraiter1303, 0
  br i1 %lcmp.mod1304.not, label %.lr.ph1549.i.prol.loopexit, label %.lr.ph1549.i.prol

.lr.ph1549.i.prol:                                ; preds = %.lr.ph1549.i.preheader
  %i.agb = load i16, ptr %.0922.lcssa.i, align 2, !tbaa !276
  %i.agc = insertelement <8 x i16> poison, i16 %i.agb, i64 0
  %i.agd = load <8 x i8>, ptr %.1907.lcssa.i, align 1, !tbaa !17
  %i.age = bitcast <8 x i16> %i.agc to <16 x i8>
  %i.agf = shufflevector <16 x i8> %i.age, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.agg = sext <8 x i8> %i.agf to <8 x i16>      ; 2 uses
  %i.agh = sext <8 x i8> %i.agd to <8 x i16>      ; 2 uses
  %i.agi = shufflevector <8 x i16> %i.agg, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.agj = mul nsw <8 x i16> %i.agg, %i.agh
  %i.agk = sext <8 x i16> %i.agj to <8 x i32>
  %i.agl = mul nsw <8 x i16> %i.agi, %i.agh
  %i.agm = sext <8 x i16> %i.agl to <8 x i32>
  %i.agn = add <8 x i32> %.lcssa1251.i, %i.agk    ; 2 uses
  %i.ago = add <8 x i32> %.lcssa1250.i, %i.agm    ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.0922.lcssa.i, i64 2
  %i.agq = getelementptr inbounds nuw i8, ptr %.1907.lcssa.i, i64 8 ; 2 uses
  %i.agr = add nuw nsw i32 %.0924.lcssa.i, 1
  br label %.lr.ph1549.i.prol.loopexit

.lr.ph1549.i.prol.loopexit:                       ; preds = %.lr.ph1549.i.prol, %.lr.ph1549.i.preheader
  %.lcssa1124.unr = phi <8 x i32> [ poison, %.lr.ph1549.i.preheader ], [ %i.agn, %.lr.ph1549.i.prol ]
  %.lcssa1123.unr = phi <8 x i32> [ poison, %.lr.ph1549.i.preheader ], [ %i.ago, %.lr.ph1549.i.prol ]
  %.lcssa1122.unr = phi ptr [ poison, %.lr.ph1549.i.preheader ], [ %i.agq, %.lr.ph1549.i.prol ]
  %.29081548.i.unr = phi ptr [ %.1907.lcssa.i, %.lr.ph1549.i.preheader ], [ %i.agq, %.lr.ph1549.i.prol ]
  %.19231547.i.unr = phi ptr [ %.0922.lcssa.i, %.lr.ph1549.i.preheader ], [ %i.agp, %.lr.ph1549.i.prol ]
  %.19251546.i.unr = phi i32 [ %.0924.lcssa.i, %.lr.ph1549.i.preheader ], [ %i.agr, %.lr.ph1549.i.prol ]
  %.unr1305 = phi <8 x i32> [ %.lcssa1250.i, %.lr.ph1549.i.preheader ], [ %i.ago, %.lr.ph1549.i.prol ]
  %.unr1306 = phi <8 x i32> [ %.lcssa1251.i, %.lr.ph1549.i.preheader ], [ %i.agn, %.lr.ph1549.i.prol ]
  %i.ags = icmp eq i32 %8, %.neg1343
  br i1 %i.ags, label %._crit_edge1550.i, label %.lr.ph1549.i

.lr.ph1540.i:                                     ; preds = %.lr.ph1540.i.preheader, %.lr.ph1540.i
  %.19071538.i = phi ptr [ %i.ahw, %.lr.ph1540.i ], [ %.09061555.i, %.lr.ph1540.i.preheader ] ; 3 uses
  %.09221537.i = phi ptr [ %i.ahv, %.lr.ph1540.i ], [ %.27781653.i, %.lr.ph1540.i.preheader ] ; 3 uses
  %i.agt = phi <8 x i32> [ %i.ahu, %.lr.ph1540.i ], [ %i.afk, %.lr.ph1540.i.preheader ]
  %i.agu = phi <8 x i32> [ %i.ahr, %.lr.ph1540.i ], [ %i.afj, %.lr.ph1540.i.preheader ]
  %niter1302 = phi i32 [ %niter1302.next.1, %.lr.ph1540.i ], [ 0, %.lr.ph1540.i.preheader ]
  %i.agv = load float, ptr %.09221537.i, align 1, !tbaa !17
  %i.agw = insertelement <4 x float> poison, float %i.agv, i64 0
  %i.agx = load <16 x i8>, ptr %.19071538.i, align 1, !tbaa !17
  %i.agy = bitcast <4 x float> %i.agw to <16 x i8>
  %i.agz = shufflevector <16 x i8> %i.agy, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aha = sext <16 x i8> %i.agz to <16 x i16>    ; 2 uses
  %i.ahb = sext <16 x i8> %i.agx to <16 x i16>    ; 2 uses
  %i.ahc = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aha, <16 x i16> %i.ahb)
  %i.ahd = add <8 x i32> %i.ahc, %i.agu
  %i.ahe = shufflevector <16 x i16> %i.aha, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.ahf = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ahe, <16 x i16> %i.ahb)
  %i.ahg = add <8 x i32> %i.ahf, %i.agt
  %i.ahh = getelementptr inbounds nuw i8, ptr %.09221537.i, i64 4
  %i.ahi = getelementptr inbounds nuw i8, ptr %.19071538.i, i64 16
  %i.ahj = load float, ptr %i.ahh, align 1, !tbaa !17
  %i.ahk = insertelement <4 x float> poison, float %i.ahj, i64 0
  %i.ahl = load <16 x i8>, ptr %i.ahi, align 1, !tbaa !17
  %i.ahm = bitcast <4 x float> %i.ahk to <16 x i8>
  %i.ahn = shufflevector <16 x i8> %i.ahm, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aho = sext <16 x i8> %i.ahn to <16 x i16>    ; 2 uses
  %i.ahp = sext <16 x i8> %i.ahl to <16 x i16>    ; 2 uses
  %i.ahq = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aho, <16 x i16> %i.ahp)
  %i.ahr = add <8 x i32> %i.ahq, %i.ahd           ; 3 uses
  %i.ahs = shufflevector <16 x i16> %i.aho, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9>
  %i.aht = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ahs, <16 x i16> %i.ahp)
  %i.ahu = add <8 x i32> %i.aht, %i.ahg           ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %.09221537.i, i64 8 ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.19071538.i, i64 32 ; 2 uses
  %niter1302.next.1 = add nuw nsw i32 %niter1302, 2 ; 2 uses
  %niter1302.ncmp.1.not = icmp eq i32 %niter1302.next.1, %unroll_iter1301
  br i1 %niter1302.ncmp.1.not, label %.preheader1224.i.loopexit.unr-lcssa, label %.lr.ph1540.i, !llvm.loop !298

.lr.ph1549.i:                                     ; preds = %.lr.ph1549.i.prol.loopexit, %.lr.ph1549.i
  %.29081548.i = phi ptr [ %i.aje, %.lr.ph1549.i ], [ %.29081548.i.unr, %.lr.ph1549.i.prol.loopexit ] ; 3 uses
  %.19231547.i = phi ptr [ %i.ajd, %.lr.ph1549.i ], [ %.19231547.i.unr, %.lr.ph1549.i.prol.loopexit ] ; 3 uses
  %.19251546.i = phi i32 [ %i.ajf, %.lr.ph1549.i ], [ %.19251546.i.unr, %.lr.ph1549.i.prol.loopexit ]
  %i.ahx = phi <8 x i32> [ %i.ajc, %.lr.ph1549.i ], [ %.unr1305, %.lr.ph1549.i.prol.loopexit ]
  %i.ahy = phi <8 x i32> [ %i.ajb, %.lr.ph1549.i ], [ %.unr1306, %.lr.ph1549.i.prol.loopexit ]
  %i.ahz = load i16, ptr %.19231547.i, align 2, !tbaa !276
  %i.aia = insertelement <8 x i16> poison, i16 %i.ahz, i64 0
  %i.aib = load <8 x i8>, ptr %.29081548.i, align 1, !tbaa !17
  %i.aic = bitcast <8 x i16> %i.aia to <16 x i8>
  %i.aid = shufflevector <16 x i8> %i.aic, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aie = sext <8 x i8> %i.aid to <8 x i16>      ; 2 uses
  %i.aif = sext <8 x i8> %i.aib to <8 x i16>      ; 2 uses
  %i.aig = shufflevector <8 x i16> %i.aie, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.aih = mul nsw <8 x i16> %i.aie, %i.aif
  %i.aii = sext <8 x i16> %i.aih to <8 x i32>
  %i.aij = mul nsw <8 x i16> %i.aig, %i.aif
  %i.aik = sext <8 x i16> %i.aij to <8 x i32>
  %i.ail = add <8 x i32> %i.ahy, %i.aii
  %i.aim = add <8 x i32> %i.ahx, %i.aik
  %i.ain = getelementptr inbounds nuw i8, ptr %.19231547.i, i64 2
  %i.aio = getelementptr inbounds nuw i8, ptr %.29081548.i, i64 8
  %i.aip = load i16, ptr %i.ain, align 2, !tbaa !276
  %i.aiq = insertelement <8 x i16> poison, i16 %i.aip, i64 0
  %i.air = load <8 x i8>, ptr %i.aio, align 1, !tbaa !17
  %i.ais = bitcast <8 x i16> %i.aiq to <16 x i8>
  %i.ait = shufflevector <16 x i8> %i.ais, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aiu = sext <8 x i8> %i.ait to <8 x i16>      ; 2 uses
  %i.aiv = sext <8 x i8> %i.air to <8 x i16>      ; 2 uses
  %i.aiw = shufflevector <8 x i16> %i.aiu, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.aix = mul nsw <8 x i16> %i.aiu, %i.aiv
  %i.aiy = sext <8 x i16> %i.aix to <8 x i32>
  %i.aiz = mul nsw <8 x i16> %i.aiw, %i.aiv
  %i.aja = sext <8 x i16> %i.aiz to <8 x i32>
  %i.ajb = add <8 x i32> %i.ail, %i.aiy           ; 2 uses
  %i.ajc = add <8 x i32> %i.aim, %i.aja           ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.19231547.i, i64 4
  %i.aje = getelementptr inbounds nuw i8, ptr %.29081548.i, i64 16 ; 2 uses
  %i.ajf = add nuw nsw i32 %.19251546.i, 2        ; 2 uses
  %exitcond2005.not.i.1 = icmp eq i32 %i.ajf, %8
  br i1 %exitcond2005.not.i.1, label %._crit_edge1550.i, label %.lr.ph1549.i, !llvm.loop !299

end_hunk_0
begin_hunk_1_@_ZN4ncnn33gemm_transB_packed_tile_int8_avx2ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.beq = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.bem, <8 x i16> %i.beo)
  %i.ber = shufflevector <8 x i16> %i.bep, <8 x i16> %i.beq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bes = bitcast <8 x i16> %i.ber to <4 x i32>
  %i.bet = add <4 x i32> %i.beg, %i.bes           ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %.18061690.i, i64 2
  %i.bev = getelementptr inbounds nuw i8, ptr %.58301689.i, i64 8 ; 2 uses
  %i.bew = add nuw nsw i32 %.18041691.i, 2        ; 2 uses
  %exitcond2018.not.i.1 = icmp eq i32 %i.bew, %8
  br i1 %exitcond2018.not.i.1, label %._crit_edge1693.i, label %.lr.ph1692.i, !llvm.loop !322

._crit_edge1693.i:                                ; preds = %.lr.ph1692.i.prol.loopexit, %.lr.ph1692.i, %.preheader1214.i
  %.lcssa1249.i = phi <4 x i32> [ %.lcssa1248.i, %.preheader1214.i ], [ %.lcssa1061.unr, %.lr.ph1692.i.prol.loopexit ], [ %i.bet, %.lr.ph1692.i ]
  %.5830.lcssa.i = phi ptr [ %.4829.lcssa.i, %.preheader1214.i ], [ %.lcssa1060.unr, %.lr.ph1692.i.prol.loopexit ], [ %i.bev, %.lr.ph1692.i ] ; 2 uses
  store <4 x i32> %.lcssa1249.i, ptr %.171698.i, align 1, !tbaa !17
  %i.bex = getelementptr inbounds nuw i8, ptr %.171698.i, i64 16 ; 2 uses
  %i.bey = add nuw nsw i32 %.18221697.i, 4        ; 3 uses
  %i.bez = or disjoint i32 %i.bey, 3
  %i.bfa = icmp slt i32 %i.bez, %6
  br i1 %i.bfa, label %.lr.ph1699.i, label %.preheader1217.i, !llvm.loop !323

.preheader1216.i:                                 ; preds = %._crit_edge1746.i, %.preheader1217.i
  %.6831.lcssa.i = phi ptr [ %.3828.lcssa.i, %.preheader1217.i ], [ %.9834.lcssa.i, %._crit_edge1746.i ]
  %.2823.lcssa.i = phi i32 [ %.1822.lcssa.i, %.preheader1217.i ], [ %i.bwa, %._crit_edge1746.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.17.lcssa.i, %.preheader1217.i ], [ %i.bvz, %._crit_edge1746.i ] ; 2 uses
  %i.bfb = icmp slt i32 %.2823.lcssa.i, %6
  br i1 %i.bfb, label %.lr.ph1786.i.preheader, label %._crit_edge1787.i

.lr.ph1786.i.preheader:                           ; preds = %.preheader1216.i
  %i.bfc = getelementptr i8, ptr %.31791.i, i64 %i.afd ; 2 uses
  br label %.lr.ph1786.i

.lr.ph1753.i:                                     ; preds = %.lr.ph1753.i.preheader, %._crit_edge1746.i
  %.181752.i = phi ptr [ %i.bvz, %._crit_edge1746.i ], [ %.17.lcssa.i, %.lr.ph1753.i.preheader ] ; 5 uses
  %.28231751.i = phi i32 [ %i.bwa, %._crit_edge1746.i ], [ %.1822.lcssa.i, %.lr.ph1753.i.preheader ]
  %.68311750.i = phi ptr [ %.9834.lcssa.i, %._crit_edge1746.i ], [ %.3828.lcssa.i, %.lr.ph1753.i.preheader ] ; 8 uses
  br i1 %i.adr, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph1753.i
  %i.bfd = load i32, ptr %.181752.i, align 4, !tbaa !135
  %i.bfe = getelementptr inbounds nuw i8, ptr %.181752.i, i64 4
  %i.bff = load i32, ptr %i.bfe, align 4, !tbaa !135
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph1753.i
  %.0773.i = phi i32 [ %i.bfd, %bb.ah ], [ 0, %.lr.ph1753.i ] ; 4 uses
  %.0770.i = phi i32 [ %i.bff, %bb.ah ], [ 0, %.lr.ph1753.i ] ; 4 uses
  br i1 %i.ads, label %iter.check1023, label %.preheader.i

iter.check1023:                                   ; preds = %bb.ai
  br i1 %min.iters.check981, label %.lr.ph1709.i.preheader, label %vector.main.loop.iter.check982

vector.main.loop.iter.check982:                   ; preds = %iter.check1023
  br i1 %min.iters.check983, label %vec.epilog.ph1027, label %vector.ph984

vector.ph984:                                     ; preds = %vector.main.loop.iter.check982
  %i.bfg = getelementptr i8, ptr %.68311750.i, i64 %i.aet
  %i.bfh = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0770.i, i64 0
  %i.bfi = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0773.i, i64 0
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %vector.ph984
  %index987 = phi i64 [ 0, %vector.ph984 ], [ %index.next1012, %vector.body986 ] ; 3 uses
  %vec.phi988 = phi <8 x i32> [ %i.bfh, %vector.ph984 ], [ %i.bgn, %vector.body986 ]
  %vec.phi989 = phi <8 x i32> [ zeroinitializer, %vector.ph984 ], [ %i.bgo, %vector.body986 ]
  %vec.phi990 = phi <8 x i32> [ %i.bfi, %vector.ph984 ], [ %i.bgb, %vector.body986 ]
  %vec.phi991 = phi <8 x i32> [ zeroinitializer, %vector.ph984 ], [ %i.bgc, %vector.body986 ]
  %i.bfj = shl i64 %index987, 1                   ; 2 uses
  %next.gep992 = getelementptr i8, ptr %.31791.i, i64 %i.bfj
  %i.bfk = getelementptr i8, ptr %.31791.i, i64 %i.bfj
  %next.gep993 = getelementptr i8, ptr %i.bfk, i64 16
  %i.bfl = shl i64 %index987, 2                   ; 2 uses
  %next.gep994 = getelementptr i8, ptr %.68311750.i, i64 %i.bfl
  %i.bfm = getelementptr i8, ptr %.68311750.i, i64 %i.bfl
  %next.gep995 = getelementptr i8, ptr %i.bfm, i64 32
  %wide.vec996 = load <16 x i8>, ptr %next.gep992, align 1, !tbaa !17 ; 2 uses
  %strided.vec997 = shufflevector <16 x i8> %wide.vec996, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec998 = shufflevector <16 x i8> %wide.vec996, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec999 = load <16 x i8>, ptr %next.gep993, align 1, !tbaa !17 ; 2 uses
  %strided.vec1000 = shufflevector <16 x i8> %wide.vec999, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1001 = shufflevector <16 x i8> %wide.vec999, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bfn = sext <8 x i8> %strided.vec997 to <8 x i32> ; 2 uses
  %i.bfo = sext <8 x i8> %strided.vec1000 to <8 x i32> ; 2 uses
  %wide.vec1002 = load <32 x i8>, ptr %next.gep994, align 1, !tbaa !17 ; 4 uses
  %strided.vec1003 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1004 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1005 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1006 = shufflevector <32 x i8> %wide.vec1002, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec1007 = load <32 x i8>, ptr %next.gep995, align 1, !tbaa !17 ; 4 uses
  %strided.vec1008 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1009 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1010 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1011 = shufflevector <32 x i8> %wide.vec1007, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bfp = sext <8 x i8> %strided.vec1003 to <8 x i32>
  %i.bfq = sext <8 x i8> %strided.vec1008 to <8 x i32>
  %i.bfr = mul nsw <8 x i32> %i.bfp, %i.bfn
  %i.bfs = mul nsw <8 x i32> %i.bfq, %i.bfo
  %i.bft = add <8 x i32> %i.bfr, %vec.phi990
  %i.bfu = add <8 x i32> %i.bfs, %vec.phi991
  %i.bfv = sext <8 x i8> %strided.vec998 to <8 x i32> ; 2 uses
  %i.bfw = sext <8 x i8> %strided.vec1001 to <8 x i32> ; 2 uses
  %i.bfx = sext <8 x i8> %strided.vec1004 to <8 x i32>
  %i.bfy = sext <8 x i8> %strided.vec1009 to <8 x i32>
  %i.bfz = mul nsw <8 x i32> %i.bfx, %i.bfv
  %i.bga = mul nsw <8 x i32> %i.bfy, %i.bfw
  %i.bgb = add <8 x i32> %i.bft, %i.bfz           ; 2 uses
  %i.bgc = add <8 x i32> %i.bfu, %i.bga           ; 2 uses
  %i.bgd = sext <8 x i8> %strided.vec1005 to <8 x i32>
  %i.bge = sext <8 x i8> %strided.vec1010 to <8 x i32>
  %i.bgf = mul nsw <8 x i32> %i.bgd, %i.bfn
  %i.bgg = mul nsw <8 x i32> %i.bge, %i.bfo
  %i.bgh = add <8 x i32> %i.bgf, %vec.phi988
  %i.bgi = add <8 x i32> %i.bgg, %vec.phi989
  %i.bgj = sext <8 x i8> %strided.vec1006 to <8 x i32>
  %i.bgk = sext <8 x i8> %strided.vec1011 to <8 x i32>
  %i.bgl = mul nsw <8 x i32> %i.bgj, %i.bfv
  %i.bgm = mul nsw <8 x i32> %i.bgk, %i.bfw
  %i.bgn = add <8 x i32> %i.bgh, %i.bgl           ; 2 uses
  %i.bgo = add <8 x i32> %i.bgi, %i.bgm           ; 2 uses
  %index.next1012 = add nuw i64 %index987, 16     ; 2 uses
  %i.bgp = icmp eq i64 %index.next1012, %n.vec985
  br i1 %i.bgp, label %middle.block1013, label %vector.body986, !llvm.loop !324

middle.block1013:                                 ; preds = %vector.body986
  %bin.rdx1014 = add <8 x i32> %i.bgo, %i.bgn
  %i.bgq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1014) ; 3 uses
  %bin.rdx1015 = add <8 x i32> %i.bgc, %i.bgb
  %i.bgr = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1015) ; 3 uses
  br i1 %cmp.n1016, label %.preheader.loopexit.i, label %vec.epilog.iter.check1025

vec.epilog.iter.check1025:                        ; preds = %middle.block1013
  br i1 %min.epilog.iters.check1026, label %.lr.ph1709.i.preheader, label %vec.epilog.ph1027, !prof !310

vec.epilog.ph1027:                                ; preds = %vector.main.loop.iter.check982, %vec.epilog.iter.check1025
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec985, %vec.epilog.iter.check1025 ], [ 0, %vector.main.loop.iter.check982 ]
  %bc.merge.rdx1020 = phi i32 [ %i.bgq, %vec.epilog.iter.check1025 ], [ %.0770.i, %vector.main.loop.iter.check982 ]
  %bc.merge.rdx1021 = phi i32 [ %i.bgr, %vec.epilog.iter.check1025 ], [ %.0773.i, %vector.main.loop.iter.check982 ]
  %i.bgs = getelementptr i8, ptr %.68311750.i, i64 %i.aex
  %i.bgt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1020, i64 0
  %i.bgu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1021, i64 0
  br label %vec.epilog.vector.body1029

vec.epilog.vector.body1029:                       ; preds = %vec.epilog.vector.body1029, %vec.epilog.ph1027
  %index1030 = phi i64 [ %vec.epilog.resume.val1017, %vec.epilog.ph1027 ], [ %index.next1043, %vec.epilog.vector.body1029 ] ; 3 uses
  %vec.phi1031 = phi <4 x i32> [ %i.bgt, %vec.epilog.ph1027 ], [ %i.bhk, %vec.epilog.vector.body1029 ]
  %vec.phi1032 = phi <4 x i32> [ %i.bgu, %vec.epilog.ph1027 ], [ %i.bhe, %vec.epilog.vector.body1029 ]
  %i.bgv = shl i64 %index1030, 1
  %next.gep1033 = getelementptr i8, ptr %.31791.i, i64 %i.bgv
  %i.bgw = shl i64 %index1030, 2
  %next.gep1034 = getelementptr i8, ptr %.68311750.i, i64 %i.bgw
  %wide.vec1035 = load <8 x i8>, ptr %next.gep1033, align 1, !tbaa !17 ; 2 uses
  %strided.vec1036 = shufflevector <8 x i8> %wide.vec1035, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1037 = shufflevector <8 x i8> %wide.vec1035, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bgx = sext <4 x i8> %strided.vec1036 to <4 x i32> ; 2 uses
  %wide.vec1038 = load <16 x i8>, ptr %next.gep1034, align 1, !tbaa !17 ; 4 uses
  %strided.vec1039 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1040 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec1041 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec1042 = shufflevector <16 x i8> %wide.vec1038, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.bgy = sext <4 x i8> %strided.vec1039 to <4 x i32>
  %i.bgz = mul nsw <4 x i32> %i.bgy, %i.bgx
  %i.bha = add <4 x i32> %i.bgz, %vec.phi1032
  %i.bhb = sext <4 x i8> %strided.vec1037 to <4 x i32> ; 2 uses
  %i.bhc = sext <4 x i8> %strided.vec1040 to <4 x i32>
  %i.bhd = mul nsw <4 x i32> %i.bhc, %i.bhb
  %i.bhe = add <4 x i32> %i.bha, %i.bhd           ; 2 uses
  %i.bhf = sext <4 x i8> %strided.vec1041 to <4 x i32>
  %i.bhg = mul nsw <4 x i32> %i.bhf, %i.bgx
  %i.bhh = add <4 x i32> %i.bhg, %vec.phi1031
  %i.bhi = sext <4 x i8> %strided.vec1042 to <4 x i32>
  %i.bhj = mul nsw <4 x i32> %i.bhi, %i.bhb
  %i.bhk = add <4 x i32> %i.bhh, %i.bhj           ; 2 uses
  %index.next1043 = add nuw i64 %index1030, 4     ; 2 uses
  %i.bhl = icmp eq i64 %index.next1043, %n.vec1028
  br i1 %i.bhl, label %vec.epilog.middle.block1044, label %vec.epilog.vector.body1029, !llvm.loop !325

vec.epilog.middle.block1044:                      ; preds = %vec.epilog.vector.body1029
  %i.bhm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bhk) ; 2 uses
  %i.bhn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bhe) ; 2 uses
  br i1 %cmp.n1045, label %.preheader.loopexit.i, label %.lr.ph1709.i.preheader

.lr.ph1709.i.preheader:                           ; preds = %iter.check1023, %vec.epilog.iter.check1025, %vec.epilog.middle.block1044
  %.07651707.i.ph = phi i32 [ 0, %iter.check1023 ], [ %i.aer, %vec.epilog.iter.check1025 ], [ %i.aev, %vec.epilog.middle.block1044 ]
  %.07671706.i.ph = phi ptr [ %.31791.i, %iter.check1023 ], [ %i.bbt, %vec.epilog.iter.check1025 ], [ %i.bbu, %vec.epilog.middle.block1044 ]
  %.17711705.i.ph = phi i32 [ %.0770.i, %iter.check1023 ], [ %i.bgq, %vec.epilog.iter.check1025 ], [ %i.bhm, %vec.epilog.middle.block1044 ]
  %.17741704.i.ph = phi i32 [ %.0773.i, %iter.check1023 ], [ %i.bgr, %vec.epilog.iter.check1025 ], [ %i.bhn, %vec.epilog.middle.block1044 ]
  %.78321703.i.ph = phi ptr [ %.68311750.i, %iter.check1023 ], [ %i.bfg, %vec.epilog.iter.check1025 ], [ %i.bgs, %vec.epilog.middle.block1044 ]
  br label %.lr.ph1709.i

.preheader.loopexit.i:                            ; preds = %.lr.ph1709.i, %vec.epilog.middle.block1044, %middle.block1013
  %.lcssa500 = phi i32 [ %i.bhn, %vec.epilog.middle.block1044 ], [ %i.bgr, %middle.block1013 ], [ %i.brs, %.lr.ph1709.i ]
  %.lcssa499 = phi i32 [ %i.bhm, %vec.epilog.middle.block1044 ], [ %i.bgq, %middle.block1013 ], [ %i.bsc, %.lr.ph1709.i ]
  %i.bho = getelementptr i8, ptr %.68311750.i, i64 %i.aee
  %scevgep2022.i = getelementptr i8, ptr %i.bho, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ai
  %.7832.lcssa.i = phi ptr [ %.68311750.i, %bb.ai ], [ %scevgep2022.i, %.preheader.loopexit.i ] ; 11 uses
  %.1774.lcssa.i = phi i32 [ %.0773.i, %bb.ai ], [ %.lcssa500, %.preheader.loopexit.i ]
  %.1771.lcssa.i = phi i32 [ %.0770.i, %bb.ai ], [ %.lcssa499, %.preheader.loopexit.i ]
  %.0767.lcssa.i = phi ptr [ %.31791.i, %bb.ai ], [ %indvars.iv2020.i, %.preheader.loopexit.i ] ; 4 uses
  %.0765.lcssa.i = phi i32 [ 0, %bb.ai ], [ %i.adx, %.preheader.loopexit.i ] ; 6 uses
  %i.bhp = add nuw nsw i32 %.0765.lcssa.i, 3
  %i.bhq = icmp slt i32 %i.bhp, %8
  br i1 %i.bhq, label %.lr.ph1726.i.preheader, label %._crit_edge1727.i

.lr.ph1726.i.preheader:                           ; preds = %.preheader.i
  %9 = add i32 %.0765.lcssa.i, 7
  %10 = tail call i32 @llvm.smax.i32(i32 %8, i32 %9)
  %11 = add i32 %10, -4
  %i.bhr = sub i32 %11, %.0765.lcssa.i            ; 2 uses
  %i.bhs = lshr i32 %i.bhr, 2
  %narrow = add nuw nsw i32 %i.bhs, 1
  %i.bht = zext nneg i32 %narrow to i64           ; 2 uses
  %min.iters.check939 = icmp ult i32 %i.bhr, 28
  br i1 %min.iters.check939, label %.lr.ph1726.i.preheader1053, label %vector.ph940

vector.ph940:                                     ; preds = %.lr.ph1726.i.preheader
  %n.vec941 = and i64 %i.bht, 2147483640          ; 5 uses
  %i.bhu = trunc nuw nsw i64 %n.vec941 to i32
  %i.bhv = shl i32 %i.bhu, 2
  %i.bhw = add i32 %.0765.lcssa.i, %i.bhv         ; 2 uses
  %i.bhx = shl nuw nsw i64 %n.vec941, 2
  %i.bhy = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.bhx ; 2 uses
  %i.bhz = shl nuw nsw i64 %n.vec941, 3
  %i.bia = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bhz ; 2 uses
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph940
  %index943 = phi i64 [ 0, %vector.ph940 ], [ %index.next966, %vector.body942 ] ; 3 uses
  %vec.phi944 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bqn, %vector.body942 ]
  %vec.phi945 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bok, %vector.body942 ]
  %vec.phi946 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bmh, %vector.body942 ]
  %vec.phi947 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bke, %vector.body942 ]
  %vec.phi948 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bpm, %vector.body942 ]
  %vec.phi949 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bnj, %vector.body942 ]
  %vec.phi950 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.blg, %vector.body942 ]
  %vec.phi951 = phi <8 x i32> [ zeroinitializer, %vector.ph940 ], [ %i.bjd, %vector.body942 ]
  %i.bib = shl i64 %index943, 2
  %next.gep952 = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.bib
  %i.bic = shl i64 %index943, 3                   ; 8 uses
  %next.gep953 = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bic ; 8 uses
  %i.bid = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bic ; 8 uses
  %next.gep954 = getelementptr i8, ptr %i.bid, i64 8
  %i.bie = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bic ; 8 uses
  %next.gep955 = getelementptr i8, ptr %i.bie, i64 16
  %i.bif = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bic ; 8 uses
  %next.gep956 = getelementptr i8, ptr %i.bif, i64 24
  %i.big = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bic ; 8 uses
  %next.gep957 = getelementptr i8, ptr %i.big, i64 32
  %i.bih = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bic ; 8 uses
  %next.gep958 = getelementptr i8, ptr %i.bih, i64 40
  %i.bii = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bic ; 8 uses
  %next.gep959 = getelementptr i8, ptr %i.bii, i64 48
  %i.bij = getelementptr i8, ptr %.7832.lcssa.i, i64 %i.bic ; 8 uses
  %next.gep960 = getelementptr i8, ptr %i.bij, i64 56
  %wide.vec961 = load <32 x i8>, ptr %next.gep952, align 1, !tbaa !17 ; 4 uses
  %strided.vec962 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec963 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec964 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec965 = shufflevector <32 x i8> %wide.vec961, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bik = sext <8 x i8> %strided.vec962 to <8 x i32> ; 2 uses
  %i.bil = load i8, ptr %next.gep953, align 1, !tbaa !17
  %i.bim = load i8, ptr %next.gep954, align 1, !tbaa !17
  %i.bin = load i8, ptr %next.gep955, align 1, !tbaa !17
  %i.bio = load i8, ptr %next.gep956, align 1, !tbaa !17
  %i.bip = load i8, ptr %next.gep957, align 1, !tbaa !17
  %i.biq = load i8, ptr %next.gep958, align 1, !tbaa !17
  %i.bir = load i8, ptr %next.gep959, align 1, !tbaa !17
  %i.bis = load i8, ptr %next.gep960, align 1, !tbaa !17
  %i.bit = insertelement <8 x i8> poison, i8 %i.bil, i64 0
  %i.biu = insertelement <8 x i8> %i.bit, i8 %i.bim, i64 1
  %i.biv = insertelement <8 x i8> %i.biu, i8 %i.bin, i64 2
  %i.biw = insertelement <8 x i8> %i.biv, i8 %i.bio, i64 3
  %i.bix = insertelement <8 x i8> %i.biw, i8 %i.bip, i64 4
  %i.biy = insertelement <8 x i8> %i.bix, i8 %i.biq, i64 5
  %i.biz = insertelement <8 x i8> %i.biy, i8 %i.bir, i64 6
  %i.bja = insertelement <8 x i8> %i.biz, i8 %i.bis, i64 7
  %i.bjb = sext <8 x i8> %i.bja to <8 x i32>
  %i.bjc = mul nsw <8 x i32> %i.bjb, %i.bik
  %i.bjd = add <8 x i32> %i.bjc, %vec.phi951      ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %next.gep953, i64 1
  %i.bjf = getelementptr i8, ptr %i.bid, i64 9
  %i.bjg = getelementptr i8, ptr %i.bie, i64 17
  %i.bjh = getelementptr i8, ptr %i.bif, i64 25
  %i.bji = getelementptr i8, ptr %i.big, i64 33
  %i.bjj = getelementptr i8, ptr %i.bih, i64 41
  %i.bjk = getelementptr i8, ptr %i.bii, i64 49
  %i.bjl = getelementptr i8, ptr %i.bij, i64 57
  %i.bjm = load i8, ptr %i.bje, align 1, !tbaa !17
  %i.bjn = load i8, ptr %i.bjf, align 1, !tbaa !17
  %i.bjo = load i8, ptr %i.bjg, align 1, !tbaa !17
  %i.bjp = load i8, ptr %i.bjh, align 1, !tbaa !17
  %i.bjq = load i8, ptr %i.bji, align 1, !tbaa !17
  %i.bjr = load i8, ptr %i.bjj, align 1, !tbaa !17
  %i.bjs = load i8, ptr %i.bjk, align 1, !tbaa !17
  %i.bjt = load i8, ptr %i.bjl, align 1, !tbaa !17
  %i.bju = insertelement <8 x i8> poison, i8 %i.bjm, i64 0
  %i.bjv = insertelement <8 x i8> %i.bju, i8 %i.bjn, i64 1
  %i.bjw = insertelement <8 x i8> %i.bjv, i8 %i.bjo, i64 2
  %i.bjx = insertelement <8 x i8> %i.bjw, i8 %i.bjp, i64 3
  %i.bjy = insertelement <8 x i8> %i.bjx, i8 %i.bjq, i64 4
  %i.bjz = insertelement <8 x i8> %i.bjy, i8 %i.bjr, i64 5
  %i.bka = insertelement <8 x i8> %i.bjz, i8 %i.bjs, i64 6
  %i.bkb = insertelement <8 x i8> %i.bka, i8 %i.bjt, i64 7
  %i.bkc = sext <8 x i8> %i.bkb to <8 x i32>
  %i.bkd = mul nsw <8 x i32> %i.bkc, %i.bik
  %i.bke = add <8 x i32> %i.bkd, %vec.phi947      ; 2 uses
  %i.bkf = sext <8 x i8> %strided.vec963 to <8 x i32> ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %next.gep953, i64 2
  %i.bkh = getelementptr i8, ptr %i.bid, i64 10
  %i.bki = getelementptr i8, ptr %i.bie, i64 18
  %i.bkj = getelementptr i8, ptr %i.bif, i64 26
  %i.bkk = getelementptr i8, ptr %i.big, i64 34
  %i.bkl = getelementptr i8, ptr %i.bih, i64 42
  %i.bkm = getelementptr i8, ptr %i.bii, i64 50
  %i.bkn = getelementptr i8, ptr %i.bij, i64 58
  %i.bko = load i8, ptr %i.bkg, align 1, !tbaa !17
  %i.bkp = load i8, ptr %i.bkh, align 1, !tbaa !17
  %i.bkq = load i8, ptr %i.bki, align 1, !tbaa !17
  %i.bkr = load i8, ptr %i.bkj, align 1, !tbaa !17
  %i.bks = load i8, ptr %i.bkk, align 1, !tbaa !17
  %i.bkt = load i8, ptr %i.bkl, align 1, !tbaa !17
  %i.bku = load i8, ptr %i.bkm, align 1, !tbaa !17
  %i.bkv = load i8, ptr %i.bkn, align 1, !tbaa !17
  %i.bkw = insertelement <8 x i8> poison, i8 %i.bko, i64 0
  %i.bkx = insertelement <8 x i8> %i.bkw, i8 %i.bkp, i64 1
  %i.bky = insertelement <8 x i8> %i.bkx, i8 %i.bkq, i64 2
  %i.bkz = insertelement <8 x i8> %i.bky, i8 %i.bkr, i64 3
  %i.bla = insertelement <8 x i8> %i.bkz, i8 %i.bks, i64 4
  %i.blb = insertelement <8 x i8> %i.bla, i8 %i.bkt, i64 5
  %i.blc = insertelement <8 x i8> %i.blb, i8 %i.bku, i64 6
  %i.bld = insertelement <8 x i8> %i.blc, i8 %i.bkv, i64 7
  %i.ble = sext <8 x i8> %i.bld to <8 x i32>
  %i.blf = mul nsw <8 x i32> %i.ble, %i.bkf
  %i.blg = add <8 x i32> %i.blf, %vec.phi950      ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %next.gep953, i64 3
  %i.bli = getelementptr i8, ptr %i.bid, i64 11
  %i.blj = getelementptr i8, ptr %i.bie, i64 19
  %i.blk = getelementptr i8, ptr %i.bif, i64 27
  %i.bll = getelementptr i8, ptr %i.big, i64 35
  %i.blm = getelementptr i8, ptr %i.bih, i64 43
  %i.bln = getelementptr i8, ptr %i.bii, i64 51
  %i.blo = getelementptr i8, ptr %i.bij, i64 59
  %i.blp = load i8, ptr %i.blh, align 1, !tbaa !17
  %i.blq = load i8, ptr %i.bli, align 1, !tbaa !17
  %i.blr = load i8, ptr %i.blj, align 1, !tbaa !17
  %i.bls = load i8, ptr %i.blk, align 1, !tbaa !17
  %i.blt = load i8, ptr %i.bll, align 1, !tbaa !17
  %i.blu = load i8, ptr %i.blm, align 1, !tbaa !17
  %i.blv = load i8, ptr %i.bln, align 1, !tbaa !17
  %i.blw = load i8, ptr %i.blo, align 1, !tbaa !17
  %i.blx = insertelement <8 x i8> poison, i8 %i.blp, i64 0
  %i.bly = insertelement <8 x i8> %i.blx, i8 %i.blq, i64 1
  %i.blz = insertelement <8 x i8> %i.bly, i8 %i.blr, i64 2
  %i.bma = insertelement <8 x i8> %i.blz, i8 %i.bls, i64 3
  %i.bmb = insertelement <8 x i8> %i.bma, i8 %i.blt, i64 4
  %i.bmc = insertelement <8 x i8> %i.bmb, i8 %i.blu, i64 5
  %i.bmd = insertelement <8 x i8> %i.bmc, i8 %i.blv, i64 6
  %i.bme = insertelement <8 x i8> %i.bmd, i8 %i.blw, i64 7
  %i.bmf = sext <8 x i8> %i.bme to <8 x i32>
  %i.bmg = mul nsw <8 x i32> %i.bmf, %i.bkf
  %i.bmh = add <8 x i32> %i.bmg, %vec.phi946      ; 2 uses
  %i.bmi = sext <8 x i8> %strided.vec964 to <8 x i32> ; 2 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %next.gep953, i64 4
  %i.bmk = getelementptr i8, ptr %i.bid, i64 12
  %i.bml = getelementptr i8, ptr %i.bie, i64 20
  %i.bmm = getelementptr i8, ptr %i.bif, i64 28
  %i.bmn = getelementptr i8, ptr %i.big, i64 36
  %i.bmo = getelementptr i8, ptr %i.bih, i64 44
  %i.bmp = getelementptr i8, ptr %i.bii, i64 52
  %i.bmq = getelementptr i8, ptr %i.bij, i64 60
  %i.bmr = load i8, ptr %i.bmj, align 1, !tbaa !17
  %i.bms = load i8, ptr %i.bmk, align 1, !tbaa !17
  %i.bmt = load i8, ptr %i.bml, align 1, !tbaa !17
  %i.bmu = load i8, ptr %i.bmm, align 1, !tbaa !17
  %i.bmv = load i8, ptr %i.bmn, align 1, !tbaa !17
  %i.bmw = load i8, ptr %i.bmo, align 1, !tbaa !17
  %i.bmx = load i8, ptr %i.bmp, align 1, !tbaa !17
  %i.bmy = load i8, ptr %i.bmq, align 1, !tbaa !17
  %i.bmz = insertelement <8 x i8> poison, i8 %i.bmr, i64 0
  %i.bna = insertelement <8 x i8> %i.bmz, i8 %i.bms, i64 1
  %i.bnb = insertelement <8 x i8> %i.bna, i8 %i.bmt, i64 2
  %i.bnc = insertelement <8 x i8> %i.bnb, i8 %i.bmu, i64 3
  %i.bnd = insertelement <8 x i8> %i.bnc, i8 %i.bmv, i64 4
  %i.bne = insertelement <8 x i8> %i.bnd, i8 %i.bmw, i64 5
  %i.bnf = insertelement <8 x i8> %i.bne, i8 %i.bmx, i64 6
  %i.bng = insertelement <8 x i8> %i.bnf, i8 %i.bmy, i64 7
  %i.bnh = sext <8 x i8> %i.bng to <8 x i32>
  %i.bni = mul nsw <8 x i32> %i.bnh, %i.bmi
  %i.bnj = add <8 x i32> %i.bni, %vec.phi949      ; 2 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %next.gep953, i64 5
  %i.bnl = getelementptr i8, ptr %i.bid, i64 13
  %i.bnm = getelementptr i8, ptr %i.bie, i64 21
  %i.bnn = getelementptr i8, ptr %i.bif, i64 29
  %i.bno = getelementptr i8, ptr %i.big, i64 37
  %i.bnp = getelementptr i8, ptr %i.bih, i64 45
  %i.bnq = getelementptr i8, ptr %i.bii, i64 53
  %i.bnr = getelementptr i8, ptr %i.bij, i64 61
  %i.bns = load i8, ptr %i.bnk, align 1, !tbaa !17
  %i.bnt = load i8, ptr %i.bnl, align 1, !tbaa !17
  %i.bnu = load i8, ptr %i.bnm, align 1, !tbaa !17
  %i.bnv = load i8, ptr %i.bnn, align 1, !tbaa !17
  %i.bnw = load i8, ptr %i.bno, align 1, !tbaa !17
  %i.bnx = load i8, ptr %i.bnp, align 1, !tbaa !17
  %i.bny = load i8, ptr %i.bnq, align 1, !tbaa !17
  %i.bnz = load i8, ptr %i.bnr, align 1, !tbaa !17
  %i.boa = insertelement <8 x i8> poison, i8 %i.bns, i64 0
  %i.bob = insertelement <8 x i8> %i.boa, i8 %i.bnt, i64 1
  %i.boc = insertelement <8 x i8> %i.bob, i8 %i.bnu, i64 2
  %i.bod = insertelement <8 x i8> %i.boc, i8 %i.bnv, i64 3
end_hunk_1
