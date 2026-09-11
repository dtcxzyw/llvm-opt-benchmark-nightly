Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/FujiDecompressor?download=true
inline.NumInlined: 1167
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  %i.cbe = zext nneg i32 %i.cbc to i64            ; 6 uses
  %i.cbf = getelementptr inbounds nuw [2 x i8], ptr %i.bxw, i64 %i.cbe
  %i.cbg = load i16, ptr %i.cbf, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cah)
  store i16 %i.cbg, ptr %i.cai, align 2, !tbaa !92
  %i.cbh = extractelement <4 x i32> %i.caw, i64 2 ; 2 uses
  %i.cbi = icmp samesign ult i32 %i.cbh, %i.bxr
  %i.cbj = zext nneg i32 %i.cbh to i64            ; 6 uses
  %i.cbk = getelementptr inbounds nuw [2 x i8], ptr %i.bxw, i64 %i.cbj
  %i.cbl = extractelement <4 x i32> %i.caw, i64 3 ; 2 uses
  %i.cbm = icmp samesign ult i32 %i.cbl, %i.bxr
  %i.cbn = zext nneg i32 %i.cbl to i64            ; 6 uses
  %i.cbo = getelementptr inbounds nuw [2 x i8], ptr %i.bxw, i64 %i.cbn
  %i.cbp = add nuw nsw i64 %i.cae, 4              ; 7 uses
  %i.cbq = icmp samesign ule i64 %i.cbp, %i.bxj
  %i.cbr = getelementptr inbounds nuw [2 x i8], ptr %i.bxq, i64 %i.cbp
  %i.cbs = insertelement <2 x i32> poison, i32 %i.cap, i64 0
  %i.cbt = shufflevector <2 x i32> %i.cbs, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cbu = add <2 x i32> %i.cbt, <i32 4, i32 10>
  %i.cbv = udiv <2 x i32> %i.cbu, splat (i32 3)
  %i.cbw = and <2 x i32> %i.cbv, splat (i32 1073741822)
  %i.cbx = add nuw nsw <2 x i32> %i.cbw, splat (i32 2) ; 2 uses
  %i.cby = extractelement <2 x i32> %i.cbx, i64 0 ; 2 uses
  %i.cbz = icmp samesign ult i32 %i.cby, %i.bxr
  call void @llvm.assume(i1 %i.cbz)
  %i.cca = zext nneg i32 %i.cby to i64            ; 6 uses
  %i.ccb = getelementptr inbounds nuw [2 x i8], ptr %i.bxz, i64 %i.cca
  %i.ccc = load i16, ptr %i.ccb, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cak)
  store i16 %i.ccc, ptr %i.cal, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cbi)
  %i.ccd = load i16, ptr %i.cbk, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.can)
  store i16 %i.ccd, ptr %i.cao, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cbm)
  %i.cce = load i16, ptr %i.cbo, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cbq)
  store i16 %i.cce, ptr %i.cbr, align 2, !tbaa !92
  %i.ccf = extractelement <2 x i32> %i.cbx, i64 1 ; 2 uses
  %i.ccg = icmp samesign ult i32 %i.ccf, %i.bxr
  call void @llvm.assume(i1 %i.ccg)
  %i.cch = zext nneg i32 %i.ccf to i64            ; 6 uses
  %i.cci = getelementptr inbounds nuw [2 x i8], ptr %i.byc, i64 %i.cch
  %i.ccj = load i16, ptr %i.cci, align 2, !tbaa !92
  %i.cck = add nuw nsw i64 %i.cae, 5              ; 7 uses
  %i.ccl = icmp samesign ule i64 %i.cck, %i.bxj
  call void @llvm.assume(i1 %i.ccl)
  %i.ccm = getelementptr inbounds nuw [2 x i8], ptr %i.bxq, i64 %i.cck
  store i16 %i.ccj, ptr %i.ccm, align 2, !tbaa !92
  %i.ccn = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.caz
  %i.cco = load i16, ptr %i.ccn, align 2, !tbaa !92
  %i.ccp = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.cae
  store i16 %i.cco, ptr %i.ccp, align 2, !tbaa !92
  %i.ccq = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.cbe
  %i.ccr = load i16, ptr %i.ccq, align 2, !tbaa !92
  %i.ccs = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.cag
  store i16 %i.ccr, ptr %i.ccs, align 2, !tbaa !92
  %i.cct = getelementptr inbounds nuw [2 x i8], ptr %i.byc, i64 %i.cca
  %i.ccu = load i16, ptr %i.cct, align 2, !tbaa !92
  %i.ccv = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.caj
  store i16 %i.ccu, ptr %i.ccv, align 2, !tbaa !92
  %i.ccw = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.cbj
  %i.ccx = load i16, ptr %i.ccw, align 2, !tbaa !92
  %i.ccy = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.cam
  store i16 %i.ccx, ptr %i.ccy, align 2, !tbaa !92
  %i.ccz = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.cbn
  %i.cda = load i16, ptr %i.ccz, align 2, !tbaa !92
  %i.cdb = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.cbp
  store i16 %i.cda, ptr %i.cdb, align 2, !tbaa !92
  %i.cdc = getelementptr inbounds nuw [2 x i8], ptr %i.bxz, i64 %i.cch
  %i.cdd = load i16, ptr %i.cdc, align 2, !tbaa !92
  %i.cde = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.cck
  store i16 %i.cdd, ptr %i.cde, align 2, !tbaa !92
  %i.cdf = getelementptr inbounds nuw [2 x i8], ptr %i.byp, i64 %i.caz
  %i.cdg = load i16, ptr %i.cdf, align 2, !tbaa !92
  %i.cdh = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cae
  store i16 %i.cdg, ptr %i.cdh, align 2, !tbaa !92
  %i.cdi = getelementptr inbounds nuw [2 x i8], ptr %i.bys, i64 %i.cbe
  %i.cdj = load i16, ptr %i.cdi, align 2, !tbaa !92
  %i.cdk = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cag
  store i16 %i.cdj, ptr %i.cdk, align 2, !tbaa !92
  %i.cdl = getelementptr inbounds nuw [2 x i8], ptr %i.byv, i64 %i.cca
  %i.cdm = load i16, ptr %i.cdl, align 2, !tbaa !92
  %i.cdn = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.caj
  store i16 %i.cdm, ptr %i.cdn, align 2, !tbaa !92
  %i.cdo = getelementptr inbounds nuw [2 x i8], ptr %i.bys, i64 %i.cbj
  %i.cdp = load i16, ptr %i.cdo, align 2, !tbaa !92
  %i.cdq = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cam
  store i16 %i.cdp, ptr %i.cdq, align 2, !tbaa !92
  %i.cdr = getelementptr inbounds nuw [2 x i8], ptr %i.byp, i64 %i.cbn
  %i.cds = load i16, ptr %i.cdr, align 2, !tbaa !92
  %i.cdt = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cbp
  store i16 %i.cds, ptr %i.cdt, align 2, !tbaa !92
  %i.cdu = getelementptr inbounds nuw [2 x i8], ptr %i.byv, i64 %i.cch
  %i.cdv = load i16, ptr %i.cdu, align 2, !tbaa !92
  %i.cdw = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cck
  store i16 %i.cdv, ptr %i.cdw, align 2, !tbaa !92
  %i.cdx = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.caz
  %i.cdy = load i16, ptr %i.cdx, align 2, !tbaa !92
  %i.cdz = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cae
  store i16 %i.cdy, ptr %i.cdz, align 2, !tbaa !92
  %i.cea = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbe
  %i.ceb = load i16, ptr %i.cea, align 2, !tbaa !92
  %i.cec = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cag
  store i16 %i.ceb, ptr %i.cec, align 2, !tbaa !92
  %i.ced = getelementptr inbounds nuw [2 x i8], ptr %i.byp, i64 %i.cca
  %i.cee = load i16, ptr %i.ced, align 2, !tbaa !92
  %i.cef = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.caj
  store i16 %i.cee, ptr %i.cef, align 2, !tbaa !92
  %i.ceg = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbj
  %i.ceh = load i16, ptr %i.ceg, align 2, !tbaa !92
  %i.cei = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cam
  store i16 %i.ceh, ptr %i.cei, align 2, !tbaa !92
  %i.cej = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbn
  %i.cek = load i16, ptr %i.cej, align 2, !tbaa !92
  %i.cel = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cbp
  store i16 %i.cek, ptr %i.cel, align 2, !tbaa !92
  %i.cem = getelementptr inbounds nuw [2 x i8], ptr %i.bys, i64 %i.cch
  %i.cen = load i16, ptr %i.cem, align 2, !tbaa !92
  %i.ceo = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cck
  store i16 %i.cen, ptr %i.ceo, align 2, !tbaa !92
  %i.cep = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.caz
  %i.ceq = load i16, ptr %i.cep, align 2, !tbaa !92
  %i.cer = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cae
  store i16 %i.ceq, ptr %i.cer, align 2, !tbaa !92
  %i.ces = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbe
  %i.cet = load i16, ptr %i.ces, align 2, !tbaa !92
  %i.ceu = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cag
  store i16 %i.cet, ptr %i.ceu, align 2, !tbaa !92
  %i.cev = getelementptr inbounds nuw [2 x i8], ptr %i.bzl, i64 %i.cca
  %i.cew = load i16, ptr %i.cev, align 2, !tbaa !92
  %i.cex = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.caj
  store i16 %i.cew, ptr %i.cex, align 2, !tbaa !92
  %i.cey = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbj
  %i.cez = load i16, ptr %i.cey, align 2, !tbaa !92
  %i.cfa = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cam
  store i16 %i.cez, ptr %i.cfa, align 2, !tbaa !92
  %i.cfb = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbn
  %i.cfc = load i16, ptr %i.cfb, align 2, !tbaa !92
  %i.cfd = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cbp
  store i16 %i.cfc, ptr %i.cfd, align 2, !tbaa !92
  %i.cfe = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cch
  %i.cff = load i16, ptr %i.cfe, align 2, !tbaa !92
  %i.cfg = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cck
  store i16 %i.cff, ptr %i.cfg, align 2, !tbaa !92
  %i.cfh = getelementptr inbounds nuw [2 x i8], ptr %i.bzl, i64 %i.caz
  %i.cfi = load i16, ptr %i.cfh, align 2, !tbaa !92
  %i.cfj = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cae
  store i16 %i.cfi, ptr %i.cfj, align 2, !tbaa !92
  %i.cfk = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cbe
  %i.cfl = load i16, ptr %i.cfk, align 2, !tbaa !92
  %i.cfm = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cag
  store i16 %i.cfl, ptr %i.cfm, align 2, !tbaa !92
  %i.cfn = getelementptr inbounds nuw [2 x i8], ptr %i.bzv, i64 %i.cca
  %i.cfo = load i16, ptr %i.cfn, align 2, !tbaa !92
  %i.cfp = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.caj
  store i16 %i.cfo, ptr %i.cfp, align 2, !tbaa !92
  %i.cfq = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cbj
  %i.cfr = load i16, ptr %i.cfq, align 2, !tbaa !92
  %i.cfs = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cam
  store i16 %i.cfr, ptr %i.cfs, align 2, !tbaa !92
  %i.cft = getelementptr inbounds nuw [2 x i8], ptr %i.bzl, i64 %i.cbn
  %i.cfu = load i16, ptr %i.cft, align 2, !tbaa !92
  %i.cfv = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cbp
  store i16 %i.cfu, ptr %i.cfv, align 2, !tbaa !92
  %i.cfw = getelementptr inbounds nuw [2 x i8], ptr %i.bzv, i64 %i.cch
  %i.cfx = load i16, ptr %i.cfw, align 2, !tbaa !92
  %i.cfy = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cck
  store i16 %i.cfx, ptr %i.cfy, align 2, !tbaa !92
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i142.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.bxn
  br i1 %.not.i.i142.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %bb.ek, !llvm.loop !191

