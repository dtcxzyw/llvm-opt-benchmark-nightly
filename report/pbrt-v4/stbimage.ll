Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stbimage?download=true
inline.NumInlined: 826
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %indvars.iv.next539.i.i = add nuw nsw i64 %indvars.iv538.i.i, 1 ; 2 uses
  %i.cms = load i32, ptr %i.ckl, align 8, !tbaa !56
  %i.cmt = zext i32 %i.cms to i64
  %i.cmu = icmp samesign ult i64 %indvars.iv.next539.i.i, %i.cmt
  br i1 %i.cmu, label %bb.pj, label %.loopexit.i.i, !llvm.loop !231

bb.pk:                                            ; preds = %bb.pi
  %i.cmv = load ptr, ptr %i.atd, align 8, !tbaa !246
  %i.cmw = load ptr, ptr %i.cil, align 8, !tbaa !19
  %i.cmx = load ptr, ptr %i.cim, align 16, !tbaa !19
  %i.cmy = load i32, ptr %i.ckl, align 8, !tbaa !56
  call void %i.cmv(ptr noundef nonnull %i.ckj, ptr noundef %i.ckk, ptr noundef %i.cmw, ptr noundef %i.cmx, i32 noundef %i.cmy, i32 noundef %i.cfr), !inline_history !228
  %i.cmz = load ptr, ptr %i.ata, align 8, !tbaa !55 ; 4 uses
  %i.cna = load i32, ptr %i.cmz, align 8, !tbaa !56
  %.not452.i.i = icmp eq i32 %i.cna, 0
  br i1 %.not452.i.i, label %.loopexit.i.i, label %.lver.check

.lver.check:                                      ; preds = %bb.pk
  %i.cnb = load ptr, ptr %i.cij, align 8, !tbaa !19
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pl, %.lver.check
  %indvars.iv535.i.i.lver.orig = phi i64 [ 0, %.lver.check ], [ %indvars.iv.next536.i.i.lver.orig, %bb.pl ] ; 2 uses
  %.2262431.i.i.lver.orig = phi ptr [ %i.ckj, %.lver.check ], [ %i.cod, %bb.pl ] ; 5 uses
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cnb, i64 %indvars.iv535.i.i.lver.orig
  %i.cnd = load i8, ptr %i.cnc, align 1, !tbaa !32
  %i.cne = load i8, ptr %.2262431.i.i.lver.orig, align 1, !tbaa !32
  %i.cnf = xor i8 %i.cne, -1
  %i.cng = zext i8 %i.cnf to i32
  %i.cnh = zext i8 %i.cnd to i32                  ; 2 uses
  %i.cni = mul nuw nsw i32 %i.cng, %i.cnh
  %i.cnj = add nuw nsw i32 %i.cni, 128            ; 2 uses
  %i.cnk = lshr i32 %i.cnj, 8
  %i.cnl = add nuw nsw i32 %i.cnk, %i.cnj
  %i.cnm = lshr i32 %i.cnl, 8
  %i.cnn = trunc nuw i32 %i.cnm to i8
  store i8 %i.cnn, ptr %.2262431.i.i.lver.orig, align 1, !tbaa !32
  %i.cno = getelementptr inbounds nuw i8, ptr %.2262431.i.i.lver.orig, i64 1 ; 2 uses
  %i.cnp = getelementptr inbounds nuw i8, ptr %.2262431.i.i.lver.orig, i64 2
  %i.cnq = load <2 x i8>, ptr %i.cno, align 1, !tbaa !32
  %i.cnr = xor <2 x i8> %i.cnq, splat (i8 -1)
  %i.cns = zext <2 x i8> %i.cnr to <2 x i32>
  %i.cnt = insertelement <2 x i32> poison, i32 %i.cnh, i64 0
  %i.cnu = shufflevector <2 x i32> %i.cnt, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cnv = mul nuw nsw <2 x i32> %i.cnu, %i.cns
  %i.cnw = add nuw nsw <2 x i32> %i.cnv, splat (i32 128) ; 2 uses
  %i.cnx = lshr <2 x i32> %i.cnw, splat (i32 8)
  %i.cny = add nuw nsw <2 x i32> %i.cnx, %i.cnw
  %i.cnz = lshr <2 x i32> %i.cny, splat (i32 8)
  %i.coa = trunc <2 x i32> %i.cnz to <2 x i8>     ; 2 uses
  %i.cob = extractelement <2 x i8> %i.coa, i64 0
  store i8 %i.cob, ptr %i.cno, align 1, !tbaa !32
  %i.coc = extractelement <2 x i8> %i.coa, i64 1
  store i8 %i.coc, ptr %i.cnp, align 1, !tbaa !32
  %i.cod = getelementptr inbounds nuw i8, ptr %.2262431.i.i.lver.orig, i64 %i.cik
  %indvars.iv.next536.i.i.lver.orig = add nuw nsw i64 %indvars.iv535.i.i.lver.orig, 1 ; 2 uses
  %i.coe = load i32, ptr %i.cmz, align 8, !tbaa !56
  %i.cof = zext i32 %i.coe to i64
  %i.cog = icmp samesign ult i64 %indvars.iv.next536.i.i.lver.orig, %i.cof
  br i1 %i.cog, label %bb.pl, label %.loopexit.i.i, !llvm.loop !232

