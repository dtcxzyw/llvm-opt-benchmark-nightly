inline.NumInlined: 48
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@default_process_tiling:bb.a
  %i.azf = sitofp reassoc nsz arcp contract afn i32 %i.aze to float
  %i.azg = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !46
  %i.azi = sitofp reassoc nsz arcp contract afn i32 %i.azh to float
  %i.azj = sitofp reassoc nsz arcp contract afn i32 %6 to float
  %i.azk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !54
  %i.azm = uitofp reassoc nsz arcp contract afn i32 %i.azl to float
  %.neg345.i = fmul reassoc nnan nsz arcp contract afn float %i.ayz, %i.azd
  %.neg345.i.neg = fmul reassoc nsz arcp contract afn float %.neg345.i, %i.azc
  %.neg346.i = fmul reassoc nnan nsz arcp contract afn float %i.azf, %i.azj
  %.neg346.i.neg = fmul reassoc nsz arcp contract afn float %.neg346.i, %i.azi
  %reass.add51 = fadd reassoc nsz arcp contract afn float %.neg346.i.neg, %.neg345.i.neg
  %i.azn = fadd reassoc nsz arcp contract afn float %reass.add51, %i.azm
  %i.azo = fsub reassoc nsz arcp contract afn float %i.ayx, %i.azn
  %i.azp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.azo, float 0.000000e+00)
  %i.azq = call i64 (...) @dt_get_singlebuffer_mem() #11
  %i.azr = uitofp reassoc nsz arcp contract afn i64 %i.azq to float
  %i.azs = load float, ptr %8, align 4, !tbaa !51
  %i.azt = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.azs, float 1.000000e+00)
  %i.azu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.azv = load float, ptr %i.azu, align 4, !tbaa !53
  %i.azw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.azv, float 1.000000e+00)
  %i.azx = fdiv reassoc nsz arcp contract afn float %i.azp, %i.azt
  %i.azy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.azx, float %i.azr) ; 2 uses
  %i.azz = load i32, ptr %i.axh, align 4, !tbaa !44 ; 5 uses
  %i.baa = load i32, ptr %i.azg, align 4, !tbaa !46 ; 5 uses
  %i.bab = sitofp reassoc nsz arcp contract afn i32 %i.azz to float ; 3 uses
  %i.bac = sitofp reassoc nsz arcp contract afn i32 %i.baa to float ; 3 uses
  %i.bad = fmul reassoc nsz arcp contract afn float %i.azw, %.pre-phi.i17
  %i.bae = fmul reassoc nsz arcp contract afn float %i.bad, %i.bab
  %i.baf = fmul reassoc nsz arcp contract afn float %i.bae, %i.bac ; 2 uses
  %i.bag = fcmp reassoc nsz arcp contract afn ogt float %i.baf, %i.azy
  br i1 %i.bag, label %bb.eo, label %bb.ev

bb.eo:                                            ; preds = %bb.en
  %i.bah = fdiv reassoc nsz arcp contract afn float %i.azy, %i.baf ; 4 uses
  %i.bai = icmp slt i32 %i.azz, %i.baa
  %i.baj = fcmp reassoc nsz arcp contract afn oge float %i.bah, 3.330000e-01 ; 2 uses
  %or.cond.i28 = and i1 %i.bai, %i.baj
  br i1 %or.cond.i28, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.bak = fmul reassoc nsz arcp contract afn float %i.bah, %i.bac
  %i.bal = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bak)
  %i.bam = fptosi float %i.bal to i32
  br label %bb.et

