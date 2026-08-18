inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  store i64 %i.gyi, ptr %.5496.i, align 8, !tbaa !79
  %i.gyj = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store ptr %i.gas, ptr %i.gyj, align 8, !tbaa !81
  store ptr %.113185, ptr %i.g, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit

bb.apz:                                           ; preds = %bb.apv
  br i1 %.not3775, label %bb.aqb, label %bb.aqa, !prof !24

bb.aqa:                                           ; preds = %bb.apz
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.gyk = select i1 %i.gax, i64 -4503599627370496, i64 9218868437227405312
  %i.gyl = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.gyk, ptr %i.gyl, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit

bb.aqb:                                           ; preds = %bb.apz
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread

bb.aqc:                                           ; preds = %bb.apu, %bb.apf
  %.73181 = phi ptr [ %.113185, %bb.apu ], [ %.63180, %bb.apf ] ; 7 uses
  %storemerge.in.i = phi i64 [ %.1598.i, %bb.apu ], [ %.neg671.i, %bb.apf ] ; 3 uses
  %.22596.i = phi i64 [ %.21595.i, %bb.apu ], [ %.19593.i, %bb.apf ] ; 7 uses
  %.23.i228 = phi ptr [ %.22.i233, %bb.apu ], [ %.20.i227, %bb.apf ]
  %.3569.i = phi ptr [ %.2568.i, %bb.apu ], [ %.63180, %bb.apf ]
  %.3565.i = phi ptr [ %.2564.i, %bb.apu ], [ null, %bb.apf ] ; 2 uses
  %storemerge.i229 = trunc i64 %storemerge.in.i to i32 ; 8 uses
  store i32 %storemerge.i229, ptr %i.d, align 4, !tbaa !3
  %i.gym = icmp ult i64 %.22596.i, 9007199254740992
  %i.gyn = add i32 %storemerge.i229, 22
  %i.gyo = icmp ult i32 %i.gyn, 45
  %or.cond9.i = and i1 %i.gym, %i.gyo
  br i1 %or.cond9.i, label %bb.aqd, label %bb.aqg

bb.aqd:                                           ; preds = %bb.aqc
  %i.gyp = uitofp nneg i64 %.22596.i to double    ; 2 uses
  %i.gyq = icmp slt i32 %storemerge.i229, 0
  br i1 %i.gyq, label %bb.aqe, label %bb.aqf

bb.aqe:                                           ; preds = %bb.aqd
  %i.gyr = sub nsw i64 0, %storemerge.in.i
  %i.gys = and i64 %i.gyr, 4294967295
  %i.gyt = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_yyjsonL15f64_pow10_tableE, i64 %i.gys
  %i.gyu = load double, ptr %i.gyt, align 8, !tbaa !172
  %i.gyv = fdiv double %i.gyp, %i.gyu
  br label %.split3465

bb.aqf:                                           ; preds = %bb.aqd
  %i.gyw = and i64 %storemerge.in.i, 2147483647
  %i.gyx = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_yyjsonL15f64_pow10_tableE, i64 %i.gyw
  %i.gyy = load double, ptr %i.gyx, align 8, !tbaa !172
  %i.gyz = fmul double %i.gyy, %i.gyp
  br label %.split3465

.split3465:                                       ; preds = %bb.aqf, %bb.aqe
  %.0603.i = phi double [ %i.gyv, %bb.aqe ], [ %i.gyz, %bb.aqf ] ; 2 uses
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.gza = fneg double %.0603.i
  %i.gzb = select i1 %i.gax, double %i.gza, double %.0603.i
  %i.gzc = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store double %i.gzb, ptr %i.gzc, align 8, !tbaa !81
  store ptr %.73181, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.preheader4140

bb.aqg:                                           ; preds = %bb.aqc
  %i.gzd = icmp eq ptr %.3565.i, null             ; 2 uses
  %i.gze = add i32 %storemerge.i229, 306
  %i.gzf = icmp ult i32 %i.gze, 594
  %i.gzg = and i1 %i.gzf, %i.gzd
  br i1 %i.gzg, label %bb.aqh, label %..critedge689.i_crit_edge, !prof !24

..critedge689.i_crit_edge:                        ; preds = %bb.aqg
  %.pre6899 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22596.i, i1 true) ; 3 uses
  %.pre6901 = shl i64 %.22596.i, %.pre6899
  %.pre6903 = shl i32 %storemerge.i229, 1
  %.pre6905 = mul nsw i32 %storemerge.i229, 217706
  %.pre6907 = add nsw i32 %.pre6905, -4128768
  %.pre6909 = ashr i32 %.pre6907, 16
  %.pre6911 = zext i64 %.pre6901 to i128
  %.pre6913 = trunc nuw nsw i64 %.pre6899 to i32
  br label %.critedge689.i

bb.aqh:                                           ; preds = %bb.aqg
  %i.gzh = shl nsw i32 %storemerge.i229, 1        ; 2 uses
  %i.gzi = sext i32 %i.gzh to i64
  %i.gzj = getelementptr [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.gzi ; 2 uses
  %i.gzk = getelementptr i8, ptr %i.gzj, i64 5488
  %i.gzl = load i64, ptr %i.gzk, align 16, !tbaa !91
  %i.gzm = mul nsw i32 %storemerge.i229, 217706
  %i.gzn = add nsw i32 %i.gzm, -4128768
  %i.gzo = ashr i32 %i.gzn, 16                    ; 2 uses
  %i.gzp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22596.i, i1 true) ; 3 uses
  %i.gzq = trunc nuw nsw i64 %i.gzp to i32        ; 2 uses
  %i.gzr = shl i64 %.22596.i, %i.gzp
  %i.gzs = zext i64 %i.gzr to i128                ; 3 uses
  %i.gzt = zext i64 %i.gzl to i128
  %i.gzu = mul nuw i128 %i.gzt, %i.gzs            ; 2 uses
  %i.gzv = lshr i128 %i.gzu, 64
  %i.gzw = trunc nuw i128 %i.gzv to i64           ; 3 uses
  %i.gzx = trunc i128 %i.gzu to i64               ; 2 uses
  %i.gzy = and i64 %i.gzw, 511
  %i.gzz = add nsw i64 %i.gzy, -1
  %i.haa = icmp ult i64 %i.gzz, 510
  br i1 %i.haa, label %.split3466, label %bb.aqi

bb.aqi:                                           ; preds = %bb.aqh
  %i.hab = getelementptr i8, ptr %i.gzj, i64 5496
  %i.hac = load i64, ptr %i.hab, align 8, !tbaa !91
  %i.had = zext i64 %i.hac to i128
  %i.hae = mul nuw i128 %i.had, %i.gzs
  %i.haf = lshr i128 %i.hae, 64
  %i.hag = trunc nuw i128 %i.haf to i64
  %i.hah = add i64 %i.hag, %i.gzx                 ; 2 uses
  %i.hai = add i64 %i.hah, -1
  %i.haj = icmp ult i64 %i.hai, -2
  br i1 %i.haj, label %bb.aqj, label %.critedge689.i

bb.aqj:                                           ; preds = %bb.aqi
  %i.hak = icmp ult i64 %i.hah, %i.gzx
  %i.hal = zext i1 %i.hak to i64
  %i.ham = add nuw i64 %i.hal, %i.gzw
  br label %.split3466

.split3466:                                       ; preds = %bb.aqj, %bb.aqh
  %.03134 = phi i64 [ %i.gzw, %bb.aqh ], [ %i.ham, %bb.aqj ] ; 2 uses
  %i.han = icmp sgt i64 %.03134, -1               ; 2 uses
  %.neg674.i = sext i1 %i.han to i32
  %i.hao = zext i1 %i.han to i64
  %i.hap = shl i64 %.03134, %i.hao                ; 2 uses
  %i.haq = and i64 %i.hap, 1024
  %i.har = add i64 %i.haq, %i.hap                 ; 2 uses
  %i.has = icmp ult i64 %i.har, 1024
  %spec.select3591.v = select i1 %i.has, i32 65, i32 64
  %i.hat = lshr i64 %i.har, 11
  %reass.sub5882 = sub nsw i32 %i.gzo, %i.gzq
  %i.hau = add nsw i32 %reass.sub5882, 1086
  %spec.select3591 = add nsw i32 %i.hau, %.neg674.i
  %i.hav = add nsw i32 %spec.select3591, %spec.select3591.v
  %i.haw = zext nneg i32 %i.hav to i64
  %i.hax = shl nuw nsw i64 %i.haw, 52
  %i.hay = and i64 %i.hat, 4503599627370495
  %i.haz = or disjoint i64 %i.hax, %i.hay
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.hba = select i1 %i.gax, i64 -9223372036854775808, i64 0
  %i.hbb = or disjoint i64 %i.haz, %i.hba
  %i.hbc = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.hbb, ptr %i.hbc, align 8, !tbaa !81
  store ptr %.73181, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.preheader4140

.critedge689.i:                                   ; preds = %..critedge689.i_crit_edge, %bb.aqi
  %.pre-phi6914 = phi i32 [ %.pre6913, %..critedge689.i_crit_edge ], [ %i.gzq, %bb.aqi ]
  %.pre-phi6912 = phi i128 [ %.pre6911, %..critedge689.i_crit_edge ], [ %i.gzs, %bb.aqi ]
  %.pre-phi6910 = phi i32 [ %.pre6909, %..critedge689.i_crit_edge ], [ %i.gzo, %bb.aqi ]
  %.pre-phi6904 = phi i32 [ %.pre6903, %..critedge689.i_crit_edge ], [ %i.gzh, %bb.aqi ] ; 2 uses
  %.pre-phi6900 = phi i64 [ %.pre6899, %..critedge689.i_crit_edge ], [ %i.gzp, %bb.aqi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.hbd = select i1 %i.gzd, i64 0, i64 4
  %i.hbe = shl i64 %i.hbd, %.pre-phi6900          ; 2 uses
  %i.hbf = add i32 %.pre-phi6904, 686
  %i.hbg = sext i32 %i.hbf to i64
  %i.hbh = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.hbg
  %i.hbi = load i64, ptr %i.hbh, align 16, !tbaa !91
  %i.hbj = add i32 %.pre-phi6904, 687
  %i.hbk = sext i32 %i.hbj to i64
  %i.hbl = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.hbk
  %i.hbm = load i64, ptr %i.hbl, align 8, !tbaa !91
  %i.hbn = lshr i64 %i.hbm, 63
  %i.hbo = add i64 %i.hbn, %i.hbi
  %i.hbp = zext i64 %i.hbo to i128
  %i.hbq = mul nuw i128 %.pre-phi6912, %i.hbp     ; 2 uses
  %i.hbr = lshr i128 %i.hbq, 64
  %i.hbs = trunc nuw i128 %i.hbr to i64
  %i.hbt = trunc i128 %i.hbq to i64
  %i.hbu = lshr i64 %i.hbt, 63
  %i.hbv = add nuw i64 %i.hbu, %i.hbs             ; 2 uses
  %.not677.i = icmp eq i64 %i.hbe, 0
  %i.hbw = select i1 %.not677.i, i64 8, i64 9
  %i.hbx = add i64 %i.hbw, %i.hbe
  %i.hby = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hbv, i1 true) ; 3 uses
  %i.hbz = trunc nuw nsw i64 %i.hby to i32
  %i.hca = shl i64 %i.hbv, %i.hby                 ; 3 uses
  %i.hcb = add nsw i32 %.pre-phi6910, 64
  %i.hcc = add nuw nsw i32 %.pre-phi6914, %i.hbz
  %i.hcd = sub nsw i32 %i.hcb, %i.hcc             ; 7 uses
  %i.hce = shl i64 %i.hbx, %i.hby                 ; 3 uses
  %i.hcf = icmp sgt i32 %i.hcd, -1086
  br i1 %i.hcf, label %.thread3430, label %bb.aqk, !prof !24

bb.aqk:                                           ; preds = %.critedge689.i
  %i.hcg = icmp samesign ult i32 %i.hcd, -1137
  br i1 %i.hcg, label %.thread3427, label %bb.aql

bb.aql:                                           ; preds = %bb.aqk
  %i.hch = sub nuw nsw i32 -1074, %i.hcd          ; 2 uses
  %i.hci = icmp samesign ult i32 %i.hcd, -1134
  br i1 %i.hci, label %.thread3427, label %.thread3430, !prof !220

.thread3427:                                      ; preds = %bb.aqk, %bb.aql
  %.0606.i3429 = phi i32 [ %i.hch, %bb.aql ], [ 64, %bb.aqk ]
  %i.hcj = add nsw i32 %.0606.i3429, -60          ; 2 uses
  %i.hck = zext nneg i32 %i.hcj to i64            ; 2 uses
  %i.hcl = lshr i64 %i.hca, %i.hck
  %i.hcm = add nsw i32 %i.hcj, %i.hcd
  %i.hcn = lshr i64 %i.hce, %i.hck
  %i.hco = add nuw i64 %i.hcn, 9
  br label %.thread3430

.thread3430:                                      ; preds = %.critedge689.i, %.thread3427, %bb.aql
  %.0608.i = phi i64 [ %i.hco, %.thread3427 ], [ %i.hce, %bb.aql ], [ %i.hce, %.critedge689.i ] ; 2 uses
  %.0605.i = phi i32 [ 60, %.thread3427 ], [ %i.hch, %bb.aql ], [ 11, %.critedge689.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.hcm, %.thread3427 ], [ %i.hcd, %bb.aql ], [ %i.hcd, %.critedge689.i ]
  %.sroa.029.0.i = phi i64 [ %i.hcl, %.thread3427 ], [ %i.hca, %bb.aql ], [ %i.hca, %.critedge689.i ] ; 2 uses
  %i.hcp = zext nneg i32 %.0605.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.hcp
  %i.hcq = xor i64 %notmask.i, -1
  %i.hcr = and i64 %.sroa.029.0.i, %i.hcq
  %i.hcs = shl nuw nsw i64 %i.hcr, 3              ; 2 uses
  %i.hct = add nsw i32 %.0605.i, -1
  %i.hcu = zext nneg i32 %i.hct to i64
  %i.hcv = shl nuw nsw i64 8, %i.hcu              ; 2 uses
  %i.hcw = lshr i64 %.sroa.029.0.i, %i.hcp
  %i.hcx = add i64 %i.hcv, %.0608.i
  %i.hcy = icmp uge i64 %i.hcs, %i.hcx            ; 2 uses
  %i.hcz = zext i1 %i.hcy to i64
  %i.hda = add nuw nsw i64 %i.hcw, %i.hcz         ; 3 uses
  %i.hdb = icmp eq i64 %i.hda, 0
  br i1 %i.hdb, label %bb.aqx, label %bb.aqm, !prof !7

bb.aqm:                                           ; preds = %.thread3430
  %i.hdc = add nsw i32 %.sroa.19.0.in.i, %.0605.i
  %i.hdd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.hda, i1 true) ; 2 uses
  %i.hde = trunc nuw nsw i64 %i.hdd to i32
  %i.hdf = shl i64 %i.hda, %i.hdd
  %i.hdg = lshr i64 %i.hdf, 11                    ; 2 uses
  %i.hdh = sub nsw i32 %i.hdc, %i.hde             ; 5 uses
  %i.hdi = icmp sgt i32 %i.hdh, 960
  br i1 %i.hdi, label %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1211, label %bb.aqn, !prof !7

bb.aqn:                                           ; preds = %bb.aqm
  %i.hdj = icmp sgt i32 %i.hdh, -1086
  br i1 %i.hdj, label %bb.aqo, label %bb.aqp, !prof !24

bb.aqo:                                           ; preds = %bb.aqn
  %i.hdk = add nsw i32 %i.hdh, 1086
  %i.hdl = zext nneg i32 %i.hdk to i64
  %i.hdm = shl nuw nsw i64 %i.hdl, 52
  %i.hdn = and i64 %i.hdg, 4503599627370495
  %i.hdo = or disjoint i64 %i.hdm, %i.hdn
  br label %bb.aqx

bb.aqp:                                           ; preds = %bb.aqn
  %i.hdp = icmp samesign ugt i32 %i.hdh, -1138
  br i1 %i.hdp, label %bb.aqq, label %bb.aqx, !prof !24

bb.aqq:                                           ; preds = %bb.aqp
  %i.hdq = sub nuw nsw i32 -1085, %i.hdh
  %i.hdr = zext nneg i32 %i.hdq to i64
  %i.hds = lshr i64 %i.hdg, %i.hdr
  br label %bb.aqx

_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1211: ; preds = %bb.aqm
  br i1 %.not3778, label %bb.aqu, label %bb.aqr, !prof !24

bb.aqr:                                           ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1211
  %i.hdt = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not682.i = icmp eq ptr %i.hdt, null
  br i1 %.not682.i, label %bb.aqt, label %bb.aqs

bb.aqs:                                           ; preds = %bb.aqr
  store i8 0, ptr %i.hdt, align 1, !tbaa !81
  br label %bb.aqt

bb.aqt:                                           ; preds = %bb.aqs, %bb.aqr
  %i.hdu = ptrtoint ptr %.73181 to i64
  %i.hdv = ptrtoint ptr %i.gas to i64
  %i.hdw = sub i64 %i.hdu, %i.hdv
  %i.hdx = shl i64 %i.hdw, 8
  %i.hdy = or disjoint i64 %i.hdx, 1
  store i64 %i.hdy, ptr %.5496.i, align 8, !tbaa !79
  %i.hdz = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store ptr %i.gas, ptr %i.hdz, align 8, !tbaa !81
  store ptr %.73181, ptr %i.g, align 8, !tbaa !92
  br label %.split3467

bb.aqu:                                           ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1211
  br i1 %.not3775, label %bb.aqw, label %bb.aqv, !prof !24

bb.aqv:                                           ; preds = %bb.aqu
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.hea = select i1 %i.gax, i64 -4503599627370496, i64 9218868437227405312
  %i.heb = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.hea, ptr %i.heb, align 8, !tbaa !81
  br label %.split3467

bb.aqw:                                           ; preds = %bb.aqu
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  br label %.split3467.thread

bb.aqx:                                           ; preds = %.thread3430, %bb.aqo, %bb.aqq, %bb.aqp
  %.0.i1210.ph = phi i64 [ 0, %bb.aqp ], [ %i.hds, %bb.aqq ], [ %i.hdo, %bb.aqo ], [ 0, %.thread3430 ] ; 7 uses
  %i.hec = sub i64 %i.hcv, %.0608.i
  %.not678.i = icmp ule i64 %i.hcs, %i.hec
  %spec.select.i = or i1 %.not678.i, %i.hcy
  br i1 %spec.select.i, label %bb.aqy, label %bb.aqz, !prof !24

bb.aqy:                                           ; preds = %bb.aqx
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.hed = select i1 %i.gax, i64 -9223372036854775808, i64 0
  %i.hee = or disjoint i64 %.0.i1210.ph, %i.hed
  %i.hef = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.hee, ptr %i.hef, align 8, !tbaa !81
  br label %.split3467

bb.aqz:                                           ; preds = %bb.aqx
  %.not679.i = icmp samesign ult i64 %.0.i1210.ph, 4503599627370496 ; 2 uses
  %i.heg = and i64 %.0.i1210.ph, 4503599627370495
  %i.heh = or disjoint i64 %i.heg, 4503599627370496
  %i.hei = lshr i64 %.0.i1210.ph, 52
  %i.hej = trunc nuw nsw i64 %i.hei to i32
  %i.hek = add nsw i32 %i.hej, -1076
  %.sroa.9.0.i = select i1 %.not679.i, i32 -1075, i32 %i.hek ; 5 uses
  %.sroa.022.0.i = select i1 %.not679.i, i64 %.0.i1210.ph, i64 %i.heh
  %i.hel = shl nuw nsw i64 %.sroa.022.0.i, 1
  %i.hem = or disjoint i64 %i.hel, 1
  call fastcc void @_ZN13duckdb_yyjsonL14bigint_set_bufEPNS_6bigintEmPiPhS3_S3_(ptr noundef %11, i64 noundef %.22596.i, ptr noundef %i.d, ptr noundef %.3565.i, ptr noundef %.3569.i, ptr noundef %.23.i228)
  %i.hen = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 29 uses
  store i64 %i.hem, ptr %i.hen, align 8, !tbaa !91
  %i.heo = load i32, ptr %i.d, align 4, !tbaa !3  ; 6 uses
  %i.hep = icmp sgt i32 %i.heo, -1
  br i1 %i.hep, label %.preheader4126, label %bb.arh

.preheader4126:                                   ; preds = %bb.aqz
  %.promoted5677 = load i32, ptr %11, align 8     ; 2 uses
  %i.heq = icmp samesign ugt i32 %i.heo, 18
  br i1 %i.heq, label %.lr.ph5680, label %._crit_edge5681

.lr.ph5680:                                       ; preds = %.preheader4126
  %i.her = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  br label %bb.ara

bb.ara:                                           ; preds = %.lr.ph5680, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1347
  %.0.i12295679 = phi i32 [ %i.heo, %.lr.ph5680 ], [ %i.hgf, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1347 ] ; 2 uses
  %i.hes = phi i32 [ %.promoted5677, %.lr.ph5680 ], [ %i.hge, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1347 ] ; 9 uses
  %.not5880 = icmp eq i32 %i.hes, 0
  br i1 %.not5880, label %._crit_edge5667, label %.lr.ph5666.preheader

.lr.ph5666.preheader:                             ; preds = %bb.ara
  %wide.trip.count6568 = zext i32 %i.hes to i64
  br label %.lr.ph5666

.lr.ph5666:                                       ; preds = %.lr.ph5666.preheader, %bb.arb
  %indvars.iv6565 = phi i64 [ 0, %.lr.ph5666.preheader ], [ %indvars.iv.next6566, %bb.arb ] ; 3 uses
  %i.het = getelementptr inbounds nuw [8 x i8], ptr %i.her, i64 %indvars.iv6565
  %i.heu = load i64, ptr %i.het, align 8, !tbaa !91
  %.not.i1346 = icmp eq i64 %i.heu, 0
  br i1 %.not.i1346, label %bb.arb, label %._crit_edge5667.loopexit

bb.arb:                                           ; preds = %.lr.ph5666
  %indvars.iv.next6566 = add nuw nsw i64 %indvars.iv6565, 1 ; 2 uses
  %exitcond6569.not = icmp eq i64 %indvars.iv.next6566, %wide.trip.count6568
  br i1 %exitcond6569.not, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1347, label %.lr.ph5666, !llvm.loop !174

._crit_edge5667.loopexit:                         ; preds = %.lr.ph5666
  %i.hev = trunc nuw i64 %indvars.iv6565 to i32
  br label %._crit_edge5667

._crit_edge5667:                                  ; preds = %._crit_edge5667.loopexit, %bb.ara
  %.018.i1342.lcssa = phi i32 [ 0, %bb.ara ], [ %i.hev, %._crit_edge5667.loopexit ] ; 2 uses
  %i.hew = icmp ult i32 %.018.i1342.lcssa, %i.hes
  br i1 %i.hew, label %.lr.ph5674.preheader, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1347

.lr.ph5674.preheader:                             ; preds = %._crit_edge5667
  %i.hex = zext i32 %.018.i1342.lcssa to i64      ; 4 uses
  %wide.trip.count6573 = zext i32 %i.hes to i64   ; 2 uses
  %i.hey = sub nsw i64 %wide.trip.count6573, %i.hex ; 3 uses
  %xtraiter12353 = and i64 %i.hey, 1
  %i.hez = add nsw i64 %wide.trip.count6573, -1
  %i.hfa = icmp eq i64 %i.hez, %i.hex
  br i1 %i.hfa, label %.lr.ph5674.epil.preheader, label %.lr.ph5674.preheader.new

.lr.ph5674.preheader.new:                         ; preds = %.lr.ph5674.preheader
  %unroll_iter12358 = and i64 %i.hey, -2
  br label %.lr.ph5674

.lr.ph5674:                                       ; preds = %.lr.ph5674, %.lr.ph5674.preheader.new
  %indvars.iv6570 = phi i64 [ %i.hex, %.lr.ph5674.preheader.new ], [ %indvars.iv.next6571.1, %.lr.ph5674 ] ; 3 uses
  %.0.i13445672 = phi i64 [ 0, %.lr.ph5674.preheader.new ], [ %i.hfq, %.lr.ph5674 ]
  %niter12359 = phi i64 [ 0, %.lr.ph5674.preheader.new ], [ %niter12359.next.1, %.lr.ph5674 ]
  %i.hfb = getelementptr inbounds nuw [8 x i8], ptr %i.her, i64 %indvars.iv6570 ; 2 uses
  %i.hfc = load i64, ptr %i.hfb, align 8, !tbaa !91
  %i.hfd = zext i64 %i.hfc to i128
  %i.hfe = mul nuw i128 %i.hfd, 10000000000000000000
  %i.hff = zext i64 %.0.i13445672 to i128
  %i.hfg = add nuw i128 %i.hfe, %i.hff            ; 2 uses
  %i.hfh = lshr i128 %i.hfg, 64
  %i.hfi = trunc i128 %i.hfg to i64
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.hjl = zext i32 %i.hib to i64
  %i.hjm = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hjl
  store i64 %.lcssa10800, ptr %i.hjm, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit: ; preds = %bb.ari, %._crit_edge5633, %._crit_edge5641, %bb.arj
  %i.hjn = phi i32 [ %i.hib, %._crit_edge5641 ], [ %i.hjk, %bb.arj ], [ %i.hib, %._crit_edge5633 ], [ %i.hib, %bb.ari ] ; 5 uses
  %i.hjo = add nsw i32 %.0.i12325645, -19         ; 3 uses
  %i.hjp = icmp sgt i32 %.0.i12325645, 37
  br i1 %i.hjp, label %.lr.ph5647, label %._crit_edge5648, !llvm.loop !176

._crit_edge5648:                                  ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit
  store i32 %i.hjn, ptr %12, align 8
  %.not.i1233 = icmp eq i32 %i.hjo, 0
  br i1 %.not.i1233, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231, label %bb.ark

bb.ark:                                           ; preds = %._crit_edge5648
  %i.hjq = sext i32 %i.hjo to i64
  %i.hjr = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.hjq
  %i.hjs = load i64, ptr %i.hjr, align 8, !tbaa !91 ; 2 uses
  %.not5879 = icmp eq i32 %i.hjn, 0
  br i1 %.not5879, label %._crit_edge5654, label %.lr.ph5653.preheader

.lr.ph5653.preheader:                             ; preds = %.thread7494, %bb.ark
  %i.hjt = phi i64 [ %i.hia, %.thread7494 ], [ %i.hjs, %bb.ark ]
  %i.hju = phi i32 [ 1, %.thread7494 ], [ %i.hjn, %bb.ark ] ; 3 uses
  %wide.trip.count6558 = zext i32 %i.hju to i64
  br label %.lr.ph5653

.lr.ph5653:                                       ; preds = %.lr.ph5653.preheader, %bb.arl
  %indvars.iv6555 = phi i64 [ 0, %.lr.ph5653.preheader ], [ %indvars.iv.next6556, %bb.arl ] ; 3 uses
  %i.hjv = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %indvars.iv6555
  %i.hjw = load i64, ptr %i.hjv, align 8, !tbaa !91
  %.not.i1340 = icmp eq i64 %i.hjw, 0
  br i1 %.not.i1340, label %bb.arl, label %._crit_edge5654.loopexit

