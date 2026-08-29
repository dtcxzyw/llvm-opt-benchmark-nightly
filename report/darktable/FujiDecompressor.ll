Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/FujiDecompressor?download=true
inline.NumInlined: 1167
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  %i.cdt = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cbp
  store i16 %i.cds, ptr %i.cdt, align 2, !tbaa !97
  %i.cdu = getelementptr inbounds nuw [2 x i8], ptr %i.byv, i64 %i.cch
  %i.cdv = load i16, ptr %i.cdu, align 2, !tbaa !97
  %i.cdw = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.cck
  store i16 %i.cdv, ptr %i.cdw, align 2, !tbaa !97
  %i.cdx = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.caz
  %i.cdy = load i16, ptr %i.cdx, align 2, !tbaa !97
  %i.cdz = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cae
  store i16 %i.cdy, ptr %i.cdz, align 2, !tbaa !97
  %i.cea = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbe
  %i.ceb = load i16, ptr %i.cea, align 2, !tbaa !97
  %i.cec = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cag
  store i16 %i.ceb, ptr %i.cec, align 2, !tbaa !97
  %i.ced = getelementptr inbounds nuw [2 x i8], ptr %i.byp, i64 %i.cca
  %i.cee = load i16, ptr %i.ced, align 2, !tbaa !97
  %i.cef = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.caj
  store i16 %i.cee, ptr %i.cef, align 2, !tbaa !97
  %i.ceg = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbj
  %i.ceh = load i16, ptr %i.ceg, align 2, !tbaa !97
  %i.cei = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cam
  store i16 %i.ceh, ptr %i.cei, align 2, !tbaa !97
  %i.cej = getelementptr inbounds nuw [2 x i8], ptr %i.bzb, i64 %i.cbn
  %i.cek = load i16, ptr %i.cej, align 2, !tbaa !97
  %i.cel = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cbp
  store i16 %i.cek, ptr %i.cel, align 2, !tbaa !97
  %i.cem = getelementptr inbounds nuw [2 x i8], ptr %i.bys, i64 %i.cch
  %i.cen = load i16, ptr %i.cem, align 2, !tbaa !97
  %i.ceo = getelementptr inbounds nuw [2 x i8], ptr %i.byy, i64 %i.cck
  store i16 %i.cen, ptr %i.ceo, align 2, !tbaa !97
  %i.cep = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.caz
  %i.ceq = load i16, ptr %i.cep, align 2, !tbaa !97
  %i.cer = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cae
  store i16 %i.ceq, ptr %i.cer, align 2, !tbaa !97
  %i.ces = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbe
  %i.cet = load i16, ptr %i.ces, align 2, !tbaa !97
  %i.ceu = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cag
  store i16 %i.cet, ptr %i.ceu, align 2, !tbaa !97
  %i.cev = getelementptr inbounds nuw [2 x i8], ptr %i.bzl, i64 %i.cca
  %i.cew = load i16, ptr %i.cev, align 2, !tbaa !97
  %i.cex = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.caj
  store i16 %i.cew, ptr %i.cex, align 2, !tbaa !97
  %i.cey = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbj
  %i.cez = load i16, ptr %i.cey, align 2, !tbaa !97
  %i.cfa = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cam
  store i16 %i.cez, ptr %i.cfa, align 2, !tbaa !97
  %i.cfb = getelementptr inbounds nuw [2 x i8], ptr %i.bzi, i64 %i.cbn
  %i.cfc = load i16, ptr %i.cfb, align 2, !tbaa !97
  %i.cfd = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cbp
  store i16 %i.cfc, ptr %i.cfd, align 2, !tbaa !97
  %i.cfe = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cch
  %i.cff = load i16, ptr %i.cfe, align 2, !tbaa !97
  %i.cfg = getelementptr inbounds nuw [2 x i8], ptr %i.bzf, i64 %i.cck
  store i16 %i.cff, ptr %i.cfg, align 2, !tbaa !97
  %i.cfh = getelementptr inbounds nuw [2 x i8], ptr %i.bzl, i64 %i.caz
  %i.cfi = load i16, ptr %i.cfh, align 2, !tbaa !97
  %i.cfj = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cae
  store i16 %i.cfi, ptr %i.cfj, align 2, !tbaa !97
  %i.cfk = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cbe
  %i.cfl = load i16, ptr %i.cfk, align 2, !tbaa !97
  %i.cfm = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cag
  store i16 %i.cfl, ptr %i.cfm, align 2, !tbaa !97
  %i.cfn = getelementptr inbounds nuw [2 x i8], ptr %i.bzv, i64 %i.cca
  %i.cfo = load i16, ptr %i.cfn, align 2, !tbaa !97
  %i.cfp = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.caj
  store i16 %i.cfo, ptr %i.cfp, align 2, !tbaa !97
  %i.cfq = getelementptr inbounds nuw [2 x i8], ptr %i.bzo, i64 %i.cbj
  %i.cfr = load i16, ptr %i.cfq, align 2, !tbaa !97
  %i.cfs = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cam
  store i16 %i.cfr, ptr %i.cfs, align 2, !tbaa !97
  %i.cft = getelementptr inbounds nuw [2 x i8], ptr %i.bzl, i64 %i.cbn
  %i.cfu = load i16, ptr %i.cft, align 2, !tbaa !97
  %i.cfv = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cbp
  store i16 %i.cfu, ptr %i.cfv, align 2, !tbaa !97
  %i.cfw = getelementptr inbounds nuw [2 x i8], ptr %i.bzv, i64 %i.cch
  %i.cfx = load i16, ptr %i.cfw, align 2, !tbaa !97
  %i.cfy = getelementptr inbounds nuw [2 x i8], ptr %i.bzs, i64 %i.cck
  store i16 %i.cfx, ptr %i.cfy, align 2, !tbaa !97
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i142.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.bxn
  br i1 %.not.i.i142.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %bb.ek, !llvm.loop !259