bb.el:                                            ; preds = %bb.eh
  br i1 %.not.i.i.i.i.i.i.i, label %bb.em, label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i

bb.em:                                            ; preds = %bb.el
  %i.cfz = mul nuw nsw i32 %i.nz, %i.bwz
  %i.cga = load i16, ptr %i.ob, align 2, !tbaa !112
  %i.cgb = zext i16 %i.cga to i32                 ; 2 uses
  %i.cgc = icmp samesign uge i32 %i.cfz, %i.cgb
  call void @llvm.assume(i1 %i.cgc)
  %i.cgd = mul nuw nsw i32 %i.bwz, %indvars110.i.i
  %i.cge = sub nsw i32 %i.cgb, %i.cgd
  br label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i

_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i: ; preds = %bb.em, %bb.el
  %.0.i.i.i.i145.i.i.i = phi i32 [ %i.cge, %bb.em ], [ %i.bwz, %bb.el ] ; 3 uses
  %i.cgf = and i32 %.0.i.i.i.i145.i.i.i, 1
  %i.cgg = icmp eq i32 %i.cgf, 0
  call void @llvm.assume(i1 %i.cgg)
  %.not58.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i145.i.i.i, 0
  br i1 %.not58.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %.preheader54.lr.ph.i.i.i.i.i

