inline.NumInlined: 7594
inline.NumDeleted: 2896
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter31GenerateTransformationNodeChainERKNS0_5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS1_13PotentialNodeESaISE_EESH_:.lr.ph.i.i.i.i
  %.12 = phi i32 [ %i.qh, %bb.bv ], [ %.11, %bb.bu ], [ %.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549 ] ; 2 uses
  %i.qx = and i32 %.12, 126839
  %.not = icmp eq i32 %i.qx, 0
  br i1 %.not, label %bb.ct, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.qz = load ptr, ptr %i.qy, align 8, !nonnull !3, !align !9
  %i.ra = load ptr, ptr %i.qz, align 8, !nonnull !3
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 10
  %i.rc = load i8, ptr %i.rb, align 1, !range !4, !noundef !3
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %bb.ca, label %bb.ct

bb.ca:                                            ; preds = %bb.bz
  %i.re = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.re, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA48_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rf = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.rg = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.rg, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4infoIJPKcRA48_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.rf, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(48) @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA48_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA48_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %bb.ca, %bb.cb
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ri = call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.rh, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.rj = icmp eq ptr %i.ri, null
  br i1 %i.rj, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA48_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %i.rl = load i32, ptr %i.rk, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA48_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, %bb.cc
  %i.rm = phi i32 [ %i.rl, %bb.cc ], [ 0, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA48_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ]
  %i.rn = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.rp = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cr
  %.0179769 = phi i64 [ 0, %bb.cd ], [ %i.ti, %bb.cr ] ; 5 uses
  %.0180768 = phi i32 [ 1, %bb.cd ], [ %i.tj, %bb.cr ] ; 3 uses
  %i.ru = trunc nuw nsw i64 %.0179769 to i32
  %i.rv = and i32 %.0180768, %.12
  %i.rw = icmp eq i32 %i.rv, 0
  %i.rx = and i32 %.0180768, %i.rm
  %i.ry = icmp eq i32 %i.rx, 0
  %or.cond = select i1 %i.rw, i1 %i.ry, i1 false
  br i1 %or.cond, label %bb.cr, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.rz = icmp eq i64 %.0179769, 8
  br i1 %i.rz, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.sa = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %.ptr.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.8, ptr noundef nonnull align 4 dereferenceable(64) %i.sa, i64 64, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.sb = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #30 ; 6 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.sb)
          to label %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2Ev.exit unwind label %bb.ci

common.resume:                                    ; preds = %bb.de, %bb.cu, %bb.ci
  %common.resume.op = phi { ptr, i32 } [ %i.sc, %bb.ci ], [ %i.tl, %bb.cu ], [ %.pn251.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.de ]
  resume { ptr, i32 } %common.resume.op

bb.ci:                                            ; preds = %bb.ch
  %i.sc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.sb, i64 noundef 1144) #29
  br label %common.resume

_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2Ev.exit: ; preds = %bb.ch
  store ptr %i.sb, ptr %22, align 8
  store ptr %i.sb, ptr %i.rn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.ru)
          to label %bb.cj unwind label %bb.co

