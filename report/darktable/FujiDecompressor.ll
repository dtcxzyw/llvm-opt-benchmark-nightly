Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/FujiDecompressor?download=true
inline.NumInlined: 1167
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  %i.cbk = load i16, ptr %i.cbj, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cad)
  store i16 %i.cbk, ptr %i.caf, align 2, !tbaa !92
  %i.cbl = extractelement <4 x i32> %i.cbf, i64 1 ; 2 uses
  %i.cbm = icmp samesign ult i32 %i.cbl, %i.bxr
  call void @llvm.assume(i1 %i.cbm)
  %i.cbn = zext nneg i32 %i.cbl to i64            ; 6 uses
  %i.cbo = getelementptr inbounds nuw [2 x i8], ptr %i.bxw, i64 %i.cbn
  %i.cbp = load i16, ptr %i.cbo, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cah)
  store i16 %i.cbp, ptr %i.cai, align 2, !tbaa !92
  %i.cbq = extractelement <4 x i32> %i.cbf, i64 2 ; 2 uses
  %i.cbr = icmp samesign ult i32 %i.cbq, %i.bxr
  %i.cbs = zext nneg i32 %i.cbq to i64            ; 6 uses
  %i.cbt = getelementptr inbounds nuw [2 x i8], ptr %i.bxw, i64 %i.cbs
  %i.cbu = extractelement <4 x i32> %i.cbf, i64 3 ; 2 uses
  %i.cbv = icmp samesign ult i32 %i.cbu, %i.bxr
  %i.cbw = zext nneg i32 %i.cbu to i64            ; 6 uses
  %i.cbx = getelementptr inbounds nuw [2 x i8], ptr %i.bxw, i64 %i.cbw
  %i.cby = shufflevector <4 x i32> %i.car, <4 x i32> %i.cbc, <2 x i32> <i32 2, i32 5>
  %i.cbz = and <2 x i32> %i.cby, splat (i32 1073741822)
  %i.cca = add nuw nsw <2 x i32> %i.cbz, splat (i32 2) ; 2 uses
  %i.ccb = extractelement <2 x i32> %i.cca, i64 0 ; 2 uses
  %i.ccc = icmp samesign ult i32 %i.ccb, %i.bxr
  %i.ccd = zext nneg i32 %i.ccb to i64            ; 6 uses
  %i.cce = getelementptr inbounds nuw [2 x i8], ptr %i.bxz, i64 %i.ccd
  call void @llvm.assume(i1 %i.ccc)
  %i.ccf = load i16, ptr %i.cce, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cak)
  store i16 %i.ccf, ptr %i.cal, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cbr)
  %i.ccg = load i16, ptr %i.cbt, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cat)
  store i16 %i.ccg, ptr %i.cau, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cbv)
  %i.cch = load i16, ptr %i.cbx, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.caw)
  store i16 %i.cch, ptr %i.cax, align 2, !tbaa !92
  %i.cci = extractelement <2 x i32> %i.cca, i64 1 ; 2 uses
  %i.ccj = icmp samesign ult i32 %i.cci, %i.bxr
  call void @llvm.assume(i1 %i.ccj)
  %i.cck = zext nneg i32 %i.cci to i64            ; 6 uses
  %i.ccl = getelementptr inbounds nuw [2 x i8], ptr %i.byc, i64 %i.cck
  %i.ccm = load i16, ptr %i.ccl, align 2, !tbaa !92
  %i.ccn = add nuw nsw i64 %i.cae, 5              ; 7 uses
  %i.cco = icmp samesign ule i64 %i.ccn, %i.bxj
  call void @llvm.assume(i1 %i.cco)
  %i.ccp = getelementptr inbounds nuw [2 x i8], ptr %i.bxq, i64 %i.ccn
  store i16 %i.ccm, ptr %i.ccp, align 2, !tbaa !92
  %i.ccq = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.cbi
  %i.ccr = load i16, ptr %i.ccq, align 2, !tbaa !92
  %i.ccs = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.cae
  store i16 %i.ccr, ptr %i.ccs, align 2, !tbaa !92
  %i.cct = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.cbn
  %i.ccu = load i16, ptr %i.cct, align 2, !tbaa !92
  %i.ccv = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.cag
  store i16 %i.ccu, ptr %i.ccv, align 2, !tbaa !92
  %i.ccw = getelementptr inbounds nuw [2 x i8], ptr %i.byc, i64 %i.ccd
  %i.ccx = load i16, ptr %i.ccw, align 2, !tbaa !92
  %i.ccy = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.caj
  store i16 %i.ccx, ptr %i.ccy, align 2, !tbaa !92
  %i.ccz = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.cbs
  %i.cda = load i16, ptr %i.ccz, align 2, !tbaa !92
  %i.cdb = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.cas
  store i16 %i.cda, ptr %i.cdb, align 2, !tbaa !92
  %i.cdc = getelementptr inbounds nuw [2 x i8], ptr %i.byi, i64 %i.cbw
  %i.cdd = load i16, ptr %i.cdc, align 2, !tbaa !92
  %i.cde = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.cav
  store i16 %i.cdd, ptr %i.cde, align 2, !tbaa !92
  %i.cdf = getelementptr inbounds nuw [2 x i8], ptr %i.bxz, i64 %i.cck
  %i.cdg = load i16, ptr %i.cdf, align 2, !tbaa !92
  %i.cdh = getelementptr inbounds nuw [2 x i8], ptr %i.byf, i64 %i.ccn
  store i16 %i.cdg, ptr %i.cdh, align 2, !tbaa !92
  %i.cdi = getelementptr inbounds nuw [2 x i8], ptr %i.byp, i64 %i.cbi
  %i.cdj = load i16, ptr %i.cdi, align 2, !tbaa !92
  %i.cdk = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cae
  store i16 %i.cdj, ptr %i.cdk, align 2, !tbaa !92
  %i.cdl = getelementptr inbounds nuw [2 x i8], ptr %i.bys, i64 %i.cbn
  %i.cdm = load i16, ptr %i.cdl, align 2, !tbaa !92
  %i.cdn = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cag
  store i16 %i.cdm, ptr %i.cdn, align 2, !tbaa !92
  %i.cdo = getelementptr inbounds nuw [2 x i8], ptr %i.byv, i64 %i.ccd
  %i.cdp = load i16, ptr %i.cdo, align 2, !tbaa !92
  %i.cdq = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.caj
  store i16 %i.cdp, ptr %i.cdq, align 2, !tbaa !92
  %i.cdr = getelementptr inbounds nuw [2 x i8], ptr %i.bys, i64 %i.cbs
  %i.cds = load i16, ptr %i.cdr, align 2, !tbaa !92
  %i.cdt = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cas
  store i16 %i.cds, ptr %i.cdt, align 2, !tbaa !92
  %i.cdu = getelementptr inbounds nuw [2 x i8], ptr %i.byp, i64 %i.cbw
  %i.cdv = load i16, ptr %i.cdu, align 2, !tbaa !92
  %i.cdw = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cav
  store i16 %i.cdv, ptr %i.cdw, align 2, !tbaa !92
  %i.cdx = getelementptr inbounds nuw [2 x i8], ptr %i.byv, i64 %i.cck
  %i.cdy = load i16, ptr %i.cdx, align 2, !tbaa !92
  %i.cdz = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.ccn
  store i16 %i.cdy, ptr %i.cdz, align 2, !tbaa !92
  %i.cea = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbi
  %i.ceb = load i16, ptr %i.cea, align 2, !tbaa !92
  %i.cec = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cae
  store i16 %i.ceb, ptr %i.cec, align 2, !tbaa !92
  %i.ced = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbn
  %i.cee = load i16, ptr %i.ced, align 2, !tbaa !92
  %i.cef = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cag
  store i16 %i.cee, ptr %i.cef, align 2, !tbaa !92
  %i.ceg = getelementptr inbounds nuw [2 x i8], ptr %i.byp, i64 %i.ccd
  %i.ceh = load i16, ptr %i.ceg, align 2, !tbaa !92
  %i.cei = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.caj
  store i16 %i.ceh, ptr %i.cei, align 2, !tbaa !92
  %i.cej = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbs
  %i.cek = load i16, ptr %i.cej, align 2, !tbaa !92
  %i.cel = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cas
  store i16 %i.cek, ptr %i.cel, align 2, !tbaa !92
  %i.cem = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbw
  %i.cen = load i16, ptr %i.cem, align 2, !tbaa !92
  %i.ceo = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cav
  store i16 %i.cen, ptr %i.ceo, align 2, !tbaa !92
  %i.cep = getelementptr inbounds nuw [2 x i8], ptr %i.bys, i64 %i.cck
  %i.ceq = load i16, ptr %i.cep, align 2, !tbaa !92
  %i.cer = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.ccn
  store i16 %i.ceq, ptr %i.cer, align 2, !tbaa !92
  %i.ces = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbi
  %i.cet = load i16, ptr %i.ces, align 2, !tbaa !92
  %i.ceu = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cae
  store i16 %i.cet, ptr %i.ceu, align 2, !tbaa !92
  %i.cev = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbn
  %i.cew = load i16, ptr %i.cev, align 2, !tbaa !92
  %i.cex = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cag
  store i16 %i.cew, ptr %i.cex, align 2, !tbaa !92
  %i.cey = getelementptr inbounds nuw [2 x i8], ptr %i.bzl, i64 %i.ccd
  %i.cez = load i16, ptr %i.cey, align 2, !tbaa !92
  %i.cfa = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.caj
  store i16 %i.cez, ptr %i.cfa, align 2, !tbaa !92
  %i.cfb = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbs
  %i.cfc = load i16, ptr %i.cfb, align 2, !tbaa !92
  %i.cfd = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cas
  store i16 %i.cfc, ptr %i.cfd, align 2, !tbaa !92
  %i.cfe = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbw
  %i.cff = load i16, ptr %i.cfe, align 2, !tbaa !92
  %i.cfg = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cav
  store i16 %i.cff, ptr %i.cfg, align 2, !tbaa !92
  %i.cfh = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cck
  %i.cfi = load i16, ptr %i.cfh, align 2, !tbaa !92
  %i.cfj = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.ccn
  store i16 %i.cfi, ptr %i.cfj, align 2, !tbaa !92
  %i.cfk = getelementptr inbounds nuw [2 x i8], ptr %i.bzl, i64 %i.cbi
  %i.cfl = load i16, ptr %i.cfk, align 2, !tbaa !92
  %i.cfm = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cae
  store i16 %i.cfl, ptr %i.cfm, align 2, !tbaa !92
  %i.cfn = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cbn
  %i.cfo = load i16, ptr %i.cfn, align 2, !tbaa !92
  %i.cfp = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cag
  store i16 %i.cfo, ptr %i.cfp, align 2, !tbaa !92
  %i.cfq = getelementptr inbounds nuw [2 x i8], ptr %i.bzv, i64 %i.ccd
  %i.cfr = load i16, ptr %i.cfq, align 2, !tbaa !92
  %i.cfs = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.caj
  store i16 %i.cfr, ptr %i.cfs, align 2, !tbaa !92
  %i.cft = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cbs
  %i.cfu = load i16, ptr %i.cft, align 2, !tbaa !92
  %i.cfv = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cas
  store i16 %i.cfu, ptr %i.cfv, align 2, !tbaa !92
  %i.cfw = getelementptr inbounds nuw [2 x i8], ptr %i.bzl, i64 %i.cbw
  %i.cfx = load i16, ptr %i.cfw, align 2, !tbaa !92
  %i.cfy = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cav
  store i16 %i.cfx, ptr %i.cfy, align 2, !tbaa !92
  %i.cfz = getelementptr inbounds nuw [2 x i8], ptr %i.bzv, i64 %i.cck
  %i.cga = load i16, ptr %i.cfz, align 2, !tbaa !92
  %i.cgb = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.ccn
  store i16 %i.cga, ptr %i.cgb, align 2, !tbaa !92
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i142.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.bxn
  br i1 %.not.i.i142.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %bb.ek, !llvm.loop !191