bb.el:                                            ; preds = %bb.eh
  br i1 %.not.i.i.i.i.i.i.i, label %bb.em, label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i

bb.em:                                            ; preds = %bb.el
  %i.cfz = mul nuw nsw i32 %i.nz, %i.bwz
  %i.cga = load i16, ptr %i.ob, align 2, !tbaa !136
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
  %.sroa.049.0.copyload.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !200 ; 6 uses
  %.sroa.450.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.659.0..sroa_idx.i.i, align 8, !tbaa !100 ; 3 uses
  %.sroa.551.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.760.0..sroa_idx.i.i, align 4, !tbaa !100 ; 4 uses
  %.sroa.652.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.861.0..sroa_idx.i.i, align 8, !tbaa !100
  %i.cgi = mul nuw nsw i64 %indvars.iv.i20.i.i, 6 ; 5 uses
  %i.cgj = icmp ne i32 %.sroa.450.0.copyload.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cgj)
  %i.cgk = icmp sge i32 %.sroa.450.0.copyload.i.i.i.i.i, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cgk)
  %i.cgl = zext nneg i32 %.sroa.450.0.copyload.i.i.i.i.i to i64 ; 6 uses
  %i.cgm = zext nneg i32 %.sroa.652.0.copyload.i.i.i.i.i to i64 ; 8 uses
  %i.cgn = zext i32 %i.cgh to i64
  %i.cgo = add nuw nsw i64 %i.cgi, 2              ; 4 uses
  %i.cgp = icmp samesign ule i64 %i.cgo, %i.cgm
  call void @llvm.assume(i1 %i.cgp)
  %i.cgq = icmp samesign ult i64 %i.cgi, %i.cgm
  %i.cgr = mul nuw nsw i64 %i.cgi, %i.cgl
  %i.cgs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cgr ; 2 uses
  %i.cgt = load i32, ptr %i.ek, align 4, !tbaa !225 ; 2 uses
  %i.cgu = load i32, ptr %i.ej, align 8, !tbaa !224 ; 13 uses
  %i.cgv = icmp sge i32 %i.cgu, %i.cgt
  call void @llvm.assume(i1 %i.cgv)
  %i.cgw = zext nneg i32 %i.cgt to i64
  %i.cgx = shl nuw nsw i32 %i.cgu, 1
  %.sroa.0.0.copyload.i.i34.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !200, !noalias !260 ; 12 uses
  %i.cgy = zext nneg i32 %i.cgx to i64
  %i.cgz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cgy
  call void @llvm.assume(i1 %i.cgq)
  %i.cha = mul nuw nsw i32 %i.cgu, 7
  %i.chb = zext nneg i32 %i.cha to i64
  %i.chc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chb
  %i.chd = or disjoint i64 %i.cgi, 1              ; 2 uses
  %i.che = icmp samesign ult i64 %i.chd, %i.cgm
  %i.chf = mul nuw nsw i64 %i.chd, %i.cgl
  %i.chg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chf ; 2 uses
  %i.chh = shl nuw nsw i32 %i.cgu, 3
  %i.chi = zext nneg i32 %i.chh to i64
  %i.chj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chi
  call void @llvm.assume(i1 %i.che)
  %i.chk = mul nuw nsw i32 %i.cgu, 15
  %i.chl = zext nneg i32 %i.chk to i64
  %i.chm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chl
  %i.chn = add nuw nsw i64 %i.cgi, 4              ; 4 uses
  %i.cho = icmp samesign ule i64 %i.chn, %i.cgm
  call void @llvm.assume(i1 %i.cho)
  %i.chp = icmp samesign ult i64 %i.cgo, %i.cgm
  %i.chq = mul nuw nsw i64 %i.cgo, %i.cgl
  %i.chr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.chq ; 2 uses
  %i.chs = mul nuw nsw i32 %i.cgu, 3
  %i.cht = zext nneg i32 %i.chs to i64
  %i.chu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cht
  call void @llvm.assume(i1 %i.chp)
  %i.chv = mul nuw nsw i32 %i.cgu, 9
  %i.chw = zext nneg i32 %i.chv to i64
  %i.chx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.chw
  %i.chy = or disjoint i64 %i.cgo, 1              ; 2 uses
  %i.chz = icmp samesign ult i64 %i.chy, %i.cgm
  %i.cia = mul nuw nsw i64 %i.chy, %i.cgl
  %i.cib = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cia ; 2 uses
  %i.cic = mul nuw nsw i32 %i.cgu, 10
  %i.cid = zext nneg i32 %i.cic to i64
  %i.cie = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cid
  call void @llvm.assume(i1 %i.chz)
  %i.cif = shl nuw nsw i32 %i.cgu, 4
  %i.cig = zext nneg i32 %i.cif to i64
  %i.cih = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cig
  %i.cii = icmp samesign ult i64 %i.chn, %i.cgm
  %i.cij = mul nuw nsw i64 %i.chn, %i.cgl
  %i.cik = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cij ; 2 uses
  %i.cil = shl nuw nsw i32 %i.cgu, 2
  %i.cim = zext nneg i32 %i.cil to i64
  %i.cin = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cim
  call void @llvm.assume(i1 %i.cii)
  %i.cio = mul nuw nsw i32 %i.cgu, 11
  %i.cip = zext nneg i32 %i.cio to i64
  %i.ciq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.cip
  %i.cir = or disjoint i64 %i.chn, 1              ; 2 uses
  %i.cis = icmp samesign ult i64 %i.cir, %i.cgm
  %i.cit = mul nuw nsw i64 %i.cir, %i.cgl
  %i.ciu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.049.0.copyload.i.i.i.i.i, i64 %i.cit ; 2 uses
  %i.civ = mul nuw nsw i32 %i.cgu, 12
  %i.ciw = zext nneg i32 %i.civ to i64
  %i.cix = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.ciw
  call void @llvm.assume(i1 %i.cis)
  %i.ciy = mul nuw nsw i32 %i.cgu, 17
  %i.ciz = zext nneg i32 %i.ciy to i64
  %i.cja = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i34.i.i.i.i.i, i64 %i.ciz
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.preheader54.lr.ph.i.i.i.i.i
  %indvars.iv.i.i146.i.i.i = phi i64 [ 0, %.preheader54.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i147.i.i.i, %bb.en ] ; 2 uses
  %indvars.iv.next.i.i147.i.i.i = add nuw nsw i64 %indvars.iv.i.i146.i.i.i, 1 ; 15 uses
  %.val.val.i.i148.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !138
  %i.cjb = zext i16 %.val.val.i.i148.i.i.i to i32
  %i.cjc = mul nuw nsw i32 %i.cjb, %indvars110.i.i
  %indvars.iv.tr.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i146.i.i.i to i32
  %i.cjd = shl nuw nsw i32 %indvars.iv.tr.i.i.i.i.i, 1 ; 3 uses
  %i.cje = add nuw nsw i32 %i.cjc, %i.cjd         ; 2 uses
  %.val33.val.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !140
  %i.cjf = zext i16 %.val33.val.i.i.i.i.i to i64
  %i.cjg = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.cjf
  call void @llvm.assume(i1 %i.cjg)
  %i.cjh = zext nneg i32 %i.cje to i64            ; 3 uses
  %i.cji = icmp samesign ult i64 %indvars.iv.next.i.i147.i.i.i, %i.cgw
  call void @llvm.assume(i1 %i.cji)
  %i.cjj = getelementptr inbounds nuw [2 x i8], ptr %i.cgz, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjk = load i16, ptr %i.cjj, align 2, !tbaa !97
  %i.cjl = getelementptr inbounds nuw [2 x i8], ptr %i.cgs, i64 %i.cjh
  store i16 %i.cjk, ptr %i.cjl, align 2, !tbaa !97
  %i.cjm = getelementptr inbounds nuw [2 x i8], ptr %i.chc, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjn = load i16, ptr %i.cjm, align 2, !tbaa !97
  %i.cjo = add nuw nsw i64 %i.cjh, 1              ; 2 uses
  %i.cjp = icmp samesign ult i32 %i.cje, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cjp)
  %i.cjq = getelementptr inbounds nuw [2 x i8], ptr %i.cgs, i64 %i.cjo
  store i16 %i.cjn, ptr %i.cjq, align 2, !tbaa !97
  %i.cjr = getelementptr inbounds nuw [2 x i8], ptr %i.chj, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjs = load i16, ptr %i.cjr, align 2, !tbaa !97
  %i.cjt = getelementptr inbounds nuw [2 x i8], ptr %i.chg, i64 %i.cjh
  store i16 %i.cjs, ptr %i.cjt, align 2, !tbaa !97
  %i.cju = getelementptr inbounds nuw [2 x i8], ptr %i.chm, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cjv = load i16, ptr %i.cju, align 2, !tbaa !97
  %i.cjw = getelementptr inbounds nuw [2 x i8], ptr %i.chg, i64 %i.cjo
  store i16 %i.cjv, ptr %i.cjw, align 2, !tbaa !97
  %.val.val.1.i.i.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !138
  %i.cjx = zext i16 %.val.val.1.i.i.i.i.i to i32
  %i.cjy = mul nuw nsw i32 %i.cjx, %indvars110.i.i
  %i.cjz = add nuw nsw i32 %i.cjy, %i.cjd         ; 2 uses
  %.val33.val.1.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !140
  %i.cka = zext i16 %.val33.val.1.i.i.i.i.i to i64
  %i.ckb = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.cka
  call void @llvm.assume(i1 %i.ckb)
  %i.ckc = zext nneg i32 %i.cjz to i64            ; 3 uses
  %i.ckd = getelementptr inbounds nuw [2 x i8], ptr %i.chu, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cke = load i16, ptr %i.ckd, align 2, !tbaa !97
  %i.ckf = getelementptr inbounds nuw [2 x i8], ptr %i.chr, i64 %i.ckc
  store i16 %i.cke, ptr %i.ckf, align 2, !tbaa !97
  %i.ckg = getelementptr inbounds nuw [2 x i8], ptr %i.chx, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckh = load i16, ptr %i.ckg, align 2, !tbaa !97
  %i.cki = add nuw nsw i64 %i.ckc, 1              ; 2 uses
  %i.ckj = icmp samesign ult i32 %i.cjz, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.ckj)
  %i.ckk = getelementptr inbounds nuw [2 x i8], ptr %i.chr, i64 %i.cki
  store i16 %i.ckh, ptr %i.ckk, align 2, !tbaa !97
  %i.ckl = getelementptr inbounds nuw [2 x i8], ptr %i.cie, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckm = load i16, ptr %i.ckl, align 2, !tbaa !97
  %i.ckn = getelementptr inbounds nuw [2 x i8], ptr %i.cib, i64 %i.ckc
  store i16 %i.ckm, ptr %i.ckn, align 2, !tbaa !97
  %i.cko = getelementptr inbounds nuw [2 x i8], ptr %i.cih, i64 %indvars.iv.next.i.i147.i.i.i
  %i.ckp = load i16, ptr %i.cko, align 2, !tbaa !97
  %i.ckq = getelementptr inbounds nuw [2 x i8], ptr %i.cib, i64 %i.cki
  store i16 %i.ckp, ptr %i.ckq, align 2, !tbaa !97
  %.val.val.2.i.i.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !138
  %i.ckr = zext i16 %.val.val.2.i.i.i.i.i to i32
  %i.cks = mul nuw nsw i32 %i.ckr, %indvars110.i.i
  %i.ckt = add nuw nsw i32 %i.cks, %i.cjd         ; 2 uses
  %.val33.val.2.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !140
  %i.cku = zext i16 %.val33.val.2.i.i.i.i.i to i64
  %i.ckv = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.cku
  call void @llvm.assume(i1 %i.ckv)
  %i.ckw = zext nneg i32 %i.ckt to i64            ; 3 uses
  %i.ckx = getelementptr inbounds nuw [2 x i8], ptr %i.cin, i64 %indvars.iv.next.i.i147.i.i.i
  %i.cky = load i16, ptr %i.ckx, align 2, !tbaa !97
  %i.ckz = getelementptr inbounds nuw [2 x i8], ptr %i.cik, i64 %i.ckw
  store i16 %i.cky, ptr %i.ckz, align 2, !tbaa !97
  %i.cla = getelementptr inbounds nuw [2 x i8], ptr %i.ciq, i64 %indvars.iv.next.i.i147.i.i.i
  %i.clb = load i16, ptr %i.cla, align 2, !tbaa !97
  %i.clc = add nuw nsw i64 %i.ckw, 1              ; 2 uses
  %i.cld = icmp samesign ult i32 %i.ckt, %.sroa.551.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.cld)
  %i.cle = getelementptr inbounds nuw [2 x i8], ptr %i.cik, i64 %i.clc
  store i16 %i.clb, ptr %i.cle, align 2, !tbaa !97
  %i.clf = getelementptr inbounds nuw [2 x i8], ptr %i.cix, i64 %indvars.iv.next.i.i147.i.i.i
  %i.clg = load i16, ptr %i.clf, align 2, !tbaa !97
  %i.clh = getelementptr inbounds nuw [2 x i8], ptr %i.ciu, i64 %i.ckw
  store i16 %i.clg, ptr %i.clh, align 2, !tbaa !97
  %i.cli = getelementptr inbounds nuw [2 x i8], ptr %i.cja, i64 %indvars.iv.next.i.i147.i.i.i
  %i.clj = load i16, ptr %i.cli, align 2, !tbaa !97
  %i.clk = getelementptr inbounds nuw [2 x i8], ptr %i.ciu, i64 %i.clc
  store i16 %i.clj, ptr %i.clk, align 2, !tbaa !97
  %.not.i.i149.i.i.i = icmp eq i64 %indvars.iv.next.i.i147.i.i.i, %i.cgn
  br i1 %.not.i.i149.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %bb.en, !llvm.loop !263