bb.cj:                                            ; preds = %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2Ev.exit
  %i.sd = load i64, ptr %i.ro, align 8            ; 5 uses
  %i.se = icmp ugt i64 %i.sd, 1023
  %.pre = load ptr, ptr %23, align 8              ; 3 uses
  br i1 %i.se, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.sf = trunc nuw nsw i64 %i.sd to i32
  store i32 %i.sf, ptr %i.sb, align 4
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sb, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sg, ptr align 1 %.pre, i64 %i.sd, i1 false)
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.sd
  store i8 0, ptr %i.sh, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.cj, %bb.ck
  %i.si = icmp eq ptr %.pre, %i.rp
  br i1 %i.si, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i570, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i570: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.sj = icmp ult i64 %i.sd, 16
  call void @llvm.assume(i1 %i.sj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.sk = load i64, ptr %i.rp, align 8
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.sl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.sm = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %.0179769
  %i.sn = load ptr, ptr %i.rn, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.so, ptr noundef nonnull align 16 dereferenceable(64) %i.sm, i64 64, i1 false)
  %or.cond5 = icmp samesign ult i64 %.0179769, 3
  br i1 %or.cond5, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571
  %i.sp = load ptr, ptr %i.rs, align 8            ; 4 uses
  %i.sq = load ptr, ptr %i.rt, align 8
  %.not.i = icmp eq ptr %i.sp, %i.sq
  br i1 %.not.i, label %.invoke, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sr = load i64, ptr %22, align 8
  store i64 %i.sr, ptr %i.sp, align 8
  store ptr null, ptr %22, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.st = load ptr, ptr %i.rn, align 8
  store ptr %i.st, ptr %i.ss, align 8
  %i.su = load ptr, ptr %i.rs, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  store ptr %i.sv, ptr %i.rs, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.cn:                                            ; preds = %.invoke
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.co:                                            ; preds = %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2Ev.exit
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.cs

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571
  %i.sy = load ptr, ptr %i.rq, align 8            ; 4 uses
  %i.sz = load ptr, ptr %i.rr, align 8
  %.not.i573 = icmp eq ptr %i.sy, %i.sz
  br i1 %.not.i573, label %.invoke, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ta = load i64, ptr %22, align 8
  store i64 %i.ta, ptr %i.sy, align 8
  store ptr null, ptr %22, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.tc = load ptr, ptr %i.rn, align 8
  store ptr %i.tc, ptr %i.tb, align 8
  %i.td = load ptr, ptr %i.rq, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  store ptr %i.te, ptr %i.rq, align 8
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

.invoke:                                          ; preds = %bb.cl, %bb.cp
  %i.tf = phi ptr [ %3, %bb.cp ], [ %4, %bb.cl ]
  %i.tg = phi ptr [ %i.sy, %bb.cp ], [ %i.sp, %bb.cl ]
  invoke void @_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.tf, ptr %i.tg, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.cn

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %.invoke, %bb.cq, %bb.cm
  %i.th = load ptr, ptr %22, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.th, null
  br i1 %.not.i.i, label %_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev.exit, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i:  ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.th) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef 1144) #29
  br label %_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev.exit

_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ce, %_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev.exit
  %i.ti = add nuw nsw i64 %.0179769, 1            ; 2 uses
  %i.tj = shl nuw nsw i32 %.0180768, 1
  %exitcond.not = icmp eq i64 %i.ti, 17
  br i1 %exitcond.not, label %.loopexit, label %bb.ce, !llvm.loop !104

bb.cs:                                            ; preds = %bb.co, %bb.cn
  %.pn251 = phi { ptr, i32 } [ %i.sw, %bb.cn ], [ %i.sx, %bb.co ]
  call void @_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.da

bb.ct:                                            ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.tk = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #30 ; 10 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.tk)
          to label %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2Ev.exit577 unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.tl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef 1144) #29
  br label %common.resume

_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2Ev.exit577: ; preds = %bb.ct
  store ptr %i.tk, ptr %24, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr %i.tk, ptr %i.tm, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.to = load i64, ptr %i.tn, align 8            ; 4 uses
  %i.tp = icmp ugt i64 %i.to, 1023
  br i1 %i.tp, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit578, label %bb.cv

bb.cv:                                            ; preds = %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2Ev.exit577
  %i.tq = trunc nuw nsw i64 %i.to to i32
  store i32 %i.tq, ptr %i.tk, align 4
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tk, i64 4 ; 2 uses
  %i.ts = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.tr, ptr align 1 %i.ts, i64 %i.to, i1 false)
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.to
  store i8 0, ptr %i.tt, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit578

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit578: ; preds = %_ZN6Assimp3FBX12FBXConverter13PotentialNodeC2Ev.exit577, %bb.cv
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tk, i64 1028 ; 2 uses
  %.sroa.13.0..sroa_idx592 = getelementptr inbounds nuw i8, ptr %i.tk, i64 1044
  %.sroa.21.0..sroa_idx600 = getelementptr inbounds nuw i8, ptr %i.tk, i64 1060
  %.sroa.29.0..sroa_idx608 = getelementptr inbounds nuw i8, ptr %i.tk, i64 1076
  %i.tv = load <16 x float>, ptr %i.tu, align 4
  br label %bb.cz

