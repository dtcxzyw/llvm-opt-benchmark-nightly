Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/HNSW?download=true
inline.NumInlined: 2707
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN5faiss11hnsw_detail31search_from_candidates_panoramaERKNS_4HNSWEPKNS_9IndexHNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINS_4CMaxIfiEEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE:bb.a
  %wide.load1423.1 = load <4 x float>, ptr %i.aaj, align 4, !tbaa !163, !alias.scope !651, !noalias !654 ; 4 uses
  %wide.load1424.1 = load <4 x float>, ptr %i.aak, align 4, !tbaa !163, !alias.scope !651, !noalias !654 ; 4 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aah, i64 64
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aah, i64 80
  %wide.load1423.2 = load <4 x float>, ptr %i.aal, align 4, !tbaa !163, !alias.scope !651, !noalias !654 ; 4 uses
  %wide.load1424.2 = load <4 x float>, ptr %i.aam, align 4, !tbaa !163, !alias.scope !651, !noalias !654 ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aah, i64 96
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aah, i64 112
  %wide.load1423.3 = load <4 x float>, ptr %i.aan, align 4, !tbaa !163, !alias.scope !651, !noalias !654 ; 4 uses
  %wide.load1424.3 = load <4 x float>, ptr %i.aao, align 4, !tbaa !163, !alias.scope !651, !noalias !654 ; 4 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.bo
  %.075.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bo ], [ %i.aar, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.aap = icmp ult i64 %.075.lcssa.i.i.i.i.i.i.i, %.0607830
  br i1 %i.aap, label %.lr.ph87.preheader.i.i.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i
  %i.aaq = load <32 x float>, ptr %i.aah, align 4, !tbaa !163, !alias.scope !651, !noalias !654
  br label %.lr.ph87.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.aar = phi i64 [ %i.afd, %.lr.ph.i.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.07583.i.i.i.i.i.i.i = phi i64 [ %i.aar, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.aas = or disjoint i64 %.07583.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.aas
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !44, !noalias !655
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = mul nsw i64 %i.gl, %i.aav
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.aaw ; 8 uses
  %i.aay = or disjoint i64 %.07583.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.aay
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !44, !noalias !655
  %i.abb = zext i32 %i.aba to i64
  %i.abc = mul nsw i64 %i.gl, %i.abb
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.abc ; 8 uses
  %i.abe = or disjoint i64 %.07583.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.abe
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !44, !noalias !655
  %i.abh = zext i32 %i.abg to i64
  %i.abi = mul nsw i64 %i.gl, %i.abh
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.abi ; 8 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i.i.i
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !44, !noalias !655
  %i.abm = zext i32 %i.abl to i64
  %i.abn = mul nsw i64 %i.gl, %i.abm
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.abn ; 8 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %wide.load1425 = load <4 x float>, ptr %i.abo, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1426 = load <4 x float>, ptr %i.abp, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.abq = fmul fast <4 x float> %wide.load1425, %wide.load1423
  %i.abr = fmul fast <4 x float> %wide.load1426, %wide.load1424
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %wide.load1427 = load <4 x float>, ptr %i.abj, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1428 = load <4 x float>, ptr %i.abs, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.abt = fmul fast <4 x float> %wide.load1427, %wide.load1423
  %i.abu = fmul fast <4 x float> %wide.load1428, %wide.load1424
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %wide.load1429 = load <4 x float>, ptr %i.abd, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1430 = load <4 x float>, ptr %i.abv, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.abw = fmul fast <4 x float> %wide.load1429, %wide.load1423
  %i.abx = fmul fast <4 x float> %wide.load1430, %wide.load1424
  %i.aby = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %wide.load1431 = load <4 x float>, ptr %i.aax, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1432 = load <4 x float>, ptr %i.aby, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.abz = fmul fast <4 x float> %wide.load1431, %wide.load1423
  %i.aca = fmul fast <4 x float> %wide.load1432, %wide.load1424
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abo, i64 32
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abo, i64 48
  %wide.load1425.1 = load <4 x float>, ptr %i.acb, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1426.1 = load <4 x float>, ptr %i.acc, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.acd = fmul fast <4 x float> %wide.load1425.1, %wide.load1423.1
  %i.ace = fmul fast <4 x float> %wide.load1426.1, %wide.load1424.1
  %i.acf = fadd fast <4 x float> %i.acd, %i.abq
  %i.acg = fadd fast <4 x float> %i.ace, %i.abr
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abj, i64 32
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abj, i64 48
  %wide.load1427.1 = load <4 x float>, ptr %i.ach, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1428.1 = load <4 x float>, ptr %i.aci, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.acj = fmul fast <4 x float> %wide.load1427.1, %wide.load1423.1
  %i.ack = fmul fast <4 x float> %wide.load1428.1, %wide.load1424.1
  %i.acl = fadd fast <4 x float> %i.acj, %i.abt
  %i.acm = fadd fast <4 x float> %i.ack, %i.abu
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abd, i64 32
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abd, i64 48
  %wide.load1429.1 = load <4 x float>, ptr %i.acn, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1430.1 = load <4 x float>, ptr %i.aco, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.acp = fmul fast <4 x float> %wide.load1429.1, %wide.load1423.1
  %i.acq = fmul fast <4 x float> %wide.load1430.1, %wide.load1424.1
  %i.acr = fadd fast <4 x float> %i.acp, %i.abw
  %i.acs = fadd fast <4 x float> %i.acq, %i.abx
  %i.act = getelementptr inbounds nuw i8, ptr %i.aax, i64 32
  %i.acu = getelementptr inbounds nuw i8, ptr %i.aax, i64 48
  %wide.load1431.1 = load <4 x float>, ptr %i.act, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1432.1 = load <4 x float>, ptr %i.acu, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.acv = fmul fast <4 x float> %wide.load1431.1, %wide.load1423.1
  %i.acw = fmul fast <4 x float> %wide.load1432.1, %wide.load1424.1
  %i.acx = fadd fast <4 x float> %i.acv, %i.abz
  %i.acy = fadd fast <4 x float> %i.acw, %i.aca
  %i.acz = getelementptr inbounds nuw i8, ptr %i.abo, i64 64
  %i.ada = getelementptr inbounds nuw i8, ptr %i.abo, i64 80
  %wide.load1425.2 = load <4 x float>, ptr %i.acz, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1426.2 = load <4 x float>, ptr %i.ada, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.adb = fmul fast <4 x float> %wide.load1425.2, %wide.load1423.2
  %i.adc = fmul fast <4 x float> %wide.load1426.2, %wide.load1424.2
  %i.add = fadd fast <4 x float> %i.adb, %i.acf
  %i.ade = fadd fast <4 x float> %i.adc, %i.acg
  %i.adf = getelementptr inbounds nuw i8, ptr %i.abj, i64 64
  %i.adg = getelementptr inbounds nuw i8, ptr %i.abj, i64 80
  %wide.load1427.2 = load <4 x float>, ptr %i.adf, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1428.2 = load <4 x float>, ptr %i.adg, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.adh = fmul fast <4 x float> %wide.load1427.2, %wide.load1423.2
  %i.adi = fmul fast <4 x float> %wide.load1428.2, %wide.load1424.2
  %i.adj = fadd fast <4 x float> %i.adh, %i.acl
  %i.adk = fadd fast <4 x float> %i.adi, %i.acm
  %i.adl = getelementptr inbounds nuw i8, ptr %i.abd, i64 64
  %i.adm = getelementptr inbounds nuw i8, ptr %i.abd, i64 80
  %wide.load1429.2 = load <4 x float>, ptr %i.adl, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1430.2 = load <4 x float>, ptr %i.adm, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.adn = fmul fast <4 x float> %wide.load1429.2, %wide.load1423.2
  %i.ado = fmul fast <4 x float> %wide.load1430.2, %wide.load1424.2
  %i.adp = fadd fast <4 x float> %i.adn, %i.acr
  %i.adq = fadd fast <4 x float> %i.ado, %i.acs
  %i.adr = getelementptr inbounds nuw i8, ptr %i.aax, i64 64
  %i.ads = getelementptr inbounds nuw i8, ptr %i.aax, i64 80
  %wide.load1431.2 = load <4 x float>, ptr %i.adr, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1432.2 = load <4 x float>, ptr %i.ads, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.adt = fmul fast <4 x float> %wide.load1431.2, %wide.load1423.2
  %i.adu = fmul fast <4 x float> %wide.load1432.2, %wide.load1424.2
  %i.adv = fadd fast <4 x float> %i.adt, %i.acx
  %i.adw = fadd fast <4 x float> %i.adu, %i.acy
  %i.adx = getelementptr inbounds nuw i8, ptr %i.abo, i64 96
  %i.ady = getelementptr inbounds nuw i8, ptr %i.abo, i64 112
  %wide.load1425.3 = load <4 x float>, ptr %i.adx, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1426.3 = load <4 x float>, ptr %i.ady, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.adz = fmul fast <4 x float> %wide.load1425.3, %wide.load1423.3
  %i.aea = fmul fast <4 x float> %wide.load1426.3, %wide.load1424.3
  %i.aeb = fadd fast <4 x float> %i.adz, %i.add
  %i.aec = fadd fast <4 x float> %i.aea, %i.ade
  %i.aed = getelementptr inbounds nuw i8, ptr %i.abj, i64 96
  %i.aee = getelementptr inbounds nuw i8, ptr %i.abj, i64 112
  %wide.load1427.3 = load <4 x float>, ptr %i.aed, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1428.3 = load <4 x float>, ptr %i.aee, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.aef = fmul fast <4 x float> %wide.load1427.3, %wide.load1423.3
  %i.aeg = fmul fast <4 x float> %wide.load1428.3, %wide.load1424.3
  %i.aeh = fadd fast <4 x float> %i.aef, %i.adj
  %i.aei = fadd fast <4 x float> %i.aeg, %i.adk
  %i.aej = getelementptr inbounds nuw i8, ptr %i.abd, i64 96
  %i.aek = getelementptr inbounds nuw i8, ptr %i.abd, i64 112
  %wide.load1429.3 = load <4 x float>, ptr %i.aej, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1430.3 = load <4 x float>, ptr %i.aek, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.ael = fmul fast <4 x float> %wide.load1429.3, %wide.load1423.3
  %i.aem = fmul fast <4 x float> %wide.load1430.3, %wide.load1424.3
  %i.aen = fadd fast <4 x float> %i.ael, %i.adp
  %i.aeo = fadd fast <4 x float> %i.aem, %i.adq
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aax, i64 96
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aax, i64 112
  %wide.load1431.3 = load <4 x float>, ptr %i.aep, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %wide.load1432.3 = load <4 x float>, ptr %i.aeq, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.aer = fmul fast <4 x float> %wide.load1431.3, %wide.load1423.3
  %i.aes = fmul fast <4 x float> %wide.load1432.3, %wide.load1424.3
  %i.aet = fadd fast <4 x float> %i.aer, %i.adv
  %i.aeu = fadd fast <4 x float> %i.aes, %i.adw
  %bin.rdx1438 = fadd fast <4 x float> %i.aec, %i.aeb
  %i.aev = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1438)
  %bin.rdx1437 = fadd fast <4 x float> %i.aei, %i.aeh
  %i.aew = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1437)
  %bin.rdx1436 = fadd fast <4 x float> %i.aeo, %i.aen
  %i.aex = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1436)
  %bin.rdx1435 = fadd fast <4 x float> %i.aeu, %i.aet
  %i.aey = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1435)
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i.i.i
  store float %i.aev, ptr %i.aez, align 4, !tbaa !163, !alias.scope !653, !noalias !657
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.abe
  store float %i.aew, ptr %i.afa, align 4, !tbaa !163, !alias.scope !653, !noalias !657
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.aay
  store float %i.aex, ptr %i.afb, align 4, !tbaa !163, !alias.scope !653, !noalias !657
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.aas
  store float %i.aey, ptr %i.afc, align 4, !tbaa !163, !alias.scope !653, !noalias !657
  %i.afd = add i64 %i.aar, 4                      ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.afd, %.0607830
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !521