bb.arl:                                           ; preds = %.lr.ph5653
  %indvars.iv.next6556 = add nuw nsw i64 %indvars.iv6555, 1 ; 2 uses
  %exitcond6559.not = icmp eq i64 %indvars.iv.next6556, %wide.trip.count6558
  br i1 %exitcond6559.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231, label %.lr.ph5653, !llvm.loop !174

._crit_edge5654.loopexit:                         ; preds = %.lr.ph5653
  %i.hjx = trunc nuw i64 %indvars.iv6555 to i32
  br label %._crit_edge5654

._crit_edge5654:                                  ; preds = %._crit_edge5654.loopexit, %bb.ark
  %i.hjy = phi i64 [ %i.hjs, %bb.ark ], [ %i.hjt, %._crit_edge5654.loopexit ]
  %i.hjz = phi i32 [ 0, %bb.ark ], [ %i.hju, %._crit_edge5654.loopexit ] ; 6 uses
  %.018.i1336.lcssa = phi i32 [ 0, %bb.ark ], [ %i.hjx, %._crit_edge5654.loopexit ] ; 2 uses
  %i.hka = icmp ult i32 %.018.i1336.lcssa, %i.hjz
  br i1 %i.hka, label %.lr.ph5661, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231

.lr.ph5661:                                       ; preds = %._crit_edge5654
  %i.hkb = zext i64 %i.hjy to i128                ; 3 uses
  %i.hkc = zext i32 %.018.i1336.lcssa to i64      ; 4 uses
  %wide.trip.count6563 = zext i32 %i.hjz to i64   ; 2 uses
  %i.hkd = sub nsw i64 %wide.trip.count6563, %i.hkc ; 3 uses
  %xtraiter12346 = and i64 %i.hkd, 1
  %i.hke = add nsw i64 %wide.trip.count6563, -1
  %i.hkf = icmp eq i64 %i.hke, %i.hkc
  br i1 %i.hkf, label %.epil.preheader12345, label %.lr.ph5661.new

.lr.ph5661.new:                                   ; preds = %.lr.ph5661
  %unroll_iter12351 = and i64 %i.hkd, -2
  br label %bb.arm

bb.arm:                                           ; preds = %bb.arm, %.lr.ph5661.new
  %indvars.iv6560 = phi i64 [ %i.hkc, %.lr.ph5661.new ], [ %indvars.iv.next6561.1, %bb.arm ] ; 3 uses
  %.0.i13385659 = phi i64 [ 0, %.lr.ph5661.new ], [ %i.hkv, %bb.arm ]
  %niter12352 = phi i64 [ 0, %.lr.ph5661.new ], [ %niter12352.next.1, %bb.arm ]
  %i.hkg = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %indvars.iv6560 ; 2 uses
  %i.hkh = load i64, ptr %i.hkg, align 8, !tbaa !91
  %i.hki = zext i64 %i.hkh to i128
  %i.hkj = mul nuw i128 %i.hki, %i.hkb
  %i.hkk = zext i64 %.0.i13385659 to i128
  %i.hkl = add nuw i128 %i.hkj, %i.hkk            ; 2 uses
  %i.hkm = lshr i128 %i.hkl, 64
  %i.hkn = trunc i128 %i.hkl to i64
  store i64 %i.hkn, ptr %i.hkg, align 8, !tbaa !91
  %i.hko = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %indvars.iv6560
  %i.hkp = getelementptr inbounds nuw i8, ptr %i.hko, i64 8 ; 2 uses
  %i.hkq = load i64, ptr %i.hkp, align 8, !tbaa !91
  %i.hkr = zext i64 %i.hkq to i128
  %i.hks = mul nuw i128 %i.hkr, %i.hkb
  %i.hkt = add nuw i128 %i.hks, %i.hkm            ; 2 uses
  %i.hku = lshr i128 %i.hkt, 64                   ; 2 uses
  %i.hkv = trunc nuw i128 %i.hku to i64           ; 3 uses
  %i.hkw = trunc i128 %i.hkt to i64
  store i64 %i.hkw, ptr %i.hkp, align 8, !tbaa !91
  %indvars.iv.next6561.1 = add nuw nsw i64 %indvars.iv6560, 2 ; 2 uses
  %niter12352.next.1 = add i64 %niter12352, 2     ; 2 uses
  %niter12352.ncmp.1 = icmp eq i64 %niter12352.next.1, %unroll_iter12351
  br i1 %niter12352.ncmp.1, label %._crit_edge5662.unr-lcssa, label %bb.arm, !llvm.loop !175

._crit_edge5662.unr-lcssa:                        ; preds = %bb.arm
  %lcmp.mod12347.not = icmp eq i64 %xtraiter12346, 0
  br i1 %lcmp.mod12347.not, label %._crit_edge5662, label %.epil.preheader12345

.epil.preheader12345:                             ; preds = %._crit_edge5662.unr-lcssa, %.lr.ph5661
  %indvars.iv6560.epil.init = phi i64 [ %i.hkc, %.lr.ph5661 ], [ %indvars.iv.next6561.1, %._crit_edge5662.unr-lcssa ]
  %.0.i13385659.epil.init = phi i64 [ 0, %.lr.ph5661 ], [ %i.hkv, %._crit_edge5662.unr-lcssa ]
  %lcmp.mod12350 = trunc i64 %i.hkd to i1
  tail call void @llvm.assume(i1 %lcmp.mod12350)
  %i.hkx = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %indvars.iv6560.epil.init ; 2 uses
  %i.hky = load i64, ptr %i.hkx, align 8, !tbaa !91
  %i.hkz = zext i64 %i.hky to i128
  %i.hla = mul nuw i128 %i.hkz, %i.hkb
  %i.hlb = zext i64 %.0.i13385659.epil.init to i128
  %i.hlc = add nuw i128 %i.hla, %i.hlb            ; 2 uses
  %i.hld = lshr i128 %i.hlc, 64                   ; 2 uses
  %i.hle = trunc nuw i128 %i.hld to i64
  %i.hlf = trunc i128 %i.hlc to i64
  store i64 %i.hlf, ptr %i.hkx, align 8, !tbaa !91
  br label %._crit_edge5662

._crit_edge5662:                                  ; preds = %._crit_edge5662.unr-lcssa, %.epil.preheader12345
  %.lcssa10796 = phi i128 [ %i.hku, %._crit_edge5662.unr-lcssa ], [ %i.hld, %.epil.preheader12345 ]
  %.lcssa10795 = phi i64 [ %i.hkv, %._crit_edge5662.unr-lcssa ], [ %i.hle, %.epil.preheader12345 ]
  %.not19.i1339 = icmp eq i128 %.lcssa10796, 0
  br i1 %.not19.i1339, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231, label %bb.arn

bb.arn:                                           ; preds = %._crit_edge5662
  %i.hlg = add i32 %i.hjz, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231.sink.split: ; preds = %bb.arg, %bb.arn
  %.sink8573 = phi i32 [ %i.hjz, %bb.arn ], [ %i.hgh, %bb.arg ]
  %i.hlh = phi ptr [ %12, %bb.arn ], [ %11, %bb.arg ]
  %.lcssa7603.sink = phi i64 [ %.lcssa10795, %bb.arn ], [ %.lcssa10787, %bb.arg ]
  %.ph8569 = phi i32 [ %i.hlg, %bb.arn ], [ 1, %bb.arg ]
  %i.hli = getelementptr inbounds nuw i8, ptr %i.hlh, i64 8
  %i.hlj = zext i32 %.sink8573 to i64
  %i.hlk = getelementptr inbounds nuw [8 x i8], ptr %i.hli, i64 %i.hlj
  store i64 %.lcssa7603.sink, ptr %i.hlk, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231: ; preds = %bb.arl, %bb.are, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231.sink.split, %._crit_edge5654, %._crit_edge5687, %._crit_edge5648, %._crit_edge5662, %._crit_edge5681, %._crit_edge5695
  %i.hll = phi i32 [ %i.hjn, %._crit_edge5648 ], [ %i.hjz, %._crit_edge5662 ], [ %i.hjz, %._crit_edge5654 ], [ 1, %._crit_edge5681 ], [ 1, %._crit_edge5695 ], [ 1, %bb.are ], [ %.ph8569, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231.sink.split ], [ 1, %._crit_edge5687 ], [ %i.hju, %bb.arl ] ; 16 uses
  %i.hlm = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.hlm, label %bb.aro, label %bb.arq

bb.aro:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231
  %i.hln = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.hlo = lshr i32 %.sroa.9.0.i, 6               ; 14 uses
  %i.hlp = icmp eq i32 %i.hln, 0
  br i1 %i.hlp, label %.preheader4121, label %bb.arp, !prof !7

.preheader4121:                                   ; preds = %bb.aro
  %.not46.i12885723 = icmp eq i32 %i.hll, 0
  br i1 %.not46.i12885723, label %.lr.ph5730.preheader, label %.lr.ph5725

.lr.ph5725:                                       ; preds = %.preheader4121
  %i.hlq = add nsw i32 %i.hlo, -1                 ; 6 uses
  %i.hlr = zext i32 %i.hll to i64                 ; 9 uses
  %min.iters.check10592 = icmp ult i32 %i.hll, 30
  br i1 %min.iters.check10592, label %scalar.ph10591.preheader, label %vector.scevcheck10588

vector.scevcheck10588:                            ; preds = %.lr.ph5725
  %i.hls = add nsw i64 %i.hlr, -1                 ; 2 uses
  %i.hlt = add i32 %i.hll, %i.hlo
  %i.hlu = add i32 %i.hlt, -1
  %i.hlv = trunc i64 %i.hls to i32
  %i.hlw = icmp ult i32 %i.hlu, %i.hlv
  %i.hlx = icmp ugt i64 %i.hls, 4294967295
  %i.hly = or i1 %i.hlw, %i.hlx
  br i1 %i.hly, label %scalar.ph10591.preheader, label %vector.memcheck10589

vector.memcheck10589:                             ; preds = %vector.scevcheck10588
  %i.hlz = add i32 %i.hll, %i.hlo
  %i.hma = add i32 %i.hlz, -1
  %i.hmb = zext i32 %i.hma to i64
  %i.hmc = sub nsw i64 %i.hlr, %i.hmb
  %i.hmd = shl nsw i64 %i.hmc, 3
  %i.hme = add nsw i64 %i.hmd, -9
  %diff.check10590 = icmp ult i64 %i.hme, 31
  br i1 %diff.check10590, label %scalar.ph10591.preheader, label %vector.ph10593

vector.ph10593:                                   ; preds = %vector.memcheck10589
  %n.vec10594 = and i64 %i.hlr, 4294967292        ; 2 uses
  %i.hmf = and i64 %i.hlr, 3
  br label %vector.body10595

vector.body10595:                                 ; preds = %vector.body10595, %vector.ph10593
  %index10596 = phi i64 [ 0, %vector.ph10593 ], [ %index.next10599, %vector.body10595 ] ; 2 uses
  %i.hmg = sub i64 %i.hlr, %index10596            ; 2 uses
  %i.hmh = getelementptr [8 x i8], ptr %12, i64 %i.hmg ; 2 uses
  %i.hmi = getelementptr i8, ptr %i.hmh, i64 -8
  %i.hmj = getelementptr i8, ptr %i.hmh, i64 -24
  %wide.load10597 = load <2 x i64>, ptr %i.hmi, align 8, !tbaa !91
  %wide.load10598 = load <2 x i64>, ptr %i.hmj, align 8, !tbaa !91
  %i.hmk = trunc nuw i64 %i.hmg to i32
  %i.hml = add i32 %i.hlq, %i.hmk
  %i.hmm = zext i32 %i.hml to i64
  %i.hmn = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hmm ; 2 uses
  %i.hmo = getelementptr inbounds i8, ptr %i.hmn, i64 -8
  %i.hmp = getelementptr inbounds i8, ptr %i.hmn, i64 -24
  store <2 x i64> %wide.load10597, ptr %i.hmo, align 8, !tbaa !91
  store <2 x i64> %wide.load10598, ptr %i.hmp, align 8, !tbaa !91
  %index.next10599 = add nuw i64 %index10596, 4   ; 2 uses
  %i.hmq = icmp eq i64 %index.next10599, %n.vec10594
  br i1 %i.hmq, label %middle.block10600, label %vector.body10595, !llvm.loop !221

middle.block10600:                                ; preds = %vector.body10595
  %cmp.n10601 = icmp eq i64 %n.vec10594, %i.hlr
  br i1 %cmp.n10601, label %.lr.ph5730.preheader, label %scalar.ph10591.preheader

scalar.ph10591.preheader:                         ; preds = %vector.memcheck10589, %vector.scevcheck10588, %.lr.ph5725, %middle.block10600
  %indvars.iv6600.ph = phi i64 [ %i.hlr, %vector.memcheck10589 ], [ %i.hlr, %vector.scevcheck10588 ], [ %i.hlr, %.lr.ph5725 ], [ %i.hmf, %middle.block10600 ] ; 4 uses
  %i.hmr = add nsw i64 %indvars.iv6600.ph, -1
  %xtraiter12377 = and i64 %indvars.iv6600.ph, 3  ; 2 uses
  %lcmp.mod12378.not = icmp eq i64 %xtraiter12377, 0
  br i1 %lcmp.mod12378.not, label %scalar.ph10591.prol.loopexit, label %scalar.ph10591.prol

scalar.ph10591.prol:                              ; preds = %scalar.ph10591.preheader, %scalar.ph10591.prol
  %indvars.iv6600.prol = phi i64 [ %i.hms, %scalar.ph10591.prol ], [ %indvars.iv6600.ph, %scalar.ph10591.preheader ] ; 3 uses
  %prol.iter12379 = phi i64 [ %prol.iter12379.next, %scalar.ph10591.prol ], [ 0, %scalar.ph10591.preheader ]
  %i.hms = add nsw i64 %indvars.iv6600.prol, -1   ; 2 uses
  %i.hmt = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6600.prol
  %i.hmu = load i64, ptr %i.hmt, align 8, !tbaa !91
  %i.hmv = trunc nuw i64 %indvars.iv6600.prol to i32
  %i.hmw = add i32 %i.hlq, %i.hmv
  %i.hmx = zext i32 %i.hmw to i64
  %i.hmy = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hmx
  store i64 %i.hmu, ptr %i.hmy, align 8, !tbaa !91
  %prol.iter12379.next = add i64 %prol.iter12379, 1 ; 2 uses
  %prol.iter12379.cmp.not = icmp eq i64 %prol.iter12379.next, %xtraiter12377
  br i1 %prol.iter12379.cmp.not, label %scalar.ph10591.prol.loopexit, label %scalar.ph10591.prol, !llvm.loop !222

scalar.ph10591.prol.loopexit:                     ; preds = %scalar.ph10591.prol, %scalar.ph10591.preheader
  %indvars.iv6600.unr = phi i64 [ %indvars.iv6600.ph, %scalar.ph10591.preheader ], [ %i.hms, %scalar.ph10591.prol ]
  %i.hmz = icmp ult i64 %i.hmr, 3
  br i1 %i.hmz, label %.lr.ph5730.preheader, label %scalar.ph10591

scalar.ph10591:                                   ; preds = %scalar.ph10591.prol.loopexit, %scalar.ph10591
  %indvars.iv6600 = phi i64 [ %i.hnv, %scalar.ph10591 ], [ %indvars.iv6600.unr, %scalar.ph10591.prol.loopexit ] ; 6 uses
  %i.hna = add nsw i64 %indvars.iv6600, -1        ; 2 uses
  %i.hnb = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6600
  %i.hnc = load i64, ptr %i.hnb, align 8, !tbaa !91
  %i.hnd = trunc nuw i64 %indvars.iv6600 to i32
  %i.hne = add i32 %i.hlq, %i.hnd
  %i.hnf = zext i32 %i.hne to i64
  %i.hng = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hnf
  store i64 %i.hnc, ptr %i.hng, align 8, !tbaa !91
  %i.hnh = add nsw i64 %indvars.iv6600, -2        ; 2 uses
  %i.hni = getelementptr [8 x i8], ptr %12, i64 %i.hna
  %i.hnj = load i64, ptr %i.hni, align 8, !tbaa !91
  %i.hnk = trunc nuw i64 %i.hna to i32
  %i.hnl = add i32 %i.hlq, %i.hnk
  %i.hnm = zext i32 %i.hnl to i64
  %i.hnn = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hnm
  store i64 %i.hnj, ptr %i.hnn, align 8, !tbaa !91
  %i.hno = add nsw i64 %indvars.iv6600, -3        ; 2 uses
  %i.hnp = getelementptr [8 x i8], ptr %12, i64 %i.hnh
  %i.hnq = load i64, ptr %i.hnp, align 8, !tbaa !91
  %i.hnr = trunc nuw i64 %i.hnh to i32
  %i.hns = add i32 %i.hlq, %i.hnr
  %i.hnt = zext i32 %i.hns to i64
  %i.hnu = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hnt
  store i64 %i.hnq, ptr %i.hnu, align 8, !tbaa !91
  %i.hnv = add nsw i64 %indvars.iv6600, -4        ; 2 uses
  %i.hnw = getelementptr [8 x i8], ptr %12, i64 %i.hno
  %i.hnx = load i64, ptr %i.hnw, align 8, !tbaa !91
  %i.hny = trunc nuw i64 %i.hno to i32
  %i.hnz = add i32 %i.hlq, %i.hny
  %i.hoa = zext i32 %i.hnz to i64
  %i.hob = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hoa
  store i64 %i.hnx, ptr %i.hob, align 8, !tbaa !91
  %.not46.i1288.wide.3 = icmp eq i64 %i.hnv, 0
  br i1 %.not46.i1288.wide.3, label %.lr.ph5730.preheader, label %scalar.ph10591, !llvm.loop !223

.lr.ph5730.preheader:                             ; preds = %scalar.ph10591.prol.loopexit, %scalar.ph10591, %middle.block10600, %.preheader4121
  %i.hoc = add i32 %i.hll, %i.hlo                 ; 2 uses
  store i32 %i.hoc, ptr %12, align 8, !tbaa !177
  %i.hod = add nsw i32 %i.hlo, -1
  %i.hoe = zext i32 %i.hod to i64
  %i.hof = shl nuw nsw i64 %i.hoe, 3
  %i.hog = add nuw nsw i64 %i.hof, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hen, i8 0, i64 %i.hog, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291

bb.arp:                                           ; preds = %bb.aro
  %i.hoh = zext i32 %i.hll to i64                 ; 10 uses
  %i.hoi = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hoh
  store i64 0, ptr %i.hoi, align 8, !tbaa !91
  %.not.i12845714 = icmp eq i32 %i.hll, 0
  %.pre6915 = zext nneg i32 %i.hln to i64         ; 5 uses
  br i1 %.not.i12845714, label %._crit_edge5718, label %.lr.ph5717

.lr.ph5717:                                       ; preds = %bb.arp
  %i.hoj = sub nuw nsw i32 64, %i.hln
  %i.hok = zext nneg i32 %i.hoj to i64            ; 4 uses
  %min.iters.check10571 = icmp ult i32 %i.hll, 20
  br i1 %min.iters.check10571, label %scalar.ph10570.preheader, label %vector.scevcheck10565

vector.scevcheck10565:                            ; preds = %.lr.ph5717
  %i.hol = add nsw i64 %i.hoh, -1                 ; 2 uses
  %i.hom = add i32 %i.hll, %i.hlo
  %i.hon = trunc i64 %i.hol to i32
  %i.hoo = icmp ult i32 %i.hom, %i.hon
  %i.hop = icmp ugt i64 %i.hol, 4294967295
  %i.hoq = or i1 %i.hoo, %i.hop
  br i1 %i.hoq, label %scalar.ph10570.preheader, label %vector.memcheck10566

vector.memcheck10566:                             ; preds = %vector.scevcheck10565
  %i.hor = shl nuw nsw i64 %i.hoh, 3              ; 2 uses
  %i.hos = add i32 %i.hll, %i.hlo
  %i.hot = zext i32 %i.hos to i64
  %i.hou = shl nuw nsw i64 %i.hot, 3              ; 2 uses
  %i.hov = sub nsw i64 %i.hou, %i.hor
  %diff.check10567 = icmp ugt i64 %i.hov, -32
  %i.how = sub nsw i64 %i.hor, %i.hou
  %i.hox = add nsw i64 %i.how, -9
  %diff.check10568 = icmp ult i64 %i.hox, 31
  %conflict.rdx10569 = or i1 %diff.check10567, %diff.check10568
  br i1 %conflict.rdx10569, label %scalar.ph10570.preheader, label %vector.ph10572

vector.ph10572:                                   ; preds = %vector.memcheck10566
  %n.vec10573 = and i64 %i.hoh, 4294967292        ; 2 uses
  %i.hoy = and i64 %i.hoh, 3
  %broadcast.splatinsert10574 = insertelement <2 x i64> poison, i64 %i.hok, i64 0
  %broadcast.splat10575 = shufflevector <2 x i64> %broadcast.splatinsert10574, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10576 = insertelement <2 x i64> poison, i64 %.pre6915, i64 0
  %broadcast.splat10577 = shufflevector <2 x i64> %broadcast.splatinsert10576, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10578

vector.body10578:                                 ; preds = %vector.body10578, %vector.ph10572
  %index10579 = phi i64 [ 0, %vector.ph10572 ], [ %index.next10584, %vector.body10578 ] ; 2 uses
  %i.hoz = sub i64 %i.hoh, %index10579            ; 3 uses
  %i.hpa = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hoz ; 2 uses
  %i.hpb = getelementptr inbounds i8, ptr %i.hpa, i64 -8
  %i.hpc = getelementptr inbounds i8, ptr %i.hpa, i64 -24
  %wide.load10580 = load <2 x i64>, ptr %i.hpb, align 8, !tbaa !91
  %wide.load10581 = load <2 x i64>, ptr %i.hpc, align 8, !tbaa !91
  %i.hpd = shl <2 x i64> %wide.load10580, %broadcast.splat10577
  %i.hpe = shl <2 x i64> %wide.load10581, %broadcast.splat10577
  %i.hpf = getelementptr [8 x i8], ptr %12, i64 %i.hoz ; 2 uses
  %i.hpg = getelementptr i8, ptr %i.hpf, i64 -8
  %i.hph = getelementptr i8, ptr %i.hpf, i64 -24
  %wide.load10582 = load <2 x i64>, ptr %i.hpg, align 8, !tbaa !91
  %wide.load10583 = load <2 x i64>, ptr %i.hph, align 8, !tbaa !91
  %i.hpi = lshr <2 x i64> %wide.load10582, %broadcast.splat10575
  %i.hpj = lshr <2 x i64> %wide.load10583, %broadcast.splat10575
  %i.hpk = or <2 x i64> %i.hpi, %i.hpd
  %i.hpl = or <2 x i64> %i.hpj, %i.hpe
  %i.hpm = trunc nuw i64 %i.hoz to i32
  %i.hpn = add i32 %i.hlo, %i.hpm
  %i.hpo = zext i32 %i.hpn to i64
  %i.hpp = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hpo ; 2 uses
  %i.hpq = getelementptr inbounds i8, ptr %i.hpp, i64 -8
  %i.hpr = getelementptr inbounds i8, ptr %i.hpp, i64 -24
  store <2 x i64> %i.hpk, ptr %i.hpq, align 8, !tbaa !91
  store <2 x i64> %i.hpl, ptr %i.hpr, align 8, !tbaa !91
  %index.next10584 = add nuw i64 %index10579, 4   ; 2 uses
  %i.hps = icmp eq i64 %index.next10584, %n.vec10573
  br i1 %i.hps, label %middle.block10585, label %vector.body10578, !llvm.loop !224

middle.block10585:                                ; preds = %vector.body10578
  %cmp.n10586 = icmp eq i64 %n.vec10573, %i.hoh
  br i1 %cmp.n10586, label %._crit_edge5718, label %scalar.ph10570.preheader

scalar.ph10570.preheader:                         ; preds = %vector.memcheck10566, %vector.scevcheck10565, %.lr.ph5717, %middle.block10585
  %indvars.iv6595.ph = phi i64 [ %i.hoh, %vector.memcheck10566 ], [ %i.hoh, %vector.scevcheck10565 ], [ %i.hoh, %.lr.ph5717 ], [ %i.hoy, %middle.block10585 ] ; 7 uses
  %xtraiter12374 = and i64 %indvars.iv6595.ph, 1
  %lcmp.mod12375.not = icmp eq i64 %xtraiter12374, 0
  br i1 %lcmp.mod12375.not, label %scalar.ph10570.prol.loopexit, label %scalar.ph10570.prol

scalar.ph10570.prol:                              ; preds = %scalar.ph10570.preheader
  %i.hpt = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %indvars.iv6595.ph
  %i.hpu = load i64, ptr %i.hpt, align 8, !tbaa !91
  %i.hpv = shl i64 %i.hpu, %.pre6915
  %i.hpw = add nsw i64 %indvars.iv6595.ph, -1
  %i.hpx = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6595.ph
  %i.hpy = load i64, ptr %i.hpx, align 8, !tbaa !91
  %i.hpz = lshr i64 %i.hpy, %i.hok
  %i.hqa = or i64 %i.hpz, %i.hpv
  %i.hqb = trunc nuw i64 %indvars.iv6595.ph to i32
  %i.hqc = add i32 %i.hlo, %i.hqb
  %i.hqd = zext i32 %i.hqc to i64
  %i.hqe = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hqd
  store i64 %i.hqa, ptr %i.hqe, align 8, !tbaa !91
  br label %scalar.ph10570.prol.loopexit

scalar.ph10570.prol.loopexit:                     ; preds = %scalar.ph10570.prol, %scalar.ph10570.preheader
  %indvars.iv6595.unr = phi i64 [ %indvars.iv6595.ph, %scalar.ph10570.preheader ], [ %i.hpw, %scalar.ph10570.prol ]
  %i.hqf = icmp eq i64 %indvars.iv6595.ph, 1
  br i1 %i.hqf, label %._crit_edge5718, label %scalar.ph10570

scalar.ph10570:                                   ; preds = %scalar.ph10570.prol.loopexit, %scalar.ph10570
  %indvars.iv6595 = phi i64 [ %i.hqv, %scalar.ph10570 ], [ %indvars.iv6595.unr, %scalar.ph10570.prol.loopexit ] ; 6 uses
  %i.hqg = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %indvars.iv6595
  %i.hqh = load i64, ptr %i.hqg, align 8, !tbaa !91
  %i.hqi = shl i64 %i.hqh, %.pre6915
  %i.hqj = add nsw i64 %indvars.iv6595, -1        ; 2 uses
  %i.hqk = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6595
  %i.hql = load i64, ptr %i.hqk, align 8, !tbaa !91
  %i.hqm = lshr i64 %i.hql, %i.hok
  %i.hqn = or i64 %i.hqm, %i.hqi
  %i.hqo = trunc nuw i64 %indvars.iv6595 to i32
  %i.hqp = add i32 %i.hlo, %i.hqo
  %i.hqq = zext i32 %i.hqp to i64
  %i.hqr = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hqq
  store i64 %i.hqn, ptr %i.hqr, align 8, !tbaa !91
  %i.hqs = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6595
  %i.hqt = load i64, ptr %i.hqs, align 8, !tbaa !91
  %i.hqu = shl i64 %i.hqt, %.pre6915
  %i.hqv = add nsw i64 %indvars.iv6595, -2        ; 2 uses
  %i.hqw = getelementptr [8 x i8], ptr %12, i64 %i.hqj
  %i.hqx = load i64, ptr %i.hqw, align 8, !tbaa !91
  %i.hqy = lshr i64 %i.hqx, %i.hok
  %i.hqz = or i64 %i.hqy, %i.hqu
  %i.hra = trunc nuw i64 %i.hqj to i32
  %i.hrb = add i32 %i.hlo, %i.hra
  %i.hrc = zext i32 %i.hrb to i64
  %i.hrd = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hrc
  store i64 %i.hqz, ptr %i.hrd, align 8, !tbaa !91
  %.not.i1284.wide.1 = icmp eq i64 %i.hqv, 0
  br i1 %.not.i1284.wide.1, label %._crit_edge5718, label %scalar.ph10570, !llvm.loop !225