bb.cw:                                            ; preds = %bb.cz
  store <4 x float> %i.uw, ptr %i.tu, align 4
  store <4 x float> %i.ve, ptr %.sroa.13.0..sroa_idx592, align 4
  store <4 x float> %i.vm, ptr %.sroa.21.0..sroa_idx600, align 4
  store <4 x float> %i.vu, ptr %.sroa.29.0..sroa_idx608, align 4
  %i.tw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.tx = load ptr, ptr %i.tw, align 8            ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8
  %.not.i.i579 = icmp eq ptr %i.tx, %i.tz
  br i1 %.not.i.i579, label %bb.cx, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.cw
  %i.ua = load i64, ptr %24, align 8
  store i64 %i.ua, ptr %i.tx, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.uc = load ptr, ptr %i.tm, align 8
  store ptr %i.uc, ptr %i.ub, align 8
  %i.ud = load ptr, ptr %i.tw, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  store ptr %i.ue, ptr %i.tw, align 8
  br label %_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev.exit584

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.tx, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE9push_backEOS3_.exit unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.uf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.da

bb.cz:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit578, %bb.cz
  %indvars.iv = phi i64 [ 3, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit578 ], [ %indvars.iv.next, %bb.cz ] ; 2 uses
  %i.ug = phi <16 x float> [ %i.tv, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit578 ], [ %i.vz, %bb.cz ] ; 16 uses
  %i.uh = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %indvars.iv ; 4 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 32
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 48
  %i.ul = load <4 x float>, ptr %i.uh, align 16   ; 4 uses
  %i.um = load <4 x float>, ptr %i.ui, align 16   ; 4 uses
  %i.un = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.uo = fmul <4 x float> %i.un, %i.um
  %i.up = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> zeroinitializer
  %i.uq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ul, <4 x float> %i.up, <4 x float> %i.uo)
  %i.ur = load <4 x float>, ptr %i.uj, align 16   ; 4 uses
  %i.us = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ut = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ur, <4 x float> %i.us, <4 x float> %i.uq)
  %i.uu = load <4 x float>, ptr %i.uk, align 16   ; 4 uses
  %i.uv = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.uw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uu, <4 x float> %i.uv, <4 x float> %i.ut) ; 2 uses
  %i.ux = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.uy = fmul <4 x float> %i.ux, %i.um
  %i.uz = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.va = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ul, <4 x float> %i.uz, <4 x float> %i.uy)
  %i.vb = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.vc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ur, <4 x float> %i.vb, <4 x float> %i.va)
  %i.vd = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ve = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uu, <4 x float> %i.vd, <4 x float> %i.vc) ; 2 uses
  %i.vf = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.vg = fmul <4 x float> %i.vf, %i.um
  %i.vh = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.vi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ul, <4 x float> %i.vh, <4 x float> %i.vg)
  %i.vj = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.vk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ur, <4 x float> %i.vj, <4 x float> %i.vi)
  %i.vl = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.vm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uu, <4 x float> %i.vl, <4 x float> %i.vk) ; 2 uses
  %i.vn = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.vo = fmul <4 x float> %i.vn, %i.um
  %i.vp = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.vq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ul, <4 x float> %i.vp, <4 x float> %i.vo)
  %i.vr = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.vs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ur, <4 x float> %i.vr, <4 x float> %i.vq)
  %i.vt = shufflevector <16 x float> %i.ug, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.vu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uu, <4 x float> %i.vt, <4 x float> %i.vs) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond821.not = icmp eq i64 %indvars.iv.next, 17
  %i.vv = shufflevector <4 x float> %i.uw, <4 x float> %i.ve, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vw = shufflevector <4 x float> %i.vm, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vx = shufflevector <16 x float> %i.vv, <16 x float> %i.vw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vy = shufflevector <4 x float> %i.vu, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vz = shufflevector <16 x float> %i.vx, <16 x float> %i.vy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  br i1 %exitcond821.not, label %bb.cw, label %bb.cz, !llvm.loop !105

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.cx
  %.pre822 = load ptr, ptr %24, align 8           ; 3 uses
  %.not.i.i582 = icmp eq ptr %.pre822, null
  br i1 %.not.i.i582, label %_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev.exit584, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i583

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i583: ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE9push_backEOS3_.exit
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %.pre822) #27
  call void @_ZdlPvm(ptr noundef nonnull %.pre822, i64 noundef 1144) #29
  br label %_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev.exit584