_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i: ; preds = %bb.en, %bb.ek, %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i144.i.i.i, %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i
  %indvars.iv.next.i21.i.i = add nuw nsw i64 %indvars.iv.i20.i.i, 1 ; 3 uses
  %.val.val.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !140
  %i.cll = zext i16 %.val.val.i.i.i to i64
  %i.clm = icmp eq i64 %indvars.iv.next.i21.i.i, %i.cll
  br i1 %i.clm, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_stripERKNS0_9FujiStripE.exit.i.i, label %.preheader50.preheader.i.i.i

.preheader50.preheader.i.i.i:                     ; preds = %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i
  %i.cln = load i32, ptr %i.ek, align 4, !tbaa !225
  %i.clo = load i32, ptr %i.ej, align 8, !tbaa !224 ; 2 uses
  %i.clp = icmp sge i32 %i.clo, %i.cln
  call void @llvm.assume(i1 %i.clp)
  %.sroa.0.0.copyload.i.i.i22.i.i = load ptr, ptr %i.ec, align 8, !tbaa !200, !noalias !264 ; 2 uses
  %i.clq = mul nuw nsw i32 %i.clo, 3
  %i.clr = zext nneg i32 %i.clq to i64
  %i.cls = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i.i, i64 %i.clr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.sroa.0.0.copyload.i.i.i22.i.i, ptr noundef nonnull align 2 dereferenceable(1) %i.cls, i64 %i.nw, i1 false)
  %i.clt = load i32, ptr %i.ek, align 4, !tbaa !225
  %i.clu = load i32, ptr %i.ej, align 8, !tbaa !224 ; 3 uses
  %i.clv = icmp sge i32 %i.clu, %i.clt
  call void @llvm.assume(i1 %i.clv)
  %i.clw = mul nuw nsw i32 %i.clu, 5
  %.sroa.0.0.copyload.i.i.1.i23.i.i = load ptr, ptr %i.ec, align 8, !tbaa !200, !noalias !264 ; 2 uses
  %i.clx = zext nneg i32 %i.clw to i64
  %i.cly = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.1.i23.i.i, i64 %i.clx
  %i.clz = mul nuw nsw i32 %i.clu, 11
  %i.cma = zext nneg i32 %i.clz to i64
  %i.cmb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.1.i23.i.i, i64 %i.cma
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cly, ptr noundef nonnull align 2 dereferenceable(1) %i.cmb, i64 %i.nw, i1 false)
  %i.cmc = load i32, ptr %i.ek, align 4, !tbaa !225
  %i.cmd = load i32, ptr %i.ej, align 8, !tbaa !224 ; 3 uses
  %i.cme = icmp sge i32 %i.cmd, %i.cmc
  call void @llvm.assume(i1 %i.cme)
  %i.cmf = mul nuw nsw i32 %i.cmd, 13
  %.sroa.0.0.copyload.i.i.2.i24.i.i = load ptr, ptr %i.ec, align 8, !tbaa !200, !noalias !264 ; 2 uses
  %i.cmg = zext nneg i32 %i.cmf to i64
  %i.cmh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.2.i24.i.i, i64 %i.cmg
  %i.cmi = shl nuw nsw i32 %i.cmd, 4
  %i.cmj = zext nneg i32 %i.cmi to i64
  %i.cmk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.2.i24.i.i, i64 %i.cmj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cmh, ptr noundef nonnull align 2 dereferenceable(1) %i.cmk, i64 %i.nw, i1 false)
  %.sroa.441.0.copyload.i.i.i = load i32, ptr %i.ej, align 8, !tbaa !100 ; 7 uses
  %.sroa.542.0.copyload.i.i.i = load i32, ptr %i.ek, align 4, !tbaa !100 ; 4 uses
  %i.cml = icmp sgt i32 %.sroa.542.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.cml)
  %i.cmm = icmp sge i32 %.sroa.441.0.copyload.i.i.i, %.sroa.542.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.cmm)
  %i.cmn = icmp ne i32 %.sroa.542.0.copyload.i.i.i, 0
  call void @llvm.assume(i1 %i.cmn)
  %.sroa.0.0.copyload.i.i153.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !200, !noalias !267
  %i.cmo = zext nneg i32 %.sroa.542.0.copyload.i.i.i to i64
  %invariant.gep.i26.i.i = getelementptr [2 x i8], ptr %.sroa.0.0.copyload.i.i153.i.i.i, i64 %i.cmo ; 6 uses
  %i.cmp = zext nneg i32 %.sroa.441.0.copyload.i.i.i to i64
  %gep.i27.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmp
  %i.cmq = getelementptr i8, ptr %gep.i27.i.i, i64 -4
  %i.cmr = load i16, ptr %i.cmq, align 2, !tbaa !97
  %i.cms = shl nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 1
  %i.cmt = zext nneg i32 %i.cms to i64
  %gep71.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmt
  %i.cmu = getelementptr i8, ptr %gep71.i.i.i, i64 -2
  store i16 %i.cmr, ptr %i.cmu, align 2, !tbaa !97
  %i.cmv = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 6
  %i.cmw = zext nneg i32 %i.cmv to i64
  %gep.1.i28.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cmw
  %i.cmx = getelementptr i8, ptr %gep.1.i28.i.i, i64 -4
  %i.cmy = load i16, ptr %i.cmx, align 2, !tbaa !97
  %i.cmz = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 7
  %i.cna = zext nneg i32 %i.cmz to i64
  %gep71.1.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cna
  %i.cnb = getelementptr i8, ptr %gep71.1.i.i.i, i64 -2
  store i16 %i.cmy, ptr %i.cnb, align 2, !tbaa !97
  %i.cnc = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 14
  %i.cnd = zext nneg i32 %i.cnc to i64
  %gep.2.i29.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cnd
  %i.cne = getelementptr i8, ptr %gep.2.i29.i.i, i64 -4
  %i.cnf = load i16, ptr %i.cne, align 2, !tbaa !97
  %i.cng = mul nuw nsw i32 %.sroa.441.0.copyload.i.i.i, 15
  %i.cnh = zext nneg i32 %i.cng to i64
  %gep71.2.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i26.i.i, i64 %i.cnh
  %i.cni = getelementptr i8, ptr %gep71.2.i.i.i, i64 -2
  store i16 %i.cnf, ptr %i.cni, align 2, !tbaa !97
  %.val41.val.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !140
  %i.cnj = zext i16 %.val41.val.i.i.i to i64
  %i.cnk = icmp samesign ult i64 %indvars.iv.next.i21.i.i, %i.cnj
  br i1 %i.cnk, label %bb.x, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block17fuji_decode_stripERKNS0_9FujiStripE.exit.i.i, !llvm.loop !270