bb.eq:                                            ; preds = %bb.eo
  %i.ban = icmp sle i32 %i.baa, %i.azz
  %or.cond3.i = and i1 %i.ban, %i.baj
  br i1 %or.cond3.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.bao = fmul reassoc nsz arcp contract afn float %i.bah, %i.bab
  %i.bap = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bao)
  %i.baq = fptosi float %i.bap to i32
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  %i.bar = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bah) ; 2 uses
  %i.bas = fmul reassoc nsz arcp contract afn float %i.bar, %i.bab
  %i.bat = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bas)
  %i.bau = fptosi float %i.bat to i32
  %i.bav = fmul reassoc nsz arcp contract afn float %i.bar, %i.bac
  %i.baw = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bav)
  %i.bax = fptosi float %i.baw to i32
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %bb.ep
  %.0308.i = phi i32 [ %i.azz, %bb.ep ], [ %i.baq, %bb.er ], [ %i.bau, %bb.es ] ; 3 uses
  %.0306.i = phi i32 [ %i.bam, %bb.ep ], [ %i.baa, %bb.er ], [ %i.bax, %bb.es ] ; 3 uses
  %i.bay = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.baz = and i32 %i.bay, 25165824
  %or.cond342.not.i = icmp eq i32 %i.baz, 25165824
  br i1 %or.cond342.not.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, i32 noundef %.0308.i, i32 noundef %.0306.i) #11
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.en
  %.1309.i = phi i32 [ %i.azz, %bb.en ], [ %.0308.i, %bb.eu ], [ %.0308.i, %bb.et ] ; 3 uses
  %.1307.i = phi i32 [ %i.baa, %bb.en ], [ %.0306.i, %bb.eu ], [ %.0306.i, %bb.et ] ; 3 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !111
  %i.bbc = mul i32 %i.bbb, 3                      ; 2 uses
  %i.bbd = icmp ugt i32 %i.bbc, %.1309.i
  %i.bbe = icmp ugt i32 %i.bbc, %.1307.i
  %or.cond343.i = select i1 %i.bbd, i1 true, i1 %i.bbe
  br i1 %or.cond343.i, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.bbf = sitofp reassoc nsz arcp contract afn i32 %.1309.i to float
  %i.bbg = sitofp reassoc nsz arcp contract afn i32 %.1307.i to float
  %i.bbh = fmul reassoc nnan nsz arcp contract afn float %i.bbg, %i.bbf
  %i.bbi = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bbh)
  %i.bbj = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bbi)
  %i.bbk = fptosi float %i.bbj to i32             ; 6 uses
  %i.bbl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bbm = and i32 %i.bbl, 25165824
  %or.cond344.not.i = icmp eq i32 %i.bbm, 25165824
  br i1 %or.cond344.not.i, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.30, i32 noundef %i.bbk, i32 noundef %i.bbk) #11
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev
  %.2310.i = phi i32 [ %.1309.i, %bb.ev ], [ %i.bbk, %bb.ex ], [ %i.bbk, %bb.ew ]
  %.2.i = phi i32 [ %.1307.i, %bb.ev ], [ %i.bbk, %bb.ex ], [ %i.bbk, %bb.ew ]
  %.2.fr.i = freeze i32 %.2.i                     ; 4 uses
  %.2310.fr.i = freeze i32 %.2310.i               ; 4 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bbo = load i32, ptr %i.bbn, align 4, !tbaa !110 ; 5 uses
  %i.bbp = load i32, ptr %i.axh, align 4, !tbaa !44 ; 3 uses
  %i.bbq = icmp slt i32 %.2310.fr.i, %i.bbp
  br i1 %i.bbq, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.bbr = urem i32 %.2310.fr.i, %i.bbo
  %i.bbs = sub nuw i32 %.2310.fr.i, %i.bbr
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.3311.i = phi i32 [ %i.bbs, %bb.ez ], [ %.2310.fr.i, %bb.ey ] ; 3 uses
  %i.bbt = load i32, ptr %i.azg, align 4, !tbaa !46 ; 3 uses
  %i.bbu = icmp slt i32 %.2.fr.i, %i.bbt
  br i1 %i.bbu, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.bbv = urem i32 %.2.fr.i, %i.bbo
  %i.bbw = sub nuw i32 %.2.fr.i, %i.bbv
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.3.i = phi i32 [ %i.bbw, %bb.fb ], [ %.2.fr.i, %bb.fa ] ; 3 uses
  %i.bbx = load i32, ptr %i.bba, align 4, !tbaa !111 ; 3 uses
  %i.bby = urem i32 %i.bbx, %i.bbo
  %i.bbz = udiv i32 %i.bbx, %i.bbo
  %.not331.i = icmp eq i32 %i.bby, 0
  %i.bca = add i32 %i.bbz, 1
  %i.bcb = mul i32 %i.bca, %i.bbo
  %i.bcc = select i1 %.not331.i, i32 %i.bbx, i32 %i.bcb ; 3 uses
  %i.bcd = shl i32 %i.bcc, 1                      ; 3 uses
  %i.bce = sub nsw i32 %.3311.i, %i.bcd
  %i.bcf = call i32 @llvm.smax.i32(i32 %i.bce, i32 1) ; 3 uses
  %i.bcg = sub i32 %.3.i, %i.bcd
  %i.bch = call i32 @llvm.smax.i32(i32 %i.bcg, i32 1) ; 3 uses
  %i.bci = icmp slt i32 %.3311.i, %i.bbp
  br i1 %i.bci, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.bcj = sitofp reassoc nsz arcp contract afn i32 %i.bbp to float
  %i.bck = uitofp nneg i32 %i.bcf to float
  %i.bcl = fdiv reassoc nsz arcp contract afn float %i.bcj, %i.bck
  %i.bcm = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.bcl)
  %i.bcn = fptosi float %i.bcm to i32
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.bco = phi i32 [ %i.bcn, %bb.fd ], [ 1, %bb.fc ] ; 5 uses
  %i.bcp = icmp slt i32 %.3.i, %i.bbt
  br i1 %i.bcp, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.bcq = sitofp reassoc nsz arcp contract afn i32 %i.bbt to float
  %i.bcr = uitofp nneg i32 %i.bch to float
  %i.bcs = fdiv reassoc nsz arcp contract afn float %i.bcq, %i.bcr
  %i.bct = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.bcs)
  %i.bcu = fptosi float %i.bct to i32
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.bcv = phi i32 [ %i.bcu, %bb.ff ], [ 1, %bb.fe ] ; 5 uses
  %i.bcw = mul nsw i32 %i.bcv, %i.bco
  %i.bcx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3568), align 8, !tbaa !112
  %i.bcy = icmp eq i32 %i.bcx, 3
  %i.bcz = select i1 %i.bcy, i32 1073741824, i32 10000
  %i.bda = icmp sgt i32 %i.bcw, %i.bcz
  br i1 %i.bda, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.bdb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bdc = and i32 %i.bdb, 41943040
  %.not339.i = icmp eq i32 %i.bdc, 0
  br i1 %.not339.i, label %bb.gh, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bdd = load ptr, ptr %i.axd, align 8, !tbaa !30
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 644
  %i.bdf = load i32, ptr %i.bde, align 4, !tbaa !97
  %i.bdg = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bdf) #11
  %i.bdh = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bdi = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.31, ptr noundef %i.bdg, ptr noundef nonnull %i.bdh, ptr noundef %i.bdi, i32 noundef %i.bco, i32 noundef %i.bcv) #11
  br label %bb.gh