._crit_edge5718:                                  ; preds = %scalar.ph10570.prol.loopexit, %scalar.ph10570, %middle.block10585, %bb.arp
  %i.hre = load i64, ptr %i.hen, align 8, !tbaa !91
  %i.hrf = shl i64 %i.hre, %.pre6915
  %i.hrg = zext nneg i32 %i.hlo to i64
  %i.hrh = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hrg
  store i64 %i.hrf, ptr %i.hrh, align 8, !tbaa !91
  %i.hri = add i32 %i.hll, %i.hlo                 ; 2 uses
  %i.hrj = zext i32 %i.hri to i64
  %i.hrk = getelementptr inbounds nuw [8 x i8], ptr %i.hen, i64 %i.hrj
  %i.hrl = load i64, ptr %i.hrk, align 8, !tbaa !91
  %i.hrm = icmp ne i64 %i.hrl, 0
  %i.hrn = zext i1 %i.hrm to i32
  %i.hro = add i32 %i.hri, %i.hrn                 ; 2 uses
  %.not45.i12865719 = icmp eq i32 %i.hlo, 0
  br i1 %.not45.i12865719, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291, label %.lr.ph5722.preheader

.lr.ph5722.preheader:                             ; preds = %._crit_edge5718
  %i.hrp = lshr i32 %.sroa.9.0.i, 3
  %i.hrq = and i32 %i.hrp, 268435448
  %i.hrr = zext nneg i32 %i.hrq to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hen, i8 0, i64 %i.hrr, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291

bb.arq:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231
  %i.hrs = sub nsw i32 0, %.sroa.9.0.i            ; 4 uses
  %i.hrt = and i32 %i.hrs, 63                     ; 3 uses
  %i.hru = lshr i32 %i.hrs, 6                     ; 14 uses
  %i.hrv = load i32, ptr %11, align 8, !tbaa !177 ; 12 uses
  %i.hrw = icmp eq i32 %i.hrt, 0
  br i1 %i.hrw, label %.preheader4124, label %bb.arr, !prof !7

.preheader4124:                                   ; preds = %bb.arq
  %.not46.i12975706 = icmp eq i32 %i.hrv, 0
  br i1 %.not46.i12975706, label %._crit_edge5709, label %.lr.ph5708

.lr.ph5708:                                       ; preds = %.preheader4124
  %i.hrx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.hry = add nsw i32 %i.hru, -1                 ; 6 uses
  %i.hrz = zext i32 %i.hrv to i64                 ; 9 uses
  %min.iters.check10554 = icmp ult i32 %i.hrv, 30
  br i1 %min.iters.check10554, label %scalar.ph10553.preheader, label %vector.scevcheck10550

vector.scevcheck10550:                            ; preds = %.lr.ph5708
  %i.hsa = add nsw i64 %i.hrz, -1                 ; 2 uses
  %i.hsb = add i32 %i.hrv, %i.hru
  %i.hsc = add i32 %i.hsb, -1
  %i.hsd = trunc i64 %i.hsa to i32
  %i.hse = icmp ult i32 %i.hsc, %i.hsd
  %i.hsf = icmp ugt i64 %i.hsa, 4294967295
  %i.hsg = or i1 %i.hse, %i.hsf
  br i1 %i.hsg, label %scalar.ph10553.preheader, label %vector.memcheck10551

vector.memcheck10551:                             ; preds = %vector.scevcheck10550
  %i.hsh = add i32 %i.hrv, %i.hru
  %i.hsi = add i32 %i.hsh, -1
  %i.hsj = zext i32 %i.hsi to i64
  %i.hsk = sub nsw i64 %i.hrz, %i.hsj
  %i.hsl = shl nsw i64 %i.hsk, 3
  %i.hsm = add nsw i64 %i.hsl, -9
  %diff.check10552 = icmp ult i64 %i.hsm, 31
  br i1 %diff.check10552, label %scalar.ph10553.preheader, label %vector.ph10555

vector.ph10555:                                   ; preds = %vector.memcheck10551
  %n.vec10556 = and i64 %i.hrz, 4294967292        ; 2 uses
  %i.hsn = and i64 %i.hrz, 3
  br label %vector.body10557

vector.body10557:                                 ; preds = %vector.body10557, %vector.ph10555
  %index10558 = phi i64 [ 0, %vector.ph10555 ], [ %index.next10561, %vector.body10557 ] ; 2 uses
  %i.hso = sub i64 %i.hrz, %index10558            ; 2 uses
  %i.hsp = getelementptr [8 x i8], ptr %11, i64 %i.hso ; 2 uses
  %i.hsq = getelementptr i8, ptr %i.hsp, i64 -8
  %i.hsr = getelementptr i8, ptr %i.hsp, i64 -24
  %wide.load10559 = load <2 x i64>, ptr %i.hsq, align 8, !tbaa !91
  %wide.load10560 = load <2 x i64>, ptr %i.hsr, align 8, !tbaa !91
  %i.hss = trunc nuw i64 %i.hso to i32
  %i.hst = add i32 %i.hry, %i.hss
  %i.hsu = zext i32 %i.hst to i64
  %i.hsv = getelementptr inbounds nuw [8 x i8], ptr %i.hrx, i64 %i.hsu ; 2 uses
  %i.hsw = getelementptr inbounds i8, ptr %i.hsv, i64 -8
  %i.hsx = getelementptr inbounds i8, ptr %i.hsv, i64 -24
  store <2 x i64> %wide.load10559, ptr %i.hsw, align 8, !tbaa !91
  store <2 x i64> %wide.load10560, ptr %i.hsx, align 8, !tbaa !91
  %index.next10561 = add nuw i64 %index10558, 4   ; 2 uses
  %i.hsy = icmp eq i64 %index.next10561, %n.vec10556
  br i1 %i.hsy, label %middle.block10562, label %vector.body10557, !llvm.loop !226

middle.block10562:                                ; preds = %vector.body10557
  %cmp.n10563 = icmp eq i64 %n.vec10556, %i.hrz
  br i1 %cmp.n10563, label %._crit_edge5709, label %scalar.ph10553.preheader

scalar.ph10553.preheader:                         ; preds = %vector.memcheck10551, %vector.scevcheck10550, %.lr.ph5708, %middle.block10562
  %indvars.iv6590.ph = phi i64 [ %i.hrz, %vector.memcheck10551 ], [ %i.hrz, %vector.scevcheck10550 ], [ %i.hrz, %.lr.ph5708 ], [ %i.hsn, %middle.block10562 ] ; 4 uses
  %i.hsz = add nsw i64 %indvars.iv6590.ph, -1
  %xtraiter12371 = and i64 %indvars.iv6590.ph, 3  ; 2 uses
  %lcmp.mod12372.not = icmp eq i64 %xtraiter12371, 0
  br i1 %lcmp.mod12372.not, label %scalar.ph10553.prol.loopexit, label %scalar.ph10553.prol

scalar.ph10553.prol:                              ; preds = %scalar.ph10553.preheader, %scalar.ph10553.prol
  %indvars.iv6590.prol = phi i64 [ %i.hta, %scalar.ph10553.prol ], [ %indvars.iv6590.ph, %scalar.ph10553.preheader ] ; 3 uses
  %prol.iter12373 = phi i64 [ %prol.iter12373.next, %scalar.ph10553.prol ], [ 0, %scalar.ph10553.preheader ]
  %i.hta = add nsw i64 %indvars.iv6590.prol, -1   ; 2 uses
  %i.htb = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6590.prol
  %i.htc = load i64, ptr %i.htb, align 8, !tbaa !91
  %i.htd = trunc nuw i64 %indvars.iv6590.prol to i32
  %i.hte = add i32 %i.hry, %i.htd
  %i.htf = zext i32 %i.hte to i64
  %i.htg = getelementptr inbounds nuw [8 x i8], ptr %i.hrx, i64 %i.htf
  store i64 %i.htc, ptr %i.htg, align 8, !tbaa !91
  %prol.iter12373.next = add i64 %prol.iter12373, 1 ; 2 uses
  %prol.iter12373.cmp.not = icmp eq i64 %prol.iter12373.next, %xtraiter12371
  br i1 %prol.iter12373.cmp.not, label %scalar.ph10553.prol.loopexit, label %scalar.ph10553.prol, !llvm.loop !227

scalar.ph10553.prol.loopexit:                     ; preds = %scalar.ph10553.prol, %scalar.ph10553.preheader
  %indvars.iv6590.unr = phi i64 [ %indvars.iv6590.ph, %scalar.ph10553.preheader ], [ %i.hta, %scalar.ph10553.prol ]
  %i.hth = icmp ult i64 %i.hsz, 3
  br i1 %i.hth, label %._crit_edge5709, label %scalar.ph10553

scalar.ph10553:                                   ; preds = %scalar.ph10553.prol.loopexit, %scalar.ph10553
  %indvars.iv6590 = phi i64 [ %i.hud, %scalar.ph10553 ], [ %indvars.iv6590.unr, %scalar.ph10553.prol.loopexit ] ; 6 uses
  %i.hti = add nsw i64 %indvars.iv6590, -1        ; 2 uses
  %i.htj = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6590
  %i.htk = load i64, ptr %i.htj, align 8, !tbaa !91
  %i.htl = trunc nuw i64 %indvars.iv6590 to i32
  %i.htm = add i32 %i.hry, %i.htl
  %i.htn = zext i32 %i.htm to i64
  %i.hto = getelementptr inbounds nuw [8 x i8], ptr %i.hrx, i64 %i.htn
  store i64 %i.htk, ptr %i.hto, align 8, !tbaa !91
  %i.htp = add nsw i64 %indvars.iv6590, -2        ; 2 uses
  %i.htq = getelementptr [8 x i8], ptr %11, i64 %i.hti
  %i.htr = load i64, ptr %i.htq, align 8, !tbaa !91
  %i.hts = trunc nuw i64 %i.hti to i32
  %i.htt = add i32 %i.hry, %i.hts
  %i.htu = zext i32 %i.htt to i64
  %i.htv = getelementptr inbounds nuw [8 x i8], ptr %i.hrx, i64 %i.htu
  store i64 %i.htr, ptr %i.htv, align 8, !tbaa !91
  %i.htw = add nsw i64 %indvars.iv6590, -3        ; 2 uses
  %i.htx = getelementptr [8 x i8], ptr %11, i64 %i.htp
  %i.hty = load i64, ptr %i.htx, align 8, !tbaa !91
  %i.htz = trunc nuw i64 %i.htp to i32
  %i.hua = add i32 %i.hry, %i.htz
  %i.hub = zext i32 %i.hua to i64
  %i.huc = getelementptr inbounds nuw [8 x i8], ptr %i.hrx, i64 %i.hub
  store i64 %i.hty, ptr %i.huc, align 8, !tbaa !91
  %i.hud = add nsw i64 %indvars.iv6590, -4        ; 2 uses
  %i.hue = getelementptr [8 x i8], ptr %11, i64 %i.htw
  %i.huf = load i64, ptr %i.hue, align 8, !tbaa !91
  %i.hug = trunc nuw i64 %i.htw to i32
  %i.huh = add i32 %i.hry, %i.hug
  %i.hui = zext i32 %i.huh to i64
  %i.huj = getelementptr inbounds nuw [8 x i8], ptr %i.hrx, i64 %i.hui
  store i64 %i.huf, ptr %i.huj, align 8, !tbaa !91
  %.not46.i1297.wide.3 = icmp eq i64 %i.hud, 0
  br i1 %.not46.i1297.wide.3, label %._crit_edge5709, label %scalar.ph10553, !llvm.loop !228

._crit_edge5709:                                  ; preds = %scalar.ph10553.prol.loopexit, %scalar.ph10553, %middle.block10562, %.preheader4124
  %i.huk = add i32 %i.hrv, %i.hru
  store i32 %i.huk, ptr %11, align 8, !tbaa !177
  %.not47.i12995710 = icmp eq i32 %i.hru, 0
  br i1 %.not47.i12995710, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291, label %.lr.ph5713

.lr.ph5713:                                       ; preds = %._crit_edge5709
  %i.hul = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hum = lshr exact i32 %i.hrs, 3
  %i.hun = zext nneg i32 %i.hum to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hul, i8 0, i64 %i.hun, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291

bb.arr:                                           ; preds = %bb.arq
  %i.huo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 12 uses
  %i.hup = zext i32 %i.hrv to i64                 ; 10 uses
  %i.huq = getelementptr inbounds nuw [8 x i8], ptr %i.huo, i64 %i.hup
  store i64 0, ptr %i.huq, align 8, !tbaa !91
  %.not.i12935697 = icmp eq i32 %i.hrv, 0
  %.pre6917 = zext nneg i32 %i.hrt to i64         ; 5 uses
  br i1 %.not.i12935697, label %._crit_edge5701, label %.lr.ph5700

.lr.ph5700:                                       ; preds = %bb.arr
  %i.hur = sub nuw nsw i32 64, %i.hrt
  %i.hus = zext nneg i32 %i.hur to i64            ; 4 uses
  %min.iters.check10533 = icmp ult i32 %i.hrv, 20
  br i1 %min.iters.check10533, label %scalar.ph10532.preheader, label %vector.scevcheck10527

vector.scevcheck10527:                            ; preds = %.lr.ph5700
  %i.hut = add nsw i64 %i.hup, -1                 ; 2 uses
  %i.huu = add i32 %i.hrv, %i.hru
  %i.huv = trunc i64 %i.hut to i32
  %i.huw = icmp ult i32 %i.huu, %i.huv
  %i.hux = icmp ugt i64 %i.hut, 4294967295
  %i.huy = or i1 %i.huw, %i.hux
  br i1 %i.huy, label %scalar.ph10532.preheader, label %vector.memcheck10528

vector.memcheck10528:                             ; preds = %vector.scevcheck10527
  %i.huz = shl nuw nsw i64 %i.hup, 3              ; 2 uses
  %i.hva = add i32 %i.hrv, %i.hru
  %i.hvb = zext i32 %i.hva to i64
  %i.hvc = shl nuw nsw i64 %i.hvb, 3              ; 2 uses
  %i.hvd = sub nsw i64 %i.hvc, %i.huz
  %diff.check10529 = icmp ugt i64 %i.hvd, -32
  %i.hve = sub nsw i64 %i.huz, %i.hvc
  %i.hvf = add nsw i64 %i.hve, -9
  %diff.check10530 = icmp ult i64 %i.hvf, 31
  %conflict.rdx10531 = or i1 %diff.check10529, %diff.check10530
  br i1 %conflict.rdx10531, label %scalar.ph10532.preheader, label %vector.ph10534

vector.ph10534:                                   ; preds = %vector.memcheck10528
  %n.vec10535 = and i64 %i.hup, 4294967292        ; 2 uses
  %i.hvg = and i64 %i.hup, 3
  %broadcast.splatinsert10536 = insertelement <2 x i64> poison, i64 %i.hus, i64 0
  %broadcast.splat10537 = shufflevector <2 x i64> %broadcast.splatinsert10536, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10538 = insertelement <2 x i64> poison, i64 %.pre6917, i64 0
  %broadcast.splat10539 = shufflevector <2 x i64> %broadcast.splatinsert10538, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10540

vector.body10540:                                 ; preds = %vector.body10540, %vector.ph10534
  %index10541 = phi i64 [ 0, %vector.ph10534 ], [ %index.next10546, %vector.body10540 ] ; 2 uses
  %i.hvh = sub i64 %i.hup, %index10541            ; 3 uses
  %i.hvi = getelementptr inbounds nuw [8 x i8], ptr %i.huo, i64 %i.hvh ; 2 uses
  %i.hvj = getelementptr inbounds i8, ptr %i.hvi, i64 -8
  %i.hvk = getelementptr inbounds i8, ptr %i.hvi, i64 -24
  %wide.load10542 = load <2 x i64>, ptr %i.hvj, align 8, !tbaa !91
  %wide.load10543 = load <2 x i64>, ptr %i.hvk, align 8, !tbaa !91
  %i.hvl = shl <2 x i64> %wide.load10542, %broadcast.splat10539
  %i.hvm = shl <2 x i64> %wide.load10543, %broadcast.splat10539
  %i.hvn = getelementptr [8 x i8], ptr %11, i64 %i.hvh ; 2 uses
  %i.hvo = getelementptr i8, ptr %i.hvn, i64 -8
  %i.hvp = getelementptr i8, ptr %i.hvn, i64 -24
  %wide.load10544 = load <2 x i64>, ptr %i.hvo, align 8, !tbaa !91
  %wide.load10545 = load <2 x i64>, ptr %i.hvp, align 8, !tbaa !91
  %i.hvq = lshr <2 x i64> %wide.load10544, %broadcast.splat10537
  %i.hvr = lshr <2 x i64> %wide.load10545, %broadcast.splat10537
  %i.hvs = or <2 x i64> %i.hvq, %i.hvl
  %i.hvt = or <2 x i64> %i.hvr, %i.hvm
  %i.hvu = trunc nuw i64 %i.hvh to i32
  %i.hvv = add i32 %i.hru, %i.hvu
  %i.hvw = zext i32 %i.hvv to i64
  %i.hvx = getelementptr inbounds nuw [8 x i8], ptr %i.huo, i64 %i.hvw ; 2 uses
  %i.hvy = getelementptr inbounds i8, ptr %i.hvx, i64 -8
  %i.hvz = getelementptr inbounds i8, ptr %i.hvx, i64 -24
  store <2 x i64> %i.hvs, ptr %i.hvy, align 8, !tbaa !91
  store <2 x i64> %i.hvt, ptr %i.hvz, align 8, !tbaa !91
  %index.next10546 = add nuw i64 %index10541, 4   ; 2 uses
  %i.hwa = icmp eq i64 %index.next10546, %n.vec10535
  br i1 %i.hwa, label %middle.block10547, label %vector.body10540, !llvm.loop !229

middle.block10547:                                ; preds = %vector.body10540
  %cmp.n10548 = icmp eq i64 %n.vec10535, %i.hup
  br i1 %cmp.n10548, label %._crit_edge5701, label %scalar.ph10532.preheader

scalar.ph10532.preheader:                         ; preds = %vector.memcheck10528, %vector.scevcheck10527, %.lr.ph5700, %middle.block10547
  %indvars.iv6585.ph = phi i64 [ %i.hup, %vector.memcheck10528 ], [ %i.hup, %vector.scevcheck10527 ], [ %i.hup, %.lr.ph5700 ], [ %i.hvg, %middle.block10547 ] ; 7 uses
  %xtraiter12368 = and i64 %indvars.iv6585.ph, 1
  %lcmp.mod12369.not = icmp eq i64 %xtraiter12368, 0
  br i1 %lcmp.mod12369.not, label %scalar.ph10532.prol.loopexit, label %scalar.ph10532.prol

scalar.ph10532.prol:                              ; preds = %scalar.ph10532.preheader
  %i.hwb = getelementptr inbounds nuw [8 x i8], ptr %i.huo, i64 %indvars.iv6585.ph
  %i.hwc = load i64, ptr %i.hwb, align 8, !tbaa !91
  %i.hwd = shl i64 %i.hwc, %.pre6917
  %i.hwe = add nsw i64 %indvars.iv6585.ph, -1
  %i.hwf = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6585.ph
  %i.hwg = load i64, ptr %i.hwf, align 8, !tbaa !91
  %i.hwh = lshr i64 %i.hwg, %i.hus
  %i.hwi = or i64 %i.hwh, %i.hwd
  %i.hwj = trunc nuw i64 %indvars.iv6585.ph to i32
  %i.hwk = add i32 %i.hru, %i.hwj
  %i.hwl = zext i32 %i.hwk to i64
  %i.hwm = getelementptr inbounds nuw [8 x i8], ptr %i.huo, i64 %i.hwl
  store i64 %i.hwi, ptr %i.hwm, align 8, !tbaa !91
  br label %scalar.ph10532.prol.loopexit

scalar.ph10532.prol.loopexit:                     ; preds = %scalar.ph10532.prol, %scalar.ph10532.preheader
  %indvars.iv6585.unr = phi i64 [ %indvars.iv6585.ph, %scalar.ph10532.preheader ], [ %i.hwe, %scalar.ph10532.prol ]
  %i.hwn = icmp eq i64 %indvars.iv6585.ph, 1
  br i1 %i.hwn, label %._crit_edge5701, label %scalar.ph10532

scalar.ph10532:                                   ; preds = %scalar.ph10532.prol.loopexit, %scalar.ph10532
  %indvars.iv6585 = phi i64 [ %i.hxd, %scalar.ph10532 ], [ %indvars.iv6585.unr, %scalar.ph10532.prol.loopexit ] ; 6 uses
  %i.hwo = getelementptr inbounds nuw [8 x i8], ptr %i.huo, i64 %indvars.iv6585
  %i.hwp = load i64, ptr %i.hwo, align 8, !tbaa !91
  %i.hwq = shl i64 %i.hwp, %.pre6917
  %i.hwr = add nsw i64 %indvars.iv6585, -1        ; 2 uses
  %i.hws = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6585
  %i.hwt = load i64, ptr %i.hws, align 8, !tbaa !91
  %i.hwu = lshr i64 %i.hwt, %i.hus
  %i.hwv = or i64 %i.hwu, %i.hwq
  %i.hww = trunc nuw i64 %indvars.iv6585 to i32
  %i.hwx = add i32 %i.hru, %i.hww
  %i.hwy = zext i32 %i.hwx to i64
  %i.hwz = getelementptr inbounds nuw [8 x i8], ptr %i.huo, i64 %i.hwy
  store i64 %i.hwv, ptr %i.hwz, align 8, !tbaa !91
  %i.hxa = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6585
  %i.hxb = load i64, ptr %i.hxa, align 8, !tbaa !91
  %i.hxc = shl i64 %i.hxb, %.pre6917
  %i.hxd = add nsw i64 %indvars.iv6585, -2        ; 2 uses
  %i.hxe = getelementptr [8 x i8], ptr %11, i64 %i.hwr
  %i.hxf = load i64, ptr %i.hxe, align 8, !tbaa !91
  %i.hxg = lshr i64 %i.hxf, %i.hus
  %i.hxh = or i64 %i.hxg, %i.hxc
  %i.hxi = trunc nuw i64 %i.hwr to i32
  %i.hxj = add i32 %i.hru, %i.hxi
  %i.hxk = zext i32 %i.hxj to i64
  %i.hxl = getelementptr inbounds nuw [8 x i8], ptr %i.huo, i64 %i.hxk
  store i64 %i.hxh, ptr %i.hxl, align 8, !tbaa !91
  %.not.i1293.wide.1 = icmp eq i64 %i.hxd, 0
  br i1 %.not.i1293.wide.1, label %._crit_edge5701, label %scalar.ph10532, !llvm.loop !230

._crit_edge5701:                                  ; preds = %scalar.ph10532.prol.loopexit, %scalar.ph10532, %middle.block10547, %bb.arr
  %i.hxm = load i64, ptr %i.huo, align 8, !tbaa !91
  %i.hxn = shl i64 %i.hxm, %.pre6917
  %i.hxo = zext nneg i32 %i.hru to i64
  %i.hxp = getelementptr inbounds nuw [8 x i8], ptr %i.huo, i64 %i.hxo
  store i64 %i.hxn, ptr %i.hxp, align 8, !tbaa !91
  %i.hxq = add i32 %i.hrv, %i.hru                 ; 2 uses
  %i.hxr = zext i32 %i.hxq to i64
  %i.hxs = getelementptr inbounds nuw [8 x i8], ptr %i.huo, i64 %i.hxr
  %i.hxt = load i64, ptr %i.hxs, align 8, !tbaa !91
  %i.hxu = icmp ne i64 %i.hxt, 0
  %i.hxv = zext i1 %i.hxu to i32
  %i.hxw = add i32 %i.hxq, %i.hxv
  store i32 %i.hxw, ptr %11, align 8, !tbaa !177
  %.not45.i12955702 = icmp eq i32 %i.hru, 0
  br i1 %.not45.i12955702, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291, label %.lr.ph5705.preheader

.lr.ph5705.preheader:                             ; preds = %._crit_edge5701
  %i.hxx = lshr i32 %i.hrs, 3
  %i.hxy = and i32 %i.hxx, 536870904
  %i.hxz = zext nneg i32 %i.hxy to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.huo, i8 0, i64 %i.hxz, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291: ; preds = %.lr.ph5705.preheader, %.lr.ph5713, %.lr.ph5722.preheader, %.lr.ph5730.preheader, %._crit_edge5701, %._crit_edge5709, %._crit_edge5718
  %i.hya = phi i32 [ %i.hro, %._crit_edge5718 ], [ %i.hll, %.lr.ph5705.preheader ], [ %i.hll, %.lr.ph5713 ], [ %i.hro, %.lr.ph5722.preheader ], [ %i.hoc, %.lr.ph5730.preheader ], [ %i.hll, %._crit_edge5701 ], [ %i.hll, %._crit_edge5709 ] ; 2 uses
  %i.hyb = load i32, ptr %11, align 8, !tbaa !177 ; 4 uses
  %i.hyc = icmp ult i32 %i.hyb, %i.hya
  br i1 %i.hyc, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread, label %bb.ars

bb.ars:                                           ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291
  %i.hyd = icmp ugt i32 %i.hyb, %i.hya
  br i1 %i.hyd, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread, label %.preheader4120

.preheader4120:                                   ; preds = %bb.ars
  %.not.i132610302 = icmp eq i32 %i.hyb, 0
  br i1 %.not.i132610302, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3437, label %.lr.ph10305

.lr.ph10305:                                      ; preds = %.preheader4120
  %i.hye = zext i32 %i.hyb to i64
  br label %bb.aru

bb.art:                                           ; preds = %bb.aru
  %i.hyf = add nsw i64 %indvars.iv660310303, -1   ; 2 uses
  %.not.i1326 = icmp eq i64 %i.hyf, 0
  br i1 %.not.i1326, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3437, label %bb.aru, !llvm.loop !191

