Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeToSpheres?download=true
inline.NumInlined: 56869
inline.NumDeleted: 18802
loop-unroll.NumCompletelyUnrolled: 221
loop-unroll.NumRuntimeUnrolled: 172
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal13ComputePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.asp = fsub double %i.ak, %i.asn
  %i.asq = fsub double %i.aso, %i.asn
  %i.asr = fdiv double %i.asp, %i.asq
  %i.ass = fadd double %.sroa.13708.3, %i.asr
  %i.ast = add nuw nsw i32 %.7.i412, 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.sroa.13708.4 = phi double [ %i.ass, %bb.fv ], [ %.sroa.13708.3, %bb.fu ] ; 2 uses
  %.8.i413 = phi i32 [ %i.ast, %bb.fv ], [ %.7.i412, %bb.fu ] ; 2 uses
  %i.asu = load i8, ptr %i.alm, align 1, !tbaa !548, !noalias !9772
  %i.asv = icmp eq i8 %i.asu, %.lcssa.i
  %i.asw = extractelement <2 x double> %i.arz, i64 1 ; 2 uses
  br i1 %i.asv, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.asx = fadd double %i.asw, 1.000000e+00
  %i.asy = load double, ptr %i.ep, align 8, !tbaa !701, !noalias !9772 ; 2 uses
  %i.asz = load double, ptr %i.et, align 8, !tbaa !701, !noalias !9772
  %i.ata = fsub double %i.ak, %i.asy
  %i.atb = fsub double %i.asz, %i.asy
  %i.atc = fdiv double %i.ata, %i.atb
  %i.atd = fadd double %.sroa.13708.4, %i.atc
  %i.ate = add nuw nsw i32 %.8.i413, 1
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.sroa.0707.6 = phi double [ %i.asx, %bb.fx ], [ %i.asw, %bb.fw ] ; 2 uses
  %.sroa.13708.5 = phi double [ %i.atd, %bb.fx ], [ %.sroa.13708.4, %bb.fw ]
  %.9.i414 = phi i32 [ %i.ate, %bb.fx ], [ %.8.i413, %bb.fw ] ; 2 uses
  %i.atf = load i8, ptr %i.alo, align 1, !tbaa !548, !noalias !9772
  %i.atg = icmp eq i8 %i.atf, %.lcssa.i
  %i.ath = insertelement <2 x double> poison, double %.sroa.13708.5, i64 0
  %i.ati = insertelement <2 x double> %i.ath, double %.sroa.22709.5, i64 1 ; 2 uses
  br i1 %i.atg, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.atj = fadd double %.sroa.0707.6, 1.000000e+00
  %i.atk = load double, ptr %i.eq, align 16, !tbaa !701, !noalias !9772 ; 2 uses
  %i.atl = load double, ptr %i.eu, align 16, !tbaa !701, !noalias !9772
  %i.atm = fsub double %i.ak, %i.atk
  %i.atn = fsub double %i.atl, %i.atk
  %i.ato = fdiv double %i.atm, %i.atn
  %i.atp = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ato, i64 0
  %i.atq = fadd <2 x double> %i.ati, %i.atp
  %i.atr = add nuw nsw i32 %.9.i414, 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.sroa.0707.7 = phi double [ %i.atj, %bb.fz ], [ %.sroa.0707.6, %bb.fy ] ; 2 uses
  %.10.i415 = phi i32 [ %i.atr, %bb.fz ], [ %.9.i414, %bb.fy ] ; 2 uses
  %i.ats = phi <2 x double> [ %i.atq, %bb.fz ], [ %i.ati, %bb.fy ] ; 2 uses
  %i.att = load i8, ptr %i.alq, align 1, !tbaa !548, !noalias !9772
  %i.atu = icmp eq i8 %i.att, %.lcssa.i
  br i1 %i.atu, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.atv = load double, ptr %i.er, align 8, !tbaa !701, !noalias !9772 ; 2 uses
  %i.atw = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !9772
  %i.atx = fsub double %i.ak, %i.atv
  %i.aty = fsub double %i.atw, %i.atv
  %i.atz = fdiv double %i.atx, %i.aty
  %i.aua = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.atz, i64 0
  %i.aub = fadd <2 x double> %i.ats, %i.aua
  %i.auc = add nuw nsw i32 %.10.i415, 1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.11.i416 = phi i32 [ %i.auc, %bb.gb ], [ %.10.i415, %bb.ga ] ; 2 uses
  %i.aud = phi <2 x double> [ %i.aub, %bb.gb ], [ %i.ats, %bb.ga ] ; 2 uses
  %i.aue = icmp samesign ugt i32 %.11.i416, 1
  br i1 %i.aue, label %bb.gd, label %.noexc290

bb.gd:                                            ; preds = %bb.gc
  %i.auf = uitofp nneg i32 %.11.i416 to double
  %i.aug = fdiv double 1.000000e+00, %i.auf       ; 2 uses
  %i.auh = fmul double %.sroa.0707.7, %i.aug
  %i.aui = insertelement <2 x double> poison, double %i.aug, i64 0
  %i.auj = shufflevector <2 x double> %i.aui, <2 x double> poison, <2 x i32> zeroinitializer
  %i.auk = fmul <2 x double> %i.aud, %i.auj
  br label %.noexc290