.lr.ph87.i.i.i.i.i.i.i:                           ; preds = %.lr.ph87.i.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i.i
  %.186.i.i.i.i.i.i.i = phi i64 [ %i.afn, %.lr.ph87.i.i.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i.i.i
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !44, !noalias !655
  %i.afg = zext i32 %i.aff to i64
  %i.afh = mul nsw i64 %i.gl, %i.afg
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.afh
  %i.afj = load <32 x float>, ptr %i.afi, align 4, !tbaa !163, !alias.scope !652, !noalias !656
  %i.afk = fmul fast <32 x float> %i.afj, %i.aaq
  %i.afl = call fast float @llvm.vector.reduce.fadd.v32f32(float 0.000000e+00, <32 x float> %i.afk)
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i.i.i
  store float %i.afl, ptr %i.afm, align 4, !tbaa !163, !alias.scope !653, !noalias !657
  %i.afn = add nuw i64 %.186.i.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond94.not.i.i.i.i.i.i.i = icmp eq i64 %i.afn, %.0607830
  br i1 %exitcond94.not.i.i.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i.i.i, !llvm.loop !522

bb.bp:                                            ; preds = %.lr.ph833
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %.not82.i.i.i.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.bp
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  %wide.load1451 = load <4 x float>, ptr %i.afo, align 4, !tbaa !163, !alias.scope !658, !noalias !661 ; 4 uses
  %wide.load1452 = load <4 x float>, ptr %i.afp, align 4, !tbaa !163, !alias.scope !658, !noalias !661 ; 4 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 32
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 48
  %wide.load1451.1 = load <4 x float>, ptr %i.afq, align 4, !tbaa !163, !alias.scope !658, !noalias !661 ; 4 uses
  %wide.load1452.1 = load <4 x float>, ptr %i.afr, align 4, !tbaa !163, !alias.scope !658, !noalias !661 ; 4 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afo, i64 64
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afo, i64 80
  %wide.load1451.2 = load <4 x float>, ptr %i.afs, align 4, !tbaa !163, !alias.scope !658, !noalias !661 ; 4 uses
  %wide.load1452.2 = load <4 x float>, ptr %i.aft, align 4, !tbaa !163, !alias.scope !658, !noalias !661 ; 4 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afo, i64 96
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afo, i64 112
  %wide.load1451.3 = load <4 x float>, ptr %i.afu, align 4, !tbaa !163, !alias.scope !658, !noalias !661 ; 4 uses
  %wide.load1452.3 = load <4 x float>, ptr %i.afv, align 4, !tbaa !163, !alias.scope !658, !noalias !661 ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afo, i64 128
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afo, i64 144
  %wide.load1451.4 = load <4 x float>, ptr %i.afw, align 4, !tbaa !163, !alias.scope !658, !noalias !661 ; 4 uses
  %wide.load1452.4 = load <4 x float>, ptr %i.afx, align 4, !tbaa !163, !alias.scope !658, !noalias !661 ; 4 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.bp
  %.075.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bp ], [ %i.afz, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.afy = icmp ult i64 %.075.lcssa.i.i.i.i.i.i.i.i, %.0607830
  br i1 %i.afy, label %.lr.ph87.preheader.i.i.i.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i
  %14 = load <40 x float>, ptr %i.afo, align 4, !tbaa !163, !alias.scope !658, !noalias !661
  br label %.lr.ph87.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.afz = phi i64 [ %i.alj, %.lr.ph.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.07583.i.i.i.i.i.i.i.i = phi i64 [ %i.afz, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.aga = or disjoint i64 %.07583.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.aga
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !44, !noalias !662
  %i.agd = zext i32 %i.agc to i64
  %i.age = mul nsw i64 %i.gk, %i.agd
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.age ; 10 uses
  %i.agg = or disjoint i64 %.07583.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.agg
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !44, !noalias !662
  %i.agj = zext i32 %i.agi to i64
  %i.agk = mul nsw i64 %i.gk, %i.agj
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.agk ; 10 uses
  %i.agm = or disjoint i64 %.07583.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.agm
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !44, !noalias !662
  %i.agp = zext i32 %i.ago to i64
  %i.agq = mul nsw i64 %i.gk, %i.agp
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.agq ; 10 uses
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i.i.i.i
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !44, !noalias !662
  %i.agu = zext i32 %i.agt to i64
  %i.agv = mul nsw i64 %i.gk, %i.agu
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.agv ; 10 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 16
  %wide.load1453 = load <4 x float>, ptr %i.agw, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1454 = load <4 x float>, ptr %i.agx, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.agy = fmul fast <4 x float> %wide.load1453, %wide.load1451
  %i.agz = fmul fast <4 x float> %wide.load1454, %wide.load1452
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  %wide.load1455 = load <4 x float>, ptr %i.agr, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1456 = load <4 x float>, ptr %i.aha, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ahb = fmul fast <4 x float> %wide.load1455, %wide.load1451
  %i.ahc = fmul fast <4 x float> %wide.load1456, %wide.load1452
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %wide.load1457 = load <4 x float>, ptr %i.agl, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1458 = load <4 x float>, ptr %i.ahd, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ahe = fmul fast <4 x float> %wide.load1457, %wide.load1451
  %i.ahf = fmul fast <4 x float> %wide.load1458, %wide.load1452
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  %wide.load1459 = load <4 x float>, ptr %i.agf, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1460 = load <4 x float>, ptr %i.ahg, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ahh = fmul fast <4 x float> %wide.load1459, %wide.load1451
  %i.ahi = fmul fast <4 x float> %wide.load1460, %wide.load1452
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agw, i64 32
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agw, i64 48
  %wide.load1453.1 = load <4 x float>, ptr %i.ahj, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1454.1 = load <4 x float>, ptr %i.ahk, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ahl = fmul fast <4 x float> %wide.load1453.1, %wide.load1451.1
  %i.ahm = fmul fast <4 x float> %wide.load1454.1, %wide.load1452.1
  %i.ahn = fadd fast <4 x float> %i.ahl, %i.agy
  %i.aho = fadd fast <4 x float> %i.ahm, %i.agz
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agr, i64 32
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.agr, i64 48
  %wide.load1455.1 = load <4 x float>, ptr %i.ahp, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1456.1 = load <4 x float>, ptr %i.ahq, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ahr = fmul fast <4 x float> %wide.load1455.1, %wide.load1451.1
  %i.ahs = fmul fast <4 x float> %wide.load1456.1, %wide.load1452.1
  %i.aht = fadd fast <4 x float> %i.ahr, %i.ahb
  %i.ahu = fadd fast <4 x float> %i.ahs, %i.ahc
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.agl, i64 32
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  %wide.load1457.1 = load <4 x float>, ptr %i.ahv, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1458.1 = load <4 x float>, ptr %i.ahw, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ahx = fmul fast <4 x float> %wide.load1457.1, %wide.load1451.1
  %i.ahy = fmul fast <4 x float> %wide.load1458.1, %wide.load1452.1
  %i.ahz = fadd fast <4 x float> %i.ahx, %i.ahe
  %i.aia = fadd fast <4 x float> %i.ahy, %i.ahf
  %i.aib = getelementptr inbounds nuw i8, ptr %i.agf, i64 32
  %i.aic = getelementptr inbounds nuw i8, ptr %i.agf, i64 48
  %wide.load1459.1 = load <4 x float>, ptr %i.aib, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1460.1 = load <4 x float>, ptr %i.aic, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.aid = fmul fast <4 x float> %wide.load1459.1, %wide.load1451.1
  %i.aie = fmul fast <4 x float> %wide.load1460.1, %wide.load1452.1
  %i.aif = fadd fast <4 x float> %i.aid, %i.ahh
  %i.aig = fadd fast <4 x float> %i.aie, %i.ahi
  %i.aih = getelementptr inbounds nuw i8, ptr %i.agw, i64 64
  %i.aii = getelementptr inbounds nuw i8, ptr %i.agw, i64 80
  %wide.load1453.2 = load <4 x float>, ptr %i.aih, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1454.2 = load <4 x float>, ptr %i.aii, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.aij = fmul fast <4 x float> %wide.load1453.2, %wide.load1451.2
  %i.aik = fmul fast <4 x float> %wide.load1454.2, %wide.load1452.2
  %i.ail = fadd fast <4 x float> %i.aij, %i.ahn
  %i.aim = fadd fast <4 x float> %i.aik, %i.aho
  %i.ain = getelementptr inbounds nuw i8, ptr %i.agr, i64 64
  %i.aio = getelementptr inbounds nuw i8, ptr %i.agr, i64 80
  %wide.load1455.2 = load <4 x float>, ptr %i.ain, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1456.2 = load <4 x float>, ptr %i.aio, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.aip = fmul fast <4 x float> %wide.load1455.2, %wide.load1451.2
  %i.aiq = fmul fast <4 x float> %wide.load1456.2, %wide.load1452.2
  %i.air = fadd fast <4 x float> %i.aip, %i.aht
  %i.ais = fadd fast <4 x float> %i.aiq, %i.ahu
  %i.ait = getelementptr inbounds nuw i8, ptr %i.agl, i64 64
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.agl, i64 80
  %wide.load1457.2 = load <4 x float>, ptr %i.ait, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1458.2 = load <4 x float>, ptr %i.aiu, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.aiv = fmul fast <4 x float> %wide.load1457.2, %wide.load1451.2
  %i.aiw = fmul fast <4 x float> %wide.load1458.2, %wide.load1452.2
  %i.aix = fadd fast <4 x float> %i.aiv, %i.ahz
  %i.aiy = fadd fast <4 x float> %i.aiw, %i.aia
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.agf, i64 64
  %i.aja = getelementptr inbounds nuw i8, ptr %i.agf, i64 80
  %wide.load1459.2 = load <4 x float>, ptr %i.aiz, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1460.2 = load <4 x float>, ptr %i.aja, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ajb = fmul fast <4 x float> %wide.load1459.2, %wide.load1451.2
  %i.ajc = fmul fast <4 x float> %wide.load1460.2, %wide.load1452.2
  %i.ajd = fadd fast <4 x float> %i.ajb, %i.aif
  %i.aje = fadd fast <4 x float> %i.ajc, %i.aig
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.agw, i64 96
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.agw, i64 112
  %wide.load1453.3 = load <4 x float>, ptr %i.ajf, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1454.3 = load <4 x float>, ptr %i.ajg, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ajh = fmul fast <4 x float> %wide.load1453.3, %wide.load1451.3
  %i.aji = fmul fast <4 x float> %wide.load1454.3, %wide.load1452.3
  %i.ajj = fadd fast <4 x float> %i.ajh, %i.ail
  %i.ajk = fadd fast <4 x float> %i.aji, %i.aim
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.agr, i64 96
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.agr, i64 112
  %wide.load1455.3 = load <4 x float>, ptr %i.ajl, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1456.3 = load <4 x float>, ptr %i.ajm, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ajn = fmul fast <4 x float> %wide.load1455.3, %wide.load1451.3
  %i.ajo = fmul fast <4 x float> %wide.load1456.3, %wide.load1452.3
  %i.ajp = fadd fast <4 x float> %i.ajn, %i.air
  %i.ajq = fadd fast <4 x float> %i.ajo, %i.ais
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.agl, i64 96
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.agl, i64 112
  %wide.load1457.3 = load <4 x float>, ptr %i.ajr, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1458.3 = load <4 x float>, ptr %i.ajs, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ajt = fmul fast <4 x float> %wide.load1457.3, %wide.load1451.3
  %i.aju = fmul fast <4 x float> %wide.load1458.3, %wide.load1452.3
  %i.ajv = fadd fast <4 x float> %i.ajt, %i.aix
  %i.ajw = fadd fast <4 x float> %i.aju, %i.aiy
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.agf, i64 96
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.agf, i64 112
  %wide.load1459.3 = load <4 x float>, ptr %i.ajx, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1460.3 = load <4 x float>, ptr %i.ajy, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.ajz = fmul fast <4 x float> %wide.load1459.3, %wide.load1451.3
  %i.aka = fmul fast <4 x float> %wide.load1460.3, %wide.load1452.3
  %i.akb = fadd fast <4 x float> %i.ajz, %i.ajd
  %i.akc = fadd fast <4 x float> %i.aka, %i.aje
  %i.akd = getelementptr inbounds nuw i8, ptr %i.agw, i64 128
  %i.ake = getelementptr inbounds nuw i8, ptr %i.agw, i64 144
  %wide.load1453.4 = load <4 x float>, ptr %i.akd, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1454.4 = load <4 x float>, ptr %i.ake, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.akf = fmul fast <4 x float> %wide.load1453.4, %wide.load1451.4
  %i.akg = fmul fast <4 x float> %wide.load1454.4, %wide.load1452.4
  %i.akh = fadd fast <4 x float> %i.akf, %i.ajj
  %i.aki = fadd fast <4 x float> %i.akg, %i.ajk
  %i.akj = getelementptr inbounds nuw i8, ptr %i.agr, i64 128
  %i.akk = getelementptr inbounds nuw i8, ptr %i.agr, i64 144
  %wide.load1455.4 = load <4 x float>, ptr %i.akj, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1456.4 = load <4 x float>, ptr %i.akk, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.akl = fmul fast <4 x float> %wide.load1455.4, %wide.load1451.4
  %i.akm = fmul fast <4 x float> %wide.load1456.4, %wide.load1452.4
  %i.akn = fadd fast <4 x float> %i.akl, %i.ajp
  %i.ako = fadd fast <4 x float> %i.akm, %i.ajq
  %i.akp = getelementptr inbounds nuw i8, ptr %i.agl, i64 128
  %i.akq = getelementptr inbounds nuw i8, ptr %i.agl, i64 144
  %wide.load1457.4 = load <4 x float>, ptr %i.akp, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1458.4 = load <4 x float>, ptr %i.akq, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.akr = fmul fast <4 x float> %wide.load1457.4, %wide.load1451.4
  %i.aks = fmul fast <4 x float> %wide.load1458.4, %wide.load1452.4
  %i.akt = fadd fast <4 x float> %i.akr, %i.ajv
  %i.aku = fadd fast <4 x float> %i.aks, %i.ajw
  %i.akv = getelementptr inbounds nuw i8, ptr %i.agf, i64 128
  %i.akw = getelementptr inbounds nuw i8, ptr %i.agf, i64 144
  %wide.load1459.4 = load <4 x float>, ptr %i.akv, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %wide.load1460.4 = load <4 x float>, ptr %i.akw, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %i.akx = fmul fast <4 x float> %wide.load1459.4, %wide.load1451.4
  %i.aky = fmul fast <4 x float> %wide.load1460.4, %wide.load1452.4
  %i.akz = fadd fast <4 x float> %i.akx, %i.akb
  %i.ala = fadd fast <4 x float> %i.aky, %i.akc
  %bin.rdx1466 = fadd fast <4 x float> %i.aki, %i.akh
  %i.alb = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1466)
  %bin.rdx1465 = fadd fast <4 x float> %i.ako, %i.akn
  %i.alc = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1465)
  %bin.rdx1464 = fadd fast <4 x float> %i.aku, %i.akt
  %i.ald = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1464)
  %bin.rdx1463 = fadd fast <4 x float> %i.ala, %i.akz
  %i.ale = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1463)
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i.i.i.i
  store float %i.alb, ptr %i.alf, align 4, !tbaa !163, !alias.scope !660, !noalias !664
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.agm
  store float %i.alc, ptr %i.alg, align 4, !tbaa !163, !alias.scope !660, !noalias !664
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.agg
  store float %i.ald, ptr %i.alh, align 4, !tbaa !163, !alias.scope !660, !noalias !664
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.aga
  store float %i.ale, ptr %i.ali, align 4, !tbaa !163, !alias.scope !660, !noalias !664
  %i.alj = add i64 %i.afz, 4                      ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.alj, %.0607830
  br i1 %.not.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !527