.lr.ph442.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph442.i.i
  %indvars.iv544.i.i = phi i64 [ %indvars.iv.next545.i.i, %.lr.ph442.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.3263441.i.i = phi ptr [ %i.col, %.lr.ph442.i.i ], [ %i.ckj, %.preheader.i.i ] ; 2 uses
  %i.coh = getelementptr inbounds nuw i8, ptr %i.ckk, i64 %indvars.iv544.i.i
  %i.coi = load i8, ptr %i.coh, align 1, !tbaa !32
  %i.coj = insertelement <4 x i8> <i8 poison, i8 -1, i8 poison, i8 poison>, i8 %i.coi, i64 0
  %i.cok = shufflevector <4 x i8> %i.coj, <4 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i8> %i.cok, ptr %.3263441.i.i, align 1, !tbaa !32
  %i.col = getelementptr inbounds nuw i8, ptr %.3263441.i.i, i64 %i.cik
  %indvars.iv.next545.i.i = add nuw nsw i64 %indvars.iv544.i.i, 1 ; 2 uses
  %i.com = load i32, ptr %i.ckl, align 8, !tbaa !56
  %i.con = zext i32 %i.com to i64
  %i.coo = icmp samesign ult i64 %indvars.iv.next545.i.i, %i.con
  br i1 %i.coo, label %.lr.ph442.i.i, label %.loopexit.i.i, !llvm.loop !233

bb.pm:                                            ; preds = %._crit_edge.i.i
  %i.cop = load ptr, ptr %i.ata, align 8, !tbaa !55 ; 23 uses
  br i1 %i.cft, label %bb.pn, label %bb.pq

bb.pn:                                            ; preds = %bb.pm
  %i.coq = load i32, ptr %i.cop, align 8, !tbaa !56
  %.not451.i.i = icmp eq i32 %i.coq, 0            ; 2 uses
  br i1 %i.cii, label %.preheader352.i.i, label %.preheader354.i.i

.preheader354.i.i:                                ; preds = %bb.pn
  br i1 %.not451.i.i, label %.loopexit.i.i, label %.lr.ph426.i.i

.lr.ph426.i.i:                                    ; preds = %.preheader354.i.i
  %i.cor = load ptr, ptr %i.c, align 16, !tbaa !19
  %i.cos = load ptr, ptr %i.cil, align 8, !tbaa !19
  %i.cot = load ptr, ptr %i.cim, align 16, !tbaa !19
  br label %bb.pp

.preheader352.i.i:                                ; preds = %bb.pn
  br i1 %.not451.i.i, label %.loopexit.i.i, label %.lr.ph429.i.i

.lr.ph429.i.i:                                    ; preds = %.preheader352.i.i
  %i.cou = load ptr, ptr %i.c, align 16, !tbaa !19
  %i.cov = load ptr, ptr %i.cil, align 8, !tbaa !19
  %i.cow = load ptr, ptr %i.cim, align 16, !tbaa !19
  br label %bb.po

bb.po:                                            ; preds = %bb.po, %.lr.ph429.i.i
  %indvars.iv532.i.i = phi i64 [ 0, %.lr.ph429.i.i ], [ %indvars.iv.next533.i.i, %bb.po ] ; 4 uses
  %.4428.i.i = phi ptr [ %i.ckj, %.lr.ph429.i.i ], [ %i.cpn, %bb.po ] ; 2 uses
  %i.cox = getelementptr inbounds nuw i8, ptr %i.cou, i64 %indvars.iv532.i.i
  %i.coy = load i8, ptr %i.cox, align 1, !tbaa !32
  %i.coz = zext i8 %i.coy to i16
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.cov, i64 %indvars.iv532.i.i
  %i.cpb = load i8, ptr %i.cpa, align 1, !tbaa !32
  %i.cpc = zext i8 %i.cpb to i16
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cow, i64 %indvars.iv532.i.i
  %i.cpe = load i8, ptr %i.cpd, align 1, !tbaa !32
  %i.cpf = zext i8 %i.cpe to i16
  %i.cpg = mul nuw nsw i16 %i.coz, 77
  %i.cph = mul nuw i16 %i.cpc, 150
  %i.cpi = add nuw i16 %i.cph, %i.cpg
  %i.cpj = mul nuw nsw i16 %i.cpf, 29
  %i.cpk = add nuw i16 %i.cpi, %i.cpj
  %i.cpl = lshr i16 %i.cpk, 8
  %i.cpm = trunc nuw i16 %i.cpl to i8
  %i.cpn = getelementptr inbounds nuw i8, ptr %.4428.i.i, i64 1
  store i8 %i.cpm, ptr %.4428.i.i, align 1, !tbaa !32
  %indvars.iv.next533.i.i = add nuw nsw i64 %indvars.iv532.i.i, 1 ; 2 uses
  %i.cpo = load i32, ptr %i.cop, align 8, !tbaa !56
  %i.cpp = zext i32 %i.cpo to i64
  %i.cpq = icmp samesign ult i64 %indvars.iv.next533.i.i, %i.cpp
  br i1 %i.cpq, label %bb.po, label %.loopexit.i.i, !llvm.loop !234

bb.pp:                                            ; preds = %bb.pp, %.lr.ph426.i.i
  %indvars.iv529.i.i = phi i64 [ 0, %.lr.ph426.i.i ], [ %indvars.iv.next530.i.i, %bb.pp ] ; 4 uses
  %.5425.i.i = phi ptr [ %i.ckj, %.lr.ph426.i.i ], [ %i.cqi, %bb.pp ] ; 3 uses
  %i.cpr = getelementptr inbounds nuw i8, ptr %i.cor, i64 %indvars.iv529.i.i
  %i.cps = load i8, ptr %i.cpr, align 1, !tbaa !32
  %i.cpt = zext i8 %i.cps to i16
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cos, i64 %indvars.iv529.i.i
  %i.cpv = load i8, ptr %i.cpu, align 1, !tbaa !32
  %i.cpw = zext i8 %i.cpv to i16
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.cot, i64 %indvars.iv529.i.i
  %i.cpy = load i8, ptr %i.cpx, align 1, !tbaa !32
  %i.cpz = zext i8 %i.cpy to i16
  %i.cqa = mul nuw nsw i16 %i.cpt, 77
  %i.cqb = mul nuw i16 %i.cpw, 150
  %i.cqc = add nuw i16 %i.cqb, %i.cqa
  %i.cqd = mul nuw nsw i16 %i.cpz, 29
  %i.cqe = add nuw i16 %i.cqc, %i.cqd
  %i.cqf = lshr i16 %i.cqe, 8
  %i.cqg = trunc nuw i16 %i.cqf to i8
  store i8 %i.cqg, ptr %.5425.i.i, align 1, !tbaa !32
  %i.cqh = getelementptr inbounds nuw i8, ptr %.5425.i.i, i64 1
  store i8 -1, ptr %i.cqh, align 1, !tbaa !32
  %indvars.iv.next530.i.i = add nuw nsw i64 %indvars.iv529.i.i, 1 ; 2 uses
  %i.cqi = getelementptr inbounds nuw i8, ptr %.5425.i.i, i64 2
  %i.cqj = load i32, ptr %i.cop, align 8, !tbaa !56
  %i.cqk = zext i32 %i.cqj to i64
  %i.cql = icmp samesign ult i64 %indvars.iv.next530.i.i, %i.cqk
  br i1 %i.cql, label %bb.pp, label %.loopexit.i.i, !llvm.loop !235

bb.pq:                                            ; preds = %bb.pm
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cop, i64 8
  %i.cqn = load i32, ptr %i.cqm, align 8, !tbaa !58
  %i.cqo = icmp eq i32 %i.cqn, 4
  br i1 %i.cqo, label %bb.pr, label %bb.pu

bb.pr:                                            ; preds = %bb.pq
  %i.cqp = load i32, ptr %i.cih, align 4, !tbaa !71
  switch i32 %i.cqp, label %bb.pu [
    i32 0, label %.preheader356.i.i
    i32 2, label %.preheader358.i.i
  ]

.preheader356.i.i:                                ; preds = %bb.pr
  %i.cqq = load i32, ptr %i.cop, align 8, !tbaa !56
  %.not449.i.i = icmp eq i32 %i.cqq, 0
  br i1 %.not449.i.i, label %.loopexit.i.i, label %.lr.ph423.i.i

.lr.ph423.i.i:                                    ; preds = %.preheader356.i.i
  %i.cqr = load ptr, ptr %i.cij, align 8, !tbaa !19
  %i.cqs = load ptr, ptr %i.c, align 16, !tbaa !19
  %i.cqt = load ptr, ptr %i.cil, align 8, !tbaa !19
  %i.cqu = load ptr, ptr %i.cim, align 16, !tbaa !19
  br label %bb.ps

bb.ps:                                            ; preds = %bb.ps, %.lr.ph423.i.i
  %indvars.iv526.i.i = phi i64 [ 0, %.lr.ph423.i.i ], [ %indvars.iv.next527.i.i, %bb.ps ] ; 5 uses
  %.6422.i.i = phi ptr [ %i.ckj, %.lr.ph423.i.i ], [ %i.crn, %bb.ps ] ; 3 uses
  %i.cqv = getelementptr inbounds nuw i8, ptr %i.cqr, i64 %indvars.iv526.i.i
  %i.cqw = load i8, ptr %i.cqv, align 1, !tbaa !32
  %i.cqx = getelementptr inbounds nuw i8, ptr %i.cqs, i64 %indvars.iv526.i.i
  %i.cqy = load i8, ptr %i.cqx, align 1, !tbaa !32
  %i.cqz = zext i8 %i.cqy to i32
  %i.cra = zext i8 %i.cqw to i32                  ; 3 uses
  %i.crb = mul nuw nsw i32 %i.cqz, %i.cra
  %i.crc = add nuw nsw i32 %i.crb, 128            ; 2 uses
  %i.crd = lshr i32 %i.crc, 8
  %i.cre = add nuw nsw i32 %i.crd, %i.crc
  %i.crf = lshr i32 %i.cre, 8
  %i.crg = getelementptr inbounds nuw i8, ptr %i.cqt, i64 %indvars.iv526.i.i
  %i.crh = load i8, ptr %i.crg, align 1, !tbaa !32
  %10 = getelementptr inbounds nuw i8, ptr %i.cqu, i64 %indvars.iv526.i.i
  %11 = load i8, ptr %10, align 1, !tbaa !32
  %12 = mul nuw nsw i32 %i.crf, 77
  %13 = zext i8 %i.crh to i32
  %14 = mul nuw nsw i32 %13, %i.cra
  %15 = zext i8 %11 to i32
  %16 = mul nuw nsw i32 %15, %i.cra
  %17 = insertelement <2 x i32> poison, i32 %14, i64 0
  %18 = insertelement <2 x i32> %17, i32 %16, i64 1
  %19 = add nuw nsw <2 x i32> %18, splat (i32 128) ; 2 uses
  %20 = lshr <2 x i32> %19, splat (i32 8)
  %21 = add nuw nsw <2 x i32> %20, %19
  %22 = lshr <2 x i32> %21, splat (i32 8)
  %23 = mul nuw nsw <2 x i32> %22, <i32 150, i32 29> ; 2 uses
  %24 = extractelement <2 x i32> %23, i64 0
  %i.cri = add nuw nsw i32 %24, %12
  %25 = extractelement <2 x i32> %23, i64 1
  %i.crj = add nuw nsw i32 %i.cri, %25
  %i.crk = lshr i32 %i.crj, 8
  %i.crl = trunc nuw i32 %i.crk to i8
  store i8 %i.crl, ptr %.6422.i.i, align 1, !tbaa !32
  %i.crm = getelementptr inbounds nuw i8, ptr %.6422.i.i, i64 1
  store i8 -1, ptr %i.crm, align 1, !tbaa !32
  %i.crn = getelementptr inbounds nuw i8, ptr %.6422.i.i, i64 %i.cik
  %indvars.iv.next527.i.i = add nuw nsw i64 %indvars.iv526.i.i, 1 ; 2 uses
  %i.cro = load i32, ptr %i.cop, align 8, !tbaa !56
  %i.crp = zext i32 %i.cro to i64
  %i.crq = icmp samesign ult i64 %indvars.iv.next527.i.i, %i.crp
  br i1 %i.crq, label %bb.ps, label %.loopexit.i.i, !llvm.loop !236

.preheader358.i.i:                                ; preds = %bb.pr
  %i.crr = load i32, ptr %i.cop, align 8, !tbaa !56
  %.not448.i.i = icmp eq i32 %i.crr, 0
  br i1 %.not448.i.i, label %.loopexit.i.i, label %.lr.ph420.i.i

.lr.ph420.i.i:                                    ; preds = %.preheader358.i.i
  %i.crs = load ptr, ptr %i.c, align 16, !tbaa !19
  %i.crt = load ptr, ptr %i.cij, align 8, !tbaa !19
  br label %bb.pt

bb.pt:                                            ; preds = %bb.pt, %.lr.ph420.i.i
  %indvars.iv523.i.i = phi i64 [ 0, %.lr.ph420.i.i ], [ %indvars.iv.next524.i.i, %bb.pt ] ; 3 uses
  %.7419.i.i = phi ptr [ %i.ckj, %.lr.ph420.i.i ], [ %i.csi, %bb.pt ] ; 3 uses
  %i.cru = getelementptr inbounds nuw i8, ptr %i.crs, i64 %indvars.iv523.i.i
  %i.crv = load i8, ptr %i.cru, align 1, !tbaa !32
  %i.crw = xor i8 %i.crv, -1
  %i.crx = getelementptr inbounds nuw i8, ptr %i.crt, i64 %indvars.iv523.i.i
  %i.cry = load i8, ptr %i.crx, align 1, !tbaa !32
  %i.crz = zext i8 %i.crw to i32
  %i.csa = zext i8 %i.cry to i32
  %i.csb = mul nuw nsw i32 %i.csa, %i.crz
  %i.csc = add nuw nsw i32 %i.csb, 128            ; 2 uses
  %i.csd = lshr i32 %i.csc, 8
  %i.cse = add nuw nsw i32 %i.csd, %i.csc
  %i.csf = lshr i32 %i.cse, 8
  %i.csg = trunc nuw i32 %i.csf to i8
  store i8 %i.csg, ptr %.7419.i.i, align 1, !tbaa !32
  %i.csh = getelementptr inbounds nuw i8, ptr %.7419.i.i, i64 1
  store i8 -1, ptr %i.csh, align 1, !tbaa !32
  %i.csi = getelementptr inbounds nuw i8, ptr %.7419.i.i, i64 %i.cik
  %indvars.iv.next524.i.i = add nuw nsw i64 %indvars.iv523.i.i, 1 ; 2 uses
  %i.csj = load i32, ptr %i.cop, align 8, !tbaa !56
  %i.csk = zext i32 %i.csj to i64
  %i.csl = icmp samesign ult i64 %indvars.iv.next524.i.i, %i.csk
  br i1 %i.csl, label %bb.pt, label %.loopexit.i.i, !llvm.loop !237

bb.pu:                                            ; preds = %bb.pr, %bb.pq
  %i.csm = load ptr, ptr %i.c, align 16, !tbaa !19 ; 2 uses
  %i.csn = load i32, ptr %i.cop, align 8, !tbaa !56
  %.not447.i.i = icmp eq i32 %i.csn, 0            ; 2 uses
  br i1 %i.cii, label %.preheader360.i.i, label %.preheader362.i.i

.preheader362.i.i:                                ; preds = %bb.pu
  br i1 %.not447.i.i, label %.loopexit.i.i, label %.lr.ph415.i.i

.preheader360.i.i:                                ; preds = %bb.pu
  br i1 %.not447.i.i, label %.loopexit.i.i, label %.lr.ph417.i.i

.lr.ph417.i.i:                                    ; preds = %.preheader360.i.i, %.lr.ph417.i.i
  %indvars.iv520.i.i = phi i64 [ %indvars.iv.next521.i.i, %.lr.ph417.i.i ], [ 0, %.preheader360.i.i ] ; 3 uses
  %i.cso = getelementptr inbounds nuw i8, ptr %i.csm, i64 %indvars.iv520.i.i
  %i.csp = load i8, ptr %i.cso, align 1, !tbaa !32
  %i.csq = getelementptr inbounds nuw i8, ptr %i.ckj, i64 %indvars.iv520.i.i
  store i8 %i.csp, ptr %i.csq, align 1, !tbaa !32
  %indvars.iv.next521.i.i = add nuw nsw i64 %indvars.iv520.i.i, 1 ; 2 uses
  %i.csr = load i32, ptr %i.cop, align 8, !tbaa !56
  %i.css = zext i32 %i.csr to i64
  %i.cst = icmp samesign ult i64 %indvars.iv.next521.i.i, %i.css
  br i1 %i.cst, label %.lr.ph417.i.i, label %.loopexit.i.i, !llvm.loop !238

.lr.ph415.i.i:                                    ; preds = %.preheader362.i.i, %.lr.ph415.i.i
  %indvars.iv517.i.i = phi i64 [ %indvars.iv.next518.i.i, %.lr.ph415.i.i ], [ 0, %.preheader362.i.i ] ; 2 uses
  %.8414.i.i = phi ptr [ %i.csx, %.lr.ph415.i.i ], [ %i.ckj, %.preheader362.i.i ] ; 3 uses
  %i.csu = getelementptr inbounds nuw i8, ptr %i.csm, i64 %indvars.iv517.i.i
  %i.csv = load i8, ptr %i.csu, align 1, !tbaa !32
  %i.csw = getelementptr inbounds nuw i8, ptr %.8414.i.i, i64 1
  store i8 %i.csv, ptr %.8414.i.i, align 1, !tbaa !32
  %i.csx = getelementptr inbounds nuw i8, ptr %.8414.i.i, i64 2
  store i8 -1, ptr %i.csw, align 1, !tbaa !32
  %indvars.iv.next518.i.i = add nuw nsw i64 %indvars.iv517.i.i, 1 ; 2 uses
  %i.csy = load i32, ptr %i.cop, align 8, !tbaa !56
  %i.csz = zext i32 %i.csy to i64
  %i.cta = icmp samesign ult i64 %indvars.iv.next518.i.i, %i.csz
  br i1 %i.cta, label %.lr.ph415.i.i, label %.loopexit.i.i, !llvm.loop !239

.loopexit.sink.split.i.i:                         ; preds = %bb.pi, %bb.pg
  %i.ctb = load ptr, ptr %i.atd, align 8, !tbaa !246
  %i.ctc = load ptr, ptr %i.cil, align 8, !tbaa !19
  %i.ctd = load ptr, ptr %i.cim, align 16, !tbaa !19
  %i.cte = load i32, ptr %i.ckl, align 8, !tbaa !56
  call void %i.ctb(ptr noundef nonnull %i.ckj, ptr noundef %i.ckk, ptr noundef %i.ctc, ptr noundef %i.ctd, i32 noundef %i.cte, i32 noundef %i.cfr), !inline_history !228
  %.pre111.i = load ptr, ptr %i.ata, align 8, !tbaa !55
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.pt, %bb.ps, %.lr.ph415.i.i, %.lr.ph417.i.i, %bb.pp, %bb.po, %bb.pl, %bb.pj, %bb.ph, %.lr.ph442.i.i, %.loopexit.sink.split.i.i, %.preheader360.i.i, %.preheader362.i.i, %.preheader358.i.i, %.preheader356.i.i, %.preheader352.i.i, %.preheader354.i.i, %bb.pk, %.preheader349.i.i, %.preheader347.i.i, %.preheader.i.i
  %i.ctf = phi ptr [ %i.cop, %bb.pp ], [ %i.cop, %bb.po ], [ %i.cmz, %bb.pl ], [ %i.ckl, %bb.pj ], [ %i.ckl, %bb.ph ], [ %i.ckl, %.lr.ph442.i.i ], [ %i.cop, %bb.ps ], [ %i.cop, %.lr.ph415.i.i ], [ %i.cop, %.lr.ph417.i.i ], [ %i.ckl, %.preheader.i.i ], [ %.pre111.i, %.loopexit.sink.split.i.i ], [ %i.cop, %.preheader360.i.i ], [ %i.cop, %.preheader362.i.i ], [ %i.cop, %.preheader358.i.i ], [ %i.cop, %.preheader356.i.i ], [ %i.cop, %.preheader352.i.i ], [ %i.cop, %.preheader354.i.i ], [ %i.cmz, %bb.pk ], [ %i.ckl, %.preheader349.i.i ], [ %i.ckl, %.preheader347.i.i ], [ %i.cop, %bb.pt ] ; 4 uses
  %i.ctg = add nuw i32 %.0264443.i.i, 1           ; 2 uses
  %i.cth = getelementptr inbounds nuw i8, ptr %i.ctf, i64 4
  %i.cti = load i32, ptr %i.cth, align 4, !tbaa !57
  %i.ctj = icmp ult i32 %i.ctg, %i.cti
  br i1 %i.ctj, label %.lr.ph.preheader.i.i, label %._crit_edge445.loopexit.i.i, !llvm.loop !240

._crit_edge445.loopexit.i.i:                      ; preds = %.loopexit.i.i
  %.phi.trans.insert549.i.i = getelementptr inbounds nuw i8, ptr %i.ctf, i64 8
  %.pre550.i.i = load i32, ptr %.phi.trans.insert549.i.i, align 8, !tbaa !58
  br label %._crit_edge445.i.i

._crit_edge445.i.i:                               ; preds = %._crit_edge445.loopexit.i.i, %.preheader364.i.i
  %i.ctk = phi i32 [ %i.cfs, %.preheader364.i.i ], [ %.pre550.i.i, %._crit_edge445.loopexit.i.i ] ; 2 uses
  %.lcssa.i.i = phi ptr [ %.pre.i242.i, %.preheader364.i.i ], [ %i.ctf, %._crit_edge445.loopexit.i.i ]
  %i.ctl = icmp sgt i32 %i.ctk, 0
  br i1 %i.ctl, label %.lr.ph.i.i327.i.i, label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit335.i.i

.lr.ph.i.i327.i.i:                                ; preds = %._crit_edge445.i.i
  %wide.trip.count.i.i328.i.i = zext nneg i32 %i.ctk to i64
  br label %bb.pv

bb.pv:                                            ; preds = %bb.qb, %.lr.ph.i.i327.i.i
  %indvars.iv.i.i329.i.i = phi i64 [ 0, %.lr.ph.i.i327.i.i ], [ %indvars.iv.next.i.i333.i.i, %bb.qb ] ; 2 uses
  %i.ctm = getelementptr inbounds nuw [96 x i8], ptr %i.ath, i64 %indvars.iv.i.i329.i.i ; 5 uses
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.ctm, i64 56
  %i.cto = load ptr, ptr %i.ctn, align 8, !tbaa !93 ; 2 uses
  %.not.i.i330.i.i = icmp eq ptr %i.cto, null
  br i1 %.not.i.i330.i.i, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  call void @free(ptr noundef nonnull %i.cto) #40
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.ctm, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ctp, i8 0, i64 16, i1 false)
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %bb.pv
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.ctm, i64 64 ; 2 uses
  %i.ctr = load ptr, ptr %i.ctq, align 8, !tbaa !94 ; 2 uses
  %.not28.i.i331.i.i = icmp eq ptr %i.ctr, null
  br i1 %.not28.i.i331.i.i, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %bb.px
  call void @free(ptr noundef nonnull %i.ctr) #40
  store ptr null, ptr %i.ctq, align 8, !tbaa !94
  %i.cts = getelementptr inbounds nuw i8, ptr %i.ctm, i64 80
  store ptr null, ptr %i.cts, align 8, !tbaa !91
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.px
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.ctm, i64 72 ; 2 uses
  %i.ctu = load ptr, ptr %i.ctt, align 8, !tbaa !95 ; 2 uses
  %.not29.i.i332.i.i = icmp eq ptr %i.ctu, null
  br i1 %.not29.i.i332.i.i, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  call void @free(ptr noundef nonnull %i.ctu) #40
  store ptr null, ptr %i.ctt, align 8, !tbaa !95
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz
  %indvars.iv.next.i.i333.i.i = add nuw nsw i64 %indvars.iv.i.i329.i.i, 1 ; 2 uses
  %exitcond.not.i.i334.i.i = icmp eq i64 %indvars.iv.next.i.i333.i.i, %wide.trip.count.i.i328.i.i
  br i1 %exitcond.not.i.i334.i.i, label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit335.loopexit.i.i, label %bb.pv, !llvm.loop !5

