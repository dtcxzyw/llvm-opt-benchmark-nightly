Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/paq8p?download=true
inline.NumInlined: 1537
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z9jpegModelR5Mixer:bb.a
  %i.crx = getelementptr inbounds nuw i8, ptr %i.cgm, i64 68
  store i32 %i.crw, ptr %i.crx, align 4, !tbaa !4
  %i.cry = ashr i32 %i.cen, 3                     ; 2 uses
  %i.crz = load i32, ptr @_ZZ9jpegModelR5MixerE5ssum3, align 4, !tbaa !4
  %i.csa = ashr i32 %i.crz, 3                     ; 2 uses
  %i.csb = load i32, ptr %i.cka, align 4, !tbaa !4 ; 2 uses
  %i.csc = mul i32 %i.cry, 50004239
  %i.csd = mul i32 %i.csa, 70004807
  %i.cse = mul i32 %i.csb, 110002499
  %i.csf = add i32 %i.csc, -494910695
  %i.csg = add i32 %i.csf, %i.cfx
  %i.csh = add i32 %i.csg, %i.csd
  %i.csi = add i32 %i.csh, %i.cse                 ; 2 uses
  %i.csj = lshr i32 %i.csi, 9
  %i.csk = lshr i32 %i.cry, 4
  %i.csl = lshr i32 %i.csa, 5
  %i.csm = lshr i32 %i.csb, 6
  %i.csn = xor i32 %i.csk, %i.csl
  %i.cso = xor i32 %i.csn, %i.csm
  %i.csp = xor i32 %i.cso, %i.csj
  %i.csq = xor i32 %i.csp, %i.cqs
  %i.csr = xor i32 %i.csq, %i.csi
  %i.css = getelementptr inbounds nuw i8, ptr %i.cgm, i64 72
  store i32 %i.csr, ptr %i.css, align 4, !tbaa !4
  %i.cst = load i32, ptr %i.clp, align 4, !tbaa !4
  %i.csu = sdiv i32 %i.cst, 3                     ; 2 uses
  %i.csv = load i32, ptr %i.clr, align 4, !tbaa !4
  %i.csw = sdiv i32 %i.csv, 3                     ; 2 uses
  %i.csx = getelementptr inbounds nuw i8, ptr %i.cfu, i64 20
  %i.csy = load i32, ptr %i.csx, align 4, !tbaa !4 ; 2 uses
  %i.csz = add i32 %i.cfx, -294907716
  %i.cta = mul i32 %i.csu, 50004239
  %i.ctb = add i32 %i.csz, %i.cta
  %i.ctc = mul i32 %i.csw, 70004807
  %i.ctd = add i32 %i.ctb, %i.ctc
  %i.cte = mul i32 %i.csy, 110002499
  %i.ctf = add i32 %i.ctd, %i.cte                 ; 2 uses
  %i.ctg = lshr i32 %i.ctf, 9
  %i.cth = lshr i32 %i.csu, 4
  %i.cti = lshr i32 %i.csw, 5
  %i.ctj = lshr i32 %i.csy, 6
  %i.ctk = xor i32 %i.cth, %i.cti
  %i.ctl = xor i32 %i.ctk, %i.ctj
  %i.ctm = xor i32 %i.ctl, %i.ctg
  %i.ctn = xor i32 %i.cge, %i.ctm
  %i.cto = xor i32 %i.ctn, %i.ctf
  %i.ctp = xor i32 %i.cto, 5
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.cgm, i64 76
  store i32 %i.ctp, ptr %i.ctq, align 4, !tbaa !4
  %i.ctr = load i8, ptr %i.cjx, align 1, !tbaa !11
  %i.cts = zext i8 %i.ctr to i32                  ; 2 uses
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.cfu, i64 24 ; 2 uses
  %i.ctu = load i32, ptr %i.ctt, align 4, !tbaa !4 ; 2 uses
  %i.ctv = mul i32 %i.cts, 50004239
  %i.ctw = mul i32 %i.ctu, 70004807
  %i.ctx = add i32 %i.cfx, -204907236
  %i.cty = add i32 %i.ctx, %i.ctv
  %i.ctz = add i32 %i.cty, %i.ctw                 ; 2 uses
  %i.cua = lshr i32 %i.ctz, 9
  %i.cub = lshr i32 %i.cts, 4
  %i.cuc = lshr i32 %i.ctu, 5
  %i.cud = xor i32 %i.cuc, %i.cub
  %i.cue = xor i32 %i.cud, %i.cua
  %i.cuf = xor i32 %i.cue, %i.cge
  %i.cug = xor i32 %i.cuf, %i.ctz
  %i.cuh = xor i32 %i.cug, 67108858
  %i.cui = getelementptr inbounds nuw i8, ptr %i.cgm, i64 80
  store i32 %i.cuh, ptr %i.cui, align 4, !tbaa !4
  %i.cuj = load i32, ptr %i.cks, align 4, !tbaa !4
  %i.cuk = sub nsw i32 %i.cjn, %i.cuj
  %i.cul = and i32 %i.cuk, %i.cjt
  %i.cum = sext i32 %i.cul to i64
  %i.cun = getelementptr inbounds i8, ptr %i.cjv, i64 %i.cum
  %i.cuo = load i8, ptr %i.cun, align 1, !tbaa !11
  %i.cup = zext i8 %i.cuo to i32                  ; 2 uses
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.cfu, i64 16 ; 2 uses
  %i.cur = load i32, ptr %i.cuq, align 4, !tbaa !4 ; 2 uses
  %i.cus = mul i32 %i.cup, 50004239
  %i.cut = mul i32 %i.cur, 70004807
  %i.cuu = add i32 %i.cfx, -4904257
  %i.cuv = add i32 %i.cuu, %i.cus
  %i.cuw = add i32 %i.cuv, %i.cut                 ; 2 uses
  %i.cux = lshr i32 %i.cuw, 9
  %i.cuy = lshr i32 %i.cup, 4
  %i.cuz = lshr i32 %i.cur, 5
  %i.cva = xor i32 %i.cuz, %i.cuy
  %i.cvb = xor i32 %i.cva, %i.cux
  %i.cvc = xor i32 %i.cvb, %i.cge
  %i.cvd = xor i32 %i.cvc, %i.cuw
  %i.cve = xor i32 %i.cvd, 67108858
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.cgm, i64 84
  store i32 %i.cve, ptr %i.cvf, align 4, !tbaa !4
  %i.cvg = load i32, ptr %i.cfv, align 4, !tbaa !4 ; 2 uses
  %i.cvh = mul i32 %i.cvg, 50004239
  %i.cvi = add i32 %i.cfx, 125093915              ; 3 uses
  %i.cvj = add i32 %i.cvi, %i.cvh                 ; 2 uses
  %i.cvk = lshr i32 %i.cvj, 9
  %i.cvl = lshr i32 %i.cvg, 4
  %i.cvm = xor i32 %i.cvl, %i.cvk
  %i.cvn = xor i32 %i.cvm, %i.cge
  %i.cvo = xor i32 %i.cvn, %i.cvj
  %i.cvp = xor i32 %i.cvo, 67108869
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.cgm, i64 88
  store i32 %i.cvp, ptr %i.cvq, align 4, !tbaa !4
  %i.cvr = load i32, ptr %i.cfu, align 4, !tbaa !4 ; 2 uses
  %i.cvs = mul i32 %i.cvr, 50004239
  %i.cvt = add i32 %i.cvi, %i.cvs                 ; 2 uses
  %i.cvu = lshr i32 %i.cvt, 9
  %i.cvv = lshr i32 %i.cvr, 4
  %i.cvw = xor i32 %i.cvv, %i.cvu
  %i.cvx = xor i32 %i.cvw, %i.cge
  %i.cvy = xor i32 %i.cvx, %i.cvt
  %i.cvz = xor i32 %i.cvy, 67108869
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.cgm, i64 92
  store i32 %i.cvz, ptr %i.cwa, align 4, !tbaa !4
  %i.cwb = load i32, ptr %i.cgy, align 4, !tbaa !4 ; 2 uses
  %i.cwc = mul i32 %i.cwb, 50004239
  %i.cwd = add i32 %i.cvi, %i.cwc                 ; 2 uses
  %i.cwe = lshr i32 %i.cwd, 9
  %i.cwf = lshr i32 %i.cwb, 4
  %i.cwg = xor i32 %i.cwf, %i.cwe
  %i.cwh = xor i32 %i.cwg, %i.cge
  %i.cwi = xor i32 %i.cwh, %i.cwd
  %i.cwj = xor i32 %i.cwi, 67108869
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cgm, i64 96
  store i32 %i.cwj, ptr %i.cwk, align 4, !tbaa !4
  %i.cwl = load i32, ptr %i.clr, align 4, !tbaa !4 ; 2 uses
  %i.cwm = load i32, ptr %i.ctt, align 4, !tbaa !4 ; 2 uses
  %i.cwn = mul i32 %i.cwl, 70004807
  %i.cwo = mul i32 %i.cwm, 110002499
  %i.cwp = add i32 %i.coh, 505104200
  %i.cwq = add i32 %i.cwp, %i.cwn
  %i.cwr = add i32 %i.cwq, %i.cwo                 ; 2 uses
  %i.cws = lshr i32 %i.cwr, 9
  %i.cwt = lshr i32 %i.cwl, 5
  %i.cwu = lshr i32 %i.cwm, 6
  %i.cwv = xor i32 %i.cge, 6                      ; 3 uses
  %i.cww = xor i32 %i.cwt, %i.cwu
  %i.cwx = xor i32 %i.cww, %i.cws
  %i.cwy = xor i32 %i.cwx, %i.cwv
  %i.cwz = xor i32 %i.cwy, %i.com
  %i.cxa = xor i32 %i.cwz, %i.cwr
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cgm, i64 100
  store i32 %i.cxa, ptr %i.cxb, align 4, !tbaa !4
  %i.cxc = load i32, ptr %i.clp, align 4, !tbaa !4 ; 2 uses
  %i.cxd = load i32, ptr %i.cuq, align 4, !tbaa !4 ; 2 uses
  %i.cxe = mul i32 %i.cxc, 70004807
  %i.cxf = mul i32 %i.cxd, 110002499
  %i.cxg = add i32 %i.cnl, 705107179
  %i.cxh = add i32 %i.cxg, %i.cxe
  %i.cxi = add i32 %i.cxh, %i.cxf                 ; 2 uses
  %i.cxj = lshr i32 %i.cxi, 9
  %i.cxk = lshr i32 %i.cxc, 5
  %i.cxl = lshr i32 %i.cxd, 6
  %i.cxm = xor i32 %i.cxk, %i.cxl
  %i.cxn = xor i32 %i.cxm, %i.cxj
  %i.cxo = xor i32 %i.cxn, %i.cwv
  %i.cxp = xor i32 %i.cxo, %i.cnq
  %i.cxq = xor i32 %i.cxp, %i.cxi
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.cgm, i64 104
  store i32 %i.cxq, ptr %i.cxr, align 4, !tbaa !4
  %i.cxs = load i32, ptr %i.clp, align 4, !tbaa !4 ; 2 uses
  %i.cxt = load i32, ptr %i.clr, align 4, !tbaa !4 ; 2 uses
  %i.cxu = load i32, ptr %i.cka, align 4, !tbaa !4 ; 2 uses
  %i.cxv = add i32 %i.cfx, 905110158
  %i.cxw = mul i32 %i.cxs, 50004239
  %i.cxx = add i32 %i.cxv, %i.cxw
  %i.cxy = mul i32 %i.cxt, 70004807
  %i.cxz = add i32 %i.cxx, %i.cxy
  %i.cya = mul i32 %i.cxu, 110002499
  %i.cyb = add i32 %i.cxz, %i.cya                 ; 2 uses
  %i.cyc = lshr i32 %i.cyb, 9
  %i.cyd = lshr i32 %i.cxs, 4
  %i.cye = lshr i32 %i.cxt, 5
  %i.cyf = lshr i32 %i.cxu, 6
  %i.cyg = xor i32 %i.cyd, %i.cye
  %i.cyh = xor i32 %i.cyg, %i.cyf
  %i.cyi = xor i32 %i.cyh, %i.cyc
  %i.cyj = xor i32 %i.cyi, %i.cwv
  %i.cyk = xor i32 %i.cyj, %i.cyb
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cgm, i64 108
  store i32 %i.cyk, ptr %i.cyl, align 4, !tbaa !4
  %i.cym = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 96), align 8, !tbaa !69 ; 2 uses
  %i.cyn = add nsw i32 %i.cym, 1
  store i32 %i.cyn, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 96), align 8, !tbaa !69
  %i.cyo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 32), align 8, !tbaa !64
  %i.cyp = sext i32 %i.cym to i64
  %i.cyq = getelementptr inbounds [2 x i8], ptr %i.cyo, i64 %i.cyp
  store i16 128, ptr %i.cyq, align 2, !tbaa !33
  br label %.preheader