bb.eo:                                            ; preds = %.invoke.i.i12, %.invoke191.i.i
  %i.cnl = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
          catch ptr null
  br label %bb.eq

bb.ep:                                            ; preds = %bb.v
  %i.cnm = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
          catch ptr null
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.pn.i.i13 = phi { ptr, i32 } [ %i.cnl, %bb.eo ], [ %i.cnm, %bb.ep ] ; 2 uses
  %.011.i.i = extractvalue { ptr, i32 } %.pn.i.i13, 0
  %.012.i.i = extractvalue { ptr, i32 } %.pn.i.i13, 1
  %i.cnn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed17RawspeedExceptionE) #25
  %i.cno = icmp eq i32 %.012.i.i, %i.cnn
  %i.cnp = call ptr @__cxa_begin_catch(ptr %.011.i.i) #25 ; 2 uses
  call void @llvm.assume(i1 %i.cno)
  %i.cnq = load ptr, ptr %10, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cnr = load ptr, ptr %i.cnp, align 8, !tbaa !159
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnr, i64 16
  %i.cnt = load ptr, ptr %i.cns, align 8
  %i.cnu = call noundef ptr %i.cnt(ptr noundef nonnull align 8 dereferenceable(16) %i.cnp) #25, !call_target !271, !inline_history !281 ; 4 uses
  store ptr %i.es, ptr %8, align 8, !tbaa !282
  %i.cnv = icmp eq ptr %i.cnu, null
  br i1 %i.cnv, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #29
          to label %.noexc.i unwind label %.loopexit.i.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.er
  unreachable