_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev.exit584: ; preds = %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE9push_backEOS3_.exit.thread, %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE9push_backEOS3_.exit, %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cr, %_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev.exit584
  %.0178 = phi i1 [ false, %_ZN6Assimp3FBX12FBXConverter13PotentialNodeD2Ev.exit584 ], [ true, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i1 %.0178

bb.da:                                            ; preds = %bb.cs, %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568
  %.pn251.pn.pn = phi { ptr, i32 } [ %.pn247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ %.pn251, %bb.cs ], [ %i.uf, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.db

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505
  %.pn251.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505 ], [ %.pn251.pn.pn, %bb.da ], [ %.pn245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457, %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %.pn251.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343 ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403 ], [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428 ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457 ], [ %.pn251.pn.pn.pn.pn, %bb.db ], [ %i.mm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %.pn251.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn251.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dc ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  %.pn251.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn251.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dd ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter17SetupNodeMetadataERKNS0_5ModelER6aiNode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1144) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unordered_map.279", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %struct.aiString, align 4           ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %struct.aiString, align 4          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNK6Assimp3FBX13PropertyTable21GetUnparsedPropertiesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map.279") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i64, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter22GenerateNodeAnimationsERSt6vectorIP10aiNodeAnimSaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS2_IPKNS0_18AnimationCurveNodeESaISI_EERKSt3mapISI_PKNS0_14AnimationLayerESt4lessISI_ESaISt4pairIKSI_SQ_EEEllRdS10_:bb.a
  br label %bb.az

bb.ay:                                            ; preds = %bb.cz
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.fh = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEEixERSB_.exit unwind label %bb.db

bb.az:                                            ; preds = %bb.ax, %bb.cz
  %.0114307 = phi i64 [ 0, %bb.ax ], [ %i.kn, %bb.cz ] ; 4 uses
  %.0115305 = phi i32 [ 1, %bb.ax ], [ %i.ko, %bb.cz ] ; 3 uses
  %.0116304 = phi i32 [ 0, %bb.ax ], [ %.2118, %bb.cz ] ; 2 uses
  %i.fi = trunc nuw nsw i64 %.0114307 to i32      ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.0114307
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %.not261 = icmp eq ptr %i.fk, %i.f
  br i1 %.not261, label %bb.cz, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fl = or i32 %.0115305, %.0116304             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.fi)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 64 ; 5 uses
  switch i32 %i.fi, label %unreachable [
    i32 7, label %bb.bd
    i32 6, label %bb.bd
    i32 8, label %bb.bd
    i32 15, label %bb.bd
    i32 4, label %bb.be
    i32 5, label %bb.be
    i32 10, label %bb.be
    i32 11, label %bb.be
    i32 3, label %bb.be
    i32 14, label %bb.be
    i32 12, label %bb.ci
    i32 16, label %bb.ci
  ]

bb.bc:                                            ; preds = %bb.ba
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.bd:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.fo = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter24GenerateRotationNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.cj unwind label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %bb.be, %bb.ci, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i212
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp:                               ; preds = %bb.cv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.be:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.fp = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter27GenerateTranslationNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_b(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext false)
          to label %bb.bf unwind label %.loopexit ; 3 uses

bb.bf:                                            ; preds = %bb.be
  switch i64 %.0114307, label %bb.cj [
    i64 5, label %bb.bg
    i64 11, label %bb.bu
  ]

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 9)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.fq = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter27GenerateTranslationNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_b(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext true)
          to label %bb.bi unwind label %.loopexit268 ; 7 uses

bb.bi:                                            ; preds = %bb.bh
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1028
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 1040
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 1056
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN10aiNodeAnimD2Ev(ptr noundef nonnull align 8 dead_on_return(1080) dereferenceable(1080) %i.fq) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 1080) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191