bb.aru:                                           ; preds = %.lr.ph10305, %bb.art
  %.0.i132510304 = phi i32 [ undef, %.lr.ph10305 ], [ %.1.i1330, %bb.art ]
  %indvars.iv660310303 = phi i64 [ %i.hye, %.lr.ph10305 ], [ %i.hyf, %bb.art ] ; 3 uses
  %i.hyg = getelementptr [8 x i8], ptr %11, i64 %indvars.iv660310303
  %i.hyh = load i64, ptr %i.hyg, align 8, !tbaa !91 ; 3 uses
  %i.hyi = getelementptr [8 x i8], ptr %12, i64 %indvars.iv660310303
  %i.hyj = load i64, ptr %i.hyi, align 8, !tbaa !91 ; 3 uses
  %.not3824 = icmp ult i64 %i.hyh, %i.hyj
  %.not3825 = icmp ugt i64 %i.hyh, %i.hyj
  %..0.i1328 = select i1 %.not3825, i32 1, i32 %.0.i132510304
  %cond.i1329 = icmp eq i64 %i.hyh, %i.hyj
  %.1.i1330 = select i1 %.not3824, i32 -1, i32 %..0.i1328 ; 3 uses
  br i1 %cond.i1329, label %bb.art, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332: ; preds = %bb.aru
  %.not680.i = icmp eq i32 %.1.i1330, 0
  br i1 %.not680.i, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3437, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291, %bb.ars, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332
  %.2.i13313436 = phi i32 [ %.1.i1330, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332 ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291 ], [ 1, %bb.ars ]
  %i.hyk = icmp sgt i32 %.2.i13313436, 0
  %i.hyl = zext i1 %i.hyk to i64
  br label %bb.arv

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3437: ; preds = %bb.art, %.preheader4120, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332
  %i.hym = and i64 %.0.i1210.ph, 1
  br label %bb.arv

bb.arv:                                           ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3437, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread
  %.pn.i230 = phi i64 [ %i.hyl, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread ], [ %i.hym, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3437 ]
  %.0604.i = add nuw nsw i64 %.pn.i230, %.0.i1210.ph ; 2 uses
  %i.hyn = icmp eq i64 %.0604.i, 9218868437227405312
  br i1 %i.hyn, label %bb.arw, label %bb.asd, !prof !7

bb.arw:                                           ; preds = %bb.arv
  br i1 %.not3778, label %bb.asa, label %bb.arx, !prof !24

bb.arx:                                           ; preds = %bb.arw
  %i.hyo = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not681.i = icmp eq ptr %i.hyo, null
  br i1 %.not681.i, label %bb.arz, label %bb.ary

bb.ary:                                           ; preds = %bb.arx
  store i8 0, ptr %i.hyo, align 1, !tbaa !81
  br label %bb.arz

bb.arz:                                           ; preds = %bb.ary, %bb.arx
  %i.hyp = ptrtoint ptr %.73181 to i64
  %i.hyq = ptrtoint ptr %i.gas to i64
  %i.hyr = sub i64 %i.hyp, %i.hyq
  %i.hys = shl i64 %i.hyr, 8
  %i.hyt = or disjoint i64 %i.hys, 1
  store i64 %i.hyt, ptr %.5496.i, align 8, !tbaa !79
  %i.hyu = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store ptr %i.gas, ptr %i.hyu, align 8, !tbaa !81
  store ptr %.73181, ptr %i.g, align 8, !tbaa !92
  br label %.split3467

bb.asa:                                           ; preds = %bb.arw
  br i1 %.not3775, label %bb.asc, label %bb.asb, !prof !24

bb.asb:                                           ; preds = %bb.asa
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.hyv = select i1 %i.gax, i64 -4503599627370496, i64 9218868437227405312
  %i.hyw = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.hyv, ptr %i.hyw, align 8, !tbaa !81
  br label %.split3467

bb.asc:                                           ; preds = %bb.asa
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  store ptr %i.gas, ptr %i.e, align 8, !tbaa !92
  br label %.split3467.thread

bb.asd:                                           ; preds = %bb.arv
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.hyx = select i1 %i.gax, i64 -9223372036854775808, i64 0
  %i.hyy = or disjoint i64 %.0604.i, %i.hyx
  %i.hyz = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.hyy, ptr %i.hyz, align 8, !tbaa !81
  br label %.split3467

.split3467.thread:                                ; preds = %bb.aqw, %bb.asc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.bpp

.split3467:                                       ; preds = %bb.asd, %bb.asb, %bb.arz, %bb.aqy, %bb.aqv, %bb.aqt
  store ptr %.73181, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.preheader4140

.preheader4140:                                   ; preds = %bb.awu, %bb.awv, %bb.axd, %bb.axc, %bb.awa, %bb.avz, %bb.axo, %bb.bpg, %.split3442, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit, %.split3458, %.split3453, %.split3452, %.split3451, %.split3457, %.split3459, %.split3460, %.split3462, %.split3464, %.split3443, %.split3444, %.split3445, %.split3446, %.split3447, %.split3448, %.split3449, %.split3450, %.split3456, %.split3455, %.split3454, %.split3463, %.split3461, %.split3465, %.split3466, %.split3467
  %.16543.i.ph = phi ptr [ %.5532.i, %.split3466 ], [ %.5532.i, %.split3465 ], [ %.5532.i, %.split3464 ], [ %.5532.i, %.split3463 ], [ %.5532.i, %.split3462 ], [ %.5532.i, %.split3461 ], [ %.5532.i, %.split3460 ], [ %.5532.i, %.split3459 ], [ %.5532.i, %.split3458 ], [ %.5532.i, %.split3457 ], [ %.5532.i, %.split3456 ], [ %.5532.i, %.split3455 ], [ %.5532.i, %.split3454 ], [ %.5532.i, %.split3453 ], [ %.5532.i, %.split3452 ], [ %.5532.i, %.split3451 ], [ %.5532.i, %.split3450 ], [ %.5532.i, %.split3449 ], [ %.5532.i, %.split3448 ], [ %.5532.i, %.split3447 ], [ %.5532.i, %.split3446 ], [ %.5532.i, %.split3445 ], [ %.5532.i, %.split3444 ], [ %.5532.i, %.split3443 ], [ %.5532.i, %.split3442 ], [ %i.ixu, %bb.axo ], [ %i.mnl, %bb.bpg ], [ %.13540.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11538.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9536.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7534.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.13540.i, %bb.awa ], [ %.5532.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.5532.i, %.split3467 ], [ %.13540.i, %bb.avz ], [ %.15542.i, %bb.axc ], [ %.15542.i, %bb.axd ], [ %.15542.i, %bb.awv ], [ %.15542.i, %bb.awu ] ; 2 uses
  %.16507.i.ph = phi ptr [ %.5496.i, %.split3466 ], [ %.5496.i, %.split3465 ], [ %.5496.i, %.split3464 ], [ %.5496.i, %.split3463 ], [ %.5496.i, %.split3462 ], [ %.5496.i, %.split3461 ], [ %.5496.i, %.split3460 ], [ %.5496.i, %.split3459 ], [ %.5496.i, %.split3458 ], [ %.5496.i, %.split3457 ], [ %.5496.i, %.split3456 ], [ %.5496.i, %.split3455 ], [ %.5496.i, %.split3454 ], [ %.5496.i, %.split3453 ], [ %.5496.i, %.split3452 ], [ %.5496.i, %.split3451 ], [ %.5496.i, %.split3450 ], [ %.5496.i, %.split3449 ], [ %.5496.i, %.split3448 ], [ %.5496.i, %.split3447 ], [ %.5496.i, %.split3446 ], [ %.5496.i, %.split3445 ], [ %.5496.i, %.split3444 ], [ %.5496.i, %.split3443 ], [ %.5496.i, %.split3442 ], [ %.17508.i, %bb.axo ], [ %.25516.i, %bb.bpg ], [ %.13504.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11502.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9500.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7498.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.13504.i, %bb.awa ], [ %.5496.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.5496.i, %.split3467 ], [ %.13504.i, %bb.avz ], [ %.15506.i, %bb.axc ], [ %.15506.i, %bb.axd ], [ %.15506.i, %bb.awv ], [ %.15506.i, %bb.awu ] ; 2 uses
  %.16481.i.ph = phi ptr [ %.5470.i, %.split3466 ], [ %.5470.i, %.split3465 ], [ %.5470.i, %.split3464 ], [ %.5470.i, %.split3463 ], [ %.5470.i, %.split3462 ], [ %.5470.i, %.split3461 ], [ %.5470.i, %.split3460 ], [ %.5470.i, %.split3459 ], [ %.5470.i, %.split3458 ], [ %.5470.i, %.split3457 ], [ %.5470.i, %.split3456 ], [ %.5470.i, %.split3455 ], [ %.5470.i, %.split3454 ], [ %.5470.i, %.split3453 ], [ %.5470.i, %.split3452 ], [ %.5470.i, %.split3451 ], [ %.5470.i, %.split3450 ], [ %.5470.i, %.split3449 ], [ %.5470.i, %.split3448 ], [ %.5470.i, %.split3447 ], [ %.5470.i, %.split3446 ], [ %.5470.i, %.split3445 ], [ %.5470.i, %.split3444 ], [ %.5470.i, %.split3443 ], [ %.5470.i, %.split3442 ], [ %.17482.i, %bb.axo ], [ %.25490.i, %bb.bpg ], [ %.13478.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11476.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9474.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7472.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.13478.i, %bb.awa ], [ %.5470.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.5470.i, %.split3467 ], [ %.13478.i, %bb.avz ], [ %.15480.i, %bb.axc ], [ %.15480.i, %bb.axd ], [ %.15480.i, %bb.awv ], [ %.15480.i, %bb.awu ] ; 2 uses
  %.16464.i.ph = phi ptr [ %.5453.i, %.split3466 ], [ %.5453.i, %.split3465 ], [ %.5453.i, %.split3464 ], [ %.5453.i, %.split3463 ], [ %.5453.i, %.split3462 ], [ %.5453.i, %.split3461 ], [ %.5453.i, %.split3460 ], [ %.5453.i, %.split3459 ], [ %.5453.i, %.split3458 ], [ %.5453.i, %.split3457 ], [ %.5453.i, %.split3456 ], [ %.5453.i, %.split3455 ], [ %.5453.i, %.split3454 ], [ %.5453.i, %.split3453 ], [ %.5453.i, %.split3452 ], [ %.5453.i, %.split3451 ], [ %.5453.i, %.split3450 ], [ %.5453.i, %.split3449 ], [ %.5453.i, %.split3448 ], [ %.5453.i, %.split3447 ], [ %.5453.i, %.split3446 ], [ %.5453.i, %.split3445 ], [ %.5453.i, %.split3444 ], [ %.5453.i, %.split3443 ], [ %.5453.i, %.split3442 ], [ %.17.i185, %bb.axo ], [ %.25.i182, %bb.bpg ], [ %.13461.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11459.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9457.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7455.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.13461.i, %bb.awa ], [ %.5453.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.5453.i, %.split3467 ], [ %.13461.i, %bb.avz ], [ %.15463.i, %bb.axc ], [ %.15463.i, %bb.axd ], [ %.15463.i, %bb.awv ], [ %.15463.i, %bb.awu ] ; 5 uses
  %.2442.i.ph = phi i64 [ %i.gat, %.split3466 ], [ %i.gat, %.split3465 ], [ %i.gat, %.split3464 ], [ %i.gat, %.split3463 ], [ %i.gat, %.split3462 ], [ %i.gat, %.split3461 ], [ %i.gat, %.split3460 ], [ %i.gat, %.split3459 ], [ %i.gat, %.split3458 ], [ %i.gat, %.split3457 ], [ %i.gat, %.split3456 ], [ %i.gat, %.split3455 ], [ %i.gat, %.split3454 ], [ %i.gat, %.split3453 ], [ %i.gat, %.split3452 ], [ %i.gat, %.split3451 ], [ %i.gat, %.split3450 ], [ %i.gat, %.split3449 ], [ %i.gat, %.split3448 ], [ %i.gat, %.split3447 ], [ %i.gat, %.split3446 ], [ %i.gat, %.split3445 ], [ %i.gat, %.split3444 ], [ %i.gat, %.split3443 ], [ %i.gat, %.split3442 ], [ %i.ixw, %bb.axo ], [ %i.mnn, %bb.bpg ], [ %i.itu, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %i.itc, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %i.isi, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %i.hzr, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %i.itu, %bb.awa ], [ %i.gat, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %i.gat, %.split3467 ], [ %i.itu, %bb.avz ], [ %i.ivm, %bb.axc ], [ %i.ivm, %bb.axd ], [ %i.ivm, %bb.awv ], [ %i.ivm, %bb.awu ] ; 2 uses
  %.9.i184.ph = phi i64 [ %.3.i224, %.split3466 ], [ %.3.i224, %.split3465 ], [ %.3.i224, %.split3464 ], [ %.3.i224, %.split3463 ], [ %.3.i224, %.split3462 ], [ %.3.i224, %.split3461 ], [ %.3.i224, %.split3460 ], [ %.3.i224, %.split3459 ], [ %.3.i224, %.split3458 ], [ %.3.i224, %.split3457 ], [ %.3.i224, %.split3456 ], [ %.3.i224, %.split3455 ], [ %.3.i224, %.split3454 ], [ %.3.i224, %.split3453 ], [ %.3.i224, %.split3452 ], [ %.3.i224, %.split3451 ], [ %.3.i224, %.split3450 ], [ %.3.i224, %.split3449 ], [ %.3.i224, %.split3448 ], [ %.3.i224, %.split3447 ], [ %.3.i224, %.split3446 ], [ %.3.i224, %.split3445 ], [ %.3.i224, %.split3444 ], [ %.3.i224, %.split3443 ], [ %.3.i224, %.split3442 ], [ %.10.i186, %bb.axo ], [ %.16.i183, %bb.bpg ], [ %.7.i210, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.6.i213, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.5.i216, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.4.i219, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.7.i210, %bb.awa ], [ %.3.i224, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.3.i224, %.split3467 ], [ %.7.i210, %bb.avz ], [ %.8.i221, %bb.axc ], [ %.8.i221, %bb.axd ], [ %.8.i221, %bb.awv ], [ %.8.i221, %bb.awu ] ; 2 uses
  %i.hza = and i32 %2, 8
  %.not3833 = icmp eq i32 %i.hza, 0
  %.pre6854 = load ptr, ptr %i.e, align 8, !tbaa !92
  br label %.backedge4142

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread: ; preds = %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit890, %bb.akd, %bb.aph, %bb.apq, %bb.aqb, %bb.apa, %bb.apd, %bb.akh, %bb.akj, %bb.aor
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.bpp

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit: ; preds = %bb.ajy, %bb.ajx, %bb.ajp, %bb.ajq, %bb.aka, %bb.als, %bb.alv, %bb.aly, %bb.amb, %bb.ame, %bb.apj, %bb.apn, %bb.app, %bb.apt, %bb.apy, %bb.aqa
  %.343208.ph.sink = phi ptr [ %.113185, %bb.aqa ], [ %i.gcm, %bb.aka ], [ %i.gff, %bb.als ], [ %i.gfm, %bb.alv ], [ %i.gft, %bb.aly ], [ %i.gga, %bb.amb ], [ %i.ggh, %bb.ame ], [ %.103184.lcssa, %bb.apj ], [ %.103184.lcssa, %bb.apn ], [ %.103184.lcssa, %bb.app ], [ %.113185, %bb.apt ], [ %.113185, %bb.apy ], [ %i.gcg, %bb.ajx ], [ %i.gcg, %bb.ajy ], [ %.037.i1162, %bb.ajp ], [ %.037.i1162, %bb.ajq ]
  store ptr %.343208.ph.sink, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.preheader4140

bb.ase:                                           ; preds = %bb.aix
  switch i8 %i.fzy, label %bb.awd [
    i8 34, label %bb.asf
    i8 116, label %bb.avj
    i8 102, label %bb.avm
    i8 110, label %bb.avp
    i8 93, label %bb.awb
  ]

bb.asf:                                           ; preds = %bb.ase
  %i.hzb = getelementptr inbounds nuw i8, ptr %.3494.i.ph, i64 16 ; 3 uses
  %.not609.i217 = icmp ult ptr %i.hzb, %.3468.i.ph
  br i1 %.not609.i217, label %bb.ash, label %bb.asg, !prof !24

bb.asg:                                           ; preds = %bb.asf
  %i.hzc = lshr i64 %.2.i162.ph, 1
  %i.hzd = add i64 %i.hzc, %.2.i162.ph            ; 3 uses
  %i.hze = shl i64 %.2.i162.ph, 4
  %i.hzf = shl i64 %i.hzd, 4
  %i.hzg = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3451.i.ph, i64 noundef %i.hze, i64 noundef %i.hzf), !inline_history !219 ; 5 uses
  %.not610.i218 = icmp eq ptr %i.hzg, null
  %.pre6891 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not610.i218, label %bb.bpt, label %.thread3468

.thread3468:                                      ; preds = %bb.asg
  %i.hzh = ptrtoint ptr %i.hzb to i64
  %i.hzi = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.hzj = sub i64 %i.hzh, %i.hzi
  %i.hzk = getelementptr inbounds nuw i8, ptr %i.hzg, i64 %i.hzj
  %i.hzl = ptrtoint ptr %.3530.i.ph to i64
  %i.hzm = sub i64 %i.hzl, %i.hzi
  %i.hzn = getelementptr inbounds nuw i8, ptr %i.hzg, i64 %i.hzm
  %i.hzo = getelementptr [16 x i8], ptr %i.hzg, i64 %i.hzd
  %i.hzp = getelementptr i8, ptr %i.hzo, i64 -32
  br label %bb.ash

end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %.not607.i215 = icmp eq ptr %i.irw, null
  %.pre6890 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not607.i215, label %bb.bpt, label %.thread3475

.thread3475:                                      ; preds = %bb.avk
  %i.irx = ptrtoint ptr %i.irr to i64
  %i.iry = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.irz = sub i64 %i.irx, %i.iry
  %i.isa = getelementptr inbounds nuw i8, ptr %i.irw, i64 %i.irz
  %i.isb = ptrtoint ptr %.3530.i.ph to i64
  %i.isc = sub i64 %i.isb, %i.iry
  %i.isd = getelementptr inbounds nuw i8, ptr %i.irw, i64 %i.isc
  %i.ise = getelementptr [16 x i8], ptr %i.irw, i64 %i.irt
  %i.isf = getelementptr i8, ptr %i.ise, i64 -32
  br label %bb.avl

bb.avl:                                           ; preds = %.thread3475, %bb.avj
  %i.isg = phi ptr [ %.pre6890, %.thread3475 ], [ %.promoted5619, %bb.avj ] ; 3 uses
  %.9536.i = phi ptr [ %i.isd, %.thread3475 ], [ %.3530.i.ph, %bb.avj ]
  %.9500.i = phi ptr [ %i.isa, %.thread3475 ], [ %i.irr, %bb.avj ] ; 2 uses
  %.9474.i = phi ptr [ %i.isf, %.thread3475 ], [ %.3468.i.ph, %bb.avj ]
  %.9457.i = phi ptr [ %i.irw, %.thread3475 ], [ %.3451.i.ph, %bb.avj ] ; 2 uses
  %.5.i216 = phi i64 [ %i.irt, %.thread3475 ], [ %.2.i162.ph, %bb.avj ]
  %.sroa.01.0.copyload.i1143 = load i32, ptr %i.isg, align 1
  %i.ish = icmp eq i32 %.sroa.01.0.copyload.i1143, 1702195828
  br i1 %i.ish, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, !prof !24

_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit: ; preds = %bb.avl
  %i.isi = add i64 %.1441.i.ph, 1
  store i64 11, ptr %.9500.i, align 8, !tbaa !79
  %i.isj = getelementptr inbounds nuw i8, ptr %i.isg, i64 4
  store ptr %i.isj, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4140

bb.avm:                                           ; preds = %bb.ase
  %i.isk = getelementptr inbounds nuw i8, ptr %.3494.i.ph, i64 16 ; 3 uses
  %.not604.i211 = icmp ult ptr %i.isk, %.3468.i.ph
  br i1 %.not604.i211, label %bb.avo, label %bb.avn, !prof !24

bb.avn:                                           ; preds = %bb.avm
  %i.isl = lshr i64 %.2.i162.ph, 1
  %i.ism = add i64 %i.isl, %.2.i162.ph            ; 3 uses
  %i.isn = shl i64 %.2.i162.ph, 4
  %i.iso = shl i64 %i.ism, 4
  %i.isp = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3451.i.ph, i64 noundef %i.isn, i64 noundef %i.iso), !inline_history !219 ; 5 uses
  %.not605.i212 = icmp eq ptr %i.isp, null
  %.pre6889 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not605.i212, label %bb.bpt, label %.thread3481

.thread3481:                                      ; preds = %bb.avn
  %i.isq = ptrtoint ptr %i.isk to i64
  %i.isr = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.iss = sub i64 %i.isq, %i.isr
  %i.ist = getelementptr inbounds nuw i8, ptr %i.isp, i64 %i.iss
  %i.isu = ptrtoint ptr %.3530.i.ph to i64
  %i.isv = sub i64 %i.isu, %i.isr
  %i.isw = getelementptr inbounds nuw i8, ptr %i.isp, i64 %i.isv
  %i.isx = getelementptr [16 x i8], ptr %i.isp, i64 %i.ism
  %i.isy = getelementptr i8, ptr %i.isx, i64 -32
  br label %bb.avo

bb.avo:                                           ; preds = %.thread3481, %bb.avm
  %i.isz = phi ptr [ %.pre6889, %.thread3481 ], [ %.promoted5619, %bb.avm ] ; 3 uses
  %.11538.i = phi ptr [ %i.isw, %.thread3481 ], [ %.3530.i.ph, %bb.avm ]
  %.11502.i = phi ptr [ %i.ist, %.thread3481 ], [ %i.isk, %bb.avm ] ; 2 uses
  %.11476.i = phi ptr [ %i.isy, %.thread3481 ], [ %.3468.i.ph, %bb.avm ]
  %.11459.i = phi ptr [ %i.isp, %.thread3481 ], [ %.3451.i.ph, %bb.avm ] ; 2 uses
  %.6.i213 = phi i64 [ %i.ism, %.thread3481 ], [ %.2.i162.ph, %bb.avm ]
  %i.ita = getelementptr inbounds nuw i8, ptr %i.isz, i64 1
  %.sroa.01.0.copyload.i1139 = load i32, ptr %i.ita, align 1
  %i.itb = icmp eq i32 %.sroa.01.0.copyload.i1139, 1702063201
  br i1 %i.itb, label %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, !prof !24

_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit: ; preds = %bb.avo
  %i.itc = add i64 %.1441.i.ph, 1
  store i64 3, ptr %.11502.i, align 8, !tbaa !79
  %i.itd = getelementptr inbounds nuw i8, ptr %i.isz, i64 5
  store ptr %i.itd, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4140

bb.avp:                                           ; preds = %bb.ase
  %i.ite = getelementptr inbounds nuw i8, ptr %.3494.i.ph, i64 16 ; 3 uses
  %.not602.i208 = icmp ult ptr %i.ite, %.3468.i.ph
  br i1 %.not602.i208, label %bb.avr, label %bb.avq, !prof !24

bb.avq:                                           ; preds = %bb.avp
  %i.itf = lshr i64 %.2.i162.ph, 1
  %i.itg = add i64 %i.itf, %.2.i162.ph            ; 3 uses
  %i.ith = shl i64 %.2.i162.ph, 4
  %i.iti = shl i64 %i.itg, 4
  %i.itj = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3451.i.ph, i64 noundef %i.ith, i64 noundef %i.iti), !inline_history !219 ; 5 uses
  %.not603.i209 = icmp eq ptr %i.itj, null
  %.pre6888 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not603.i209, label %bb.bpt, label %.thread3487

.thread3487:                                      ; preds = %bb.avq
  %i.itk = ptrtoint ptr %i.ite to i64
  %i.itl = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.itm = sub i64 %i.itk, %i.itl
  %i.itn = getelementptr inbounds nuw i8, ptr %i.itj, i64 %i.itm
  %i.ito = ptrtoint ptr %.3530.i.ph to i64
  %i.itp = sub i64 %i.ito, %i.itl
  %i.itq = getelementptr inbounds nuw i8, ptr %i.itj, i64 %i.itp
  %i.itr = getelementptr [16 x i8], ptr %i.itj, i64 %i.itg
  %i.its = getelementptr i8, ptr %i.itr, i64 -32
  br label %bb.avr

bb.avr:                                           ; preds = %.thread3487, %bb.avp
  %i.itt = phi ptr [ %.pre6888, %.thread3487 ], [ %.promoted5619, %bb.avp ] ; 8 uses
  %.13540.i = phi ptr [ %i.itq, %.thread3487 ], [ %.3530.i.ph, %bb.avp ] ; 3 uses
  %.13504.i = phi ptr [ %i.itn, %.thread3487 ], [ %i.ite, %bb.avp ] ; 8 uses
  %.13478.i = phi ptr [ %i.its, %.thread3487 ], [ %.3468.i.ph, %bb.avp ] ; 3 uses
  %.13461.i = phi ptr [ %i.itj, %.thread3487 ], [ %.3451.i.ph, %bb.avp ] ; 7 uses
  %.7.i210 = phi i64 [ %i.itg, %.thread3487 ], [ %.2.i162.ph, %bb.avp ] ; 3 uses
  %i.itu = add i64 %.1441.i.ph, 1                 ; 3 uses
  %.sroa.01.0.copyload.i1135 = load i32, ptr %i.itt, align 1 ; 4 uses
  %i.itv = icmp eq i32 %.sroa.01.0.copyload.i1135, 1819047278
  %i.itw = trunc i32 %.sroa.01.0.copyload.i1135 to i8
  %i.itx = lshr i32 %.sroa.01.0.copyload.i1135, 8
  %i.ity = trunc i32 %i.itx to i8
  %i.itz = lshr i32 %.sroa.01.0.copyload.i1135, 16
  %i.iua = trunc i32 %i.itz to i8
  br i1 %i.itv, label %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit, label %bb.avs, !prof !24

_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit: ; preds = %bb.avr
  store i64 2, ptr %.13504.i, align 8, !tbaa !79
  %i.iub = getelementptr inbounds nuw i8, ptr %i.itt, i64 4
  store ptr %i.iub, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4140

bb.avs:                                           ; preds = %bb.avr
  br i1 %.not3775, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, label %bb.avt, !prof !24

bb.avt:                                           ; preds = %bb.avs
  switch i8 %i.itw, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 78, label %bb.avu
    i8 110, label %bb.avu
  ]

bb.avu:                                           ; preds = %bb.avt, %bb.avt
  switch i8 %i.ity, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 65, label %bb.avv
    i8 97, label %bb.avv
  ]

bb.avv:                                           ; preds = %bb.avu, %bb.avu
  switch i8 %i.iua, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 78, label %bb.avw
    i8 110, label %bb.avw
  ]

bb.avw:                                           ; preds = %bb.avv, %bb.avv
  %i.iuc = getelementptr inbounds nuw i8, ptr %i.itt, i64 3 ; 2 uses
  store ptr %i.iuc, ptr %i.e, align 8, !tbaa !92
  br i1 %i.fyu, label %bb.avx, label %bb.awa

bb.avx:                                           ; preds = %bb.avw
  %i.iud = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not31.i = icmp eq ptr %i.iud, null
  br i1 %.not31.i, label %bb.avz, label %bb.avy

bb.avy:                                           ; preds = %bb.avx
  store i8 0, ptr %i.iud, align 1, !tbaa !81
  br label %bb.avz

bb.avz:                                           ; preds = %bb.avy, %bb.avx
  store ptr %i.iuc, ptr %i.g, align 8, !tbaa !92
  store i64 769, ptr %.13504.i, align 8, !tbaa !79
  %i.iue = getelementptr inbounds nuw i8, ptr %.13504.i, i64 8
  store ptr %i.itt, ptr %i.iue, align 8, !tbaa !81
  br label %.preheader4140

bb.awa:                                           ; preds = %bb.avw
  store i64 20, ptr %.13504.i, align 8, !tbaa !79
  %i.iuf = getelementptr inbounds nuw i8, ptr %.13504.i, i64 8
  store i64 9221120237041090560, ptr %i.iuf, align 8, !tbaa !81
  br label %.preheader4140