bb.fj:                                            ; preds = %bb.fg
  %i.bdj = sext i32 %.3311.i to i64               ; 3 uses
  %i.bdk = sext i32 %.3.i to i64                  ; 4 uses
  %i.bdl = mul nsw i64 %i.bdk, %i.bdj             ; 2 uses
  %i.bdm = sext i32 %6 to i64                     ; 3 uses
  %i.bdn = mul i64 %i.bdl, %i.bdm
  %i.bdo = call ptr @dt_alloc_aligned(i64 noundef %i.bdn) #11 ; 10 uses
  %i.bdp = icmp eq ptr %i.bdo, null
  br i1 %i.bdp, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  %i.bdq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bdr = and i32 %i.bdq, 8388608
  %.not338.i = icmp eq i32 %i.bdr, 0
  br i1 %.not338.i, label %bb.gh, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.bds = load ptr, ptr %i.axd, align 8, !tbaa !30
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 644
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !97
  %i.bdv = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bdu) #11
  %i.bdw = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bdx = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.32, ptr noundef %i.bdv, ptr noundef nonnull %i.bdw, ptr noundef %i.bdx) #11
  br label %bb.gh

bb.fm:                                            ; preds = %bb.fj
  %sext.i19 = shl i64 %i.axf, 32
  %i.bdy = ashr exact i64 %sext.i19, 32           ; 8 uses
  %i.bdz = mul i64 %i.bdl, %i.bdy
  %i.bea = call ptr @dt_alloc_aligned(i64 noundef %i.bdz) #11 ; 8 uses
  %i.beb = icmp eq ptr %i.bea, null
  br i1 %i.beb, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %i.bec = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bed = and i32 %i.bec, 8388608
  %.not337.i = icmp eq i32 %i.bed, 0
  br i1 %.not337.i, label %bb.gh, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bee = load ptr, ptr %i.axd, align 8, !tbaa !30
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 644
  %i.beg = load i32, ptr %i.bef, align 4, !tbaa !97
  %i.beh = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.beg) #11
  %i.bei = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bej = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef %i.beh, ptr noundef nonnull %i.bei, ptr noundef %i.bej) #11
  br label %bb.gh

bb.fp:                                            ; preds = %bb.fm
  %i.bek = load ptr, ptr %i.axd, align 8, !tbaa !30 ; 3 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.bel, i64 16, i1 false), !tbaa !47
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bek, i64 624
  store i32 1, ptr %i.bem, align 16, !tbaa !114
  %i.ben = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.beo = and i32 %i.ben, 41943040
  %.not332.i = icmp eq i32 %i.beo, 0
  br i1 %.not332.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bep = load ptr, ptr %1, align 16, !tbaa !113
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.34, ptr noundef nonnull %i.bek, ptr noundef %i.bep, i32 noundef -1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.35, i32 noundef %i.bco, i32 noundef %i.bcv, i32 noundef %i.bcf, i32 noundef %i.bch, i32 noundef %i.bcc) #11
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.beq = sext i32 %i.bco to i64
  %.not.i20 = icmp eq i32 %i.bco, 0
  br i1 %.not.i20, label %.preheader.i26, label %.lr.ph363.i