.preheader54.lr.ph.i.i.i.i.i:                     ; preds = %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i
  %i.cgh = ashr exact i32 %.0.i.i.i.i145.i.i.i, 1
  %.sroa.049.0.copyload.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !229 ; 6 uses
  %.sroa.450.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.659.0..sroa_idx.i.i, align 8, !tbaa !94 ; 3 uses
  %.sroa.551.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.760.0..sroa_idx.i.i, align 4, !tbaa !94 ; 4 uses
  %.sroa.652.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.861.0..sroa_idx.i.i, align 8, !tbaa !94
  %i.cgi = mul nuw nsw i64 %indvars.iv.i20.i.i, 6 ; 4 uses
  %i.cgj = icmp ne i32 %.sroa.450.0.copyload.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cgj)
  %i.cgk = icmp sge i32 %.sroa.450.0.copyload.i.i.i.i.i, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cgk)
  %i.cgl = zext nneg i32 %.sroa.450.0.copyload.i.i.i.i.i to i64 ; 6 uses
  %i.cgm = zext nneg i32 %.sroa.652.0.copyload.i.i.i.i.i to i64 ; 2 uses
  %i.cgn = zext i32 %i.cgh to i64
  %i.cgo = add nuw nsw i64 %i.cgi, 2              ; 3 uses
  %i.cgp = icmp samesign ule i64 %i.cgo, %i.cgm
  call void @llvm.assume(i1 %i.cgp)
  %i.cgq = mul nuw nsw i64 %i.cgi, %i.cgl
  %i.cgr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cgq ; 2 uses
  %i.cgs = load i32, ptr %i.ek, align 4, !tbaa !253 ; 2 uses
  %i.cgt = load i32, ptr %i.ej, align 8, !tbaa !252 ; 13 uses
  %i.cgu = icmp sge i32 %i.cgt, %i.cgs
  call void @llvm.assume(i1 %i.cgu)
  %i.cgv = zext nneg i32 %i.cgs to i64
  %i.cgw = shl nuw nsw i32 %i.cgt, 1
  %.sroa.0.0.copyload.i.i34.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !272 ; 12 uses
  %i.cgx = zext nneg i32 %i.cgw to i64
  %i.cgy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cgx
  %i.cgz = mul nuw nsw i32 %i.cgt, 7
  %i.cha = zext nneg i32 %i.cgz to i64
  %i.chb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cha
  %i.chc = or disjoint i64 %i.cgi, 1
  %i.chd = mul nuw nsw i64 %i.chc, %i.cgl
  %i.che = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chd ; 2 uses
  %i.chf = shl nuw nsw i32 %i.cgt, 3
  %i.chg = zext nneg i32 %i.chf to i64
  %i.chh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chg
  %i.chi = mul nuw nsw i32 %i.cgt, 15
  %i.chj = zext nneg i32 %i.chi to i64
  %i.chk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chj
  %i.chl = add nuw nsw i64 %i.cgi, 4              ; 3 uses
  %i.chm = icmp samesign ule i64 %i.chl, %i.cgm
  call void @llvm.assume(i1 %i.chm)
  %i.chn = mul nuw nsw i64 %i.cgo, %i.cgl
  %i.cho = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chn ; 2 uses
  %i.chp = mul nuw nsw i32 %i.cgt, 3
  %i.chq = zext nneg i32 %i.chp to i64
  %i.chr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chq
  %i.chs = mul nuw nsw i32 %i.cgt, 9
  %i.cht = zext nneg i32 %i.chs to i64
  %i.chu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cht
  %i.chv = or disjoint i64 %i.cgo, 1
  %i.chw = mul nuw nsw i64 %i.chv, %i.cgl
  %i.chx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chw ; 2 uses
  %i.chy = mul nuw nsw i32 %i.cgt, 10
  %i.chz = zext nneg i32 %i.chy to i64
  %i.cia = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chz
  %i.cib = shl nuw nsw i32 %i.cgt, 4
  %i.cic = zext nneg i32 %i.cib to i64
  %i.cid = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cic
  %i.cie = mul nuw nsw i64 %i.chl, %i.cgl
  %i.cif = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cie ; 2 uses
  %i.cig = shl nuw nsw i32 %i.cgt, 2
  %i.cih = zext nneg i32 %i.cig to i64
  %i.cii = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cih
  %i.cij = mul nuw nsw i32 %i.cgt, 11
  %i.cik = zext nneg i32 %i.cij to i64
  %i.cil = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cik
  %i.cim = or disjoint i64 %i.chl, 1
  %i.cin = mul nuw nsw i64 %i.cim, %i.cgl
  %i.cio = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cin ; 2 uses
  %i.cip = mul nuw nsw i32 %i.cgt, 12
  %i.ciq = zext nneg i32 %i.cip to i64
  %i.cir = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.ciq
  %i.cis = mul nuw nsw i32 %i.cgt, 17
  %i.cit = zext nneg i32 %i.cis to i64
  %i.ciu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cit
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.preheader54.lr.ph.i.i.i.i.i
  %indvars.iv.i.i146.i.i.i = phi i64 [ 0, %.preheader54.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i147.i.i.i, %bb.en ] ; 2 uses
  %indvars.iv.next.i.i147.i.i.i = add nuw nsw i64 %indvars.iv.i.i146.i.i.i, 1 ; 15 uses
  %.val.val.i.i148.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.civ = zext i16 %.val.val.i.i148.i.i.i to i32
  %i.ciw = mul nuw nsw i32 %i.civ, %indvars110.i.i
  %indvars.iv.tr.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i146.i.i.i to i32
  %i.cix = shl nuw nsw i32 %indvars.iv.tr.i.i.i.i.i, 1 ; 3 uses
  %i.ciy = add nuw nsw i32 %i.ciw, %i.cix         ; 2 uses
  %.val33.val.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.ciz = zext i16 %.val33.val.i.i.i.i.i to i64
  %i.cja = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.ciz
  call void @llvm.assume(i1 %i.cja)
  %i.cjb = zext nneg i32 %i.ciy to i64            ; 3 uses
  %i.cjc = icmp samesign ult i64 %indvars.iv.next.i.i147.i.i.i, %i.cgv
  call void @llvm.assume(i1 %i.cjc)
  %i.cjd = getelementptr inbounds nuw [2 x i8], ptr %i.cgy, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cje = load i16, ptr %i.cjd, align 2, !tbaa !92
  %i.cjf = getelementptr inbounds nuw [2 x i8], ptr %i.cgr, i64 %i.cjb
  store i16 %i.cje, ptr %i.cjf, align 2, !tbaa !92
  %i.cjg = getelementptr inbounds nuw [2 x i8], ptr %i.chb, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjh = load i16, ptr %i.cjg, align 2, !tbaa !92
  %i.cji = add nuw nsw i64 %i.cjb, 1              ; 2 uses
  %i.cjj = icmp samesign ult i32 %i.ciy, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cjj)
  %i.cjk = getelementptr inbounds nuw [2 x i8], ptr %i.cgr, i64 %i.cji
  store i16 %i.cjh, ptr %i.cjk, align 2, !tbaa !92
  %i.cjl = getelementptr inbounds nuw [2 x i8], ptr %i.chh, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjm = load i16, ptr %i.cjl, align 2, !tbaa !92
  %i.cjn = getelementptr inbounds nuw [2 x i8], ptr %i.che, i64 %i.cjb
  store i16 %i.cjm, ptr %i.cjn, align 2, !tbaa !92
  %i.cjo = getelementptr inbounds nuw [2 x i8], ptr %i.chk, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjp = load i16, ptr %i.cjo, align 2, !tbaa !92
  %i.cjq = getelementptr inbounds nuw [2 x i8], ptr %i.che, i64 %i.cji
  store i16 %i.cjp, ptr %i.cjq, align 2, !tbaa !92
  %.val.val.1.i.i.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.cjr = zext i16 %.val.val.1.i.i.i.i.i to i32
  %i.cjs = mul nuw nsw i32 %i.cjr, %indvars110.i.i
  %i.cjt = add nuw nsw i32 %i.cjs, %i.cix         ; 2 uses
  %.val33.val.1.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.cju = zext i16 %.val33.val.1.i.i.i.i.i to i64
  %i.cjv = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.cju
  call void @llvm.assume(i1 %i.cjv)
  %i.cjw = zext nneg i32 %i.cjt to i64            ; 3 uses
  %i.cjx = getelementptr inbounds nuw [2 x i8], ptr %i.chr, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjy = load i16, ptr %i.cjx, align 2, !tbaa !92
  %i.cjz = getelementptr inbounds nuw [2 x i8], ptr %i.cho, i64 %i.cjw
  store i16 %i.cjy, ptr %i.cjz, align 2, !tbaa !92
  %i.cka = getelementptr inbounds nuw [2 x i8], ptr %i.chu, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckb = load i16, ptr %i.cka, align 2, !tbaa !92
  %i.ckc = add nuw nsw i64 %i.cjw, 1              ; 2 uses
  %i.ckd = icmp samesign ult i32 %i.cjt, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.ckd)
  %i.cke = getelementptr inbounds nuw [2 x i8], ptr %i.cho, i64 %i.ckc
  store i16 %i.ckb, ptr %i.cke, align 2, !tbaa !92
  %i.ckf = getelementptr inbounds nuw [2 x i8], ptr %i.cia, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckg = load i16, ptr %i.ckf, align 2, !tbaa !92
  %i.ckh = getelementptr inbounds nuw [2 x i8], ptr %i.chx, i64 %i.cjw
  store i16 %i.ckg, ptr %i.ckh, align 2, !tbaa !92
  %i.cki = getelementptr inbounds nuw [2 x i8], ptr %i.cid, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckj = load i16, ptr %i.cki, align 2, !tbaa !92
  %i.ckk = getelementptr inbounds nuw [2 x i8], ptr %i.chx, i64 %i.ckc
  store i16 %i.ckj, ptr %i.ckk, align 2, !tbaa !92
  %.val.val.2.i.i.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.ckl = zext i16 %.val.val.2.i.i.i.i.i to i32
  %i.ckm = mul nuw nsw i32 %i.ckl, %indvars110.i.i
  %i.ckn = add nuw nsw i32 %i.ckm, %i.cix         ; 2 uses
  %.val33.val.2.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.cko = zext i16 %.val33.val.2.i.i.i.i.i to i64
  %i.ckp = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.cko
  call void @llvm.assume(i1 %i.ckp)
  %i.ckq = zext nneg i32 %i.ckn to i64            ; 3 uses
  %i.ckr = getelementptr inbounds nuw [2 x i8], ptr %i.cii, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cks = load i16, ptr %i.ckr, align 2, !tbaa !92
  %i.ckt = getelementptr inbounds nuw [2 x i8], ptr %i.cif, i64 %i.ckq
  store i16 %i.cks, ptr %i.ckt, align 2, !tbaa !92
  %i.cku = getelementptr inbounds nuw [2 x i8], ptr %i.cil, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckv = load i16, ptr %i.cku, align 2, !tbaa !92
  %i.ckw = add nuw nsw i64 %i.ckq, 1              ; 2 uses
  %i.ckx = icmp samesign ult i32 %i.ckn, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.ckx)
  %i.cky = getelementptr inbounds nuw [2 x i8], ptr %i.cif, i64 %i.ckw
  store i16 %i.ckv, ptr %i.cky, align 2, !tbaa !92
  %i.ckz = getelementptr inbounds nuw [2 x i8], ptr %i.cir, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cla = load i16, ptr %i.ckz, align 2, !tbaa !92
  %i.clb = getelementptr inbounds nuw [2 x i8], ptr %i.cio, i64 %i.ckq
  store i16 %i.cla, ptr %i.clb, align 2, !tbaa !92
  %i.clc = getelementptr inbounds nuw [2 x i8], ptr %i.ciu, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cld = load i16, ptr %i.clc, align 2, !tbaa !92
  %i.cle = getelementptr inbounds nuw [2 x i8], ptr %i.cio, i64 %i.ckw
  store i16 %i.cld, ptr %i.cle, align 2, !tbaa !92
  %.not.i.i149.i.i.i = icmp eq i64 %indvars.iv.next.i.i147.i.i.i, %i.cgn
  br i1 %.not.i.i149.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %bb.en, !llvm.loop !194

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i: ; preds = %bb.en, %bb.ek, %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i
  %indvars.iv.next.i21.i.i = add nuw nsw i64 %indvars.iv.i20.i.i, 1 ; 3 uses
  %.val.val.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.clf = zext i16 %.val.val.i.i.i to i64
  %i.clg = icmp eq i64 %indvars.iv.next.i21.i.i, %i.clf
  br i1 %i.clg, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_stripERKNS0_9FujiStripE.exit.i.i, label %.preheader50.preheader.i.i.i