bb.es:                                            ; preds = %bb.eq
  %i.cnw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cnu) #25 ; 8 uses
  %i.cnx = icmp ugt i64 %i.cnw, 15
  br i1 %i.cnx, label %bb.et, label %._crit_edge.i.i.i

bb.et:                                            ; preds = %bb.es
  %i.cny = icmp slt i64 %i.cnw, 0
  br i1 %i.cny, label %.noexc.i5.i, label %bb.eu

.noexc.i5.i:                                      ; preds = %bb.et
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #29
          to label %.noexc6.i unwind label %.loopexit.i.loopexit.split-lp.i

.noexc6.i:                                        ; preds = %.noexc.i5.i
  unreachable

bb.eu:                                            ; preds = %bb.et
  %i.cnz = add nuw i64 %i.cnw, 1                  ; 2 uses
  %i.coa = icmp slt i64 %i.cnz, 0
  br i1 %i.coa, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !170

.noexc11.i.i:                                     ; preds = %bb.eu
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc7.i unwind label %.loopexit.i.loopexit.split-lp.i

.noexc7.i:                                        ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.eu
  %i.cob = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cnz) #27
          to label %.noexc8.i unwind label %.loopexit.i.loopexit.i ; 2 uses

.noexc8.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.cob, ptr %8, align 8, !tbaa !283
  store i64 %i.cnw, ptr %i.es, align 8, !tbaa !99
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8.i, %bb.es
  %i.coc = phi ptr [ %i.cob, %.noexc8.i ], [ %i.es, %bb.es ] ; 3 uses
  switch i64 %i.cnw, label %bb.ew [
    i64 1, label %bb.ev
    i64 0, label %bb.ex
  ]

bb.ev:                                            ; preds = %._crit_edge.i.i.i
  %i.cod = load i8, ptr %i.cnu, align 1, !tbaa !99
  store i8 %i.cod, ptr %i.coc, align 1, !tbaa !99
  br label %bb.ex

bb.ew:                                            ; preds = %._crit_edge.i.i.i
end_hunk_0