.lr.ph363.i:                                      ; preds = %bb.fr
  %i.ber = zext nneg i32 %i.bcf to i64
  %i.bes = sext i32 %i.bcv to i64
  %.not365.i = icmp eq i32 %i.bcv, 0
  %i.bet = zext nneg i32 %i.bch to i64            ; 4 uses
  %i.beu = sext i32 %i.bcd to i64                 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bew = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.bex = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bey = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bez = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bfa = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.bfb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bfc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bfd = sext i32 %i.axj to i64                 ; 6 uses
  %i.bfe = sext i32 %i.axm to i64                 ; 7 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bfg = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.bfh = sext i32 %i.bcc to i64                 ; 4 uses
  %i.bfi = mul nsw i64 %i.bfh, %i.bfe
  br i1 %.not365.i, label %.preheader.i26, label %.lr.ph360.i

.preheader.i26:                                   ; preds = %._crit_edge.i25, %.lr.ph363.i, %bb.fr
  %.sroa.9.0.i = phi nsz float [ 0.000000e+00, %bb.fr ], [ 0.000000e+00, %.lr.ph363.i ], [ %.sroa.9.4.i, %._crit_edge.i25 ]
  %.sroa.7.0.i = phi nsz float [ 0.000000e+00, %bb.fr ], [ 0.000000e+00, %.lr.ph363.i ], [ %.sroa.7.4.i, %._crit_edge.i25 ]
  %.sroa.5.0.i = phi nsz float [ 0.000000e+00, %bb.fr ], [ 0.000000e+00, %.lr.ph363.i ], [ %.sroa.5.4.i, %._crit_edge.i25 ]
  %.sroa.0.0390.i = phi nsz float [ 1.000000e+00, %bb.fr ], [ 1.000000e+00, %.lr.ph363.i ], [ %.sroa.0.4.i, %._crit_edge.i25 ]
  %i.bfj = load ptr, ptr %i.axd, align 8, !tbaa !30 ; 4 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 272
  store float %.sroa.0.0390.i, ptr %i.bfk, align 4, !tbaa !47
  %.sroa.5.0..sroa_idx382.i = getelementptr inbounds nuw i8, ptr %i.bfj, i64 276
  store float %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx382.i, align 4, !tbaa !47
  %.sroa.7.0..sroa_idx385.i = getelementptr inbounds nuw i8, ptr %i.bfj, i64 280
  store float %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx385.i, align 4, !tbaa !47
  %.sroa.9.0..sroa_idx388.i = getelementptr inbounds nuw i8, ptr %i.bfj, i64 284
  store float %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx388.i, align 4, !tbaa !47
  call void @free(ptr noundef %i.bdo) #11
  call void @free(ptr noundef %i.bea) #11
  %i.bfl = load ptr, ptr %i.axd, align 8, !tbaa !30
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 624
  store i32 0, ptr %i.bfm, align 16, !tbaa !114
  br label %_default_process_tiling_ptp.exit

.lr.ph360.i:                                      ; preds = %.lr.ph363.i, %._crit_edge.i25
  %.sroa.9.1.i = phi nsz float [ %.sroa.9.4.i, %._crit_edge.i25 ], [ 0.000000e+00, %.lr.ph363.i ]
  %.sroa.7.1.i = phi nsz float [ %.sroa.7.4.i, %._crit_edge.i25 ], [ 0.000000e+00, %.lr.ph363.i ]
  %.sroa.5.1.i = phi nsz float [ %.sroa.5.4.i, %._crit_edge.i25 ], [ 0.000000e+00, %.lr.ph363.i ]
  %.sroa.0.1.i21 = phi nsz float [ %.sroa.0.4.i, %._crit_edge.i25 ], [ 1.000000e+00, %.lr.ph363.i ]
  %.0300361.i = phi i64 [ %i.bgd, %._crit_edge.i25 ], [ 0, %.lr.ph363.i ] ; 5 uses
  %i.bfn = mul i64 %.0300361.i, %i.ber            ; 5 uses
  %i.bfo = add i64 %i.bfn, %i.bdj
  %i.bfp = load i32, ptr %i.axh, align 4, !tbaa !44
  %i.bfq = sext i32 %i.bfp to i64                 ; 2 uses
  %i.bfr = icmp ugt i64 %i.bfo, %i.bfq
  %i.bfs = sub i64 %i.bfq, %i.bfn
  %i.bft = select i1 %i.bfr, i64 %i.bfs, i64 %i.bdj ; 9 uses
  %i.bfu = icmp ule i64 %i.bft, %i.beu
  %i.bfv = icmp ne i64 %.0300361.i, 0             ; 3 uses
  %or.cond5.i = and i1 %i.bfv, %i.bfu
  %i.bfw = trunc i64 %i.bfn to i32
  %i.bfx = trunc i64 %i.bft to i32                ; 2 uses
  %i.bfy = mul i64 %i.bfn, %i.bdm
  %i.bfz = mul i64 %i.bft, %i.bdm                 ; 10 uses
  %invariant.gep.i = getelementptr i8, ptr %2, i64 %i.bfy
  %.sroa.034.0.i = select i1 %i.bfv, i64 %i.bfh, i64 0 ; 6 uses
  %i.bga = add i64 %i.bfn, %i.bfh
  %invariant.op.i = mul i64 %i.bga, %i.bdy
  %.sroa.0.0.i22 = sub i64 %i.bft, %.sroa.034.0.i
  %i.bgb = mul i64 %.sroa.0.0.i22, %i.bdy         ; 5 uses
  %.reass.i = select i1 %i.bfv, i64 %invariant.op.i, i64 0
  %invariant.gep = getelementptr i8, ptr %3, i64 %.reass.i
  %i.bgc = insertelement <2 x i32> poison, i32 %i.bfw, i64 0
  br label %bb.fs