bb.km:                                            ; preds = %bb.kl
  %i.cyr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 96), align 8, !tbaa !69 ; 2 uses
  %i.cys = add nsw i32 %i.cyr, 1
  store i32 %i.cys, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 96), align 8, !tbaa !69
  %i.cyt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 32), align 8, !tbaa !64 ; 3 uses
  %i.cyu = sext i32 %i.cyr to i64
  %i.cyv = getelementptr inbounds [2 x i8], ptr %i.cyt, i64 %i.cyu
  store i16 128, ptr %i.cyv, align 2, !tbaa !33
  %cond = icmp eq i32 %spec.store.select, 1
  %i.cyw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 16), align 8, !tbaa !32 ; 2 uses
  br i1 %cond, label %bb.kn, label %bb.kp

.preheader:                                       ; preds = %.thread1093, %.preheader
  %indvars.iv959 = phi i64 [ 0, %.thread1093 ], [ %indvars.iv.next960, %.preheader ] ; 4 uses
  %i.cyx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE3cxt, i64 16), align 8, !tbaa !88
  %i.cyy = getelementptr inbounds nuw [4 x i8], ptr %i.cyx, i64 %indvars.iv959
  %i.cyz = load i32, ptr %i.cyy, align 4, !tbaa !4
  %i.cza = tail call noundef ptr @_ZN2BHILi9EEixEj(ptr noundef nonnull align 8 dereferenceable(28) @_ZZ9jpegModelR5MixerE1t, i32 noundef %i.cyz)
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cza, i64 1 ; 2 uses
  %i.czc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2cp, i64 16), align 8, !tbaa !109
  %i.czd = getelementptr inbounds nuw [8 x i8], ptr %i.czc, i64 %indvars.iv959
  store ptr %i.czb, ptr %i.czd, align 8, !tbaa !8
  %i.cze = getelementptr inbounds nuw [32 x i8], ptr @_ZZ9jpegModelR5MixerE2sm, i64 %indvars.iv959 ; 2 uses
  %i.czf = load i8, ptr %i.czb, align 1, !tbaa !11 ; 2 uses
  %i.czg = zext i8 %i.czf to i32
  %i.czh = getelementptr inbounds nuw i8, ptr %i.cze, i64 4 ; 2 uses
  %i.czi = load i32, ptr %i.czh, align 4, !tbaa !86
  %i.czj = getelementptr inbounds nuw i8, ptr %i.cze, i64 24
  %i.czk = load ptr, ptr %i.czj, align 8, !tbaa !88 ; 2 uses
  %i.czl = sext i32 %i.czi to i64
  %i.czm = getelementptr inbounds [4 x i8], ptr %i.czk, i64 %i.czl ; 2 uses
  %i.czn = load i32, ptr %i.czm, align 4, !tbaa !4 ; 4 uses
  %i.czo = and i32 %i.czn, 1023                   ; 2 uses
  %.not777 = icmp eq i32 %i.czo, 1023
  %i.czp = add i32 %i.czn, 1
  %i.czq = or i32 %i.czn, 1023
  %.0.i.i = select i1 %.not777, i32 %i.czq, i32 %i.czp
  %i.czr = lshr i32 %i.czn, 10
  %i.czs = load i32, ptr @y, align 4, !tbaa !4
  %i.czt = shl i32 %i.czs, 22
  %i.czu = sub nsw i32 %i.czt, %i.czr
  %i.czv = ashr i32 %i.czu, 3
  %i.czw = zext nneg i32 %i.czo to i64
  %i.czx = getelementptr inbounds nuw [4 x i8], ptr @_ZL2dt, i64 %i.czw
  %i.czy = load i32, ptr %i.czx, align 4, !tbaa !4
  %i.czz = mul nsw i32 %i.czv, %i.czy
  %i.daa = and i32 %i.czz, -1024
  %i.dab = add i32 %i.daa, %.0.i.i
  store i32 %i.dab, ptr %i.czm, align 4, !tbaa !4
  store i32 %i.czg, ptr %i.czh, align 4, !tbaa !86
  %i.dac = zext i8 %i.czf to i64
  %i.dad = getelementptr inbounds nuw [4 x i8], ptr %i.czk, i64 %i.dac
  %i.dae = load i32, ptr %i.dad, align 4, !tbaa !4
  %i.daf = lshr i32 %i.dae, 20
  %i.dag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 16), align 8, !tbaa !32
  %i.dah = zext nneg i32 %i.daf to i64
  %i.dai = getelementptr inbounds nuw [2 x i8], ptr %i.dag, i64 %i.dah
  %i.daj = load i16, ptr %i.dai, align 2, !tbaa !33
  %i.dak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 96), align 8, !tbaa !69 ; 2 uses
  %i.dal = add nsw i32 %i.dak, 1
  store i32 %i.dal, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 96), align 8, !tbaa !69
  %i.dam = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 32), align 8, !tbaa !64
  %i.dan = sext i32 %i.dak to i64
  %i.dao = getelementptr inbounds [2 x i8], ptr %i.dam, i64 %i.dan
  store i16 %i.daj, ptr %i.dao, align 2, !tbaa !33
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 1 ; 2 uses
  %exitcond962.not = icmp eq i64 %indvars.iv.next960, 28
  br i1 %exitcond962.not, label %.loopexit, label %.preheader, !llvm.loop !164