bb.awb:                                           ; preds = %bb.ase
  %i.iug = getelementptr inbounds nuw i8, ptr %.promoted5619, i64 1 ; 6 uses
  store ptr %i.iug, ptr %i.e, align 8, !tbaa !92
  %i.iuh = icmp eq i64 %.1441.i.ph, 0
  br i1 %i.iuh, label %bb.axn, label %bb.awc, !prof !24

bb.awc:                                           ; preds = %bb.awb
  %i.iui = and i32 %2, 4
  %.not3738 = icmp eq i32 %i.iui, 0
  br i1 %.not3738, label %.preheader4117, label %bb.axn, !prof !24

.preheader4117:                                   ; preds = %bb.awc
  %i.iuj = load i8, ptr %i.iug, align 1, !tbaa !81
  %.not600.i2075732 = icmp eq i8 %i.iuj, 44
  br i1 %.not600.i2075732, label %.loopexit4118, label %.lr.ph5733

.lr.ph5733:                                       ; preds = %.preheader4117, %.lr.ph5733
  %i.iuk = phi ptr [ %i.iul, %.lr.ph5733 ], [ %i.iug, %.preheader4117 ]
  %i.iul = getelementptr inbounds i8, ptr %i.iuk, i64 -1 ; 4 uses
  store ptr %i.iul, ptr %i.e, align 8, !tbaa !92
  %i.ium = load i8, ptr %i.iul, align 1, !tbaa !81
  %.not600.i207 = icmp eq i8 %i.ium, 44
  br i1 %.not600.i207, label %.loopexit4118, label %.lr.ph5733, !llvm.loop !231

bb.awd:                                           ; preds = %bb.ase
  %i.iun = and i8 %i.gab, 1
  %.not3774 = icmp eq i8 %i.iun, 0
  br i1 %.not3774, label %bb.awe, label %.preheader4132

.preheader4132:                                   ; preds = %bb.awd, %.preheader4132
  %i.iuo = phi ptr [ %i.iup, %.preheader4132 ], [ %.promoted5619, %bb.awd ]
  %i.iup = getelementptr inbounds nuw i8, ptr %i.iuo, i64 1 ; 4 uses
  store ptr %i.iup, ptr %i.e, align 8, !tbaa !92
  %i.iuq = load i8, ptr %i.iup, align 1, !tbaa !81
  %i.iur = zext i8 %i.iuq to i64
  %i.ius = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.iur
  %i.iut = load i8, ptr %i.ius, align 1, !tbaa !81
  %i.iuu = and i8 %i.iut, 1
  %.not3777 = icmp eq i8 %i.iuu, 0
  br i1 %.not3777, label %.backedge4137.backedge, label %.preheader4132, !llvm.loop !232

bb.awe:                                           ; preds = %bb.awd
  br i1 %.not3775, label %bb.axe, label %bb.awf, !prof !24

bb.awf:                                           ; preds = %bb.awe
  switch i8 %i.fzy, label %bb.axe [
    i8 105, label %bb.awg
    i8 73, label %bb.awg
    i8 78, label %bb.awg
  ]

bb.awg:                                           ; preds = %bb.awf, %bb.awf, %bb.awf
  %i.iuv = getelementptr inbounds nuw i8, ptr %.3494.i.ph, i64 16 ; 3 uses
  %.not597.i = icmp ult ptr %i.iuv, %.3468.i.ph
  br i1 %.not597.i, label %bb.awi, label %bb.awh, !prof !24

bb.awh:                                           ; preds = %bb.awg
  %i.iuw = lshr i64 %.2.i162.ph, 1
  %i.iux = add i64 %i.iuw, %.2.i162.ph            ; 3 uses
  %i.iuy = shl i64 %.2.i162.ph, 4
  %i.iuz = shl i64 %i.iux, 4
  %i.iva = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3451.i.ph, i64 noundef %i.iuy, i64 noundef %i.iuz), !inline_history !219 ; 5 uses
  %.not598.i220 = icmp eq ptr %i.iva, null
  %.pre6887 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 3 uses
  br i1 %.not598.i220, label %bb.bpt, label %.thread3494

.thread3494:                                      ; preds = %bb.awh
  %i.ivb = ptrtoint ptr %i.iuv to i64
  %i.ivc = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.ivd = sub i64 %i.ivb, %i.ivc
  %i.ive = getelementptr inbounds nuw i8, ptr %i.iva, i64 %i.ivd
  %i.ivf = ptrtoint ptr %.3530.i.ph to i64
  %i.ivg = sub i64 %i.ivf, %i.ivc
  %i.ivh = getelementptr inbounds nuw i8, ptr %i.iva, i64 %i.ivg
  %i.ivi = getelementptr [16 x i8], ptr %i.iva, i64 %i.iux
  %i.ivj = getelementptr i8, ptr %i.ivi, i64 -32
  %.pre6872 = load i8, ptr %.pre6887, align 1, !tbaa !81
  br label %bb.awi

bb.awi:                                           ; preds = %.thread3494, %bb.awg
  %i.ivk = phi i8 [ %.pre6872, %.thread3494 ], [ %i.fzy, %bb.awg ] ; 2 uses
  %i.ivl = phi ptr [ %.pre6887, %.thread3494 ], [ %.promoted5619, %bb.awg ] ; 18 uses
  %.15542.i = phi ptr [ %i.ivh, %.thread3494 ], [ %.3530.i.ph, %bb.awg ] ; 4 uses
  %.15506.i = phi ptr [ %i.ive, %.thread3494 ], [ %i.iuv, %bb.awg ] ; 12 uses
  %.15480.i = phi ptr [ %i.ivj, %.thread3494 ], [ %.3468.i.ph, %bb.awg ] ; 4 uses
  %.15463.i = phi ptr [ %i.iva, %.thread3494 ], [ %.3451.i.ph, %bb.awg ] ; 8 uses
  %.8.i221 = phi i64 [ %i.iux, %.thread3494 ], [ %.2.i162.ph, %bb.awg ] ; 4 uses
  %i.ivm = add i64 %.1441.i.ph, 1                 ; 4 uses
  switch i8 %i.ivk, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 73, label %bb.awj
    i8 105, label %bb.awj
    i8 78, label %bb.awx
    i8 110, label %bb.awx
  ]

bb.awj:                                           ; preds = %bb.awi, %bb.awi
  %i.ivn = getelementptr inbounds nuw i8, ptr %i.ivl, i64 1
  %i.ivo = load i8, ptr %i.ivn, align 1, !tbaa !81
  switch i8 %i.ivo, label %bb.aww [
    i8 78, label %bb.awk
    i8 110, label %bb.awk
  ]

bb.awk:                                           ; preds = %bb.awj, %bb.awj
  %i.ivp = getelementptr inbounds nuw i8, ptr %i.ivl, i64 2
  %i.ivq = load i8, ptr %i.ivp, align 1, !tbaa !81
  switch i8 %i.ivq, label %bb.aww [
    i8 70, label %bb.awl
    i8 102, label %bb.awl
  ]

bb.awl:                                           ; preds = %bb.awk, %bb.awk
  %i.ivr = getelementptr inbounds nuw i8, ptr %i.ivl, i64 3 ; 6 uses
  %i.ivs = load i8, ptr %i.ivr, align 1, !tbaa !81
  switch i8 %i.ivs, label %bb.awr [
    i8 73, label %bb.awm
    i8 105, label %bb.awm
  ]

bb.awm:                                           ; preds = %bb.awl, %bb.awl
  %i.ivt = getelementptr inbounds nuw i8, ptr %i.ivl, i64 4
  %i.ivu = load i8, ptr %i.ivt, align 1, !tbaa !81
  switch i8 %i.ivu, label %bb.awr [
    i8 78, label %bb.awn
    i8 110, label %bb.awn
  ]

bb.awn:                                           ; preds = %bb.awm, %bb.awm
  %i.ivv = getelementptr inbounds nuw i8, ptr %i.ivl, i64 5
  %i.ivw = load i8, ptr %i.ivv, align 1, !tbaa !81
  switch i8 %i.ivw, label %bb.awr [
    i8 73, label %bb.awo
    i8 105, label %bb.awo
  ]

bb.awo:                                           ; preds = %bb.awn, %bb.awn
  %i.ivx = getelementptr inbounds nuw i8, ptr %i.ivl, i64 6
  %i.ivy = load i8, ptr %i.ivx, align 1, !tbaa !81
  switch i8 %i.ivy, label %bb.awr [
    i8 84, label %bb.awp
    i8 116, label %bb.awp
  ]

bb.awp:                                           ; preds = %bb.awo, %bb.awo
  %i.ivz = getelementptr inbounds nuw i8, ptr %i.ivl, i64 7
  %i.iwa = load i8, ptr %i.ivz, align 1, !tbaa !81
  switch i8 %i.iwa, label %bb.awr [
    i8 89, label %bb.awq
    i8 121, label %bb.awq
  ]

bb.awq:                                           ; preds = %bb.awp, %bb.awp
  %i.iwb = getelementptr inbounds nuw i8, ptr %i.ivl, i64 8
  br label %bb.awr

bb.awr:                                           ; preds = %bb.awq, %bb.awp, %bb.awo, %bb.awn, %bb.awm, %bb.awl
  %.037.i1156 = phi ptr [ %i.iwb, %bb.awq ], [ %i.ivr, %bb.awp ], [ %i.ivr, %bb.awo ], [ %i.ivr, %bb.awn ], [ %i.ivr, %bb.awm ], [ %i.ivr, %bb.awl ] ; 3 uses
  store ptr %.037.i1156, ptr %i.e, align 8, !tbaa !92
  br i1 %i.fyu, label %bb.aws, label %bb.awv

bb.aws:                                           ; preds = %bb.awr
  %i.iwc = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not48.i1158 = icmp eq ptr %i.iwc, null
  br i1 %.not48.i1158, label %bb.awu, label %bb.awt

bb.awt:                                           ; preds = %bb.aws
  store i8 0, ptr %i.iwc, align 1, !tbaa !81
  br label %bb.awu

bb.awu:                                           ; preds = %bb.awt, %bb.aws
  store ptr %.037.i1156, ptr %i.g, align 8, !tbaa !92
  %i.iwd = ptrtoint ptr %.037.i1156 to i64
  %i.iwe = ptrtoint ptr %i.ivl to i64
  %i.iwf = sub i64 %i.iwd, %i.iwe
  %i.iwg = shl i64 %i.iwf, 8
  %i.iwh = or disjoint i64 %i.iwg, 1
  store i64 %i.iwh, ptr %.15506.i, align 8, !tbaa !79
  %i.iwi = getelementptr inbounds nuw i8, ptr %.15506.i, i64 8
  store ptr %i.ivl, ptr %i.iwi, align 8, !tbaa !81
  br label %.preheader4140

bb.awv:                                           ; preds = %bb.awr
  store i64 20, ptr %.15506.i, align 8, !tbaa !79
  %i.iwj = getelementptr inbounds nuw i8, ptr %.15506.i, i64 8
  store i64 9218868437227405312, ptr %i.iwj, align 8, !tbaa !81
  br label %.preheader4140

bb.aww:                                           ; preds = %bb.awk, %bb.awj
  switch i8 %i.ivk, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 78, label %bb.awx
    i8 110, label %bb.awx
  ]

bb.awx:                                           ; preds = %bb.awi, %bb.awi, %bb.aww, %bb.aww
  %i.iwk = getelementptr inbounds nuw i8, ptr %i.ivl, i64 1
  %i.iwl = load i8, ptr %i.iwk, align 1, !tbaa !81
  switch i8 %i.iwl, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 65, label %bb.awy
    i8 97, label %bb.awy
  ]

bb.awy:                                           ; preds = %bb.awx, %bb.awx
  %i.iwm = getelementptr inbounds nuw i8, ptr %i.ivl, i64 2
  %i.iwn = load i8, ptr %i.iwm, align 1, !tbaa !81
  switch i8 %i.iwn, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 78, label %bb.awz
    i8 110, label %bb.awz
  ]

bb.awz:                                           ; preds = %bb.awy, %bb.awy
  %i.iwo = getelementptr inbounds nuw i8, ptr %i.ivl, i64 3 ; 2 uses
  store ptr %i.iwo, ptr %i.e, align 8, !tbaa !92
  br i1 %i.fyu, label %bb.axa, label %bb.axd

bb.axa:                                           ; preds = %bb.awz
  %i.iwp = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not31.i.i892 = icmp eq ptr %i.iwp, null
  br i1 %.not31.i.i892, label %bb.axc, label %bb.axb

bb.axb:                                           ; preds = %bb.axa
  store i8 0, ptr %i.iwp, align 1, !tbaa !81
  br label %bb.axc

bb.axc:                                           ; preds = %bb.axb, %bb.axa
  store ptr %i.iwo, ptr %i.g, align 8, !tbaa !92
  store i64 769, ptr %.15506.i, align 8, !tbaa !79
  %i.iwq = getelementptr inbounds nuw i8, ptr %.15506.i, i64 8
  store ptr %i.ivl, ptr %i.iwq, align 8, !tbaa !81
  br label %.preheader4140

bb.axd:                                           ; preds = %bb.awz
  store i64 20, ptr %.15506.i, align 8, !tbaa !79
  %i.iwr = getelementptr inbounds nuw i8, ptr %.15506.i, i64 8
  store i64 9221120237041090560, ptr %i.iwr, align 8, !tbaa !81
  br label %.preheader4140

bb.axe:                                           ; preds = %bb.awf, %bb.awe
  br i1 %.not3776, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, label %bb.axf, !prof !24

bb.axf:                                           ; preds = %bb.axe
  %i.iws = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e)
  %.pre6855 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 4 uses
  br i1 %i.iws, label %.backedge4137.backedge, label %bb.axg

.backedge4137.backedge:                           ; preds = %.preheader4132, %bb.axf
  %.promoted5619.be = phi ptr [ %.pre6855, %bb.axf ], [ %i.iup, %.preheader4132 ]
  br label %.backedge4137

bb.axg:                                           ; preds = %bb.axf
  %.sroa.01.0.copyload.i = load i16, ptr %.pre6855, align 1
  %i.iwt = icmp eq i16 %.sroa.01.0.copyload.i, 10799
  br i1 %i.iwt, label %bb.bpv, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

.backedge4142:                                    ; preds = %.backedge4142.backedge, %.preheader4140
  %.promoted5618 = phi ptr [ %.pre6854, %.preheader4140 ], [ %.promoted5618.be, %.backedge4142.backedge ] ; 5 uses
  %i.iwu = load i8, ptr %.promoted5618, align 1, !tbaa !81 ; 2 uses
  switch i8 %i.iwu, label %bb.axj [
    i8 44, label %bb.axh
    i8 93, label %bb.axi
  ]

bb.axh:                                           ; preds = %.backedge4142
  %i.iwv = getelementptr inbounds nuw i8, ptr %.promoted5618, i64 1 ; 2 uses
  store ptr %i.iwv, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4134

bb.axi:                                           ; preds = %.backedge4142
  %i.iww = getelementptr inbounds nuw i8, ptr %.promoted5618, i64 1 ; 2 uses
  store ptr %i.iww, ptr %i.e, align 8, !tbaa !92
  br label %bb.axn

bb.axj:                                           ; preds = %.backedge4142
  %i.iwx = zext i8 %i.iwu to i64
  %i.iwy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.iwx
  %i.iwz = load i8, ptr %i.iwy, align 1, !tbaa !81
  %i.ixa = and i8 %i.iwz, 1
  %.not3832 = icmp eq i8 %i.ixa, 0
  br i1 %.not3832, label %bb.axk, label %.preheader4138

.preheader4138:                                   ; preds = %bb.axj, %.preheader4138
  %i.ixb = phi ptr [ %i.ixc, %.preheader4138 ], [ %.promoted5618, %bb.axj ]
  %i.ixc = getelementptr inbounds nuw i8, ptr %i.ixb, i64 1 ; 4 uses
  store ptr %i.ixc, ptr %i.e, align 8, !tbaa !92
  %i.ixd = load i8, ptr %i.ixc, align 1, !tbaa !81
  %i.ixe = zext i8 %i.ixd to i64
  %i.ixf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ixe
  %i.ixg = load i8, ptr %i.ixf, align 1, !tbaa !81
  %i.ixh = and i8 %i.ixg, 1
  %.not3834 = icmp eq i8 %i.ixh, 0
  br i1 %.not3834, label %.backedge4142.backedge, label %.preheader4138, !llvm.loop !233

bb.axk:                                           ; preds = %bb.axj
  br i1 %.not3833, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, label %bb.axl, !prof !24

bb.axl:                                           ; preds = %bb.axk
  %i.ixi = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e)
  %.pre6853 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 4 uses
  br i1 %i.ixi, label %.backedge4142.backedge, label %bb.axm

.backedge4142.backedge:                           ; preds = %.preheader4138, %bb.axl
  %.promoted5618.be = phi ptr [ %.pre6853, %bb.axl ], [ %i.ixc, %.preheader4138 ]
  br label %.backedge4142

bb.axm:                                           ; preds = %bb.axl
  %.sroa.01.0.copyload.i568 = load i16, ptr %.pre6853, align 1
  %i.ixj = icmp eq i16 %.sroa.01.0.copyload.i568, 10799
  br i1 %i.ixj, label %bb.bpv, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

bb.axn:                                           ; preds = %bb.axi, %bb.awc, %bb.awb
  %i.ixk = phi ptr [ %i.iug, %bb.awb ], [ %i.iug, %bb.awc ], [ %i.iww, %bb.axi ]
  %.17544.i = phi ptr [ %.3530.i.ph, %bb.awb ], [ %.3530.i.ph, %bb.awc ], [ %.16543.i.ph, %bb.axi ] ; 4 uses
  %.17508.i = phi ptr [ %.3494.i.ph, %bb.awb ], [ %.3494.i.ph, %bb.awc ], [ %.16507.i.ph, %bb.axi ] ; 4 uses
  %.17482.i = phi ptr [ %.3468.i.ph, %bb.awb ], [ %.3468.i.ph, %bb.awc ], [ %.16481.i.ph, %bb.axi ] ; 2 uses
  %.17.i185 = phi ptr [ %.3451.i.ph, %bb.awb ], [ %.3451.i.ph, %bb.awc ], [ %.16464.i.ph, %bb.axi ] ; 3 uses
  %.3443.i = phi i64 [ 0, %bb.awb ], [ %.1441.i.ph, %bb.awc ], [ %.2442.i.ph, %bb.axi ]
  %.10.i186 = phi i64 [ %.2.i162.ph, %bb.awb ], [ %.2.i162.ph, %bb.awc ], [ %.9.i184.ph, %bb.axi ] ; 2 uses
  %i.ixl = getelementptr inbounds nuw i8, ptr %.17544.i, i64 8 ; 2 uses
  %i.ixm = load i64, ptr %i.ixl, align 8, !tbaa !81 ; 2 uses
  %i.ixn = ptrtoint ptr %.17508.i to i64
  %i.ixo = ptrtoint ptr %.17544.i to i64
  %reass.sub5883 = sub i64 %i.ixn, %i.ixo
  %i.ixp = add i64 %reass.sub5883, 16
  store i64 %i.ixp, ptr %i.ixl, align 8, !tbaa !81
  %i.ixq = shl i64 %.3443.i, 8
  %i.ixr = or disjoint i64 %i.ixq, 6
  store i64 %i.ixr, ptr %.17544.i, align 8, !tbaa !79
  %i.ixs = icmp eq i64 %i.ixm, 0
  br i1 %i.ixs, label %bb.bph, label %bb.axo, !prof !7

bb.axo:                                           ; preds = %bb.axn
  %i.ixt = sub i64 0, %i.ixm
  %i.ixu = getelementptr inbounds i8, ptr %.17544.i, i64 %i.ixt ; 3 uses
  %i.ixv = load i64, ptr %i.ixu, align 8, !tbaa !79 ; 2 uses
  %i.ixw = lshr i64 %i.ixv, 8                     ; 2 uses
  %i.ixx = and i64 %i.ixv, 7
  %i.ixy = icmp eq i64 %i.ixx, 7
  br i1 %i.ixy, label %.preheader4145, label %.preheader4140

.loopexit4135:                                    ; preds = %bb.bnk, %.backedge4137
  %.pn617.i = phi ptr [ %.promoted5619, %.backedge4137 ], [ %i.kli, %bb.bnk ]
  %.18545.i = phi ptr [ %.3530.i.ph, %.backedge4137 ], [ %.23550.i, %bb.bnk ] ; 4 uses
  %.18509.i = phi ptr [ %.3494.i.ph, %.backedge4137 ], [ %.23514.i, %bb.bnk ]
  %.18483.i = phi ptr [ %.3468.i.ph, %.backedge4137 ], [ %.23488.i, %bb.bnk ] ; 2 uses
  %.18.i172 = phi ptr [ %.3451.i.ph, %.backedge4137 ], [ %.23.i199, %bb.bnk ] ; 4 uses
  %.4444.i = phi i64 [ %.1441.i.ph, %.backedge4137 ], [ %i.izp, %bb.bnk ]
  %.11.i173 = phi i64 [ %.2.i162.ph, %.backedge4137 ], [ %.14.i200, %bb.bnk ] ; 4 uses
  %storemerge596.i = getelementptr inbounds nuw i8, ptr %.pn617.i, i64 1 ; 2 uses
  store ptr %storemerge596.i, ptr %i.e, align 8, !tbaa !92
  %i.ixz = shl i64 %.4444.i, 8
  %i.iya = add i64 %i.ixz, 256
  %i.iyb = load i64, ptr %.18545.i, align 8, !tbaa !79
  %i.iyc = and i64 %i.iyb, 255
  %i.iyd = or disjoint i64 %i.iyc, %i.iya
  store i64 %i.iyd, ptr %.18545.i, align 8, !tbaa !79
  %i.iye = getelementptr inbounds nuw i8, ptr %.18509.i, i64 16 ; 3 uses
  %.not618.i = icmp ult ptr %i.iye, %.18483.i
  br i1 %.not618.i, label %bb.axq, label %bb.axp, !prof !24

bb.axp:                                           ; preds = %.loopexit4135
  %i.iyf = lshr i64 %.11.i173, 1
  %i.iyg = add i64 %i.iyf, %.11.i173              ; 3 uses
  %i.iyh = shl i64 %.11.i173, 4
  %i.iyi = shl i64 %i.iyg, 4
  %i.iyj = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.18.i172, i64 noundef %i.iyh, i64 noundef %i.iyi), !inline_history !219 ; 5 uses
  %.not619.i174 = icmp eq ptr %i.iyj, null
  %.pre6886 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not619.i174, label %bb.bpt, label %.thread3502

.thread3502:                                      ; preds = %bb.axp
  %i.iyk = ptrtoint ptr %i.iye to i64
  %i.iyl = ptrtoint ptr %.18.i172 to i64          ; 2 uses
  %i.iym = sub i64 %i.iyk, %i.iyl
  %i.iyn = getelementptr inbounds nuw i8, ptr %i.iyj, i64 %i.iym
  %i.iyo = ptrtoint ptr %.18545.i to i64
  %i.iyp = sub i64 %i.iyo, %i.iyl
  %i.iyq = getelementptr inbounds nuw i8, ptr %i.iyj, i64 %i.iyp
  %i.iyr = getelementptr [16 x i8], ptr %i.iyj, i64 %i.iyg
  %i.iys = getelementptr i8, ptr %i.iyr, i64 -32
  br label %bb.axq

bb.axq:                                           ; preds = %.thread3502, %.loopexit4135
  %.pre6826.pre = phi ptr [ %.pre6886, %.thread3502 ], [ %storemerge596.i, %.loopexit4135 ]
  %.20547.i = phi ptr [ %i.iyq, %.thread3502 ], [ %.18545.i, %.loopexit4135 ]
  %.20511.i = phi ptr [ %i.iyn, %.thread3502 ], [ %i.iye, %.loopexit4135 ] ; 5 uses
  %.20485.i = phi ptr [ %i.iys, %.thread3502 ], [ %.18483.i, %.loopexit4135 ]
  %.20.i176 = phi ptr [ %i.iyj, %.thread3502 ], [ %.18.i172, %.loopexit4135 ]
  %.12.i177 = phi i64 [ %i.iyg, %.thread3502 ], [ %.11.i173, %.loopexit4135 ]
  store i64 7, ptr %.20511.i, align 8, !tbaa !79
  %i.iyt = ptrtoint ptr %.20511.i to i64
  %i.iyu = ptrtoint ptr %.20547.i to i64
  %i.iyv = sub i64 %i.iyt, %i.iyu
  %i.iyw = getelementptr inbounds nuw i8, ptr %.20511.i, i64 8
  store i64 %i.iyv, ptr %i.iyw, align 8, !tbaa !81
  br label %.preheader4195

.preheader4195:                                   ; preds = %bb.ait, %bb.axq, %bb.boz
  %.pre6826 = phi ptr [ %i.mmm, %bb.boz ], [ %.pre6826.pre, %bb.axq ], [ %i.ao, %bb.ait ]
  %.21548.i.ph = phi ptr [ %.24551.i.ph, %bb.boz ], [ %.20511.i, %bb.axq ], [ %i.fyr, %bb.ait ] ; 4 uses
  %.21512.i.ph = phi ptr [ %.24515.i.ph, %bb.boz ], [ %.20511.i, %bb.axq ], [ %i.fyr, %bb.ait ] ; 3 uses
  %.21486.i.ph = phi ptr [ %.24489.i.ph, %bb.boz ], [ %.20485.i, %bb.axq ], [ %i.fyq, %bb.ait ] ; 4 uses
  %.21.i178.ph = phi ptr [ %.24.i187.ph, %bb.boz ], [ %.20.i176, %bb.axq ], [ %i.fyo, %bb.ait ] ; 11 uses
  %.5445.i.ph = phi i64 [ %.6446.i.ph, %bb.boz ], [ 0, %bb.axq ], [ 0, %bb.ait ] ; 9 uses
  %.13.i179.ph = phi i64 [ %.15.i188.ph, %bb.boz ], [ %.12.i177, %bb.axq ], [ %i.fym, %bb.ait ] ; 6 uses
  %i.iyx = and i32 %2, 8
  %.not3841 = icmp eq i32 %i.iyx, 0               ; 3 uses
  br label %.backedge4197

.backedge4197:                                    ; preds = %.backedge4197.backedge, %.preheader4195
  %.promoted5263 = phi ptr [ %.pre6826, %.preheader4195 ], [ %.promoted5263.be, %.backedge4197.backedge ] ; 5 uses
  %i.iyy = load i8, ptr %.promoted5263, align 1, !tbaa !81 ; 2 uses
  switch i8 %i.iyy, label %bb.bax [
    i8 34, label %bb.axr
    i8 125, label %bb.bav
  ], !prof !195

bb.axr:                                           ; preds = %.backedge4197
  %i.iyz = getelementptr inbounds nuw i8, ptr %.21512.i.ph, i64 16 ; 3 uses
  %.not594.i196 = icmp ult ptr %i.iyz, %.21486.i.ph
  br i1 %.not594.i196, label %bb.axt, label %bb.axs, !prof !24