._crit_edge.i25:                                  ; preds = %.loopexit.i
  %i.bgd = add nuw i64 %.0300361.i, 1             ; 2 uses
  %exitcond375.not.i = icmp eq i64 %i.bgd, %i.beq
  br i1 %exitcond375.not.i, label %.preheader.i26, label %.lr.ph360.i

bb.fs:                                            ; preds = %.loopexit.i, %.lr.ph360.i
  %.sroa.9.2.i = phi nsz float [ %.sroa.9.1.i, %.lr.ph360.i ], [ %.sroa.9.4.i, %.loopexit.i ] ; 2 uses
  %.sroa.7.2.i = phi nsz float [ %.sroa.7.1.i, %.lr.ph360.i ], [ %.sroa.7.4.i, %.loopexit.i ] ; 2 uses
  %.sroa.5.2.i = phi nsz float [ %.sroa.5.1.i, %.lr.ph360.i ], [ %.sroa.5.4.i, %.loopexit.i ] ; 2 uses
  %.sroa.0.2.i = phi nsz float [ %.sroa.0.1.i21, %.lr.ph360.i ], [ %.sroa.0.4.i, %.loopexit.i ] ; 2 uses
  %indvars.iv372.i = phi i64 [ 0, %.lr.ph360.i ], [ %indvars.iv.next373.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.bdk, %.lr.ph360.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.0299359.i = phi i64 [ 0, %.lr.ph360.i ], [ %i.bmd, %.loopexit.i ] ; 7 uses
  %i.bge = mul i64 %.0299359.i, %i.bet            ; 2 uses
  %i.bgf = mul i64 %.0299359.i, %i.bet            ; 5 uses
  %i.bgg = add i64 %i.bgf, %i.bdk                 ; 2 uses
  %i.bgh = load i32, ptr %i.azg, align 4, !tbaa !46
  %i.bgi = sext i32 %i.bgh to i64                 ; 4 uses
  %i.bgj = icmp ugt i64 %i.bgg, %i.bgi
  %i.bgk = sub i64 %i.bgi, %i.bgf
  %i.bgl = select i1 %i.bgj, i64 %i.bgk, i64 %i.bdk ; 4 uses
  %i.bgm = icmp ule i64 %i.bgl, %i.beu
  %i.bgn = icmp ne i64 %.0299359.i, 0
  %i.bgo = and i1 %i.bgn, %i.bgm
  %i.bgp = select i1 %or.cond5.i, i1 true, i1 %i.bgo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.bgq = trunc i64 %i.bgf to i32
  %i.bgr = load <2 x i32>, ptr %4, align 4, !tbaa !55
  %i.bgs = insertelement <2 x i32> %i.bgc, i32 %i.bgq, i64 1 ; 2 uses
  %i.bgt = add <2 x i32> %i.bgr, %i.bgs
  store <2 x i32> %i.bgt, ptr %9, align 8, !tbaa !55
  store i32 %i.bfx, ptr %i.bev, align 8, !tbaa !44
  %i.bgu = trunc i64 %i.bgl to i32                ; 2 uses
  store i32 %i.bgu, ptr %i.bew, align 4, !tbaa !46
  %i.bgv = load float, ptr %i.bey, align 4, !tbaa !45
  store float %i.bgv, ptr %i.bex, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.bgw = load <2 x i32>, ptr %5, align 4, !tbaa !55
  %i.bgx = add <2 x i32> %i.bgw, %i.bgs
  store <2 x i32> %i.bgx, ptr %10, align 8, !tbaa !55
  store i32 %i.bfx, ptr %i.bez, align 8, !tbaa !44
  store i32 %i.bgu, ptr %i.bfa, align 4, !tbaa !46
  %i.bgy = load float, ptr %i.bfc, align 4, !tbaa !45
  store float %i.bgy, ptr %i.bfb, align 8, !tbaa !45
  %i.bgz = mul i64 %i.bgf, %i.bfd
  %i.bha = mul i64 %i.bgf, %i.bfe
  %i.bhb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bhc = and i32 %i.bhb, 8388608
  %.not333.i = icmp eq i32 %i.bhc, 0
  br i1 %.not333.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.bhd = select i1 %i.bgp, ptr @.str.36, ptr @.str.37
  %i.bhe = load ptr, ptr %i.axd, align 8, !tbaa !30
  %i.bhf = load ptr, ptr %1, align 16, !tbaa !113
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull %i.bhd, ptr noundef %i.bhe, ptr noundef %i.bhf, i32 noundef -1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull @.str.17, i64 noundef %.0300361.i, i64 noundef %.0299359.i) #11
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  br i1 %i.bgp, label %.loopexit.i, label %.preheader350.i

