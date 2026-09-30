Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_solver?download=true
inline.NumInlined: 1025
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 130
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZNK2cv4usac30HomographyNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE:bb.a

.preheader439:                                    ; preds = %bb.w
  br i1 %i.zh, label %.lr.ph, label %.loopexit436

.lr.ph:                                           ; preds = %.preheader439
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.z

.preheader435:                                    ; preds = %bb.w
  br i1 %i.zh, label %.lr.ph449, label %.loopexit436

.lr.ph449:                                        ; preds = %.preheader435
  %i.zi = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.zj = trunc nuw i8 %i.zi to i1
  %wide.trip.count487 = zext nneg i32 %2 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph449, %.preheader434
  %.sroa.101.0 = phi double [ 0.000000e+00, %.lr.ph449 ], [ %i.acq, %.preheader434 ]
  %.sroa.254.0 = phi double [ 0.000000e+00, %.lr.ph449 ], [ %i.aev, %.preheader434 ]
  %indvars.iv484 = phi i64 [ 0, %.lr.ph449 ], [ %indvars.iv.next485, %.preheader434 ] ; 3 uses
  %i.zk = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aas, %.preheader434 ]
  %i.zl = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abv, %.preheader434 ]
  %i.zm = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acb, %.preheader434 ]
  %i.zn = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abj, %.preheader434 ]
  %i.zo = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abq, %.preheader434 ]
  %i.zp = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aby, %.preheader434 ]
  %i.zq = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.ach, %.preheader434 ]
  %i.zr = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acn, %.preheader434 ]
  %i.zs = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acp, %.preheader434 ]
  %i.zt = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acs, %.preheader434 ]
  %i.zu = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acw, %.preheader434 ]
  %i.zv = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.add, %.preheader434 ]
  %i.zw = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.adi, %.preheader434 ]
  %i.zx = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.adn, %.preheader434 ]
  %i.zy = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.adq, %.preheader434 ]
  %i.zz = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.adu, %.preheader434 ]
  %i.aaa = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.adx, %.preheader434 ]
  %i.aab = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aec, %.preheader434 ]
  %i.aac = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aes, %.preheader434 ]
  %i.aad = phi <4 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aep, %.preheader434 ]
  %i.aae = trunc nuw nsw i64 %indvars.iv484 to i32
  br i1 %i.zj, label %.preheader434, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aaf = load ptr, ptr %1, align 8, !tbaa !65
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %indvars.iv484
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !52
  br label %.preheader434