bb.bm:                                            ; preds = %bb.bg
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit268:                                     ; preds = %bb.bh, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i183
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp269:                            ; preds = %bb.br
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp269, %.loopexit268
  %lpad.phi272 = phi { ptr, i32 } [ %lpad.loopexit270, %.loopexit268 ], [ %lpad.loopexit.split-lp271, %.loopexit.split-lp269 ]
  %i.gb = load ptr, ptr %13, align 8              ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fe
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.bn
  %i.gd = load i64, ptr %i.fe, align 8
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cy

bb.bo:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.gf = load ptr, ptr %i.fb, align 8            ; 3 uses
  %i.gg = load ptr, ptr %i.fc, align 8
  %.not.i182 = icmp eq ptr %i.gf, %i.gg
  br i1 %.not.i182, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.fq, ptr %i.gf, align 8
  %i.gh = load ptr, ptr %i.fb, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %i.gi, ptr %i.fb, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191

bb.bq:                                            ; preds = %bb.bo
  %i.gj = load ptr, ptr %1, align 8               ; 4 uses
  %i.gk = ptrtoint ptr %i.gf to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl                    ; 6 uses
  %i.gn = icmp eq i64 %i.gm, 9223372036854775800
  br i1 %i.gn, label %bb.br, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i183

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc189 unwind label %.loopexit.split-lp269

.noexc189:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i183: ; preds = %bb.bq
  %i.go = ashr exact i64 %i.gm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i184 = call i64 @llvm.umax.i64(i64 %i.go, i64 1)
  %i.gp = add nsw i64 %.sroa.speculated.i.i.i184, %i.go ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.go
  %i.gr = call i64 @llvm.umin.i64(i64 %i.gp, i64 1152921504606846975)
  %i.gs = select i1 %i.gq, i64 1152921504606846975, i64 %i.gr ; 3 uses
  %.not.i.i.i185 = icmp ne i64 %i.gs, 0
  call void @llvm.assume(i1 %.not.i.i.i185)
  %i.gt = shl nuw nsw i64 %i.gs, 3
  %i.gu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gt) #30
          to label %.noexc190 unwind label %.loopexit268 ; 4 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i183
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.gm ; 2 uses
  store ptr %i.fq, ptr %i.gv, align 8
  %i.gw = icmp sgt i64 %i.gm, 0
  br i1 %i.gw, label %bb.bs, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i186

bb.bs:                                            ; preds = %.noexc190
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr align 8 %i.gj, i64 %i.gm, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i186

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i186: ; preds = %bb.bs, %.noexc190
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.not.i17.i.i187 = icmp eq ptr %i.gj, null
  br i1 %.not.i17.i.i187, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i188, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gm) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i188

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i188: ; preds = %bb.bt, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i186
  store ptr %i.gu, ptr %1, align 8
  store ptr %i.gx, ptr %i.fb, align 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gs
  store ptr %i.gy, ptr %i.fc, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i188, %bb.bp, %bb.bl
  %i.gz = shl nuw nsw i32 %.0115305, 4
  %i.ha = or i32 %i.fl, %i.gz
  %i.hb = load ptr, ptr %13, align 8              ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.fe
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191
  %i.hd = load i64, ptr %i.fe, align 8
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cj

bb.bu:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 13)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.hf = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter27GenerateTranslationNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_b(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext true)
          to label %bb.bw unwind label %.loopexit263 ; 7 uses

bb.bw:                                            ; preds = %bb.bv
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 1028
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 1040
  %i.hk = load i32, ptr %i.hj, align 8
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 1056
  %i.hn = load i32, ptr %i.hm, align 8
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  call void @_ZN10aiNodeAnimD2Ev(ptr noundef nonnull align 8 dead_on_return(1080) dereferenceable(1080) %i.hf) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 1080) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207

bb.ca:                                            ; preds = %bb.bu
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit263:                                     ; preds = %bb.bv, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i199
  %lpad.loopexit265 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp264:                            ; preds = %bb.cf
  %lpad.loopexit.split-lp266 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp264, %.loopexit263
  %lpad.phi267 = phi { ptr, i32 } [ %lpad.loopexit265, %.loopexit263 ], [ %lpad.loopexit.split-lp266, %.loopexit.split-lp264 ]
  %i.hq = load ptr, ptr %14, align 8              ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.fd
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %bb.cb
  %i.hs = load i64, ptr %i.fd, align 8
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.cy