bb.el:                                            ; preds = %bb.eh
  br i1 %.not.i.i.i.i.i.i.i, label %bb.em, label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i

bb.em:                                            ; preds = %bb.el
  %i.cgc = mul nuw nsw i32 %i.nz, %i.bwz
  %i.cgd = load i16, ptr %i.ob, align 2, !tbaa !112
  %i.cge = zext i16 %i.cgd to i32                 ; 2 uses
  %i.cgf = icmp samesign uge i32 %i.cgc, %i.cge
  call void @llvm.assume(i1 %i.cgf)
  %i.cgg = mul nuw nsw i32 %i.bwz, %indvars110.i.i
  %i.cgh = sub nsw i32 %i.cge, %i.cgg
  br label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i

_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i: ; preds = %bb.em, %bb.el
  %.0.i.i.i.i145.i.i.i = phi i32 [ %i.cgh, %bb.em ], [ %i.bwz, %bb.el ] ; 3 uses
  %i.cgi = and i32 %.0.i.i.i.i145.i.i.i, 1
  %i.cgj = icmp eq i32 %i.cgi, 0
  call void @llvm.assume(i1 %i.cgj)
  %.not58.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i145.i.i.i, 0
  br i1 %.not58.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %.preheader54.lr.ph.i.i.i.i.i