bb.kn:                                            ; preds = %bb.km
  %i.dap = trunc i32 %i.cew to i1
  %i.daq = select i1 %i.dap, i64 4, i64 1
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2cp, i64 16), align 8, !tbaa !109
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.ko
  %indvars.iv955 = phi i64 [ 0, %bb.kn ], [ %indvars.iv.next956, %bb.ko ] ; 3 uses
  %i.dar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv955 ; 2 uses
  %i.das = load ptr, ptr %i.dar, align 8, !tbaa !8
  %i.dat = getelementptr inbounds nuw i8, ptr %i.das, i64 %i.daq ; 2 uses
  store ptr %i.dat, ptr %i.dar, align 8, !tbaa !8
  %i.dau = getelementptr inbounds nuw [32 x i8], ptr @_ZZ9jpegModelR5MixerE2sm, i64 %indvars.iv955 ; 2 uses
  %i.dav = load i8, ptr %i.dat, align 1, !tbaa !11 ; 2 uses
  %i.daw = zext i8 %i.dav to i32
  %i.dax = getelementptr inbounds nuw i8, ptr %i.dau, i64 4 ; 2 uses
  %i.day = load i32, ptr %i.dax, align 4, !tbaa !86
  %i.daz = getelementptr inbounds nuw i8, ptr %i.dau, i64 24
  %i.dba = load ptr, ptr %i.daz, align 8, !tbaa !88 ; 2 uses
  %i.dbb = sext i32 %i.day to i64
  %i.dbc = getelementptr inbounds [4 x i8], ptr %i.dba, i64 %i.dbb ; 2 uses
  %i.dbd = load i32, ptr %i.dbc, align 4, !tbaa !4 ; 4 uses
  %i.dbe = and i32 %i.dbd, 1023                   ; 2 uses
  %.not776 = icmp eq i32 %i.dbe, 1023
  %i.dbf = add i32 %i.dbd, 1
  %i.dbg = or i32 %i.dbd, 1023
  %.0.i.i687 = select i1 %.not776, i32 %i.dbg, i32 %i.dbf
  %i.dbh = lshr i32 %i.dbd, 10
  %i.dbi = load i32, ptr @y, align 4, !tbaa !4
  %i.dbj = shl i32 %i.dbi, 22
  %i.dbk = sub nsw i32 %i.dbj, %i.dbh
  %i.dbl = ashr i32 %i.dbk, 3
  %i.dbm = zext nneg i32 %i.dbe to i64
  %i.dbn = getelementptr inbounds nuw [4 x i8], ptr @_ZL2dt, i64 %i.dbm
  %i.dbo = load i32, ptr %i.dbn, align 4, !tbaa !4
  %i.dbp = mul nsw i32 %i.dbl, %i.dbo
  %i.dbq = and i32 %i.dbp, -1024
  %i.dbr = add i32 %i.dbq, %.0.i.i687
  store i32 %i.dbr, ptr %i.dbc, align 4, !tbaa !4
  store i32 %i.daw, ptr %i.dax, align 4, !tbaa !86
  %i.dbs = zext i8 %i.dav to i64
  %i.dbt = getelementptr inbounds nuw [4 x i8], ptr %i.dba, i64 %i.dbs
  %i.dbu = load i32, ptr %i.dbt, align 4, !tbaa !4
  %i.dbv = lshr i32 %i.dbu, 20
  %i.dbw = zext nneg i32 %i.dbv to i64
  %i.dbx = getelementptr inbounds nuw [2 x i8], ptr %i.cyw, i64 %i.dbw
  %i.dby = load i16, ptr %i.dbx, align 2, !tbaa !33
  %i.dbz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 96), align 8, !tbaa !69 ; 2 uses
  %i.dca = add nsw i32 %i.dbz, 1
  store i32 %i.dca, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 96), align 8, !tbaa !69
  %i.dcb = sext i32 %i.dbz to i64
  %i.dcc = getelementptr inbounds [2 x i8], ptr %i.cyt, i64 %i.dcb
  store i16 %i.dby, ptr %i.dcc, align 2, !tbaa !33
  %indvars.iv.next956 = add nuw nsw i64 %indvars.iv955, 1 ; 2 uses
  %exitcond958.not = icmp eq i64 %indvars.iv.next956, 28
  br i1 %exitcond958.not, label %.loopexit, label %bb.ko, !llvm.loop !165