.preheader434:                                    ; preds = %bb.x, %bb.y
  %.in367 = phi i32 [ %i.aah, %bb.y ], [ %i.aae, %bb.x ]
  %i.aai = shl nsw i32 %.in367, 2
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.aaj ; 3 uses
  %i.aal = getelementptr i8, ptr %i.aak, i64 8
  %i.aam = getelementptr i8, ptr %i.aak, i64 12
  %i.aan = load <2 x float>, ptr %i.aak, align 4, !tbaa !67 ; 3 uses
  %i.aao = fneg <2 x float> %i.aan
  %i.aap = fpext <2 x float> %i.aao to <2 x double> ; 13 uses
  %i.aaq = shufflevector <2 x double> %i.aap, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.aar = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaq, <2 x double> %i.aap, <2 x double> zeroinitializer)
  %i.aas = fadd <2 x double> %i.zk, %i.aar        ; 2 uses
  %i.aat = extractelement <2 x double> %i.aap, i64 0
  %i.aau = extractelement <2 x double> %i.aap, i64 1 ; 4 uses
  %i.aav = load float, ptr %i.aal, align 4, !tbaa !67 ; 2 uses
  %i.aaw = load float, ptr %i.aam, align 4, !tbaa !67 ; 2 uses
  %i.aax = fpext float %i.aav to double           ; 6 uses
  %i.aay = fpext float %i.aaw to double           ; 5 uses
  %i.aaz = insertelement <2 x float> poison, float %i.aav, i64 0
  %i.aba = shufflevector <2 x float> %i.aaz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abb = fmul <2 x float> %i.aan, %i.aba
  %i.abc = fpext <2 x float> %i.abb to <2 x double> ; 8 uses
  %i.abd = insertelement <2 x float> poison, float %i.aaw, i64 0
  %i.abe = shufflevector <2 x float> %i.abd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abf = fmul <2 x float> %i.aan, %i.abe
  %i.abg = fpext <2 x float> %i.abf to <2 x double> ; 8 uses
  %i.abh = fmul <2 x double> %i.abg, zeroinitializer ; 4 uses
  %i.abi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaq, <2 x double> %i.abc, <2 x double> %i.abh)
  %i.abj = fadd <2 x double> %i.zn, %i.abi        ; 2 uses
  %i.abk = fmul double %i.aay, 0.000000e+00       ; 3 uses
  %i.abl = insertelement <2 x double> %i.aap, double %i.aax, i64 0
  %i.abm = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.abk, i64 0
  %i.abn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aap, <2 x double> %i.abl, <2 x double> %i.abm) ; 2 uses
  %i.abo = fsub <2 x double> zeroinitializer, %i.aap ; 2 uses
  %i.abp = shufflevector <2 x double> %i.abn, <2 x double> %i.abo, <2 x i32> <i32 1, i32 3>
  %i.abq = fadd <2 x double> %i.zo, %i.abp        ; 2 uses
  %i.abr = fmul <2 x double> %i.aap, zeroinitializer ; 4 uses
  %i.abs = extractelement <2 x double> %i.abr, i64 1
  %i.abt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaq, <2 x double> zeroinitializer, <2 x double> %i.abr) ; 2 uses
  %i.abu = shufflevector <2 x double> %i.abo, <2 x double> %i.abt, <2 x i32> <i32 0, i32 2>
  %i.abv = fadd <2 x double> %i.zl, %i.abu        ; 2 uses
  %i.abw = shufflevector <2 x double> %i.aap, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.abx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abw, <2 x double> zeroinitializer, <2 x double> %i.abr)
  %i.aby = fadd <2 x double> %i.zp, %i.abx        ; 2 uses
  %i.abz = fmul <2 x double> %i.aap, zeroinitializer ; 2 uses
  %i.aca = shufflevector <2 x double> %i.abt, <2 x double> %i.abz, <2 x i32> <i32 1, i32 2>
  %i.acb = fadd <2 x double> %i.zm, %i.aca        ; 2 uses
  %i.acc = extractelement <2 x double> %i.abc, i64 0 ; 3 uses
  %i.acd = extractelement <2 x double> %i.abh, i64 0
  %i.ace = call double @llvm.fmuladd.f64(double %i.aau, double %i.acc, double %i.acd)
  %i.acf = shufflevector <2 x double> %i.abz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.acg = insertelement <2 x double> %i.acf, double %i.ace, i64 1
  %i.ach = fadd <2 x double> %i.zq, %i.acg        ; 2 uses
  %i.aci = shufflevector <2 x double> %i.abc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.acj = insertelement <2 x double> %i.aci, double %i.aax, i64 1 ; 4 uses
  %i.ack = shufflevector <2 x double> %i.abh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.acl = insertelement <2 x double> %i.ack, double %i.abk, i64 1
  %i.acm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abw, <2 x double> %i.acj, <2 x double> %i.acl)
  %i.acn = fadd <2 x double> %i.zr, %i.acm        ; 2 uses
  %i.aco = shufflevector <2 x double> %i.abr, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.acp = fadd <2 x double> %i.zs, %i.aco        ; 2 uses
  %i.acq = fadd double %.sroa.101.0, %i.abs       ; 2 uses
  %i.acr = fsub <2 x double> %i.abh, %i.abc
  %i.acs = fadd <2 x double> %i.zt, %i.acr        ; 2 uses
  %i.act = fsub double %i.abk, %i.aax
  %i.acu = fmul <2 x double> %i.aaq, %i.aap
  %i.acv = fadd <2 x double> %i.acu, <double -0.000000e+00, double 0.000000e+00>
  %i.acw = fadd <2 x double> %i.zu, %i.acv        ; 2 uses
  %i.acx = fsub double 0.000000e+00, %i.aat
  %i.acy = extractelement <2 x double> %i.abg, i64 0
  %foldExtExtBinop1277 = fmul <2 x double> %i.aap, %i.abg
  %i.acz = extractelement <2 x double> %foldExtExtBinop1277, i64 0
  %i.ada = call double @llvm.fmuladd.f64(double %i.acc, double 0.000000e+00, double %i.acz)
  %i.adb = insertelement <2 x double> poison, double %i.acx, i64 0
  %i.adc = insertelement <2 x double> %i.adb, double %i.ada, i64 1
  %i.add = fadd <2 x double> %i.zv, %i.adc        ; 2 uses
  %i.ade = shufflevector <2 x double> %i.abg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.adf = insertelement <2 x double> %i.ade, double %i.aay, i64 1 ; 3 uses
  %i.adg = fmul <2 x double> %i.aaq, %i.adf
  %i.adh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acj, <2 x double> zeroinitializer, <2 x double> %i.adg)
  %i.adi = fadd <2 x double> %i.zw, %i.adh        ; 2 uses
  %i.adj = fmul double %i.aau, %i.aau
  %i.adk = fsub double 0.000000e+00, %i.aau
  %i.adl = insertelement <2 x double> poison, double %i.adj, i64 0
  %i.adm = insertelement <2 x double> %i.adl, double %i.adk, i64 1
  %i.adn = fadd <2 x double> %i.zx, %i.adm        ; 2 uses
  %i.ado = fmul <2 x double> %i.abw, %i.abg
  %i.adp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abc, <2 x double> zeroinitializer, <2 x double> %i.ado)
  %i.adq = fadd <2 x double> %i.zy, %i.adp        ; 2 uses
  %i.adr = fneg double %i.acy
  %i.ads = call double @llvm.fmuladd.f64(double %i.acc, double 0.000000e+00, double %i.adr)
  %i.adt = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ads, i64 1
  %i.adu = fadd <2 x double> %i.zz, %i.adt        ; 2 uses
  %i.adv = fneg <2 x double> %i.adf
  %i.adw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acj, <2 x double> zeroinitializer, <2 x double> %i.adv)
  %i.adx = fadd <2 x double> %i.aaa, %i.adw       ; 2 uses
  %i.ady = shufflevector <2 x double> %i.abg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adz = fmul <2 x double> %i.ady, %i.abg
  %i.aea = shufflevector <2 x double> %i.abc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aeb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aea, <2 x double> %i.abc, <2 x double> %i.adz)
  %i.aec = fadd <2 x double> %i.aab, %i.aeb       ; 2 uses
  %i.aed = shufflevector <2 x double> %i.aap, <2 x double> %i.abg, <2 x i32> <i32 1, i32 2>
  %i.aee = insertelement <2 x double> poison, double %i.aay, i64 0
  %i.aef = shufflevector <2 x double> %i.aee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aeg = fmul <2 x double> %i.aed, %i.aef
  %i.aeh = shufflevector <2 x double> %i.abc, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.aei = insertelement <2 x double> poison, double %i.aax, i64 0
  %i.aej = shufflevector <2 x double> %i.aei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeh, <2 x double> %i.aej, <2 x double> %i.aeg)
  %i.ael = shufflevector <2 x double> %i.abn, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aem = insertelement <4 x double> %i.ael, double %i.act, i64 1
  %i.aen = shufflevector <2 x double> %i.aek, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aeo = shufflevector <4 x double> %i.aem, <4 x double> %i.aen, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aep = fadd <4 x double> %i.aad, %i.aeo       ; 2 uses
  %i.aeq = fmul <2 x double> %i.ade, %i.adf
  %i.aer = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aci, <2 x double> %i.acj, <2 x double> %i.aeq)
  %i.aes = fadd <2 x double> %i.aac, %i.aer       ; 2 uses
  %i.aet = fmul double %i.aay, %i.aay
  %i.aeu = call double @llvm.fmuladd.f64(double %i.aax, double %i.aax, double %i.aet)
  %i.aev = fadd double %.sroa.254.0, %i.aeu       ; 2 uses
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1 ; 2 uses
  %exitcond488.not = icmp eq i64 %indvars.iv.next485, %wide.trip.count487
  br i1 %exitcond488.not, label %.loopexit436.loopexit, label %bb.x, !llvm.loop !204