.noexc290:                                        ; preds = %bb.gd, %bb.gc
  %.sroa.0707.8 = phi double [ %i.auh, %bb.gd ], [ %.sroa.0707.7, %bb.gc ]
  %i.aul = phi <2 x double> [ %i.auk, %bb.gd ], [ %i.aud, %bb.gc ]
  %i.aum = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 2 uses
  store double %.sroa.0707.8, ptr %i.aum, align 8
  %.sroa.13708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aum, i64 8
  store <2 x double> %i.aul, ptr %.sroa.13708.0..sroa_idx, align 8
  %i.aun = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.aun, align 1, !tbaa !670
  br label %bb.gf

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread: ; preds = %bb.fb, %bb.fc
  %.sroa.0704.0 = select i1 %i.ang, double %i.ane, double 0.000000e+00 ; 2 uses
  %.0.i392 = zext i1 %i.ang to i32
  %i.auo = fadd double %.sroa.0704.0, 1.000000e+00
  %i.aup = select i1 %i.ang, i32 2, i32 1
  %.sroa.0704.1 = select i1 %i.anj, double %i.auo, double %.sroa.0704.0 ; 2 uses
  %.sroa.22706.0 = select i1 %i.anj, double %i.anf, double 0.000000e+00 ; 2 uses
  %.1.i393 = select i1 %i.anj, i32 %i.aup, i32 %.0.i392
  %i.auq = fadd double %i.amw, %.sroa.0704.1
  %i.aur = fadd double %.sroa.22706.0, 1.000000e+00
  %.sroa.0704.2 = select i1 %i.anm, double %i.auq, double %.sroa.0704.1 ; 2 uses
  %.sroa.22706.1 = select i1 %i.anm, double %i.aur, double %.sroa.22706.0 ; 2 uses
  %i.aus = zext i1 %i.anm to i32
  %.2.i394 = add nuw nsw i32 %.1.i393, %i.aus
  %i.aut = fadd double %i.amx, %.sroa.22706.1
  %.sroa.22706.2 = select i1 %i.anp, double %i.aut, double %.sroa.22706.1 ; 2 uses
  %i.auu = zext i1 %i.anp to i32
  %.3.i395 = add nuw nsw i32 %.2.i394, %i.auu
  %i.auv = fadd double %i.amy, %.sroa.0704.2
  %.sroa.0704.3 = select i1 %i.ans, double %i.auv, double %.sroa.0704.2
  %.sroa.13705.0 = select i1 %i.ans, double 1.000000e+00, double 0.000000e+00
  %i.auw = zext i1 %i.ans to i32
  %.4.i396 = add nuw nsw i32 %.3.i395, %i.auw     ; 2 uses
  %i.aux = insertelement <2 x double> poison, double %.sroa.0704.3, i64 0
  %i.auy = insertelement <2 x double> %i.aux, double %.sroa.13705.0, i64 1 ; 2 uses
  %i.auz = fadd <2 x double> %i.auy, splat (double 1.000000e+00)
  %i.ava = fadd double %i.amz, %.sroa.22706.2
  %i.avb = add nuw nsw i32 %.4.i396, 1
  %.sroa.22706.3 = select i1 %i.anv, double %i.ava, double %.sroa.22706.2 ; 2 uses
  %.5.i397 = select i1 %i.anv, i32 %i.avb, i32 %.4.i396 ; 2 uses
  %i.avc = select i1 %i.anv, <2 x double> %i.auz, <2 x double> %i.auy ; 2 uses
  %i.avd = fadd <2 x double> %i.anb, %i.avc
  %i.ave = fadd double %.sroa.22706.3, 1.000000e+00
  %i.avf = add nuw nsw i32 %.5.i397, 1
  %.sroa.22706.4 = select i1 %i.any, double %i.ave, double %.sroa.22706.3
  %.6.i398 = select i1 %i.any, i32 %i.avf, i32 %.5.i397
  %i.avg = select i1 %i.any, <2 x double> %i.avd, <2 x double> %i.avc ; 2 uses
  %i.avh = extractelement <2 x double> %i.avg, i64 1 ; 2 uses
  %i.avi = fadd double %i.avh, 1.000000e+00
  %.sroa.13705.3 = select i1 %i.aob, double %i.avi, double %i.avh ; 2 uses
  %i.avj = zext i1 %i.aob to i32
  %.7.i399 = add nuw nsw i32 %.6.i398, %i.avj
  %i.avk = fadd double %i.ana, %.sroa.13705.3
  %.sroa.13705.4 = select i1 %i.aoe, double %i.avk, double %.sroa.13705.3
  %i.avl = zext i1 %i.aoe to i32
  %.8.i400 = add nuw nsw i32 %.7.i399, %i.avl
  %i.avm = extractelement <2 x double> %i.avg, i64 0 ; 2 uses
  %i.avn = fadd double %i.avm, 1.000000e+00
  %i.avo = insertelement <2 x double> poison, double %.sroa.13705.4, i64 0
  %i.avp = insertelement <2 x double> %i.avo, double %.sroa.22706.4, i64 1 ; 2 uses
  %i.avq = fadd <2 x double> %i.amp, %i.avp
  %.sroa.0704.6 = select i1 %i.aoh, double %i.avn, double %i.avm ; 2 uses
  %i.avr = insertelement <2 x i1> poison, i1 %i.aoh, i64 0
  %i.avs = insertelement <2 x i1> %i.avr, i1 %i.aob, i64 1
  %i.avt = select <2 x i1> %i.avs, <2 x double> %i.avq, <2 x double> %i.avp ; 2 uses
  %i.avu = zext i1 %i.aoh to i32
  %.9.i401 = add nuw nsw i32 %.8.i400, %i.avu     ; 2 uses
  %i.avv = fadd double %.sroa.0704.6, 1.000000e+00
  %i.avw = fadd <2 x double> %i.anc, %i.avt
  %i.avx = add nuw nsw i32 %.9.i401, 1
  %.sroa.0704.7 = select i1 %i.aok, double %i.avv, double %.sroa.0704.6 ; 2 uses
  %.10.i402 = select i1 %i.aok, i32 %i.avx, i32 %.9.i401
  %i.avy = select i1 %i.aok, <2 x double> %i.avw, <2 x double> %i.avt ; 2 uses
  %i.avz = fadd <2 x double> %i.and, %i.avy
  %i.awa = insertelement <2 x i1> poison, i1 %i.aon, i64 0
  %i.awb = shufflevector <2 x i1> %i.awa, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.awc = select <2 x i1> %i.awb, <2 x double> %i.avz, <2 x double> %i.avy ; 2 uses
  %i.awd = zext i1 %i.aon to i32
  %.11.i403 = add nuw nsw i32 %.10.i402, %i.awd   ; 2 uses
  %i.awe = icmp samesign ugt i32 %.11.i403, 1
  br i1 %i.awe, label %bb.ge, label %.noexc291

bb.ge:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %i.awf = uitofp nneg i32 %.11.i403 to double
  %i.awg = fdiv double 1.000000e+00, %i.awf       ; 2 uses
  %i.awh = fmul double %.sroa.0704.7, %i.awg
  %i.awi = insertelement <2 x double> poison, double %i.awg, i64 0
  %i.awj = shufflevector <2 x double> %i.awi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awk = fmul <2 x double> %i.awc, %i.awj
  br label %.noexc291