bb.kp:                                            ; preds = %bb.km
  %i.dcd = and i32 %i.cew, 1
  %2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2cp, i64 16), align 8, !tbaa !109
  %i.dce = zext nneg i32 %i.dcd to i64
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.kq
  %indvars.iv963 = phi i64 [ 0, %bb.kp ], [ %indvars.iv.next964, %bb.kq ] ; 3 uses
  %i.dcf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv963 ; 2 uses
  %i.dcg = load ptr, ptr %i.dcf, align 8, !tbaa !8
  %i.dch = getelementptr inbounds nuw i8, ptr %i.dcg, i64 %i.dce
  %i.dci = getelementptr inbounds nuw i8, ptr %i.dch, i64 1 ; 2 uses
  store ptr %i.dci, ptr %i.dcf, align 8, !tbaa !8
  %i.dcj = getelementptr inbounds nuw [32 x i8], ptr @_ZZ9jpegModelR5MixerE2sm, i64 %indvars.iv963 ; 2 uses
  %i.dck = load i8, ptr %i.dci, align 1, !tbaa !11 ; 2 uses
  %i.dcl = zext i8 %i.dck to i32
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcj, i64 4 ; 2 uses
  %i.dcn = load i32, ptr %i.dcm, align 4, !tbaa !86
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dcj, i64 24
  %i.dcp = load ptr, ptr %i.dco, align 8, !tbaa !88 ; 2 uses
  %i.dcq = sext i32 %i.dcn to i64
  %i.dcr = getelementptr inbounds [4 x i8], ptr %i.dcp, i64 %i.dcq ; 2 uses
  %i.dcs = load i32, ptr %i.dcr, align 4, !tbaa !4 ; 4 uses
  %i.dct = and i32 %i.dcs, 1023                   ; 2 uses
  %.not778 = icmp eq i32 %i.dct, 1023
  %i.dcu = add i32 %i.dcs, 1
  %i.dcv = or i32 %i.dcs, 1023
  %.0.i.i688 = select i1 %.not778, i32 %i.dcv, i32 %i.dcu
  %i.dcw = lshr i32 %i.dcs, 10
  %i.dcx = load i32, ptr @y, align 4, !tbaa !4
  %i.dcy = shl i32 %i.dcx, 22
  %i.dcz = sub nsw i32 %i.dcy, %i.dcw
  %i.dda = ashr i32 %i.dcz, 3
  %i.ddb = zext nneg i32 %i.dct to i64
  %i.ddc = getelementptr inbounds nuw [4 x i8], ptr @_ZL2dt, i64 %i.ddb
  %i.ddd = load i32, ptr %i.ddc, align 4, !tbaa !4
  %i.dde = mul nsw i32 %i.dda, %i.ddd
  %i.ddf = and i32 %i.dde, -1024
  %i.ddg = add i32 %i.ddf, %.0.i.i688
  store i32 %i.ddg, ptr %i.dcr, align 4, !tbaa !4
  store i32 %i.dcl, ptr %i.dcm, align 4, !tbaa !86
  %i.ddh = zext i8 %i.dck to i64
  %i.ddi = getelementptr inbounds nuw [4 x i8], ptr %i.dcp, i64 %i.ddh
  %i.ddj = load i32, ptr %i.ddi, align 4, !tbaa !4
  %i.ddk = lshr i32 %i.ddj, 20
  %i.ddl = zext nneg i32 %i.ddk to i64
  %i.ddm = getelementptr inbounds nuw [2 x i8], ptr %i.cyw, i64 %i.ddl
  %i.ddn = load i16, ptr %i.ddm, align 2, !tbaa !33
  %i.ddo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 96), align 8, !tbaa !69 ; 2 uses
  %i.ddp = add nsw i32 %i.ddo, 1
  store i32 %i.ddp, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 96), align 8, !tbaa !69
  %i.ddq = sext i32 %i.ddo to i64
  %i.ddr = getelementptr inbounds [2 x i8], ptr %i.cyt, i64 %i.ddq
  store i16 %i.ddn, ptr %i.ddr, align 2, !tbaa !33
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1 ; 2 uses
  %exitcond966.not = icmp eq i64 %indvars.iv.next964, 28
  br i1 %exitcond966.not, label %.loopexit, label %bb.kq, !llvm.loop !166