.preheader54.lr.ph.i.i.i.i.i:                     ; preds = %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i
  %i.cgk = ashr exact i32 %.0.i.i.i.i145.i.i.i, 1
  %.sroa.049.0.copyload.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !229 ; 6 uses
  %.sroa.450.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.659.0..sroa_idx.i.i, align 8, !tbaa !94 ; 3 uses
  %.sroa.551.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.760.0..sroa_idx.i.i, align 4, !tbaa !94 ; 4 uses
  %.sroa.652.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.861.0..sroa_idx.i.i, align 8, !tbaa !94
  %i.cgl = mul nuw nsw i64 %indvars.iv.i20.i.i, 6 ; 7 uses
  %i.cgm = icmp ne i32 %.sroa.450.0.copyload.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cgm)
  %i.cgn = icmp sge i32 %.sroa.450.0.copyload.i.i.i.i.i, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cgn)
  %i.cgo = zext nneg i32 %.sroa.450.0.copyload.i.i.i.i.i to i64 ; 6 uses
  %i.cgp = zext nneg i32 %.sroa.652.0.copyload.i.i.i.i.i to i64 ; 8 uses
  %i.cgq = zext i32 %i.cgk to i64
  %i.cgr = add nuw nsw i64 %i.cgl, 2              ; 3 uses
  %i.cgs = icmp samesign ule i64 %i.cgr, %i.cgp
  call void @llvm.assume(i1 %i.cgs)
  %i.cgt = icmp samesign ult i64 %i.cgl, %i.cgp
  %i.cgu = mul nuw nsw i64 %i.cgl, %i.cgo
  %i.cgv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cgu ; 2 uses
  %i.cgw = load i32, ptr %i.ek, align 4, !tbaa !253 ; 2 uses
  %i.cgx = load i32, ptr %i.ej, align 8, !tbaa !252 ; 13 uses
  %i.cgy = icmp sge i32 %i.cgx, %i.cgw
  call void @llvm.assume(i1 %i.cgy)
  %i.cgz = zext nneg i32 %i.cgw to i64
  %i.cha = shl nuw nsw i32 %i.cgx, 1
  %.sroa.0.0.copyload.i.i34.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !272 ; 12 uses
  %i.chb = zext nneg i32 %i.cha to i64
  %i.chc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chb
  call void @llvm.assume(i1 %i.cgt)
  %i.chd = mul nuw nsw i32 %i.cgx, 7
  %i.che = zext nneg i32 %i.chd to i64
  %i.chf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.che
  %i.chg = or disjoint i64 %i.cgl, 1              ; 2 uses
  %i.chh = icmp samesign ult i64 %i.chg, %i.cgp
  %i.chi = mul nuw nsw i64 %i.chg, %i.cgo
  %i.chj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chi ; 2 uses
  %i.chk = shl nuw nsw i32 %i.cgx, 3
  %i.chl = zext nneg i32 %i.chk to i64
  %i.chm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chl
  call void @llvm.assume(i1 %i.chh)
  %i.chn = mul nuw nsw i32 %i.cgx, 15
  %i.cho = zext nneg i32 %i.chn to i64
  %i.chp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cho
  %i.chq = add nuw nsw i64 %i.cgl, 4              ; 3 uses
  %i.chr = icmp samesign ule i64 %i.chq, %i.cgp
  call void @llvm.assume(i1 %i.chr)
  %i.chs = icmp samesign ult i64 %i.cgr, %i.cgp
  %i.cht = mul nuw nsw i64 %i.cgr, %i.cgo
  %i.chu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cht ; 2 uses
  %i.chv = mul nuw nsw i32 %i.cgx, 3
  %i.chw = zext nneg i32 %i.chv to i64
  %i.chx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chw
  call void @llvm.assume(i1 %i.chs)
  %i.chy = mul nuw nsw i32 %i.cgx, 9
  %i.chz = zext nneg i32 %i.chy to i64
  %i.cia = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chz
  %12 = add nuw nsw i64 %i.cgl, 3                 ; 2 uses
  %i.cib = icmp samesign ult i64 %12, %i.cgp
  %i.cic = mul nuw nsw i64 %12, %i.cgo
  %i.cid = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cic ; 2 uses
  %i.cie = mul nuw nsw i32 %i.cgx, 10
  %i.cif = zext nneg i32 %i.cie to i64
  %i.cig = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cif
  call void @llvm.assume(i1 %i.cib)
  %i.cih = shl nuw nsw i32 %i.cgx, 4
  %i.cii = zext nneg i32 %i.cih to i64
  %i.cij = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cii
  %i.cik = icmp samesign ult i64 %i.chq, %i.cgp
  %i.cil = mul nuw nsw i64 %i.chq, %i.cgo
  %i.cim = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cil ; 2 uses
  %i.cin = shl nuw nsw i32 %i.cgx, 2
  %i.cio = zext nneg i32 %i.cin to i64
  %i.cip = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cio
  call void @llvm.assume(i1 %i.cik)
  %i.ciq = mul nuw nsw i32 %i.cgx, 11
  %i.cir = zext nneg i32 %i.ciq to i64
  %i.cis = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cir
  %13 = add nuw nsw i64 %i.cgl, 5                 ; 2 uses
  %i.cit = icmp samesign ult i64 %13, %i.cgp
  %i.ciu = mul nuw nsw i64 %13, %i.cgo
  %i.civ = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.ciu ; 2 uses
  %i.ciw = mul nuw nsw i32 %i.cgx, 12
  %i.cix = zext nneg i32 %i.ciw to i64
  %i.ciy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cix
  call void @llvm.assume(i1 %i.cit)
  %i.ciz = mul nuw nsw i32 %i.cgx, 17
  %i.cja = zext nneg i32 %i.ciz to i64
  %i.cjb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cja
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.preheader54.lr.ph.i.i.i.i.i
  %indvars.iv.i.i146.i.i.i = phi i64 [ 0, %.preheader54.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i147.i.i.i, %bb.en ] ; 2 uses
  %indvars.iv.next.i.i147.i.i.i = add nuw nsw i64 %indvars.iv.i.i146.i.i.i, 1 ; 15 uses
  %.val.val.i.i148.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.cjc = zext i16 %.val.val.i.i148.i.i.i to i32
  %i.cjd = mul nuw nsw i32 %i.cjc, %indvars110.i.i
  %indvars.iv.tr.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i146.i.i.i to i32
  %i.cje = shl nuw nsw i32 %indvars.iv.tr.i.i.i.i.i, 1 ; 3 uses
  %i.cjf = add nuw nsw i32 %i.cjd, %i.cje         ; 2 uses
  %.val33.val.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.cjg = zext i16 %.val33.val.i.i.i.i.i to i64
  %i.cjh = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.cjg
  call void @llvm.assume(i1 %i.cjh)
  %i.cji = zext nneg i32 %i.cjf to i64            ; 3 uses
  %i.cjj = icmp samesign ult i64 %indvars.iv.next.i.i147.i.i.i, %i.cgz
  call void @llvm.assume(i1 %i.cjj)
  %i.cjk = getelementptr inbounds nuw [2 x i8], ptr %i.chc, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjl = load i16, ptr %i.cjk, align 2, !tbaa !92
  %i.cjm = getelementptr inbounds nuw [2 x i8], ptr %i.cgv, i64 %i.cji
  store i16 %i.cjl, ptr %i.cjm, align 2, !tbaa !92
  %i.cjn = getelementptr inbounds nuw [2 x i8], ptr %i.chf, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjo = load i16, ptr %i.cjn, align 2, !tbaa !92
  %i.cjp = add nuw nsw i64 %i.cji, 1              ; 2 uses
  %i.cjq = icmp samesign ult i32 %i.cjf, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cjq)
  %i.cjr = getelementptr inbounds nuw [2 x i8], ptr %i.cgv, i64 %i.cjp
  store i16 %i.cjo, ptr %i.cjr, align 2, !tbaa !92
  %i.cjs = getelementptr inbounds nuw [2 x i8], ptr %i.chm, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjt = load i16, ptr %i.cjs, align 2, !tbaa !92
  %i.cju = getelementptr inbounds nuw [2 x i8], ptr %i.chj, i64 %i.cji
  store i16 %i.cjt, ptr %i.cju, align 2, !tbaa !92
  %i.cjv = getelementptr inbounds nuw [2 x i8], ptr %i.chp, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjw = load i16, ptr %i.cjv, align 2, !tbaa !92
  %i.cjx = getelementptr inbounds nuw [2 x i8], ptr %i.chj, i64 %i.cjp
  store i16 %i.cjw, ptr %i.cjx, align 2, !tbaa !92
  %.val.val.1.i.i.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.cjy = zext i16 %.val.val.1.i.i.i.i.i to i32
  %i.cjz = mul nuw nsw i32 %i.cjy, %indvars110.i.i
  %i.cka = add nuw nsw i32 %i.cjz, %i.cje         ; 2 uses
  %.val33.val.1.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.ckb = zext i16 %.val33.val.1.i.i.i.i.i to i64
  %i.ckc = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.ckb
  call void @llvm.assume(i1 %i.ckc)
  %i.ckd = zext nneg i32 %i.cka to i64            ; 3 uses
  %i.cke = getelementptr inbounds nuw [2 x i8], ptr %i.chx, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckf = load i16, ptr %i.cke, align 2, !tbaa !92
  %i.ckg = getelementptr inbounds nuw [2 x i8], ptr %i.chu, i64 %i.ckd
  store i16 %i.ckf, ptr %i.ckg, align 2, !tbaa !92
  %i.ckh = getelementptr inbounds nuw [2 x i8], ptr %i.cia, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cki = load i16, ptr %i.ckh, align 2, !tbaa !92
  %i.ckj = add nuw nsw i64 %i.ckd, 1              ; 2 uses
  %i.ckk = icmp samesign ult i32 %i.cka, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.ckk)
  %i.ckl = getelementptr inbounds nuw [2 x i8], ptr %i.chu, i64 %i.ckj
  store i16 %i.cki, ptr %i.ckl, align 2, !tbaa !92
  %i.ckm = getelementptr inbounds nuw [2 x i8], ptr %i.cig, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckn = load i16, ptr %i.ckm, align 2, !tbaa !92
  %i.cko = getelementptr inbounds nuw [2 x i8], ptr %i.cid, i64 %i.ckd
  store i16 %i.ckn, ptr %i.cko, align 2, !tbaa !92
  %i.ckp = getelementptr inbounds nuw [2 x i8], ptr %i.cij, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckq = load i16, ptr %i.ckp, align 2, !tbaa !92
  %i.ckr = getelementptr inbounds nuw [2 x i8], ptr %i.cid, i64 %i.ckj
  store i16 %i.ckq, ptr %i.ckr, align 2, !tbaa !92
  %.val.val.2.i.i.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.cks = zext i16 %.val.val.2.i.i.i.i.i to i32
  %i.ckt = mul nuw nsw i32 %i.cks, %indvars110.i.i
  %i.cku = add nuw nsw i32 %i.ckt, %i.cje         ; 2 uses
  %.val33.val.2.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.ckv = zext i16 %.val33.val.2.i.i.i.i.i to i64
  %i.ckw = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.ckv
  call void @llvm.assume(i1 %i.ckw)
  %i.ckx = zext nneg i32 %i.cku to i64            ; 3 uses
  %i.cky = getelementptr inbounds nuw [2 x i8], ptr %i.cip, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckz = load i16, ptr %i.cky, align 2, !tbaa !92
  %i.cla = getelementptr inbounds nuw [2 x i8], ptr %i.cim, i64 %i.ckx
  store i16 %i.ckz, ptr %i.cla, align 2, !tbaa !92
  %i.clb = getelementptr inbounds nuw [2 x i8], ptr %i.cis, i64 %indvars.iv.next.i.i147.i.i.i
  %i.clc = load i16, ptr %i.clb, align 2, !tbaa !92
  %i.cld = add nuw nsw i64 %i.ckx, 1              ; 2 uses
  %i.cle = icmp samesign ult i32 %i.cku, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cle)
  %i.clf = getelementptr inbounds nuw [2 x i8], ptr %i.cim, i64 %i.cld
  store i16 %i.clc, ptr %i.clf, align 2, !tbaa !92
  %i.clg = getelementptr inbounds nuw [2 x i8], ptr %i.ciy, i64 %indvars.iv.next.i.i147.i.i.i
  %i.clh = load i16, ptr %i.clg, align 2, !tbaa !92
  %i.cli = getelementptr inbounds nuw [2 x i8], ptr %i.civ, i64 %i.ckx
  store i16 %i.clh, ptr %i.cli, align 2, !tbaa !92
  %i.clj = getelementptr inbounds nuw [2 x i8], ptr %i.cjb, i64 %indvars.iv.next.i.i147.i.i.i
  %i.clk = load i16, ptr %i.clj, align 2, !tbaa !92
  %i.cll = getelementptr inbounds nuw [2 x i8], ptr %i.civ, i64 %i.cld
  store i16 %i.clk, ptr %i.cll, align 2, !tbaa !92
  %.not.i.i149.i.i.i = icmp eq i64 %indvars.iv.next.i.i147.i.i.i, %i.cgq
  br i1 %.not.i.i149.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %bb.en, !llvm.loop !194

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i: ; preds = %bb.en, %bb.ek, %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i
  %indvars.iv.next.i21.i.i = add nuw nsw i64 %indvars.iv.i20.i.i, 1 ; 3 uses
  %.val.val.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.clm = zext i16 %.val.val.i.i.i to i64
  %i.cln = icmp eq i64 %indvars.iv.next.i21.i.i, %i.clm
  br i1 %i.cln, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_stripERKNS0_9FujiStripE.exit.i.i, label %.preheader50.preheader.i.i.i