.preheader350.i:                                  ; preds = %bb.fu
  %.not366.i = icmp eq i64 %i.bgl, 0
  br i1 %.not366.i, label %.preheader349.i, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader350.i
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.bgz ; 5 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.bgg, i64 %i.bgi) ; 2 uses
  %i.bhg = sub i64 %umin, %i.bge                  ; 2 uses
  %xtraiter133 = and i64 %i.bhg, 3                ; 3 uses
  %i.bhh = sub i64 %i.bge, %umin
  %i.bhi = icmp ugt i64 %i.bhh, -4
  br i1 %i.bhi, label %.epil.preheader132, label %.lr.ph.i23.new

.lr.ph.i23.new:                                   ; preds = %.lr.ph.i23
  %unroll_iter137 = and i64 %i.bhg, -4
  br label %bb.fw

.preheader349.i.loopexit.unr-lcssa:               ; preds = %bb.fw
  %lcmp.mod135.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod135.not, label %.preheader349.i, label %.epil.preheader132

.epil.preheader132:                               ; preds = %.preheader349.i.loopexit.unr-lcssa, %.lr.ph.i23
  %.0297352.i.epil.init = phi i64 [ 0, %.lr.ph.i23 ], [ %i.bin, %.preheader349.i.loopexit.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter133, 0
  call void @llvm.assume(i1 %lcmp.mod136)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fv, %.epil.preheader132
  %.0297352.i.epil = phi i64 [ %.0297352.i.epil.init, %.epil.preheader132 ], [ %i.bhn, %bb.fv ] ; 3 uses
  %epil.iter134 = phi i64 [ 0, %.epil.preheader132 ], [ %epil.iter134.next, %bb.fv ]
  %i.bhj = mul i64 %.0297352.i.epil, %i.bfz
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %i.bhj
  %i.bhl = mul i64 %.0297352.i.epil, %i.bfd
  %i.bhm = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.bhl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhk, ptr align 1 %i.bhm, i64 %i.bfz, i1 false)
  %i.bhn = add nuw i64 %.0297352.i.epil, 1
  %epil.iter134.next = add i64 %epil.iter134, 1   ; 2 uses
  %epil.iter134.cmp.not = icmp eq i64 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %.preheader349.i, label %bb.fv, !llvm.loop !128

.preheader349.i:                                  ; preds = %.preheader349.i.loopexit.unr-lcssa, %bb.fv, %.preheader350.i
  %i.bho = load ptr, ptr %i.axd, align 8, !tbaa !30
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bhp, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa !47
  call void @dt_dev_prepare_piece_cfa(ptr noundef %1, ptr noundef nonnull %9) #11
  %i.bhq = load ptr, ptr %i.bff, align 8, !tbaa !124
  call void %i.bhq(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.bdo, ptr noundef nonnull %i.bea, ptr noundef nonnull %9, ptr noundef nonnull %10) #11, !inline_history !127
  %i.bhr = sub i64 0, %.0299359.i
  %.not335.i = icmp eq i64 %.0300361.i, %i.bhr
  %i.bhs = load ptr, ptr %i.axd, align 8, !tbaa !30 ; 7 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhs, i64 272
  %.sroa.0.0.copyload379.i = load float, ptr %i.bht, align 4, !tbaa !47 ; 4 uses
  br i1 %.not335.i, label %.split.us.i, label %.split.preheader.i