bb.axs:                                           ; preds = %bb.axr
  %i.iza = lshr i64 %.13.i179.ph, 1
  %i.izb = add i64 %i.iza, %.13.i179.ph           ; 3 uses
  %i.izc = shl i64 %.13.i179.ph, 4
  %i.izd = shl i64 %i.izb, 4
  %i.ize = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.21.i178.ph, i64 noundef %i.izc, i64 noundef %i.izd), !inline_history !219 ; 5 uses
  %.not595.i197 = icmp eq ptr %i.ize, null
  %.pre6885 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not595.i197, label %bb.bpt, label %.thread3508

.thread3508:                                      ; preds = %bb.axs
  %i.izf = ptrtoint ptr %i.iyz to i64
  %i.izg = ptrtoint ptr %.21.i178.ph to i64       ; 2 uses
  %i.izh = sub i64 %i.izf, %i.izg
  %i.izi = getelementptr inbounds nuw i8, ptr %i.ize, i64 %i.izh
  %i.izj = ptrtoint ptr %.21548.i.ph to i64
  %i.izk = sub i64 %i.izj, %i.izg
  %i.izl = getelementptr inbounds nuw i8, ptr %i.ize, i64 %i.izk
  %i.izm = getelementptr [16 x i8], ptr %i.ize, i64 %i.izb
  %i.izn = getelementptr i8, ptr %i.izm, i64 -32
  br label %bb.axt

bb.axt:                                           ; preds = %.thread3508, %bb.axr
  %i.izo = phi ptr [ %.pre6885, %.thread3508 ], [ %.promoted5263, %bb.axr ]
  %.23550.i = phi ptr [ %i.izl, %.thread3508 ], [ %.21548.i.ph, %bb.axr ] ; 39 uses
  %.23514.i = phi ptr [ %i.izi, %.thread3508 ], [ %i.iyz, %bb.axr ] ; 63 uses
  %.23488.i = phi ptr [ %i.izn, %.thread3508 ], [ %.21486.i.ph, %bb.axr ] ; 39 uses
  %.23.i199 = phi ptr [ %i.ize, %.thread3508 ], [ %.21.i178.ph, %bb.axr ] ; 78 uses
  %.14.i200 = phi i64 [ %i.izb, %.thread3508 ], [ %.13.i179.ph, %bb.axr ] ; 39 uses
  %i.izp = add i64 %.5445.i.ph, 1                 ; 2 uses
  %i.izq = getelementptr inbounds nuw i8, ptr %i.izo, i64 1 ; 3 uses
  br label %.backedge4190

.backedge4190:                                    ; preds = %.backedge4190.backedge, %bb.axt
  %.0269.i674 = phi ptr [ %i.izq, %bb.axt ], [ %.0269.i674.be, %.backedge4190.backedge ] ; 3 uses
  %i.izr = load i8, ptr %.0269.i674, align 1, !tbaa !81 ; 2 uses
  %i.izs = zext i8 %i.izr to i64
  %i.izt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.izs
  %i.izu = load i8, ptr %i.izt, align 1, !tbaa !81
  %i.izv = and i8 %i.izu, 12
  %.not36085312 = icmp eq i8 %i.izv, 0
  br i1 %.not36085312, label %.lr.ph5315, label %.split.loop.exit5296, !prof !159

.lr.ph5315:                                       ; preds = %.backedge4190, %bb.ayi
  %.1270.i6755313 = phi ptr [ %i.jdi, %bb.ayi ], [ %.0269.i674, %.backedge4190 ] ; 31 uses
  %i.izw = getelementptr inbounds nuw i8, ptr %.1270.i6755313, i64 1
  %i.izx = load i8, ptr %i.izw, align 1, !tbaa !81 ; 2 uses
  %i.izy = zext i8 %i.izx to i64
  %i.izz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.izy
  %i.jaa = load i8, ptr %i.izz, align 1, !tbaa !81
  %i.jab = and i8 %i.jaa, 12
  %.not3609 = icmp eq i8 %i.jab, 0
  br i1 %.not3609, label %bb.axu, label %.split.loop.exit5296.loopexit.split.loop.exit8362, !prof !24

bb.axu:                                           ; preds = %.lr.ph5315
  %i.jac = getelementptr inbounds nuw i8, ptr %.1270.i6755313, i64 2
  %i.jad = load i8, ptr %i.jac, align 1, !tbaa !81 ; 2 uses
  %i.jae = zext i8 %i.jad to i64
  %i.jaf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jae
  %i.jag = load i8, ptr %i.jaf, align 1, !tbaa !81
  %i.jah = and i8 %i.jag, 12
  %.not3610 = icmp eq i8 %i.jah, 0
  br i1 %.not3610, label %bb.axv, label %.split.loop.exit5296.loopexit.split.loop.exit8359, !prof !24

bb.axv:                                           ; preds = %bb.axu
  %i.jai = getelementptr inbounds nuw i8, ptr %.1270.i6755313, i64 3
  %i.jaj = load i8, ptr %i.jai, align 1, !tbaa !81 ; 2 uses
  %i.jak = zext i8 %i.jaj to i64
  %i.jal = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jak
  %i.jam = load i8, ptr %i.jal, align 1, !tbaa !81
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  store i64 %.0.copyload.i1114, ptr %.2.i694, align 1
  %i.jpi = getelementptr inbounds nuw i8, ptr %.2.i694, i64 8
  %.0.copyload.i1066 = load i32, ptr %i.jmq, align 1
  store i32 %.0.copyload.i1066, ptr %i.jpi, align 1
  %i.jpj = getelementptr inbounds nuw i8, ptr %.2.i694, i64 12
  %.0.copyload.i1017 = load i16, ptr %i.jno, align 1
  store i16 %.0.copyload.i1017, ptr %i.jpj, align 1
  %i.jpk = getelementptr inbounds nuw i8, ptr %.2.i694, i64 13
  br label %bb.bas

bb.baq:                                           ; preds = %bb.baa
  %.0.copyload.i1115 = load i64, ptr %.9.i693, align 1
  store i64 %.0.copyload.i1115, ptr %.2.i694, align 1
  %i.jpl = getelementptr inbounds nuw i8, ptr %.2.i694, i64 8
  %.0.copyload.i1067 = load i32, ptr %i.jmq, align 1
  store i32 %.0.copyload.i1067, ptr %i.jpl, align 1
  %i.jpm = getelementptr inbounds nuw i8, ptr %.2.i694, i64 12
  %.0.copyload.i1018 = load i16, ptr %i.jno, align 1
  store i16 %.0.copyload.i1018, ptr %i.jpm, align 1
  %i.jpn = getelementptr inbounds nuw i8, ptr %.2.i694, i64 14
  br label %bb.bas

bb.bar:                                           ; preds = %bb.bab
  %i.jpo = getelementptr inbounds nuw i8, ptr %.2.i694, i64 15
  br label %bb.bas

bb.bas:                                           ; preds = %bb.bar, %bb.baq, %bb.bap, %bb.bao, %bb.ban, %bb.bam, %bb.bal, %bb.bak, %bb.baj, %bb.bai, %bb.bah, %bb.bag, %bb.baf, %bb.bae, %bb.bad, %.backedge4185
  %.11.i695 = phi ptr [ %i.jog, %bb.bar ], [ %i.jop, %bb.bad ], [ %i.joa, %bb.baq ], [ %i.jnu, %bb.bap ], [ %i.jno, %bb.bao ], [ %i.jni, %bb.ban ], [ %i.jnc, %bb.bam ], [ %i.jmw, %bb.bal ], [ %i.jmq, %bb.bak ], [ %i.jmk, %bb.baj ], [ %i.jme, %bb.bai ], [ %i.jly, %bb.bah ], [ %i.jls, %bb.bag ], [ %i.jlm, %bb.baf ], [ %i.jlg, %bb.bae ], [ %.9.i693, %.backedge4185 ] ; 6 uses
  %.4.i696 = phi ptr [ %i.jpo, %bb.bar ], [ %i.joq, %bb.bad ], [ %i.jpn, %bb.baq ], [ %i.jpk, %bb.bap ], [ %i.jph, %bb.bao ], [ %i.jpf, %bb.ban ], [ %i.jpd, %bb.bam ], [ %i.jpb, %bb.bal ], [ %i.joz, %bb.bak ], [ %i.joy, %bb.baj ], [ %i.jox, %bb.bai ], [ %i.jov, %bb.bah ], [ %i.jot, %bb.bag ], [ %i.jos, %bb.baf ], [ %i.jor, %bb.bae ], [ %.2.i694, %.backedge4185 ] ; 3 uses
  %i.jpp = load i8, ptr %.11.i695, align 1, !tbaa !81 ; 2 uses
  %.not288.i697 = icmp sgt i8 %i.jpp, -1
  br i1 %.not288.i697, label %.preheader4186, label %.preheader4183

.preheader4183:                                   ; preds = %bb.bas
  %storemerge.i6985341 = load i32, ptr %.11.i695, align 1 ; 4 uses
  %i.jpq = and i32 %storemerge.i6985341, 12632304
  %i.jpr = icmp eq i32 %i.jpq, 8421600
  %i.jps = trunc i32 %storemerge.i6985341 to i16  ; 2 uses
  br i1 %i.jpr, label %.lr.ph5345, label %.critedge4.i701

.lr.ph5345:                                       ; preds = %.preheader4183, %bb.bat
  %.0.copyload.i10196836 = phi i16 [ %i.jpy, %bb.bat ], [ %i.jps, %.preheader4183 ] ; 2 uses
  %storemerge.i6985344 = phi i32 [ %storemerge.i698, %bb.bat ], [ %storemerge.i6985341, %.preheader4183 ] ; 4 uses
  %.5.i7005343 = phi ptr [ %i.jpu, %bb.bat ], [ %.4.i696, %.preheader4183 ] ; 4 uses
  %.12.i6995342 = phi ptr [ %i.jpv, %bb.bat ], [ %.11.i695, %.preheader4183 ] ; 3 uses
  %i.jpt = and i32 %storemerge.i6985344, 8207
  switch i32 %i.jpt, label %bb.bat [
    i32 8205, label %.critedge4.i701
    i32 0, label %.critedge4.i701
  ]

bb.bat:                                           ; preds = %.lr.ph5345
  store i32 %storemerge.i6985344, ptr %.5.i7005343, align 1
  %i.jpu = getelementptr inbounds nuw i8, ptr %.5.i7005343, i64 3 ; 2 uses
  %i.jpv = getelementptr inbounds nuw i8, ptr %.12.i6995342, i64 3 ; 3 uses
  %storemerge.i698 = load i32, ptr %i.jpv, align 1 ; 4 uses
  %i.jpw = and i32 %storemerge.i698, 12632304
  %i.jpx = icmp eq i32 %i.jpw, 8421600
  %i.jpy = trunc i32 %storemerge.i698 to i16      ; 2 uses
  br i1 %i.jpx, label %.lr.ph5345, label %.critedge4.i701, !llvm.loop !196

.critedge4.i701:                                  ; preds = %bb.bat, %.lr.ph5345, %.lr.ph5345, %.preheader4183
  %.0.copyload.i10196834 = phi i16 [ %i.jps, %.preheader4183 ], [ %.0.copyload.i10196836, %.lr.ph5345 ], [ %.0.copyload.i10196836, %.lr.ph5345 ], [ %i.jpy, %bb.bat ]
  %.12.i699.lcssa = phi ptr [ %.11.i695, %.preheader4183 ], [ %.12.i6995342, %.lr.ph5345 ], [ %.12.i6995342, %.lr.ph5345 ], [ %i.jpv, %bb.bat ] ; 3 uses
  %.5.i700.lcssa = phi ptr [ %.4.i696, %.preheader4183 ], [ %.5.i7005343, %.lr.ph5345 ], [ %.5.i7005343, %.lr.ph5345 ], [ %i.jpu, %bb.bat ] ; 3 uses
  %storemerge.i698.lcssa = phi i32 [ %storemerge.i6985341, %.preheader4183 ], [ %storemerge.i6985344, %.lr.ph5345 ], [ %storemerge.i6985344, %.lr.ph5345 ], [ %storemerge.i698, %bb.bat ] ; 5 uses
  %i.jpz = and i32 %storemerge.i698.lcssa, 128
  %i.jqa = icmp eq i32 %i.jpz, 0
  br i1 %i.jqa, label %.backedge4185.backedge, label %.preheader4182

.preheader4182:                                   ; preds = %.critedge4.i701
  %i.jqb = and i32 %storemerge.i698.lcssa, 49376
  %i.jqc = icmp eq i32 %i.jqb, 32960
  %i.jqd = and i32 %storemerge.i698.lcssa, 30
  %i.jqe = icmp ne i32 %i.jqd, 0
  %i.jqf = and i1 %i.jqc, %i.jqe
  br i1 %i.jqf, label %.lr.ph5361, label %.preheader4181

.preheader4181.loopexit:                          ; preds = %.lr.ph5361
  %i.jqg = trunc i32 %.sroa.0.0.copyload.i943 to i16
  br label %.preheader4181

.preheader4181:                                   ; preds = %.preheader4181.loopexit, %.preheader4182
  %.0.copyload.i10196833 = phi i16 [ %.0.copyload.i10196834, %.preheader4182 ], [ %i.jqg, %.preheader4181.loopexit ] ; 2 uses
  %.sroa.212657.2.in.lcssa = phi i32 [ %storemerge.i698.lcssa, %.preheader4182 ], [ %.sroa.0.0.copyload.i943, %.preheader4181.loopexit ] ; 5 uses
  %.13.i702.lcssa = phi ptr [ %.12.i699.lcssa, %.preheader4182 ], [ %i.jqq, %.preheader4181.loopexit ] ; 3 uses
  %.6.i703.lcssa = phi ptr [ %.5.i700.lcssa, %.preheader4182 ], [ %i.jqp, %.preheader4181.loopexit ] ; 3 uses
  %i.jqh = and i32 %.sroa.212657.2.in.lcssa, -1061109512
  %i.jqi = icmp ne i32 %i.jqh, -2139062032
  %i.jqj = and i32 %.sroa.212657.2.in.lcssa, 12295
  %.not289.i7065369 = icmp eq i32 %i.jqj, 0
  %or.cond292.i7075370 = or i1 %.not289.i7065369, %i.jqi
  br i1 %or.cond292.i7075370, label %.critedge6.i708, label %.lr.ph5375.preheader

.lr.ph5375.preheader:                             ; preds = %.preheader4181
  %i.jqk = and i32 %.sroa.212657.2.in.lcssa, 4
  %i.jql = icmp eq i32 %i.jqk, 0
  %i.jqm = and i32 %.sroa.212657.2.in.lcssa, 12291
  %i.jqn = icmp eq i32 %i.jqm, 0
  %i.jqo = or i1 %i.jql, %i.jqn
  br i1 %i.jqo, label %.lr.ph10269, label %.critedge6.i708

.lr.ph5361:                                       ; preds = %.preheader4182, %.lr.ph5361
  %.sroa.02609.25360.in = phi i32 [ %.sroa.0.0.copyload.i943, %.lr.ph5361 ], [ %storemerge.i698.lcssa, %.preheader4182 ]
  %.6.i7035359 = phi ptr [ %i.jqp, %.lr.ph5361 ], [ %.5.i700.lcssa, %.preheader4182 ] ; 2 uses
  %.13.i7025358 = phi ptr [ %i.jqq, %.lr.ph5361 ], [ %.12.i699.lcssa, %.preheader4182 ]
  %.sroa.02609.25360 = trunc i32 %.sroa.02609.25360.in to i16
  store i16 %.sroa.02609.25360, ptr %.6.i7035359, align 1
  %i.jqp = getelementptr inbounds nuw i8, ptr %.6.i7035359, i64 2 ; 2 uses
  %i.jqq = getelementptr inbounds nuw i8, ptr %.13.i7025358, i64 2 ; 3 uses
  %.sroa.0.0.copyload.i943 = load i32, ptr %i.jqq, align 1 ; 5 uses
  %i.jqr = and i32 %.sroa.0.0.copyload.i943, 49376
  %i.jqs = icmp eq i32 %i.jqr, 32960
  %i.jqt = and i32 %.sroa.0.0.copyload.i943, 30
  %i.jqu = icmp ne i32 %i.jqt, 0
  %i.jqv = and i1 %i.jqs, %i.jqu
  br i1 %i.jqv, label %.lr.ph5361, label %.preheader4181.loopexit, !llvm.loop !197

.lr.ph5375:                                       ; preds = %.lr.ph10269
  %i.jqw = and i32 %.sroa.0.0.copyload.i944, 4
  %i.jqx = icmp eq i32 %i.jqw, 0
  %i.jqy = and i32 %.sroa.0.0.copyload.i944, 12291
  %i.jqz = icmp eq i32 %i.jqy, 0
  %i.jra = or i1 %i.jqx, %i.jqz
  br i1 %i.jra, label %.lr.ph10269, label %.critedge6.i708.loopexit, !llvm.loop !198

.lr.ph10269:                                      ; preds = %.lr.ph5375.preheader, %.lr.ph5375
  %.14.i704537110268 = phi ptr [ %i.jrc, %.lr.ph5375 ], [ %.13.i702.lcssa, %.lr.ph5375.preheader ]
  %.7.i705537210267 = phi ptr [ %i.jrb, %.lr.ph5375 ], [ %.6.i703.lcssa, %.lr.ph5375.preheader ] ; 2 uses
  %.sroa.02609.0.insert.insert2633537410266 = phi i32 [ %.sroa.0.0.copyload.i944, %.lr.ph5375 ], [ %.sroa.212657.2.in.lcssa, %.lr.ph5375.preheader ]
  store i32 %.sroa.02609.0.insert.insert2633537410266, ptr %.7.i705537210267, align 1
  %i.jrb = getelementptr inbounds nuw i8, ptr %.7.i705537210267, i64 4 ; 3 uses
  %i.jrc = getelementptr inbounds nuw i8, ptr %.14.i704537110268, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i944 = load i32, ptr %i.jrc, align 1 ; 7 uses
  %i.jrd = and i32 %.sroa.0.0.copyload.i944, -1061109512
  %i.jre = icmp ne i32 %i.jrd, -2139062032
  %i.jrf = and i32 %.sroa.0.0.copyload.i944, 12295
  %.not289.i706 = icmp eq i32 %i.jrf, 0
  %or.cond292.i707 = or i1 %.not289.i706, %i.jre
  br i1 %or.cond292.i707, label %..critedge6.i708.loopexit_crit_edge, label %.lr.ph5375, !llvm.loop !198

..critedge6.i708.loopexit_crit_edge:              ; preds = %.lr.ph10269
  %i.jrg = trunc i32 %.sroa.0.0.copyload.i944 to i16
  br label %.critedge6.i708, !llvm.loop !198

.critedge6.i708.loopexit:                         ; preds = %.lr.ph5375
  %i.jrh = trunc i32 %.sroa.0.0.copyload.i944 to i16
  br label %.critedge6.i708

.critedge6.i708:                                  ; preds = %.critedge6.i708.loopexit, %.lr.ph5375.preheader, %..critedge6.i708.loopexit_crit_edge, %.preheader4181
  %.0.copyload.i10196831 = phi i16 [ %.0.copyload.i10196833, %.preheader4181 ], [ %i.jrg, %..critedge6.i708.loopexit_crit_edge ], [ %.0.copyload.i10196833, %.lr.ph5375.preheader ], [ %i.jrh, %.critedge6.i708.loopexit ]
  %.14.i704.lcssa = phi ptr [ %.13.i702.lcssa, %.preheader4181 ], [ %i.jrc, %..critedge6.i708.loopexit_crit_edge ], [ %.13.i702.lcssa, %.lr.ph5375.preheader ], [ %i.jrc, %.critedge6.i708.loopexit ] ; 4 uses
  %.7.i705.lcssa = phi ptr [ %.6.i703.lcssa, %.preheader4181 ], [ %i.jrb, %..critedge6.i708.loopexit_crit_edge ], [ %.6.i703.lcssa, %.lr.ph5375.preheader ], [ %i.jrb, %.critedge6.i708.loopexit ] ; 2 uses
  %i.jri = icmp eq ptr %.11.i695, %.14.i704.lcssa
  br i1 %i.jri, label %bb.bau, label %.backedge4185.backedge, !prof !7

bb.bau:                                           ; preds = %.critedge6.i708
  br i1 %.not3606, label %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit.thread, label %bb.bad

_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715: ; preds = %.split.loop.exit5296, %.preheader4186
  %.2271.i676.lcssa.sink8589 = phi ptr [ %.0.i689, %.preheader4186 ], [ %.2271.i676, %.split.loop.exit5296 ] ; 2 uses
  %.sink8585 = phi i64 [ 5, %.preheader4186 ], [ 13, %.split.loop.exit5296 ]
  %.7276.i688.pn = phi ptr [ %.7276.i688, %.preheader4186 ], [ %.2271.i676, %.split.loop.exit5296 ]
  %i.jrj = ptrtoint ptr %.2271.i676.lcssa.sink8589 to i64
  %i.jrk = ptrtoint ptr %i.izq to i64
  %i.jrl = sub i64 %i.jrj, %i.jrk
  %i.jrm = shl i64 %i.jrl, 8
  %i.jrn = or disjoint i64 %i.jrm, %.sink8585
  store i64 %i.jrn, ptr %.23514.i, align 8, !tbaa !79
  %i.jro = getelementptr inbounds nuw i8, ptr %.23514.i, i64 8
  store ptr %i.izq, ptr %i.jro, align 8, !tbaa !81
  store i8 0, ptr %.2271.i676.lcssa.sink8589, align 1, !tbaa !81
  %storemerge = getelementptr inbounds nuw i8, ptr %.7276.i688.pn, i64 1 ; 4 uses
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !92
  %i.jrp = load i8, ptr %storemerge, align 1, !tbaa !81 ; 2 uses
  %i.jrq = icmp eq i8 %i.jrp, 58
  br i1 %i.jrq, label %._crit_edge5384, label %.lr.ph5383

bb.bav:                                           ; preds = %.backedge4197
  %i.jrr = getelementptr inbounds nuw i8, ptr %.promoted5263, i64 1 ; 6 uses
  store ptr %i.jrr, ptr %i.e, align 8, !tbaa !92
  %i.jrs = icmp eq i64 %.5445.i.ph, 0
  br i1 %i.jrs, label %bb.bpf, label %bb.baw, !prof !24

bb.baw:                                           ; preds = %bb.bav
  %i.jrt = and i32 %2, 4
  %.not3607 = icmp eq i32 %i.jrt, 0
  br i1 %.not3607, label %.preheader4191, label %bb.bpf, !prof !24

.preheader4191:                                   ; preds = %bb.baw
  %i.jru = load i8, ptr %i.jrr, align 1, !tbaa !81
  %.not593.i5265 = icmp eq i8 %i.jru, 44
  br i1 %.not593.i5265, label %.loopexit4118, label %.lr.ph5266

.lr.ph5266:                                       ; preds = %.preheader4191, %.lr.ph5266
  %i.jrv = phi ptr [ %i.jrw, %.lr.ph5266 ], [ %i.jrr, %.preheader4191 ]
  %i.jrw = getelementptr inbounds i8, ptr %i.jrv, i64 -1 ; 4 uses
  store ptr %i.jrw, ptr %i.e, align 8, !tbaa !92
  %i.jrx = load i8, ptr %i.jrw, align 1, !tbaa !81
  %.not593.i = icmp eq i8 %i.jrx, 44
  br i1 %.not593.i, label %.loopexit4118, label %.lr.ph5266, !llvm.loop !234

bb.bax:                                           ; preds = %.backedge4197
  %i.jry = zext i8 %i.iyy to i64
  %i.jrz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jry
  %i.jsa = load i8, ptr %i.jrz, align 1, !tbaa !81
  %i.jsb = and i8 %i.jsa, 1
  %.not3840 = icmp eq i8 %i.jsb, 0
  br i1 %.not3840, label %bb.bay, label %.preheader4193

.preheader4193:                                   ; preds = %bb.bax, %.preheader4193
  %i.jsc = phi ptr [ %i.jsd, %.preheader4193 ], [ %.promoted5263, %bb.bax ]
  %i.jsd = getelementptr inbounds nuw i8, ptr %i.jsc, i64 1 ; 4 uses
  store ptr %i.jsd, ptr %i.e, align 8, !tbaa !92
  %i.jse = load i8, ptr %i.jsd, align 1, !tbaa !81
  %i.jsf = zext i8 %i.jse to i64
  %i.jsg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jsf
  %i.jsh = load i8, ptr %i.jsg, align 1, !tbaa !81
  %i.jsi = and i8 %i.jsh, 1
  %.not3842 = icmp eq i8 %i.jsi, 0
  br i1 %.not3842, label %.backedge4197.backedge, label %.preheader4193, !llvm.loop !235

bb.bay:                                           ; preds = %bb.bax
  br i1 %.not3841, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, label %bb.baz, !prof !24

bb.baz:                                           ; preds = %bb.bay
  %i.jsj = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e)
  %.pre6825 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 4 uses
  br i1 %i.jsj, label %.backedge4197.backedge, label %bb.bba

.backedge4197.backedge:                           ; preds = %.preheader4193, %bb.baz
  %.promoted5263.be = phi ptr [ %.pre6825, %bb.baz ], [ %i.jsd, %.preheader4193 ]
  br label %.backedge4197

bb.bba:                                           ; preds = %bb.baz
  %.sroa.01.0.copyload.i565 = load i16, ptr %.pre6825, align 1
  %i.jsk = icmp eq i16 %.sroa.01.0.copyload.i565, 10799
  br i1 %i.jsk, label %bb.bpv, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

._crit_edge5384:                                  ; preds = %.backedge4180, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715
  %.lcssa4416 = phi ptr [ %storemerge, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715 ], [ %i.jtd, %.backedge4180 ]
  %i.jsl = getelementptr inbounds nuw i8, ptr %.lcssa4416, i64 1 ; 4 uses
  store ptr %i.jsl, ptr %i.e, align 8, !tbaa !92
  %i.jsm = load i8, ptr %i.jsl, align 1, !tbaa !81 ; 2 uses
  %i.jsn = icmp eq i8 %i.jsm, 34
  br i1 %i.jsn, label %._crit_edge5389, label %.lr.ph5388

.lr.ph5388:                                       ; preds = %._crit_edge5384
  %i.jso = and i32 %2, 16
  %.not3646 = icmp eq i32 %i.jso, 0               ; 7 uses
  br label %bb.bef

.lr.ph5383:                                       ; preds = %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715, %.backedge4180
  %.promoted5382 = phi ptr [ %i.jtd, %.backedge4180 ], [ %storemerge, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715 ] ; 2 uses
  %i.jsp = phi i8 [ %i.jtc, %.backedge4180 ], [ %i.jrp, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715 ]
  %i.jsq = zext i8 %i.jsp to i64
  %i.jsr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jsq
  %i.jss = load i8, ptr %i.jsr, align 1, !tbaa !81
  %i.jst = and i8 %i.jss, 1
  %.not3640 = icmp eq i8 %i.jst, 0
  br i1 %.not3640, label %bb.bbb, label %.preheader4177

.preheader4177:                                   ; preds = %.lr.ph5383, %.preheader4177
  %i.jsu = phi ptr [ %i.jsv, %.preheader4177 ], [ %.promoted5382, %.lr.ph5383 ]
  %i.jsv = getelementptr inbounds nuw i8, ptr %i.jsu, i64 1 ; 4 uses
  store ptr %i.jsv, ptr %i.e, align 8, !tbaa !92
  %i.jsw = load i8, ptr %i.jsv, align 1, !tbaa !81 ; 2 uses
  %i.jsx = zext i8 %i.jsw to i64
  %i.jsy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jsx
  %i.jsz = load i8, ptr %i.jsy, align 1, !tbaa !81
  %i.jta = and i8 %i.jsz, 1
  %.not3642 = icmp eq i8 %i.jta, 0
  br i1 %.not3642, label %.backedge4180, label %.preheader4177, !llvm.loop !236