.noexc291:                                        ; preds = %bb.ge, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %.sroa.0704.8 = phi double [ %i.awh, %bb.ge ], [ %.sroa.0704.7, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.awl = phi <2 x double> [ %i.awk, %bb.ge ], [ %i.awc, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.awm = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 2 uses
  store double %.sroa.0704.8, ptr %i.awm, align 8
  %.sroa.13705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  store <2 x double> %i.awl, ptr %.sroa.13705.0..sroa_idx, align 8
  %i.awn = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.awn, align 1, !tbaa !670
  br label %bb.gf

bb.gf:                                            ; preds = %.noexc291, %.noexc290, %.noexc289
  %i.awo = add i8 %.047.i, 1
  %i.awp = add nuw nsw i64 %.04046.i, 1           ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %i.awp, %umax.i286
  br i1 %exitcond.not.i288, label %.lr.ph.preheader, label %bb.ef, !llvm.loop !409

.lr.ph.preheader:                                 ; preds = %.noexc254, %bb.gf, %middle.block1201
  %.0140968 = phi i64 [ %umax.i, %middle.block1201 ], [ %umax.i286, %bb.gf ], [ %umax.i, %.noexc254 ]
  %i.awq = sitofp <2 x i32> %i.mp to <2 x double>
  %i.awr = sitofp i32 %i.mt to double
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.gx
  %.0138807 = phi i64 [ %i.ayt, %bb.gx ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.1145806 = phi i32 [ %i.ays, %bb.gx ], [ %.0144809, %.lr.ph.preheader ] ; 2 uses
  %i.aws = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0138807 ; 8 uses
  %i.awt = load double, ptr %i.aws, align 8, !tbaa !701
  %i.awu = call double @llvm.fabs.f64(double %i.awt)
  %i.awv = fcmp ueq double %i.awu, +inf
  br i1 %i.awv, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph
  %i.aww = getelementptr inbounds nuw i8, ptr %i.aws, i64 8
  %i.awx = load double, ptr %i.aww, align 8, !tbaa !701
  %24 = load <2 x double>, ptr %i.aws, align 8, !tbaa !701
  %i.awy = call double @llvm.fabs.f64(double %i.awx)
  %i.awz = fcmp ueq double %i.awy, +inf
  br i1 %i.awz, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.axa = getelementptr inbounds nuw i8, ptr %i.aws, i64 16 ; 3 uses
  %i.axb = load double, ptr %i.axa, align 8, !tbaa !701 ; 2 uses
  %i.axc = call double @llvm.fabs.f64(double %i.axb)
  %i.axd = fcmp ueq double %i.axc, +inf
  br i1 %i.axd, label %bb.gi, label %bb.gs

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.axe = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.axe, ptr %18, align 8, !tbaa !740
  %i.axf = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.axf, align 8, !tbaa !742
  store i8 0, ptr %i.axe, align 8, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gj unwind label %bb.gl

bb.gj:                                            ; preds = %bb.gi
  %i.axg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.107, i64 noundef 151)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.gm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gk unwind label %bb.gn

bb.gk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.axh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %20) #21 ; 0 uses
  %i.axi = load ptr, ptr %20, align 8, !tbaa !743 ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.axk = icmp eq ptr %i.axi, %i.axj
  br i1 %i.axk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.gk
  %i.axl = load i64, ptr %i.axj, align 8, !tbaa !548
  %i.axm = add i64 %i.axl, 1
  call void @_ZdlPvm(ptr noundef %i.axi, i64 noundef %i.axm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.gq

bb.gl:                                            ; preds = %bb.gi
  %i.axn = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gp

bb.gm:                                            ; preds = %bb.gj
  %i.axo = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.go

bb.gn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.axp = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.pn157 = phi { ptr, i32 } [ %i.axp, %bb.gn ], [ %i.axo, %bb.gm ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #21
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gl
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.go ], [ %i.axn, %bb.gl ]
  %.1 = extractvalue { ptr, i32 } %.pn157.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.axq = call ptr @__cxa_begin_catch(ptr %.1) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.axr = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.axr, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %18) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.axr, align 8, !tbaa !523
  invoke void @__cxa_throw(ptr nonnull %i.axr, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #29
          to label %bb.ju unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.axs = landingpad { ptr, i32 }
          cleanup
  %i.axt = load ptr, ptr %18, align 8, !tbaa !743 ; 2 uses
  %i.axu = icmp eq ptr %i.axt, %i.axe
  br i1 %i.axu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %bb.gr
  %i.axv = load i64, ptr %i.axe, align 8, !tbaa !548
  %i.axw = add i64 %i.axv, 1
  call void @_ZdlPvm(ptr noundef %i.axt, i64 noundef %i.axw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.body244

bb.gs:                                            ; preds = %bb.gh
  %i.axx = fadd <2 x double> %24, %i.awq
  store <2 x double> %i.axx, ptr %i.aws, align 8, !tbaa !701
  %i.axy = fadd double %i.axb, %i.awr
  store double %i.axy, ptr %i.axa, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.axz = load ptr, ptr %i.ey, align 8, !tbaa !723, !noalias !9773 ; 2 uses
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !523, !noalias !9773
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 56
  %i.ayc = load ptr, ptr %i.ayb, align 8, !noalias !9773
  invoke void %i.ayc(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.axz, ptr noundef nonnull align 8 dereferenceable(24) %i.aws)
          to label %bb.gt unwind label %bb.gw, !inline_history !410

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aws, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.ayd = load ptr, ptr %0, align 8, !tbaa !2257
  %i.aye = zext i32 %.1145806 to i64              ; 2 uses
  %i.ayf = getelementptr inbounds nuw [12 x i8], ptr %i.ayd, i64 %i.aye ; 2 uses
  %i.ayg = load <2 x double>, ptr %i.aws, align 8, !tbaa !701
  %i.ayh = fptrunc <2 x double> %i.ayg to <2 x float>
  store <2 x float> %i.ayh, ptr %i.ayf, align 4, !tbaa !558
  %i.ayi = load double, ptr %i.axa, align 8, !tbaa !701
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8
  %i.ayk = fptrunc double %i.ayi to float
  store float %i.ayk, ptr %i.ayj, align 4, !tbaa !558
  %i.ayl = load ptr, ptr %i.ez, align 8, !tbaa !9774 ; 2 uses
  %i.aym = icmp ne ptr %i.ayl, null
  %or.cond7 = and i1 %i.vj, %i.aym
  br i1 %or.cond7, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.ayn = getelementptr inbounds nuw i8, ptr %14, i64 %.0138807
  %i.ayo = load i8, ptr %i.ayn, align 1, !tbaa !670, !range !683, !noundef !616
  %i.ayp = trunc nuw i8 %i.ayo to i1
  br i1 %i.ayp, label %bb.gv, label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayl, i64 %i.aye
  store i8 1, ptr %i.ayq, align 1, !tbaa !548
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gs
  %i.ayr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %.body244

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke1020, %.invoke, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKfLm3ELm4EEET0_SM_SQ_.exit.i374, %.critedge.i, %bb.ed, %.noexc278, %.noexc277, %.noexc276, %.noexc275, %.noexc274, %.noexc273, %.noexc272, %bb.dq, %.noexc252, %.noexc251, %.noexc250, %.noexc249, %.noexc248, %.noexc247, %.noexc246, %bb.co, %bb.cj, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.fd, %_ZNK7openvdb5v13_04tree10LeafBufferIsLj3EE4dataEv.exit, %bb.cd
  %lpad.loopexit.split-lp1212 = landingpad { ptr, i32 }
          cleanup
  br label %.body244

bb.gx:                                            ; preds = %bb.gv, %bb.gu, %bb.gt
  %i.ays = add i32 %.1145806, 1                   ; 2 uses
  %i.ayt = add nuw i64 %.0138807, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ayt, %.0140968
  br i1 %exitcond.not, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %.lr.ph, !llvm.loop !9752

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.gx, %bb.ee, %bb.dm, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.cb, %bb.br
  %.2146 = phi i32 [ %.0144809, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.0144809, %bb.br ], [ %.0144809, %bb.cb ], [ %.0144809, %bb.dm ], [ %.0144809, %bb.ee ], [ %i.ays, %bb.gx ] ; 11 uses
  %i.ayu = load ptr, ptr %i.fb, align 8, !tbaa !724 ; 8 uses
  %i.ayv = load i32, ptr %i.du, align 8, !tbaa !712
  %i.ayw = add i32 %i.ayv, 1                      ; 4 uses
  %i.ayx = lshr i32 %i.ayw, 6                     ; 3 uses
  %i.ayy = icmp ugt i32 %i.ayw, 511
  br i1 %i.ayy, label %._crit_edge, label %bb.gy

bb.gy:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.ayz = and i32 %i.ayw, 63
  %i.aza = zext nneg i32 %i.ayx to i64            ; 8 uses
  %i.azb = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %i.aza
  %i.azc = load i64, ptr %i.azb, align 8, !tbaa !699 ; 2 uses
  %i.azd = zext nneg i32 %i.ayz to i64            ; 2 uses
  %i.aze = shl nuw i64 1, %i.azd
  %i.azf = and i64 %i.azc, %i.aze
  %.not.i.i.i.i297 = icmp eq i64 %i.azf, 0
  br i1 %.not.i.i.i.i297, label %bb.gz, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeIjLj3EEEEppEv.exit

bb.gz:                                            ; preds = %bb.gy
  %i.azg = shl nsw i64 -1, %i.azd
  %i.azh = and i64 %i.azc, %i.azg                 ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.azh, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i298.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i298.preheader:                      ; preds = %bb.gz
  %exitcond.not.i.i.i.i1063 = icmp eq i32 %i.ayx, 7
  br i1 %exitcond.not.i.i.i.i1063, label %._crit_edge, label %.lr.ph1065

.lr.ph.i.i.i.i298:                                ; preds = %.lr.ph1065
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph1065.1

.lr.ph1065.1:                                     ; preds = %.lr.ph.i.i.i.i298
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.aza, 2 ; 3 uses
  %i.azi = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %indvars.iv.next.i.i.i.i.1
  %i.azj = load i64, ptr %i.azi, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.azj, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i298.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i298.1:                              ; preds = %.lr.ph1065.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph1065.2

.lr.ph1065.2:                                     ; preds = %.lr.ph.i.i.i.i298.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.aza, 3 ; 3 uses
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %indvars.iv.next.i.i.i.i.2
  %i.azl = load i64, ptr %i.azk, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.azl, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i298.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i298.2:                              ; preds = %.lr.ph1065.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph1065.3

.lr.ph1065.3:                                     ; preds = %.lr.ph.i.i.i.i298.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.aza, 4 ; 3 uses
  %i.azm = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %indvars.iv.next.i.i.i.i.3
  %i.azn = load i64, ptr %i.azm, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.azn, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i298.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i298.3:                              ; preds = %.lr.ph1065.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph1065.4

.lr.ph1065.4:                                     ; preds = %.lr.ph.i.i.i.i298.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.aza, 5 ; 3 uses
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %indvars.iv.next.i.i.i.i.4
  %i.azp = load i64, ptr %i.azo, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.azp, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i298.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i298.4:                              ; preds = %.lr.ph1065.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph1065.5

.lr.ph1065.5:                                     ; preds = %.lr.ph.i.i.i.i298.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.aza, 6 ; 3 uses
  %i.azq = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %indvars.iv.next.i.i.i.i.5
  %i.azr = load i64, ptr %i.azq, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.azr, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i298.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i298.5:                              ; preds = %.lr.ph1065.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph1065.6

.lr.ph1065.6:                                     ; preds = %.lr.ph.i.i.i.i298.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.aza, 7 ; 2 uses
  %i.azs = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %indvars.iv.next.i.i.i.i.6
  %i.azt = load i64, ptr %i.azs, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.azt, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph1065:                                       ; preds = %.lr.ph.i.i.i.i298.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.aza, 1 ; 3 uses
  %i.azu = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %indvars.iv.next.i.i.i.i
  %i.azv = load i64, ptr %i.azu, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.azv, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i298, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph1065.6, %.lr.ph1065.5, %.lr.ph1065.4, %.lr.ph1065.3, %.lr.ph1065.2, %.lr.ph1065.1, %.lr.ph1065
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph1065 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph1065.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph1065.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph1065.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph1065.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph1065.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph1065.6 ]
  %.lcssa1215 = phi i64 [ %i.azv, %.lr.ph1065 ], [ %i.azj, %.lr.ph1065.1 ], [ %i.azl, %.lr.ph1065.2 ], [ %i.azn, %.lr.ph1065.3 ], [ %i.azp, %.lr.ph1065.4 ], [ %i.azr, %.lr.ph1065.5 ], [ %i.azt, %.lr.ph1065.6 ]
  %i.azw = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.gz
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ayx, %bb.gz ], [ %i.azw, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.azh, %bb.gz ], [ %.lcssa1215, %.critedge.loopexit.i.i.i.i ]
  %i.azx = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.azy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.azz = trunc nuw nsw i64 %i.azy to i32
  %i.baa = or disjoint i32 %i.azx, %i.azz
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeIjLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeIjLj3EEEEppEv.exit: ; preds = %bb.gy, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.baa, %.critedge.i.i.i.i ], [ %i.ayw, %bb.gy ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.du, align 8, !tbaa !712
  %.not750 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not750, label %._crit_edge, label %bb.br

.body244:                                         ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %bb.gw, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i259, %bb.bx, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i
  %.pn166 = phi { ptr, i32 } [ %i.aen, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i259 ], [ %i.axs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ], [ %i.ayr, %bb.gw ], [ %i.kg, %bb.bx ], [ %i.nm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i ], [ %lpad.loopexit.split-lp1212, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %.body216

._crit_edge821:                                   ; preds = %bb.jf, %._crit_edge
  %i.bab = load ptr, ptr %i.dq, align 8, !tbaa !905
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.bab)
          to label %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit unwind label %bb.ha

bb.ha:                                            ; preds = %._crit_edge821
  %i.bac = landingpad { ptr, i32 }
          catch ptr null
  %i.bad = extractvalue { ptr, i32 } %i.bac, 0
  call void @__clang_call_terminate(ptr %i.bad) #32
  unreachable

_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit: ; preds = %._crit_edge821
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal13ComputePointsINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a
  %i.atn = fsub double %i.ak, %i.atl
  %i.ato = fsub double %i.atm, %i.atl
  %i.atp = fdiv double %i.atn, %i.ato
  %i.atq = fadd double %.sroa.13708.3, %i.atp
  %i.atr = add nuw nsw i32 %.7.i412, 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.sroa.13708.4 = phi double [ %i.atq, %bb.fv ], [ %.sroa.13708.3, %bb.fu ] ; 2 uses
  %.8.i413 = phi i32 [ %i.atr, %bb.fv ], [ %.7.i412, %bb.fu ] ; 2 uses
  %i.ats = load i8, ptr %i.amk, align 1, !tbaa !548, !noalias !11423
  %i.att = icmp eq i8 %i.ats, %.lcssa.i
  %i.atu = extractelement <2 x double> %i.asx, i64 1 ; 2 uses
  br i1 %i.att, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.atv = fadd double %i.atu, 1.000000e+00
  %i.atw = load double, ptr %i.ep, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.atx = load double, ptr %i.et, align 8, !tbaa !701, !noalias !11423
  %i.aty = fsub double %i.ak, %i.atw
  %i.atz = fsub double %i.atx, %i.atw
  %i.aua = fdiv double %i.aty, %i.atz
  %i.aub = fadd double %.sroa.13708.4, %i.aua
  %i.auc = add nuw nsw i32 %.8.i413, 1
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.sroa.0707.6 = phi double [ %i.atv, %bb.fx ], [ %i.atu, %bb.fw ] ; 2 uses
  %.sroa.13708.5 = phi double [ %i.aub, %bb.fx ], [ %.sroa.13708.4, %bb.fw ]
  %.9.i414 = phi i32 [ %i.auc, %bb.fx ], [ %.8.i413, %bb.fw ] ; 2 uses
  %i.aud = load i8, ptr %i.amm, align 1, !tbaa !548, !noalias !11423
  %i.aue = icmp eq i8 %i.aud, %.lcssa.i
  %i.auf = insertelement <2 x double> poison, double %.sroa.13708.5, i64 0
  %i.aug = insertelement <2 x double> %i.auf, double %.sroa.22709.5, i64 1 ; 2 uses
  br i1 %i.aue, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.auh = fadd double %.sroa.0707.6, 1.000000e+00
  %i.aui = load double, ptr %i.eq, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.auj = load double, ptr %i.eu, align 8, !tbaa !701, !noalias !11423
  %i.auk = fsub double %i.ak, %i.aui
  %i.aul = fsub double %i.auj, %i.aui
  %i.aum = fdiv double %i.auk, %i.aul
  %i.aun = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.aum, i64 0
  %i.auo = fadd <2 x double> %i.aug, %i.aun
  %i.aup = add nuw nsw i32 %.9.i414, 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.sroa.0707.7 = phi double [ %i.auh, %bb.fz ], [ %.sroa.0707.6, %bb.fy ] ; 2 uses
  %.10.i415 = phi i32 [ %i.aup, %bb.fz ], [ %.9.i414, %bb.fy ] ; 2 uses
  %i.auq = phi <2 x double> [ %i.auo, %bb.fz ], [ %i.aug, %bb.fy ] ; 2 uses
  %i.aur = load i8, ptr %i.amo, align 1, !tbaa !548, !noalias !11423
  %i.aus = icmp eq i8 %i.aur, %.lcssa.i
  br i1 %i.aus, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.aut = load double, ptr %i.er, align 8, !tbaa !701, !noalias !11423 ; 2 uses
  %i.auu = load double, ptr %i.ev, align 8, !tbaa !701, !noalias !11423
  %i.auv = fsub double %i.ak, %i.aut
  %i.auw = fsub double %i.auu, %i.aut
  %i.aux = fdiv double %i.auv, %i.auw
  %i.auy = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.aux, i64 0
  %i.auz = fadd <2 x double> %i.auq, %i.auy
  %i.ava = add nuw nsw i32 %.10.i415, 1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.11.i416 = phi i32 [ %i.ava, %bb.gb ], [ %.10.i415, %bb.ga ] ; 2 uses
  %i.avb = phi <2 x double> [ %i.auz, %bb.gb ], [ %i.auq, %bb.ga ] ; 2 uses
  %i.avc = icmp samesign ugt i32 %.11.i416, 1
  br i1 %i.avc, label %bb.gd, label %.noexc290

bb.gd:                                            ; preds = %bb.gc
  %i.avd = uitofp nneg i32 %.11.i416 to double
  %i.ave = fdiv double 1.000000e+00, %i.avd       ; 2 uses
  %i.avf = fmul double %.sroa.0707.7, %i.ave
  %i.avg = insertelement <2 x double> poison, double %i.ave, i64 0
  %i.avh = shufflevector <2 x double> %i.avg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.avi = fmul <2 x double> %i.avb, %i.avh
  br label %.noexc290

.noexc290:                                        ; preds = %bb.gd, %bb.gc
  %.sroa.0707.8 = phi double [ %i.avf, %bb.gd ], [ %.sroa.0707.7, %bb.gc ]
  %i.avj = phi <2 x double> [ %i.avi, %bb.gd ], [ %i.avb, %bb.gc ]
  %i.avk = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 2 uses
  store double %.sroa.0707.8, ptr %i.avk, align 8
  %.sroa.13708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avk, i64 8
  store <2 x double> %i.avj, ptr %.sroa.13708.0..sroa_idx, align 8
  %i.avl = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.avl, align 1, !tbaa !670
  br label %bb.gf

_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread: ; preds = %bb.fb, %bb.fc
  %.sroa.0704.0 = select i1 %i.aoe, double %i.aod, double 0.000000e+00 ; 2 uses
  %.0.i392 = zext i1 %i.aoe to i32
  %i.avm = fadd double %.sroa.0704.0, 1.000000e+00
  %i.avn = select i1 %i.aoe, i32 2, i32 1
  %.sroa.0704.1 = select i1 %i.aoh, double %i.avm, double %.sroa.0704.0 ; 2 uses
  %.sroa.22706.0 = select i1 %i.aoh, double %i.aoc, double 0.000000e+00 ; 2 uses
  %.1.i393 = select i1 %i.aoh, i32 %i.avn, i32 %.0.i392
  %i.avo = fadd double %i.anu, %.sroa.0704.1
  %i.avp = fadd double %.sroa.22706.0, 1.000000e+00
  %.sroa.0704.2 = select i1 %i.aok, double %i.avo, double %.sroa.0704.1 ; 2 uses
  %.sroa.22706.1 = select i1 %i.aok, double %i.avp, double %.sroa.22706.0 ; 2 uses
  %i.avq = zext i1 %i.aok to i32
  %.2.i394 = add nuw nsw i32 %.1.i393, %i.avq
  %i.avr = fadd double %i.anv, %.sroa.22706.1
  %.sroa.22706.2 = select i1 %i.aon, double %i.avr, double %.sroa.22706.1 ; 2 uses
  %i.avs = zext i1 %i.aon to i32
  %.3.i395 = add nuw nsw i32 %.2.i394, %i.avs
  %i.avt = fadd double %i.anx, %.sroa.0704.2
  %.sroa.0704.3 = select i1 %i.aoq, double %i.avt, double %.sroa.0704.2
  %.sroa.13705.0 = select i1 %i.aoq, double 1.000000e+00, double 0.000000e+00
  %i.avu = zext i1 %i.aoq to i32
  %.4.i396 = add nuw nsw i32 %.3.i395, %i.avu     ; 2 uses
  %i.avv = insertelement <2 x double> poison, double %.sroa.0704.3, i64 0
  %i.avw = insertelement <2 x double> %i.avv, double %.sroa.13705.0, i64 1 ; 2 uses
  %i.avx = fadd <2 x double> %i.avw, splat (double 1.000000e+00)
  %i.avy = fadd double %i.anw, %.sroa.22706.2
  %i.avz = add nuw nsw i32 %.4.i396, 1
  %.sroa.22706.3 = select i1 %i.aot, double %i.avy, double %.sroa.22706.2 ; 2 uses
  %.5.i397 = select i1 %i.aot, i32 %i.avz, i32 %.4.i396 ; 2 uses
  %i.awa = select i1 %i.aot, <2 x double> %i.avx, <2 x double> %i.avw ; 2 uses
  %i.awb = fadd <2 x double> %i.anz, %i.awa
  %i.awc = fadd double %.sroa.22706.3, 1.000000e+00
  %i.awd = add nuw nsw i32 %.5.i397, 1
  %.sroa.22706.4 = select i1 %i.aow, double %i.awc, double %.sroa.22706.3
  %.6.i398 = select i1 %i.aow, i32 %i.awd, i32 %.5.i397
  %i.awe = select i1 %i.aow, <2 x double> %i.awb, <2 x double> %i.awa ; 2 uses
  %i.awf = extractelement <2 x double> %i.awe, i64 1 ; 2 uses
  %i.awg = fadd double %i.awf, 1.000000e+00
  %.sroa.13705.3 = select i1 %i.aoz, double %i.awg, double %i.awf ; 2 uses
  %i.awh = zext i1 %i.aoz to i32
  %.7.i399 = add nuw nsw i32 %.6.i398, %i.awh
  %i.awi = fadd double %i.any, %.sroa.13705.3
  %.sroa.13705.4 = select i1 %i.apc, double %i.awi, double %.sroa.13705.3
  %i.awj = zext i1 %i.apc to i32
  %.8.i400 = add nuw nsw i32 %.7.i399, %i.awj
  %i.awk = extractelement <2 x double> %i.awe, i64 0 ; 2 uses
  %i.awl = fadd double %i.awk, 1.000000e+00
  %i.awm = insertelement <2 x double> poison, double %.sroa.13705.4, i64 0
  %i.awn = insertelement <2 x double> %i.awm, double %.sroa.22706.4, i64 1 ; 2 uses
  %i.awo = fadd <2 x double> %i.anm, %i.awn
  %.sroa.0704.6 = select i1 %i.apf, double %i.awl, double %i.awk ; 2 uses
  %i.awp = insertelement <2 x i1> poison, i1 %i.apf, i64 0
  %i.awq = insertelement <2 x i1> %i.awp, i1 %i.aoz, i64 1
  %i.awr = select <2 x i1> %i.awq, <2 x double> %i.awo, <2 x double> %i.awn ; 2 uses
  %i.aws = zext i1 %i.apf to i32
  %.9.i401 = add nuw nsw i32 %.8.i400, %i.aws     ; 2 uses
  %i.awt = fadd double %.sroa.0704.6, 1.000000e+00
  %i.awu = fadd <2 x double> %i.aob, %i.awr
  %i.awv = add nuw nsw i32 %.9.i401, 1
  %.sroa.0704.7 = select i1 %i.api, double %i.awt, double %.sroa.0704.6 ; 2 uses
  %.10.i402 = select i1 %i.api, i32 %i.awv, i32 %.9.i401
  %i.aww = select i1 %i.api, <2 x double> %i.awu, <2 x double> %i.awr ; 2 uses
  %i.awx = fadd <2 x double> %i.aoa, %i.aww
  %i.awy = insertelement <2 x i1> poison, i1 %i.apl, i64 0
  %i.awz = shufflevector <2 x i1> %i.awy, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.axa = select <2 x i1> %i.awz, <2 x double> %i.awx, <2 x double> %i.aww ; 2 uses
  %i.axb = zext i1 %i.apl to i32
  %.11.i403 = add nuw nsw i32 %.10.i402, %i.axb   ; 2 uses
  %i.axc = icmp samesign ugt i32 %.11.i403, 1
  br i1 %i.axc, label %bb.ge, label %.noexc291

bb.ge:                                            ; preds = %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %i.axd = uitofp nneg i32 %.11.i403 to double
  %i.axe = fdiv double 1.000000e+00, %i.axd       ; 2 uses
  %i.axf = fmul double %.sroa.0704.7, %i.axe
  %i.axg = insertelement <2 x double> poison, double %i.axe, i64 0
  %i.axh = shufflevector <2 x double> %i.axg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.axi = fmul <2 x double> %i.axa, %i.axh
  br label %.noexc291

.noexc291:                                        ; preds = %bb.ge, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread
  %.sroa.0704.8 = phi double [ %i.axf, %bb.ge ], [ %.sroa.0704.7, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.axj = phi <2 x double> [ %i.axi, %bb.ge ], [ %i.axa, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal14matchEdgeGroupEhhh.exit.thread ]
  %i.axk = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.04046.i ; 2 uses
  store double %.sroa.0704.8, ptr %i.axk, align 8
  %.sroa.13705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  store <2 x double> %i.axj, ptr %.sroa.13705.0..sroa_idx, align 8
  %i.axl = getelementptr inbounds nuw i8, ptr %14, i64 %.04046.i
  store i8 0, ptr %i.axl, align 1, !tbaa !670
  br label %bb.gf

bb.gf:                                            ; preds = %.noexc291, %.noexc290, %.noexc289
  %i.axm = add i8 %.047.i, 1
  %i.axn = add nuw nsw i64 %.04046.i, 1           ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %i.axn, %umax.i286
  br i1 %exitcond.not.i288, label %.lr.ph.preheader, label %bb.ef, !llvm.loop !409

.lr.ph.preheader:                                 ; preds = %.noexc254, %bb.gf, %middle.block1201
  %.0140968 = phi i64 [ %umax.i, %middle.block1201 ], [ %umax.i286, %bb.gf ], [ %umax.i, %.noexc254 ]
  %i.axo = sitofp <2 x i32> %i.mp to <2 x double>
  %i.axp = sitofp i32 %i.mt to double
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.gx
  %.0138807 = phi i64 [ %i.azr, %bb.gx ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.1145806 = phi i32 [ %i.azq, %bb.gx ], [ %.0144809, %.lr.ph.preheader ] ; 2 uses
  %i.axq = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0138807 ; 8 uses
  %i.axr = load double, ptr %i.axq, align 8, !tbaa !701
  %i.axs = call double @llvm.fabs.f64(double %i.axr)
  %i.axt = fcmp ueq double %i.axs, +inf
  br i1 %i.axt, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axq, i64 8
  %i.axv = load double, ptr %i.axu, align 8, !tbaa !701
  %24 = load <2 x double>, ptr %i.axq, align 8, !tbaa !701
  %i.axw = call double @llvm.fabs.f64(double %i.axv)
  %i.axx = fcmp ueq double %i.axw, +inf
  br i1 %i.axx, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axq, i64 16 ; 3 uses
  %i.axz = load double, ptr %i.axy, align 8, !tbaa !701 ; 2 uses
  %i.aya = call double @llvm.fabs.f64(double %i.axz)
  %i.ayb = fcmp ueq double %i.aya, +inf
  br i1 %i.ayb, label %bb.gi, label %bb.gs

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.ayc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.ayc, ptr %18, align 8, !tbaa !740
  %i.ayd = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.ayd, align 8, !tbaa !742
  store i8 0, ptr %i.ayc, align 8, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gj unwind label %bb.gl

bb.gj:                                            ; preds = %bb.gi
  %i.aye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.107, i64 noundef 151)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.gm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.gk unwind label %bb.gn

bb.gk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ayf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %20) #21 ; 0 uses
  %i.ayg = load ptr, ptr %20, align 8, !tbaa !743 ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ayi = icmp eq ptr %i.ayg, %i.ayh
  br i1 %i.ayi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.gk
  %i.ayj = load i64, ptr %i.ayh, align 8, !tbaa !548
  %i.ayk = add i64 %i.ayj, 1
  call void @_ZdlPvm(ptr noundef %i.ayg, i64 noundef %i.ayk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.gq

bb.gl:                                            ; preds = %bb.gi
  %i.ayl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gp

bb.gm:                                            ; preds = %bb.gj
  %i.aym = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.go

bb.gn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ayn = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.pn157 = phi { ptr, i32 } [ %i.ayn, %bb.gn ], [ %i.aym, %bb.gm ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #21
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gl
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.go ], [ %i.ayl, %bb.gl ]
  %.1 = extractvalue { ptr, i32 } %.pn157.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.ayo = call ptr @__cxa_begin_catch(ptr %.1) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ayp = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ayp, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %18) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.ayp, align 8, !tbaa !523
  invoke void @__cxa_throw(ptr nonnull %i.ayp, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #29
          to label %bb.ju unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.ayq = landingpad { ptr, i32 }
          cleanup
  %i.ayr = load ptr, ptr %18, align 8, !tbaa !743 ; 2 uses
  %i.ays = icmp eq ptr %i.ayr, %i.ayc
  br i1 %i.ays, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %bb.gr
  %i.ayt = load i64, ptr %i.ayc, align 8, !tbaa !548
  %i.ayu = add i64 %i.ayt, 1
  call void @_ZdlPvm(ptr noundef %i.ayr, i64 noundef %i.ayu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.body244

bb.gs:                                            ; preds = %bb.gh
  %i.ayv = fadd <2 x double> %24, %i.axo
  store <2 x double> %i.ayv, ptr %i.axq, align 8, !tbaa !701
  %i.ayw = fadd double %i.axz, %i.axp
  store double %i.ayw, ptr %i.axy, align 8, !tbaa !701
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.ayx = load ptr, ptr %i.ey, align 8, !tbaa !723, !noalias !11424 ; 2 uses
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !523, !noalias !11424
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 56
  %i.aza = load ptr, ptr %i.ayz, align 8, !noalias !11424
  invoke void %i.aza(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.ayx, ptr noundef nonnull align 8 dereferenceable(24) %i.axq)
          to label %bb.gt unwind label %bb.gw, !inline_history !410

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axq, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.azb = load ptr, ptr %0, align 8, !tbaa !4434
  %i.azc = zext i32 %.1145806 to i64              ; 2 uses
  %i.azd = getelementptr inbounds nuw [12 x i8], ptr %i.azb, i64 %i.azc ; 2 uses
  %i.aze = load <2 x double>, ptr %i.axq, align 8, !tbaa !701
  %i.azf = fptrunc <2 x double> %i.aze to <2 x float>
  store <2 x float> %i.azf, ptr %i.azd, align 4, !tbaa !558
  %i.azg = load double, ptr %i.axy, align 8, !tbaa !701
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azd, i64 8
  %i.azi = fptrunc double %i.azg to float
  store float %i.azi, ptr %i.azh, align 4, !tbaa !558
  %i.azj = load ptr, ptr %i.ez, align 8, !tbaa !11425 ; 2 uses
  %i.azk = icmp ne ptr %i.azj, null
  %or.cond7 = and i1 %i.xd, %i.azk
  br i1 %or.cond7, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.azl = getelementptr inbounds nuw i8, ptr %14, i64 %.0138807
  %i.azm = load i8, ptr %i.azl, align 1, !tbaa !670, !range !683, !noundef !616
  %i.azn = trunc nuw i8 %i.azm to i1
  br i1 %i.azn, label %bb.gv, label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azj, i64 %i.azc
  store i8 1, ptr %i.azo, align 1, !tbaa !548
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gs
  %i.azp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %.body244

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke1020, %.invoke, %_ZN7openvdb5v13_017typelist_internal16TSEvalFirstIndexIZNKS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEEUlT_E_PKdLm3ELm4EEET0_SM_SQ_.exit.i374, %.critedge.i, %bb.ed, %.noexc278, %.noexc277, %.noexc276, %.noexc275, %.noexc274, %.noexc273, %.noexc272, %bb.dq, %.noexc252, %.noexc251, %.noexc250, %.noexc249, %.noexc248, %.noexc247, %.noexc246, %bb.co, %bb.cj, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.fd, %_ZNK7openvdb5v13_04tree10LeafBufferIsLj3EE4dataEv.exit, %bb.cd
  %lpad.loopexit.split-lp1212 = landingpad { ptr, i32 }
          cleanup
  br label %.body244

bb.gx:                                            ; preds = %bb.gv, %bb.gu, %bb.gt
  %i.azq = add i32 %.1145806, 1                   ; 2 uses
  %i.azr = add nuw i64 %.0138807, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.azr, %.0140968
  br i1 %exitcond.not, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %.lr.ph, !llvm.loop !11403

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.gx, %bb.ee, %bb.dm, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.cb, %bb.br
  %.2146 = phi i32 [ %.0144809, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.0144809, %bb.br ], [ %.0144809, %bb.cb ], [ %.0144809, %bb.dm ], [ %.0144809, %bb.ee ], [ %i.azq, %bb.gx ] ; 11 uses
  %i.azs = load ptr, ptr %i.fb, align 8, !tbaa !724 ; 8 uses
  %i.azt = load i32, ptr %i.du, align 8, !tbaa !712
  %i.azu = add i32 %i.azt, 1                      ; 4 uses
  %i.azv = lshr i32 %i.azu, 6                     ; 3 uses
  %i.azw = icmp ugt i32 %i.azu, 511
  br i1 %i.azw, label %._crit_edge, label %bb.gy

bb.gy:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.azx = and i32 %i.azu, 63
  %i.azy = zext nneg i32 %i.azv to i64            ; 8 uses
  %i.azz = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %i.azy
  %i.baa = load i64, ptr %i.azz, align 8, !tbaa !699 ; 2 uses
  %i.bab = zext nneg i32 %i.azx to i64            ; 2 uses
  %i.bac = shl nuw i64 1, %i.bab
  %i.bad = and i64 %i.baa, %i.bac
  %.not.i.i.i.i297 = icmp eq i64 %i.bad, 0
  br i1 %.not.i.i.i.i297, label %bb.gz, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeIjLj3EEEEppEv.exit

bb.gz:                                            ; preds = %bb.gy
  %i.bae = shl nsw i64 -1, %i.bab
  %i.baf = and i64 %i.baa, %i.bae                 ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.baf, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i298.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i298.preheader:                      ; preds = %bb.gz
  %exitcond.not.i.i.i.i1063 = icmp eq i32 %i.azv, 7
  br i1 %exitcond.not.i.i.i.i1063, label %._crit_edge, label %.lr.ph1065

.lr.ph.i.i.i.i298:                                ; preds = %.lr.ph1065
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph1065.1

.lr.ph1065.1:                                     ; preds = %.lr.ph.i.i.i.i298
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.azy, 2 ; 3 uses
  %i.bag = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %indvars.iv.next.i.i.i.i.1
  %i.bah = load i64, ptr %i.bag, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.bah, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i298.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i298.1:                              ; preds = %.lr.ph1065.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph1065.2

.lr.ph1065.2:                                     ; preds = %.lr.ph.i.i.i.i298.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.azy, 3 ; 3 uses
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %indvars.iv.next.i.i.i.i.2
  %i.baj = load i64, ptr %i.bai, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.baj, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i298.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i298.2:                              ; preds = %.lr.ph1065.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph1065.3

.lr.ph1065.3:                                     ; preds = %.lr.ph.i.i.i.i298.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.azy, 4 ; 3 uses
  %i.bak = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %indvars.iv.next.i.i.i.i.3
  %i.bal = load i64, ptr %i.bak, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.bal, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i298.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i298.3:                              ; preds = %.lr.ph1065.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph1065.4

.lr.ph1065.4:                                     ; preds = %.lr.ph.i.i.i.i298.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.azy, 5 ; 3 uses
  %i.bam = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %indvars.iv.next.i.i.i.i.4
  %i.ban = load i64, ptr %i.bam, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ban, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i298.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i298.4:                              ; preds = %.lr.ph1065.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph1065.5

.lr.ph1065.5:                                     ; preds = %.lr.ph.i.i.i.i298.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.azy, 6 ; 3 uses
  %i.bao = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %indvars.iv.next.i.i.i.i.5
  %i.bap = load i64, ptr %i.bao, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.bap, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i298.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i298.5:                              ; preds = %.lr.ph1065.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph1065.6

.lr.ph1065.6:                                     ; preds = %.lr.ph.i.i.i.i298.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.azy, 7 ; 2 uses
  %i.baq = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %indvars.iv.next.i.i.i.i.6
  %i.bar = load i64, ptr %i.baq, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.bar, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph1065:                                       ; preds = %.lr.ph.i.i.i.i298.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.azy, 1 ; 3 uses
  %i.bas = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %indvars.iv.next.i.i.i.i
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.bat, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i298, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph1065.6, %.lr.ph1065.5, %.lr.ph1065.4, %.lr.ph1065.3, %.lr.ph1065.2, %.lr.ph1065.1, %.lr.ph1065
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph1065 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph1065.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph1065.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph1065.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph1065.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph1065.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph1065.6 ]
  %.lcssa1215 = phi i64 [ %i.bat, %.lr.ph1065 ], [ %i.bah, %.lr.ph1065.1 ], [ %i.baj, %.lr.ph1065.2 ], [ %i.bal, %.lr.ph1065.3 ], [ %i.ban, %.lr.ph1065.4 ], [ %i.bap, %.lr.ph1065.5 ], [ %i.bar, %.lr.ph1065.6 ]
  %i.bau = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.gz
  %.016.lcssa.i.i.i.i = phi i32 [ %i.azv, %bb.gz ], [ %i.bau, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.baf, %bb.gz ], [ %.lcssa1215, %.critedge.loopexit.i.i.i.i ]
  %i.bav = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.baw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.bax = trunc nuw nsw i64 %i.baw to i32
  %i.bay = or disjoint i32 %i.bav, %i.bax
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeIjLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeIjLj3EEEEppEv.exit: ; preds = %bb.gy, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bay, %.critedge.i.i.i.i ], [ %i.azu, %bb.gy ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.du, align 8, !tbaa !712
  %.not750 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not750, label %._crit_edge, label %bb.br

.body244:                                         ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %bb.gw, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i259, %bb.bx, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i
  %.pn166 = phi { ptr, i32 } [ %i.agf, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i259 ], [ %i.ayq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ], [ %i.azp, %bb.gw ], [ %i.kg, %bb.bx ], [ %i.nm, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i ], [ %lpad.loopexit.split-lp1212, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %.body216

._crit_edge821:                                   ; preds = %bb.jf, %._crit_edge
  %i.baz = load ptr, ptr %i.dq, align 8, !tbaa !905
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.baz)
          to label %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit unwind label %bb.ha

bb.ha:                                            ; preds = %._crit_edge821
  %i.bba = landingpad { ptr, i32 }
          catch ptr null
  %i.bbb = extractvalue { ptr, i32 } %i.bba, 0
  call void @__clang_call_terminate(ptr %i.bbb) #32
  unreachable

_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit: ; preds = %._crit_edge821
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
end_hunk_1