bb.fw:                                            ; preds = %bb.fw, %.lr.ph.i23.new
  %.0297352.i = phi i64 [ 0, %.lr.ph.i23.new ], [ %i.bin, %bb.fw ] ; 6 uses
  %niter138 = phi i64 [ 0, %.lr.ph.i23.new ], [ %niter138.next.3, %bb.fw ]
  %i.bhu = mul i64 %.0297352.i, %i.bfz
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %i.bhu
  %i.bhw = mul i64 %.0297352.i, %i.bfd
  %i.bhx = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.bhw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhv, ptr align 1 %i.bhx, i64 %i.bfz, i1 false)
  %i.bhy = or disjoint i64 %.0297352.i, 1         ; 2 uses
  %i.bhz = mul i64 %i.bhy, %i.bfz
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %i.bhz
  %i.bib = mul i64 %i.bhy, %i.bfd
  %i.bic = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.bib
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bia, ptr align 1 %i.bic, i64 %i.bfz, i1 false)
  %i.bid = or disjoint i64 %.0297352.i, 2         ; 2 uses
  %i.bie = mul i64 %i.bid, %i.bfz
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %i.bie
  %i.big = mul i64 %i.bid, %i.bfd
  %i.bih = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.big
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bif, ptr align 1 %i.bih, i64 %i.bfz, i1 false)
  %i.bii = or disjoint i64 %.0297352.i, 3         ; 2 uses
  %i.bij = mul i64 %i.bii, %i.bfz
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %i.bij
  %i.bil = mul i64 %i.bii, %i.bfd
  %i.bim = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.bil
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bik, ptr align 1 %i.bim, i64 %i.bfz, i1 false)
  %i.bin = add nuw i64 %.0297352.i, 4             ; 2 uses
  %niter138.next.3 = add i64 %niter138, 4         ; 2 uses
  %niter138.ncmp.3.not = icmp eq i64 %niter138.next.3, %unroll_iter137
  br i1 %niter138.ncmp.3.not, label %.preheader349.i.loopexit.unr-lcssa, label %bb.fw

.split.preheader.i:                               ; preds = %.preheader349.i
  %i.bio = fsub reassoc nsz arcp contract afn float %.sroa.0.2.i, %.sroa.0.0.copyload379.i
  %i.bip = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bio)
  %i.biq = fcmp reassoc nsz arcp contract afn ogt float %i.bip, f0x358637BD
  br i1 %i.biq, label %bb.fx, label %.split.1.i

.split.us.i:                                      ; preds = %.preheader349.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bhs, i64 276
  %.sroa.5.0.copyload381.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !47
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bhs, i64 280
  %.sroa.7.0.copyload384.i = load float, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !47
  br label %.split356.us.sink.split.i

.split356.us.sink.split.i:                        ; preds = %bb.ge, %.split.us.i
  %.pre400.sink.i = phi ptr [ %.pre400.i, %bb.ge ], [ %i.bhs, %.split.us.i ]
  %.sroa.7.3.ph.i = phi float [ %i.bjx, %bb.ge ], [ %.sroa.7.0.copyload384.i, %.split.us.i ]
  %.sroa.5.3.ph.i = phi float [ %i.bjk, %bb.ge ], [ %.sroa.5.0.copyload381.i, %.split.us.i ]
  %.sroa.0.3.ph.i = phi float [ %i.bix, %bb.ge ], [ %.sroa.0.0.copyload379.i, %.split.us.i ]
  %.phi.trans.insert402.i = getelementptr inbounds nuw i8, ptr %.pre400.sink.i, i64 284
  %.pre403.i = load float, ptr %.phi.trans.insert402.i, align 4, !tbaa !47
  br label %.split356.us.i

.split356.us.i:                                   ; preds = %bb.gd, %.split.3.i, %.split356.us.sink.split.i
  %.sroa.9.3.i = phi nsz float [ %i.bka, %bb.gd ], [ %i.bka, %.split.3.i ], [ %.pre403.i, %.split356.us.sink.split.i ] ; 3 uses
  %.sroa.7.3.i = phi nsz float [ %i.bjx, %bb.gd ], [ %i.bjx, %.split.3.i ], [ %.sroa.7.3.ph.i, %.split356.us.sink.split.i ] ; 3 uses
  %.sroa.5.3.i = phi nsz float [ %i.bjk, %bb.gd ], [ %i.bjk, %.split.3.i ], [ %.sroa.5.3.ph.i, %.split356.us.sink.split.i ] ; 3 uses
  %.sroa.0.3.i = phi nsz float [ %i.bix, %bb.gd ], [ %i.bix, %.split.3.i ], [ %.sroa.0.3.ph.i, %.split356.us.sink.split.i ] ; 3 uses
  %.not334.i = icmp eq i64 %.0299359.i, 0         ; 2 uses
  %.sroa.636.0.i = select i1 %.not334.i, i64 0, i64 %i.bfh ; 7 uses
  %.not367.i = icmp eq i64 %i.bgl, %.sroa.636.0.i
  br i1 %.not367.i, label %.loopexit.i, label %.lr.ph358.i

bb.fx:                                            ; preds = %.split.preheader.i
  %i.bir = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bis = and i32 %i.bir, 8388608
  %.not336.i = icmp eq i32 %i.bis, 0
  br i1 %.not336.i, label %.split.1.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bhs, i64 644
  %i.biu = load i32, ptr %i.bit, align 4, !tbaa !97
  %i.biv = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.biu) #11
  %i.biw = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.38, ptr noundef %i.biv, i32 noundef 0, ptr noundef nonnull %i.bfg, ptr noundef %i.biw) #11
  %.pre.i27 = load ptr, ptr %i.axd, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i27, i64 272
  %.pre391.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !47
  br label %.split.1.i