.preheader50.preheader.i.i.i:                     ; preds = %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i
  %i.clo = load i32, ptr %i.ek, align 4, !tbaa !253
  %i.clp = load i32, ptr %i.ej, align 8, !tbaa !252 ; 2 uses
  %i.clq = icmp sge i32 %i.clp, %i.clo
  call void @llvm.assume(i1 %i.clq)
  %.sroa.0.0.copyload.i.i.i22.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !273 ; 2 uses
  %i.clr = mul nuw nsw i32 %i.clp, 3
  %i.cls = zext nneg i32 %i.clr to i64
  %i.clt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i.i, i64 %i.cls
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.sroa.0.0.copyload.i.i.i22.i.i, ptr noundef nonnull align 2 dereferenceable(1) %i.clt, i64 %i.nw, i1 false)
  %i.clu = load i32, ptr %i.ek, align 4, !tbaa !253
  %i.clv = load i32, ptr %i.ej, align 8, !tbaa !252 ; 3 uses
  %i.clw = icmp sge i32 %i.clv, %i.clu
  call void @llvm.assume(i1 %i.clw)
  %i.clx = mul nuw nsw i32 %i.clv, 5
  %.sroa.0.0.copyload.i.i.1.i23.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !273 ; 2 uses
  %i.cly = zext nneg i32 %i.clx to i64
  %i.clz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.1.i23.i.i, i64 %i.cly
  %i.cma = mul nuw nsw i32 %i.clv, 11
  %i.cmb = zext nneg i32 %i.cma to i64
  %i.cmc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.1.i23.i.i, i64 %i.cmb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.clz, ptr noundef nonnull align 2 dereferenceable(1) %i.cmc, i64 %i.nw, i1 false)
  %i.cmd = load i32, ptr %i.ek, align 4, !tbaa !253
  %i.cme = load i32, ptr %i.ej, align 8, !tbaa !252 ; 3 uses
  %i.cmf = icmp sge i32 %i.cme, %i.cmd
  call void @llvm.assume(i1 %i.cmf)
  %i.cmg = mul nuw nsw i32 %i.cme, 13
  %.sroa.0.0.copyload.i.i.2.i24.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !273 ; 2 uses
  %i.cmh = zext nneg i32 %i.cmg to i64
  %i.cmi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.2.i24.i.i, i64 %i.cmh
  %i.cmj = shl nuw nsw i32 %i.cme, 4
  %i.cmk = zext nneg i32 %i.cmj to i64
  %i.cml = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.2.i24.i.i, i64 %i.cmk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cmi, ptr noundef nonnull align 2 dereferenceable(1) %i.cml, i64 %i.nw, i1 false)
  %.sroa.441.0.copyload.i.i.i = load i32, ptr %i.ej, align 8, !tbaa !94 ; 7 uses
  %.sroa.542.0.copyload.i.i.i = load i32, ptr %i.ek, align 4, !tbaa !94 ; 4 uses
  %i.cmm = icmp sgt i32 %.sroa.542.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.cmm)
  %i.cmn = icmp sge i32 %.sroa.441.0.copyload.i.i.i, %.sroa.542.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.cmn)
  %i.cmo = icmp ne i32 %.sroa.542.0.copyload.i.i.i, 0
  call void @llvm.assume(i1 %i.cmo)
  %.sroa.0.0.copyload.i.i153.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !274
  %i.cmp = zext nneg i32 %.sroa.542.0.copyload.i.i.i to i64
  %invariant.gep.i26.i.i = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i.i153.i.i.i, i64 %i.cmp ; 6 uses
  %i.cmq = zext nneg i32 %.sroa.441.0.copyload.i.i.i to i64
  %gep.i27.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmq
  %i.cmr = getelementptr i8, ptr %gep.i27.i.i, i64 -4
  %i.cms = load i16, ptr %i.cmr, align 2, !tbaa !92
  %i.cmt = shl nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 1
  %i.cmu = zext nneg i32 %i.cmt to i64
  %gep71.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmu
  %i.cmv = getelementptr i8, ptr %gep71.i.i.i, i64 -2
  store i16 %i.cms, ptr %i.cmv, align 2, !tbaa !92
  %i.cmw = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 6
  %i.cmx = zext nneg i32 %i.cmw to i64
  %gep.1.i28.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmx
  %i.cmy = getelementptr i8, ptr %gep.1.i28.i.i, i64 -4
  %i.cmz = load i16, ptr %i.cmy, align 2, !tbaa !92
  %i.cna = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 7
  %i.cnb = zext nneg i32 %i.cna to i64
  %gep71.1.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cnb
  %i.cnc = getelementptr i8, ptr %gep71.1.i.i.i, i64 -2
  store i16 %i.cmz, ptr %i.cnc, align 2, !tbaa !92
  %i.cnd = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 14
  %i.cne = zext nneg i32 %i.cnd to i64
  %gep.2.i29.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cne
  %i.cnf = getelementptr i8, ptr %gep.2.i29.i.i, i64 -4
  %i.cng = load i16, ptr %i.cnf, align 2, !tbaa !92
  %i.cnh = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 15
  %i.cni = zext nneg i32 %i.cnh to i64
  %gep71.2.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cni
  %i.cnj = getelementptr i8, ptr %gep71.2.i.i.i, i64 -2
  store i16 %i.cng, ptr %i.cnj, align 2, !tbaa !92
  %.val41.val.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.cnk = zext i16 %.val41.val.i.i.i to i64
  %i.cnl = icmp samesign ult i64 %indvars.iv.next.i21.i.i, %i.cnk
  br i1 %i.cnl, label %bb.x, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_stripERKNS0_9FujiStripE.exit.i.i, !llvm.loop !199

bb.eo:                                            ; preds = %.invoke.i.i12, %.invoke191.i.i
  %i.cnm = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
          catch ptr null
  br label %bb.eq

bb.ep:                                            ; preds = %bb.v
  %i.cnn = landingpad { ptr, i32 }
end_hunk_0