.preheader50.preheader.i.i.i:                     ; preds = %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i
  %i.clh = load i32, ptr %i.ek, align 4, !tbaa !253
  %i.cli = load i32, ptr %i.ej, align 8, !tbaa !252 ; 2 uses
  %i.clj = icmp sge i32 %i.cli, %i.clh
  call void @llvm.assume(i1 %i.clj)
  %.sroa.0.0.copyload.i.i.i22.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !273 ; 2 uses
  %i.clk = mul nuw nsw i32 %i.cli, 3
  %i.cll = zext nneg i32 %i.clk to i64
  %i.clm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i.i, i64 %i.cll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.sroa.0.0.copyload.i.i.i22.i.i, ptr noundef nonnull align 2 dereferenceable(1) %i.clm, i64 %i.nw, i1 false)
  %i.cln = load i32, ptr %i.ek, align 4, !tbaa !253
  %i.clo = load i32, ptr %i.ej, align 8, !tbaa !252 ; 3 uses
  %i.clp = icmp sge i32 %i.clo, %i.cln
  call void @llvm.assume(i1 %i.clp)
  %i.clq = mul nuw nsw i32 %i.clo, 5
  %.sroa.0.0.copyload.i.i.1.i23.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !273 ; 2 uses
  %i.clr = zext nneg i32 %i.clq to i64
  %i.cls = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.1.i23.i.i, i64 %i.clr
  %i.clt = mul nuw nsw i32 %i.clo, 11
  %i.clu = zext nneg i32 %i.clt to i64
  %i.clv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.1.i23.i.i, i64 %i.clu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cls, ptr noundef nonnull align 2 dereferenceable(1) %i.clv, i64 %i.nw, i1 false)
  %i.clw = load i32, ptr %i.ek, align 4, !tbaa !253
  %i.clx = load i32, ptr %i.ej, align 8, !tbaa !252 ; 3 uses
  %i.cly = icmp sge i32 %i.clx, %i.clw
  call void @llvm.assume(i1 %i.cly)
  %i.clz = mul nuw nsw i32 %i.clx, 13
  %.sroa.0.0.copyload.i.i.2.i24.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !273 ; 2 uses
  %i.cma = zext nneg i32 %i.clz to i64
  %i.cmb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.2.i24.i.i, i64 %i.cma
  %i.cmc = shl nuw nsw i32 %i.clx, 4
  %i.cmd = zext nneg i32 %i.cmc to i64
  %i.cme = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.2.i24.i.i, i64 %i.cmd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cmb, ptr noundef nonnull align 2 dereferenceable(1) %i.cme, i64 %i.nw, i1 false)
  %.sroa.441.0.copyload.i.i.i = load i32, ptr %i.ej, align 8, !tbaa !94 ; 7 uses
  %.sroa.542.0.copyload.i.i.i = load i32, ptr %i.ek, align 4, !tbaa !94 ; 4 uses
  %i.cmf = icmp sgt i32 %.sroa.542.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.cmf)
  %i.cmg = icmp sge i32 %.sroa.441.0.copyload.i.i.i, %.sroa.542.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.cmg)
  %i.cmh = icmp ne i32 %.sroa.542.0.copyload.i.i.i, 0
  call void @llvm.assume(i1 %i.cmh)
  %.sroa.0.0.copyload.i.i153.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !274
  %i.cmi = zext nneg i32 %.sroa.542.0.copyload.i.i.i to i64
  %invariant.gep.i26.i.i = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i.i153.i.i.i, i64 %i.cmi ; 6 uses
  %i.cmj = zext nneg i32 %.sroa.441.0.copyload.i.i.i to i64
  %gep.i27.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmj
  %i.cmk = getelementptr i8, ptr %gep.i27.i.i, i64 -4
  %i.cml = load i16, ptr %i.cmk, align 2, !tbaa !92
  %i.cmm = shl nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 1
  %i.cmn = zext nneg i32 %i.cmm to i64
  %gep71.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmn
  %i.cmo = getelementptr i8, ptr %gep71.i.i.i, i64 -2
  store i16 %i.cml, ptr %i.cmo, align 2, !tbaa !92
  %i.cmp = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 6
  %i.cmq = zext nneg i32 %i.cmp to i64
  %gep.1.i28.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmq
  %i.cmr = getelementptr i8, ptr %gep.1.i28.i.i, i64 -4
  %i.cms = load i16, ptr %i.cmr, align 2, !tbaa !92
  %i.cmt = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 7
  %i.cmu = zext nneg i32 %i.cmt to i64
  %gep71.1.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmu
  %i.cmv = getelementptr i8, ptr %gep71.1.i.i.i, i64 -2
  store i16 %i.cms, ptr %i.cmv, align 2, !tbaa !92
  %i.cmw = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 14
  %i.cmx = zext nneg i32 %i.cmw to i64
  %gep.2.i29.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmx
  %i.cmy = getelementptr i8, ptr %gep.2.i29.i.i, i64 -4
  %i.cmz = load i16, ptr %i.cmy, align 2, !tbaa !92
  %i.cna = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 15
  %i.cnb = zext nneg i32 %i.cna to i64
  %gep71.2.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cnb
  %i.cnc = getelementptr i8, ptr %gep71.2.i.i.i, i64 -2
  store i16 %i.cmz, ptr %i.cnc, align 2, !tbaa !92
  %.val41.val.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.cnd = zext i16 %.val41.val.i.i.i to i64
  %i.cne = icmp samesign ult i64 %indvars.iv.next.i21.i.i, %i.cnd
  br i1 %i.cne, label %bb.x, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_stripERKNS0_9FujiStripE.exit.i.i, !llvm.loop !199

bb.eo:                                            ; preds = %.invoke.i.i12, %.invoke191.i.i
  %i.cnf = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
          catch ptr null
  br label %bb.eq

bb.ep:                                            ; preds = %bb.v
  %i.cng = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
          catch ptr null
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.pn.i.i13 = phi { ptr, i32 } [ %i.cnf, %bb.eo ], [ %i.cng, %bb.ep ] ; 2 uses
  %.011.i.i = extractvalue { ptr, i32 } %.pn.i.i13, 0
end_hunk_0