bb.cc:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.hu = load ptr, ptr %i.fb, align 8            ; 3 uses
  %i.hv = load ptr, ptr %i.fc, align 8
  %.not.i198 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not.i198, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.hf, ptr %i.hu, align 8
  %i.hw = load ptr, ptr %i.fb, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr %i.hx, ptr %i.fb, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207

bb.ce:                                            ; preds = %bb.cc
  %i.hy = load ptr, ptr %1, align 8               ; 4 uses
  %i.hz = ptrtoint ptr %i.hu to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 6 uses
  %i.ic = icmp eq i64 %i.ib, 9223372036854775800
  br i1 %i.ic, label %bb.cf, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i199

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc205 unwind label %.loopexit.split-lp264

.noexc205:                                        ; preds = %bb.cf
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i199: ; preds = %bb.ce
  %i.id = ashr exact i64 %i.ib, 3                 ; 3 uses
  %.sroa.speculated.i.i.i200 = call i64 @llvm.umax.i64(i64 %i.id, i64 1)
  %i.ie = add nsw i64 %.sroa.speculated.i.i.i200, %i.id ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.id
  %i.ig = call i64 @llvm.umin.i64(i64 %i.ie, i64 1152921504606846975)
  %i.ih = select i1 %i.if, i64 1152921504606846975, i64 %i.ig ; 3 uses
  %.not.i.i.i201 = icmp ne i64 %i.ih, 0
  call void @llvm.assume(i1 %.not.i.i.i201)
  %i.ii = shl nuw nsw i64 %i.ih, 3
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #30
          to label %.noexc206 unwind label %.loopexit263 ; 4 uses

.noexc206:                                        ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i199
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 %i.ib ; 2 uses
  store ptr %i.hf, ptr %i.ik, align 8
  %i.il = icmp sgt i64 %i.ib, 0
  br i1 %i.il, label %bb.cg, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i202

bb.cg:                                            ; preds = %.noexc206
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ij, ptr align 8 %i.hy, i64 %i.ib, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i202

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i202: ; preds = %bb.cg, %.noexc206
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %.not.i17.i.i203 = icmp eq ptr %i.hy, null
  br i1 %.not.i17.i.i203, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i204, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i202
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.ib) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i204

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i204: ; preds = %bb.ch, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i202
  store ptr %i.ij, ptr %1, align 8
  store ptr %i.im, ptr %i.fb, align 8
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ih
  store ptr %i.in, ptr %i.fc, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i204, %bb.cd, %bb.bz
  %i.io = load ptr, ptr %14, align 8              ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.fd
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207
  %i.iq = load i64, ptr %i.fd, align 8
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.cj

bb.ci:                                            ; preds = %bb.bb, %bb.bb
  %i.is = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter23GenerateScalingNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.cj unwind label %.loopexit

unreachable:                                      ; preds = %bb.bb
  unreachable

bb.cj:                                            ; preds = %bb.ci, %bb.bd, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %.0258 = phi ptr [ %i.is, %bb.ci ], [ %i.fo, %bb.bd ], [ %i.fp, %bb.bf ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ] ; 9 uses
  %.1117 = phi i32 [ %i.fl, %bb.ci ], [ %i.fl, %bb.bd ], [ %i.fl, %bb.bf ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ poison, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ]
  %i.it = getelementptr inbounds nuw i8, ptr %.0258, i64 1028
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.ck, label %bb.cs

bb.ck:                                            ; preds = %bb.cj
  %i.iw = getelementptr inbounds nuw i8, ptr %.0258, i64 1040
  %i.ix = load i32, ptr %i.iw, align 8
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.cl, label %bb.cs