_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit335.loopexit.i.i: ; preds = %bb.qb
  %.pre551.i.i = load ptr, ptr %i.ata, align 8, !tbaa !55
  br label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit335.i.i

_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit335.i.i: ; preds = %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit335.loopexit.i.i, %._crit_edge445.i.i
  %i.ctv = phi ptr [ %.pre551.i.i, %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit335.loopexit.i.i ], [ %.lcssa.i.i, %._crit_edge445.i.i ] ; 3 uses
  %i.ctw = load i32, ptr %i.ctv, align 8, !tbaa !56
  store i32 %i.ctw, ptr %1, align 4, !tbaa !20
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.ctv, i64 4
  %i.cty = load i32, ptr %i.ctx, align 4, !tbaa !57
  store i32 %i.cty, ptr %2, align 4, !tbaa !20
  %.not287.i.i = icmp eq ptr %3, null
  br i1 %.not287.i.i, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit335.i.i
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.ctv, i64 8
  %i.cua = load i32, ptr %i.ctz, align 8, !tbaa !58
  %.inv288.i.i = icmp slt i32 %i.cua, 3
  %i.cub = select i1 %.inv288.i.i, i32 1, i32 3
  store i32 %i.cub, ptr %3, align 4, !tbaa !20
  br label %bb.qd