bb.bbb:                                           ; preds = %.lr.ph5383
  br i1 %.not3841, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, label %bb.bbc, !prof !24

bb.bbc:                                           ; preds = %bb.bbb
  %i.jtb = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e)
  %.pre6838 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 5 uses
  br i1 %i.jtb, label %..backedge4180_crit_edge, label %bb.bbd

..backedge4180_crit_edge:                         ; preds = %bb.bbc
  %.pre6839 = load i8, ptr %.pre6838, align 1, !tbaa !81
  br label %.backedge4180

.backedge4180:                                    ; preds = %.preheader4177, %..backedge4180_crit_edge
  %i.jtc = phi i8 [ %.pre6839, %..backedge4180_crit_edge ], [ %i.jsw, %.preheader4177 ] ; 2 uses
  %i.jtd = phi ptr [ %.pre6838, %..backedge4180_crit_edge ], [ %i.jsv, %.preheader4177 ] ; 2 uses
  %i.jte = icmp eq i8 %i.jtc, 58
  br i1 %i.jte, label %._crit_edge5384, label %.lr.ph5383

bb.bbd:                                           ; preds = %bb.bbc
  %.sroa.01.0.copyload.i567 = load i16, ptr %.pre6838, align 1
  %i.jtf = icmp eq i16 %.sroa.01.0.copyload.i567, 10799
  br i1 %i.jtf, label %bb.bpv, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

._crit_edge5389:                                  ; preds = %.backedge4176, %._crit_edge5384
  %.lcssa4406 = phi ptr [ %i.jsl, %._crit_edge5384 ], [ %i.mmi, %.backedge4176 ]
  %i.jtg = getelementptr inbounds nuw i8, ptr %.23514.i, i64 16 ; 2 uses
  %i.jth = add i64 %.5445.i.ph, 2
  %i.jti = getelementptr inbounds nuw i8, ptr %.lcssa4406, i64 1 ; 3 uses
  br label %.backedge4157

.backedge4157:                                    ; preds = %.backedge4157.backedge, %._crit_edge5389
  %.0269.i632 = phi ptr [ %i.jti, %._crit_edge5389 ], [ %.0269.i632.be, %.backedge4157.backedge ] ; 3 uses
  %i.jtj = load i8, ptr %.0269.i632, align 1, !tbaa !81 ; 2 uses
  %i.jtk = zext i8 %i.jtj to i64
  %i.jtl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jtk
  %i.jtm = load i8, ptr %i.jtl, align 1, !tbaa !81
  %i.jtn = and i8 %i.jtm, 12
  %.not37035547 = icmp eq i8 %i.jtn, 0
  br i1 %.not37035547, label %.lr.ph5550, label %.split.loop.exit5531, !prof !159

.lr.ph5550:                                       ; preds = %.backedge4157, %bb.bbs
  %.1270.i6335548 = phi ptr [ %i.jxa, %bb.bbs ], [ %.0269.i632, %.backedge4157 ] ; 31 uses
  %i.jto = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 1
  %i.jtp = load i8, ptr %i.jto, align 1, !tbaa !81 ; 2 uses
  %i.jtq = zext i8 %i.jtp to i64
  %i.jtr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jtq
  %i.jts = load i8, ptr %i.jtr, align 1, !tbaa !81
  %i.jtt = and i8 %i.jts, 12
  %.not3704 = icmp eq i8 %i.jtt, 0
  br i1 %.not3704, label %bb.bbe, label %.split.loop.exit5531.loopexit.split.loop.exit8422, !prof !24

bb.bbe:                                           ; preds = %.lr.ph5550
  %i.jtu = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 2
  %i.jtv = load i8, ptr %i.jtu, align 1, !tbaa !81 ; 2 uses
  %i.jtw = zext i8 %i.jtv to i64
  %i.jtx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jtw
  %i.jty = load i8, ptr %i.jtx, align 1, !tbaa !81
  %i.jtz = and i8 %i.jty, 12
  %.not3705 = icmp eq i8 %i.jtz, 0
  br i1 %.not3705, label %bb.bbf, label %.split.loop.exit5531.loopexit.split.loop.exit8419, !prof !24

bb.bbf:                                           ; preds = %bb.bbe
  %i.jua = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 3
  %i.jub = load i8, ptr %i.jua, align 1, !tbaa !81 ; 2 uses
  %i.juc = zext i8 %i.jub to i64
  %i.jud = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.juc
  %i.jue = load i8, ptr %i.jud, align 1, !tbaa !81
  %i.juf = and i8 %i.jue, 12
  %.not3706 = icmp eq i8 %i.juf, 0
  br i1 %.not3706, label %bb.bbg, label %.split.loop.exit5531.loopexit.split.loop.exit8416, !prof !24

bb.bbg:                                           ; preds = %bb.bbf
  %i.jug = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 4
  %i.juh = load i8, ptr %i.jug, align 1, !tbaa !81 ; 2 uses
  %i.jui = zext i8 %i.juh to i64
  %i.juj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jui
  %i.juk = load i8, ptr %i.juj, align 1, !tbaa !81
  %i.jul = and i8 %i.juk, 12
  %.not3707 = icmp eq i8 %i.jul, 0
  br i1 %.not3707, label %bb.bbh, label %.split.loop.exit5531.loopexit.split.loop.exit8413, !prof !24

bb.bbh:                                           ; preds = %bb.bbg
  %i.jum = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 5
  %i.jun = load i8, ptr %i.jum, align 1, !tbaa !81 ; 2 uses
  %i.juo = zext i8 %i.jun to i64
  %i.jup = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.juo
  %i.juq = load i8, ptr %i.jup, align 1, !tbaa !81
  %i.jur = and i8 %i.juq, 12
  %.not3708 = icmp eq i8 %i.jur, 0
  br i1 %.not3708, label %bb.bbi, label %.split.loop.exit5531.loopexit.split.loop.exit8410, !prof !24

bb.bbi:                                           ; preds = %bb.bbh
  %i.jus = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 6
  %i.jut = load i8, ptr %i.jus, align 1, !tbaa !81 ; 2 uses
  %i.juu = zext i8 %i.jut to i64
  %i.juv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.juu
  %i.juw = load i8, ptr %i.juv, align 1, !tbaa !81
  %i.jux = and i8 %i.juw, 12
  %.not3709 = icmp eq i8 %i.jux, 0
  br i1 %.not3709, label %bb.bbj, label %.split.loop.exit5531.loopexit.split.loop.exit8407, !prof !24

bb.bbj:                                           ; preds = %bb.bbi
  %i.juy = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 7
  %i.juz = load i8, ptr %i.juy, align 1, !tbaa !81 ; 2 uses
  %i.jva = zext i8 %i.juz to i64
  %i.jvb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jva
  %i.jvc = load i8, ptr %i.jvb, align 1, !tbaa !81
  %i.jvd = and i8 %i.jvc, 12
  %.not3710 = icmp eq i8 %i.jvd, 0
  br i1 %.not3710, label %bb.bbk, label %.split.loop.exit5531.loopexit.split.loop.exit8404, !prof !24

bb.bbk:                                           ; preds = %bb.bbj
  %i.jve = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 8
  %i.jvf = load i8, ptr %i.jve, align 1, !tbaa !81 ; 2 uses
  %i.jvg = zext i8 %i.jvf to i64
  %i.jvh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jvg
  %i.jvi = load i8, ptr %i.jvh, align 1, !tbaa !81
  %i.jvj = and i8 %i.jvi, 12
  %.not3711 = icmp eq i8 %i.jvj, 0
  br i1 %.not3711, label %bb.bbl, label %.split.loop.exit5531.loopexit.split.loop.exit8401, !prof !24

bb.bbl:                                           ; preds = %bb.bbk
  %i.jvk = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 9
  %i.jvl = load i8, ptr %i.jvk, align 1, !tbaa !81 ; 2 uses
  %i.jvm = zext i8 %i.jvl to i64
  %i.jvn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jvm
  %i.jvo = load i8, ptr %i.jvn, align 1, !tbaa !81
  %i.jvp = and i8 %i.jvo, 12
  %.not3712 = icmp eq i8 %i.jvp, 0
  br i1 %.not3712, label %bb.bbm, label %.split.loop.exit5531.loopexit.split.loop.exit8398, !prof !24

bb.bbm:                                           ; preds = %bb.bbl
  %i.jvq = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 10
  %i.jvr = load i8, ptr %i.jvq, align 1, !tbaa !81 ; 2 uses
  %i.jvs = zext i8 %i.jvr to i64
  %i.jvt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jvs
  %i.jvu = load i8, ptr %i.jvt, align 1, !tbaa !81
  %i.jvv = and i8 %i.jvu, 12
  %.not3713 = icmp eq i8 %i.jvv, 0
  br i1 %.not3713, label %bb.bbn, label %.split.loop.exit5531.loopexit.split.loop.exit8395, !prof !24

bb.bbn:                                           ; preds = %bb.bbm
  %i.jvw = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 11
  %i.jvx = load i8, ptr %i.jvw, align 1, !tbaa !81 ; 2 uses
  %i.jvy = zext i8 %i.jvx to i64
  %i.jvz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jvy
  %i.jwa = load i8, ptr %i.jvz, align 1, !tbaa !81
  %i.jwb = and i8 %i.jwa, 12
  %.not3714 = icmp eq i8 %i.jwb, 0
  br i1 %.not3714, label %bb.bbo, label %.split.loop.exit5531.loopexit.split.loop.exit8392, !prof !24

bb.bbo:                                           ; preds = %bb.bbn
  %i.jwc = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 12
  %i.jwd = load i8, ptr %i.jwc, align 1, !tbaa !81 ; 2 uses
  %i.jwe = zext i8 %i.jwd to i64
  %i.jwf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jwe
  %i.jwg = load i8, ptr %i.jwf, align 1, !tbaa !81
  %i.jwh = and i8 %i.jwg, 12
  %.not3715 = icmp eq i8 %i.jwh, 0
  br i1 %.not3715, label %bb.bbp, label %.split.loop.exit5531.loopexit.split.loop.exit8389, !prof !24

bb.bbp:                                           ; preds = %bb.bbo
  %i.jwi = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 13
  %i.jwj = load i8, ptr %i.jwi, align 1, !tbaa !81 ; 2 uses
  %i.jwk = zext i8 %i.jwj to i64
  %i.jwl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jwk
  %i.jwm = load i8, ptr %i.jwl, align 1, !tbaa !81
  %i.jwn = and i8 %i.jwm, 12
  %.not3716 = icmp eq i8 %i.jwn, 0
  br i1 %.not3716, label %bb.bbq, label %.split.loop.exit5531.loopexit.split.loop.exit8386, !prof !24

bb.bbq:                                           ; preds = %bb.bbp
  %i.jwo = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 14
  %i.jwp = load i8, ptr %i.jwo, align 1, !tbaa !81 ; 2 uses
  %i.jwq = zext i8 %i.jwp to i64
  %i.jwr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jwq
  %i.jws = load i8, ptr %i.jwr, align 1, !tbaa !81
  %i.jwt = and i8 %i.jws, 12
  %.not3717 = icmp eq i8 %i.jwt, 0
  br i1 %.not3717, label %bb.bbr, label %.split.loop.exit5531.loopexit.split.loop.exit8383, !prof !24

bb.bbr:                                           ; preds = %bb.bbq
  %i.jwu = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 15
  %i.jwv = load i8, ptr %i.jwu, align 1, !tbaa !81 ; 2 uses
  %i.jww = zext i8 %i.jwv to i64
  %i.jwx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jww
  %i.jwy = load i8, ptr %i.jwx, align 1, !tbaa !81
  %i.jwz = and i8 %i.jwy, 12
  %.not3718 = icmp eq i8 %i.jwz, 0
  br i1 %.not3718, label %bb.bbs, label %.split.loop.exit5531.loopexit.split.loop.exit, !prof !24

bb.bbs:                                           ; preds = %bb.bbr
  %i.jxa = getelementptr inbounds nuw i8, ptr %.1270.i6335548, i64 16 ; 3 uses
  %i.jxb = load i8, ptr %i.jxa, align 1, !tbaa !81 ; 2 uses
  %i.jxc = zext i8 %i.jxb to i64
  %i.jxd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jxc
  %i.jxe = load i8, ptr %i.jxd, align 1, !tbaa !81
  %i.jxf = and i8 %i.jxe, 12
  %.not3703 = icmp eq i8 %i.jxf, 0
end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
    i8 102, label %bb.bem
  ]

bb.bem:                                           ; preds = %bb.bel, %bb.bel
  %i.kmc = getelementptr inbounds nuw i8, ptr %i.klt, i64 3 ; 6 uses
  %i.kmd = load i8, ptr %i.kmc, align 1, !tbaa !81
  switch i8 %i.kmd, label %bb.bes [
    i8 73, label %bb.ben
    i8 105, label %bb.ben
  ]

bb.ben:                                           ; preds = %bb.bem, %bb.bem
  %i.kme = getelementptr inbounds nuw i8, ptr %i.klt, i64 4
  %i.kmf = load i8, ptr %i.kme, align 1, !tbaa !81
  switch i8 %i.kmf, label %bb.bes [
    i8 78, label %bb.beo
    i8 110, label %bb.beo
  ]

bb.beo:                                           ; preds = %bb.ben, %bb.ben
  %i.kmg = getelementptr inbounds nuw i8, ptr %i.klt, i64 5
  %i.kmh = load i8, ptr %i.kmg, align 1, !tbaa !81
  switch i8 %i.kmh, label %bb.bes [
    i8 73, label %bb.bep
    i8 105, label %bb.bep
  ]

bb.bep:                                           ; preds = %bb.beo, %bb.beo
  %i.kmi = getelementptr inbounds nuw i8, ptr %i.klt, i64 6
  %i.kmj = load i8, ptr %i.kmi, align 1, !tbaa !81
  switch i8 %i.kmj, label %bb.bes [
    i8 84, label %bb.beq
    i8 116, label %bb.beq
  ]

bb.beq:                                           ; preds = %bb.bep, %bb.bep
  %i.kmk = getelementptr inbounds nuw i8, ptr %i.klt, i64 7
  %i.kml = load i8, ptr %i.kmk, align 1, !tbaa !81
  switch i8 %i.kml, label %bb.bes [
    i8 89, label %bb.ber
    i8 121, label %bb.ber
  ]

bb.ber:                                           ; preds = %bb.beq, %bb.beq
  %i.kmm = getelementptr inbounds nuw i8, ptr %i.klt, i64 8
  br label %bb.bes

bb.bes:                                           ; preds = %bb.ber, %bb.beq, %bb.bep, %bb.beo, %bb.ben, %bb.bem
  %.037.i1168 = phi ptr [ %i.kmm, %bb.ber ], [ %i.kmc, %bb.beq ], [ %i.kmc, %bb.bep ], [ %i.kmc, %bb.beo ], [ %i.kmc, %bb.ben ], [ %i.kmc, %bb.bem ] ; 4 uses
  br i1 %i.fyu, label %bb.bet, label %bb.bew

bb.bet:                                           ; preds = %bb.bes
  %i.kmn = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not48.i1170 = icmp eq ptr %i.kmn, null
  br i1 %.not48.i1170, label %bb.bev, label %bb.beu

bb.beu:                                           ; preds = %bb.bet
  store i8 0, ptr %i.kmn, align 1, !tbaa !81
  br label %bb.bev

bb.bev:                                           ; preds = %bb.beu, %bb.bet
  store ptr %.037.i1168, ptr %i.g, align 8, !tbaa !92
  %i.kmo = ptrtoint ptr %.037.i1168 to i64
  %i.kmp = ptrtoint ptr %i.klx to i64
  %i.kmq = sub i64 %i.kmo, %i.kmp
  %i.kmr = shl i64 %i.kmq, 8
  %i.kms = or disjoint i64 %i.kmr, 1
  store i64 %i.kms, ptr %i.kln, align 8, !tbaa !79
  %i.kmt = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store ptr %i.klx, ptr %i.kmt, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354

bb.bew:                                           ; preds = %bb.bes
  store i64 20, ptr %i.kln, align 8, !tbaa !79
  %i.kmu = select i1 %i.klr, i64 -4503599627370496, i64 9218868437227405312
  %i.kmv = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 %i.kmu, ptr %i.kmv, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354

bb.bex:                                           ; preds = %bb.bel, %bb.bek
  switch i8 %i.klu, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit882 [
    i8 78, label %bb.bey
    i8 110, label %bb.bey
  ]

bb.bey:                                           ; preds = %bb.bej, %bb.bej, %bb.bex, %bb.bex
  %i.kmw = getelementptr inbounds nuw i8, ptr %i.klt, i64 1
  %i.kmx = load i8, ptr %i.kmw, align 1, !tbaa !81
  switch i8 %i.kmx, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit882 [
    i8 65, label %bb.bez
    i8 97, label %bb.bez
  ]

bb.bez:                                           ; preds = %bb.bey, %bb.bey
  %i.kmy = getelementptr inbounds nuw i8, ptr %i.klt, i64 2
  %i.kmz = load i8, ptr %i.kmy, align 1, !tbaa !81
  switch i8 %i.kmz, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit882 [
    i8 78, label %bb.bfa
    i8 110, label %bb.bfa
  ]

bb.bfa:                                           ; preds = %bb.bez, %bb.bez
  %i.kna = getelementptr inbounds nuw i8, ptr %i.klt, i64 3 ; 3 uses
  br i1 %i.fyu, label %bb.bfb, label %bb.bfe

bb.bfb:                                           ; preds = %bb.bfa
  %i.knb = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not31.i.i877 = icmp eq ptr %i.knb, null
  br i1 %.not31.i.i877, label %bb.bfd, label %bb.bfc

bb.bfc:                                           ; preds = %bb.bfb
  store i8 0, ptr %i.knb, align 1, !tbaa !81
  br label %bb.bfd

bb.bfd:                                           ; preds = %bb.bfc, %bb.bfb
  store ptr %i.kna, ptr %i.g, align 8, !tbaa !92
  %i.knc = select i1 %i.klr, i64 1025, i64 769
  store i64 %i.knc, ptr %i.kln, align 8, !tbaa !79
  %i.knd = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store ptr %i.klx, ptr %i.knd, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354

bb.bfe:                                           ; preds = %bb.bfa
  store i64 20, ptr %i.kln, align 8, !tbaa !79
  %i.kne = select i1 %i.klr, i64 -2251799813685248, i64 9221120237041090560
  %i.knf = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 %i.kne, ptr %i.knf, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354

_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit882: ; preds = %bb.bej, %bb.bez, %bb.bey, %bb.bex, %bb.bei
  store ptr @.str.78, ptr %i.f, align 8, !tbaa !92
  store ptr %i.klt, ptr %i.e, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354.thread

bb.bff:                                           ; preds = %bb.beh
  %i.kng = getelementptr inbounds nuw i8, ptr %i.klt, i64 1 ; 4 uses
  %i.knh = load i8, ptr %i.kng, align 1, !tbaa !81 ; 4 uses
  %i.kni = zext i8 %i.knh to i64
  %i.knj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10digi_tableE, i64 %i.kni
  %i.knk = load i8, ptr %i.knj, align 1, !tbaa !81
  %i.knl = and i8 %i.knk, 51
  %.not3652 = icmp eq i8 %i.knl, 0
  br i1 %.not3652, label %bb.bfg, label %bb.bfh, !prof !24

bb.bfg:                                           ; preds = %bb.bff
  %i.knm = select i1 %i.klr, i64 12, i64 4
  store i64 %i.knm, ptr %i.kln, align 8, !tbaa !79
  %i.knn = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 0, ptr %i.knn, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354

bb.bfh:                                           ; preds = %bb.bff
  %i.kno = icmp eq i8 %i.knh, 46
  br i1 %i.kno, label %bb.bfi, label %bb.bfm, !prof !24

bb.bfi:                                           ; preds = %bb.bfh
  %i.knp = getelementptr inbounds nuw i8, ptr %i.klt, i64 2 ; 4 uses
  %i.knq = load i8, ptr %i.knp, align 1, !tbaa !81 ; 3 uses
  %i.knr = add i8 %i.knq, -58
  %.not3653 = icmp ult i8 %i.knr, -10
  br i1 %.not3653, label %bb.bfj, label %.preheader4170.preheader, !prof !7

.preheader4170.preheader:                         ; preds = %bb.bfi
  %i.kns = icmp eq i8 %i.knq, 48
  br i1 %i.kns, label %.preheader4170thread-pre-split.lr.ph, label %bb.bfk, !prof !163, !llvm.loop !164

.preheader4170thread-pre-split.lr.ph:             ; preds = %.preheader4170.preheader
  br label %.preheader4170thread-pre-split, !llvm.loop !164

bb.bfj:                                           ; preds = %bb.bfi
  store ptr @.str.79, ptr %i.f, align 8, !tbaa !92
  store ptr %i.knp, ptr %i.e, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354.thread

.preheader4170thread-pre-split:                   ; preds = %.preheader4170thread-pre-split.lr.ph, %.preheader4170thread-pre-split
  %.4321610276 = phi ptr [ %i.knp, %.preheader4170thread-pre-split.lr.ph ], [ %i.knt, %.preheader4170thread-pre-split ]
  %i.knt = getelementptr inbounds nuw i8, ptr %.4321610276, i64 1 ; 3 uses
  %.pr7501 = load i8, ptr %i.knt, align 1, !tbaa !81 ; 2 uses
  %i.knu = icmp eq i8 %.pr7501, 48
  br i1 %i.knu, label %.preheader4170thread-pre-split, label %.preheader4170._crit_edge, !prof !165, !llvm.loop !164

.preheader4170._crit_edge:                        ; preds = %.preheader4170thread-pre-split
  br label %bb.bfk, !llvm.loop !164

bb.bfk:                                           ; preds = %.preheader4170._crit_edge, %.preheader4170.preheader
  %.lcssa9111 = phi i8 [ %.pr7501, %.preheader4170._crit_edge ], [ %i.knq, %.preheader4170.preheader ] ; 3 uses
  %.43216.lcssa = phi ptr [ %i.knt, %.preheader4170._crit_edge ], [ %i.knp, %.preheader4170.preheader ] ; 2 uses
  %i.knv = add i8 %.lcssa9111, -58
  %.not3654 = icmp ult i8 %i.knv, -10
  br i1 %.not3654, label %.thread7502, label %bb.bfl, !prof !7

bb.bfl:                                           ; preds = %bb.bfk
  %i.knw = zext nneg i8 %.lcssa9111 to i64
  %i.knx = add nsw i64 %i.knw, -48
  %i.kny = getelementptr inbounds i8, ptr %.43216.lcssa, i64 -1
  br label %bb.bic

bb.bfm:                                           ; preds = %bb.bfh
  %.pre6919 = add i8 %i.knh, -58
  %i.knz = icmp ult i8 %.pre6919, -10
  br i1 %i.knz, label %.thread7502, label %bb.bfn, !prof !121

bb.bfn:                                           ; preds = %bb.bfm
  store ptr @.str.80, ptr %i.f, align 8, !tbaa !92
  store ptr %i.klt, ptr %i.e, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354.thread

.thread7502:                                      ; preds = %bb.bfk, %bb.bfm
  %.132137505 = phi ptr [ %i.kng, %bb.bfm ], [ %.43216.lcssa, %bb.bfk ] ; 3 uses
  %i.koa = phi i8 [ %i.knh, %bb.bfm ], [ %.lcssa9111, %bb.bfk ]
  %i.kob = and i8 %i.koa, -33
  %.not3656.not = icmp eq i8 %i.kob, 69
  br i1 %.not3656.not, label %bb.bfo, label %.split3554, !prof !7

bb.bfo:                                           ; preds = %.thread7502
  %i.koc = getelementptr inbounds nuw i8, ptr %.132137505, i64 1
  %i.kod = load i8, ptr %i.koc, align 1, !tbaa !81 ; 2 uses
  %i.koe = icmp ne i8 %i.kod, 43
  %i.kof = icmp ne i8 %i.kod, 45
  %.not3657 = and i1 %i.koe, %i.kof
  %i.kog = select i1 %.not3657, i64 1, i64 2
  %i.koh = getelementptr inbounds nuw i8, ptr %.132137505, i64 %i.kog ; 3 uses
  %i.koi = load i8, ptr %i.koh, align 1, !tbaa !81
  %i.koj = add i8 %i.koi, -58
  %.not3658 = icmp ult i8 %i.koj, -10
  br i1 %.not3658, label %bb.bfp, label %.preheader4158, !prof !7

bb.bfp:                                           ; preds = %bb.bfo
  store ptr @.str.81, ptr %i.f, align 8, !tbaa !92
  store ptr %i.koh, ptr %i.e, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354.thread

.preheader4158:                                   ; preds = %bb.bfo, %.preheader4158
  %.33215 = phi ptr [ %i.kok, %.preheader4158 ], [ %i.koh, %bb.bfo ]
  %i.kok = getelementptr inbounds nuw i8, ptr %.33215, i64 1 ; 3 uses
  %i.kol = load i8, ptr %i.kok, align 1, !tbaa !81
  %i.kom = add i8 %i.kol, -58
  %.not3659 = icmp ult i8 %i.kom, -10
  br i1 %.not3659, label %.split3554, label %.preheader4158, !llvm.loop !166

.split3554:                                       ; preds = %.preheader4158, %.thread7502
  %.23214 = phi ptr [ %.132137505, %.thread7502 ], [ %i.kok, %.preheader4158 ]
  store i64 20, ptr %i.kln, align 8, !tbaa !79
  %i.kon = select i1 %i.klr, i64 -9223372036854775808, i64 0
  %i.koo = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 %i.kon, ptr %i.koo, align 8, !tbaa !81
  store ptr %.23214, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %.preheader4145

bb.bfq:                                           ; preds = %.critedge687.i251
  %i.kop = add nsw i64 %i.klv, -48                ; 4 uses
  %i.koq = getelementptr inbounds nuw i8, ptr %i.klt, i64 1 ; 6 uses
  %i.kor = load i8, ptr %i.koq, align 1, !tbaa !81 ; 2 uses
  %i.kos = zext i8 %i.kor to i64                  ; 2 uses
  %i.kot = add nsw i64 %i.kos, -48                ; 2 uses
  %i.kou = icmp ult i64 %i.kot, 10
  br i1 %i.kou, label %bb.bfr, label %bb.bgn, !prof !24

bb.bfr:                                           ; preds = %bb.bfq
  %i.kov = mul nuw nsw i64 %i.kop, 10
  %i.kow = add nuw nsw i64 %i.kot, %i.kov         ; 5 uses
  %i.kox = getelementptr inbounds nuw i8, ptr %i.klt, i64 2 ; 6 uses
  %i.koy = load i8, ptr %i.kox, align 1, !tbaa !81 ; 2 uses
  %i.koz = zext i8 %i.koy to i64                  ; 2 uses
  %i.kpa = add nsw i64 %i.koz, -48                ; 2 uses
  %i.kpb = icmp ult i64 %i.kpa, 10
  br i1 %i.kpb, label %bb.bfs, label %bb.bgp, !prof !24