.loopexit:                                        ; preds = %bb.kq, %bb.ko, %.preheader
  %i.dds = load i32, ptr @_ZZ9jpegModelR5MixerE6column, align 4, !tbaa !4
  %i.ddt = icmp eq i32 %i.dds, 0
  %i.ddu = zext i1 %i.ddt to i32
  %i.ddv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 92), align 4, !tbaa !68
  %i.ddw = add nsw i32 %i.ddv, %i.ddu
  %i.ddx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.ddy = add nsw i32 %i.ddx, 1
  store i32 %i.ddy, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 88), align 8, !tbaa !67
  %i.ddz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 80), align 8, !tbaa !66 ; 3 uses
  %i.dea = sext i32 %i.ddx to i64
  %i.deb = getelementptr inbounds [4 x i8], ptr %i.ddz, i64 %i.dea
  store i32 %i.ddw, ptr %i.deb, align 4, !tbaa !4
  %i.dec = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 92), align 4, !tbaa !68
  %i.ded = add nsw i32 %i.dec, 2                  ; 2 uses
  store i32 %i.ded, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 92), align 4, !tbaa !68
  %i.dee = add nsw i32 %i.ded, %i.cev
  %i.def = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.deg = add nsw i32 %i.def, 1
  store i32 %i.deg, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 88), align 8, !tbaa !67
  %i.deh = sext i32 %i.def to i64
  %i.dei = getelementptr inbounds [4 x i8], ptr %i.ddz, i64 %i.deh
  store i32 %i.dee, ptr %i.dei, align 4, !tbaa !4
  %i.dej = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 92), align 4, !tbaa !68
  %i.dek = add nsw i32 %i.dej, 256                ; 2 uses
  store i32 %i.dek, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 92), align 4, !tbaa !68
  %i.del = and i32 %i.cfe, 511                    ; 2 uses
  %i.dem = add nsw i32 %i.dek, %i.del
  %i.den = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.deo = add nsw i32 %i.den, 1
  store i32 %i.deo, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 88), align 8, !tbaa !67
  %i.dep = sext i32 %i.den to i64
  %i.deq = getelementptr inbounds [4 x i8], ptr %i.ddz, i64 %i.dep
  store i32 %i.dem, ptr %i.deq, align 4, !tbaa !4
  %i.der = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 92), align 4, !tbaa !68
  %i.des = add nsw i32 %i.der, 512
  store i32 %i.des, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE2m1, i64 92), align 4, !tbaa !68
  %i.det = tail call noundef i32 @_ZN5Mixer1pEv(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ9jpegModelR5MixerE2m1) ; 2 uses
  %i.deu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 16), align 8, !tbaa !32
  %i.dev = sext i32 %i.det to i64
  %i.dew = getelementptr inbounds [2 x i8], ptr %i.deu, i64 %i.dev
  %i.dex = load i16, ptr %i.dew, align 2, !tbaa !33
  %i.dey = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.dez = load i32, ptr %i.dey, align 8, !tbaa !69 ; 2 uses
  %i.dfa = add nsw i32 %i.dez, 1
  store i32 %i.dfa, ptr %i.dey, align 8, !tbaa !69
  %i.dfb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dfc = load ptr, ptr %i.dfb, align 8, !tbaa !64
  %i.dfd = sext i32 %i.dez to i64
  %i.dfe = getelementptr inbounds [2 x i8], ptr %i.dfc, i64 %i.dfd
  store i16 %i.dex, ptr %i.dfe, align 2, !tbaa !33
  %i.dff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9jpegModelR5MixerE8adv_pred, i64 16), align 8, !tbaa !66
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dff, i64 4
  %i.dfh = load i32, ptr %i.dfg, align 4, !tbaa !4
  %i.dfi = shl i32 %i.dfh, 9
  %i.dfj = and i32 %i.dfi, 32256
  %i.dfk = or disjoint i32 %i.dfj, %i.del
  %i.dfl = tail call noundef i32 @_ZN3APM1pEiii(ptr noundef nonnull align 8 dereferenceable(32) @_ZZ9jpegModelR5MixerE2a1, i32 noundef %i.det, i32 noundef %i.dfk, i32 noundef 1023)
  %i.dfm = and i32 %i.cfe, 255                    ; 2 uses
  %i.dfn = shl nuw nsw i32 %i.cev, 8
  %i.dfo = or disjoint i32 %i.dfm, %i.dfn
  %i.dfp = tail call noundef i32 @_ZN3APM1pEiii(ptr noundef nonnull align 8 dereferenceable(32) @_ZZ9jpegModelR5MixerE2a2, i32 noundef %i.dfl, i32 noundef %i.dfo, i32 noundef 255)
  %i.dfq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 16), align 8, !tbaa !32
  %i.dfr = sext i32 %i.dfp to i64
  %i.dfs = getelementptr inbounds [2 x i8], ptr %i.dfq, i64 %i.dfr
  %i.dft = load i16, ptr %i.dfs, align 2, !tbaa !33
  %i.dfu = load i32, ptr %i.dey, align 8, !tbaa !69 ; 2 uses
  %i.dfv = add nsw i32 %i.dfu, 1
  store i32 %i.dfv, ptr %i.dey, align 8, !tbaa !69
  %i.dfw = load ptr, ptr %i.dfb, align 8, !tbaa !64
  %i.dfx = sext i32 %i.dfu to i64
  %i.dfy = getelementptr inbounds [2 x i8], ptr %i.dfw, i64 %i.dfx
  store i16 %i.dft, ptr %i.dfy, align 2, !tbaa !33
  %i.dfz = add nuw nsw i32 %i.dfm, 2
  br label %.thread727

