Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/nonrigid_icp?download=true
inline.NumInlined: 1007
inline.NumDeleted: 377
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS0_9WarpFieldERKNS_7Affine3IfEERKNS_11_InputArrayESA_SA_SA_SA_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1070: ; preds = %bb.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body915

.lr.ph2089.preheader:                             ; preds = %.lr.ph2089.preheader.preheader, %bb.kj
  %indvars.iv22482623 = phi i64 [ %indvars.iv.next2249, %bb.kj ], [ 0, %.lr.ph2089.preheader.preheader ] ; 6 uses
  %i.cds = phi i32 [ %i.cei, %bb.kj ], [ %i.ccl, %.lr.ph2089.preheader.preheader ]
  %i.cdt = phi i32 [ %i.ceh, %bb.kj ], [ %i.ccl, %.lr.ph2089.preheader.preheader ]
  br label %.lr.ph2089

bb.jx:                                            ; preds = %.noexc1260, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1255, %.noexc1258, %bb.jl, %bb.jj, %_ZNSolsEm.exit1046, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1044, %_ZNSolsEf.exit1042, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1040, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEZNK2cv6dynafu7ICPImpl17estimateWarpNodesERNS8_9WarpFieldERKNS7_7Affine3IfEERKNS7_11_InputArrayESI_SI_SI_SI_E3$_1ET0_T_SL_SK_.exit", %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i919, %.noexc.i.i920
  %i.cdu = landingpad { ptr, i32 }
          cleanup
  br label %.body915

bb.jy:                                            ; preds = %bb.jg
  %i.cdv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i1080 = icmp eq ptr %i.boe, null
  br i1 %.not.i.i.i1080, label %.body915, label %bb.jz

bb.jz:                                            ; preds = %.thread1886, %bb.jy
  %i.cdw = phi { ptr, i32 } [ %i.byw, %.thread1886 ], [ %i.cdv, %bb.jy ]
  call void @_ZdlPvm(ptr noundef nonnull %i.boe, i64 noundef %i.bnz) #23
  br label %.body915

bb.ka:                                            ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i1052, %.noexc.i.i1053
  %i.cdx = landingpad { ptr, i32 }
          cleanup
  br label %.body915

bb.kb:                                            ; preds = %bb.jr
  %i.cdy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i1082 = icmp eq ptr %i.cbh, null
  br i1 %.not.i.i.i1082, label %.body915, label %bb.kc

bb.kc:                                            ; preds = %.thread1888, %bb.kb
  %i.cdz = phi { ptr, i32 } [ %i.cce, %.thread1888 ], [ %i.cdy, %bb.kb ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cbh, i64 noundef %i.cbb) #23
  br label %.body915

bb.kd:                                            ; preds = %._crit_edge2093
  %i.cea = landingpad { ptr, i32 }
          cleanup
  br label %.body915

.preheader1927._crit_edge:                        ; preds = %.critedge4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc1091 unwind label %bb.kk

.noexc1091:                                       ; preds = %.preheader1927._crit_edge
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.24, i32 noundef 109) #22
          to label %bb.ke unwind label %bb.kf

bb.ke:                                            ; preds = %.noexc1091
  unreachable