bb.bfs:                                           ; preds = %bb.bfr
  %i.kpc = mul nuw nsw i64 %i.kow, 10
  %i.kpd = add nuw nsw i64 %i.kpa, %i.kpc         ; 5 uses
  %i.kpe = getelementptr inbounds nuw i8, ptr %i.klt, i64 3 ; 6 uses
  %i.kpf = load i8, ptr %i.kpe, align 1, !tbaa !81 ; 2 uses
  %i.kpg = zext i8 %i.kpf to i64                  ; 2 uses
  %i.kph = add nsw i64 %i.kpg, -48                ; 2 uses
  %i.kpi = icmp ult i64 %i.kph, 10
  br i1 %i.kpi, label %bb.bft, label %bb.bgr, !prof !24

bb.bft:                                           ; preds = %bb.bfs
  %i.kpj = mul nuw nsw i64 %i.kpd, 10
  %i.kpk = add nuw nsw i64 %i.kph, %i.kpj         ; 5 uses
  %i.kpl = getelementptr inbounds nuw i8, ptr %i.klt, i64 4 ; 6 uses
  %i.kpm = load i8, ptr %i.kpl, align 1, !tbaa !81 ; 2 uses
  %i.kpn = zext i8 %i.kpm to i64                  ; 2 uses
  %i.kpo = add nsw i64 %i.kpn, -48                ; 2 uses
  %i.kpp = icmp ult i64 %i.kpo, 10
  br i1 %i.kpp, label %bb.bfu, label %bb.bgt, !prof !24

bb.bfu:                                           ; preds = %bb.bft
  %i.kpq = mul nuw nsw i64 %i.kpk, 10
  %i.kpr = add nuw nsw i64 %i.kpo, %i.kpq         ; 5 uses
  %i.kps = getelementptr inbounds nuw i8, ptr %i.klt, i64 5 ; 6 uses
  %i.kpt = load i8, ptr %i.kps, align 1, !tbaa !81 ; 2 uses
  %i.kpu = zext i8 %i.kpt to i64                  ; 2 uses
  %i.kpv = add nsw i64 %i.kpu, -48                ; 2 uses
  %i.kpw = icmp ult i64 %i.kpv, 10
  br i1 %i.kpw, label %bb.bfv, label %bb.bgv, !prof !24

bb.bfv:                                           ; preds = %bb.bfu
  %i.kpx = mul nuw nsw i64 %i.kpr, 10
  %i.kpy = add nuw nsw i64 %i.kpv, %i.kpx         ; 5 uses
  %i.kpz = getelementptr inbounds nuw i8, ptr %i.klt, i64 6 ; 6 uses
  %i.kqa = load i8, ptr %i.kpz, align 1, !tbaa !81 ; 2 uses
  %i.kqb = zext i8 %i.kqa to i64                  ; 2 uses
  %i.kqc = add nsw i64 %i.kqb, -48                ; 2 uses
  %i.kqd = icmp ult i64 %i.kqc, 10
  br i1 %i.kqd, label %bb.bfw, label %bb.bgx, !prof !24

bb.bfw:                                           ; preds = %bb.bfv
  %i.kqe = mul nuw nsw i64 %i.kpy, 10
  %i.kqf = add nuw nsw i64 %i.kqc, %i.kqe         ; 5 uses
  %i.kqg = getelementptr inbounds nuw i8, ptr %i.klt, i64 7 ; 6 uses
  %i.kqh = load i8, ptr %i.kqg, align 1, !tbaa !81 ; 2 uses
  %i.kqi = zext i8 %i.kqh to i64                  ; 2 uses
  %i.kqj = add nsw i64 %i.kqi, -48                ; 2 uses
  %i.kqk = icmp ult i64 %i.kqj, 10
  br i1 %i.kqk, label %bb.bfx, label %bb.bha, !prof !24

bb.bfx:                                           ; preds = %bb.bfw
  %i.kql = mul nuw nsw i64 %i.kqf, 10
  %i.kqm = add nuw nsw i64 %i.kqj, %i.kql         ; 5 uses
  %i.kqn = getelementptr inbounds nuw i8, ptr %i.klt, i64 8 ; 6 uses
  %i.kqo = load i8, ptr %i.kqn, align 1, !tbaa !81 ; 2 uses
  %i.kqp = zext i8 %i.kqo to i64                  ; 2 uses
  %i.kqq = add nsw i64 %i.kqp, -48                ; 2 uses
  %i.kqr = icmp ult i64 %i.kqq, 10
  br i1 %i.kqr, label %bb.bfy, label %bb.bhd, !prof !24

bb.bfy:                                           ; preds = %bb.bfx
  %i.kqs = mul nuw nsw i64 %i.kqm, 10
  %i.kqt = add nuw nsw i64 %i.kqq, %i.kqs         ; 5 uses
  %i.kqu = getelementptr inbounds nuw i8, ptr %i.klt, i64 9 ; 6 uses
  %i.kqv = load i8, ptr %i.kqu, align 1, !tbaa !81 ; 2 uses
  %i.kqw = zext i8 %i.kqv to i64                  ; 2 uses
  %i.kqx = add nsw i64 %i.kqw, -48                ; 2 uses
  %i.kqy = icmp ult i64 %i.kqx, 10
  br i1 %i.kqy, label %bb.bfz, label %bb.bhg, !prof !24

bb.bfz:                                           ; preds = %bb.bfy
  %i.kqz = mul nuw nsw i64 %i.kqt, 10
  %i.kra = add nuw nsw i64 %i.kqx, %i.kqz         ; 5 uses
  %i.krb = getelementptr inbounds nuw i8, ptr %i.klt, i64 10 ; 6 uses
  %i.krc = load i8, ptr %i.krb, align 1, !tbaa !81 ; 2 uses
  %i.krd = zext i8 %i.krc to i64                  ; 2 uses
  %i.kre = add nsw i64 %i.krd, -48                ; 2 uses
  %i.krf = icmp ult i64 %i.kre, 10
  br i1 %i.krf, label %bb.bga, label %bb.bhj, !prof !24

bb.bga:                                           ; preds = %bb.bfz
  %i.krg = mul nuw nsw i64 %i.kra, 10
  %i.krh = add nuw nsw i64 %i.kre, %i.krg         ; 5 uses
  %i.kri = getelementptr inbounds nuw i8, ptr %i.klt, i64 11 ; 6 uses
  %i.krj = load i8, ptr %i.kri, align 1, !tbaa !81 ; 2 uses
  %i.krk = zext i8 %i.krj to i64                  ; 2 uses
  %i.krl = add nsw i64 %i.krk, -48                ; 2 uses
  %i.krm = icmp ult i64 %i.krl, 10
  br i1 %i.krm, label %bb.bgb, label %bb.bhm, !prof !24

bb.bgb:                                           ; preds = %bb.bga
  %i.krn = mul nuw nsw i64 %i.krh, 10
  %i.kro = add nuw nsw i64 %i.krl, %i.krn         ; 5 uses
  %i.krp = getelementptr inbounds nuw i8, ptr %i.klt, i64 12 ; 6 uses
  %i.krq = load i8, ptr %i.krp, align 1, !tbaa !81 ; 2 uses
  %i.krr = zext i8 %i.krq to i64                  ; 2 uses
  %i.krs = add nsw i64 %i.krr, -48                ; 2 uses
  %i.krt = icmp ult i64 %i.krs, 10
  br i1 %i.krt, label %bb.bgc, label %bb.bho, !prof !24

bb.bgc:                                           ; preds = %bb.bgb
  %i.kru = mul nuw nsw i64 %i.kro, 10
  %i.krv = add nuw nsw i64 %i.krs, %i.kru         ; 5 uses
  %i.krw = getelementptr inbounds nuw i8, ptr %i.klt, i64 13 ; 6 uses
  %i.krx = load i8, ptr %i.krw, align 1, !tbaa !81 ; 2 uses
  %i.kry = zext i8 %i.krx to i64                  ; 2 uses
  %i.krz = add nsw i64 %i.kry, -48                ; 2 uses
  %i.ksa = icmp ult i64 %i.krz, 10
  br i1 %i.ksa, label %bb.bgd, label %bb.bhq, !prof !24

bb.bgd:                                           ; preds = %bb.bgc
  %i.ksb = mul nuw nsw i64 %i.krv, 10
  %i.ksc = add nuw nsw i64 %i.krz, %i.ksb         ; 5 uses
  %i.ksd = getelementptr inbounds nuw i8, ptr %i.klt, i64 14 ; 6 uses
  %i.kse = load i8, ptr %i.ksd, align 1, !tbaa !81 ; 2 uses
  %i.ksf = zext i8 %i.kse to i64                  ; 2 uses
  %i.ksg = add nsw i64 %i.ksf, -48                ; 2 uses
  %i.ksh = icmp ult i64 %i.ksg, 10
  br i1 %i.ksh, label %bb.bge, label %bb.bhs, !prof !24

bb.bge:                                           ; preds = %bb.bgd
  %i.ksi = mul nuw nsw i64 %i.ksc, 10
  %i.ksj = add nuw nsw i64 %i.ksg, %i.ksi         ; 5 uses
  %i.ksk = getelementptr inbounds nuw i8, ptr %i.klt, i64 15 ; 6 uses
  %i.ksl = load i8, ptr %i.ksk, align 1, !tbaa !81 ; 2 uses
  %i.ksm = zext i8 %i.ksl to i64                  ; 2 uses
  %i.ksn = add nsw i64 %i.ksm, -48                ; 2 uses
  %i.kso = icmp ult i64 %i.ksn, 10
  br i1 %i.kso, label %bb.bgf, label %bb.bhu, !prof !24

bb.bgf:                                           ; preds = %bb.bge
  %i.ksp = mul nuw nsw i64 %i.ksj, 10
end_hunk_4
begin_hunk_5_@llvm.assume
!20 = !{!"_ZTSN13duckdb_yyjson10yyjson_alcE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!21 = !{!20, !10, i64 8}
!22 = !{!20, !10, i64 16}
!23 = !{!20, !10, i64 24}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{!14, !14, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = !{!31, !33, i64 8}
!31 = !{!"_ZTSN13duckdb_yyjson7dyn_ctxE", !32, i64 0, !32, i64 16}
!32 = !{!"_ZTSN13duckdb_yyjson9dyn_chunkE", !13, i64 0, !33, i64 8}
!33 = !{!"p1 _ZTSN13duckdb_yyjson9dyn_chunkE", !10, i64 0}
!34 = !{!32, !13, i64 0}
!35 = !{!32, !33, i64 8}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = !{!31, !33, i64 24}
!41 = distinct !{!41, !27}
!42 = !{!43, !13, i64 16}
!43 = !{!"_ZTSN13duckdb_yyjson15yyjson_str_poolE", !44, i64 0, !44, i64 8, !13, i64 16, !13, i64 24, !45, i64 32}
!44 = !{!"p1 omnipotent char", !10, i64 0}
!45 = !{!"p1 _ZTSN13duckdb_yyjson16yyjson_str_chunkE", !10, i64 0}
!46 = !{!43, !45, i64 32}
!47 = !{!48, !45, i64 0}
!48 = !{!"_ZTSN13duckdb_yyjson16yyjson_str_chunkE", !45, i64 0, !13, i64 8}
!49 = !{!48, !13, i64 8}
!50 = !{!43, !44, i64 0}
!51 = !{!43, !44, i64 8}
!52 = !{!43, !13, i64 24}
!53 = !{!54, !13, i64 16}
!54 = !{!"_ZTSN13duckdb_yyjson15yyjson_val_poolE", !55, i64 0, !55, i64 8, !13, i64 16, !13, i64 24, !56, i64 32}
!55 = !{!"p1 _ZTSN13duckdb_yyjson14yyjson_mut_valE", !10, i64 0}
!56 = !{!"p1 _ZTSN13duckdb_yyjson16yyjson_val_chunkE", !10, i64 0}
!57 = !{!54, !56, i64 32}
!58 = !{!59, !56, i64 0}
!59 = !{!"_ZTSN13duckdb_yyjson16yyjson_val_chunkE", !56, i64 0, !13, i64 8}
!60 = !{!59, !13, i64 8}
!61 = !{!54, !55, i64 0}
!62 = !{!54, !55, i64 8}
!63 = !{!54, !13, i64 24}
!64 = !{!65, !13, i64 56}
!65 = !{!"_ZTSN13duckdb_yyjson14yyjson_mut_docE", !55, i64 0, !20, i64 8, !43, i64 40, !54, i64 80}
!66 = !{!65, !13, i64 96}
!67 = distinct !{null}
!68 = distinct !{!68, !27}
!69 = distinct !{null}
!70 = distinct !{!70, !27}
!71 = !{!65, !13, i64 64}
!72 = !{!65, !13, i64 104}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSN13duckdb_yyjson10yyjson_docE", !75, i64 0, !20, i64 8, !13, i64 40, !13, i64 48, !44, i64 56}
!75 = !{!"p1 _ZTSN13duckdb_yyjson10yyjson_valE", !10, i64 0}
!76 = !{ptr @_ZN13duckdb_yyjson18yyjson_mut_doc_newEPKNS_10yyjson_alcE}
!77 = !{ptr @_ZN13duckdb_yyjson19yyjson_mut_doc_freeEPNS_14yyjson_mut_docE}
!78 = !{!65, !55, i64 0}
!79 = !{!80, !13, i64 0}
!80 = !{!"_ZTSN13duckdb_yyjson10yyjson_valE", !13, i64 0, !5, i64 8}
!81 = !{!5, !5, i64 0}
!82 = !{!83, !13, i64 0}
!83 = !{!"_ZTSN13duckdb_yyjson14yyjson_mut_valE", !13, i64 0, !5, i64 8, !55, i64 16}
!84 = !{!"branch_weights", !"expected", i32 1072669, i32 2146410979}
!85 = !{!83, !55, i64 16}
!86 = distinct !{!86, !27}
!87 = distinct !{!87, !27}
!88 = distinct !{!88, !27}
!89 = !{!"branch_weights", !"expected", i32 1072668, i32 2146410980}
!90 = distinct !{!90, !27}
!91 = !{!13, !13, i64 0}
!92 = !{!44, !44, i64 0}
!93 = !{!75, !75, i64 0}
!94 = !{!74, !44, i64 56}
!95 = !{!74, !13, i64 48}
!96 = !{!74, !13, i64 40}
!97 = distinct !{!97, !27}
!98 = distinct !{!98, !27}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !27}
!101 = distinct !{!101, !27}
!102 = distinct !{!102, !27}
!103 = distinct !{!103, !27}
!104 = distinct !{!104, !27}
!105 = distinct !{!105, !27}
!106 = distinct !{!106, !27}
!107 = distinct !{!107, !27}
!108 = distinct !{!108, !27}
!109 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!110 = !{!"branch_weights", i32 -2147483648, i32 0}
!111 = distinct !{!111, !112}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = distinct !{!113, !27}
!114 = distinct !{!114, !27}
!115 = !{!116, !4, i64 0}
!116 = !{!"_ZTSN13duckdb_yyjson14yyjson_ptr_errE", !4, i64 0, !44, i64 8, !13, i64 16}
!117 = !{!116, !44, i64 8}
!118 = !{!116, !13, i64 16}
!119 = distinct !{!119, !27}
!120 = !{!"branch_weights", i32 2146410443, i32 1073205}
!121 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!122 = distinct !{!122, !112}
!123 = distinct !{!123, !27}
!124 = !{!125, !55, i64 0}
!125 = !{!"_ZTSN13duckdb_yyjson14yyjson_ptr_ctxE", !55, i64 0, !55, i64 8, !55, i64 16}
!126 = !{!125, !55, i64 8}
!127 = distinct !{!127, !27}
!128 = distinct !{!128, !112}
!129 = distinct !{!129, !27}
!130 = !{!"branch_weights", !"expected", i32 1072673, i32 2146410975}
!131 = distinct !{!131, !27}
!132 = !{!"branch_weights", !"expected", i32 1072694, i32 2146410954}
!133 = distinct !{!133, !27}
!134 = !{!125, !55, i64 16}
!135 = !{!"branch_weights", i32 2002, i32 2000}
!136 = distinct !{!136, !27}
!137 = !{!"branch_weights", i32 2000, i32 2002}
!138 = !{!139, !4, i64 24}
!139 = !{!"_ZTSN13duckdb_yyjson16yyjson_patch_errE", !4, i64 0, !13, i64 8, !44, i64 16, !116, i64 24}
!140 = !{!139, !4, i64 0}
!141 = !{!139, !44, i64 16}
!142 = !{!139, !13, i64 8}
!143 = distinct !{!143, !27}
!144 = distinct !{!144, !27}
!145 = distinct !{!145, !27}
!146 = distinct !{!146, !27}
!147 = !{!"branch_weights", i32 1073205, i32 2146410443}
!148 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!149 = distinct !{!149, !27}
!150 = distinct !{!150, !27}
!151 = distinct !{!151, !27}
!152 = distinct !{!152, !27}
!153 = !{!154, !13, i64 16}
!154 = !{!"_ZTSN13duckdb_yyjson15yyjson_read_errE", !4, i64 0, !44, i64 8, !13, i64 16}
!155 = !{!154, !44, i64 8}
!156 = !{!154, !4, i64 0}
!157 = distinct !{!157, !27}
!158 = distinct !{null}
!159 = !{!"branch_weights", i32 127, i32 1}
!160 = !{!"branch_weights", i32 255873, i32 127}
!161 = distinct !{!161, !27}
!162 = !{!"branch_weights", i32 1, i32 4001}
!163 = !{!"branch_weights", i32 1, i32 1999}
!164 = distinct !{!164, !27}
!165 = !{!"branch_weights", i32 0, i32 1}
!166 = distinct !{!166, !27}
!167 = distinct !{!167, !27}
!168 = distinct !{!168, !27}
!169 = distinct !{!169, !27}
!170 = distinct !{!170, !27}
!171 = distinct !{!171, !27}
!172 = !{!173, !173, i64 0}
!173 = !{!"double", !5, i64 0}
!174 = distinct !{!174, !27}
!175 = distinct !{!175, !27}
!176 = distinct !{!176, !27}
!177 = !{!178, !4, i64 0}
!178 = !{!"_ZTSN13duckdb_yyjson6bigintE", !4, i64 0, !5, i64 8}
!179 = distinct !{!179, !27, !180, !181}
!180 = !{!"llvm.loop.isvectorized", i32 1}
!181 = !{!"llvm.loop.unroll.runtime.disable"}
!182 = distinct !{!182, !112}
!183 = distinct !{!183, !27, !180}
!184 = distinct !{!184, !27, !180, !181}
!185 = distinct !{!185, !27, !180}
!186 = distinct !{!186, !27, !180, !181}
!187 = distinct !{!187, !112}
!188 = distinct !{!188, !27, !180}
!189 = distinct !{!189, !27, !180, !181}
!190 = distinct !{!190, !27, !180}
!191 = distinct !{!191, !27}
!192 = distinct !{!192, !27}
!193 = distinct !{!193, !27}
!194 = distinct !{!194, !27}
!195 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!196 = distinct !{!196, !27}
!197 = distinct !{!197, !27}
!198 = distinct !{!198, !27}
!199 = distinct !{!199, !27}
!200 = distinct !{!200, !27}
!201 = distinct !{!201, !27}
!202 = distinct !{!202, !27}
!203 = distinct !{!203, !27}
!204 = distinct !{!204, !27}
!205 = distinct !{!205, !27}
!206 = distinct !{!206, !27, !180, !181}
!207 = distinct !{!207, !112}
!208 = distinct !{!208, !27, !180}
!209 = distinct !{!209, !27, !180, !181}
!210 = distinct !{!210, !27, !180}
!211 = distinct !{!211, !27, !180, !181}
!212 = distinct !{!212, !112}
!213 = distinct !{!213, !27, !180}
!214 = distinct !{!214, !27, !180, !181}
!215 = distinct !{!215, !27, !180}
!216 = distinct !{!216, !27}
!217 = distinct !{!217, !27}
!218 = distinct !{!218, !27}
!219 = distinct !{null}
!220 = !{!"branch_weights", !"expected", i32 2147481175, i32 2473}
!221 = distinct !{!221, !27, !180, !181}
!222 = distinct !{!222, !112}
!223 = distinct !{!223, !27, !180}
!224 = distinct !{!224, !27, !180, !181}
!225 = distinct !{!225, !27, !180}
!226 = distinct !{!226, !27, !180, !181}
!227 = distinct !{!227, !112}
!228 = distinct !{!228, !27, !180}
!229 = distinct !{!229, !27, !180, !181}
!230 = distinct !{!230, !27, !180}
!231 = distinct !{!231, !27}
!232 = distinct !{!232, !27}
!233 = distinct !{!233, !27}
!234 = distinct !{!234, !27}
!235 = distinct !{!235, !27}
!236 = distinct !{!236, !27}
!237 = distinct !{!237, !27, !180, !181}
!238 = distinct !{!238, !112}
!239 = distinct !{!239, !27, !180}
!240 = distinct !{!240, !27, !180, !181}
!241 = distinct !{!241, !27, !180}
!242 = distinct !{!242, !27, !180, !181}
!243 = distinct !{!243, !112}
!244 = distinct !{!244, !27, !180}
!245 = distinct !{!245, !27, !180, !181}
!246 = distinct !{!246, !27, !180}
!247 = distinct !{!247, !27}
!248 = distinct !{!248, !27}
!249 = distinct !{!249, !27}
!250 = distinct !{!250, !27}
!251 = distinct !{!251, !27}
!252 = distinct !{!252, !27}
!253 = distinct !{!253, !27}
!254 = !{!"branch_weights", !"expected", i32 2145338738, i32 2144910}
!255 = !{!"branch_weights", !"expected", i32 2147481180, i32 2468}
!256 = distinct !{!256, !27, !180, !181}
!257 = distinct !{!257, !112}
!258 = distinct !{!258, !27, !180}
!259 = distinct !{!259, !27, !180, !181}
!260 = distinct !{!260, !27, !180}
!261 = distinct !{!261, !27, !180, !181}
!262 = distinct !{!262, !112}
!263 = distinct !{!263, !27, !180}
!264 = distinct !{!264, !27, !180, !181}
!265 = distinct !{!265, !27, !180}
!266 = distinct !{!266, !27}
!267 = distinct !{!267, !27}
!268 = !{!"branch_weights", !"expected", i32 2145348561, i32 2135087}
!269 = !{!"branch_weights", !"expected", i32 2147481179, i32 2469}
!270 = distinct !{!270, !27, !180, !181}
!271 = distinct !{!271, !112}
!272 = distinct !{!272, !27, !180}
!273 = distinct !{!273, !27, !180, !181}
!274 = distinct !{!274, !27, !180}
!275 = distinct !{!275, !27, !180, !181}
!276 = distinct !{!276, !112}
!277 = distinct !{!277, !27, !180}
!278 = distinct !{!278, !27, !180, !181}
!279 = distinct !{!279, !27, !180}
!280 = !{!281, !44, i64 8}
!281 = !{!"_ZTSN13duckdb_yyjson16yyjson_write_errE", !4, i64 0, !44, i64 8}
!282 = !{!281, !4, i64 0}
!283 = distinct !{null}
!284 = distinct !{!284, !27}
!285 = distinct !{!285, !112}
!286 = distinct !{!286, !27}
!287 = distinct !{!287, !27}
!288 = !{!"branch_weights", i32 2000, i32 0, i32 0}
!289 = !{!"branch_weights", i32 4001, i32 4000000}
!290 = distinct !{!290, !112}
!291 = distinct !{!291, !27, !180, !181}
!292 = distinct !{!292, !27}
!293 = distinct !{!293, !27, !180, !181}
!294 = !{!"branch_weights", i32 4, i32 28}
!295 = distinct !{!295, !27, !180, !181}
!296 = distinct !{!296, !112}
!297 = distinct !{!297, !27, !180}
!298 = distinct !{!298, !27, !180}
!299 = distinct !{!299, !27}
!300 = distinct !{null}
!301 = distinct !{!301, !112}
!302 = distinct !{!302, !27}
!303 = distinct !{!303, !112}
!304 = distinct !{!304, !112}
!305 = distinct !{!305, !27, !180, !181}
!306 = distinct !{!306, !27, !180, !181}
!307 = distinct !{!307, !27, !180, !181}
!308 = distinct !{!308, !112}
!309 = distinct !{!309, !27, !180}
!310 = distinct !{!310, !27, !180}
!311 = distinct !{!311, !112}
!312 = distinct !{!312, !112}
!313 = !{!314, !13, i64 0}
!314 = !{!"_ZTSN13duckdb_yyjson16yyjson_write_ctxE", !13, i64 0}
!315 = distinct !{!315, !112}
!316 = distinct !{!316, !112}
!317 = distinct !{!317, !112}
!318 = distinct !{!318, !112}
!319 = distinct !{null}
!320 = distinct !{!320, !112}
!321 = distinct !{!321, !112}
!322 = distinct !{!322, !27, !180, !181}
!323 = distinct !{!323, !27, !180, !181}
!324 = distinct !{!324, !27, !180, !181}
!325 = distinct !{!325, !112}
!326 = distinct !{!326, !27, !180}
!327 = distinct !{!327, !27, !180}
!328 = !{ptr @_ZN13duckdb_yyjson19yyjson_val_write_fpEP8_IO_FILEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE}
!329 = distinct !{null}
!330 = distinct !{!330, !112}
!331 = distinct !{!331, !112}
!332 = distinct !{!332, !27, !180, !181}
!333 = distinct !{!333, !27, !180, !181}
!334 = distinct !{!334, !27, !180, !181}
!335 = distinct !{!335, !112}
!336 = distinct !{!336, !27, !180}
!337 = distinct !{!337, !27, !180}
!338 = distinct !{null}
!339 = distinct !{!339, !112}
!340 = distinct !{!340, !112}
!341 = distinct !{!341, !112}
!342 = distinct !{!342, !27, !180, !181}
!343 = distinct !{!343, !27, !180, !181}
!344 = distinct !{!344, !27, !180, !181}
!345 = distinct !{!345, !112}
!346 = distinct !{!346, !27, !180}
!347 = distinct !{!347, !27, !180}
!348 = distinct !{!348, !112}
!349 = distinct !{!349, !112}
!350 = !{!351, !13, i64 0}
!351 = !{!"_ZTSN13duckdb_yyjson20yyjson_mut_write_ctxE", !13, i64 0, !55, i64 8}
!352 = !{!351, !55, i64 8}
!353 = distinct !{!353, !112}
!354 = distinct !{!354, !112}
!355 = distinct !{!355, !112}
!356 = distinct !{!356, !112}
!357 = distinct !{null}
!358 = distinct !{!358, !112}
!359 = distinct !{!359, !112}
!360 = distinct !{!360, !27, !180, !181}
!361 = distinct !{!361, !27, !180, !181}
!362 = distinct !{!362, !27, !180, !181}
!363 = distinct !{!363, !112}
!364 = distinct !{!364, !27, !180}
!365 = distinct !{!365, !27, !180}
!366 = !{!56, !56, i64 0}
!367 = !{!65, !55, i64 88}
!368 = !{!65, !55, i64 80}
!369 = distinct !{!369, !27}
!370 = !{ptr @_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE}
!371 = distinct !{!371, !27}
!372 = distinct !{!372, !27}
!373 = distinct !{!373, !27}
!374 = distinct !{!374, !27}
!375 = distinct !{!375, !27}
!376 = distinct !{!376, !27}
!377 = distinct !{!377, !27}
end_hunk_5