.lr.ph87.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph87.i.i.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i.i.i
  %.186.i.i.i.i.i.i.i.i = phi i64 [ %i.alr, %.lr.ph87.i.i.i.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i.i.i.i
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !44, !noalias !662
  %i.alm = zext i32 %i.all to i64
  %i.aln = mul nsw i64 %i.gk, %i.alm
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.aln
  %15 = load <40 x float>, ptr %i.alo, align 4, !tbaa !163, !alias.scope !659, !noalias !663
  %16 = fmul fast <40 x float> %15, %14
  %i.alp = call fast float @llvm.vector.reduce.fadd.v40f32(float 0.000000e+00, <40 x float> %16)
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i.i.i.i
  store float %i.alp, ptr %i.alq, align 4, !tbaa !163, !alias.scope !660, !noalias !664
  %i.alr = add nuw i64 %.186.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond94.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.alr, %.0607830
  br i1 %exitcond94.not.i.i.i.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i.i.i.i, !llvm.loop !528

bb.bq:                                            ; preds = %.lr.ph833
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %.not82.i.i.i.i.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.bq
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 16
  %wide.load1479 = load <4 x float>, ptr %i.als, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %wide.load1480 = load <4 x float>, ptr %i.alt, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.als, i64 32
  %i.alv = getelementptr inbounds nuw i8, ptr %i.als, i64 48
  %wide.load1479.1 = load <4 x float>, ptr %i.alu, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %wide.load1480.1 = load <4 x float>, ptr %i.alv, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.als, i64 64
  %i.alx = getelementptr inbounds nuw i8, ptr %i.als, i64 80
  %wide.load1479.2 = load <4 x float>, ptr %i.alw, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %wide.load1480.2 = load <4 x float>, ptr %i.alx, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.als, i64 96
  %i.alz = getelementptr inbounds nuw i8, ptr %i.als, i64 112
  %wide.load1479.3 = load <4 x float>, ptr %i.aly, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %wide.load1480.3 = load <4 x float>, ptr %i.alz, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.als, i64 128
  %i.amb = getelementptr inbounds nuw i8, ptr %i.als, i64 144
  %wide.load1479.4 = load <4 x float>, ptr %i.ama, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %wide.load1480.4 = load <4 x float>, ptr %i.amb, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.als, i64 160
  %i.amd = getelementptr inbounds nuw i8, ptr %i.als, i64 176
  %wide.load1479.5 = load <4 x float>, ptr %i.amc, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  %wide.load1480.5 = load <4 x float>, ptr %i.amd, align 4, !tbaa !163, !alias.scope !665, !noalias !668 ; 4 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.bq
  %.075.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bq ], [ %i.amf, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ame = icmp ult i64 %.075.lcssa.i.i.i.i.i.i.i.i.i, %.0607830
  br i1 %i.ame, label %.lr.ph87.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %17 = load <48 x float>, ptr %i.als, align 4, !tbaa !163, !alias.scope !665, !noalias !668
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.amf = phi i64 [ %i.asn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.07583.i.i.i.i.i.i.i.i.i = phi i64 [ %i.amf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.amg = or disjoint i64 %.07583.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.amg
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !44, !noalias !669
  %i.amj = zext i32 %i.ami to i64
  %i.amk = mul nsw i64 %i.gj, %i.amj
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.amk ; 12 uses
  %i.amm = or disjoint i64 %.07583.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.amm
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !44, !noalias !669
  %i.amp = zext i32 %i.amo to i64
  %i.amq = mul nsw i64 %i.gj, %i.amp
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.amq ; 12 uses
  %i.ams = or disjoint i64 %.07583.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.ams
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !44, !noalias !669
  %i.amv = zext i32 %i.amu to i64
  %i.amw = mul nsw i64 %i.gj, %i.amv
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.amw ; 12 uses
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i.i.i.i.i
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !44, !noalias !669
  %i.ana = zext i32 %i.amz to i64
  %i.anb = mul nsw i64 %i.gj, %i.ana
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.anb ; 12 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 16
  %wide.load1481 = load <4 x float>, ptr %i.anc, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1482 = load <4 x float>, ptr %i.and, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.ane = fmul fast <4 x float> %wide.load1481, %wide.load1479
  %i.anf = fmul fast <4 x float> %wide.load1482, %wide.load1480
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amx, i64 16
  %wide.load1483 = load <4 x float>, ptr %i.amx, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1484 = load <4 x float>, ptr %i.ang, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.anh = fmul fast <4 x float> %wide.load1483, %wide.load1479
  %i.ani = fmul fast <4 x float> %wide.load1484, %wide.load1480
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  %wide.load1485 = load <4 x float>, ptr %i.amr, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1486 = load <4 x float>, ptr %i.anj, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.ank = fmul fast <4 x float> %wide.load1485, %wide.load1479
  %i.anl = fmul fast <4 x float> %wide.load1486, %wide.load1480
  %i.anm = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  %wide.load1487 = load <4 x float>, ptr %i.aml, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1488 = load <4 x float>, ptr %i.anm, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.ann = fmul fast <4 x float> %wide.load1487, %wide.load1479
  %i.ano = fmul fast <4 x float> %wide.load1488, %wide.load1480
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anc, i64 32
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anc, i64 48
  %wide.load1481.1 = load <4 x float>, ptr %i.anp, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1482.1 = load <4 x float>, ptr %i.anq, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.anr = fmul fast <4 x float> %wide.load1481.1, %wide.load1479.1
  %i.ans = fmul fast <4 x float> %wide.load1482.1, %wide.load1480.1
  %i.ant = fadd fast <4 x float> %i.anr, %i.ane
  %i.anu = fadd fast <4 x float> %i.ans, %i.anf
  %i.anv = getelementptr inbounds nuw i8, ptr %i.amx, i64 32
  %i.anw = getelementptr inbounds nuw i8, ptr %i.amx, i64 48
  %wide.load1483.1 = load <4 x float>, ptr %i.anv, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1484.1 = load <4 x float>, ptr %i.anw, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.anx = fmul fast <4 x float> %wide.load1483.1, %wide.load1479.1
  %i.any = fmul fast <4 x float> %wide.load1484.1, %wide.load1480.1
  %i.anz = fadd fast <4 x float> %i.anx, %i.anh
  %i.aoa = fadd fast <4 x float> %i.any, %i.ani
  %i.aob = getelementptr inbounds nuw i8, ptr %i.amr, i64 32
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.amr, i64 48
  %wide.load1485.1 = load <4 x float>, ptr %i.aob, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1486.1 = load <4 x float>, ptr %i.aoc, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.aod = fmul fast <4 x float> %wide.load1485.1, %wide.load1479.1
  %i.aoe = fmul fast <4 x float> %wide.load1486.1, %wide.load1480.1
  %i.aof = fadd fast <4 x float> %i.aod, %i.ank
  %i.aog = fadd fast <4 x float> %i.aoe, %i.anl
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aml, i64 32
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aml, i64 48
  %wide.load1487.1 = load <4 x float>, ptr %i.aoh, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1488.1 = load <4 x float>, ptr %i.aoi, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.aoj = fmul fast <4 x float> %wide.load1487.1, %wide.load1479.1
  %i.aok = fmul fast <4 x float> %wide.load1488.1, %wide.load1480.1
  %i.aol = fadd fast <4 x float> %i.aoj, %i.ann
  %i.aom = fadd fast <4 x float> %i.aok, %i.ano
  %i.aon = getelementptr inbounds nuw i8, ptr %i.anc, i64 64
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.anc, i64 80
  %wide.load1481.2 = load <4 x float>, ptr %i.aon, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1482.2 = load <4 x float>, ptr %i.aoo, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.aop = fmul fast <4 x float> %wide.load1481.2, %wide.load1479.2
  %i.aoq = fmul fast <4 x float> %wide.load1482.2, %wide.load1480.2
  %i.aor = fadd fast <4 x float> %i.aop, %i.ant
  %i.aos = fadd fast <4 x float> %i.aoq, %i.anu
  %i.aot = getelementptr inbounds nuw i8, ptr %i.amx, i64 64
  %i.aou = getelementptr inbounds nuw i8, ptr %i.amx, i64 80
  %wide.load1483.2 = load <4 x float>, ptr %i.aot, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1484.2 = load <4 x float>, ptr %i.aou, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.aov = fmul fast <4 x float> %wide.load1483.2, %wide.load1479.2
  %i.aow = fmul fast <4 x float> %wide.load1484.2, %wide.load1480.2
  %i.aox = fadd fast <4 x float> %i.aov, %i.anz
  %i.aoy = fadd fast <4 x float> %i.aow, %i.aoa
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.amr, i64 64
  %i.apa = getelementptr inbounds nuw i8, ptr %i.amr, i64 80
  %wide.load1485.2 = load <4 x float>, ptr %i.aoz, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1486.2 = load <4 x float>, ptr %i.apa, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.apb = fmul fast <4 x float> %wide.load1485.2, %wide.load1479.2
  %i.apc = fmul fast <4 x float> %wide.load1486.2, %wide.load1480.2
  %i.apd = fadd fast <4 x float> %i.apb, %i.aof
  %i.ape = fadd fast <4 x float> %i.apc, %i.aog
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aml, i64 64
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aml, i64 80
  %wide.load1487.2 = load <4 x float>, ptr %i.apf, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1488.2 = load <4 x float>, ptr %i.apg, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.aph = fmul fast <4 x float> %wide.load1487.2, %wide.load1479.2
  %i.api = fmul fast <4 x float> %wide.load1488.2, %wide.load1480.2
  %i.apj = fadd fast <4 x float> %i.aph, %i.aol
  %i.apk = fadd fast <4 x float> %i.api, %i.aom
  %i.apl = getelementptr inbounds nuw i8, ptr %i.anc, i64 96
  %i.apm = getelementptr inbounds nuw i8, ptr %i.anc, i64 112
  %wide.load1481.3 = load <4 x float>, ptr %i.apl, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1482.3 = load <4 x float>, ptr %i.apm, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.apn = fmul fast <4 x float> %wide.load1481.3, %wide.load1479.3
  %i.apo = fmul fast <4 x float> %wide.load1482.3, %wide.load1480.3
  %i.app = fadd fast <4 x float> %i.apn, %i.aor
  %i.apq = fadd fast <4 x float> %i.apo, %i.aos
  %i.apr = getelementptr inbounds nuw i8, ptr %i.amx, i64 96
  %i.aps = getelementptr inbounds nuw i8, ptr %i.amx, i64 112
  %wide.load1483.3 = load <4 x float>, ptr %i.apr, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1484.3 = load <4 x float>, ptr %i.aps, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.apt = fmul fast <4 x float> %wide.load1483.3, %wide.load1479.3
  %i.apu = fmul fast <4 x float> %wide.load1484.3, %wide.load1480.3
  %i.apv = fadd fast <4 x float> %i.apt, %i.aox
  %i.apw = fadd fast <4 x float> %i.apu, %i.aoy
  %i.apx = getelementptr inbounds nuw i8, ptr %i.amr, i64 96
  %i.apy = getelementptr inbounds nuw i8, ptr %i.amr, i64 112
  %wide.load1485.3 = load <4 x float>, ptr %i.apx, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1486.3 = load <4 x float>, ptr %i.apy, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.apz = fmul fast <4 x float> %wide.load1485.3, %wide.load1479.3
  %i.aqa = fmul fast <4 x float> %wide.load1486.3, %wide.load1480.3
  %i.aqb = fadd fast <4 x float> %i.apz, %i.apd
  %i.aqc = fadd fast <4 x float> %i.aqa, %i.ape
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aml, i64 96
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aml, i64 112
  %wide.load1487.3 = load <4 x float>, ptr %i.aqd, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1488.3 = load <4 x float>, ptr %i.aqe, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.aqf = fmul fast <4 x float> %wide.load1487.3, %wide.load1479.3
  %i.aqg = fmul fast <4 x float> %wide.load1488.3, %wide.load1480.3
  %i.aqh = fadd fast <4 x float> %i.aqf, %i.apj
  %i.aqi = fadd fast <4 x float> %i.aqg, %i.apk
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.anc, i64 128
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.anc, i64 144
  %wide.load1481.4 = load <4 x float>, ptr %i.aqj, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1482.4 = load <4 x float>, ptr %i.aqk, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.aql = fmul fast <4 x float> %wide.load1481.4, %wide.load1479.4
  %i.aqm = fmul fast <4 x float> %wide.load1482.4, %wide.load1480.4
  %i.aqn = fadd fast <4 x float> %i.aql, %i.app
  %i.aqo = fadd fast <4 x float> %i.aqm, %i.apq
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.amx, i64 128
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.amx, i64 144
  %wide.load1483.4 = load <4 x float>, ptr %i.aqp, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1484.4 = load <4 x float>, ptr %i.aqq, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.aqr = fmul fast <4 x float> %wide.load1483.4, %wide.load1479.4
  %i.aqs = fmul fast <4 x float> %wide.load1484.4, %wide.load1480.4
  %i.aqt = fadd fast <4 x float> %i.aqr, %i.apv
  %i.aqu = fadd fast <4 x float> %i.aqs, %i.apw
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.amr, i64 128
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.amr, i64 144
  %wide.load1485.4 = load <4 x float>, ptr %i.aqv, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1486.4 = load <4 x float>, ptr %i.aqw, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.aqx = fmul fast <4 x float> %wide.load1485.4, %wide.load1479.4
  %i.aqy = fmul fast <4 x float> %wide.load1486.4, %wide.load1480.4
  %i.aqz = fadd fast <4 x float> %i.aqx, %i.aqb
  %i.ara = fadd fast <4 x float> %i.aqy, %i.aqc
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aml, i64 128
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aml, i64 144
  %wide.load1487.4 = load <4 x float>, ptr %i.arb, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1488.4 = load <4 x float>, ptr %i.arc, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.ard = fmul fast <4 x float> %wide.load1487.4, %wide.load1479.4
  %i.are = fmul fast <4 x float> %wide.load1488.4, %wide.load1480.4
  %i.arf = fadd fast <4 x float> %i.ard, %i.aqh
  %i.arg = fadd fast <4 x float> %i.are, %i.aqi
  %i.arh = getelementptr inbounds nuw i8, ptr %i.anc, i64 160
  %i.ari = getelementptr inbounds nuw i8, ptr %i.anc, i64 176
  %wide.load1481.5 = load <4 x float>, ptr %i.arh, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1482.5 = load <4 x float>, ptr %i.ari, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.arj = fmul fast <4 x float> %wide.load1481.5, %wide.load1479.5
  %i.ark = fmul fast <4 x float> %wide.load1482.5, %wide.load1480.5
  %i.arl = fadd fast <4 x float> %i.arj, %i.aqn
  %i.arm = fadd fast <4 x float> %i.ark, %i.aqo
  %i.arn = getelementptr inbounds nuw i8, ptr %i.amx, i64 160
  %i.aro = getelementptr inbounds nuw i8, ptr %i.amx, i64 176
  %wide.load1483.5 = load <4 x float>, ptr %i.arn, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1484.5 = load <4 x float>, ptr %i.aro, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.arp = fmul fast <4 x float> %wide.load1483.5, %wide.load1479.5
  %i.arq = fmul fast <4 x float> %wide.load1484.5, %wide.load1480.5
  %i.arr = fadd fast <4 x float> %i.arp, %i.aqt
  %i.ars = fadd fast <4 x float> %i.arq, %i.aqu
  %i.art = getelementptr inbounds nuw i8, ptr %i.amr, i64 160
  %i.aru = getelementptr inbounds nuw i8, ptr %i.amr, i64 176
  %wide.load1485.5 = load <4 x float>, ptr %i.art, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1486.5 = load <4 x float>, ptr %i.aru, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.arv = fmul fast <4 x float> %wide.load1485.5, %wide.load1479.5
  %i.arw = fmul fast <4 x float> %wide.load1486.5, %wide.load1480.5
  %i.arx = fadd fast <4 x float> %i.arv, %i.aqz
  %i.ary = fadd fast <4 x float> %i.arw, %i.ara
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aml, i64 160
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aml, i64 176
  %wide.load1487.5 = load <4 x float>, ptr %i.arz, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %wide.load1488.5 = load <4 x float>, ptr %i.asa, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %i.asb = fmul fast <4 x float> %wide.load1487.5, %wide.load1479.5
  %i.asc = fmul fast <4 x float> %wide.load1488.5, %wide.load1480.5
  %i.asd = fadd fast <4 x float> %i.asb, %i.arf
  %i.ase = fadd fast <4 x float> %i.asc, %i.arg
  %bin.rdx1494 = fadd fast <4 x float> %i.arm, %i.arl
  %i.asf = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1494)
  %bin.rdx1493 = fadd fast <4 x float> %i.ars, %i.arr
  %i.asg = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1493)
  %bin.rdx1492 = fadd fast <4 x float> %i.ary, %i.arx
  %i.ash = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1492)
  %bin.rdx1491 = fadd fast <4 x float> %i.ase, %i.asd
  %i.asi = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1491)
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i.i.i.i.i
  store float %i.asf, ptr %i.asj, align 4, !tbaa !163, !alias.scope !667, !noalias !671
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.ams
  store float %i.asg, ptr %i.ask, align 4, !tbaa !163, !alias.scope !667, !noalias !671
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.amm
  store float %i.ash, ptr %i.asl, align 4, !tbaa !163, !alias.scope !667, !noalias !671
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.amg
  store float %i.asi, ptr %i.asm, align 4, !tbaa !163, !alias.scope !667, !noalias !671
  %i.asn = add i64 %i.amf, 4                      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.asn, %.0607830
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !533