bb.z:                                             ; preds = %.lr.ph, %.loopexit438
  %.sroa.254.1 = phi double [ 0.000000e+00, %.lr.ph ], [ %.sroa.254.2, %.loopexit438 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit438 ] ; 4 uses
  %i.aew = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajz, %.loopexit438 ] ; 2 uses
  %i.aex = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.aka, %.loopexit438 ] ; 2 uses
  %i.aey = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akb, %.loopexit438 ] ; 2 uses
  %i.aez = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akc, %.loopexit438 ] ; 2 uses
  %i.afa = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akd, %.loopexit438 ] ; 2 uses
  %i.afb = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ake, %.loopexit438 ] ; 2 uses
  %i.afc = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akf, %.loopexit438 ] ; 2 uses
  %i.afd = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akg, %.loopexit438 ] ; 2 uses
  %i.afe = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akh, %.loopexit438 ] ; 2 uses
  %i.aff = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.aki, %.loopexit438 ] ; 2 uses
  %i.afg = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akj, %.loopexit438 ] ; 2 uses
  %i.afh = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akk, %.loopexit438 ] ; 2 uses
  %i.afi = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akl, %.loopexit438 ] ; 2 uses
  %i.afj = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akm, %.loopexit438 ] ; 2 uses
  %i.afk = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akn, %.loopexit438 ] ; 2 uses
  %i.afl = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ako, %.loopexit438 ] ; 2 uses
  %i.afm = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akp, %.loopexit438 ] ; 2 uses
  %i.afn = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akq, %.loopexit438 ] ; 2 uses
  %i.afo = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akr, %.loopexit438 ] ; 2 uses
  %i.afp = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.aks, %.loopexit438 ] ; 2 uses
  %i.afq = phi <4 x double> [ zeroinitializer, %.lr.ph ], [ %i.akt, %.loopexit438 ] ; 2 uses
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %indvars.iv
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !61 ; 6 uses
  %i.aft = fcmp olt double %i.afs, f0x3E80000000000000
  br i1 %i.aft, label %.loopexit438, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.afu = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.afv = trunc nuw i8 %i.afu to i1
  %i.afw = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.afv, label %.preheader437, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.afx = load ptr, ptr %1, align 8, !tbaa !65
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %indvars.iv
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !52
  br label %.preheader437