.split.1.i:                                       ; preds = %bb.fy, %bb.fx, %.split.preheader.i
  %i.bix = phi float [ %.sroa.0.0.copyload379.i, %bb.fx ], [ %.pre391.i, %bb.fy ], [ %.sroa.0.0.copyload379.i, %.split.preheader.i ] ; 3 uses
  %i.biy = phi ptr [ %i.bhs, %bb.fx ], [ %.pre.i27, %bb.fy ], [ %i.bhs, %.split.preheader.i ] ; 4 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biy, i64 276
  %i.bja = load float, ptr %i.biz, align 4, !tbaa !47 ; 3 uses
  %i.bjb = fsub reassoc nsz arcp contract afn float %.sroa.5.2.i, %i.bja
  %i.bjc = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bjb)
  %i.bjd = fcmp reassoc nsz arcp contract afn ogt float %i.bjc, f0x358637BD
  br i1 %i.bjd, label %bb.fz, label %.split.2.i

bb.fz:                                            ; preds = %.split.1.i
  %i.bje = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bjf = and i32 %i.bje, 8388608
  %.not336.1.i = icmp eq i32 %i.bjf, 0
  br i1 %.not336.1.i, label %.split.2.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.biy, i64 644
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !97
  %i.bji = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bjh) #11
  %i.bjj = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.38, ptr noundef %i.bji, i32 noundef 1, ptr noundef nonnull %i.bfg, ptr noundef %i.bjj) #11
  %.pre392.i = load ptr, ptr %i.axd, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert394.i = getelementptr inbounds nuw i8, ptr %.pre392.i, i64 276
  %.pre395.i = load float, ptr %.phi.trans.insert394.i, align 4, !tbaa !47
  br label %.split.2.i

.split.2.i:                                       ; preds = %bb.ga, %bb.fz, %.split.1.i
  %i.bjk = phi float [ %.pre395.i, %bb.ga ], [ %i.bja, %bb.fz ], [ %i.bja, %.split.1.i ] ; 3 uses
  %i.bjl = phi ptr [ %.pre392.i, %bb.ga ], [ %i.biy, %bb.fz ], [ %i.biy, %.split.1.i ] ; 4 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 280
  %i.bjn = load float, ptr %i.bjm, align 4, !tbaa !47 ; 3 uses
  %i.bjo = fsub reassoc nsz arcp contract afn float %.sroa.7.2.i, %i.bjn
  %i.bjp = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bjo)
  %i.bjq = fcmp reassoc nsz arcp contract afn ogt float %i.bjp, f0x358637BD
  br i1 %i.bjq, label %bb.gb, label %.split.3.i

bb.gb:                                            ; preds = %.split.2.i
  %i.bjr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bjs = and i32 %i.bjr, 8388608
  %.not336.2.i = icmp eq i32 %i.bjs, 0
  br i1 %.not336.2.i, label %.split.3.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjl, i64 644
  %i.bju = load i32, ptr %i.bjt, align 4, !tbaa !97
  %i.bjv = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.bju) #11
  %i.bjw = call ptr @dt_iop_get_instance_id(ptr noundef nonnull %0) #11
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.38, ptr noundef %i.bjv, i32 noundef 2, ptr noundef nonnull %i.bfg, ptr noundef %i.bjw) #11
  %.pre396.i = load ptr, ptr %i.axd, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert398.i = getelementptr inbounds nuw i8, ptr %.pre396.i, i64 280
  %.pre399.i = load float, ptr %.phi.trans.insert398.i, align 4, !tbaa !47
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.gc, %bb.gb, %.split.2.i
  %i.bjx = phi float [ %.pre399.i, %bb.gc ], [ %i.bjn, %bb.gb ], [ %i.bjn, %.split.2.i ] ; 3 uses
  %i.bjy = phi ptr [ %.pre396.i, %bb.gc ], [ %i.bjl, %bb.gb ], [ %i.bjl, %.split.2.i ] ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 284
  %i.bka = load float, ptr %i.bjz, align 4, !tbaa !47 ; 3 uses
  %i.bkb = fsub reassoc nsz arcp contract afn float %.sroa.9.2.i, %i.bka
  %i.bkc = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bkb)
  %i.bkd = fcmp reassoc nsz arcp contract afn ogt float %i.bkc, f0x358637BD
  br i1 %i.bkd, label %bb.gd, label %.split356.us.i

bb.gd:                                            ; preds = %.split.3.i
  %i.bke = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !56
  %i.bkf = and i32 %i.bke, 8388608
  %.not336.3.i = icmp eq i32 %i.bkf, 0
  br i1 %.not336.3.i, label %.split356.us.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bjy, i64 644
  %i.bkh = load i32, ptr %i.bkg, align 4, !tbaa !97
end_hunk_0