.lr.ph87.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i.i.i.i
  %.186.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asv, %.lr.ph87.i.i.i.i.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i.i.i.i.i
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !44, !noalias !669
  %i.asq = zext i32 %i.asp to i64
  %i.asr = mul nsw i64 %i.gj, %i.asq
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.asr
  %18 = load <48 x float>, ptr %i.ass, align 4, !tbaa !163, !alias.scope !666, !noalias !670
  %19 = fmul fast <48 x float> %18, %17
  %i.ast = call fast float @llvm.vector.reduce.fadd.v48f32(float 0.000000e+00, <48 x float> %19)
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i.i.i.i.i
  store float %i.ast, ptr %i.asu, align 4, !tbaa !163, !alias.scope !667, !noalias !671
  %i.asv = add nuw i64 %.186.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond94.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.asv, %.0607830
  br i1 %exitcond94.not.i.i.i.i.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i.i.i.i.i, !llvm.loop !534

bb.br:                                            ; preds = %.lr.ph833
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %.not82.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.br
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 16
  %wide.load1507 = load <4 x float>, ptr %i.asw, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %wide.load1508 = load <4 x float>, ptr %i.asx, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asw, i64 32
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asw, i64 48
  %wide.load1507.1 = load <4 x float>, ptr %i.asy, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %wide.load1508.1 = load <4 x float>, ptr %i.asz, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asw, i64 64
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asw, i64 80
  %wide.load1507.2 = load <4 x float>, ptr %i.ata, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %wide.load1508.2 = load <4 x float>, ptr %i.atb, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asw, i64 96
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asw, i64 112
  %wide.load1507.3 = load <4 x float>, ptr %i.atc, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %wide.load1508.3 = load <4 x float>, ptr %i.atd, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asw, i64 128
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asw, i64 144
  %wide.load1507.4 = load <4 x float>, ptr %i.ate, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %wide.load1508.4 = load <4 x float>, ptr %i.atf, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asw, i64 160
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asw, i64 176
  %wide.load1507.5 = load <4 x float>, ptr %i.atg, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %wide.load1508.5 = load <4 x float>, ptr %i.ath, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asw, i64 192
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asw, i64 208
  %wide.load1507.6 = load <4 x float>, ptr %i.ati, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  %wide.load1508.6 = load <4 x float>, ptr %i.atj, align 4, !tbaa !163, !alias.scope !672, !noalias !675 ; 4 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.br
  %.075.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.br ], [ %i.atl, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.atk = icmp ult i64 %.075.lcssa.i.i.i.i.i.i.i.i.i.i, %.0607830
  br i1 %i.atk, label %.lr.ph87.preheader.i.i.i.i.i.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %20 = load <56 x float>, ptr %i.asw, align 4, !tbaa !163, !alias.scope !672, !noalias !675
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.atl = phi i64 [ %i.bar, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.07583.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.atl, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.atm = or disjoint i64 %.07583.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.atm
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !44, !noalias !676
  %i.atp = zext i32 %i.ato to i64
  %i.atq = mul nsw i64 %i.gi, %i.atp
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.atq ; 14 uses
  %i.ats = or disjoint i64 %.07583.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.ats
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !44, !noalias !676
  %i.atv = zext i32 %i.atu to i64
  %i.atw = mul nsw i64 %i.gi, %i.atv
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.atw ; 14 uses
  %i.aty = or disjoint i64 %.07583.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.aty
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !44, !noalias !676
  %i.aub = zext i32 %i.aua to i64
  %i.auc = mul nsw i64 %i.gi, %i.aub
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.auc ; 14 uses
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i.i.i.i.i.i
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !44, !noalias !676
  %i.aug = zext i32 %i.auf to i64
  %i.auh = mul nsw i64 %i.gi, %i.aug
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.auh ; 14 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 16
  %wide.load1509 = load <4 x float>, ptr %i.aui, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1510 = load <4 x float>, ptr %i.auj, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.auk = fmul fast <4 x float> %wide.load1509, %wide.load1507
  %i.aul = fmul fast <4 x float> %wide.load1510, %wide.load1508
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aud, i64 16
  %wide.load1511 = load <4 x float>, ptr %i.aud, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1512 = load <4 x float>, ptr %i.aum, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.aun = fmul fast <4 x float> %wide.load1511, %wide.load1507
  %i.auo = fmul fast <4 x float> %wide.load1512, %wide.load1508
  %i.aup = getelementptr inbounds nuw i8, ptr %i.atx, i64 16
  %wide.load1513 = load <4 x float>, ptr %i.atx, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1514 = load <4 x float>, ptr %i.aup, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.auq = fmul fast <4 x float> %wide.load1513, %wide.load1507
  %i.aur = fmul fast <4 x float> %wide.load1514, %wide.load1508
  %i.aus = getelementptr inbounds nuw i8, ptr %i.atr, i64 16
  %wide.load1515 = load <4 x float>, ptr %i.atr, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1516 = load <4 x float>, ptr %i.aus, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.aut = fmul fast <4 x float> %wide.load1515, %wide.load1507
  %i.auu = fmul fast <4 x float> %wide.load1516, %wide.load1508
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aui, i64 32
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aui, i64 48
  %wide.load1509.1 = load <4 x float>, ptr %i.auv, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1510.1 = load <4 x float>, ptr %i.auw, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.aux = fmul fast <4 x float> %wide.load1509.1, %wide.load1507.1
  %i.auy = fmul fast <4 x float> %wide.load1510.1, %wide.load1508.1
  %i.auz = fadd fast <4 x float> %i.aux, %i.auk
  %i.ava = fadd fast <4 x float> %i.auy, %i.aul
  %i.avb = getelementptr inbounds nuw i8, ptr %i.aud, i64 32
  %i.avc = getelementptr inbounds nuw i8, ptr %i.aud, i64 48
  %wide.load1511.1 = load <4 x float>, ptr %i.avb, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1512.1 = load <4 x float>, ptr %i.avc, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.avd = fmul fast <4 x float> %wide.load1511.1, %wide.load1507.1
  %i.ave = fmul fast <4 x float> %wide.load1512.1, %wide.load1508.1
  %i.avf = fadd fast <4 x float> %i.avd, %i.aun
  %i.avg = fadd fast <4 x float> %i.ave, %i.auo
  %i.avh = getelementptr inbounds nuw i8, ptr %i.atx, i64 32
  %i.avi = getelementptr inbounds nuw i8, ptr %i.atx, i64 48
  %wide.load1513.1 = load <4 x float>, ptr %i.avh, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1514.1 = load <4 x float>, ptr %i.avi, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.avj = fmul fast <4 x float> %wide.load1513.1, %wide.load1507.1
  %i.avk = fmul fast <4 x float> %wide.load1514.1, %wide.load1508.1
  %i.avl = fadd fast <4 x float> %i.avj, %i.auq
  %i.avm = fadd fast <4 x float> %i.avk, %i.aur
  %i.avn = getelementptr inbounds nuw i8, ptr %i.atr, i64 32
  %i.avo = getelementptr inbounds nuw i8, ptr %i.atr, i64 48
  %wide.load1515.1 = load <4 x float>, ptr %i.avn, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1516.1 = load <4 x float>, ptr %i.avo, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.avp = fmul fast <4 x float> %wide.load1515.1, %wide.load1507.1
  %i.avq = fmul fast <4 x float> %wide.load1516.1, %wide.load1508.1
  %i.avr = fadd fast <4 x float> %i.avp, %i.aut
  %i.avs = fadd fast <4 x float> %i.avq, %i.auu
  %i.avt = getelementptr inbounds nuw i8, ptr %i.aui, i64 64
  %i.avu = getelementptr inbounds nuw i8, ptr %i.aui, i64 80
  %wide.load1509.2 = load <4 x float>, ptr %i.avt, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1510.2 = load <4 x float>, ptr %i.avu, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.avv = fmul fast <4 x float> %wide.load1509.2, %wide.load1507.2
  %i.avw = fmul fast <4 x float> %wide.load1510.2, %wide.load1508.2
  %i.avx = fadd fast <4 x float> %i.avv, %i.auz
  %i.avy = fadd fast <4 x float> %i.avw, %i.ava
  %i.avz = getelementptr inbounds nuw i8, ptr %i.aud, i64 64
  %i.awa = getelementptr inbounds nuw i8, ptr %i.aud, i64 80
  %wide.load1511.2 = load <4 x float>, ptr %i.avz, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1512.2 = load <4 x float>, ptr %i.awa, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.awb = fmul fast <4 x float> %wide.load1511.2, %wide.load1507.2
  %i.awc = fmul fast <4 x float> %wide.load1512.2, %wide.load1508.2
  %i.awd = fadd fast <4 x float> %i.awb, %i.avf
  %i.awe = fadd fast <4 x float> %i.awc, %i.avg
  %i.awf = getelementptr inbounds nuw i8, ptr %i.atx, i64 64
  %i.awg = getelementptr inbounds nuw i8, ptr %i.atx, i64 80
  %wide.load1513.2 = load <4 x float>, ptr %i.awf, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1514.2 = load <4 x float>, ptr %i.awg, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.awh = fmul fast <4 x float> %wide.load1513.2, %wide.load1507.2
  %i.awi = fmul fast <4 x float> %wide.load1514.2, %wide.load1508.2
  %i.awj = fadd fast <4 x float> %i.awh, %i.avl
  %i.awk = fadd fast <4 x float> %i.awi, %i.avm
  %i.awl = getelementptr inbounds nuw i8, ptr %i.atr, i64 64
  %i.awm = getelementptr inbounds nuw i8, ptr %i.atr, i64 80
  %wide.load1515.2 = load <4 x float>, ptr %i.awl, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1516.2 = load <4 x float>, ptr %i.awm, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.awn = fmul fast <4 x float> %wide.load1515.2, %wide.load1507.2
  %i.awo = fmul fast <4 x float> %wide.load1516.2, %wide.load1508.2
  %i.awp = fadd fast <4 x float> %i.awn, %i.avr
  %i.awq = fadd fast <4 x float> %i.awo, %i.avs
  %i.awr = getelementptr inbounds nuw i8, ptr %i.aui, i64 96
  %i.aws = getelementptr inbounds nuw i8, ptr %i.aui, i64 112
  %wide.load1509.3 = load <4 x float>, ptr %i.awr, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1510.3 = load <4 x float>, ptr %i.aws, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.awt = fmul fast <4 x float> %wide.load1509.3, %wide.load1507.3
  %i.awu = fmul fast <4 x float> %wide.load1510.3, %wide.load1508.3
  %i.awv = fadd fast <4 x float> %i.awt, %i.avx
  %i.aww = fadd fast <4 x float> %i.awu, %i.avy
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aud, i64 96
  %i.awy = getelementptr inbounds nuw i8, ptr %i.aud, i64 112
  %wide.load1511.3 = load <4 x float>, ptr %i.awx, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1512.3 = load <4 x float>, ptr %i.awy, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.awz = fmul fast <4 x float> %wide.load1511.3, %wide.load1507.3
  %i.axa = fmul fast <4 x float> %wide.load1512.3, %wide.load1508.3
  %i.axb = fadd fast <4 x float> %i.awz, %i.awd
  %i.axc = fadd fast <4 x float> %i.axa, %i.awe
  %i.axd = getelementptr inbounds nuw i8, ptr %i.atx, i64 96
  %i.axe = getelementptr inbounds nuw i8, ptr %i.atx, i64 112
  %wide.load1513.3 = load <4 x float>, ptr %i.axd, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1514.3 = load <4 x float>, ptr %i.axe, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.axf = fmul fast <4 x float> %wide.load1513.3, %wide.load1507.3
  %i.axg = fmul fast <4 x float> %wide.load1514.3, %wide.load1508.3
  %i.axh = fadd fast <4 x float> %i.axf, %i.awj
  %i.axi = fadd fast <4 x float> %i.axg, %i.awk
  %i.axj = getelementptr inbounds nuw i8, ptr %i.atr, i64 96
  %i.axk = getelementptr inbounds nuw i8, ptr %i.atr, i64 112
  %wide.load1515.3 = load <4 x float>, ptr %i.axj, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1516.3 = load <4 x float>, ptr %i.axk, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.axl = fmul fast <4 x float> %wide.load1515.3, %wide.load1507.3
  %i.axm = fmul fast <4 x float> %wide.load1516.3, %wide.load1508.3
  %i.axn = fadd fast <4 x float> %i.axl, %i.awp
  %i.axo = fadd fast <4 x float> %i.axm, %i.awq
  %i.axp = getelementptr inbounds nuw i8, ptr %i.aui, i64 128
  %i.axq = getelementptr inbounds nuw i8, ptr %i.aui, i64 144
  %wide.load1509.4 = load <4 x float>, ptr %i.axp, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1510.4 = load <4 x float>, ptr %i.axq, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.axr = fmul fast <4 x float> %wide.load1509.4, %wide.load1507.4
  %i.axs = fmul fast <4 x float> %wide.load1510.4, %wide.load1508.4
  %i.axt = fadd fast <4 x float> %i.axr, %i.awv
  %i.axu = fadd fast <4 x float> %i.axs, %i.aww
  %i.axv = getelementptr inbounds nuw i8, ptr %i.aud, i64 128
  %i.axw = getelementptr inbounds nuw i8, ptr %i.aud, i64 144
  %wide.load1511.4 = load <4 x float>, ptr %i.axv, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1512.4 = load <4 x float>, ptr %i.axw, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.axx = fmul fast <4 x float> %wide.load1511.4, %wide.load1507.4
  %i.axy = fmul fast <4 x float> %wide.load1512.4, %wide.load1508.4
  %i.axz = fadd fast <4 x float> %i.axx, %i.axb
  %i.aya = fadd fast <4 x float> %i.axy, %i.axc
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.atx, i64 128
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.atx, i64 144
  %wide.load1513.4 = load <4 x float>, ptr %i.ayb, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1514.4 = load <4 x float>, ptr %i.ayc, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.ayd = fmul fast <4 x float> %wide.load1513.4, %wide.load1507.4
  %i.aye = fmul fast <4 x float> %wide.load1514.4, %wide.load1508.4
  %i.ayf = fadd fast <4 x float> %i.ayd, %i.axh
  %i.ayg = fadd fast <4 x float> %i.aye, %i.axi
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.atr, i64 128
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.atr, i64 144
  %wide.load1515.4 = load <4 x float>, ptr %i.ayh, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1516.4 = load <4 x float>, ptr %i.ayi, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.ayj = fmul fast <4 x float> %wide.load1515.4, %wide.load1507.4
  %i.ayk = fmul fast <4 x float> %wide.load1516.4, %wide.load1508.4
  %i.ayl = fadd fast <4 x float> %i.ayj, %i.axn
  %i.aym = fadd fast <4 x float> %i.ayk, %i.axo
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aui, i64 160
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.aui, i64 176
  %wide.load1509.5 = load <4 x float>, ptr %i.ayn, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1510.5 = load <4 x float>, ptr %i.ayo, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.ayp = fmul fast <4 x float> %wide.load1509.5, %wide.load1507.5
  %i.ayq = fmul fast <4 x float> %wide.load1510.5, %wide.load1508.5
  %i.ayr = fadd fast <4 x float> %i.ayp, %i.axt
  %i.ays = fadd fast <4 x float> %i.ayq, %i.axu
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.aud, i64 160
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.aud, i64 176
  %wide.load1511.5 = load <4 x float>, ptr %i.ayt, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1512.5 = load <4 x float>, ptr %i.ayu, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.ayv = fmul fast <4 x float> %wide.load1511.5, %wide.load1507.5
  %i.ayw = fmul fast <4 x float> %wide.load1512.5, %wide.load1508.5
  %i.ayx = fadd fast <4 x float> %i.ayv, %i.axz
  %i.ayy = fadd fast <4 x float> %i.ayw, %i.aya
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.atx, i64 160
  %i.aza = getelementptr inbounds nuw i8, ptr %i.atx, i64 176
  %wide.load1513.5 = load <4 x float>, ptr %i.ayz, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1514.5 = load <4 x float>, ptr %i.aza, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.azb = fmul fast <4 x float> %wide.load1513.5, %wide.load1507.5
  %i.azc = fmul fast <4 x float> %wide.load1514.5, %wide.load1508.5
  %i.azd = fadd fast <4 x float> %i.azb, %i.ayf
  %i.aze = fadd fast <4 x float> %i.azc, %i.ayg
  %i.azf = getelementptr inbounds nuw i8, ptr %i.atr, i64 160
  %i.azg = getelementptr inbounds nuw i8, ptr %i.atr, i64 176
  %wide.load1515.5 = load <4 x float>, ptr %i.azf, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1516.5 = load <4 x float>, ptr %i.azg, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.azh = fmul fast <4 x float> %wide.load1515.5, %wide.load1507.5
  %i.azi = fmul fast <4 x float> %wide.load1516.5, %wide.load1508.5
  %i.azj = fadd fast <4 x float> %i.azh, %i.ayl
  %i.azk = fadd fast <4 x float> %i.azi, %i.aym
  %i.azl = getelementptr inbounds nuw i8, ptr %i.aui, i64 192
  %i.azm = getelementptr inbounds nuw i8, ptr %i.aui, i64 208
  %wide.load1509.6 = load <4 x float>, ptr %i.azl, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1510.6 = load <4 x float>, ptr %i.azm, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.azn = fmul fast <4 x float> %wide.load1509.6, %wide.load1507.6
  %i.azo = fmul fast <4 x float> %wide.load1510.6, %wide.load1508.6
  %i.azp = fadd fast <4 x float> %i.azn, %i.ayr
  %i.azq = fadd fast <4 x float> %i.azo, %i.ays
  %i.azr = getelementptr inbounds nuw i8, ptr %i.aud, i64 192
  %i.azs = getelementptr inbounds nuw i8, ptr %i.aud, i64 208
  %wide.load1511.6 = load <4 x float>, ptr %i.azr, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1512.6 = load <4 x float>, ptr %i.azs, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.azt = fmul fast <4 x float> %wide.load1511.6, %wide.load1507.6
  %i.azu = fmul fast <4 x float> %wide.load1512.6, %wide.load1508.6
  %i.azv = fadd fast <4 x float> %i.azt, %i.ayx
  %i.azw = fadd fast <4 x float> %i.azu, %i.ayy
  %i.azx = getelementptr inbounds nuw i8, ptr %i.atx, i64 192
  %i.azy = getelementptr inbounds nuw i8, ptr %i.atx, i64 208
  %wide.load1513.6 = load <4 x float>, ptr %i.azx, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1514.6 = load <4 x float>, ptr %i.azy, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.azz = fmul fast <4 x float> %wide.load1513.6, %wide.load1507.6
  %i.baa = fmul fast <4 x float> %wide.load1514.6, %wide.load1508.6
  %i.bab = fadd fast <4 x float> %i.azz, %i.azd
  %i.bac = fadd fast <4 x float> %i.baa, %i.aze
  %i.bad = getelementptr inbounds nuw i8, ptr %i.atr, i64 192
  %i.bae = getelementptr inbounds nuw i8, ptr %i.atr, i64 208
  %wide.load1515.6 = load <4 x float>, ptr %i.bad, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %wide.load1516.6 = load <4 x float>, ptr %i.bae, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %i.baf = fmul fast <4 x float> %wide.load1515.6, %wide.load1507.6
  %i.bag = fmul fast <4 x float> %wide.load1516.6, %wide.load1508.6
  %i.bah = fadd fast <4 x float> %i.baf, %i.azj
  %i.bai = fadd fast <4 x float> %i.bag, %i.azk
  %bin.rdx1522 = fadd fast <4 x float> %i.azq, %i.azp
  %i.baj = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1522)
  %bin.rdx1521 = fadd fast <4 x float> %i.azw, %i.azv
  %i.bak = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1521)
  %bin.rdx1520 = fadd fast <4 x float> %i.bac, %i.bab
  %i.bal = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1520)
  %bin.rdx1519 = fadd fast <4 x float> %i.bai, %i.bah
  %i.bam = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1519)
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i.i.i.i.i.i
  store float %i.baj, ptr %i.ban, align 4, !tbaa !163, !alias.scope !674, !noalias !678
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.aty
  store float %i.bak, ptr %i.bao, align 4, !tbaa !163, !alias.scope !674, !noalias !678
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.ats
  store float %i.bal, ptr %i.bap, align 4, !tbaa !163, !alias.scope !674, !noalias !678
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.atm
  store float %i.bam, ptr %i.baq, align 4, !tbaa !163, !alias.scope !674, !noalias !678
  %i.bar = add i64 %i.atl, 4                      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bar, %.0607830
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !539