bb.cl:                                            ; preds = %bb.ck
  %i.iz = getelementptr inbounds nuw i8, ptr %.0258, i64 1056
  %i.ja = load i32, ptr %i.iz, align 8
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %i.jc = getelementptr inbounds nuw i8, ptr %.0258, i64 1032
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZdaPv(ptr noundef nonnull %i.jd) #29
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.jf = getelementptr inbounds nuw i8, ptr %.0258, i64 1048
  %i.jg = load ptr, ptr %i.jf, align 8            ; 2 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZdaPv(ptr noundef nonnull %i.jg) #29
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.ji = getelementptr inbounds nuw i8, ptr %.0258, i64 1064
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %_ZN10aiNodeAnimD2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZdaPv(ptr noundef nonnull %i.jj) #29
  br label %_ZN10aiNodeAnimD2Ev.exit

_ZN10aiNodeAnimD2Ev.exit:                         ; preds = %bb.cq, %bb.cr
  call void @_ZdlPvm(ptr noundef nonnull %.0258, i64 noundef 1080) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220

bb.cs:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %i.jl = load ptr, ptr %i.fb, align 8            ; 3 uses
  %i.jm = load ptr, ptr %i.fc, align 8
  %.not.i211 = icmp eq ptr %i.jl, %i.jm
  br i1 %.not.i211, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store ptr %.0258, ptr %i.jl, align 8
  %i.jn = load ptr, ptr %i.fb, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.jo, ptr %i.fb, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220

bb.cu:                                            ; preds = %bb.cs
  %i.jp = load ptr, ptr %1, align 8               ; 4 uses
  %i.jq = ptrtoint ptr %i.jl to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr                    ; 6 uses
  %i.jt = icmp eq i64 %i.js, 9223372036854775800
  br i1 %i.jt, label %bb.cv, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i212

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc218 unwind label %.loopexit.split-lp

.noexc218:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i212: ; preds = %bb.cu
  %i.ju = ashr exact i64 %i.js, 3                 ; 3 uses
  %.sroa.speculated.i.i.i213 = call i64 @llvm.umax.i64(i64 %i.ju, i64 1)
  %i.jv = add nsw i64 %.sroa.speculated.i.i.i213, %i.ju ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.ju
  %i.jx = call i64 @llvm.umin.i64(i64 %i.jv, i64 1152921504606846975)
  %i.jy = select i1 %i.jw, i64 1152921504606846975, i64 %i.jx ; 3 uses
  %.not.i.i.i214 = icmp ne i64 %i.jy, 0
  call void @llvm.assume(i1 %.not.i.i.i214)
  %i.jz = shl nuw nsw i64 %i.jy, 3
  %i.ka = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jz) #30
          to label %.noexc219 unwind label %.loopexit ; 4 uses

.noexc219:                                        ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i212
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 %i.js ; 2 uses
  store ptr %.0258, ptr %i.kb, align 8
  %i.kc = icmp sgt i64 %i.js, 0
  br i1 %i.kc, label %bb.cw, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i215

bb.cw:                                            ; preds = %.noexc219
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ka, ptr align 8 %i.jp, i64 %i.js, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i215

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i215: ; preds = %bb.cw, %.noexc219
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %.not.i17.i.i216 = icmp eq ptr %i.jp, null
  br i1 %.not.i17.i.i216, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i217, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i215
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.js) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i217

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i217: ; preds = %bb.cx, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i215
  store ptr %i.ka, ptr %1, align 8
  store ptr %i.kd, ptr %i.fb, align 8
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jy
  store ptr %i.ke, ptr %i.fc, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i217, %bb.ct, %_ZN10aiNodeAnimD2Ev.exit
  %i.kf = load ptr, ptr %12, align 8              ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.ff
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220
  %i.kh = load i64, ptr %i.ff, align 8
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.cz