.preheader437:                                    ; preds = %bb.aa, %bb.ab
  %.in = phi i32 [ %i.afz, %bb.ab ], [ %i.afw, %bb.aa ]
  %i.aga = shl nsw i32 %.in, 2
  %i.agb = sext i32 %i.aga to i64
  %i.agc = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.agb ; 2 uses
  %i.agd = getelementptr i8, ptr %i.agc, i64 8
  %i.age = fneg double %i.afs                     ; 6 uses
  %i.agf = load <2 x float>, ptr %i.agc, align 4, !tbaa !67
  %i.agg = fpext <2 x float> %i.agf to <2 x double> ; 3 uses
  %i.agh = insertelement <2 x double> poison, double %i.age, i64 0
  %i.agi = shufflevector <2 x double> %i.agh, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.agj = fmul <2 x double> %i.agi, %i.agg       ; 11 uses
  %i.agk = shufflevector <2 x double> %i.agj, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.agl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agk, <2 x double> %i.agj, <2 x double> zeroinitializer)
  %i.agm = fadd <2 x double> %i.aew, %i.agl
  %i.agn = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.age, i64 0
  %i.ago = shufflevector <2 x double> %i.agj, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 7 uses
  %i.agp = insertelement <2 x double> %i.ago, double %i.afs, i64 1
  %i.agq = fmul <2 x double> %i.agp, <double 0.000000e+00, double -0.000000e+00> ; 4 uses
  %i.agr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agk, <2 x double> zeroinitializer, <2 x double> %i.agq)
  %i.ags = fadd <2 x double> %i.aey, %i.agr
  %i.agt = load <2 x float>, ptr %i.agd, align 4, !tbaa !67
  %i.agu = fpext <2 x float> %i.agt to <2 x double>
  %i.agv = insertelement <2 x double> poison, double %i.afs, i64 0 ; 2 uses
  %i.agw = shufflevector <2 x double> %i.agv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agx = fmul <2 x double> %i.agw, %i.agu       ; 9 uses
  %i.agy = shufflevector <2 x double> %i.agx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agz = fmul <2 x double> %i.agy, %i.agg       ; 9 uses
  %i.aha = shufflevector <2 x double> %i.agx, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ahb = fmul <2 x double> %i.aha, %i.agg       ; 7 uses
  %i.ahc = fmul <2 x double> %i.ahb, zeroinitializer ; 4 uses
  %i.ahd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agk, <2 x double> %i.agz, <2 x double> %i.ahc)
  %i.ahe = fadd <2 x double> %i.aez, %i.ahd
  %i.ahf = extractelement <2 x double> %i.agx, i64 0 ; 2 uses
  %i.ahg = insertelement <2 x double> %i.ago, double %i.age, i64 1
  %i.ahh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ago, <2 x double> %i.ahg, <2 x double> zeroinitializer)
  %i.ahi = fadd <2 x double> %i.afa, %i.ahh
  %i.ahj = shufflevector <2 x double> %i.agj, <2 x double> %i.agq, <2 x i32> <i32 0, i32 2>
  %i.ahk = fmul <2 x double> %i.ahj, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.ahl = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.ahk, <2 x i32> <i32 0, i32 2>
  %i.ahm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agk, <2 x double> %i.agn, <2 x double> %i.ahl)
  %i.ahn = fadd <2 x double> %i.aex, %i.ahm
  %i.aho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ago, <2 x double> zeroinitializer, <2 x double> %i.ahk)
  %i.ahp = fadd <2 x double> %i.afb, %i.aho
  %i.ahq = shufflevector <2 x double> %i.agz, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ahr = shufflevector <2 x double> %i.agq, <2 x double> %i.ahc, <2 x i32> <i32 1, i32 2>
  %i.ahs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ago, <2 x double> %i.ahq, <2 x double> %i.ahr)
  %i.aht = fadd <2 x double> %i.afc, %i.ahs
  %i.ahu = shufflevector <2 x double> %i.ahc, <2 x double> %i.agx, <2 x i32> <i32 1, i32 3>
  %i.ahv = fmul <2 x double> %i.ahu, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.ahw = shufflevector <2 x double> %i.agz, <2 x double> %i.agx, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.ahx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ago, <2 x double> %i.ahw, <2 x double> %i.ahv)
  %i.ahy = fadd <2 x double> %i.afd, %i.ahx
  %i.ahz = insertelement <2 x double> %i.agv, double %i.age, i64 1 ; 2 uses
  %i.aia = insertelement <2 x double> %i.ahz, double 0.000000e+00, i64 1
  %i.aib = shufflevector <2 x double> %i.ahk, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.aic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahz, <2 x double> %i.aia, <2 x double> %i.aib)
  %i.aid = fadd <2 x double> %i.afe, %i.aic
  %i.aie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agi, <2 x double> zeroinitializer, <2 x double> %i.agq)
  %i.aif = fadd <2 x double> %i.aff, %i.aie
  %i.aig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agi, <2 x double> %i.agz, <2 x double> %i.ahc)
  %i.aih = fadd <2 x double> %i.afg, %i.aig
  %i.aii = fmul <2 x double> %i.agk, %i.agj
  %i.aij = fadd <2 x double> %i.aii, <double -0.000000e+00, double 0.000000e+00>
  %i.aik = fadd <2 x double> %i.afh, %i.aij
  %24 = shufflevector <2 x double> %i.ahb, <2 x double> %i.agx, <2 x i32> <i32 1, i32 3> ; 3 uses
  %25 = fmul <2 x double> %i.agk, %24
  %26 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahw, <2 x double> zeroinitializer, <2 x double> %25)
  %27 = fadd <2 x double> %i.afj, %26
  %i.ail = fmul <2 x double> %i.agw, %i.agj       ; 2 uses
  %28 = extractelement <2 x double> %i.ail, i64 0
  %29 = fsub double 0.000000e+00, %28
  %30 = insertelement <2 x double> poison, double %29, i64 0
  %foldExtExtBinop1279 = fmul <2 x double> %i.agj, %i.agj
  %31 = extractelement <2 x double> %i.ail, i64 1
  %i.aim = fsub double 0.000000e+00, %31
  %32 = shufflevector <2 x double> %foldExtExtBinop1279, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ain = insertelement <2 x double> %32, double %i.aim, i64 1
  %i.aio = fadd <2 x double> %i.afk, %i.ain
  %i.aip = fmul <2 x double> %i.ago, %i.ahb
  %i.aiq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agz, <2 x double> zeroinitializer, <2 x double> %i.aip)
  %i.air = fadd <2 x double> %i.afl, %i.aiq
  %i.ais = fmul double %i.afs, %i.afs
  %i.ait = shufflevector <2 x double> %i.ahb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aiu = insertelement <2 x double> %i.agj, double %i.age, i64 1
  %i.aiv = fmul <2 x double> %i.ait, %i.aiu
  %i.aiw = shufflevector <2 x double> %i.agz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiw, <2 x double> zeroinitializer, <2 x double> %i.aiv) ; 2 uses
  %i.aiy = shufflevector <2 x double> %30, <2 x double> %i.aix, <2 x i32> <i32 0, i32 2>
  %i.aiz = fadd <2 x double> %i.afi, %i.aiy
  %i.aja = insertelement <2 x double> %i.aix, double %i.ais, i64 0
  %i.ajb = fadd <2 x double> %i.afm, %i.aja
  %i.ajc = fmul <2 x double> %24, %i.agi
  %i.ajd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahw, <2 x double> zeroinitializer, <2 x double> %i.ajc)
  %i.aje = fadd <2 x double> %i.afn, %i.ajd
  %i.ajf = fmul <2 x double> %i.ait, %i.ahb
  %i.ajg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiw, <2 x double> %i.agz, <2 x double> %i.ajf)
  %i.ajh = fadd <2 x double> %i.afo, %i.ajg
  %i.aji = shufflevector <2 x double> %i.agj, <2 x double> %i.ahb, <2 x i32> <i32 1, i32 2>
  %i.ajj = fmul <2 x double> %i.aji, %i.aha
  %i.ajk = shufflevector <2 x double> %i.agj, <2 x double> %i.agz, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.ajl = insertelement <4 x double> %i.ajk, double 0.000000e+00, i64 2
  %i.ajm = insertelement <4 x double> %i.ajl, double %i.age, i64 1
  %i.ajn = shufflevector <2 x double> %i.agx, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ajo = shufflevector <2 x double> %i.ahv, <2 x double> %i.ajj, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.ajp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ajm, <4 x double> %i.ajn, <4 x double> %i.ajo)
  %i.ajq = fadd <4 x double> %i.afq, %i.ajp
  %i.ajr = shufflevector <2 x double> %i.ahb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ajs = fmul <2 x double> %i.ajr, %24
  %i.ajt = shufflevector <2 x double> %i.agz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aju = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajt, <2 x double> %i.ahw, <2 x double> %i.ajs)
  %i.ajv = fadd <2 x double> %i.afp, %i.aju
  %foldExtExtBinop1279.a = fmul <2 x double> %i.agx, %i.agx
  %i.ajw = extractelement <2 x double> %foldExtExtBinop1279.a, i64 1
  %i.ajx = call double @llvm.fmuladd.f64(double %i.ahf, double %i.ahf, double %i.ajw)
  %i.ajy = fadd double %.sroa.254.1, %i.ajx
  br label %.loopexit438