.thread727:                                       ; preds = %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.ck, %bb.cb, %.thread692._crit_edge, %.split.us, %bb.gs, %bb.gu, %.thread741, %bb.gq, %bb.gf, %bb.gd, %bb.gw, %bb.gm, %bb.fy, %bb.fw, %bb.ft, %bb.fq, %bb.fo, %bb.dt, %.thread698, %.thread724, %bb.fe, %._crit_edge.thread, %bb.dx, %bb.dv, %bb.kk, %.loopexit, %bb.ja, %bb.iy, %bb.fm, %bb.fj, %bb.dm, %bb.df, %bb.dd, %bb.bz
  %.30 = phi i32 [ %i.aqj, %bb.gs ], [ 1, %bb.ja ], [ %i.bz, %bb.bz ], [ %i.brm, %bb.iy ], [ %i.alg, %bb.fo ], [ %i.wn, %.thread698 ], [ %i.alc, %bb.fm ], [ %i.akv, %bb.fj ], [ %i.cfl, %bb.kk ], [ %i.kh, %bb.dm ], [ %i.cb, %bb.df ], [ %i.cb, %bb.dd ], [ %i.cb, %bb.cb ], [ %i.cb, %bb.ck ], [ %i.dfz, %.loopexit ], [ %i.afv, %.thread724 ], [ %i.akf, %bb.fe ], [ %i.agc, %._crit_edge.thread ], [ %.10.ph, %.split.us ], [ %i.xl, %bb.dx ], [ %i.wu, %bb.dv ], [ %i.wp, %bb.dt ], [ %i.ame, %bb.fw ], [ %i.amh, %bb.fy ], [ %i.amc, %bb.ft ], [ %i.aln, %bb.fq ], [ %i.anw, %.thread741 ], [ %i.aqd, %bb.gq ], [ %i.apv, %bb.gm ], [ %i.ans, %bb.gf ], [ %i.aqs, %bb.gu ], [ %i.anb, %bb.gd ], [ %i.arp, %bb.gw ], [ %.pre, %.thread692._crit_edge ], [ %i.cb, %bb.cf ], [ %i.cb, %bb.ce ], [ %i.cb, %bb.cd ], [ %i.cb, %bb.cc ]
  ret i32 %.30