bb.qd:                                            ; preds = %bb.qc, %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit335.i.i, %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i, %bb.or, %.thread342.i.i
  %.2.i.i = phi ptr [ null, %bb.or ], [ null, %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i.i ], [ %i.cig, %bb.qc ], [ %i.cig, %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit335.i.i ], [ null, %.thread342.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %_ZL15load_jpeg_imageP10stbi__jpegPiS1_S1_i.exit.i

_ZL15load_jpeg_imageP10stbi__jpegPiS1_S1_i.exit.i: ; preds = %bb.oc, %bb.nq, %bb.qd, %bb.nv, %.loopexit365.i.i, %bb.hj
  %.3.i.i = phi ptr [ null, %bb.hj ], [ null, %bb.nq ], [ %.2.i.i, %bb.qd ], [ null, %.loopexit365.i.i ], [ null, %bb.nv ], [ null, %bb.oc ]
  call void @free(ptr noundef nonnull %i.ata) #40
  br label %_ZL14stbi__psd_loadP13stbi__contextPiS1_S1_iP17stbi__result_infoi.exit

bb.qe:                                            ; preds = %_ZL15stbi__jpeg_testP13stbi__context.exit, %_ZL15stbi__jpeg_testP13stbi__context.exit.thread
  %i.cuc = tail call fastcc noundef i32 @_ZL14stbi__pnm_testP13stbi__context(ptr noundef %0)
  %.not64 = icmp eq i32 %i.cuc, 0
  br i1 %.not64, label %bb.qg, label %bb.qf

end_hunk_0