bb.cy:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %.pn138 = phi { ptr, i32 } [ %i.hp, %bb.ca ], [ %i.ga, %bb.bm ], [ %lpad.phi272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %lpad.phi267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.kj = load ptr, ptr %12, align 8              ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.ff
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.cy
  %i.kl = load i64, ptr %i.ff, align 8
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.dc

bb.cz:                                            ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %.2118 = phi i32 [ %.1117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %.0116304, %bb.az ] ; 2 uses
  %i.kn = add nuw nsw i64 %.0114307, 1            ; 2 uses
  %i.ko = shl nuw nsw i32 %.0115305, 1
  %exitcond309.not = icmp eq i64 %i.kn, 17
  br i1 %exitcond309.not, label %bb.ay, label %bb.az, !llvm.loop !354

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEEixERSB_.exit: ; preds = %bb.ay
  store i32 %.2118, ptr %i.fh, align 4
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit: ; preds = %bb.ao, %bb.ar, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %.noexc171, %.noexc168, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEEixERSB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.kp = load ptr, ptr %i.g, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.kp)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEED2Ev.exit unwind label %bb.da

bb.da:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret void

bb.db:                                            ; preds = %bb.ay
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.dc:                                            ; preds = %bb.ap, %bb.aw, %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %bb.bc, %bb.ac, %bb.ad, %bb.ag
  %.pn144.pn = phi { ptr, i32 } [ %i.dm, %bb.ag ], [ %i.dd, %bb.ac ], [ %i.fn, %bb.bc ], [ %i.de, %bb.ad ], [ %i.ks, %bb.db ], [ %.pn138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %i.fa, %bb.aw ], [ %i.ed, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.dd

bb.dd:                                            ; preds = %.loopexit273, %.loopexit.split-lp274, %bb.dc
  %.pn147 = phi { ptr, i32 } [ %.pn144.pn, %bb.dc ], [ %lpad.loopexit275, %.loopexit273 ], [ %lpad.loopexit.split-lp276, %.loopexit.split-lp274 ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  resume { ptr, i32 } %.pn147
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEEN6Assimp3FBX4Util10delete_funIS2_EEET0_T_SF_SE_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN6Assimp3FBX4Util10delete_funI10aiNodeAnimEclEPVKS3_.exit
  %.sroa.01.05 = phi ptr [ %i.l, %_ZN6Assimp3FBX4Util10delete_funI10aiNodeAnimEclEPVKS3_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.sroa.01.05, align 8      ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6Assimp3FBX4Util10delete_funI10aiNodeAnimEclEPVKS3_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN10aiNodeAnimD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #29
  br label %_ZN10aiNodeAnimD2Ev.exit.i

_ZN10aiNodeAnimD2Ev.exit.i:                       ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1080) #29
  br label %_ZN6Assimp3FBX4Util10delete_funI10aiNodeAnimEclEPVKS3_.exit

_ZN6Assimp3FBX4Util10delete_funI10aiNodeAnimEclEPVKS3_.exit: ; preds = %.lr.ph, %_ZN10aiNodeAnimD2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !355

._crit_edge:                                      ; preds = %_ZN6Assimp3FBX4Util10delete_funI10aiNodeAnimEclEPVKS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11aiAnimationD2Ev(ptr noundef nonnull align 8 dead_on_return(1096) dereferenceable(1096) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %bb.k, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i
  %.pre41 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.e = icmp eq ptr %.pre41, null
  br i1 %i.e, label %bb.k, label %bb.j

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %i.f = phi i32 [ %i.t, %bb.i ], [ %i.b, %bb.b ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1032
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1048
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 1064
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN10aiNodeAnimD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #29
  br label %_ZN10aiNodeAnimD2Ev.exit

_ZN10aiNodeAnimD2Ev.exit:                         ; preds = %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 1080) #29
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN10aiNodeAnimD2Ev.exit
  %i.t = phi i32 [ %i.f, %.lr.ph ], [ %.pre, %_ZN10aiNodeAnimD2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !356

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %.pre41) #29
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %.not18 = icmp eq i32 %i.x, 0
  br i1 %.not18, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8
  %.not19 = icmp eq ptr %i.z, null
  br i1 %.not19, label %bb.q, label %.lr.ph26

._crit_edge27:                                    ; preds = %bb.o
  %.pre43 = load ptr, ptr %i.y, align 8           ; 2 uses
  %i.aa = icmp eq ptr %.pre43, null
  br i1 %i.aa, label %bb.q, label %bb.p

.lr.ph26:                                         ; preds = %bb.l, %bb.o
  %i.ab = phi i32 [ %i.aj, %bb.o ], [ %i.x, %bb.l ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv35
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
end_hunk_1