.loopexit792:                                     ; preds = %.preheader791, %bb.kg, %bb.kd, %bb.ke, %bb.kf, %bb.kh, %bb.ki, %bb.kj, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %_ZGVZ9jpegModelR5MixerE1t.sink = phi ptr [ @_ZGVZ9jpegModelR5MixerE1t, %bb.kd ], [ @_ZGVZ9jpegModelR5MixerE3cxt, %bb.ke ], [ @_ZGVZ9jpegModelR5MixerE2cp, %bb.kf ], [ @_ZGVZ9jpegModelR5MixerE2ht, %bb.bj ], [ @_ZGVZ9jpegModelR5MixerE2m1, %bb.kh ], [ @_ZGVZ9jpegModelR5MixerE2a1, %bb.ki ], [ @_ZGVZ9jpegModelR5MixerE2a2, %bb.kj ], [ @_ZGVZ9jpegModelR5MixerE4qmap, %bb.bx ], [ @_ZGVZ9jpegModelR5MixerE4qtab, %bb.bw ], [ @_ZGVZ9jpegModelR5MixerE4zpos, %bb.bv ], [ @_ZGVZ9jpegModelR5MixerE3lcp, %bb.bu ], [ @_ZGVZ9jpegModelR5MixerE2ls, %bb.bt ], [ @_ZGVZ9jpegModelR5MixerE4sumv, %bb.bs ], [ @_ZGVZ9jpegModelR5MixerE4sumu, %bb.br ], [ @_ZGVZ9jpegModelR5MixerE8adv_pred, %bb.bq ], [ @_ZGVZ9jpegModelR5MixerE5cbuf2, %bb.bp ], [ @_ZGVZ9jpegModelR5MixerE4cbuf, %bb.bo ], [ @_ZGVZ9jpegModelR5MixerE4pred, %bb.bn ], [ @_ZGVZ9jpegModelR5MixerE5color, %bb.bm ], [ @_ZGVZ9jpegModelR5MixerE4hbuf, %bb.bl ], [ @_ZGVZ9jpegModelR5MixerE3huf, %bb.bk ], [ @_ZGVZ9jpegModelR5MixerE2sm, %bb.kg ], [ @_ZGVZ9jpegModelR5MixerE2sm, %.preheader791 ]
  %.pn.pn = phi { ptr, i32 } [ %i.cee, %bb.kd ], [ %i.cef, %bb.ke ], [ %i.ceg, %bb.kf ], [ %i.bk, %bb.bj ], [ %i.cek, %bb.kh ], [ %i.cel, %bb.ki ], [ %i.cem, %bb.kj ], [ %i.by, %bb.bx ], [ %i.bx, %bb.bw ], [ %i.bw, %bb.bv ], [ %i.bv, %bb.bu ], [ %i.bu, %bb.bt ], [ %i.bt, %bb.bs ], [ %i.bs, %bb.br ], [ %i.br, %bb.bq ], [ %i.bq, %bb.bp ], [ %i.bp, %bb.bo ], [ %i.bo, %bb.bn ], [ %i.bn, %bb.bm ], [ %i.bm, %bb.bl ], [ %i.bl, %bb.bk ], [ %lpad.thr_comm.split-lp, %bb.kg ], [ %lpad.thr_comm, %.preheader791 ]
  tail call void @__cxa_guard_abort(ptr nonnull %_ZGVZ9jpegModelR5MixerE1t.sink) #38
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5ArrayI3HUFLi0EEC2Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !167
  store i32 %1, ptr %0, align 8, !tbaa !146
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZN5ArrayI3HUFLi0EE6createEi.exit

bb.c:                                             ; preds = %bb.a
  %i.d = mul i32 %1, 12                           ; 2 uses
  %i.e = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.f = add nsw i32 %i.e, %i.d                   ; 3 uses
  store i32 %i.f, ptr @programChecker, align 8, !tbaa !15
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.h = icmp sgt i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %_ZN14ProgramChecker5allocEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i

_ZN14ProgramChecker5allocEi.exit.i:               ; preds = %bb.d, %bb.c
  %i.i = sext i32 %i.d to i64
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 1) #40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !168
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

bb.f:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.l, align 8, !tbaa !143
  br label %_ZN5ArrayI3HUFLi0EE6createEi.exit

_ZN5ArrayI3HUFLi0EE6createEi.exit:                ; preds = %bb.b, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5ArrayI3HUFLi0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !146
  %.neg = mul i32 %i.a, -12
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.c = add nsw i32 %i.b, %.neg                  ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !15
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN14ProgramChecker5allocEi.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit

end_hunk_0