.lr.ph87.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i.i.i.i.i
  %.186.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.baz, %.lr.ph87.i.i.i.i.i.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i.i.i.i.i.i
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !44, !noalias !676
  %i.bau = zext i32 %i.bat to i64
  %i.bav = mul nsw i64 %i.gi, %i.bau
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.bav
  %21 = load <56 x float>, ptr %i.baw, align 4, !tbaa !163, !alias.scope !673, !noalias !677
  %22 = fmul fast <56 x float> %21, %20
  %i.bax = call fast float @llvm.vector.reduce.fadd.v56f32(float 0.000000e+00, <56 x float> %22)
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i.i.i.i.i.i
  store float %i.bax, ptr %i.bay, align 4, !tbaa !163, !alias.scope !674, !noalias !678
  %i.baz = add nuw i64 %.186.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond94.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.baz, %.0607830
  br i1 %exitcond94.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i, !llvm.loop !540

bb.bs:                                            ; preds = %.lr.ph833
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 32 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %.not82.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.bs
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 16
  %wide.load1548 = load <4 x float>, ptr %i.bba, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %wide.load1549 = load <4 x float>, ptr %i.bbb, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bba, i64 32
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bba, i64 48
  %wide.load1548.1 = load <4 x float>, ptr %i.bbc, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %wide.load1549.1 = load <4 x float>, ptr %i.bbd, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bba, i64 64
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bba, i64 80
  %wide.load1548.2 = load <4 x float>, ptr %i.bbe, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %wide.load1549.2 = load <4 x float>, ptr %i.bbf, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bba, i64 96
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bba, i64 112
  %wide.load1548.3 = load <4 x float>, ptr %i.bbg, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %wide.load1549.3 = load <4 x float>, ptr %i.bbh, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bba, i64 128
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bba, i64 144
  %wide.load1548.4 = load <4 x float>, ptr %i.bbi, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %wide.load1549.4 = load <4 x float>, ptr %i.bbj, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bba, i64 160
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bba, i64 176
  %wide.load1548.5 = load <4 x float>, ptr %i.bbk, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %wide.load1549.5 = load <4 x float>, ptr %i.bbl, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bba, i64 192
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bba, i64 208
  %wide.load1548.6 = load <4 x float>, ptr %i.bbm, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %wide.load1549.6 = load <4 x float>, ptr %i.bbn, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bba, i64 224
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bba, i64 240
  %wide.load1548.7 = load <4 x float>, ptr %i.bbo, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  %wide.load1549.7 = load <4 x float>, ptr %i.bbp, align 4, !tbaa !163, !alias.scope !679, !noalias !682 ; 4 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.bs
  %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bs ], [ %i.bcg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bbq = icmp ult i64 %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.0607830
  br i1 %i.bbq, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph827

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bba, i64 16
  %wide.load1529 = load <4 x float>, ptr %i.bba, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %wide.load1530 = load <4 x float>, ptr %i.bbr, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bba, i64 32
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bba, i64 48
  %wide.load1529.1 = load <4 x float>, ptr %i.bbs, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %wide.load1530.1 = load <4 x float>, ptr %i.bbt, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bba, i64 64
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bba, i64 80
  %wide.load1529.2 = load <4 x float>, ptr %i.bbu, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %wide.load1530.2 = load <4 x float>, ptr %i.bbv, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bba, i64 96
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bba, i64 112
  %wide.load1529.3 = load <4 x float>, ptr %i.bbw, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %wide.load1530.3 = load <4 x float>, ptr %i.bbx, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bba, i64 128
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bba, i64 144
  %wide.load1529.4 = load <4 x float>, ptr %i.bby, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %wide.load1530.4 = load <4 x float>, ptr %i.bbz, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bba, i64 160
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bba, i64 176
  %wide.load1529.5 = load <4 x float>, ptr %i.bca, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %wide.load1530.5 = load <4 x float>, ptr %i.bcb, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bba, i64 192
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bba, i64 208
  %wide.load1529.6 = load <4 x float>, ptr %i.bcc, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %wide.load1530.6 = load <4 x float>, ptr %i.bcd, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bba, i64 224
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bba, i64 240
  %wide.load1529.7 = load <4 x float>, ptr %i.bce, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  %wide.load1530.7 = load <4 x float>, ptr %i.bcf, align 4, !tbaa !163, !alias.scope !679, !noalias !682
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bcg = phi i64 [ %i.bkk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.07583.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bcg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.bch = or disjoint i64 %.07583.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.bch
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !44, !noalias !683
  %i.bck = zext i32 %i.bcj to i64
  %i.bcl = mul nsw i64 %i.gh, %i.bck
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.bcl ; 16 uses
  %i.bcn = or disjoint i64 %.07583.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.bcn
  %i.bcp = load i32, ptr %i.bco, align 4, !tbaa !44, !noalias !683
  %i.bcq = zext i32 %i.bcp to i64
  %i.bcr = mul nsw i64 %i.gh, %i.bcq
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.bcr ; 16 uses
  %i.bct = or disjoint i64 %.07583.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.bct
  %i.bcv = load i32, ptr %i.bcu, align 4, !tbaa !44, !noalias !683
  %i.bcw = zext i32 %i.bcv to i64
  %i.bcx = mul nsw i64 %i.gh, %i.bcw
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.bcx ; 16 uses
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i.i.i.i.i.i.i
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !44, !noalias !683
  %i.bdb = zext i32 %i.bda to i64
  %i.bdc = mul nsw i64 %i.gh, %i.bdb
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.bdc ; 16 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 16
  %wide.load1550 = load <4 x float>, ptr %i.bdd, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1551 = load <4 x float>, ptr %i.bde, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bdf = fmul fast <4 x float> %wide.load1550, %wide.load1548
  %i.bdg = fmul fast <4 x float> %wide.load1551, %wide.load1549
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bcy, i64 16
  %wide.load1552 = load <4 x float>, ptr %i.bcy, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1553 = load <4 x float>, ptr %i.bdh, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bdi = fmul fast <4 x float> %wide.load1552, %wide.load1548
  %i.bdj = fmul fast <4 x float> %wide.load1553, %wide.load1549
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bcs, i64 16
  %wide.load1554 = load <4 x float>, ptr %i.bcs, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1555 = load <4 x float>, ptr %i.bdk, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bdl = fmul fast <4 x float> %wide.load1554, %wide.load1548
  %i.bdm = fmul fast <4 x float> %wide.load1555, %wide.load1549
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 16
  %wide.load1556 = load <4 x float>, ptr %i.bcm, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1557 = load <4 x float>, ptr %i.bdn, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bdo = fmul fast <4 x float> %wide.load1556, %wide.load1548
  %i.bdp = fmul fast <4 x float> %wide.load1557, %wide.load1549
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdd, i64 32
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdd, i64 48
  %wide.load1550.1 = load <4 x float>, ptr %i.bdq, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1551.1 = load <4 x float>, ptr %i.bdr, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bds = fmul fast <4 x float> %wide.load1550.1, %wide.load1548.1
  %i.bdt = fmul fast <4 x float> %wide.load1551.1, %wide.load1549.1
  %i.bdu = fadd fast <4 x float> %i.bds, %i.bdf
  %i.bdv = fadd fast <4 x float> %i.bdt, %i.bdg
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bcy, i64 32
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bcy, i64 48
  %wide.load1552.1 = load <4 x float>, ptr %i.bdw, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1553.1 = load <4 x float>, ptr %i.bdx, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bdy = fmul fast <4 x float> %wide.load1552.1, %wide.load1548.1
  %i.bdz = fmul fast <4 x float> %wide.load1553.1, %wide.load1549.1
  %i.bea = fadd fast <4 x float> %i.bdy, %i.bdi
  %i.beb = fadd fast <4 x float> %i.bdz, %i.bdj
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bcs, i64 32
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bcs, i64 48
  %wide.load1554.1 = load <4 x float>, ptr %i.bec, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1555.1 = load <4 x float>, ptr %i.bed, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bee = fmul fast <4 x float> %wide.load1554.1, %wide.load1548.1
  %i.bef = fmul fast <4 x float> %wide.load1555.1, %wide.load1549.1
  %i.beg = fadd fast <4 x float> %i.bee, %i.bdl
  %i.beh = fadd fast <4 x float> %i.bef, %i.bdm
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bcm, i64 32
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bcm, i64 48
  %wide.load1556.1 = load <4 x float>, ptr %i.bei, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1557.1 = load <4 x float>, ptr %i.bej, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bek = fmul fast <4 x float> %wide.load1556.1, %wide.load1548.1
  %i.bel = fmul fast <4 x float> %wide.load1557.1, %wide.load1549.1
  %i.bem = fadd fast <4 x float> %i.bek, %i.bdo
  %i.ben = fadd fast <4 x float> %i.bel, %i.bdp
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bdd, i64 64
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bdd, i64 80
  %wide.load1550.2 = load <4 x float>, ptr %i.beo, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1551.2 = load <4 x float>, ptr %i.bep, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.beq = fmul fast <4 x float> %wide.load1550.2, %wide.load1548.2
  %i.ber = fmul fast <4 x float> %wide.load1551.2, %wide.load1549.2
  %i.bes = fadd fast <4 x float> %i.beq, %i.bdu
  %i.bet = fadd fast <4 x float> %i.ber, %i.bdv
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bcy, i64 64
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bcy, i64 80
  %wide.load1552.2 = load <4 x float>, ptr %i.beu, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1553.2 = load <4 x float>, ptr %i.bev, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bew = fmul fast <4 x float> %wide.load1552.2, %wide.load1548.2
  %i.bex = fmul fast <4 x float> %wide.load1553.2, %wide.load1549.2
  %i.bey = fadd fast <4 x float> %i.bew, %i.bea
  %i.bez = fadd fast <4 x float> %i.bex, %i.beb
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bcs, i64 64
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bcs, i64 80
  %wide.load1554.2 = load <4 x float>, ptr %i.bfa, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1555.2 = load <4 x float>, ptr %i.bfb, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bfc = fmul fast <4 x float> %wide.load1554.2, %wide.load1548.2
  %i.bfd = fmul fast <4 x float> %wide.load1555.2, %wide.load1549.2
  %i.bfe = fadd fast <4 x float> %i.bfc, %i.beg
  %i.bff = fadd fast <4 x float> %i.bfd, %i.beh
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bcm, i64 64
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bcm, i64 80
  %wide.load1556.2 = load <4 x float>, ptr %i.bfg, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %wide.load1557.2 = load <4 x float>, ptr %i.bfh, align 4, !tbaa !163, !alias.scope !680, !noalias !684
  %i.bfi = fmul fast <4 x float> %wide.load1556.2, %wide.load1548.2
  %i.bfj = fmul fast <4 x float> %wide.load1557.2, %wide.load1549.2
  %i.bfk = fadd fast <4 x float> %i.bfi, %i.bem
  %i.bfl = fadd fast <4 x float> %i.bfj, %i.ben
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bdd, i64 96
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bdd, i64 112
  %wide.load1550.3 = load <4 x float>, ptr %i.bfm, align 4, !tbaa !163, !alias.scope !680, !noalias !684
end_hunk_0
begin_hunk_1_@_ZN5faiss16MaybeOwnedVectorIiEC2EOS1_:_ZNSt6vectorIiSaIiEEaSEOS1_.exit
_ZNSt6vectorIiSaIiEEaSEOS1_.exit:
  store i8 1, ptr %0, align 8, !tbaa !85
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.e = load i8, ptr %1, align 8, !tbaa !85, !range !118, !noundef !119
  store i8 %i.e, ptr %0, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !222
  store <2 x ptr> %i.i, ptr %i.a, align 8, !tbaa !222
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  store ptr %i.k, ptr %i.h, align 8, !tbaa !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !912
  store ptr %i.m, ptr %i.b, align 8, !tbaa !912
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !913
  store i64 %i.o, ptr %i.c, align 8, !tbaa !913
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !114  ; 8 uses
  store <2 x ptr> %i.s, ptr %i.d, align 8, !tbaa !240
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEEaSEOS2_.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.u, align 8, !tbaa !116
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !117
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #20, !inline_history !911
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #20, !inline_history !911
  br label %_ZNSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEEaSEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i7 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %bb.d ], [ %i.ah, %bb.e ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.f, label %_ZNSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEEaSEOS2_.exit, !prof !68

bb.f:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #20
  br label %_ZNSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEEaSEOS2_.exit

_ZNSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEEaSEOS2_.exit: ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, %bb.b, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.f
  store ptr null, ptr %i.p, align 8, !tbaa !914
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !114 ; 8 uses
  store ptr null, ptr %i.q, align 8, !tbaa !114
  %.not.i.i.i.i8 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i8, label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEEaSEOS2_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ak, align 8, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !117
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #20, !inline_history !911
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #20, !inline_history !911
  br label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i9 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i10

bb.k:                                             ; preds = %bb.i
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i10: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i11 = phi i32 [ %i.an, %bb.j ], [ %i.ax, %bb.k ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i11, 1
  br i1 %i.ay, label %bb.l, label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i10
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #20
  br label %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i10, %bb.h, %_ZNSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEEaSEOS2_.exit
  %i.az = load i8, ptr %0, align 8, !tbaa !85, !range !118, !noundef !119
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !912
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !913
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink = phi ptr [ %i.bb, %bb.m ], [ %i.bh, %bb.n ]
  %storemerge = phi i64 [ %i.bg, %bb.m ], [ %i.bi, %bb.n ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sink, ptr %i.bk, align 8, !tbaa !122
  store i64 %storemerge, ptr %i.bj, align 8, !tbaa !123
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v24f32(float, <24 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v32f32(float, <32 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v40f32(float, <40 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v48f32(float, <48 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v56f32(float, <56 x float>) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { convergent nounwind }
attributes #23 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { cold nounwind }

!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}
!llvm.errno.tbaa = !{!33}

!0 = distinct !{!0, !42}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{!3, !42}
!4 = distinct !{!4, !42}
!5 = distinct !{!5, !42}
!6 = distinct !{!6, !42}
!7 = distinct !{!7, !42}
!8 = distinct !{!8, !42}
!9 = distinct !{!9, !42}
!10 = distinct !{!10, !42}
!11 = distinct !{!11, !42}
!12 = distinct !{!12, !42}
!13 = distinct !{!13, !42}
!14 = distinct !{!14, !42}
!15 = distinct !{!15, !42}
!16 = distinct !{!16, !42}
!17 = distinct !{!17, !42}
!18 = distinct !{!18, !42}
!19 = distinct !{!19, !42}
!20 = distinct !{!20, !42}
!21 = distinct !{!21, !42}
!22 = distinct !{!22, !42}
!23 = distinct !{!23, !42}
!24 = distinct !{ptr @_ZN5faiss16MaybeOwnedVectorIiED2Ev, null, null, null}
!25 = !{i32 7, !"openmp", i32 51}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!"omnipotent char", !29, i64 0}
!31 = !{!"int", !30, i64 0}
!32 = !{!"__libc_errno", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !{!"p1 _ZTSN5faiss4HNSW16NodeDistFartherTINS_4CMaxIflEEEE", !34, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN5faiss4HNSW16NodeDistFartherTINS0_4CMaxIflEEEESaIS5_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 8}
!38 = !{!36, !35, i64 0}
!39 = !{!"float", !30, i64 0}
!40 = !{!"_ZTSN5faiss4HNSW16NodeDistFartherTINS_4CMaxIflEEEE", !39, i64 0, !31, i64 4}
!41 = !{!40, !39, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!35, !35, i64 0}
!44 = !{!31, !31, i64 0}
!45 = !{!"vtable pointer", !29, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!36, !35, i64 16}
!48 = !{!"p1 _ZTSN5faiss4HNSW16NodeDistFartherTINS_4CMinIflEEEE", !34, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN5faiss4HNSW16NodeDistFartherTINS0_4CMinIflEEEESaIS5_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!49, !48, i64 8}
!51 = !{!49, !48, i64 0}
!52 = !{!"_ZTSN5faiss4HNSW16NodeDistFartherTINS_4CMinIflEEEE", !39, i64 0, !31, i64 4}
!53 = !{!52, !39, i64 0}
!54 = !{!48, !48, i64 0}
!55 = !{!49, !48, i64 16}
!56 = !{!"p1 int", !34, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!57, !56, i64 8}
!59 = !{!57, !56, i64 0}
!60 = !{!"p1 omnipotent char", !34, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !60, i64 0}
!62 = !{!61, !60, i64 0}
!63 = !{!"long", !30, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !61, i64 0, !63, i64 8, !30, i64 16}
!65 = !{!64, !63, i64 8}
!66 = !{!30, !30, i64 0}
!67 = !{!64, !60, i64 0}
!68 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!"p1 long", !34, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 0}
!74 = !{!63, !63, i64 0}
!75 = !{!"bool", !30, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !57, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIiSaIiEE", !77, i64 0}
!79 = !{!"p1 _ZTSN5faiss21MaybeOwnedVectorOwnerE", !34, i64 0}
!80 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0}
!81 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !80, i64 0}
!82 = !{!"_ZTSSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !81, i64 8}
!83 = !{!"_ZTSSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEE", !82, i64 0}
!84 = !{!"_ZTSN5faiss16MaybeOwnedVectorIiEE", !75, i64 0, !78, i64 8, !56, i64 32, !63, i64 40, !83, i64 48, !56, i64 64, !63, i64 72}
!85 = !{!84, !75, i64 0}
!86 = !{!"p1 double", !34, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !87, i64 0}
!89 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !88, i64 0}
!90 = !{!"_ZTSSt6vectorIdSaIdEE", !89, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !72, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseImSaImEE", !91, i64 0}
!93 = !{!"_ZTSSt6vectorImSaImEE", !92, i64 0}
!94 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !30, i64 0, !63, i64 4992}
!95 = !{!"_ZTSN5faiss15RandomGeneratorE", !94, i64 0}
!96 = !{!"_ZTSSt22_Optional_payload_baseIbE", !30, i64 0, !75, i64 1}
!97 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !97, i64 0}
!99 = !{!"_ZTSSt8optionalIbE", !98, i64 0}
!100 = !{!"_ZTSN5faiss4HNSWE", !90, i64 0, !78, i64 24, !78, i64 48, !93, i64 72, !84, i64 96, !31, i64 176, !95, i64 184, !31, i64 5184, !31, i64 5188, !31, i64 5192, !39, i64 5196, !75, i64 5200, !75, i64 5201, !75, i64 5202, !75, i64 5203, !99, i64 5204}
!101 = !{!100, !31, i64 176}
!102 = !{!100, !31, i64 5184}
!103 = !{!100, !31, i64 5188}
!104 = !{!100, !31, i64 5192}
!105 = !{!75, !75, i64 0}
!106 = !{!72, !71, i64 8}
!107 = !{!72, !71, i64 16}
!108 = !{!57, !56, i64 16}
!109 = !{!87, !86, i64 0}
!110 = !{!87, !86, i64 16}
!111 = !{!87, !86, i64 8}
!112 = !{!"double", !30, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!81, !80, i64 0}
!115 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !31, i64 8, !31, i64 12}
!116 = !{!115, !31, i64 8}
!117 = !{!115, !31, i64 12}
!118 = !{i8 0, i8 2}
!119 = !{}
!120 = !{!"p1 _ZTS8_IO_FILE", !34, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!84, !56, i64 64}
!123 = !{!84, !63, i64 72}
!124 = !{!"any p2 pointer", !34, i64 0}
!125 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !124, i64 0}
!126 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!127 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !126, i64 0}
!128 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !39, i64 0, !63, i64 8}
!129 = !{!"_ZTSSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !125, i64 0, !63, i64 8, !127, i64 16, !63, i64 24, !128, i64 32, !126, i64 48}
!130 = !{!129, !125, i64 0}
!131 = !{!129, !63, i64 8}
!132 = !{!128, !39, i64 0}
!133 = !{!126, !126, i64 0}
!134 = !{!127, !126, i64 0}
!135 = !{!129, !63, i64 24}
!136 = !{!129, !126, i64 16}
!137 = !{i64 2, i64 -1, i64 -1, i1 true}
!138 = !{!137}
!139 = !{!128, !63, i64 8}
!140 = !{!100, !75, i64 5203}
!141 = !{!52, !31, i64 4}
!142 = !{!"p1 _ZTSN5faiss4HNSW15NodeDistCloserTINS_4CMinIflEEEE", !34, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE17_Vector_impl_dataE", !142, i64 0, !142, i64 8, !142, i64 16}
!144 = !{!143, !142, i64 8}
!145 = !{!143, !142, i64 16}
!146 = !{!"_ZTSN5faiss4HNSW15NodeDistCloserTINS_4CMinIflEEEE", !39, i64 0, !31, i64 4}
!147 = !{!146, !39, i64 0}
!148 = !{!146, !31, i64 4}
!149 = !{!142, !142, i64 0}
!150 = !{!143, !142, i64 0}
!151 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!152 = !{!151, !60, i64 0}
!153 = !{!"_ZTSN5faiss12VisitedTableE"}
!154 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !151, i64 0}
!155 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !154, i64 0}
!156 = !{!"_ZTSSt6vectorIhSaIhEE", !155, i64 0}
!157 = !{!"_ZTSN5faiss18VisitedTableVectorE", !153, i64 0, !156, i64 8, !30, i64 32}
!158 = !{!157, !30, i64 32}
end_hunk_1