bb.kf:                                            ; preds = %.noexc1091
  %i.ceb = landingpad { ptr, i32 }
          cleanup
  %i.cec = load ptr, ptr %9, align 8, !tbaa !30   ; 2 uses
  %i.ced = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cee = icmp eq ptr %i.cec, %i.ced
  br i1 %i.cee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1085, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1084

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1084: ; preds = %bb.kf
  %i.cef = load i64, ptr %i.ced, align 8, !tbaa !18
  %i.ceg = add i64 %i.cef, 1
  call void @_ZdlPvm(ptr noundef %i.cec, i64 noundef %i.ceg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1085

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1085: ; preds = %bb.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1084
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.body915

.lr.ph2089:                                       ; preds = %.lr.ph2089.preheader, %.critedge4
  %i.ceh = phi i32 [ %i.dcu, %.critedge4 ], [ %i.cdt, %.lr.ph2089.preheader ] ; 5 uses
  %i.cei = phi i32 [ %i.dcu, %.critedge4 ], [ %i.cds, %.lr.ph2089.preheader ] ; 6 uses
  %indvars.iv2245 = phi i64 [ %indvars.iv.next2246, %.critedge4 ], [ 0, %.lr.ph2089.preheader ] ; 7 uses
  %i.cej = icmp sgt i32 %i.cei, 0
  br i1 %i.cej, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %.lr.ph2089
  %i.cek = icmp eq i32 %i.cei, 2
  %.sroa.gep1847.val = load i32, ptr %.sroa.gep1841, align 8
  %.val1914 = load i32, ptr %i.bkm, align 4
  %i.cel = select i1 %i.cek, i32 %.sroa.gep1847.val, i32 %.val1914
  br label %bb.ki

bb.kh:                                            ; preds = %.lr.ph2089
  %i.cem = icmp eq i32 %i.cei, 0
  %i.cen = zext i1 %i.cem to i32
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %i.ceo = phi i32 [ %i.cel, %bb.kg ], [ %i.cen, %bb.kh ]
  %i.cep = sext i32 %i.ceo to i64
  %i.ceq = icmp slt i64 %indvars.iv2245, %i.cep
  br i1 %i.ceq, label %bb.kl, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %indvars.iv.next2249 = add nuw nsw i64 %indvars.iv22482623, 1 ; 2 uses
  %i.cer = icmp eq i32 %i.cei, 2
  %i.ces = load i32, ptr %i.bkm, align 4
  %i.cet = icmp sgt i32 %i.cei, -1
  %i.ceu = zext i1 %i.cet to i32
  %i.cev = select i1 %i.cer, i32 %i.ces, i32 %i.ceu
  %i.cew = sext i32 %i.cev to i64
  %i.cex = icmp slt i64 %indvars.iv.next2249, %i.cew
  br i1 %i.cex, label %.lr.ph2089.preheader, label %._crit_edge2624

bb.kk:                                            ; preds = %.preheader1927._crit_edge
  %i.cey = landingpad { ptr, i32 }
          cleanup
  br label %.body915

bb.kl:                                            ; preds = %bb.ki
  %i.cez = load i32, ptr %i.bmk, align 4, !tbaa !226
  %i.cfa = icmp slt i32 %i.cez, 2
  %i.cfb = load ptr, ptr %i.bml, align 8, !tbaa !228
  %i.cfc = load i64, ptr %i.bmm, align 8
  %i.cfd = mul i64 %i.cfc, %indvars.iv22482623
  %.sink.idx.i1095 = select i1 %i.cfa, i64 0, i64 %i.cfd
  %.sink.i1096 = getelementptr inbounds nuw i8, ptr %i.cfb, i64 %.sink.idx.i1095
  %i.cfe = getelementptr inbounds nuw [12 x i8], ptr %.sink.i1096, i64 %indvars.iv2245 ; 2 uses
  %i.cff = load float, ptr %i.cfe, align 4, !tbaa !24 ; 3 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cfe, i64 4
  %i.cfh = load <2 x float>, ptr %i.cfg, align 4, !tbaa !24 ; 3 uses
  %i.cfi = fcmp une float %i.cff, 0.000000e+00
  %i.cfj = extractelement <2 x float> %i.cfh, i64 0
  %i.cfk = fcmp une float %i.cfj, 0.000000e+00
  %or.cond1906.not2105 = select i1 %i.cfi, i1 true, i1 %i.cfk
  %i.cfl = extractelement <2 x float> %i.cfh, i64 1
  %i.cfm = fcmp une float %i.cfl, 0.000000e+00
  %or.cond1907.not2102 = select i1 %or.cond1906.not2105, i1 true, i1 %i.cfm
  %i.cfn = fcmp ord float %i.cff, 0.000000e+00
  %or.cond1923 = and i1 %i.cfn, %or.cond1907.not2102
  br i1 %or.cond1923, label %bb.km, label %.critedge4

bb.km:                                            ; preds = %bb.kl
  %i.cfo = load i32, ptr %i.bms, align 4, !tbaa !226
  %i.cfp = icmp slt i32 %i.cfo, 2
  %i.cfq = load ptr, ptr %i.bmt, align 8, !tbaa !228
  %i.cfr = load i64, ptr %i.bmu, align 8
  %i.cfs = mul i64 %i.cfr, %indvars.iv22482623
  %.sink.idx.i1099 = select i1 %i.cfp, i64 0, i64 %i.cfs
  %.sink.i1100 = getelementptr inbounds nuw i8, ptr %i.cfq, i64 %.sink.idx.i1099
  %i.cft = getelementptr inbounds nuw [12 x i8], ptr %.sink.i1100, i64 %indvars.iv2245 ; 2 uses
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cft, i64 4
  %i.cfv = load float, ptr %i.cfu, align 4, !tbaa !24
  %i.cfw = load <3 x float>, ptr %i.cft, align 4, !tbaa !24 ; 3 uses
  %i.cfx = extractelement <3 x float> %i.cfw, i64 0 ; 2 uses
  %i.cfy = fcmp une float %i.cfx, 0.000000e+00
  %i.cfz = fcmp une float %i.cfv, 0.000000e+00
  %or.cond1908.not2110 = select i1 %i.cfy, i1 true, i1 %i.cfz
  %i.cga = extractelement <3 x float> %i.cfw, i64 2
  %i.cgb = fcmp une float %i.cga, 0.000000e+00
  %or.cond1909.not2107 = select i1 %or.cond1908.not2110, i1 true, i1 %i.cgb
  %i.cgc = fcmp ord float %i.cfx, 0.000000e+00
  %or.cond1924 = and i1 %i.cgc, %or.cond1909.not2107
  br i1 %or.cond1924, label %bb.kn, label %.critedge4

bb.kn:                                            ; preds = %bb.km
  %i.cgd = load ptr, ptr %i.dn, align 8, !tbaa !142, !nonnull !143, !align !144
  %i.cge = load ptr, ptr %i.cgd, align 8, !tbaa !147 ; 3 uses
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cge, i64 16
  %i.cgg = load <3 x i32>, ptr %i.cgf, align 8, !tbaa !31
  %i.cgh = sitofp <3 x i32> %i.cgg to <3 x float>
  %i.cgi = fmul <3 x float> %i.cfw, %i.cgh        ; 5 uses
  %i.cgj = load i32, ptr %i.bmz, align 4, !tbaa !226
  %i.cgk = icmp slt i32 %i.cgj, 2
  %i.cgl = load ptr, ptr %i.bna, align 8, !tbaa !228
  %i.cgm = load i64, ptr %i.bnb, align 8
  %i.cgn = mul i64 %i.cgm, %indvars.iv22482623
  %.sink.idx.i1103 = select i1 %i.cgk, i64 0, i64 %i.cgn
  %.sink.i1104 = getelementptr inbounds nuw i8, ptr %i.cgl, i64 %.sink.idx.i1103
  %i.cgo = getelementptr inbounds nuw [12 x i8], ptr %.sink.i1104, i64 %indvars.iv2245 ; 2 uses
  %.val715 = load float, ptr %i.cgo, align 4, !tbaa !212 ; 2 uses
  %i.cgp = fcmp ord float %.val715, 0.000000e+00
  br i1 %i.cgp, label %bb.ko, label %.critedge4

bb.ko:                                            ; preds = %bb.kn
  %i.cgq = load i32, ptr %i.bnc, align 4, !tbaa !226
  %i.cgr = icmp slt i32 %i.cgq, 2
  %i.cgs = load ptr, ptr %i.bnd, align 8, !tbaa !228
  %i.cgt = load i64, ptr %i.bne, align 8
  %i.cgu = mul i64 %i.cgt, %indvars.iv22482623
  %.sink.idx.i1105 = select i1 %i.cgr, i64 0, i64 %i.cgu
  %.sink.i1106 = getelementptr inbounds nuw i8, ptr %i.cgs, i64 %.sink.idx.i1105
  %i.cgv = getelementptr inbounds nuw [12 x i8], ptr %.sink.i1106, i64 %indvars.iv2245 ; 3 uses
  %.val714 = load float, ptr %i.cgv, align 4, !tbaa !212 ; 2 uses
  %i.cgw = fcmp ord float %.val714, 0.000000e+00
  br i1 %i.cgw, label %bb.kp, label %.critedge4

bb.kp:                                            ; preds = %bb.ko
  %i.cgx = extractelement <3 x float> %i.cgi, i64 2
  %i.cgy = fptosi float %i.cgx to i32
  %i.cgz = shufflevector <3 x float> %i.cgi, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cha = fptosi <2 x float> %i.cgz to <2 x i32>
  %.sroa.01424.4.insert.insert = bitcast <2 x i32> %i.cha to i64
  %i.chb = fsub float %i.cff, %.val715
  %i.chc = getelementptr inbounds nuw i8, ptr %i.cgo, i64 4
  %i.chd = load <2 x float>, ptr %i.chc, align 4, !tbaa !24, !noalias !242
  %i.che = fsub <2 x float> %i.cfh, %i.chd        ; 2 uses
  %i.chf = call float @llvm.fmuladd.f32(float %.val714, float %i.chb, float 0.000000e+00)
  %i.chg = getelementptr inbounds nuw i8, ptr %i.cgv, i64 4
  %i.chh = load float, ptr %i.chg, align 4, !tbaa !24
  %i.chi = extractelement <2 x float> %i.che, i64 0
  %i.chj = call float @llvm.fmuladd.f32(float %i.chh, float %i.chi, float %i.chf)
  %i.chk = getelementptr inbounds nuw i8, ptr %i.cgv, i64 8
  %i.chl = load float, ptr %i.chk, align 4, !tbaa !24
  %i.chm = extractelement <2 x float> %i.che, i64 1
  %i.chn = call noundef float @llvm.fmuladd.f32(float %i.chl, float %i.chm, float %i.chj) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #21
  %i.cho = load ptr, ptr %i.cge, align 8, !tbaa !11
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 48
  %i.chq = load ptr, ptr %i.chp, align 8
  %i.chr = invoke noundef nonnull align 4 dereferenceable(40) ptr %i.chq(ptr noundef nonnull align 8 dereferenceable(164) %i.cge, i64 %.sroa.01424.4.insert.insert, i32 %i.cgy, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.kq unwind label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %60, ptr noundef nonnull align 4 dereferenceable(40) %i.chr, i64 40, i1 false), !tbaa.struct !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.chs = load i32, ptr %i.b, align 4, !tbaa !31 ; 3 uses
  %i.cht = icmp sgt i32 %i.chs, 0
  br i1 %i.cht, label %.lr.ph2072, label %.loopexit

.lr.ph2072:                                       ; preds = %bb.kq
  %i.chu = load ptr, ptr %i.cs, align 8, !tbaa !152
  %i.chv = load ptr, ptr %i.dn, align 8, !tbaa !142, !nonnull !143, !align !144
  %i.chw = load ptr, ptr %i.chv, align 8, !tbaa !147
  %i.chx = getelementptr inbounds nuw i8, ptr %i.chw, i64 8
  %i.chy = load float, ptr %i.chx, align 8, !tbaa !252 ; 2 uses
  %i.chz = extractelement <3 x float> %i.cgi, i64 0
  %i.cia = fmul float %i.chz, %i.chy
  %68 = shufflevector <3 x float> %i.cgi, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %69 = insertelement <2 x float> poison, float %i.chy, i64 0
  %70 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> zeroinitializer
  %71 = fmul <2 x float> %68, %70                 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.chs to i64
  %72 = extractelement <2 x float> %71, i64 0
  %73 = extractelement <2 x float> %71, i64 1
  br label %bb.ks

._crit_edge2073:                                  ; preds = %bb.ks
  %i.cib = fpext float %i.cjs to double
  %i.cic = fcmp uge double %i.cib, 1.000000e-05
  br i1 %i.cic, label %.lr.ph2087, label %.loopexit

.lr.ph2087:                                       ; preds = %._crit_edge2073
  %i.cid = load i32, ptr %i.bnc, align 4
  %i.cie = icmp slt i32 %i.cid, 2
  %i.cif = load ptr, ptr %i.bnd, align 8
  %invariant.gep = getelementptr [12 x i8], ptr %i.cif, i64 %indvars.iv2245
  %i.cig = fdiv float %i.chn, %i.cck              ; 3 uses
  %i.cih = call float @llvm.fabs.f32(float %i.cig)
  %i.cii = fcmp ugt float %i.cih, 4.685100e+00
  %i.cij = fmul float %i.cig, %i.cig
  %i.cik = fdiv float %i.cij, f0x41AF99EF
  %i.cil = fsub float 1.000000e+00, %i.cik        ; 2 uses
  %i.cim = fmul float %i.cil, %i.cil
  %.0.i1134 = select i1 %i.cii, float 0.000000e+00, float %i.cim ; 2 uses
  %i.cin = load i32, ptr %i.ccr, align 4
  %.fr2111 = freeze i32 %i.cin
  %i.cio = icmp slt i32 %.fr2111, 2
  %i.cip = load ptr, ptr %i.ccs, align 8          ; 38 uses
  %i.ciq = load i32, ptr %i.ccu, align 4
  %i.cir = icmp slt i32 %i.ciq, 2
  %i.cis = fneg float %.0.i1134
  %i.cit = fmul float %i.chn, %i.cis
  %wide.trip.count2243 = zext nneg i32 %i.chs to i64
  br label %bb.kt

bb.kr:                                            ; preds = %bb.kp
  %i.ciu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.body915

bb.ks:                                            ; preds = %.lr.ph2072, %bb.ks
  %indvars.iv2208 = phi i64 [ 0, %.lr.ph2072 ], [ %indvars.iv.next2209, %bb.ks ] ; 3 uses
  %.05752069 = phi float [ 0.000000e+00, %.lr.ph2072 ], [ %i.cjs, %bb.ks ]
  %i.civ = getelementptr inbounds nuw [4 x i8], ptr %60, i64 %indvars.iv2208
  %i.ciw = load i32, ptr %i.civ, align 4, !tbaa !31
  %i.cix = sext i32 %i.ciw to i64
  %i.ciy = getelementptr inbounds nuw [16 x i8], ptr %i.chu, i64 %i.cix
  %i.ciz = load ptr, ptr %i.ciy, align 8, !tbaa !210 ; 4 uses
  %i.cja = load float, ptr %i.ciz, align 4, !tbaa !212
  %i.cjb = fsub float %i.cja, %i.cia              ; 2 uses
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.ciz, i64 4
  %i.cjd = load float, ptr %i.cjc, align 4, !tbaa !253
  %i.cje = fsub float %i.cjd, %72                 ; 2 uses
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.ciz, i64 8
  %i.cjg = load float, ptr %i.cjf, align 4, !tbaa !223
  %i.cjh = fsub float %i.cjg, %73                 ; 2 uses
  %i.cji = fmul float %i.cje, %i.cje
  %i.cjj = call float @llvm.fmuladd.f32(float %i.cjb, float %i.cjb, float %i.cji)
  %i.cjk = call float @llvm.fmuladd.f32(float %i.cjh, float %i.cjh, float %i.cjj)
  %i.cjl = fneg float %i.cjk
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.ciz, i64 12
  %i.cjn = load float, ptr %i.cjm, align 4, !tbaa !255
  %i.cjo = fmul float %i.cjn, 2.000000e+00
  %i.cjp = fdiv float %i.cjl, %i.cjo
  %i.cjq = call noundef float @expf(float noundef %i.cjp) #21 ; 2 uses
  %i.cjr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv2208
  store float %i.cjq, ptr %i.cjr, align 4, !tbaa !24
  %i.cjs = fadd float %.05752069, %i.cjq          ; 3 uses
  %indvars.iv.next2209 = add nuw nsw i64 %indvars.iv2208, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next2209, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge2073, label %bb.ks, !llvm.loop !111

bb.kt:                                            ; preds = %.lr.ph2087, %.split2085.us
  %indvars.iv2240 = phi i64 [ 0, %.lr.ph2087 ], [ %indvars.iv.next2241, %.split2085.us ] ; 3 uses
  %i.cjt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv2240
  %i.cju = load float, ptr %i.cjt, align 4, !tbaa !24 ; 2 uses
  %i.cjv = fpext float %i.cju to double
  %i.cjw = fcmp olt double %i.cjv, 1.000000e-02
  br i1 %i.cjw, label %.split2085.us, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.cjx = getelementptr inbounds nuw [4 x i8], ptr %60, i64 %indvars.iv2240
  %i.cjy = load i32, ptr %i.cjx, align 4, !tbaa !31 ; 2 uses
  %i.cjz = sext i32 %i.cjy to i64
  %i.cka = load ptr, ptr %i.cs, align 8, !tbaa !152
  %i.ckb = getelementptr inbounds nuw [16 x i8], ptr %i.cka, i64 %i.cjz
  %i.ckc = load ptr, ptr %i.ckb, align 8, !tbaa !210 ; 6 uses
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.ckc, i64 16
  %i.cke = load ptr, ptr %i.dn, align 8, !tbaa !142, !nonnull !143, !align !144
  %i.ckf = load ptr, ptr %i.cke, align 8, !tbaa !147
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.ckf, i64 8
  %i.ckh = load float, ptr %i.ckg, align 8, !tbaa !252
  %i.cki = load float, ptr %i.ckd, align 4, !tbaa !24
  %i.ckj = getelementptr inbounds nuw i8, ptr %i.ckc, i64 20
  %i.ckk = load float, ptr %i.ckj, align 4, !tbaa !24
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.ckc, i64 24
  %i.ckm = load float, ptr %i.ckl, align 4, !tbaa !24
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.ckc, i64 28
  %i.cko = load float, ptr %i.ckn, align 4, !tbaa !24
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.ckc, i64 32
  %i.ckq = insertelement <3 x float> poison, float %i.ckh, i64 0
  %i.ckr = shufflevector <3 x float> %i.ckq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cks = fmul <3 x float> %i.cgi, %i.ckr
  %i.ckt = load <3 x float>, ptr %i.ckc, align 4, !tbaa !24
  %i.cku = fsub <3 x float> %i.cks, %i.ckt        ; 6 uses
  %i.ckv = extractelement <3 x float> %i.cku, i64 1
  %i.ckw = fmul float %i.ckv, %i.ckk
  %i.ckx = extractelement <3 x float> %i.cku, i64 0
  %i.cky = call float @llvm.fmuladd.f32(float %i.cki, float %i.ckx, float %i.ckw)
  %i.ckz = extractelement <3 x float> %i.cku, i64 2
  %i.cla = call float @llvm.fmuladd.f32(float %i.ckm, float %i.ckz, float %i.cky)
  %i.clb = fadd float %i.cko, %i.cla              ; 2 uses
  %i.clc = load <8 x float>, ptr %i.ckp, align 4, !tbaa !24 ; 4 uses
  %i.cld = shufflevector <3 x float> %i.cku, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cle = shufflevector <8 x float> %i.clc, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.clf = fmul <2 x float> %i.cld, %i.cle
  %i.clg = fneg float %i.clb
  %i.clh = shufflevector <8 x float> %i.clc, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cli = shufflevector <3 x float> %i.cku, <3 x float> poison, <2 x i32> zeroinitializer
  %i.clj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clh, <2 x float> %i.cli, <2 x float> %i.clf)
  %i.clk = shufflevector <8 x float> %i.clc, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.cll = shufflevector <3 x float> %i.cku, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.clm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clk, <2 x float> %i.cll, <2 x float> %i.clj)
  %i.cln = shufflevector <8 x float> %i.clc, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.clo = fadd <2 x float> %i.cln, %i.clm        ; 4 uses
  %i.clp = fneg <2 x float> %i.clo                ; 2 uses
  %i.clq = extractelement <2 x float> %i.clo, i64 1 ; 2 uses
  %i.clr = call float @llvm.fmuladd.f32(float %i.clq, float %i.ccn, float 0.000000e+00)
  %i.cls = call float @llvm.fmuladd.f32(float %i.clq, float %i.cdj, float 0.000000e+00)
  %i.clt = shufflevector <2 x float> %i.clo, <2 x float> %i.clp, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.clu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clt, <4 x float> %i.eh, <4 x float> zeroinitializer) ; 3 uses
  %i.clv = load i64, ptr %i.bne, align 8
  %i.clw = mul i64 %i.clv, %indvars.iv22482623
  %.sink.idx.i1129 = select i1 %i.cie, i64 0, i64 %i.clw
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i1129 ; 3 uses
  %i.clx = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.cly = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.clz = shufflevector <2 x float> %i.clp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cma = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.clz, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.cmb = insertelement <4 x float> %i.cma, float %i.clb, i64 2 ; 3 uses
  %i.cmc = shufflevector <4 x float> %i.cdf, <4 x float> %i.clu, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %i.cmd = shufflevector <4 x float> %i.cmc, <4 x float> %i.eh, <4 x i32> <i32 0, i32 poison, i32 2, i32 5>
  %i.cme = insertelement <4 x float> %i.cmd, float %i.clr, i64 1
  %i.cmf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmb, <4 x float> %i.ex, <4 x float> %i.cme)
  %i.cmg = shufflevector <2 x float> %i.clo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cmh = shufflevector <4 x float> %i.cmg, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.cmi = insertelement <4 x float> %i.cmh, float %i.clg, i64 1 ; 3 uses
  %i.cmj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmi, <4 x float> %i.fe, <4 x float> %i.cmf)
  %i.cmk = shufflevector <4 x float> %i.cdk, <4 x float> %i.clu, <4 x i32> <i32 0, i32 poison, i32 6, i32 poison>
  %i.cml = shufflevector <4 x float> %i.cmk, <4 x float> %i.eh, <4 x i32> <i32 0, i32 poison, i32 2, i32 6>
  %i.cmm = insertelement <4 x float> %i.cml, float %i.cls, i64 1
  %i.cmn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmb, <4 x float> %i.fl, <4 x float> %i.cmm)
  %i.cmo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmi, <4 x float> %i.fp, <4 x float> %i.cmn)
  %i.cmp = shufflevector <4 x float> %i.cdl, <4 x float> %i.clu, <4 x i32> <i32 0, i32 4, i32 7, i32 poison>
  %i.cmq = shufflevector <4 x float> %i.cmp, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cmr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmb, <4 x float> %i.fz, <4 x float> %i.cmq)
  %i.cms = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmi, <4 x float> %i.gd, <4 x float> %i.cmr)
  %i.cmt = load float, ptr %gep, align 4, !tbaa !24, !noalias !256 ; 2 uses
  %i.cmu = load float, ptr %i.clx, align 4, !tbaa !24, !noalias !256 ; 2 uses
  %i.cmv = load float, ptr %i.cly, align 4, !tbaa !24, !noalias !256 ; 2 uses
  %i.cmw = insertelement <4 x float> poison, float %i.cmt, i64 0
  %i.cmx = shufflevector <4 x float> %i.cmw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmj, <4 x float> %i.cmx, <4 x float> zeroinitializer)
  %i.cmz = insertelement <4 x float> poison, float %i.cmu, i64 0
  %i.cna = shufflevector <4 x float> %i.cmz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cmo, <4 x float> %i.cna, <4 x float> %i.cmy)
  %i.cnc = insertelement <4 x float> poison, float %i.cmv, i64 0
  %i.cnd = shufflevector <4 x float> %i.cnc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cne = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cms, <4 x float> %i.cnd, <4 x float> %i.cnb) ; 13 uses
  %i.cnf = insertelement <2 x float> poison, float %i.cmt, i64 0
  %i.cng = shufflevector <2 x float> %i.cnf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cnh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cdi, <2 x float> %i.cng, <2 x float> zeroinitializer)
  %i.cni = insertelement <2 x float> poison, float %i.cmu, i64 0
  %i.cnj = shufflevector <2 x float> %i.cni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cnk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cdh, <2 x float> %i.cnj, <2 x float> %i.cnh)
  %i.cnl = insertelement <2 x float> poison, float %i.cmv, i64 0
  %i.cnm = shufflevector <2 x float> %i.cnl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cnn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cdg, <2 x float> %i.cnm, <2 x float> %i.cnk) ; 8 uses
  %i.cno = extractelement <4 x float> %i.cne, i64 0 ; 3 uses
  %i.cnp = call float @llvm.fmuladd.f32(float %i.cno, float %i.cno, float 0.000000e+00) ; 2 uses
  %i.cnq = shufflevector <4 x float> %i.cne, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cnr = shufflevector <4 x float> %i.cne, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.cns = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cnq, <2 x float> %i.cnr, <2 x float> zeroinitializer) ; 4 uses
  %i.cnt = shufflevector <4 x float> %i.cne, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cnu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cnr, <2 x float> %i.cnt, <2 x float> zeroinitializer) ; 4 uses
  %i.cnv = shufflevector <4 x float> %i.cne, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cnw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cne, <4 x float> %i.cnv, <4 x float> zeroinitializer) ; 8 uses
  %i.cnx = shufflevector <2 x float> %i.cnn, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cny = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cne, <4 x float> %i.cnx, <4 x float> zeroinitializer) ; 9 uses
  %i.cnz = shufflevector <2 x float> %i.cnn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.coa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cne, <4 x float> %i.cnz, <4 x float> zeroinitializer) ; 9 uses
  %i.cob = shufflevector <2 x float> %i.cnn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.coc = shufflevector <4 x float> %i.cne, <4 x float> %i.cob, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.cod = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.coc, <2 x float> %i.coc, <2 x float> zeroinitializer) ; 4 uses
  %i.coe = shufflevector <2 x float> %i.cnn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cof = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.coe, <2 x float> %i.cnn, <2 x float> zeroinitializer) ; 4 uses
  %i.cog = fdiv float %i.cju, %i.cjs              ; 3 uses
  %i.coh = load i32, ptr %.sroa.01783.025052515, align 4, !tbaa !31
  %i.coi = mul nsw i32 %i.cjy, 6
  %i.coj = add nsw i32 %i.coh, %i.coi             ; 3 uses
  %i.cok = fmul float %.0.i1134, %i.cog
  %i.col = fmul float %i.cog, %i.cok              ; 38 uses
  %i.com = sext i32 %i.coj to i64                 ; 19 uses
  br i1 %i.cio, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ku
  %i.con = load i64, ptr %i.cct, align 8
  %i.coo = mul i64 %i.con, %i.com
  %.sink.i1136 = getelementptr inbounds nuw i8, ptr %i.cip, i64 %i.coo
  %i.cop = getelementptr inbounds [4 x i8], ptr %.sink.i1136, i64 %i.com ; 2 uses
  %i.coq = load float, ptr %i.cop, align 4, !tbaa !24
  %i.cor = call float @llvm.fmuladd.f32(float %i.col, float %i.cnp, float %i.coq)
  store float %i.cor, ptr %i.cop, align 4, !tbaa !24
  %i.cos = add nsw i64 %i.com, 1                  ; 12 uses
  %i.cot = load i64, ptr %i.cct, align 8
  %i.cou = mul i64 %i.cot, %i.com
  %.sink.i1136.1 = getelementptr inbounds nuw i8, ptr %i.cip, i64 %i.cou
  %i.cov = getelementptr inbounds [4 x i8], ptr %.sink.i1136.1, i64 %i.cos ; 2 uses
  %i.cow = load float, ptr %i.cov, align 4, !tbaa !24
  %i.cox = extractelement <2 x float> %i.cns, i64 0 ; 2 uses
  %i.coy = call float @llvm.fmuladd.f32(float %i.col, float %i.cox, float %i.cow)
  store float %i.coy, ptr %i.cov, align 4, !tbaa !24
  %i.coz = add nsw i64 %i.com, 2                  ; 12 uses
  %i.cpa = load i64, ptr %i.cct, align 8
  %i.cpb = mul i64 %i.cpa, %i.com
  %.sink.i1136.2 = getelementptr inbounds nuw i8, ptr %i.cip, i64 %i.cpb
  %i.cpc = getelementptr inbounds [4 x i8], ptr %.sink.i1136.2, i64 %i.coz ; 2 uses
  %i.cpd = load float, ptr %i.cpc, align 4, !tbaa !24
  %i.cpe = extractelement <2 x float> %i.cnu, i64 0 ; 2 uses
  %i.cpf = call float @llvm.fmuladd.f32(float %i.col, float %i.cpe, float %i.cpd)
  store float %i.cpf, ptr %i.cpc, align 4, !tbaa !24
  %i.cpg = add nsw i64 %i.com, 3                  ; 12 uses
  %i.cph = load i64, ptr %i.cct, align 8
  %i.cpi = mul i64 %i.cph, %i.com
  %.sink.i1136.3 = getelementptr inbounds nuw i8, ptr %i.cip, i64 %i.cpi
  %i.cpj = getelementptr inbounds [4 x i8], ptr %.sink.i1136.3, i64 %i.cpg ; 2 uses
  %i.cpk = load float, ptr %i.cpj, align 4, !tbaa !24
  %i.cpl = extractelement <4 x float> %i.cnw, i64 0 ; 2 uses
  %i.cpm = call float @llvm.fmuladd.f32(float %i.col, float %i.cpl, float %i.cpk)
  store float %i.cpm, ptr %i.cpj, align 4, !tbaa !24
  %i.cpn = add nsw i64 %i.com, 4                  ; 12 uses
  %i.cpo = load i64, ptr %i.cct, align 8
  %i.cpp = mul i64 %i.cpo, %i.com
  %.sink.i1136.4 = getelementptr inbounds nuw i8, ptr %i.cip, i64 %i.cpp
  %i.cpq = getelementptr inbounds [4 x i8], ptr %.sink.i1136.4, i64 %i.cpn ; 2 uses
  %i.cpr = load float, ptr %i.cpq, align 4, !tbaa !24
  %i.cps = extractelement <4 x float> %i.cny, i64 0 ; 2 uses
  %i.cpt = call float @llvm.fmuladd.f32(float %i.col, float %i.cps, float %i.cpr)
  store float %i.cpt, ptr %i.cpq, align 4, !tbaa !24
  %i.cpu = add nsw i64 %i.com, 5                  ; 12 uses
  %i.cpv = load i64, ptr %i.cct, align 8
  %i.cpw = mul i64 %i.cpv, %i.com
  %.sink.i1136.5 = getelementptr inbounds nuw i8, ptr %i.cip, i64 %i.cpw
  %i.cpx = getelementptr inbounds [4 x i8], ptr %.sink.i1136.5, i64 %i.cpu ; 2 uses
  %i.cpy = load float, ptr %i.cpx, align 4, !tbaa !24
  %i.cpz = extractelement <4 x float> %i.coa, i64 0 ; 2 uses
end_hunk_0