.loopexit438:                                     ; preds = %.preheader437, %bb.z
  %.sroa.254.2 = phi double [ %.sroa.254.1, %bb.z ], [ %i.ajy, %.preheader437 ] ; 2 uses
  %i.ajz = phi <2 x double> [ %i.aew, %bb.z ], [ %i.agm, %.preheader437 ] ; 2 uses
  %i.aka = phi <2 x double> [ %i.aex, %bb.z ], [ %i.ahn, %.preheader437 ] ; 2 uses
  %i.akb = phi <2 x double> [ %i.aey, %bb.z ], [ %i.ags, %.preheader437 ] ; 2 uses
  %i.akc = phi <2 x double> [ %i.aez, %bb.z ], [ %i.ahe, %.preheader437 ] ; 2 uses
  %i.akd = phi <2 x double> [ %i.afa, %bb.z ], [ %i.ahi, %.preheader437 ] ; 2 uses
  %i.ake = phi <2 x double> [ %i.afb, %bb.z ], [ %i.ahp, %.preheader437 ] ; 2 uses
  %i.akf = phi <2 x double> [ %i.afc, %bb.z ], [ %i.aht, %.preheader437 ] ; 2 uses
  %i.akg = phi <2 x double> [ %i.afd, %bb.z ], [ %i.ahy, %.preheader437 ] ; 2 uses
  %i.akh = phi <2 x double> [ %i.afe, %bb.z ], [ %i.aid, %.preheader437 ] ; 2 uses
  %i.aki = phi <2 x double> [ %i.aff, %bb.z ], [ %i.aif, %.preheader437 ] ; 2 uses
  %i.akj = phi <2 x double> [ %i.afg, %bb.z ], [ %i.aih, %.preheader437 ] ; 2 uses
  %i.akk = phi <2 x double> [ %i.afh, %bb.z ], [ %i.aik, %.preheader437 ] ; 2 uses
  %i.akl = phi <2 x double> [ %i.afi, %bb.z ], [ %i.aiz, %.preheader437 ] ; 2 uses
  %i.akm = phi <2 x double> [ %i.afj, %bb.z ], [ %27, %.preheader437 ] ; 2 uses
  %i.akn = phi <2 x double> [ %i.afk, %bb.z ], [ %i.aio, %.preheader437 ] ; 2 uses
  %i.ako = phi <2 x double> [ %i.afl, %bb.z ], [ %i.air, %.preheader437 ] ; 2 uses
  %i.akp = phi <2 x double> [ %i.afm, %bb.z ], [ %i.ajb, %.preheader437 ] ; 2 uses
  %i.akq = phi <2 x double> [ %i.afn, %bb.z ], [ %i.aje, %.preheader437 ] ; 2 uses
  %i.akr = phi <2 x double> [ %i.afo, %bb.z ], [ %i.ajh, %.preheader437 ] ; 2 uses
  %i.aks = phi <2 x double> [ %i.afp, %bb.z ], [ %i.ajv, %.preheader437 ] ; 2 uses
  %i.akt = phi <4 x double> [ %i.afq, %bb.z ], [ %i.ajq, %.preheader437 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit436, label %bb.z, !llvm.loop !205

.loopexit436.loopexit:                            ; preds = %.preheader434
  %i.aku = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.acq, i64 0
  br label %.loopexit436

.loopexit436:                                     ; preds = %.loopexit438, %.loopexit436.loopexit, %.preheader439, %.preheader435
  %.sroa.254.3 = phi double [ 0.000000e+00, %.preheader439 ], [ 0.000000e+00, %.preheader435 ], [ %i.aev, %.loopexit436.loopexit ], [ %.sroa.254.2, %.loopexit438 ]
  %i.akv = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.aas, %.loopexit436.loopexit ], [ %i.ajz, %.loopexit438 ] ; 2 uses
  %i.akw = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.abv, %.loopexit436.loopexit ], [ %i.aka, %.loopexit438 ] ; 3 uses
  %i.akx = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.acb, %.loopexit436.loopexit ], [ %i.akb, %.loopexit438 ] ; 3 uses
  %i.aky = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.abj, %.loopexit436.loopexit ], [ %i.akc, %.loopexit438 ] ; 3 uses
  %i.akz = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.abq, %.loopexit436.loopexit ], [ %i.akd, %.loopexit438 ] ; 2 uses
  %i.ala = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.aby, %.loopexit436.loopexit ], [ %i.ake, %.loopexit438 ] ; 3 uses
  %i.alb = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.ach, %.loopexit436.loopexit ], [ %i.akf, %.loopexit438 ] ; 3 uses
  %i.alc = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.acn, %.loopexit436.loopexit ], [ %i.akg, %.loopexit438 ] ; 3 uses
  %i.ald = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.acp, %.loopexit436.loopexit ], [ %i.akh, %.loopexit438 ] ; 2 uses
  %i.ale = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.aku, %.loopexit436.loopexit ], [ %i.aki, %.loopexit438 ] ; 3 uses
  %i.alf = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.acs, %.loopexit436.loopexit ], [ %i.akj, %.loopexit438 ] ; 3 uses
  %i.alg = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.acw, %.loopexit436.loopexit ], [ %i.akk, %.loopexit438 ] ; 2 uses
  %i.alh = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.add, %.loopexit436.loopexit ], [ %i.akl, %.loopexit438 ] ; 3 uses
  %i.ali = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.adi, %.loopexit436.loopexit ], [ %i.akm, %.loopexit438 ] ; 3 uses
  %i.alj = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.adn, %.loopexit436.loopexit ], [ %i.akn, %.loopexit438 ] ; 2 uses
  %i.alk = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.adq, %.loopexit436.loopexit ], [ %i.ako, %.loopexit438 ] ; 3 uses
  %i.all = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.adu, %.loopexit436.loopexit ], [ %i.akp, %.loopexit438 ] ; 2 uses
  %i.alm = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.adx, %.loopexit436.loopexit ], [ %i.akq, %.loopexit438 ] ; 3 uses
  %i.aln = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.aec, %.loopexit436.loopexit ], [ %i.akr, %.loopexit438 ] ; 2 uses
  %i.alo = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.aes, %.loopexit436.loopexit ], [ %i.aks, %.loopexit438 ] ; 2 uses
  %i.alp = phi <4 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.aep, %.loopexit436.loopexit ], [ %i.akt, %.loopexit438 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %14, i8 0, i64 648, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %15, i8 0, i64 72, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store <2 x double> %i.akv, ptr %17, align 16, !tbaa !61
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store <2 x double> %i.akw, ptr %.sroa.15.0..sroa_idx, align 16, !tbaa !61
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 32
  store <2 x double> %i.akx, ptr %.sroa.25.0..sroa_idx, align 16, !tbaa !61
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 48
  store <2 x double> %i.aky, ptr %.sroa.35.0..sroa_idx, align 16, !tbaa !61
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.alq = extractelement <4 x double> %i.alp, i64 0 ; 2 uses
  store double %i.alq, ptr %.sroa.45.0..sroa_idx, align 16, !tbaa !61
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.alr = extractelement <2 x double> %i.akv, i64 1
  store double %i.alr, ptr %.sroa.50.0..sroa_idx, align 8, !tbaa !61
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 80
  store <2 x double> %i.akz, ptr %.sroa.51.0..sroa_idx, align 16, !tbaa !61
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 96
  store <2 x double> %i.ala, ptr %.sroa.60.0..sroa_idx, align 16, !tbaa !61
  %.sroa.70.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 112
  store <2 x double> %i.alb, ptr %.sroa.70.0..sroa_idx, align 16, !tbaa !61
  %.sroa.80.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 128
  store <2 x double> %i.alc, ptr %.sroa.80.0..sroa_idx, align 16, !tbaa !61
  %.sroa.90.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 144
  %i.als = shufflevector <2 x double> %i.akw, <2 x double> %i.akz, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.als, ptr %.sroa.90.0..sroa_idx, align 16, !tbaa !61
  %.sroa.92.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 160
  store <2 x double> %i.ald, ptr %.sroa.92.0..sroa_idx, align 16, !tbaa !61
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 176
  store <2 x double> %i.ale, ptr %.sroa.101.0..sroa_idx, align 16, !tbaa !61
  %.sroa.111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 192
  store <2 x double> %i.alf, ptr %.sroa.111.0..sroa_idx, align 16, !tbaa !61
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 208
  %i.alt = extractelement <4 x double> %i.alp, i64 1 ; 2 uses
  store double %i.alt, ptr %.sroa.121.0..sroa_idx, align 16, !tbaa !61
  %.sroa.126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 216
  %i.alu = shufflevector <2 x double> %i.akw, <2 x double> %i.ala, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.alu, ptr %.sroa.126.0..sroa_idx, align 8, !tbaa !61
  %.sroa.128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 232
  %i.alv = extractelement <2 x double> %i.ald, i64 1
  store double %i.alv, ptr %.sroa.128.0..sroa_idx, align 8, !tbaa !61
  %.sroa.129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 240
  store <2 x double> %i.alg, ptr %.sroa.129.0..sroa_idx, align 16, !tbaa !61
  %.sroa.138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 256
  store <2 x double> %i.alh, ptr %.sroa.138.0..sroa_idx, align 16, !tbaa !61
  %.sroa.148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 272
  store <2 x double> %i.ali, ptr %.sroa.148.0..sroa_idx, align 16, !tbaa !61
  %.sroa.158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 288
  %i.alw = shufflevector <2 x double> %i.akx, <2 x double> %i.ala, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.alw, ptr %.sroa.158.0..sroa_idx, align 16, !tbaa !61
  %.sroa.160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 304
  %i.alx = shufflevector <2 x double> %i.ale, <2 x double> %i.alg, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.alx, ptr %.sroa.160.0..sroa_idx, align 16, !tbaa !61
  %.sroa.162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 320
  store <2 x double> %i.alj, ptr %.sroa.162.0..sroa_idx, align 16, !tbaa !61
  %.sroa.171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 336
  store <2 x double> %i.alk, ptr %.sroa.171.0..sroa_idx, align 16, !tbaa !61
  %.sroa.181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 352
  %i.aly = extractelement <4 x double> %i.alp, i64 2 ; 2 uses
  store double %i.aly, ptr %.sroa.181.0..sroa_idx, align 16, !tbaa !61
  %.sroa.186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 360
  %i.alz = shufflevector <2 x double> %i.akx, <2 x double> %i.alb, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.alz, ptr %.sroa.186.0..sroa_idx, align 8, !tbaa !61
  %.sroa.188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 376
  %i.ama = shufflevector <2 x double> %i.ale, <2 x double> %i.alh, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ama, ptr %.sroa.188.0..sroa_idx, align 8, !tbaa !61
  %.sroa.190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 392
  %i.amb = extractelement <2 x double> %i.alj, i64 1
  store double %i.amb, ptr %.sroa.190.0..sroa_idx, align 8, !tbaa !61
  %.sroa.191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 400
  store <2 x double> %i.all, ptr %.sroa.191.0..sroa_idx, align 16, !tbaa !61
  %.sroa.200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 416
  store <2 x double> %i.alm, ptr %.sroa.200.0..sroa_idx, align 16, !tbaa !61
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 432
  %i.amc = shufflevector <2 x double> %i.aky, <2 x double> %i.alb, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.amc, ptr %.sroa.210.0..sroa_idx, align 16, !tbaa !61
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 448
  %i.amd = shufflevector <2 x double> %i.alf, <2 x double> %i.alh, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.amd, ptr %.sroa.212.0..sroa_idx, align 16, !tbaa !61
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 464
  %i.ame = shufflevector <2 x double> %i.alk, <2 x double> %i.all, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ame, ptr %.sroa.214.0..sroa_idx, align 16, !tbaa !61
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 480
  store <2 x double> %i.aln, ptr %.sroa.216.0..sroa_idx, align 16, !tbaa !61
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 496
  %i.amf = extractelement <4 x double> %i.alp, i64 3 ; 2 uses
  store double %i.amf, ptr %.sroa.225.0..sroa_idx, align 16, !tbaa !61
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 504
  %i.amg = shufflevector <2 x double> %i.aky, <2 x double> %i.alc, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.amg, ptr %.sroa.230.0..sroa_idx, align 8, !tbaa !61
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 520
  %i.amh = shufflevector <2 x double> %i.alf, <2 x double> %i.ali, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.amh, ptr %.sroa.232.0..sroa_idx, align 8, !tbaa !61
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 536
  %i.ami = shufflevector <2 x double> %i.alk, <2 x double> %i.alm, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ami, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !61
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 552
  %i.amj = extractelement <2 x double> %i.aln, i64 1
  store double %i.amj, ptr %.sroa.236.0..sroa_idx, align 8, !tbaa !61
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 560
  store <2 x double> %i.alo, ptr %.sroa.237.0..sroa_idx, align 16, !tbaa !61
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 576
  store double %i.alq, ptr %.sroa.246.0..sroa_idx, align 16, !tbaa !61
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 584
  %i.amk = extractelement <2 x double> %i.alc, i64 1
  store double %i.amk, ptr %.sroa.247.0..sroa_idx, align 8, !tbaa !61
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 592
  store double %i.alt, ptr %.sroa.248.0..sroa_idx, align 16, !tbaa !61
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 600
  %i.aml = extractelement <2 x double> %i.ali, i64 1
  store double %i.aml, ptr %.sroa.249.0..sroa_idx, align 8, !tbaa !61
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 608
  store double %i.aly, ptr %.sroa.250.0..sroa_idx, align 16, !tbaa !61
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 616
  %i.amm = extractelement <2 x double> %i.alm, i64 1
  store double %i.amm, ptr %.sroa.251.0..sroa_idx, align 8, !tbaa !61
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 624
  store double %i.amf, ptr %.sroa.252.0..sroa_idx, align 16, !tbaa !61
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 632
  %i.amn = extractelement <2 x double> %i.alo, i64 1
  store double %i.amn, ptr %.sroa.253.0..sroa_idx, align 8, !tbaa !61
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 640
  store double %.sroa.254.3, ptr %.sroa.254.0..sroa_idx, align 16, !tbaa !61
  %i.amo = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 -1056833530, ptr %16, align 8, !tbaa !78
  %i.amp = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %17, ptr %i.amp, align 8, !tbaa !79
  store i64 38654705673, ptr %i.amo, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.amq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 -1040056314, ptr %18, align 8, !tbaa !78
  store ptr %15, ptr %i.amq, align 8, !tbaa !79
  %i.amr = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 38654705665, ptr %i.amr, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.ams = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 -1040056314, ptr %19, align 8, !tbaa !78
  store ptr %14, ptr %i.ams, align 8, !tbaa !79
  %i.amt = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 38654705673, ptr %i.amt, align 8, !tbaa !52
  %i.amu = invoke noundef zeroext i1 @_ZN2cv5eigenERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.loopexit436
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %i.amu, label %bb.ae, label %.critedge381

bb.ad:                                            ; preds = %.loopexit436
  %i.amv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.al
end_hunk_0
